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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
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
# A031100: Write 2n-1 in base 9 and juxtapose.

The programs for A031100, there is no canonical definition to state claims against.
-/

/-! ## A031100.P7725513308599555824

`A036211(n+1)-A239681(A052953(n))`
-/

namespace A031100.P7725513308599555824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036211 (n + 1) - A239681 (A052953 n).toNat

end

end A031100.P7725513308599555824

/-! ## A031100.P18407370244450949586

`A031076(lt[A191754(n), A259825(2*(n+1))])`
-/

namespace A031100.P18407370244450949586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A031100.P18407370244450949586

/-!
# A031101: Position of n-th 0 in A031100.

The programs for A031101, there is no canonical definition to state claims against.
-/

/-! ## A031101.P16765029015321767478

`eq[0, A031100(n+1)]+1`
-/

namespace A031101.P16765029015321767478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031101.P16765029015321767478

/-! ## A031101.P1877867037805883147

`eq[0, A031100(A028310(n))]`
-/

namespace A031101.P1877867037805883147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031101.P1877867037805883147

/-! ## A031101.P9458224750669238833

`A020725(eq[0, A031100(n+1)])`
-/

namespace A031101.P9458224750669238833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031101.P9458224750669238833

/-! ## A031101.P889493427072770709

`A065475(eq[0, A031100(n+1)])`
-/

namespace A031101.P889493427072770709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031101.P889493427072770709

/-! ## A031101.P1336922889594554999

`A114637(eq[0, A031100(n+1)])`
-/

namespace A031101.P1336922889594554999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031101.P1336922889594554999

/-! ## A031101.P16955170082109710997

`eq[0, A031100(A233583(n+1))]`
-/

namespace A031101.P16955170082109710997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031101.P16955170082109710997

/-!
# A031102: Position of n-th 1 in A031100.

The programs for A031102, there is no canonical definition to state claims against.
-/

/-! ## A031102.P8733959897536277386

`eq[1, A031100(n+1)]+1`
-/

namespace A031102.P8733959897536277386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031102.P8733959897536277386

/-! ## A031102.P14603505471573597408

`eq[A019430(2*n), A031100(A028310(n))]`
-/

namespace A031102.P14603505471573597408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031102.P14603505471573597408

/-! ## A031102.P13629356422122163010

`eq[A031100(A028310(n)), A054977(n)]`
-/

namespace A031102.P13629356422122163010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031102.P13629356422122163010

/-! ## A031102.P11527653441143751944

`eq[A031100(A028310(n)), A057427(n)]`
-/

namespace A031102.P11527653441143751944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031102.P11527653441143751944

/-! ## A031102.P5295959165361099867

`eq[A031100(A028310(n)), A158388(n)]`
-/

namespace A031102.P5295959165361099867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031102.P5295959165361099867

/-! ## A031102.P8864631427059586326

`eq[A057428(n)², A031100(A028310(n))]`
-/

namespace A031102.P8864631427059586326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031102.P8864631427059586326

/-!
# A031103: Position of n-th 2 in A031100.

The programs for A031103, there is no canonical definition to state claims against.
-/

/-! ## A031103.P11016752187312021656

`eq[2, A031100(n+1)]+1`
-/

namespace A031103.P11016752187312021656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031103.P11016752187312021656

/-! ## A031103.P13700677326531569418

`eq[2, A031100(A028310(n))]`
-/

namespace A031103.P13700677326531569418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031103.P13700677326531569418

/-! ## A031103.P12771979971472404155

`A020725(eq[2, A031100(n+1)])`
-/

namespace A031103.P12771979971472404155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031103.P12771979971472404155

/-! ## A031103.P8665704337406271658

`A065475(eq[2, A031100(n+1)])`
-/

namespace A031103.P8665704337406271658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031103.P8665704337406271658

/-! ## A031103.P12635353300438408866

`A114637(eq[2, A031100(n+1)])`
-/

namespace A031103.P12635353300438408866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031103.P12635353300438408866

/-! ## A031103.P1983009400600460734

`eq[2, A031100(A000007(n)+n)]`
-/

namespace A031103.P1983009400600460734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031103.P1983009400600460734

/-! ## A031103.P8054419620640031771

`eq[2, A031100(A233583(n+1))]`
-/

namespace A031103.P8054419620640031771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031103.P8054419620640031771

/-!
# A031104: Position of n-th 3 in A031100.

The programs for A031104, there is no canonical definition to state claims against.
-/

/-! ## A031104.P8121942647148389155

`eq[3, A031100(n+1)]+1`
-/

namespace A031104.P8121942647148389155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031104.P8121942647148389155

/-! ## A031104.P18311016094618242659

`eq[3, A031100(n/a(and(1, n-1)))]` with `a(0)=1`
-/

namespace A031104.P18311016094618242659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A031100 (SequenceMachineLib.roundAway ((n : ℚ) / (f2 (Int.land 1 ((n : ℤ) - 1)).toNat : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031104.P18311016094618242659

/-! ## A031104.P2041237423398998670

`eq[3, A031100(A028310(n))]`
-/

namespace A031104.P2041237423398998670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031104.P2041237423398998670

/-! ## A031104.P5865361953006470902

`A020725(eq[3, A031100(n+1)])`
-/

namespace A031104.P5865361953006470902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031104.P5865361953006470902

/-! ## A031104.P8089343089070883793

`eq[3, A031100(A000007(n)+n)]`
-/

namespace A031104.P8089343089070883793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031104.P8089343089070883793

/-!
# A031105: Position of n-th 4 in A031100.

The programs for A031105, there is no canonical definition to state claims against.
-/

/-! ## A031105.P2681912429346508875

`eq[4, A031100(n+1)]+1`
-/

namespace A031105.P2681912429346508875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031105.P2681912429346508875

/-! ## A031105.P368360941137235304

`eq[4, A031100(A028310(n))]`
-/

namespace A031105.P368360941137235304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031105.P368360941137235304

/-! ## A031105.P13871514457328770636

`A020725(eq[4, A031100(n+1)])`
-/

namespace A031105.P13871514457328770636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031105.P13871514457328770636

/-! ## A031105.P1435441067755246678

`A065475(eq[4, A031100(n+1)])`
-/

namespace A031105.P1435441067755246678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031105.P1435441067755246678

/-! ## A031105.P4803503927305748846

`A114637(eq[4, A031100(n+1)])`
-/

namespace A031105.P4803503927305748846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031105.P4803503927305748846

/-! ## A031105.P10860706771168038754

`eq[4, A031100(A233583(n+1))]`
-/

namespace A031105.P10860706771168038754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031105.P10860706771168038754

/-!
# A031106: Position of n-th 5 in A031100.

The programs for A031106, there is no canonical definition to state claims against.
-/

/-! ## A031106.P10194347809043385871

`eq[5, A031100(n+1)]+1`
-/

namespace A031106.P10194347809043385871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031106.P10194347809043385871

/-! ## A031106.P15233831255140465690

`eq[5, A031100(A028310(n))]`
-/

namespace A031106.P15233831255140465690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031106.P15233831255140465690

/-! ## A031106.P198475993542805283

`A020725(eq[5, A031100(n+1)])`
-/

namespace A031106.P198475993542805283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031106.P198475993542805283

/-! ## A031106.P16581085391539454083

`A065475(eq[5, A031100(n+1)])`
-/

namespace A031106.P16581085391539454083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031106.P16581085391539454083

/-! ## A031106.P10984385900117952314

`A114637(eq[5, A031100(n+1)])`
-/

namespace A031106.P10984385900117952314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031106.P10984385900117952314

/-! ## A031106.P9226365464707134396

`eq[5, A031100(A233583(n+1))]`
-/

namespace A031106.P9226365464707134396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031106.P9226365464707134396

/-!
# A031107: Position of n-th 6 in A031100.

The programs for A031107, there is no canonical definition to state claims against.
-/

/-! ## A031107.P17063286829946968226

`eq[6, A031100(n+1)]+1`
-/

namespace A031107.P17063286829946968226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031107.P17063286829946968226

/-! ## A031107.P17712086470063025623

`eq[6, A031100(A028310(n))]`
-/

namespace A031107.P17712086470063025623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031107.P17712086470063025623

/-! ## A031107.P14885526853424699888

`A020725(eq[6, A031100(n+1)])`
-/

namespace A031107.P14885526853424699888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031107.P14885526853424699888

/-! ## A031107.P8581607364082673916

`A065475(eq[6, A031100(n+1)])`
-/

namespace A031107.P8581607364082673916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031107.P8581607364082673916

/-! ## A031107.P3406729000958775662

`A114637(eq[6, A031100(n+1)])`
-/

namespace A031107.P3406729000958775662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031107.P3406729000958775662

/-! ## A031107.P10011169985281537043

`eq[6, A031100(A233583(n+1))]`
-/

namespace A031107.P10011169985281537043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031107.P10011169985281537043

/-!
# A031108: Position of n-th 7 in A031100.

The programs for A031108, there is no canonical definition to state claims against.
-/

/-! ## A031108.P8177722962630797125

`eq[7, A031100(n+1)]+1`
-/

namespace A031108.P8177722962630797125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031108.P8177722962630797125

/-! ## A031108.P13521659061340954595

`eq[7, A031100(A028310(n))]`
-/

namespace A031108.P13521659061340954595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031108.P13521659061340954595

/-! ## A031108.P11327816228535550455

`A020725(eq[7, A031100(n+1)])`
-/

namespace A031108.P11327816228535550455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031108.P11327816228535550455

/-! ## A031108.P1210768948980455672

`A114637(eq[7, A031100(n+1)])`
-/

namespace A031108.P1210768948980455672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031108.P1210768948980455672

/-! ## A031108.P14931802902002674415

`eq[7, A031100(A060000(n+1))]`
-/

namespace A031108.P14931802902002674415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031108.P14931802902002674415

/-! ## A031108.P1097682032327481049

`eq[7, A031100(A233583(n+1))]`
-/

namespace A031108.P1097682032327481049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031108.P1097682032327481049

/-!
# A031109: Position of n-th 8 in A031100.

The programs for A031109, there is no canonical definition to state claims against.
-/

/-! ## A031109.P16785909444727628440

`eq[8, A031100(n+1)]+1`
-/

namespace A031109.P16785909444727628440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031109.P16785909444727628440

/-! ## A031109.P2630021088907487958

`eq[8, A031100(A028310(n))]`
-/

namespace A031109.P2630021088907487958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031109.P2630021088907487958

/-! ## A031109.P14778000948635169904

`A020725(eq[8, A031100(n+1)])`
-/

namespace A031109.P14778000948635169904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031109.P14778000948635169904

/-! ## A031109.P11581825169446295698

`A065475(eq[8, A031100(n+1)])`
-/

namespace A031109.P11581825169446295698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031109.P11581825169446295698

/-! ## A031109.P1268329356228439178

`A114637(eq[8, A031100(n+1)])`
-/

namespace A031109.P1268329356228439178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031109.P1268329356228439178

/-! ## A031109.P711464944040184206

`eq[8, A031100(A233583(n+1))]`
-/

namespace A031109.P711464944040184206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031100 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031109.P711464944040184206

/-!
# A031112: Position of n-th 0 in A031111.

The programs for A031112, there is no canonical definition to state claims against.
-/

/-! ## A031112.P8479531486614719729

`eq[0, A031111(n+1)]+1`
-/

namespace A031112.P8479531486614719729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031112.P8479531486614719729

/-! ## A031112.P6869313600685690605

`eq[1, A031111(A028310(n))+1]`
-/

namespace A031112.P6869313600685690605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031112.P6869313600685690605

/-! ## A031112.P958906339713334621

`eq[0, A031111(A000007(n)+n)]`
-/

namespace A031112.P958906339713334621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031112.P958906339713334621

/-! ## A031112.P13254260167614097505

`eq[0, A031111(A000038(n)+n)]`
-/

namespace A031112.P13254260167614097505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031112.P13254260167614097505

/-! ## A031112.P15578502180848085598

`eq[0, A031111(A065033(2*n))]`
-/

namespace A031112.P15578502180848085598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031112.P15578502180848085598

/-! ## A031112.P8437054988661669071

`eq[0, A031111(A233583(n+1))]`
-/

namespace A031112.P8437054988661669071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031112.P8437054988661669071

/-!
# A031113: Position of n-th 1 in A031111.

The programs for A031113, there is no canonical definition to state claims against.
-/

/-! ## A031113.P4213575261964173173

`eq[1, A031111(n+1)]+1`
-/

namespace A031113.P4213575261964173173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031113.P4213575261964173173

/-! ## A031113.P4302748532072786749

`eq[1, A031111(A000038(n)+n)]`
-/

namespace A031113.P4302748532072786749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031113.P4302748532072786749

/-! ## A031113.P14676167382287591037

`eq[n, A028310(n)*A031111(A028310(n))]`
-/

namespace A031113.P14676167382287591037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A031111 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031113.P14676167382287591037

/-! ## A031113.P7811537454622082927

`eq[A031111(A065033(2*n)), A054977(n)]`
-/

namespace A031113.P7811537454622082927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031113.P7811537454622082927

/-! ## A031113.P3201933062540274232

`eq[A031111(A065033(2*n)), A057427(n)]`
-/

namespace A031113.P3201933062540274232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031113.P3201933062540274232

/-! ## A031113.P5992900045860971577

`eq[A057428(n)², A031111(A065033(2*n))]`
-/

namespace A031113.P5992900045860971577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031113.P5992900045860971577

/-! ## A031113.P10316706547058856643

`eq[1, A031111(A065033(2*n))-A000007(n)]`
-/

namespace A031113.P10316706547058856643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A065033 (2 * n)).toNat - A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031113.P10316706547058856643

/-! ## A031113.P11220636884374803662

`eq[A031111(A065033(2*n)), A208645(2*n)]`
-/

namespace A031113.P11220636884374803662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031113.P11220636884374803662

/-! ## A031113.P17786136845800489063

`A056239(p?[A000040(n+1)*A031111(n+1)])`
-/

namespace A031113.P17786136845800489063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A031111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A031113.P17786136845800489063

/-!
# A031114: Position of n-th 2 in A031111.

The programs for A031114, there is no canonical definition to state claims against.
-/

/-! ## A031114.P9849716747483004676

`eq[2, A031111(n+1)]+1`
-/

namespace A031114.P9849716747483004676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031114.P9849716747483004676

/-! ## A031114.P7191772971533154512

`eq[2, A031111(A028310(n))]`
-/

namespace A031114.P7191772971533154512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031114.P7191772971533154512

/-! ## A031114.P17880020295491615620

`eq[2, A031111(A000007(n)+n)]`
-/

namespace A031114.P17880020295491615620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031114.P17880020295491615620

/-! ## A031114.P643751583987509456

`eq[2, A031111(gcd(n, A008574(n)))]`
-/

namespace A031114.P643751583987509456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031114.P643751583987509456

/-! ## A031114.P10141391938261756470

`eq[2, A031111(A065033(2*n))]`
-/

namespace A031114.P10141391938261756470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031114.P10141391938261756470

/-! ## A031114.P8394448478407467

`eq[2, A031111(A110655(A008574(n)))]`
-/

namespace A031114.P8394448478407467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A110655 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031114.P8394448478407467

/-!
# A031115: Position of n-th 3 in A031111.

The programs for A031115, there is no canonical definition to state claims against.
-/

/-! ## A031115.P11272397289864805349

`eq[3, A031111(n+1)]+1`
-/

namespace A031115.P11272397289864805349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031115.P11272397289864805349

/-! ## A031115.P5912014450798189124

`eq[1, A031111(A028310(n))-2]`
-/

namespace A031115.P5912014450798189124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031115.P5912014450798189124

/-! ## A031115.P14530635485506131681

`eq[3, A031111(A000007(n)+n)]`
-/

namespace A031115.P14530635485506131681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031115.P14530635485506131681

/-! ## A031115.P321185616025206616

`eq[3, A031111(A000038(n)+n)]`
-/

namespace A031115.P321185616025206616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031115.P321185616025206616

/-! ## A031115.P2094797212369590612

`eq[3, A031111(A065033(2*n))]`
-/

namespace A031115.P2094797212369590612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031115.P2094797212369590612

/-! ## A031115.P7416026509979712060

`eq[3, A031111(A110655(A008574(n)))]`
-/

namespace A031115.P7416026509979712060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A110655 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031115.P7416026509979712060

/-! ## A031115.P3530596906820715889

`eq[3, A031111(A233583(n+1))]`
-/

namespace A031115.P3530596906820715889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031115.P3530596906820715889

/-!
# A031116: Position of n-th 4 in A031111.

The programs for A031116, there is no canonical definition to state claims against.
-/

/-! ## A031116.P889829543772886476

`eq[4, A031111(n+1)]+1`
-/

namespace A031116.P889829543772886476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031116.P889829543772886476

/-! ## A031116.P10992462087948174921

`eq[2, A031111(A028310(n))-2]`
-/

namespace A031116.P10992462087948174921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031116.P10992462087948174921

/-! ## A031116.P18283582804791867335

`eq[4, A031111(A000007(n)+n)]`
-/

namespace A031116.P18283582804791867335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031116.P18283582804791867335

/-! ## A031116.P1253642311603273713

`eq[4, A031111(A000038(n)+n)]`
-/

namespace A031116.P1253642311603273713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031116.P1253642311603273713

/-! ## A031116.P15716629768207611020

`eq[4, A031111(A065033(2*n))]`
-/

namespace A031116.P15716629768207611020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031116.P15716629768207611020

/-! ## A031116.P3308319734754168141

`eq[4, A031111(A110655(A008574(n)))]`
-/

namespace A031116.P3308319734754168141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A110655 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031116.P3308319734754168141

/-! ## A031116.P1281802711483602841

`eq[4, A031111(A233583(n+1))]`
-/

namespace A031116.P1281802711483602841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031116.P1281802711483602841

/-!
# A031117: Position of n-th 5 in A031111.

The programs for A031117, there is no canonical definition to state claims against.
-/

/-! ## A031117.P15501928735051271732

`eq[5, A031111(n+1)]+1`
-/

namespace A031117.P15501928735051271732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031117.P15501928735051271732

/-! ## A031117.P14347869399009093935

`eq[5, A031111(A028310(n))]`
-/

namespace A031117.P14347869399009093935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031117.P14347869399009093935

/-! ## A031117.P5071613973101060435

`eq[5, A031111(A000007(n)+n)]`
-/

namespace A031117.P5071613973101060435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031117.P5071613973101060435

/-! ## A031117.P16383625897927377687

`eq[5, A031111(A000038(n)+n)]`
-/

namespace A031117.P16383625897927377687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031117.P16383625897927377687

/-! ## A031117.P11960058274472902249

`eq[5, A031111(A065033(2*n))]`
-/

namespace A031117.P11960058274472902249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031117.P11960058274472902249

/-! ## A031117.P17427563107369465318

`eq[5, A031111(A233583(n+1))]`
-/

namespace A031117.P17427563107369465318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031117.P17427563107369465318

/-!
# A031118: Position of n-th 6 in A031111.

The programs for A031118, there is no canonical definition to state claims against.
-/

/-! ## A031118.P4007933351699696407

`eq[6, A031111(n+1)]+1`
-/

namespace A031118.P4007933351699696407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031118.P4007933351699696407

/-! ## A031118.P13021910163890194458

`eq[6, A031111(A000007(n)+n)]`
-/

namespace A031118.P13021910163890194458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031118.P13021910163890194458

/-! ## A031118.P10854213629477289725

`eq[6, A031111(A000038(n)+n)]`
-/

namespace A031118.P10854213629477289725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031118.P10854213629477289725

/-! ## A031118.P1427977634158598702

`eq[6, A031111(A065033(2*n))]`
-/

namespace A031118.P1427977634158598702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031118.P1427977634158598702

/-! ## A031118.P8812123609926506164

`eq[6, A031111(A110655(A008574(n)))]`
-/

namespace A031118.P8812123609926506164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A110655 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031118.P8812123609926506164

/-! ## A031118.P16643257182803623483

`eq[6, A031111(A233583(n+1))]`
-/

namespace A031118.P16643257182803623483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031118.P16643257182803623483

/-!
# A031119: Position of n-th 7 in A031111.

The programs for A031119, there is no canonical definition to state claims against.
-/

/-! ## A031119.P3109642704743111326

`eq[7, A031111(n+1)]+1`
-/

namespace A031119.P3109642704743111326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031119.P3109642704743111326

/-! ## A031119.P1447514578668240550

`A153152(eq[7, A031111(n+1)])`
-/

namespace A031119.P1447514578668240550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031119.P1447514578668240550

/-! ## A031119.P10705358669328850449

`eq[7, A031111(A000007(n)+n)]`
-/

namespace A031119.P10705358669328850449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031119.P10705358669328850449

/-! ## A031119.P11199521047569714541

`eq[7, A031111(A000038(n)+n)]`
-/

namespace A031119.P11199521047569714541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031119.P11199521047569714541

/-! ## A031119.P7242191393909565248

`eq[7, A031111(A065033(2*n))]`
-/

namespace A031119.P7242191393909565248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031119.P7242191393909565248

/-! ## A031119.P7954076961838124213

`eq[7, A031111(A233583(n+1))]`
-/

namespace A031119.P7954076961838124213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031119.P7954076961838124213

/-!
# A031120: Position of n-th 8 in A031111.

The programs for A031120, there is no canonical definition to state claims against.
-/

/-! ## A031120.P10100313472971140927

`eq[8, A031111(n+1)]+1`
-/

namespace A031120.P10100313472971140927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031120.P10100313472971140927

/-! ## A031120.P16368879365160887476

`eq[8, A031111(A028310(n))]`
-/

namespace A031120.P16368879365160887476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031120.P16368879365160887476

/-! ## A031120.P6448267453448229329

`eq[8, A031111(A000007(n)+n)]`
-/

namespace A031120.P6448267453448229329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031120.P6448267453448229329

/-! ## A031120.P15409585176600047931

`eq[8, A031111(A000038(n)+n)]`
-/

namespace A031120.P15409585176600047931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031120.P15409585176600047931

/-! ## A031120.P5355909510433199172

`eq[8, A031111(A065033(2*n))]`
-/

namespace A031120.P5355909510433199172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031120.P5355909510433199172

/-! ## A031120.P595999525097461525

`eq[8, A031111(A233583(n+1))]`
-/

namespace A031120.P595999525097461525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031111 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031120.P595999525097461525

/-!
# A031121: Integer ratios of Fibonacci numbers F(m)/F(n).

The programs for A031121, there is no canonical definition to state claims against.
-/

/-! ## A031121.P17805048379681266627

`lt[0, char[A028412(n)]]`
-/

namespace A031121.P17805048379681266627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031121.P17805048379681266627

/-! ## A031121.P16257931930629794854

`eq[1, char[A028412(n+1)]]`
-/

namespace A031121.P16257931930629794854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031121.P16257931930629794854

/-! ## A031121.P1543671923471186540

`eq[1, char[A214978(n+1)]]`
-/

namespace A031121.P1543671923471186540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214978 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031121.P1543671923471186540

/-! ## A031121.P5721838522870643655

`eq[1, char[A214987(n+1)]]`
-/

namespace A031121.P5721838522870643655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214987 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031121.P5721838522870643655

/-! ## A031121.P2817281022674932339

`eq[char[A333357(n+1)], A000007(n)]`
-/

namespace A031121.P2817281022674932339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333357 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A031121.P2817281022674932339

/-! ## A031121.P16251157106141418400

`eq[char[A333357(n+1)], A000038(n)]`
-/

namespace A031121.P16251157106141418400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333357 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A031121.P16251157106141418400

/-!
# A031122: Integers that appear as ratios of Fibonacci numbers F(kn)/F(k), but omitting Fibonacci numbers F(n)/F(1) and Lucas numbers F(2n)/F(n).

The programs for A031122, there is no canonical definition to state claims against.
-/

/-! ## A031122.P11857105632645303773

`∩[A031121(n+1), A050939(n+1)]`
-/

namespace A031122.P11857105632645303773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031122.P11857105632645303773

/-! ## A031122.P17211619313266874018

`∩[A031121(n+1), A272635(n+1)]`
-/

namespace A031122.P17211619313266874018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031122.P17211619313266874018

/-!
# A031123: Expansion of Sum_{m>=1} z^(m^2)/(1-z^((m+1)^2)).

The programs for A031123, there is no canonical definition to state claims against.
-/

/-! ## A031123.P7358233723495329154

`A004526(2-A031124(n))`
-/

namespace A031123.P7358233723495329154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 - A031124 n).toNat

end

end A031123.P7358233723495329154

/-! ## A031123.P17398462811788837397

`A142150(2-A031124(n))`
-/

namespace A031123.P17398462811788837397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 - A031124 n).toNat

end

end A031123.P17398462811788837397

/-! ## A031123.P8670579598599610615

`A175126(2-A031124(n))`
-/

namespace A031123.P8670579598599610615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (2 - A031124 n).toNat

end

end A031123.P8670579598599610615

/-! ## A031123.P13953539870026388151

`A249738(4-A031124(n))`
-/

namespace A031123.P13953539870026388151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (4 - A031124 n).toNat

end

end A031123.P13953539870026388151

/-! ## A031123.P14501473681788300032

`1-A031124(n)/A036453(n+1)`
-/

namespace A031123.P14501473681788300032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A031124 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A031123.P14501473681788300032

/-!
# A031124: Expansion of (1+z)/(1-z) - 2*Sum_{m>=1} z^(m^2)/(1-z^((m+1)^2)).

The programs for A031124, there is no canonical definition to state claims against.
-/

/-! ## A031124.P7880833308243362189

`(1-A031123(n))*A036453(n+1)`
-/

namespace A031124.P7880833308243362189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A031123 n) * A036453 (n + 1)

end

end A031124.P7880833308243362189

/-! ## A031124.P14712014006274506460

`(1-A031123(n))*A006530(A001316(n))`
-/

namespace A031124.P14712014006274506460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A031123 n) * A006530 (A001316 n).toNat

end

end A031124.P14712014006274506460

/-! ## A031124.P3795094402781259492

`(1-A031123(n))*A020639(A000118(n))`
-/

namespace A031124.P3795094402781259492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A031123 n) * A020639 (A000118 n).toNat

end

end A031124.P3795094402781259492

/-! ## A031124.P7378325359591681497

`(1-A031123(n))*A020639(A008458(n))`
-/

namespace A031124.P7378325359591681497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A031123 n) * A020639 (A008458 n).toNat

end

end A031124.P7378325359591681497

/-! ## A031124.P3709442121054359943

`(1-A031123(n))*A020639(A008574(n))`
-/

namespace A031124.P3709442121054359943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A031123 n) * A020639 (A008574 n).toNat

end

end A031124.P3709442121054359943

/-! ## A031124.P6561667587637967309

`(1-A031123(n))*A020639(A006093(n+1))`
-/

namespace A031124.P6561667587637967309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A031123 n) * A020639 (A006093 (n + 1)).toNat

end

end A031124.P6561667587637967309

/-! ## A031124.P1468913430711165763

`(1-A031123(n))*A020639(A228746(n))`
-/

namespace A031124.P1468913430711165763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A031123 n) * A020639 (A228746 n).toNat

end

end A031124.P1468913430711165763

/-! ## A031124.P10774736919623214918

`(1-A031123(n))*A020639(A000132(n))`
-/

namespace A031124.P10774736919623214918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A031123 n) * A020639 (A000132 n).toNat

end

end A031124.P10774736919623214918

/-! ## A031124.P957732191038690630

`(1-A031123(n))*A020639(A005893(n))`
-/

namespace A031124.P957732191038690630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A031123 n) * A020639 (A005893 n).toNat

end

end A031124.P957732191038690630

/-!
# A031125: Number of proper factorizations of p1^n*p2^2, where p1 and p2 are distinct primes.

The programs for A031125, there is no canonical definition to state claims against.
-/

/-! ## A031125.P11926916107651460469

`A000291(n)-1`
-/

namespace A031125.P11926916107651460469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000291 n - 1

end

end A031125.P11926916107651460469

/-! ## A031125.P15834416208811952974

`A000070(n)+A000097(n)-1`
-/

namespace A031125.P15834416208811952974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + (A000097 n - 1)

end

end A031125.P15834416208811952974

/-! ## A031125.P10477820573570108734

`∑[A000041(n)]+A000097(n)-1`
-/

namespace A031125.P10477820573570108734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000097 n - 1)

end

end A031125.P10477820573570108734

/-! ## A031125.P16440799365832479290

`∑[A000065(n)]+A000097(n)+n`
-/

namespace A031125.P16440799365832479290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000097 n + (n : ℤ))

end

end A031125.P16440799365832479290

/-! ## A031125.P1326910661349855718

`∑[A024786(n+2)]+A000070(n)-1`
-/

namespace A031125.P1326910661349855718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000070 n - 1)

end

end A031125.P1326910661349855718

/-! ## A031125.P6158684062915755134

`A024786(n+2)+A000041(n)+a(n-1)` with `a(0)=1`
-/

namespace A031125.P6158684062915755134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024786 (n + 2) + (A000041 n + a (n - 1))

end

end A031125.P6158684062915755134

/-! ## A031125.P10104035021764727616

`A054225(∑[n+3])-1`
-/

namespace A031125.P10104035021764727616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A031125.P10104035021764727616

/-! ## A031125.P3045638561059128637

`A318284(A112773(n+1))-1`
-/

namespace A031125.P3045638561059128637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A112773 (n + 1)).toNat - 1

end

end A031125.P3045638561059128637

/-!
# A031126: Number of proper factorizations of p1^n*p2^3, where p1 and p2 are distinct primes.

The programs for A031126, there is no canonical definition to state claims against.
-/

/-! ## A031126.P12914915526833179561

`A000412(n)-1`
-/

namespace A031126.P12914915526833179561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000412 n - 1

end

end A031126.P12914915526833179561

/-! ## A031126.P17248230722882260837

`A082775(n+2)+A000098(n)-1`
-/

namespace A031126.P17248230722882260837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082775 (n + 2) + (A000098 n - 1)

end

end A031126.P17248230722882260837

/-! ## A031126.P15118370652922073264

`A118830(2*n+1)+A000412(n)`
-/

namespace A031126.P15118370652922073264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + A000412 n

end

end A031126.P15118370652922073264

/-! ## A031126.P10480409528556582494

`A106400(A001316(n))+A000412(n)`
-/

namespace A031126.P10480409528556582494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A001316 n).toNat + A000412 n

end

end A031126.P10480409528556582494

/-! ## A031126.P7532130006805516995

`A156709(Δ[A188376(n+1)])+A000412(n)`
-/

namespace A031126.P7532130006805516995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156709 (f1 (n + 1) - f1 n).toNat + A000412 n

end

end A031126.P7532130006805516995

/-! ## A031126.P7343665501020442621

`A034947(A125169(n))+A000412(n)`
-/

namespace A031126.P7343665501020442621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A125169 n).toNat + A000412 n

end

end A031126.P7343665501020442621

/-! ## A031126.P434500973874203765

`A054225(A167614(n+2))-1`
-/

namespace A031126.P434500973874203765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A167614 (n + 2)).toNat - 1

end

end A031126.P434500973874203765

/-! ## A031126.P6395528847439858122

`A054225(A166136(n+2)-3)-1`
-/

namespace A031126.P6395528847439858122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A166136 (n + 2) - 3).toNat - 1

end

end A031126.P6395528847439858122

/-! ## A031126.P3167504880088512487

`A054225(A167499(n)+A008585(n))-1`
-/

namespace A031126.P3167504880088512487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A167499 n + A008585 n).toNat - 1

end

end A031126.P3167504880088512487

/-!
# A031127: Number of proper factorizations of p1^n*p2^4, where p1 and p2 are distinct primes.

The programs for A031127, there is no canonical definition to state claims against.
-/

/-! ## A031127.P15500262389295057642

`A000465(n)-1`
-/

namespace A031127.P15500262389295057642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000465 n - 1

end

end A031127.P15500262389295057642

/-! ## A031127.P15710514679519562396

`A057428(n+1)+A000465(n)`
-/

namespace A031127.P15710514679519562396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A000465 n

end

end A031127.P15710514679519562396

/-! ## A031127.P17101638809064075607

`A033999(Δ[n²])+A000465(n)`
-/

namespace A031127.P17101638809064075607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000465 n

end

end A031127.P17101638809064075607

/-! ## A031127.P7376310550873057644

`A133574(A001316(n))+A000465(n)`
-/

namespace A031127.P7376310550873057644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133574 (A001316 n).toNat + A000465 n

end

end A031127.P7376310550873057644

/-! ## A031127.P11176566786932563117

`A064179(A000040(n+1))+A000465(n)`
-/

namespace A031127.P11176566786932563117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A000040 (n + 1)).toNat + A000465 n

end

end A031127.P11176566786932563117

/-!
# A031128: Number of proper factorizations of p1^n*p2^5, where p1 and p2 are distinct primes.

The programs for A031128, there is no canonical definition to state claims against.
-/

/-! ## A031128.P12981055302353364940

`A000491(n)-1`
-/

namespace A031128.P12981055302353364940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000491 n - 1

end

end A031128.P12981055302353364940

/-! ## A031128.P13236198451629526022

`A134824(n+2)+A000491(n)`
-/

namespace A031128.P13236198451629526022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A000491 n

end

end A031128.P13236198451629526022

/-! ## A031128.P16813023756687656322

`A033999(2*n+1)+A000491(n)`
-/

namespace A031128.P16813023756687656322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A000491 n

end

end A031128.P16813023756687656322

/-! ## A031128.P7691753362843072345

`A062157(A017089(n))+A000491(n)`
-/

namespace A031128.P7691753362843072345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A017089 n).toNat + A000491 n

end

end A031128.P7691753362843072345

/-! ## A031128.P9645418718743941008

`A062157(Δ[A053417(n)])+A000491(n)`
-/

namespace A031128.P9645418718743941008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (f1 (n + 1) - f1 n).toNat + A000491 n

end

end A031128.P9645418718743941008

/-! ## A031128.P10601999105337821797

`A321715(A020639(2*(n+1)))+A000491(n)`
-/

namespace A031128.P10601999105337821797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321715 (A020639 (2 * (n + 1))).toNat + A000491 n

end

end A031128.P10601999105337821797

/-! ## A031128.P17873969827265952208

`A054225(A055999(n+3))-1`
-/

namespace A031128.P17873969827265952208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A055999 (n + 3)).toNat - 1

end

end A031128.P17873969827265952208

/-! ## A031128.P4631785670977027136

`A054225(Δ[A023551(n+1)])-1`
-/

namespace A031128.P4631785670977027136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (f1 (n + 1) - f1 n).toNat - 1

end

end A031128.P4631785670977027136

/-! ## A031128.P5490160708866096049

`A054225(Δ[A026054(n+3)])-1`
-/

namespace A031128.P5490160708866096049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (f1 (n + 1) - f1 n).toNat - 1

end

end A031128.P5490160708866096049

/-! ## A031128.P14563352076423625679

`A054225(A167614(n+4)+2)-1`
-/

namespace A031128.P14563352076423625679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A167614 (n + 4) + 2).toNat - 1

end

end A031128.P14563352076423625679

/-! ## A031128.P14281462444914581103

`A054225(A000217(n+5)+5)-1`
-/

namespace A031128.P14281462444914581103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000217 (n + 5) + 5).toNat - 1

end

end A031128.P14281462444914581103

/-! ## A031128.P14455878176178762514

`A062157(A053417(n)+2)+A000491(n)`
-/

namespace A031128.P14455878176178762514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A053417 n + 2).toNat + A000491 n

end

end A031128.P14455878176178762514

/-!
# A031129: Number of proper factorizations of p1^n*p2^6, where p1 and p2 are distinct primes.

The programs for A031129, there is no canonical definition to state claims against.
-/

/-! ## A031129.P5556518842630509595

`A002755(n)-1`
-/

namespace A031129.P5556518842630509595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002755 n - 1

end

end A031129.P5556518842630509595

/-! ## A031129.P3050110820073487149

`A033999(2*n+1)+A002755(n)`
-/

namespace A031129.P3050110820073487149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A002755 n

end

end A031129.P3050110820073487149

/-! ## A031129.P9568114697351732889

`A115638(2*n+1)+A002755(n)`
-/

namespace A031129.P9568114697351732889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (2 * n + 1) + A002755 n

end

end A031129.P9568114697351732889

/-! ## A031129.P5550857658066678712

`A008836(p?[A004273(n)])+A002755(n)`
-/

namespace A031129.P5550857658066678712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A002755 n

end

end A031129.P5550857658066678712

/-! ## A031129.P13728290069792953712

`A055347(A014692(gcd(n, n+1)))+A002755(n)`
-/

namespace A031129.P13728290069792953712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055347 (A014692 (Nat.gcd n (n + 1))).toNat + A002755 n

end

end A031129.P13728290069792953712

/-! ## A031129.P10878786057213518820

`A054225(A000096(n+5)+7)-1`
-/

namespace A031129.P10878786057213518820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000096 (n + 5) + 7).toNat - 1

end

end A031129.P10878786057213518820

/-! ## A031129.P2242096462544571300

`A008836(A188815(n+1))+A002755(n)`
-/

namespace A031129.P2242096462544571300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A188815 (n + 1)).toNat + A002755 n

end

end A031129.P2242096462544571300

/-!
# A031130: Number of proper factorizations of p1^n*p2^7, where p1 and p2 are distinct primes.

The programs for A031130, there is no canonical definition to state claims against.
-/

/-! ## A031130.P18178652303705971297

`A002756(n)-1`
-/

namespace A031130.P18178652303705971297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002756 n - 1

end

end A031130.P18178652303705971297

/-! ## A031130.P1929159698869954238

`A057428(n+1)+A002756(n)`
-/

namespace A031130.P1929159698869954238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A002756 n

end

end A031130.P1929159698869954238

/-! ## A031130.P2986870102883410790

`A165900(Δ[A008619(n)])+A002756(n)`
-/

namespace A031130.P2986870102883410790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (f1 (n + 1) - f1 n).toNat + A002756 n

end

end A031130.P2986870102883410790

/-! ## A031130.P4319072544502197612

`A307445(A000040(n+1))+A002756(n)`
-/

namespace A031130.P4319072544502197612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A000040 (n + 1)).toNat + A002756 n

end

end A031130.P4319072544502197612

/-! ## A031130.P7103033755561180714

`A307445(A065091(n+1))+A002756(n)`
-/

namespace A031130.P7103033755561180714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A065091 (n + 1)).toNat + A002756 n

end

end A031130.P7103033755561180714

/-! ## A031130.P18428783155468951752

`A307445(A244392(n+1))+A002756(n)`
-/

namespace A031130.P18428783155468951752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A244392 (n + 1)).toNat + A002756 n

end

end A031130.P18428783155468951752

/-!
# A031131: Difference between n-th prime and (n+2)-nd prime.

The programs for A031131, the canonical program `A031131.P2453725465626413076` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031131 has offset 1).

The definition of A031131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A031131.P2453725465626413076

`A000040(n+3)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031131

/-- `A000040(n+3)-A000040(n+1)` -/
def P2453725465626413076.Spec : Prop :=
  ∀ n, P2453725465626413076.a n = A031131 (n + 1)

theorem P2453725465626413076.correct : P2453725465626413076.Spec := by
  intro n
  simp only [A031131, Nat.add_sub_cancel]

end A031131

/-! ## A031131.P13151713183745473326

`A261470(n)+a(n-1)` with `a(0)=3`
-/

namespace A031131.P13151713183745473326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A261470 n + a (n - 1)

end

end A031131.P13151713183745473326

namespace A031131

/-- `A261470(n)+a(n-1)` -/
def P13151713183745473326.Spec : Prop :=
  ∀ n, P13151713183745473326.a n = A031131 (n + 1)

end A031131

/-! ## A031131.P8390780619331687327

`A215848(n+1)-Δ[A007504(n)]`
-/

namespace A031131.P8390780619331687327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - (f1 (n + 1) - f1 n)

end

end A031131.P8390780619331687327

namespace A031131

/-- `A215848(n+1)-Δ[A007504(n)]` -/
def P8390780619331687327.Spec : Prop :=
  ∀ n, P8390780619331687327.a n = A031131 (n + 1)

end A031131

/-! ## A031131.P12330232364274369343

`Δ[A007504(n+2)-A007504(n)]`
-/

namespace A031131.P12330232364274369343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 2) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031131.P12330232364274369343

namespace A031131

/-- `Δ[A007504(n+2)-A007504(n)]` -/
def P12330232364274369343.Spec : Prop :=
  ∀ n, P12330232364274369343.a n = A031131 (n + 1)

end A031131

/-! ## A031131.P9567452133965454729

`A001223(n+1)+A001223(n+2)`
-/

namespace A031131.P9567452133965454729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + A001223 (n + 2)

end

end A031131.P9567452133965454729

namespace A031131

/-- `A001223(n+1)+A001223(n+2)` -/
def P9567452133965454729.Spec : Prop :=
  ∀ n, P9567452133965454729.a n = A031131 (n + 1)

theorem P9567452133965454729.correct : P9567452133965454729.Spec := by
  intro n
  simp only [A031131, Nat.add_sub_cancel, A031131.P9567452133965454729.a, A031131.P2453725465626413076.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031131

/-! ## A031131.P5679062248452412312

`A037166(n+1)-A111071(n+1)`
-/

namespace A031131.P5679062248452412312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) - A111071 (n + 1)

end

end A031131.P5679062248452412312

namespace A031131

/-- `A037166(n+1)-A111071(n+1)` -/
def P5679062248452412312.Spec : Prop :=
  ∀ n, P5679062248452412312.a n = A031131 (n + 1)

theorem P5679062248452412312.correct : P5679062248452412312.Spec := by
  intro n
  simp only [A031131, Nat.add_sub_cancel, A031131.P5679062248452412312.a, A031131.P2453725465626413076.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037166, A037166.P14619227700024520226.a, A111071, A111071.P17768111592594357772.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031131

/-! ## A031131.P14029512402856715166

`A093667(n+1)-A062234(n+1)`
-/

namespace A031131.P14029512402856715166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1) - A062234 (n + 1)

end

end A031131.P14029512402856715166

namespace A031131

/-- `A093667(n+1)-A062234(n+1)` -/
def P14029512402856715166.Spec : Prop :=
  ∀ n, P14029512402856715166.a n = A031131 (n + 1)

theorem P14029512402856715166.correct : P14029512402856715166.Spec := by
  intro n
  simp only [A031131, Nat.add_sub_cancel, A031131.P14029512402856715166.a, A031131.P2453725465626413076.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A062234, A062234.P8592873382335253705.a, A093667, A093667.P4637239888588385054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031131

/-! ## A031131.P10378138987678128978

`A065091(n+1)-A096379(n+1)`
-/

namespace A031131.P10378138987678128978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A096379 (n + 1)

end

end A031131.P10378138987678128978

namespace A031131

/-- `A065091(n+1)-A096379(n+1)` -/
def P10378138987678128978.Spec : Prop :=
  ∀ n, P10378138987678128978.a n = A031131 (n + 1)

theorem P10378138987678128978.correct : P10378138987678128978.Spec := by
  intro n
  simp only [A031131, Nat.add_sub_cancel, A031131.P10378138987678128978.a, A031131.P2453725465626413076.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, A096379, A096379.P509834506880397996.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031131

/-! ## A031131.P17700235301679915952

`A168563(n+1)-A038529(n+1)`
-/

namespace A031131.P17700235301679915952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168563 (n + 1) - A038529 (n + 1)

end

end A031131.P17700235301679915952

namespace A031131

/-- `A168563(n+1)-A038529(n+1)` -/
def P17700235301679915952.Spec : Prop :=
  ∀ n, P17700235301679915952.a n = A031131 (n + 1)

end A031131

/-! ## A031131.P4799162768449759166

`A176004(n+1)-A065870(n+1)`
-/

namespace A031131.P4799162768449759166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176004 (n + 1) - A065870 (n + 1)

end

end A031131.P4799162768449759166

namespace A031131

/-- `A176004(n+1)-A065870(n+1)` -/
def P4799162768449759166.Spec : Prop :=
  ∀ n, P4799162768449759166.a n = A031131 (n + 1)

end A031131

/-! ## A031131.P16072187804588501953

`A181428(n+1)-A065091(n+1)`
-/

namespace A031131.P16072187804588501953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (n + 1) - A065091 (n + 1)

end

end A031131.P16072187804588501953

namespace A031131

/-- `A181428(n+1)-A065091(n+1)` -/
def P16072187804588501953.Spec : Prop :=
  ∀ n, P16072187804588501953.a n = A031131 (n + 1)

theorem P16072187804588501953.correct : P16072187804588501953.Spec := by
  intro n
  simp only [A031131, Nat.add_sub_cancel, A031131.P16072187804588501953.a, A031131.P2453725465626413076.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, A181428, A181428.P14403328019642653517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031131

/-! ## A031131.P18039948514390934793

`A305748(n+1)+A028334(n+2)`
-/

namespace A031131.P18039948514390934793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305748 (n + 1) + A028334 (n + 2)

end

end A031131.P18039948514390934793

namespace A031131

/-- `A305748(n+1)+A028334(n+2)` -/
def P18039948514390934793.Spec : Prop :=
  ∀ n, P18039948514390934793.a n = A031131 (n + 1)

end A031131

/-! ## A031131.P9171373381443150038

`A176569(n+2)-A014686(n+1)`
-/

namespace A031131.P9171373381443150038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176569 (n + 2) - A014686 (n + 1)

end

end A031131.P9171373381443150038

namespace A031131

/-- `A176569(n+2)-A014686(n+1)` -/
def P9171373381443150038.Spec : Prop :=
  ∀ n, P9171373381443150038.a n = A031131 (n + 1)

end A031131

/-! ## A031131.P13725070489844579550

`A210497(n+1)-A062234(n+2)`
-/

namespace A031131.P13725070489844579550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1) - A062234 (n + 2)

end

end A031131.P13725070489844579550

namespace A031131

/-- `A210497(n+1)-A062234(n+2)` -/
def P13725070489844579550.Spec : Prop :=
  ∀ n, P13725070489844579550.a n = A031131 (n + 1)

theorem P13725070489844579550.correct : P13725070489844579550.Spec := by
  intro n
  simp only [A031131, Nat.add_sub_cancel, A031131.P13725070489844579550.a, A031131.P2453725465626413076.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A062234, A062234.P8592873382335253705.a, A210497, A210497.P11511747503835237208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031131

/-! ## A031131.P2602559328109248171

`A109805(n+1)/A065091(n+1)`
-/

namespace A031131.P2602559328109248171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109805 (n + 1) : ℚ) / (A065091 (n + 1) : ℚ)

end

end A031131.P2602559328109248171

namespace A031131

/-- `A109805(n+1)/A065091(n+1)` -/
def P2602559328109248171.Spec : Prop :=
  ∀ n, P2602559328109248171.a n = (A031131 (n + 1) : ℚ)

end A031131

/-! ## A031131.P10780034783073962852

`A096277(n+1)%A001043(n+1)`
-/

namespace A031131.P10780034783073962852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096277 (n + 1)) (A001043 (n + 1))

end

end A031131.P10780034783073962852

namespace A031131

/-- `A096277(n+1)%A001043(n+1)` -/
def P10780034783073962852.Spec : Prop :=
  ∀ n, P10780034783073962852.a n = A031131 (n + 1)

end A031131

/-! ## A031131.P11234430970763470465

`A292926(n+1)%A100484(n+1)`
-/

namespace A031131.P11234430970763470465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292926 (n + 1)) (A100484 (n + 1))

end

end A031131.P11234430970763470465

namespace A031131

/-- `A292926(n+1)%A100484(n+1)` -/
def P11234430970763470465.Spec : Prop :=
  ∀ n, P11234430970763470465.a n = A031131 (n + 1)

end A031131

/-! ## A031131.P822961923527604571

`A075527(n+1)`
-/

namespace A031131.P822961923527604571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (n + 1)

end

end A031131.P822961923527604571

namespace A031131

/-- `A075527(n+1)` -/
def P822961923527604571.Spec : Prop :=
  ∀ n, P822961923527604571.a n = A031131 (n + 1)

end A031131

/-! ## A031131.P6194965004104239364

`Δ[Δ[A061802(n)]]`
-/

namespace A031131.P6194965004104239364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031131.P6194965004104239364

namespace A031131

/-- `Δ[Δ[A061802(n)]]` -/
def P6194965004104239364.Spec : Prop :=
  ∀ n, P6194965004104239364.a n = A031131 (n + 1)

end A031131

/-! ## A031131.P7382633038709628454

`Δ[A001043(n+1)]`
-/

namespace A031131.P7382633038709628454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031131.P7382633038709628454

namespace A031131

/-- `Δ[A001043(n+1)]` -/
def P7382633038709628454.Spec : Prop :=
  ∀ n, P7382633038709628454.a n = A031131 (n + 1)

theorem P7382633038709628454.correct : P7382633038709628454.Spec := by
  intro n
  simp only [A031131, Nat.add_sub_cancel, A031131.P7382633038709628454.f1, A031131.P7382633038709628454.a, A031131.P2453725465626413076.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031131

/-!
# A031132: Record differences between n-th prime and (n+2)-nd prime.

The programs for A031132, there is no canonical definition to state claims against.
-/

/-! ## A031132.P15873541084933528975

`A031134(n+1)-A031133(n+1)`
-/

namespace A031132.P15873541084933528975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031134 (n + 1) - A031133 (n + 1)

end

end A031132.P15873541084933528975

/-! ## A031132.P6278033780804214206

`A098968(n+1)+2`
-/

namespace A031132.P6278033780804214206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098968 (n + 1) + 2

end

end A031132.P6278033780804214206

/-! ## A031132.P15853542984717741035

`A009056(A098968(n+1))`
-/

namespace A031132.P15853542984717741035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A098968 (n + 1)).toNat

end

end A031132.P15853542984717741035

/-! ## A031132.P14188974442656083414

`A055670(A122413(n+1))-1-A031133(n+1)`
-/

namespace A031132.P14188974442656083414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A122413 (n + 1)).toNat - 1 - A031133 (n + 1)

end

end A031132.P14188974442656083414

/-! ## A031132.P6944786299461513297

`record[A031131(n+1)]`
-/

namespace A031132.P6944786299461513297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031132.P6944786299461513297

/-!
# A031133: Lower prime of a record difference between it and the second prime after it.

The programs for A031133, there is no canonical definition to state claims against.
-/

/-! ## A031133.P10466272726781290119

`A031134(n+1)-A031132(n+1)`
-/

namespace A031133.P10466272726781290119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031134 (n + 1) - A031132 (n + 1)

end

end A031133.P10466272726781290119

/-! ## A031133.P13476076024929610187

`A031134(n+1)-(A098968(n+1)+2)`
-/

namespace A031133.P13476076024929610187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031134 (n + 1) - (A098968 (n + 1) + 2)

end

end A031133.P13476076024929610187

/-! ## A031133.P10440529697794782622

`A031134(n+1)-A009056(A098968(n+1))`
-/

namespace A031133.P10440529697794782622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031134 (n + 1) - A009056 (A098968 (n + 1)).toNat

end

end A031133.P10440529697794782622

/-! ## A031133.P12354471733792467757

`A008578(A098969(n+1))`
-/

namespace A031133.P12354471733792467757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A098969 (n + 1)).toNat

end

end A031133.P12354471733792467757

/-! ## A031133.P2570880285977226800

`A000040(A122412(n+1))`
-/

namespace A031133.P2570880285977226800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A122412 (n + 1)).toNat

end

end A031133.P2570880285977226800

/-!
# A031134: Upper prime of a record difference between it and the second prime before it.

The programs for A031134, there is no canonical definition to state claims against.
-/

/-! ## A031134.P6096205976005187458

`A031133(n+1)+A031132(n+1)`
-/

namespace A031134.P6096205976005187458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031133 (n + 1) + A031132 (n + 1)

end

end A031134.P6096205976005187458

/-! ## A031134.P1548930346524060206

`A031133(n+1)+A098968(n+1)+2`
-/

namespace A031134.P1548930346524060206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031133 (n + 1) + (A098968 (n + 1) + 2)

end

end A031134.P1548930346524060206

/-! ## A031134.P2689381535007113675

`A031133(n+1)+A009056(A098968(n+1))`
-/

namespace A031134.P2689381535007113675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031133 (n + 1) + A009056 (A098968 (n + 1)).toNat

end

end A031134.P2689381535007113675

/-! ## A031134.P13651308206565232250

`A055670(A122413(n+1))-1`
-/

namespace A031134.P13651308206565232250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A122413 (n + 1)).toNat - 1

end

end A031134.P13651308206565232250

/-! ## A031134.P4546994755729057837

`A000040(A122413(n+1))`
-/

namespace A031134.P4546994755729057837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A122413 (n + 1)).toNat

end

end A031134.P4546994755729057837

/-!
# A031137: Weight distribution of [48,23,8] Rao-Reddy code.

The programs for A031137, there is no canonical definition to state claims against.
-/

/-! ## A031137.P4145070063334610549

`A020639(A000629(n))*A108179(n)`
-/

namespace A031137.P4145070063334610549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000629 n).toNat * A108179 n

end

end A031137.P4145070063334610549

/-! ## A031137.P14218122658195348340

`A020639(A020989(n))*A108179(n)`
-/

namespace A031137.P14218122658195348340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020989 n).toNat * A108179 n

end

end A031137.P14218122658195348340

/-! ## A031137.P11183025634052349384

`A020639(A027650(n))*A108179(n)`
-/

namespace A031137.P11183025634052349384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A027650 n).toNat * A108179 n

end

end A031137.P11183025634052349384

/-!
# A031138: Numbers k such that 1^5 + 2^5 + ... + k^5 is a square.

The programs for A031138, the canonical program `A031138.P14402222758888035602` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031138 has offset 1).

The definition of A031138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A031138.P14402222758888035602

`10*a(n-1)-a(n-2)+4` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A031138

/-- `10*a(n-1)-a(n-2)+4` -/
def P14402222758888035602.Spec : Prop :=
  ∀ n, P14402222758888035602.a n = A031138 (n + 1)

theorem P14402222758888035602.correct : P14402222758888035602.Spec := by
  intro n
  simp only [A031138, Nat.add_sub_cancel]

end A031138

/-! ## A031138.P13204033374237096407

`∑[ogf((1+2x+x^2)/(1-10x+x^2))]`
-/

namespace A031138.P13204033374237096407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -10, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031138.P13204033374237096407

namespace A031138

/-- `∑[ogf((1+2x+x^2)/(1-10x+x^2))]` -/
def P13204033374237096407.Spec : Prop :=
  ∀ n, P13204033374237096407.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P10294350122602994339

`∑[A004291(n)]`
-/

namespace A031138.P10294350122602994339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031138.P10294350122602994339

namespace A031138

/-- `∑[A004291(n)]` -/
def P10294350122602994339.Spec : Prop :=
  ∀ n, P10294350122602994339.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P13973563157863718707

`A157085(n)-1`
-/

namespace A031138.P13973563157863718707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157085 n - 1

end

end A031138.P13973563157863718707

namespace A031138

/-- `A157085(n)-1` -/
def P13973563157863718707.Spec : Prop :=
  ∀ n, P13973563157863718707.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P14005856307212357206

`A350923(n+1)-1`
-/

namespace A031138.P14005856307212357206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350923 (n + 1) - 1

end

end A031138.P14005856307212357206

namespace A031138

/-- `A350923(n+1)-1` -/
def P14005856307212357206.Spec : Prop :=
  ∀ n, P14005856307212357206.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P14431609316457231088

`3*A105038(n)+1`
-/

namespace A031138.P14431609316457231088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A105038 n + 1

end

end A031138.P14431609316457231088

namespace A031138

/-- `3*A105038(n)+1` -/
def P14431609316457231088.Spec : Prop :=
  ∀ n, P14431609316457231088.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P7832749652758734168

`floor(A259595(2*n)/2)`
-/

namespace A031138.P7832749652758734168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A259595 (2 * n) : ℚ) / 2⌋

end

end A031138.P7832749652758734168

namespace A031138

/-- `floor(A259595(2*n)/2)` -/
def P7832749652758734168.Spec : Prop :=
  ∀ n, P7832749652758734168.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P10645202880425573779

`∑[2*A122653(n)]+1`
-/

namespace A031138.P10645202880425573779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A031138.P10645202880425573779

namespace A031138

/-- `∑[2*A122653(n)]+1` -/
def P10645202880425573779.Spec : Prop :=
  ∀ n, P10645202880425573779.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P243080137381161713

`2*A253175(n+1)-1`
-/

namespace A031138.P243080137381161713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253175 (n + 1) - 1

end

end A031138.P243080137381161713

namespace A031138

/-- `2*A253175(n+1)-1` -/
def P243080137381161713.Spec : Prop :=
  ∀ n, P243080137381161713.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P10350850984611561340

`3*A054318(n+1)-2`
-/

namespace A031138.P10350850984611561340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A054318 (n + 1) - 2

end

end A031138.P10350850984611561340

namespace A031138

/-- `3*A054318(n+1)-2` -/
def P10350850984611561340.Spec : Prop :=
  ∀ n, P10350850984611561340.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P8806926011197926285

`A132596(n)+A054320(n)`
-/

namespace A031138.P8806926011197926285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132596 n + A054320 n

end

end A031138.P8806926011197926285

namespace A031138

/-- `A132596(n)+A054320(n)` -/
def P8806926011197926285.Spec : Prop :=
  ∀ n, P8806926011197926285.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P17777008011272961196

`A138288(n)+A105038(n)`
-/

namespace A031138.P17777008011272961196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n + A105038 n

end

end A031138.P17777008011272961196

namespace A031138

/-- `A138288(n)+A105038(n)` -/
def P17777008011272961196.Spec : Prop :=
  ∀ n, P17777008011272961196.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P7080349466147156551

`A098297(n)+∑[A054320(n)]`
-/

namespace A031138.P7080349466147156551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098297 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031138.P7080349466147156551

namespace A031138

/-- `A098297(n)+∑[A054320(n)]` -/
def P7080349466147156551.Spec : Prop :=
  ∀ n, P7080349466147156551.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P8855578400951250454

`A138288(n)+∑[A122652(n)]`
-/

namespace A031138.P8855578400951250454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031138.P8855578400951250454

namespace A031138

/-- `A138288(n)+∑[A122652(n)]` -/
def P8855578400951250454.Spec : Prop :=
  ∀ n, P8855578400951250454.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P16147223529764594468

`A105038(n)+Δ[A004189(n)]`
-/

namespace A031138.P16147223529764594468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105038 n + (f1 (n + 1) - f1 n)

end

end A031138.P16147223529764594468

namespace A031138

/-- `A105038(n)+Δ[A004189(n)]` -/
def P16147223529764594468.Spec : Prop :=
  ∀ n, P16147223529764594468.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P12996962283815825617

`A132596(n)+Δ[A098297(n)]`
-/

namespace A031138.P12996962283815825617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132596 n + (f1 (n + 1) - f1 n)

end

end A031138.P12996962283815825617

namespace A031138

/-- `A132596(n)+Δ[A098297(n)]` -/
def P12996962283815825617.Spec : Prop :=
  ∀ n, P12996962283815825617.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P11954238078453327245

`A105038(n)+A072256(n+1)`
-/

namespace A031138.P11954238078453327245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105038 n + A072256 (n + 1)

end

end A031138.P11954238078453327245

namespace A031138

/-- `A105038(n)+A072256(n+1)` -/
def P11954238078453327245.Spec : Prop :=
  ∀ n, P11954238078453327245.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P14454083844949914988

`A098297(n+1)+A098297(n)`
-/

namespace A031138.P14454083844949914988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098297 (n + 1) + A098297 n

end

end A031138.P14454083844949914988

namespace A031138

/-- `A098297(n+1)+A098297(n)` -/
def P14454083844949914988.Spec : Prop :=
  ∀ n, P14454083844949914988.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P5285298216307545306

`A077291(2*n)+A001079(n)`
-/

namespace A031138.P5285298216307545306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077291 (2 * n) + A001079 n

end

end A031138.P5285298216307545306

namespace A031138

/-- `A077291(2*n)+A001079(n)` -/
def P5285298216307545306.Spec : Prop :=
  ∀ n, P5285298216307545306.a n = A031138 (n + 1)

end A031138

/-! ## A031138.P6820204535429551024

`A077288(2*n)+A004189(n+1)`
-/

namespace A031138.P6820204535429551024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077288 (2 * n) + A004189 (n + 1)

end

end A031138.P6820204535429551024

namespace A031138

/-- `A077288(2*n)+A004189(n+1)` -/
def P6820204535429551024.Spec : Prop :=
  ∀ n, P6820204535429551024.a n = A031138 (n + 1)

end A031138

/-!
# A031140: Position of rightmost 0 in 2^n increases.

The programs for A031140, there is no canonical definition to state claims against.
-/

/-! ## A031140.P5063386784965202834

`log2(A031155(n+1))`
-/

namespace A031140.P5063386784965202834
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A031155 (n + 1) : ℝ)

end

end A031140.P5063386784965202834

/-!
# A031141: Position of rightmost digit 0 in 2^A031140(n).

The programs for A031141, there is no canonical definition to state claims against.
-/

/-! ## A031141.P8794995152696277940

`A181611(A031140(n+1))`
-/

namespace A031141.P8794995152696277940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181611 (A031140 (n + 1)).toNat

end

end A031141.P8794995152696277940

/-! ## A031141.P3176946277797370355

`A010877(n)+A000005(A334499(2*(n+1)))`
-/

namespace A031141.P3176946277797370355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 n + A000005 (A334499 (2 * (n + 1))).toNat

end

end A031141.P3176946277797370355

/-!
# A031142: Position of rightmost 0 (including leading 0) in 2^n increases.

The programs for A031142, there is no canonical definition to state claims against.
-/

/-! ## A031142.P7650113288846753157

`log2(A031156(n+1))`
-/

namespace A031142.P7650113288846753157
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A031156 (n + 1) : ℝ)

end

end A031142.P7650113288846753157

/-! ## A031142.P6658296921346131670

`A266568(A031143(n+1))`
-/

namespace A031142.P6658296921346131670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266568 (A031143 (n + 1)).toNat

end

end A031142.P6658296921346131670

/-! ## A031142.P4519530178205848497

`A266568(record[A181611(n+1)])`
-/

namespace A031142.P4519530178205848497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266568 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031142.P4519530178205848497

/-! ## A031142.P2288319728940514271

`val(A031156(n+1), A020639(A321145(n+1)))`
-/

namespace A031142.P2288319728940514271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A031156 (n + 1)).toNat (A020639 (A321145 (n + 1)).toNat).toNat

end

end A031142.P2288319728940514271

/-! ## A031142.P15409500751240747728

`eq[n, A266568(A034887(n))]`
-/

namespace A031142.P15409500751240747728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266568 (A034887 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031142.P15409500751240747728

/-!
# A031143: Position of rightmost 0 (including leading 0) in 2^A031142(n).

The programs for A031143, there is no canonical definition to state claims against.
-/

/-! ## A031143.P6256687040529557575

`record[A181611(n+1)]`
-/

namespace A031143.P6256687040529557575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031143.P6256687040529557575

/-! ## A031143.P2518813040116569015

`A181611(A031142(n+1)+C(2, n))`
-/

namespace A031143.P2518813040116569015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181611 (A031142 (n + 1) + (Nat.choose 2 n : ℤ)).toNat

end

end A031143.P2518813040116569015

/-! ## A031143.P15661896357207559410

`A181611(floor(A031142(n+1)+acot(n)))`
-/

namespace A031143.P15661896357207559410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181611 ⌊(A031142 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A031143.P15661896357207559410

/-! ## A031143.P4035424274719360167

`A181611(A031142(n+1)+A000007(n))`
-/

namespace A031143.P4035424274719360167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181611 (A031142 (n + 1) + A000007 n).toNat

end

end A031143.P4035424274719360167

/-! ## A031143.P2298496492793208725

`A181611(A031142(n+1)^(A000040(n+1)%2))`
-/

namespace A031143.P2298496492793208725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181611 (SequenceMachineLib.roundAway ((A031142 (n + 1) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ))).toNat

end

end A031143.P2298496492793208725

/-!
# A031144: Numbers n such that n! has a record number of zeros.

The programs for A031144, there is no canonical definition to state claims against.
-/

/-! ## A031144.P16386580877249501410

`A072417(record[A027869(n)])%A073506(n+1)`
-/

namespace A031144.P16386580877249501410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072417 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A073506 (n + 1))

end

end A031144.P16386580877249501410

/-! ## A031144.P6828326680653603157

`record[A072417(n)%A228413(n)]`
-/

namespace A031144.P6828326680653603157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072417 n) (A228413 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031144.P6828326680653603157

/-!
# A031145: Factorials with a record number of zeros.

The programs for A031145, there is no canonical definition to state claims against.
-/

/-! ## A031145.P3211871085240408291

`A031144(n+1)!`
-/

namespace A031145.P3211871085240408291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A031144 (n + 1)).toNat

end

end A031145.P3211871085240408291

/-! ## A031145.P2037924010939395793

`A000142(A031144(n+1)%A031126(n))`
-/

namespace A031145.P2037924010939395793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (Int.tmod (A031144 (n + 1)) (A031126 n)).toNat

end

end A031145.P2037924010939395793

/-!
# A031146: Exponent of the least power of 2 having exactly n zeros in its decimal representation.

The programs for A031146, there is no canonical definition to state claims against.
-/

/-! ## A031146.P17942605854429433685

`A330790(n+1)+A286688(A286701(n))`
-/

namespace A031146.P17942605854429433685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330790 (n + 1) + A286688 (A286701 n).toNat

end

end A031146.P17942605854429433685

/-! ## A031146.P15238951982546735835

`A330790(n+1)+A316867(A288117(n)²)`
-/

namespace A031146.P15238951982546735835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330790 (n + 1) + A316867 (A288117 n ^ 2).toNat

end

end A031146.P15238951982546735835

/-! ## A031146.P1870386049956317496

`A262689(A330790(n+1)²)`
-/

namespace A031146.P1870386049956317496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A330790 (n + 1) ^ 2).toNat

end

end A031146.P1870386049956317496

/-! ## A031146.P4346682267783889908

`A330790(n+1)%A330811(3*n)`
-/

namespace A031146.P4346682267783889908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330790 (n + 1)) (A330811 (3 * n))

end

end A031146.P4346682267783889908

/-! ## A031146.P1072134637006747953

`A306714(A000079(n))*A330790(n+1)`
-/

namespace A031146.P1072134637006747953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306714 (A000079 n).toNat * A330790 (n + 1)

end

end A031146.P1072134637006747953

/-!
# A031147: 

The programs for A031147, there is no canonical definition to state claims against.
-/

/-! ## A031147.P12863696887973949580

`2^A031146(n)`
-/

namespace A031147.P12863696887973949580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A031146 n : ℤ)

end

end A031147.P12863696887973949580

/-! ## A031147.P17412434320748657685

`A000079(A031146(n))`
-/

namespace A031147.P17412434320748657685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A031146 n).toNat

end

end A031147.P17412434320748657685

/-! ## A031147.P12935309490316570188

`2^A330790(A330036(∑[2^n]))`
-/

namespace A031147.P12935309490316570188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A330790 (A330036 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A031147.P12935309490316570188

/-!
# A031148: Number of series-reduced planted trees with n leaves of 2 colors and no symmetries.

The programs for A031148, there is no canonical definition to state claims against.
-/

/-! ## A031148.P16629125189641133180

`A052301(abs(1-n)+2)`
-/

namespace A031148.P16629125189641133180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052301 (|1 - (n : ℤ)| + 2).toNat

end

end A031148.P16629125189641133180

/-! ## A031148.P8782779412805747289

`ceil(acot(n))*A052301(n+1)`
-/

namespace A031148.P8782779412805747289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A052301 (n + 1)

end

end A031148.P8782779412805747289

/-! ## A031148.P14188264798302005872

`A052301(n+1)+A000007(n)`
-/

namespace A031148.P14188264798302005872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052301 (n + 1) + A000007 n

end

end A031148.P14188264798302005872

/-! ## A031148.P1342168947994006706

`A052301(n+1)*A054977(n)`
-/

namespace A031148.P1342168947994006706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052301 (n + 1) * A054977 n

end

end A031148.P1342168947994006706

/-! ## A031148.P13123490186911572549

`A097331(2*n)+A052301(n+1)`
-/

namespace A031148.P13123490186911572549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n) + A052301 (n + 1)

end

end A031148.P13123490186911572549

/-! ## A031148.P16159393533251569074

`gcd(2, record[A000010(n+1)+1])*A052301(n+1)`
-/

namespace A031148.P16159393533251569074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℤ) * A052301 (n + 1)

end

end A031148.P16159393533251569074

/-! ## A031148.P16654509409915226450

`A052301(n+1)+A008683(record[A051494(n)])`
-/

namespace A031148.P16654509409915226450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052301 (n + 1) + A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A031148.P16654509409915226450

/-! ## A031148.P5888745678202749199

`A343380(A001222(n+1))+A052301(n+1)`
-/

namespace A031148.P5888745678202749199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A001222 (n + 1)).toNat + A052301 (n + 1)

end

end A031148.P5888745678202749199

/-! ## A031148.P10350409817845384752

`A014963(A001749(n+1))*A052301(n+1)`
-/

namespace A031148.P10350409817845384752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001749 (n + 1)).toNat * A052301 (n + 1)

end

end A031148.P10350409817845384752

/-! ## A031148.P1537469020462506803

`lcm(A052301(n+1), A235872(A020639(n+2)))`
-/

namespace A031148.P1537469020462506803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052301 (n + 1)) (A235872 (A020639 (n + 2)).toNat)

end

end A031148.P1537469020462506803

/-! ## A031148.P5932262041790161289

`A001511(A052291(n+1))*A052301(n+1)`
-/

namespace A031148.P5932262041790161289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A052291 (n + 1)).toNat * A052301 (n + 1)

end

end A031148.P5932262041790161289

/-! ## A031148.P15420972909799270924

`A052301(n+1)*A242627(A241484(n+1))`
-/

namespace A031148.P15420972909799270924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052301 (n + 1) * A242627 (A241484 (n + 1)).toNat

end

end A031148.P15420972909799270924

/-!
# A031149: Numbers whose square with its last digit deleted is also a square.

The programs for A031149, there is no canonical definition to state claims against.
-/

/-! ## A031149.P11230476392034978501

`sqrt(A023110(n+1))`
-/

namespace A031149.P11230476392034978501
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A023110 (n + 1) : ℝ)

end

end A031149.P11230476392034978501

/-! ## A031149.P6489758016800134149

`A023110(n+1)^(A005408(n)/A016825(n))`
-/

namespace A031149.P6489758016800134149
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A023110 (n + 1) : ℝ) ^ ((A005408 n : ℚ) / (A016825 n : ℚ) : ℝ)

end

end A031149.P6489758016800134149

/-! ## A031149.P4727382377111168923

`A023110(n+1)^(A005667(n)/A085447(n))`
-/

namespace A031149.P4727382377111168923
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A023110 (n + 1) : ℝ) ^ ((A005667 n : ℚ) / (A085447 n : ℚ) : ℝ)

end

end A031149.P4727382377111168923

/-! ## A031149.P16398459784300029153

`A023110(n+1)^2^A008683(A125256(n+2))`
-/

namespace A031149.P16398459784300029153
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A023110 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A125256 (n + 2)).toNat : ℤ) : ℝ)

end

end A031149.P16398459784300029153

/-!
# A031150: Appending a digit to n^2 gives another perfect square.

The programs for A031150, there is no canonical definition to state claims against.
-/

/-! ## A031150.P10159530144944408060

`sqrt(A202303(n+5))`
-/

namespace A031150.P10159530144944408060
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A202303 (n + 5) : ℝ)

end

end A031150.P10159530144944408060

/-! ## A031150.P2959441881440857693

`root(A202303(n+5), A307313(A307313(n+1)))`
-/

namespace A031150.P2959441881440857693
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202303 (n + 5) : ℝ) ^ (1 / (A307313 (A307313 (n + 1)).toNat : ℝ))

end

end A031150.P2959441881440857693

/-! ## A031150.P16419548486385995514

`eq[A030686(n+1), A030688(n+1)]+1`
-/

namespace A031150.P16419548486385995514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A031150.P16419548486385995514

/-! ## A031150.P11482699414134990077

`lt[A030687(A028310(n)), A016813(n)]`
-/

namespace A031150.P11482699414134990077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030687 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031150.P11482699414134990077

/-! ## A031150.P153234177271823428

`lt[A030687(A028310(n)), A219529(n)]`
-/

namespace A031150.P153234177271823428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030687 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031150.P153234177271823428

/-!
# A031151: Squares composed of digits {1,2,5}.

The programs for A031151, there is no canonical definition to state claims against.
-/

/-! ## A031151.P18109163431745914809

`A031153(n+1)²`
-/

namespace A031151.P18109163431745914809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031153 (n + 1) ^ 2

end

end A031151.P18109163431745914809

/-! ## A031151.P12291791499768765808

`A031153(n+1)^A020639(2*(n+1))`
-/

namespace A031151.P12291791499768765808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031153 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A031151.P12291791499768765808

/-! ## A031151.P11342015041461009757

`A031153(n+1)^A001222(A001748(n+1))`
-/

namespace A031151.P11342015041461009757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031153 (n + 1) : ℚ) ^ (A001222 (A001748 (n + 1)).toNat : ℤ)

end

end A031151.P11342015041461009757

/-! ## A031151.P1290858804925578409

`A031153(n+1)^A001222(A001750(n+1))`
-/

namespace A031151.P1290858804925578409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031153 (n + 1) : ℚ) ^ (A001222 (A001750 (n + 1)).toNat : ℤ)

end

end A031151.P1290858804925578409

/-! ## A031151.P10033716264927670279

`A031153(n+1)^A001222(A001248(n+1))`
-/

namespace A031151.P10033716264927670279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031153 (n + 1) : ℚ) ^ (A001222 (A001248 (n + 1)).toNat : ℤ)

end

end A031151.P10033716264927670279

/-!
# A031152: Squares composed of digits {2,4,5}.

The programs for A031152, there is no canonical definition to state claims against.
-/

/-! ## A031152.P14931747776160307129

`A031154(n+1)²`
-/

namespace A031152.P14931747776160307129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031154 (n + 1) ^ 2

end

end A031152.P14931747776160307129

/-! ## A031152.P5566056595669911183

`A031154(n+1)^A000034(2*n+1)`
-/

namespace A031152.P5566056595669911183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031154 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A031152.P5566056595669911183

/-! ## A031152.P13210580630925478823

`A031154(n+1)^A020639(2*(n+1))`
-/

namespace A031152.P13210580630925478823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031154 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A031152.P13210580630925478823

/-! ## A031152.P17936018069477433472

`A031154(n+1)^A001222(record[2*A006530(n+2)])`
-/

namespace A031152.P17936018069477433472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031154 (n + 1) : ℚ) ^ (A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A031152.P17936018069477433472

/-! ## A031152.P2006044328601521337

`A031154(n+1)^A001222(A001248(n+1))`
-/

namespace A031152.P2006044328601521337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031154 (n + 1) : ℚ) ^ (A001222 (A001248 (n + 1)).toNat : ℤ)

end

end A031152.P2006044328601521337

/-!
# A031153: Numbers k such that k^2 contains only digits {1,2,5}.

The programs for A031153, there is no canonical definition to state claims against.
-/

/-! ## A031153.P5237455932842644191

`sqrt(A031151(n+1))`
-/

namespace A031153.P5237455932842644191
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A031151 (n + 1) : ℝ)

end

end A031153.P5237455932842644191

/-! ## A031153.P11396559056677335397

`root(A031151(n+1), A005614(n)+A003842(n))`
-/

namespace A031153.P11396559056677335397
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A031151 (n + 1) : ℝ) ^ (1 / (A005614 n + A003842 n : ℝ))

end

end A031153.P11396559056677335397

/-! ## A031153.P15173669636734442174

`root(A031151(n+1), A003842(n)*A014675(n))`
-/

namespace A031153.P15173669636734442174
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A031151 (n + 1) : ℝ) ^ (1 / (A003842 n * A014675 n : ℝ))

end

end A031153.P15173669636734442174

/-! ## A031153.P9704556378629810443

`root(A031151(n+1), A130335(n²+1))`
-/

namespace A031153.P9704556378629810443
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A031151 (n + 1) : ℝ) ^ (1 / (A130335 (n ^ 2 + 1) : ℝ))

end

end A031153.P9704556378629810443

/-!
# A031154: Numbers k such that k^2 contains only digits {2,4,5}.

The programs for A031154, there is no canonical definition to state claims against.
-/

/-! ## A031154.P12240035656518609096

`sqrt(A031152(n+1))`
-/

namespace A031154.P12240035656518609096
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A031152 (n + 1) : ℝ)

end

end A031154.P12240035656518609096

/-! ## A031154.P3631506910984254024

`root(A031152(n+1), 2)%A002023(n)`
-/

namespace A031154.P3631506910984254024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A031152 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A002023 n)

end

end A031154.P3631506910984254024

/-! ## A031154.P7506591610664292844

`gcd(root(A031152(n+1), 2), A000038(n))`
-/

namespace A031154.P7506591610664292844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A031152 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000038 n)

end

end A031154.P7506591610664292844

/-! ## A031154.P17323843277870078243

`root(A031152(n+1), 2)*A007318(A000096(n))`
-/

namespace A031154.P17323843277870078243
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A031152 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (A000096 n).toNat : ℝ)

end

end A031154.P17323843277870078243

/-! ## A031154.P15061931107510134421

`root(A031152(n+1), 2)*A007318(A000217(n))`
-/

namespace A031154.P15061931107510134421
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A031152 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (A000217 n).toNat : ℝ)

end

end A031154.P15061931107510134421

/-!
# A031155: a(n) = 2^A031140(n).

The programs for A031155, there is no canonical definition to state claims against.
-/

/-! ## A031155.P14564165763683609933

`2^A031140(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A031155.P14564165763683609933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A031140 (n + 1) : ℤ)

end

end A031155.P14564165763683609933

/-! ## A031155.P8665843980250270981

`A000079(A031140(n+1))`
-/

namespace A031155.P8665843980250270981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A031140 (n + 1)).toNat

end

end A031155.P8665843980250270981

/-!
# A031156: a(n) = 2^A031142(n).

The programs for A031156, there is no canonical definition to state claims against.
-/

/-! ## A031156.P6789238314196086873

`2^A031142(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A031156.P6789238314196086873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A031142 (n + 1) : ℤ)

end

end A031156.P6789238314196086873

/-! ## A031156.P14374768721607588607

`A000079(A031142(n+1))`
-/

namespace A031156.P14374768721607588607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A031142 (n + 1)).toNat

end

end A031156.P14374768721607588607

/-! ## A031156.P4076189169598765345

`A011782(A031142(n+1)+1)`
-/

namespace A031156.P4076189169598765345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A031142 (n + 1) + 1).toNat

end

end A031156.P4076189169598765345

/-! ## A031156.P6392347960554411535

`A018050(4*A031142(n+1))`
-/

namespace A031156.P6392347960554411535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018050 (4 * A031142 (n + 1)).toNat

end

end A031156.P6392347960554411535

/-! ## A031156.P1314180550986072467

`A000079(A266568(A031143(n+1)))`
-/

namespace A031156.P1314180550986072467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A266568 (A031143 (n + 1)).toNat).toNat

end

end A031156.P1314180550986072467

/-!
# A031157: Numbers that are both lucky and prime.

The programs for A031157, there is no canonical definition to state claims against.
-/

/-! ## A031157.P346427534746207252

`A309334(n)+a(n-1)` with `a(0)=3`
-/

namespace A031157.P346427534746207252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A309334 n + a (n - 1)

end

end A031157.P346427534746207252

/-! ## A031157.P5260506827429535979

`p?[A000959(n+1)]`
-/

namespace A031157.P5260506827429535979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031157.P5260506827429535979

/-! ## A031157.P13093596721825025711

`p?[A043772(n+1)]`
-/

namespace A031157.P13093596721825025711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031157.P13093596721825025711

/-! ## A031157.P9088140259208109359

`p?[A118643(n+1)]`
-/

namespace A031157.P9088140259208109359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031157.P9088140259208109359

/-! ## A031157.P2305875641101692920

`∩[A000959(n+1), A007645(n+1)]`
-/

namespace A031157.P2305875641101692920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031157.P2305875641101692920

/-! ## A031157.P8532685971799575121

`∩[A000959(n+1), A045331(n+1)]`
-/

namespace A031157.P8532685971799575121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031157.P8532685971799575121

/-! ## A031157.P17931157073992882351

`∩[A007645(n+1), A043772(n+1)]`
-/

namespace A031157.P17931157073992882351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031157.P17931157073992882351

/-! ## A031157.P18364692259753505835

`∩[A045331(n+1), A043772(n+1)]`
-/

namespace A031157.P18364692259753505835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031157.P18364692259753505835

/-! ## A031157.P12440304988411648713

`∩[A000959(n+1), A040116(n+1)]`
-/

namespace A031157.P12440304988411648713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031157.P12440304988411648713

/-! ## A031157.P14052085283497100402

`∩[A000959(n+1), A045320(n+1)]`
-/

namespace A031157.P14052085283497100402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031157.P14052085283497100402

/-! ## A031157.P6082849245246477956

`∩[A043772(n+1), A045320(n+1)]`
-/

namespace A031157.P6082849245246477956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031157.P6082849245246477956

/-! ## A031157.P8241389772842655187

`∩[A045320(n+1), A118643(n+1)]`
-/

namespace A031157.P8241389772842655187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031157.P8241389772842655187

/-! ## A031157.P15152285192028049679

`p?[A031883(n)+a(n-1)]` with `a(0)=1`
-/

namespace A031157.P15152285192028049679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A031883 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031157.P15152285192028049679

/-! ## A031157.P6376804990072966711

`p?[Δ[A046279(n+1)]]`
-/

namespace A031157.P6376804990072966711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046279 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031157.P6376804990072966711

/-! ## A031157.P6727127514003357172

`∩[A000040(n+1), A000959(n+1)]`
-/

namespace A031157.P6727127514003357172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031157.P6727127514003357172

/-! ## A031157.P10717015748475967750

`∩[A000959(n+1), A004139(n+1)]`
-/

namespace A031157.P10717015748475967750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031157.P10717015748475967750

/-! ## A031157.P11607026052576553386

`∩[A000040(n+1), A043772(n+1)]`
-/

namespace A031157.P11607026052576553386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031157.P11607026052576553386

/-! ## A031157.P13556578020408600348

`∩[A000959(n+1), A045319(n+1)]`
-/

namespace A031157.P13556578020408600348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031157.P13556578020408600348

/-! ## A031157.P15900065761830102272

`∩[A004139(n+1), A043772(n+1)]`
-/

namespace A031157.P15900065761830102272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031157.P15900065761830102272

/-!
# A031158: Twin lucky numbers (lower terms).

The programs for A031158, there is no canonical definition to state claims against.
-/

/-! ## A031158.P16881239795635416924

`A031160(n+1)-1`
-/

namespace A031158.P16881239795635416924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031160 (n + 1) - 1

end

end A031158.P16881239795635416924

/-! ## A031158.P6888522768189737117

`A031159(n+1)-2`
-/

namespace A031158.P6888522768189737117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031159 (n + 1) - 2

end

end A031158.P6888522768189737117

/-! ## A031158.P11681533386102352445

`2*A348771(n+1)-1`
-/

namespace A031158.P11681533386102352445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348771 (n + 1) - 1

end

end A031158.P11681533386102352445

/-! ## A031158.P13414058993220328587

`A000959(A181557(n+1))`
-/

namespace A031158.P13414058993220328587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A181557 (n + 1)).toNat

end

end A031158.P13414058993220328587

/-! ## A031158.P1505401785011176309

`A057428(A028310(n))+A031160(n+1)`
-/

namespace A031158.P1505401785011176309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A028310 n).toNat + A031160 (n + 1)

end

end A031158.P1505401785011176309

/-! ## A031158.P12725512166863561861

`A057428(A068068(n+1))+A031160(n+1)`
-/

namespace A031158.P12725512166863561861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A068068 (n + 1)).toNat + A031160 (n + 1)

end

end A031158.P12725512166863561861

/-! ## A031158.P9944161371788398713

`∩[A000959(n+1)-2, A000959(n+1)]`
-/

namespace A031158.P9944161371788398713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031158.P9944161371788398713

/-! ## A031158.P1551640586433351678

`A057701(Δ[n²])`
-/

namespace A031158.P1551640586433351678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031158.P1551640586433351678

/-! ## A031158.P9654039129894124492

`A057701(2*(n+1))-2`
-/

namespace A031158.P9654039129894124492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (2 * (n + 1)) - 2

end

end A031158.P9654039129894124492

/-! ## A031158.P7011765581173331412

`A033999(2*n+1)+A031160(n+1)`
-/

namespace A031158.P7011765581173331412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A031160 (n + 1)

end

end A031158.P7011765581173331412

/-! ## A031158.P6825843876676338496

`A057701(2*n+1)*A265859(2*(n+1))`
-/

namespace A031158.P6825843876676338496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (2 * n + 1) * A265859 (2 * (n + 1))

end

end A031158.P6825843876676338496

/-! ## A031158.P6726922407828687007

`∩[A057701(n+1), A137165(n+1)]`
-/

namespace A031158.P6726922407828687007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031158.P6726922407828687007

/-! ## A031158.P11929696528646085824

`∩[A057701(n+1), A137164(n+1)-2]`
-/

namespace A031158.P11929696528646085824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137164 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031158.P11929696528646085824

/-! ## A031158.P7141567020024413097

`A000959(eq[2, A031883(n+1)]+1)`
-/

namespace A031158.P7141567020024413097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A031158.P7141567020024413097

/-! ## A031158.P6564049501239288129

`record[A000959(n+1)/(A031883(n+1)-1)]`
-/

namespace A031158.P6564049501239288129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000959 (n + 1) : ℚ) / (A031883 (n + 1) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031158.P6564049501239288129

/-! ## A031158.P3238839154777778407

`filter[A057701(n+1), A187074(#)]`
-/

namespace A031158.P3238839154777778407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A031158.P3238839154777778407

/-! ## A031158.P8335476953304232341

`filter[A057701(n+1), A359374(#)]`
-/

namespace A031158.P8335476953304232341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A031158.P8335476953304232341

/-! ## A031158.P17839443592240243597

`filter[A057701(n+1), A373155(#)]`
-/

namespace A031158.P17839443592240243597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A031158.P17839443592240243597

/-! ## A031158.P5385575742757072471

`filter[A057701(n+1), A373156(#)]`
-/

namespace A031158.P5385575742757072471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A031158.P5385575742757072471

/-!
# A031159: Twin lucky numbers (upper terms).

The programs for A031159, there is no canonical definition to state claims against.
-/

/-! ## A031159.P4857705091323138152

`A031160(n+1)+1`
-/

namespace A031159.P4857705091323138152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031160 (n + 1) + 1

end

end A031159.P4857705091323138152

/-! ## A031159.P13360117932610912020

`A031158(n+1)+2`
-/

namespace A031159.P13360117932610912020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (n + 1) + 2

end

end A031159.P13360117932610912020

/-! ## A031159.P5022324719969313798

`2*A348771(n+1)+1`
-/

namespace A031159.P5022324719969313798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348771 (n + 1) + 1

end

end A031159.P5022324719969313798

/-! ## A031159.P18193235375361474284

`A000959(A181557(n+1)+1)`
-/

namespace A031159.P18193235375361474284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A181557 (n + 1) + 1).toNat

end

end A031159.P18193235375361474284

/-! ## A031159.P13020214603682074782

`∩[A000959(n+1)+2, A000959(n+1)]`
-/

namespace A031159.P13020214603682074782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031159.P13020214603682074782

/-! ## A031159.P8555559031986301166

`A057701(2*(n+1))`
-/

namespace A031159.P8555559031986301166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (2 * (n + 1))

end

end A031159.P8555559031986301166

/-! ## A031159.P3666115530864500797

`A057701(Δ[n²])+2`
-/

namespace A031159.P3666115530864500797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A031159.P3666115530864500797

/-! ## A031159.P18202311991342733795

`∩[A057701(n+1), A137165(n+1)+2]`
-/

namespace A031159.P18202311991342733795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137165 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031159.P18202311991342733795

/-! ## A031159.P5199065783163164356

`∩[A057701(n+1), A137164(n+1)]`
-/

namespace A031159.P5199065783163164356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031159.P5199065783163164356

/-! ## A031159.P10332505857727253349

`A000959(eq[2, A031883(n+1)]+2)`
-/

namespace A031159.P10332505857727253349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A031159.P10332505857727253349

/-! ## A031159.P3353174628416419794

`∩[A057701(n+1), A016945(n)]`
-/

namespace A031159.P3353174628416419794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031159.P3353174628416419794

/-! ## A031159.P8531327553270015755

`∩[A057701(n+1), A016921(n)+2]`
-/

namespace A031159.P8531327553270015755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031159.P8531327553270015755

/-! ## A031159.P5058644732195303236

`∩[A057701(n+1), A277569(n+1)]`
-/

namespace A031159.P5058644732195303236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031159.P5058644732195303236

/-! ## A031159.P10678159439101824582

`∩[A057701(n+1), A277567(n+1)+2]`
-/

namespace A031159.P10678159439101824582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277567 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031159.P10678159439101824582

/-! ## A031159.P2163419231132322801

`∩[A057701(n+1), A259754(n+1)]`
-/

namespace A031159.P2163419231132322801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031159.P2163419231132322801

/-! ## A031159.P9027441342990009223

`∩[A057701(n+1), A084089(n+1)+2]`
-/

namespace A031159.P9027441342990009223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084089 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031159.P9027441342990009223

/-! ## A031159.P12519824794270995387

`∩[A057701(n+1), A008585(n)]`
-/

namespace A031159.P12519824794270995387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031159.P12519824794270995387

/-! ## A031159.P431371222311758256

`∩[A047230(n+1), A057701(n+1)]`
-/

namespace A031159.P431371222311758256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031159.P431371222311758256

/-! ## A031159.P10474289353212182608

`∩[A047243(n+1), A057701(n+1)]`
-/

namespace A031159.P10474289353212182608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031159.P10474289353212182608

/-! ## A031159.P7924596249597947414

`∩[A047270(n+1), A057701(n+1)]`
-/

namespace A031159.P7924596249597947414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031159.P7924596249597947414

/-!
# A031160: Twin lucky numbers (middle terms).

The programs for A031160, there is no canonical definition to state claims against.
-/

/-! ## A031160.P5353351716626511140

`A031158(n+1)+1`
-/

namespace A031160.P5353351716626511140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (n + 1) + 1

end

end A031160.P5353351716626511140

/-! ## A031160.P6822760204003947715

`A031159(n+1)-1`
-/

namespace A031160.P6822760204003947715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031159 (n + 1) - 1

end

end A031160.P6822760204003947715

/-! ## A031160.P12708078563097234546

`2*A348771(n+1)`
-/

namespace A031160.P12708078563097234546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348771 (n + 1)

end

end A031160.P12708078563097234546

/-! ## A031160.P14972930743120032896

`A000959(A181557(n+1))+1`
-/

namespace A031160.P14972930743120032896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A181557 (n + 1)).toNat + 1

end

end A031160.P14972930743120032896

/-! ## A031160.P16524495050802166013

`xor(1, A031159(A000027(n+1)))`
-/

namespace A031160.P16524495050802166013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A031159 (A000027 (n + 1)).toNat)

end

end A031160.P16524495050802166013

/-! ## A031160.P2779954224044251386

`A057701(Δ[n²])+1`
-/

namespace A031160.P2779954224044251386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A031160.P2779954224044251386

/-! ## A031160.P16419241271168263199

`A265859(2*(n+1))+A057701(2*n+1)`
-/

namespace A031160.P16419241271168263199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265859 (2 * (n + 1)) + A057701 (2 * n + 1)

end

end A031160.P16419241271168263199

/-! ## A031160.P17370505061363056529

`∩[A057701(n+1), A137165(n+1)]+1`
-/

namespace A031160.P17370505061363056529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A031160.P17370505061363056529

/-! ## A031160.P15508755397260368084

`∩[A057701(n+1), A137164(n+1)]-1`
-/

namespace A031160.P15508755397260368084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137164 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A031160.P15508755397260368084

/-! ## A031160.P11081127271623872646

`A000959(eq[2, A031883(n+1)]+2)-1`
-/

namespace A031160.P11081127271623872646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) - 1

end

end A031160.P11081127271623872646

/-! ## A031160.P10851155859649984093

`∩[A057701(n+1), A016921(n)]+1`
-/

namespace A031160.P10851155859649984093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A031160.P10851155859649984093

/-! ## A031160.P14652381480849975409

`∩[A057701(n+1), A016945(n)]-1`
-/

namespace A031160.P14652381480849975409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A031160.P14652381480849975409

/-! ## A031160.P10949654442912288821

`∩[A057701(n+1), A277567(n+1)]+1`
-/

namespace A031160.P10949654442912288821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A031160.P10949654442912288821

/-! ## A031160.P4881679496332314523

`∩[A057701(n+1), A277569(n+1)]-1`
-/

namespace A031160.P4881679496332314523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277569 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A031160.P4881679496332314523

/-! ## A031160.P15152650804754434050

`∩[A057701(n+1), A259754(n+1)]-1`
-/

namespace A031160.P15152650804754434050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259754 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A031160.P15152650804754434050

/-! ## A031160.P8092324742831238902

`∩[A057701(n+1), A084089(n+1)]+1`
-/

namespace A031160.P8092324742831238902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A031160.P8092324742831238902

/-! ## A031160.P13920967970268226852

`∩[A057701(n+1), A016777(n)]+1`
-/

namespace A031160.P13920967970268226852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A031160.P13920967970268226852

/-! ## A031160.P2972177693380472643

`∩[A057701(n+1), A260488(n)]+1`
-/

namespace A031160.P2972177693380472643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260488 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A031160.P2972177693380472643

/-! ## A031160.P8757471323629474459

`∩[A057701(n+1), A008585(n)]-1`
-/

namespace A031160.P8757471323629474459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A031160.P8757471323629474459

/-! ## A031160.P17629532352844815701

`∩[A007310(n+1), A057701(n+1)]+1`
-/

namespace A031160.P17629532352844815701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A031160.P17629532352844815701

/-!
# A031161: Palindromic lucky numbers.

The programs for A031161, there is no canonical definition to state claims against.
-/

/-! ## A031161.P12848576511346439027

`∪[A031880(n+1), A031881(n+1)]`
-/

namespace A031161.P12848576511346439027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031161.P12848576511346439027

/-! ## A031161.P417596817164899598

`∩[A002113(n+1), A118561(n+1)]`
-/

namespace A031161.P417596817164899598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031161.P417596817164899598

/-! ## A031161.P13076727399800224110

`∩[A029950(n+1), A118561(n+1)]`
-/

namespace A031161.P13076727399800224110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031161.P13076727399800224110

/-! ## A031161.P857544502379815790

`∩[A061917(n+1), A118561(n+1)]`
-/

namespace A031161.P857544502379815790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031161.P857544502379815790

/-! ## A031161.P5057458770932630143

`∩[A118561(n+1), A169824(n+1)]`
-/

namespace A031161.P5057458770932630143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031161.P5057458770932630143

/-! ## A031161.P3555154663092686784

`∩[A000959(n+1), A002113(n+1)]`
-/

namespace A031161.P3555154663092686784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031161.P3555154663092686784

/-! ## A031161.P3021319385185449830

`∩[A000959(n+1), A029950(n+1)]`
-/

namespace A031161.P3021319385185449830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031161.P3021319385185449830

/-! ## A031161.P14724956148925725885

`∩[A000959(n+1), A061917(n+1)]`
-/

namespace A031161.P14724956148925725885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031161.P14724956148925725885

/-! ## A031161.P7158094087479302202

`∩[A118561(n+1), A131207(n+1)]`
-/

namespace A031161.P7158094087479302202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031161.P7158094087479302202

/-! ## A031161.P15063782869874003721

`∩[A000959(n+1), A092361(n+1)]`
-/

namespace A031161.P15063782869874003721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031161.P15063782869874003721

/-! ## A031161.P11499461973685125165

`∩[A092361(n+1), A118561(n+1)]`
-/

namespace A031161.P11499461973685125165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031161.P11499461973685125165

/-! ## A031161.P14087847735869064212

`filter[A029950(n+1), A145649(#)]`
-/

namespace A031161.P14087847735869064212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A031161.P14087847735869064212

/-! ## A031161.P14070254571393779028

`filter[A092361(n+1), A145649(#)]`
-/

namespace A031161.P14070254571393779028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A031161.P14070254571393779028

/-! ## A031161.P14768222705528567507

`filter[A002113(n+2), A145649(#)]`
-/

namespace A031161.P14768222705528567507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A031161.P14768222705528567507

/-! ## A031161.P1452784502301565915

`filter[A061917(n+2), A145649(#)]`
-/

namespace A031161.P1452784502301565915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A031161.P1452784502301565915

/-!
# A031162: Numbers that are both lucky and square.

The programs for A031162, there is no canonical definition to state claims against.
-/

/-! ## A031162.P6951170571711104309

`A031163(n+1)²`
-/

namespace A031162.P6951170571711104309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031163 (n + 1) ^ 2

end

end A031162.P6951170571711104309

/-! ## A031162.P15351829389924881374

`A031163(A000027(n+1))*A031163(n+1)`
-/

namespace A031162.P15351829389924881374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031163 (A000027 (n + 1)).toNat * A031163 (n + 1)

end

end A031162.P15351829389924881374

/-! ## A031162.P5278270751225653314

`A031163(n+1)^A000005(A045402(n+1))`
-/

namespace A031162.P5278270751225653314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031163 (n + 1) : ℚ) ^ (A000005 (A045402 (n + 1)).toNat : ℤ)

end

end A031162.P5278270751225653314

/-! ## A031162.P183505511178381660

`A031163(n+1)^A020639(A031883(n+1))`
-/

namespace A031162.P183505511178381660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031163 (n + 1) : ℚ) ^ (A020639 (A031883 (n + 1)).toNat : ℤ)

end

end A031162.P183505511178381660

/-! ## A031162.P4637606539234140853

`A031163(n+1)^A000005(A065091(n+1))`
-/

namespace A031162.P4637606539234140853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031163 (n + 1) : ℚ) ^ (A000005 (A065091 (n + 1)).toNat : ℤ)

end

end A031162.P4637606539234140853

/-! ## A031162.P14452179503398534597

`A031163(n+1)^A020639(A045954(n+1))`
-/

namespace A031162.P14452179503398534597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031163 (n + 1) : ℚ) ^ (A020639 (A045954 (n + 1)).toNat : ℤ)

end

end A031162.P14452179503398534597

/-! ## A031162.P5319990916612698093

`A031163(n+1)%A201182(n+1)*A031163(n+1)`
-/

namespace A031162.P5319990916612698093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031163 (n + 1)) (A201182 (n + 1)) * A031163 (n + 1)

end

end A031162.P5319990916612698093

/-! ## A031162.P12772795185659316973

`∩[A000959(n+1), n²]`
-/

namespace A031162.P12772795185659316973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A031162.P12772795185659316973

/-! ## A031162.P8426603931930900602

`∩[A000290(n), A000959(n+1)]`
-/

namespace A031162.P8426603931930900602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031162.P8426603931930900602

/-! ## A031162.P4978245053452221681

`∩[A137190(n+1), n²]`
-/

namespace A031162.P4978245053452221681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137190 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A031162.P4978245053452221681

/-!
# A031163: Square roots of numbers that are both lucky and square.

The programs for A031163, there is no canonical definition to state claims against.
-/

/-! ## A031163.P2726266454359091705

`sqrt(A031162(n+1))`
-/

namespace A031163.P2726266454359091705
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A031162 (n + 1) : ℝ)

end

end A031163.P2726266454359091705

/-! ## A031163.P4619749815488954054

`root(A031162(n+1), 2)%A002313(n+2)`
-/

namespace A031163.P4619749815488954054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A031162 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A002313 (n + 2))

end

end A031163.P4619749815488954054

/-! ## A031163.P13799889449890526521

`or(root(A031162(n+1), 2), A285345(n+1))`
-/

namespace A031163.P13799889449890526521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A031162 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A285345 (n + 1))

end

end A031163.P13799889449890526521

/-! ## A031163.P14308651633487227993

`A026741(root(A031162(n+1), 2))`
-/

namespace A031163.P14308651633487227993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A031162 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A031163.P14308651633487227993

/-!
# A031164: Irreducible Euler sums of weight 8 and depth 10+2n.

The programs for A031164, the canonical program `A031164.P14530744105720124966` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031164 has offset 0).

The definition of A031164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031164.P10232890548555769403

`A032094(n+9)/4`
-/

namespace A031164.P10232890548555769403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032094 (n + 9) : ℚ) / 4

end

end A031164.P10232890548555769403

namespace A031164

/-- `A032094(n+9)/4` -/
def P10232890548555769403.Spec : Prop :=
  ∀ n, P10232890548555769403.a n = (A031164 n : ℚ)

theorem P10232890548555769403.correct : P10232890548555769403.Spec := by
  intro n
  simp only [A031164, Nat.add_sub_cancel, A031164.P10232890548555769403.a, A031164.P14530744105720124966.a, A032094, A032094.P1520495427252306651.a, A038164, A038164.P1586895725578601011.a, A060099, A060099.P8454151791043827126.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031164

/-! ## A031164.P14530744105720124966

`2*A038164(n)-A060099(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031164

/-- `2*A038164(n)-A060099(n)` -/
def P14530744105720124966.Spec : Prop :=
  ∀ n, P14530744105720124966.a n = A031164 n

theorem P14530744105720124966.correct : P14530744105720124966.Spec := by
  intro n
  simp only [A031164]

end A031164

/-! ## A031164.P13937921640476420934

`(A032093(n+8)+A018211(n))/4`
-/

namespace A031164.P13937921640476420934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032093 (n + 8) + A018211 n : ℚ) / 4

end

end A031164.P13937921640476420934

namespace A031164

/-- `(A032093(n+8)+A018211(n))/4` -/
def P13937921640476420934.Spec : Prop :=
  ∀ n, P13937921640476420934.a n = (A031164 n : ℚ)

theorem P13937921640476420934.correct : P13937921640476420934.Spec := by
  intro n
  simp only [A031164, Nat.add_sub_cancel, A031164.P13937921640476420934.a, A031164.P14530744105720124966.a, A018211, A018211.P8561171215378061643.a, A032093, A032093.P4455377691887345898.a, A038164, A038164.P1586895725578601011.a, A060099, A060099.P8454151791043827126.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A031164

/-! ## A031164.P7942404687550278061

`Δ[(A052267(n)-A177747(n))/4]`
-/

namespace A031164.P7942404687550278061
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052267 n - A177747 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031164.P7942404687550278061

namespace A031164

/-- `Δ[(A052267(n)-A177747(n))/4]` -/
def P7942404687550278061.Spec : Prop :=
  ∀ n, P7942404687550278061.a n = (A031164 n : ℚ)

end A031164

/-! ## A031164.P3238692388663665898

`(A000580(n+8)-A018211(n+1))/4`
-/

namespace A031164.P3238692388663665898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 8) - A018211 (n + 1) : ℚ) / 4

end

end A031164.P3238692388663665898

namespace A031164

/-- `(A000580(n+8)-A018211(n+1))/4` -/
def P3238692388663665898.Spec : Prop :=
  ∀ n, P3238692388663665898.a n = (A031164 n : ℚ)

end A031164

/-! ## A031164.P13748699474227715251

`(A001779(n+1)+A001779(n)-A018211(n+1))/4`
-/

namespace A031164.P13748699474227715251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001779 (n + 1) + (A001779 n - A018211 (n + 1)) : ℚ) / 4

end

end A031164.P13748699474227715251

namespace A031164

/-- `(A001779(n+1)+A001779(n)-A018211(n+1))/4` -/
def P13748699474227715251.Spec : Prop :=
  ∀ n, P13748699474227715251.a n = (A031164 n : ℚ)

end A031164

/-! ## A031164.P365074876971387266

`(A000581(n+9)-(A018211(n+1)+A000581(n+8)))/4`
-/

namespace A031164.P365074876971387266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000581 (n + 9) - (A018211 (n + 1) + A000581 (n + 8)) : ℚ) / 4

end

end A031164.P365074876971387266

namespace A031164

/-- `(A000581(n+9)-(A018211(n+1)+A000581(n+8)))/4` -/
def P365074876971387266.Spec : Prop :=
  ∀ n, P365074876971387266.a n = (A031164 n : ℚ)

end A031164

/-! ## A031164.P17262755232778276471

`(A018211(n+2)-A018210(n+2))/4`
-/

namespace A031164.P17262755232778276471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018211 (n + 2) - A018210 (n + 2) : ℚ) / 4

end

end A031164.P17262755232778276471

namespace A031164

/-- `(A018211(n+2)-A018210(n+2))/4` -/
def P17262755232778276471.Spec : Prop :=
  ∀ n, P17262755232778276471.a n = (A031164 n : ℚ)

end A031164

/-! ## A031164.P10868404534181243361

`A051168(A051936(n+10))`
-/

namespace A031164.P10868404534181243361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A051936 (n + 10)).toNat

end

end A031164.P10868404534181243361

namespace A031164

/-- `A051168(A051936(n+10))` -/
def P10868404534181243361.Spec : Prop :=
  ∀ n, P10868404534181243361.a n = A031164 n

end A031164

/-! ## A031164.P14538902413087593676

`record[A051168(A155212(n)-1)]`
-/

namespace A031164.P14538902413087593676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A155212 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031164.P14538902413087593676

namespace A031164

/-- `record[A051168(A155212(n)-1)]` -/
def P14538902413087593676.Spec : Prop :=
  ∀ n, P14538902413087593676.a n = A031164 n

end A031164

/-! ## A031164.P18003043691005820646

`record[A051168(A052905(n)+n)]`
-/

namespace A031164.P18003043691005820646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A052905 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031164.P18003043691005820646

namespace A031164

/-- `record[A051168(A052905(n)+n)]` -/
def P18003043691005820646.Spec : Prop :=
  ∀ n, P18003043691005820646.a n = A031164 n

end A031164

/-! ## A031164.P17448358659848156514

`A051168(A000217(n+9)+n+1)`
-/

namespace A031164.P17448358659848156514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A000217 (n + 9) + (n + 1 : ℤ)).toNat

end

end A031164.P17448358659848156514

namespace A031164

/-- `A051168(A000217(n+9)+n+1)` -/
def P17448358659848156514.Spec : Prop :=
  ∀ n, P17448358659848156514.a n = A031164 n

end A031164

/-! ## A031164.P2804845424709239839

`A051168(2*(n+1)+A000096(n+7)+9)`
-/

namespace A031164.P2804845424709239839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 ((2 * (n + 1) : ℤ) + (A000096 (n + 7) + 9)).toNat

end

end A031164.P2804845424709239839

namespace A031164

/-- `A051168(2*(n+1)+A000096(n+7)+9)` -/
def P2804845424709239839.Spec : Prop :=
  ∀ n, P2804845424709239839.a n = A031164 n

end A031164

/-!
# A031165: a(n) = prime(n+3) - prime(n).

The programs for A031165, the canonical program `A031165.P11271458498397254626` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031165 has offset 1).

The definition of A031165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+4)-A000040(n+1)` (program `A031165.P11271458498397254626`, by `A031165.P11271458498397254626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031165.P1551214756236334028

`A034961(n+2)-A034961(n+1)`
-/

namespace A031165.P1551214756236334028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 2) - A034961 (n + 1)

end

end A031165.P1551214756236334028

namespace A031165

/-- `A034961(n+2)-A034961(n+1)` -/
def P1551214756236334028.Spec : Prop :=
  ∀ n, P1551214756236334028.a n = A031165 (n + 1)

theorem P1551214756236334028.correct : P1551214756236334028.Spec := by
  intro n
  simp only [A031165, Nat.add_sub_cancel, A031165.P1551214756236334028.a, A031165.P11271458498397254626.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031165

/-! ## A031165.P11271458498397254626

`A000040(n+4)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031165

/-- `A000040(n+4)-A000040(n+1)` -/
def P11271458498397254626.Spec : Prop :=
  ∀ n, P11271458498397254626.a n = A031165 (n + 1)

theorem P11271458498397254626.correct : P11271458498397254626.Spec := by
  intro n
  simp only [A031165, Nat.add_sub_cancel]

end A031165

/-! ## A031165.P15567911834320120067

`Δ[A007504(n+3)-A007504(n)]`
-/

namespace A031165.P15567911834320120067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 3) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031165.P15567911834320120067

namespace A031165

/-- `Δ[A007504(n+3)-A007504(n)]` -/
def P15567911834320120067.Spec : Prop :=
  ∀ n, P15567911834320120067.a n = A031165 (n + 1)

end A031165

/-! ## A031165.P8926303787534562473

`A136612(n+1)+A001223(n+2)`
-/

namespace A031165.P8926303787534562473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136612 (n + 1) + A001223 (n + 2)

end

end A031165.P8926303787534562473

namespace A031165

/-- `A136612(n+1)+A001223(n+2)` -/
def P8926303787534562473.Spec : Prop :=
  ∀ n, P8926303787534562473.a n = A031165 (n + 1)

theorem P8926303787534562473.correct : P8926303787534562473.Spec := by
  intro n
  simp only [A031165, Nat.add_sub_cancel, A031165.P8926303787534562473.a, A031165.P11271458498397254626.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A136612, A136612.P12132055378552461140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031165

/-! ## A031165.P9089179128509672873

`A375097(n+2)+A305748(n+1)`
-/

namespace A031165.P9089179128509672873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375097 (n + 2) + A305748 (n + 1)

end

end A031165.P9089179128509672873

namespace A031165

/-- `A375097(n+2)+A305748(n+1)` -/
def P9089179128509672873.Spec : Prop :=
  ∀ n, P9089179128509672873.a n = A031165 (n + 1)

end A031165

/-! ## A031165.P13103070363537326750

`A031131(n+1)+A001223(n+3)`
-/

namespace A031165.P13103070363537326750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1) + A001223 (n + 3)

end

end A031165.P13103070363537326750

namespace A031165

/-- `A031131(n+1)+A001223(n+3)` -/
def P13103070363537326750.Spec : Prop :=
  ∀ n, P13103070363537326750.a n = A031165 (n + 1)

theorem P13103070363537326750.correct : P13103070363537326750.Spec := by
  intro n
  simp only [A031165, Nat.add_sub_cancel, A031165.P13103070363537326750.a, A031165.P11271458498397254626.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A031131, A031131.P2453725465626413076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031165

/-! ## A031165.P5206048680659486341

`A261470(n+1)+2*A305748(n+1)`
-/

namespace A031165.P5206048680659486341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (n + 1) + 2 * A305748 (n + 1)

end

end A031165.P5206048680659486341

namespace A031165

/-- `A261470(n+1)+2*A305748(n+1)` -/
def P5206048680659486341.Spec : Prop :=
  ∀ n, P5206048680659486341.a n = A031165 (n + 1)

end A031165

/-! ## A031165.P14643357478724995527

`2*A375097(n+2)-A261470(n+1)`
-/

namespace A031165.P14643357478724995527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A375097 (n + 2) - A261470 (n + 1)

end

end A031165.P14643357478724995527

namespace A031165

/-- `2*A375097(n+2)-A261470(n+1)` -/
def P14643357478724995527.Spec : Prop :=
  ∀ n, P14643357478724995527.a n = A031165 (n + 1)

end A031165

/-! ## A031165.P5174754416739560624

`Δ[A001223(n+2)+A001748(n+2)-A001223(n+1)]`
-/

namespace A031165.P5174754416739560624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) + (A001748 (n + 2) - A001223 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031165.P5174754416739560624

namespace A031165

/-- `Δ[A001223(n+2)+A001748(n+2)-A001223(n+1)]` -/
def P5174754416739560624.Spec : Prop :=
  ∀ n, P5174754416739560624.a n = A031165 (n + 1)

theorem P5174754416739560624.correct : P5174754416739560624.Spec := by
  intro n
  simp only [A031165, Nat.add_sub_cancel, A031165.P5174754416739560624.f1, A031165.P5174754416739560624.a, A031165.P11271458498397254626.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031165

/-! ## A031165.P17926776417555236804

`Δ[A034961(n+1)]`
-/

namespace A031165.P17926776417555236804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031165.P17926776417555236804

namespace A031165

/-- `Δ[A034961(n+1)]` -/
def P17926776417555236804.Spec : Prop :=
  ∀ n, P17926776417555236804.a n = A031165 (n + 1)

theorem P17926776417555236804.correct : P17926776417555236804.Spec := by
  intro n
  simp only [A031165, Nat.add_sub_cancel, A031165.P17926776417555236804.f1, A031165.P17926776417555236804.a, A031165.P11271458498397254626.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031165

/-! ## A031165.P336196205516569285

`A004139(n+2)-p?[A259153(n)]`
-/

namespace A031165.P336196205516569285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031165.P336196205516569285

namespace A031165

/-- `A004139(n+2)-p?[A259153(n)]` -/
def P336196205516569285.Spec : Prop :=
  ∀ n, P336196205516569285.a n = A031165 (n + 1)

end A031165

/-! ## A031165.P7336629895633270780

`A075526(n+1)+A031131(n+2)`
-/

namespace A031165.P7336629895633270780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1) + A031131 (n + 2)

end

end A031165.P7336629895633270780

namespace A031165

/-- `A075526(n+1)+A031131(n+2)` -/
def P7336629895633270780.Spec : Prop :=
  ∀ n, P7336629895633270780.a n = A031165 (n + 1)

end A031165

/-! ## A031165.P122721798824962167

`A054541(n+2)+A031131(n+2)`
-/

namespace A031165.P122721798824962167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2) + A031131 (n + 2)

end

end A031165.P122721798824962167

namespace A031165

/-- `A054541(n+2)+A031131(n+2)` -/
def P122721798824962167.Spec : Prop :=
  ∀ n, P122721798824962167.a n = A031165 (n + 1)

end A031165

/-! ## A031165.P8180119329593402362

`A181428(n+2)-A093667(n+1)`
-/

namespace A031165.P8180119329593402362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (n + 2) - A093667 (n + 1)

end

end A031165.P8180119329593402362

namespace A031165

/-- `A181428(n+2)-A093667(n+1)` -/
def P8180119329593402362.Spec : Prop :=
  ∀ n, P8180119329593402362.a n = A031165 (n + 1)

theorem P8180119329593402362.correct : P8180119329593402362.Spec := by
  intro n
  simp only [A031165, Nat.add_sub_cancel, A031165.P8180119329593402362.a, A031165.P11271458498397254626.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A093667, A093667.P4637239888588385054.a, A181428, A181428.P14403328019642653517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031165

/-! ## A031165.P12339072833064048380

`A181428(n+1)-A096379(n+2)`
-/

namespace A031165.P12339072833064048380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (n + 1) - A096379 (n + 2)

end

end A031165.P12339072833064048380

namespace A031165

/-- `A181428(n+1)-A096379(n+2)` -/
def P12339072833064048380.Spec : Prop :=
  ∀ n, P12339072833064048380.a n = A031165 (n + 1)

theorem P12339072833064048380.correct : P12339072833064048380.Spec := by
  intro n
  simp only [A031165, Nat.add_sub_cancel, A031165.P12339072833064048380.a, A031165.P11271458498397254626.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A096379, A096379.P509834506880397996.a, A181428, A181428.P14403328019642653517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031165

/-! ## A031165.P17748291985157352952

`A292926(n+2)-A293206(n+1)`
-/

namespace A031165.P17748291985157352952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292926 (n + 2) - A293206 (n + 1)

end

end A031165.P17748291985157352952

namespace A031165

/-- `A292926(n+2)-A293206(n+1)` -/
def P17748291985157352952.Spec : Prop :=
  ∀ n, P17748291985157352952.a n = A031165 (n + 1)

theorem P17748291985157352952.correct : P17748291985157352952.Spec := by
  intro n
  simp only [A031165, Nat.add_sub_cancel, A031165.P17748291985157352952.a, A031165.P11271458498397254626.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A292926, A292926.P2687136301656224397.a, A293206, A293206.P17581408903572913072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031165

/-! ## A031165.P697400065055378487

`A004139(n+2)-A008578(n+2)`
-/

namespace A031165.P697400065055378487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2) - A008578 (n + 2)

end

end A031165.P697400065055378487

namespace A031165

/-- `A004139(n+2)-A008578(n+2)` -/
def P697400065055378487.Spec : Prop :=
  ∀ n, P697400065055378487.a n = A031165 (n + 1)

end A031165

/-! ## A031165.P4862840216074697788

`A215848(n+2)-A008578(n+2)`
-/

namespace A031165.P4862840216074697788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 2) - A008578 (n + 2)

end

end A031165.P4862840216074697788

namespace A031165

/-- `A215848(n+2)-A008578(n+2)` -/
def P4862840216074697788.Spec : Prop :=
  ∀ n, P4862840216074697788.a n = A031165 (n + 1)

end A031165

/-! ## A031165.P7378779160613377607

`Δ[A215848(n+1)+Δ[A061802(n)]]`
-/

namespace A031165.P7378779160613377607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031165.P7378779160613377607

namespace A031165

/-- `Δ[A215848(n+1)+Δ[A061802(n)]]` -/
def P7378779160613377607.Spec : Prop :=
  ∀ n, P7378779160613377607.a n = A031165 (n + 1)

end A031165

/-! ## A031165.P8578874022454676521

`A075527(n+2)+A001223(n+1)`
-/

namespace A031165.P8578874022454676521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (n + 2) + A001223 (n + 1)

end

end A031165.P8578874022454676521

namespace A031165

/-- `A075527(n+2)+A001223(n+1)` -/
def P8578874022454676521.Spec : Prop :=
  ∀ n, P8578874022454676521.a n = A031165 (n + 1)

end A031165

/-!
# A031166: a(n) = prime(n+4) - prime(n).

The programs for A031166, the canonical program `A031166.P17500312358421671513` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031166 has offset 1).

The definition of A031166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+5)-A000040(n+1)` (program `A031166.P17500312358421671513`, by `A031166.P17500312358421671513.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031166.P4405905138271003674

`A001223(n+1)+A031165(n+2)`
-/

namespace A031166.P4405905138271003674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + A031165 (n + 2)

end

end A031166.P4405905138271003674

namespace A031166

/-- `A001223(n+1)+A031165(n+2)` -/
def P4405905138271003674.Spec : Prop :=
  ∀ n, P4405905138271003674.a n = A031166 (n + 1)

theorem P4405905138271003674.correct : P4405905138271003674.Spec := by
  intro n
  simp only [A031166, Nat.add_sub_cancel, A031166.P4405905138271003674.a, A031166.P17500312358421671513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A031165, A031165.P11271458498397254626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031166

/-! ## A031166.P2833534787462873208

`A031131(n+1)+A031131(n+3)`
-/

namespace A031166.P2833534787462873208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1) + A031131 (n + 3)

end

end A031166.P2833534787462873208

namespace A031166

/-- `A031131(n+1)+A031131(n+3)` -/
def P2833534787462873208.Spec : Prop :=
  ∀ n, P2833534787462873208.a n = A031166 (n + 1)

theorem P2833534787462873208.correct : P2833534787462873208.Spec := by
  intro n
  simp only [A031166, Nat.add_sub_cancel, A031166.P2833534787462873208.a, A031166.P17500312358421671513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031166

/-! ## A031166.P17500312358421671513

`A000040(n+5)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031166

/-- `A000040(n+5)-A000040(n+1)` -/
def P17500312358421671513.Spec : Prop :=
  ∀ n, P17500312358421671513.a n = A031166 (n + 1)

theorem P17500312358421671513.correct : P17500312358421671513.Spec := by
  intro n
  simp only [A031166, Nat.add_sub_cancel]

end A031166

/-! ## A031166.P15388230095493477115

`Δ[A007504(n+4)-A007504(n)]`
-/

namespace A031166.P15388230095493477115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 4) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031166.P15388230095493477115

namespace A031166

/-- `Δ[A007504(n+4)-A007504(n)]` -/
def P15388230095493477115.Spec : Prop :=
  ∀ n, P15388230095493477115.a n = A031166 (n + 1)

end A031166

/-! ## A031166.P12572678356616167928

`A031167(n+1)-A001223(n+5)`
-/

namespace A031166.P12572678356616167928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031167 (n + 1) - A001223 (n + 5)

end

end A031166.P12572678356616167928

namespace A031166

/-- `A031167(n+1)-A001223(n+5)` -/
def P12572678356616167928.Spec : Prop :=
  ∀ n, P12572678356616167928.a n = A031166 (n + 1)

theorem P12572678356616167928.correct : P12572678356616167928.Spec := by
  intro n
  simp only [A031166, Nat.add_sub_cancel, A031166.P12572678356616167928.a, A031166.P17500312358421671513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A031167, A031167.P2441032652030270759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031166

/-! ## A031166.P9280795466031448823

`A289438(A001748(n+5)-A001748(n+1))`
-/

namespace A031166.P9280795466031448823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (A001748 (n + 5) - A001748 (n + 1)).toNat

end

end A031166.P9280795466031448823

namespace A031166

/-- `A289438(A001748(n+5)-A001748(n+1))` -/
def P9280795466031448823.Spec : Prop :=
  ∀ n, P9280795466031448823.a n = A031166 (n + 1)

end A031166

/-! ## A031166.P14122534811079407503

`Δ[A034963(n+1)]`
-/

namespace A031166.P14122534811079407503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031166.P14122534811079407503

namespace A031166

/-- `Δ[A034963(n+1)]` -/
def P14122534811079407503.Spec : Prop :=
  ∀ n, P14122534811079407503.a n = A031166 (n + 1)

theorem P14122534811079407503.correct : P14122534811079407503.Spec := by
  intro n
  simp only [A031166, Nat.add_sub_cancel, A031166.P14122534811079407503.f1, A031166.P14122534811079407503.a, A031166.P17500312358421671513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034963, A034963.P11708242366348853171.a, A034961, A034961.P9480249767911558173.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031166

/-! ## A031166.P13305869868914522244

`A136612(n+1)+A136612(n+2)`
-/

namespace A031166.P13305869868914522244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136612 (n + 1) + A136612 (n + 2)

end

end A031166.P13305869868914522244

namespace A031166

/-- `A136612(n+1)+A136612(n+2)` -/
def P13305869868914522244.Spec : Prop :=
  ∀ n, P13305869868914522244.a n = A031166 (n + 1)

theorem P13305869868914522244.correct : P13305869868914522244.Spec := by
  intro n
  simp only [A031166, Nat.add_sub_cancel, A031166.P13305869868914522244.a, A031166.P17500312358421671513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A136612, A136612.P12132055378552461140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031166

/-! ## A031166.P7842131123095086880

`A034963(n+2)-A034963(n+1)`
-/

namespace A031166.P7842131123095086880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 2) - A034963 (n + 1)

end

end A031166.P7842131123095086880

namespace A031166

/-- `A034963(n+2)-A034963(n+1)` -/
def P7842131123095086880.Spec : Prop :=
  ∀ n, P7842131123095086880.a n = A031166 (n + 1)

theorem P7842131123095086880.correct : P7842131123095086880.Spec := by
  intro n
  simp only [A031166, Nat.add_sub_cancel, A031166.P7842131123095086880.a, A031166.P17500312358421671513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034963, A034963.P11708242366348853171.a, A034961, A034961.P9480249767911558173.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031166

/-! ## A031166.P791647383800985480

`A031168(n+1)+A031165(n+2)-A031167(n+2)`
-/

namespace A031166.P791647383800985480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031168 (n + 1) + (A031165 (n + 2) - A031167 (n + 2))

end

end A031166.P791647383800985480

namespace A031166

/-- `A031168(n+1)+A031165(n+2)-A031167(n+2)` -/
def P791647383800985480.Spec : Prop :=
  ∀ n, P791647383800985480.a n = A031166 (n + 1)

theorem P791647383800985480.correct : P791647383800985480.Spec := by
  intro n
  simp only [A031166, Nat.add_sub_cancel, A031166.P791647383800985480.a, A031166.P17500312358421671513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031165, A031165.P11271458498397254626.a, A031167, A031167.P2441032652030270759.a, A031168, A031168.P10733070865571447030.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031166

/-! ## A031166.P15683902825895082336

`A031169(n+1)+A031165(n+2)-A031168(n+2)`
-/

namespace A031166.P15683902825895082336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031169 (n + 1) + (A031165 (n + 2) - A031168 (n + 2))

end

end A031166.P15683902825895082336

namespace A031166

/-- `A031169(n+1)+A031165(n+2)-A031168(n+2)` -/
def P15683902825895082336.Spec : Prop :=
  ∀ n, P15683902825895082336.a n = A031166 (n + 1)

theorem P15683902825895082336.correct : P15683902825895082336.Spec := by
  intro n
  simp only [A031166, Nat.add_sub_cancel, A031166.P15683902825895082336.a, A031166.P17500312358421671513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031165, A031165.P11271458498397254626.a, A031168, A031168.P10733070865571447030.a, A031169, A031169.P3035430483682365411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031166

/-! ## A031166.P3059733145274879071

`A031170(n+1)+A031165(n+2)-A031169(n+2)`
-/

namespace A031166.P3059733145274879071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031170 (n + 1) + (A031165 (n + 2) - A031169 (n + 2))

end

end A031166.P3059733145274879071

namespace A031166

/-- `A031170(n+1)+A031165(n+2)-A031169(n+2)` -/
def P3059733145274879071.Spec : Prop :=
  ∀ n, P3059733145274879071.a n = A031166 (n + 1)

theorem P3059733145274879071.correct : P3059733145274879071.Spec := by
  intro n
  simp only [A031166, Nat.add_sub_cancel, A031166.P3059733145274879071.a, A031166.P17500312358421671513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031165, A031165.P11271458498397254626.a, A031169, A031169.P3035430483682365411.a, A031170, A031170.P7637823447145167778.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031166

/-! ## A031166.P13507095959582138877

`A031171(n+1)+A031165(n+2)-A031170(n+2)`
-/

namespace A031166.P13507095959582138877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031171 (n + 1) + (A031165 (n + 2) - A031170 (n + 2))

end

end A031166.P13507095959582138877

namespace A031166

/-- `A031171(n+1)+A031165(n+2)-A031170(n+2)` -/
def P13507095959582138877.Spec : Prop :=
  ∀ n, P13507095959582138877.a n = A031166 (n + 1)

theorem P13507095959582138877.correct : P13507095959582138877.Spec := by
  intro n
  simp only [A031166, Nat.add_sub_cancel, A031166.P13507095959582138877.a, A031166.P17500312358421671513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031165, A031165.P11271458498397254626.a, A031170, A031170.P7637823447145167778.a, A031171, A031171.P249549039556152147.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031166

/-! ## A031166.P16896536406523719921

`(A046302(n+2)-A046302(n+1))/A046301(n+2)`
-/

namespace A031166.P16896536406523719921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046302 (n + 2) - A046302 (n + 1) : ℚ) / (A046301 (n + 2) : ℚ)

end

end A031166.P16896536406523719921

namespace A031166

/-- `(A046302(n+2)-A046302(n+1))/A046301(n+2)` -/
def P16896536406523719921.Spec : Prop :=
  ∀ n, P16896536406523719921.a n = (A031166 (n + 1) : ℚ)

end A031166

/-! ## A031166.P5394489080759369268

`(A127349(n+2)-A127349(n+1))/A127345(n+2)`
-/

namespace A031166.P5394489080759369268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127349 (n + 2) - A127349 (n + 1) : ℚ) / (A127345 (n + 2) : ℚ)

end

end A031166.P5394489080759369268

namespace A031166

/-- `(A127349(n+2)-A127349(n+1))/A127345(n+2)` -/
def P5394489080759369268.Spec : Prop :=
  ∀ n, P5394489080759369268.a n = (A031166 (n + 1) : ℚ)

end A031166

/-! ## A031166.P15318292110858428955

`A048974(n+4)-A052147(n+1)`
-/

namespace A031166.P15318292110858428955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 4) - A052147 (n + 1)

end

end A031166.P15318292110858428955

namespace A031166

/-- `A048974(n+4)-A052147(n+1)` -/
def P15318292110858428955.Spec : Prop :=
  ∀ n, P15318292110858428955.a n = A031166 (n + 1)

theorem P15318292110858428955.correct : P15318292110858428955.Spec := by
  intro n
  simp only [A031166, Nat.add_sub_cancel, A031166.P15318292110858428955.a, A031166.P17500312358421671513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A048974, A048974.P12620924037349992420.a, A052147, A052147.P15217781913070555828.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031166

/-! ## A031166.P11690774995659216778

`A135731(n+4)-A008864(n+1)`
-/

namespace A031166.P11690774995659216778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 4) - A008864 (n + 1)

end

end A031166.P11690774995659216778

namespace A031166

/-- `A135731(n+4)-A008864(n+1)` -/
def P11690774995659216778.Spec : Prop :=
  ∀ n, P11690774995659216778.a n = A031166 (n + 1)

end A031166

/-! ## A031166.P2028121764777385739

`A135731(n+4)-A028815(n+1)`
-/

namespace A031166.P2028121764777385739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 4) - A028815 (n + 1)

end

end A031166.P2028121764777385739

namespace A031166

/-- `A135731(n+4)-A028815(n+1)` -/
def P2028121764777385739.Spec : Prop :=
  ∀ n, P2028121764777385739.a n = A031166 (n + 1)

end A031166

/-!
# A031167: a(n) = prime(n+5) - prime(n).

The programs for A031167, the canonical program `A031167.P2441032652030270759` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031167 has offset 1).

The definition of A031167 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+6)-A000040(n+1)` (program `A031167.P2441032652030270759`, by `A031167.P2441032652030270759.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031167.P2441032652030270759

`A000040(n+6)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031167

/-- `A000040(n+6)-A000040(n+1)` -/
def P2441032652030270759.Spec : Prop :=
  ∀ n, P2441032652030270759.a n = A031167 (n + 1)

theorem P2441032652030270759.correct : P2441032652030270759.Spec := by
  intro n
  simp only [A031167, Nat.add_sub_cancel]

end A031167

/-! ## A031167.P2696542474665688025

`Δ[A007504(n+5)-A007504(n)]`
-/

namespace A031167.P2696542474665688025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 5) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031167.P2696542474665688025

namespace A031167

/-- `Δ[A007504(n+5)-A007504(n)]` -/
def P2696542474665688025.Spec : Prop :=
  ∀ n, P2696542474665688025.a n = A031167 (n + 1)

end A031167

/-! ## A031167.P10444615864616743603

`A031166(n+1)+A001223(n+5)`
-/

namespace A031167.P10444615864616743603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1) + A001223 (n + 5)

end

end A031167.P10444615864616743603

namespace A031167

/-- `A031166(n+1)+A001223(n+5)` -/
def P10444615864616743603.Spec : Prop :=
  ∀ n, P10444615864616743603.a n = A031167 (n + 1)

theorem P10444615864616743603.correct : P10444615864616743603.Spec := by
  intro n
  simp only [A031167, Nat.add_sub_cancel, A031167.P10444615864616743603.a, A031167.P2441032652030270759.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A031166, A031166.P17500312358421671513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031167

/-! ## A031167.P15196777293072042871

`Δ[A034964(n+1)]`
-/

namespace A031167.P15196777293072042871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031167.P15196777293072042871

namespace A031167

/-- `Δ[A034964(n+1)]` -/
def P15196777293072042871.Spec : Prop :=
  ∀ n, P15196777293072042871.a n = A031167 (n + 1)

end A031167

/-! ## A031167.P2610504435762386970

`A034964(n+2)-A034964(n+1)`
-/

namespace A031167.P2610504435762386970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 2) - A034964 (n + 1)

end

end A031167.P2610504435762386970

namespace A031167

/-- `A034964(n+2)-A034964(n+1)` -/
def P2610504435762386970.Spec : Prop :=
  ∀ n, P2610504435762386970.a n = A031167 (n + 1)

end A031167

/-! ## A031167.P11508402900740192175

`A034964(n+2)%A034964(A000027(n+1))`
-/

namespace A031167.P11508402900740192175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034964 (n + 2)) (A034964 (A000027 (n + 1)).toNat)

end

end A031167.P11508402900740192175

namespace A031167

/-- `A034964(n+2)%A034964(A000027(n+1))` -/
def P11508402900740192175.Spec : Prop :=
  ∀ n, P11508402900740192175.a n = A031167 (n + 1)

end A031167

/-! ## A031167.P3947225984980693929

`A031166(n+1)+A031166(n+2)-A031165(n+2)`
-/

namespace A031167.P3947225984980693929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1) + (A031166 (n + 2) - A031165 (n + 2))

end

end A031167.P3947225984980693929

namespace A031167

/-- `A031166(n+1)+A031166(n+2)-A031165(n+2)` -/
def P3947225984980693929.Spec : Prop :=
  ∀ n, P3947225984980693929.a n = A031167 (n + 1)

theorem P3947225984980693929.correct : P3947225984980693929.Spec := by
  intro n
  simp only [A031167, Nat.add_sub_cancel, A031167.P3947225984980693929.a, A031167.P2441032652030270759.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031165, A031165.P11271458498397254626.a, A031166, A031166.P17500312358421671513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031167

/-! ## A031167.P3990607676319566494

`A031169(n+1)+A031166(n+2)-A031168(n+2)`
-/

namespace A031167.P3990607676319566494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031169 (n + 1) + (A031166 (n + 2) - A031168 (n + 2))

end

end A031167.P3990607676319566494

namespace A031167

/-- `A031169(n+1)+A031166(n+2)-A031168(n+2)` -/
def P3990607676319566494.Spec : Prop :=
  ∀ n, P3990607676319566494.a n = A031167 (n + 1)

theorem P3990607676319566494.correct : P3990607676319566494.Spec := by
  intro n
  simp only [A031167, Nat.add_sub_cancel, A031167.P3990607676319566494.a, A031167.P2441032652030270759.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031166, A031166.P17500312358421671513.a, A031168, A031168.P10733070865571447030.a, A031169, A031169.P3035430483682365411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031167

/-! ## A031167.P8539032858113961488

`A031170(n+1)+A031166(n+2)-A031169(n+2)`
-/

namespace A031167.P8539032858113961488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031170 (n + 1) + (A031166 (n + 2) - A031169 (n + 2))

end

end A031167.P8539032858113961488

namespace A031167

/-- `A031170(n+1)+A031166(n+2)-A031169(n+2)` -/
def P8539032858113961488.Spec : Prop :=
  ∀ n, P8539032858113961488.a n = A031167 (n + 1)

theorem P8539032858113961488.correct : P8539032858113961488.Spec := by
  intro n
  simp only [A031167, Nat.add_sub_cancel, A031167.P8539032858113961488.a, A031167.P2441032652030270759.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031166, A031166.P17500312358421671513.a, A031169, A031169.P3035430483682365411.a, A031170, A031170.P7637823447145167778.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031167

/-! ## A031167.P9692707398661814662

`(A046303(n+2)-A046303(n+1))/A046302(n+2)`
-/

namespace A031167.P9692707398661814662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046303 (n + 2) - A046303 (n + 1) : ℚ) / (A046302 (n + 2) : ℚ)

end

end A031167.P9692707398661814662

namespace A031167

/-- `(A046303(n+2)-A046303(n+1))/A046302(n+2)` -/
def P9692707398661814662.Spec : Prop :=
  ∀ n, P9692707398661814662.a n = (A031167 (n + 1) : ℚ)

end A031167

/-! ## A031167.P16391736801233907475

`A031165(n+3)+A031131(n+1)`
-/

namespace A031167.P16391736801233907475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 3) + A031131 (n + 1)

end

end A031167.P16391736801233907475

namespace A031167

/-- `A031165(n+3)+A031131(n+1)` -/
def P16391736801233907475.Spec : Prop :=
  ∀ n, P16391736801233907475.a n = A031167 (n + 1)

theorem P16391736801233907475.correct : P16391736801233907475.Spec := by
  intro n
  simp only [A031167, Nat.add_sub_cancel, A031167.P16391736801233907475.a, A031167.P2441032652030270759.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, A031165, A031165.P11271458498397254626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031167

/-! ## A031167.P6724413774673779383

`A075527(n+1)+A031165(n+3)`
-/

namespace A031167.P6724413774673779383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (n + 1) + A031165 (n + 3)

end

end A031167.P6724413774673779383

namespace A031167

/-- `A075527(n+1)+A031165(n+3)` -/
def P6724413774673779383.Spec : Prop :=
  ∀ n, P6724413774673779383.a n = A031167 (n + 1)

end A031167

/-! ## A031167.P2512284923692391663

`Δ[A034961(n+3)+A001043(n+1)]`
-/

namespace A031167.P2512284923692391663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 3) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031167.P2512284923692391663

namespace A031167

/-- `Δ[A034961(n+3)+A001043(n+1)]` -/
def P2512284923692391663.Spec : Prop :=
  ∀ n, P2512284923692391663.a n = A031167 (n + 1)

theorem P2512284923692391663.correct : P2512284923692391663.Spec := by
  intro n
  simp only [A031167, Nat.add_sub_cancel, A031167.P2512284923692391663.f1, A031167.P2512284923692391663.a, A031167.P2441032652030270759.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031167

/-! ## A031167.P3373664717811218293

`A065091(n+5)-A008578(n+2)`
-/

namespace A031167.P3373664717811218293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 5) - A008578 (n + 2)

end

end A031167.P3373664717811218293

namespace A031167

/-- `A065091(n+5)-A008578(n+2)` -/
def P3373664717811218293.Spec : Prop :=
  ∀ n, P3373664717811218293.a n = A031167 (n + 1)

end A031167

/-! ## A031167.P17154170093796013428

`A052147(n+6)-A052147(n+1)`
-/

namespace A031167.P17154170093796013428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 6) - A052147 (n + 1)

end

end A031167.P17154170093796013428

namespace A031167

/-- `A052147(n+6)-A052147(n+1)` -/
def P17154170093796013428.Spec : Prop :=
  ∀ n, P17154170093796013428.a n = A031167 (n + 1)

theorem P17154170093796013428.correct : P17154170093796013428.Spec := by
  intro n
  simp only [A031167, Nat.add_sub_cancel, A031167.P17154170093796013428.a, A031167.P2441032652030270759.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031167

/-! ## A031167.P13274164777222945588

`A008578(n+7)-A008578(n+2)`
-/

namespace A031167.P13274164777222945588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 7) - A008578 (n + 2)

end

end A031167.P13274164777222945588

namespace A031167

/-- `A008578(n+7)-A008578(n+2)` -/
def P13274164777222945588.Spec : Prop :=
  ∀ n, P13274164777222945588.a n = A031167 (n + 1)

end A031167

/-! ## A031167.P7639336167633607354

`A000040(n+6)-p?[A352844(n)]`
-/

namespace A031167.P7639336167633607354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 6) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031167.P7639336167633607354

namespace A031167

/-- `A000040(n+6)-p?[A352844(n)]` -/
def P7639336167633607354.Spec : Prop :=
  ∀ n, P7639336167633607354.a n = A031167 (n + 1)

end A031167

/-! ## A031167.P940670599464210532

`A065091(n+5)-record[A093074(n+1)]`
-/

namespace A031167.P940670599464210532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 5) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031167.P940670599464210532

namespace A031167

/-- `A065091(n+5)-record[A093074(n+1)]` -/
def P940670599464210532.Spec : Prop :=
  ∀ n, P940670599464210532.a n = A031167 (n + 1)

end A031167

/-! ## A031167.P5991838903207335808

`A065091(n+5)-A093074(A006093(n+1))`
-/

namespace A031167.P5991838903207335808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 5) - A093074 (A006093 (n + 1)).toNat

end

end A031167.P5991838903207335808

namespace A031167

/-- `A065091(n+5)-A093074(A006093(n+1))` -/
def P5991838903207335808.Spec : Prop :=
  ∀ n, P5991838903207335808.a n = A031167 (n + 1)

end A031167

/-!
# A031168: a(n) = prime(n+6) - prime(n).

The programs for A031168, the canonical program `A031168.P10733070865571447030` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031168 has offset 1).

The definition of A031168 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+7)-A000040(n+1)` (program `A031168.P10733070865571447030`, by `A031168.P10733070865571447030.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031168.P10733070865571447030

`A000040(n+7)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031168

/-- `A000040(n+7)-A000040(n+1)` -/
def P10733070865571447030.Spec : Prop :=
  ∀ n, P10733070865571447030.a n = A031168 (n + 1)

theorem P10733070865571447030.correct : P10733070865571447030.Spec := by
  intro n
  simp only [A031168, Nat.add_sub_cancel]

end A031168

/-! ## A031168.P1416708570750465055

`Δ[A127333(n+1)]`
-/

namespace A031168.P1416708570750465055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031168.P1416708570750465055

namespace A031168

/-- `Δ[A127333(n+1)]` -/
def P1416708570750465055.Spec : Prop :=
  ∀ n, P1416708570750465055.a n = A031168 (n + 1)

end A031168

/-! ## A031168.P15526209776913543128

`A031167(n+2)+A001223(n+1)`
-/

namespace A031168.P15526209776913543128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031167 (n + 2) + A001223 (n + 1)

end

end A031168.P15526209776913543128

namespace A031168

/-- `A031167(n+2)+A001223(n+1)` -/
def P15526209776913543128.Spec : Prop :=
  ∀ n, P15526209776913543128.a n = A031168 (n + 1)

theorem P15526209776913543128.correct : P15526209776913543128.Spec := by
  intro n
  simp only [A031168, Nat.add_sub_cancel, A031168.P15526209776913543128.a, A031168.P10733070865571447030.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A031167, A031167.P2441032652030270759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031168

/-! ## A031168.P16469186608317680271

`A127333(n+2)-A127333(n+1)`
-/

namespace A031168.P16469186608317680271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 2) - A127333 (n + 1)

end

end A031168.P16469186608317680271

namespace A031168

/-- `A127333(n+2)-A127333(n+1)` -/
def P16469186608317680271.Spec : Prop :=
  ∀ n, P16469186608317680271.a n = A031168 (n + 1)

end A031168

/-! ## A031168.P12379751435978809549

`A127333(A020725(n+1))%A127333(n+1)`
-/

namespace A031168.P12379751435978809549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127333 (A020725 (n + 1)).toNat) (A127333 (n + 1))

end

end A031168.P12379751435978809549

namespace A031168

/-- `A127333(A020725(n+1))%A127333(n+1)` -/
def P12379751435978809549.Spec : Prop :=
  ∀ n, P12379751435978809549.a n = A031168 (n + 1)

end A031168

/-! ## A031168.P2390672823337714404

`A031165(n+1)+A031167(n+2)-A031131(n+2)`
-/

namespace A031168.P2390672823337714404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 1) + (A031167 (n + 2) - A031131 (n + 2))

end

end A031168.P2390672823337714404

namespace A031168

/-- `A031165(n+1)+A031167(n+2)-A031131(n+2)` -/
def P2390672823337714404.Spec : Prop :=
  ∀ n, P2390672823337714404.a n = A031168 (n + 1)

theorem P2390672823337714404.correct : P2390672823337714404.Spec := by
  intro n
  simp only [A031168, Nat.add_sub_cancel, A031168.P2390672823337714404.a, A031168.P10733070865571447030.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, A031165, A031165.P11271458498397254626.a, A031167, A031167.P2441032652030270759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031168

/-! ## A031168.P16649258363051762942

`A031166(n+1)+A031167(n+2)-A031165(n+2)`
-/

namespace A031168.P16649258363051762942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1) + (A031167 (n + 2) - A031165 (n + 2))

end

end A031168.P16649258363051762942

namespace A031168

/-- `A031166(n+1)+A031167(n+2)-A031165(n+2)` -/
def P16649258363051762942.Spec : Prop :=
  ∀ n, P16649258363051762942.a n = A031168 (n + 1)

theorem P16649258363051762942.correct : P16649258363051762942.Spec := by
  intro n
  simp only [A031168, Nat.add_sub_cancel, A031168.P16649258363051762942.a, A031168.P10733070865571447030.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031165, A031165.P11271458498397254626.a, A031166, A031166.P17500312358421671513.a, A031167, A031167.P2441032652030270759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031168

/-! ## A031168.P8221677352341444163

`A031167(n+1)+A031167(n+2)-A031166(n+2)`
-/

namespace A031168.P8221677352341444163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031167 (n + 1) + (A031167 (n + 2) - A031166 (n + 2))

end

end A031168.P8221677352341444163

namespace A031168

/-- `A031167(n+1)+A031167(n+2)-A031166(n+2)` -/
def P8221677352341444163.Spec : Prop :=
  ∀ n, P8221677352341444163.a n = A031168 (n + 1)

theorem P8221677352341444163.correct : P8221677352341444163.Spec := by
  intro n
  simp only [A031168, Nat.add_sub_cancel, A031168.P8221677352341444163.a, A031168.P10733070865571447030.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031166, A031166.P17500312358421671513.a, A031167, A031167.P2441032652030270759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031168

/-! ## A031168.P4648601458258922267

`A031170(n+1)+A031167(n+2)-A031169(n+2)`
-/

namespace A031168.P4648601458258922267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031170 (n + 1) + (A031167 (n + 2) - A031169 (n + 2))

end

end A031168.P4648601458258922267

namespace A031168

/-- `A031170(n+1)+A031167(n+2)-A031169(n+2)` -/
def P4648601458258922267.Spec : Prop :=
  ∀ n, P4648601458258922267.a n = A031168 (n + 1)

theorem P4648601458258922267.correct : P4648601458258922267.Spec := by
  intro n
  simp only [A031168, Nat.add_sub_cancel, A031168.P4648601458258922267.a, A031168.P10733070865571447030.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031167, A031167.P2441032652030270759.a, A031169, A031169.P3035430483682365411.a, A031170, A031170.P7637823447145167778.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031168

/-! ## A031168.P16908257824509748151

`(A046324(n+2)-A046324(n+1))/A046303(n+2)`
-/

namespace A031168.P16908257824509748151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046324 (n + 2) - A046324 (n + 1) : ℚ) / (A046303 (n + 2) : ℚ)

end

end A031168.P16908257824509748151

namespace A031168

/-- `(A046324(n+2)-A046324(n+1))/A046303(n+2)` -/
def P16908257824509748151.Spec : Prop :=
  ∀ n, P16908257824509748151.a n = (A031168 (n + 1) : ℚ)

end A031168

/-! ## A031168.P5670438313264865320

`A031166(n+3)+A031131(n+1)`
-/

namespace A031168.P5670438313264865320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 3) + A031131 (n + 1)

end

end A031168.P5670438313264865320

namespace A031168

/-- `A031166(n+3)+A031131(n+1)` -/
def P5670438313264865320.Spec : Prop :=
  ∀ n, P5670438313264865320.a n = A031168 (n + 1)

theorem P5670438313264865320.correct : P5670438313264865320.Spec := by
  intro n
  simp only [A031168, Nat.add_sub_cancel, A031168.P5670438313264865320.a, A031168.P10733070865571447030.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, A031166, A031166.P17500312358421671513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031168

/-! ## A031168.P17762139739177782904

`A075527(n+1)+A031166(n+3)`
-/

namespace A031168.P17762139739177782904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (n + 1) + A031166 (n + 3)

end

end A031168.P17762139739177782904

namespace A031168

/-- `A075527(n+1)+A031166(n+3)` -/
def P17762139739177782904.Spec : Prop :=
  ∀ n, P17762139739177782904.a n = A031168 (n + 1)

end A031168

/-! ## A031168.P6895613502957375925

`A031165(n+1)+A031165(n+4)`
-/

namespace A031168.P6895613502957375925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 1) + A031165 (n + 4)

end

end A031168.P6895613502957375925

namespace A031168

/-- `A031165(n+1)+A031165(n+4)` -/
def P6895613502957375925.Spec : Prop :=
  ∀ n, P6895613502957375925.a n = A031168 (n + 1)

theorem P6895613502957375925.correct : P6895613502957375925.Spec := by
  intro n
  simp only [A031168, Nat.add_sub_cancel, A031168.P6895613502957375925.a, A031168.P10733070865571447030.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031165, A031165.P11271458498397254626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031168

/-! ## A031168.P18420166191340206222

`Δ[A034963(n+3)+A001043(n+1)]`
-/

namespace A031168.P18420166191340206222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 3) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031168.P18420166191340206222

namespace A031168

/-- `Δ[A034963(n+3)+A001043(n+1)]` -/
def P18420166191340206222.Spec : Prop :=
  ∀ n, P18420166191340206222.a n = A031168 (n + 1)

theorem P18420166191340206222.correct : P18420166191340206222.Spec := by
  intro n
  simp only [A031168, Nat.add_sub_cancel, A031168.P18420166191340206222.f1, A031168.P18420166191340206222.a, A031168.P10733070865571447030.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A034963, A034963.P11708242366348853171.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031168

/-! ## A031168.P3473422997223071199

`A065091(n+6)-A008578(n+2)`
-/

namespace A031168.P3473422997223071199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 6) - A008578 (n + 2)

end

end A031168.P3473422997223071199

namespace A031168

/-- `A065091(n+6)-A008578(n+2)` -/
def P3473422997223071199.Spec : Prop :=
  ∀ n, P3473422997223071199.a n = A031168 (n + 1)

end A031168

/-! ## A031168.P8895565230674228134

`A008864(n+7)-A008864(n+1)`
-/

namespace A031168.P8895565230674228134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 7) - A008864 (n + 1)

end

end A031168.P8895565230674228134

namespace A031168

/-- `A008864(n+7)-A008864(n+1)` -/
def P8895565230674228134.Spec : Prop :=
  ∀ n, P8895565230674228134.a n = A031168 (n + 1)

theorem P8895565230674228134.correct : P8895565230674228134.Spec := by
  intro n
  simp only [A031168, Nat.add_sub_cancel, A031168.P8895565230674228134.a, A031168.P10733070865571447030.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031168

/-! ## A031168.P17408080448206041152

`A040976(n+7)-A040976(n+1)`
-/

namespace A031168.P17408080448206041152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 7) - A040976 (n + 1)

end

end A031168.P17408080448206041152

namespace A031168

/-- `A040976(n+7)-A040976(n+1)` -/
def P17408080448206041152.Spec : Prop :=
  ∀ n, P17408080448206041152.a n = A031168 (n + 1)

theorem P17408080448206041152.correct : P17408080448206041152.Spec := by
  intro n
  simp only [A031168, Nat.add_sub_cancel, A031168.P17408080448206041152.a, A031168.P10733070865571447030.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031168

/-! ## A031168.P7119669100566101014

`A052147(n+7)-A052147(n+1)`
-/

namespace A031168.P7119669100566101014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 7) - A052147 (n + 1)

end

end A031168.P7119669100566101014

namespace A031168

/-- `A052147(n+7)-A052147(n+1)` -/
def P7119669100566101014.Spec : Prop :=
  ∀ n, P7119669100566101014.a n = A031168 (n + 1)

theorem P7119669100566101014.correct : P7119669100566101014.Spec := by
  intro n
  simp only [A031168, Nat.add_sub_cancel, A031168.P7119669100566101014.a, A031168.P10733070865571447030.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031168

/-! ## A031168.P4164227533275274653

`p?[A246655(n+10)]-(A006093(n+1)+1)`
-/

namespace A031168.P4164227533275274653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (A006093 (n + 1) + 1)

end

end A031168.P4164227533275274653

namespace A031168

/-- `p?[A246655(n+10)]-(A006093(n+1)+1)` -/
def P4164227533275274653.Spec : Prop :=
  ∀ n, P4164227533275274653.a n = A031168 (n + 1)

end A031168

/-!
# A031169: a(n) = prime(n+7) - prime(n).

The programs for A031169, the canonical program `A031169.P3035430483682365411` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031169 has offset 1).

The definition of A031169 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+8)-A000040(n+1)` (program `A031169.P3035430483682365411`, by `A031169.P3035430483682365411.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031169.P3035430483682365411

`A000040(n+8)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031169

/-- `A000040(n+8)-A000040(n+1)` -/
def P3035430483682365411.Spec : Prop :=
  ∀ n, P3035430483682365411.a n = A031169 (n + 1)

theorem P3035430483682365411.correct : P3035430483682365411.Spec := by
  intro n
  simp only [A031169, Nat.add_sub_cancel]

end A031169

/-! ## A031169.P2098210248254843473

`Δ[A127334(n+1)]`
-/

namespace A031169.P2098210248254843473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031169.P2098210248254843473

namespace A031169

/-- `Δ[A127334(n+1)]` -/
def P2098210248254843473.Spec : Prop :=
  ∀ n, P2098210248254843473.a n = A031169 (n + 1)

end A031169

/-! ## A031169.P15444003477182272261

`A031168(n+2)+A001223(n+1)`
-/

namespace A031169.P15444003477182272261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031168 (n + 2) + A001223 (n + 1)

end

end A031169.P15444003477182272261

namespace A031169

/-- `A031168(n+2)+A001223(n+1)` -/
def P15444003477182272261.Spec : Prop :=
  ∀ n, P15444003477182272261.a n = A031169 (n + 1)

theorem P15444003477182272261.correct : P15444003477182272261.Spec := by
  intro n
  simp only [A031169, Nat.add_sub_cancel, A031169.P15444003477182272261.a, A031169.P3035430483682365411.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A031168, A031168.P10733070865571447030.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031169

/-! ## A031169.P13990250734021286475

`A127334(n+2)-A127334(n+1)`
-/

namespace A031169.P13990250734021286475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 2) - A127334 (n + 1)

end

end A031169.P13990250734021286475

namespace A031169

/-- `A127334(n+2)-A127334(n+1)` -/
def P13990250734021286475.Spec : Prop :=
  ∀ n, P13990250734021286475.a n = A031169 (n + 1)

end A031169

/-! ## A031169.P15909612870378647120

`A127334(A304529(2*(n+2)))%A127334(n+1)`
-/

namespace A031169.P15909612870378647120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127334 (A304529 (2 * (n + 2))).toNat) (A127334 (n + 1))

end

end A031169.P15909612870378647120

namespace A031169

/-- `A127334(A304529(2*(n+2)))%A127334(n+1)` -/
def P15909612870378647120.Spec : Prop :=
  ∀ n, P15909612870378647120.a n = A031169 (n + 1)

end A031169

/-! ## A031169.P13606002407919798460

`A031165(n+1)+A031168(n+2)-A031131(n+2)`
-/

namespace A031169.P13606002407919798460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 1) + (A031168 (n + 2) - A031131 (n + 2))

end

end A031169.P13606002407919798460

namespace A031169

/-- `A031165(n+1)+A031168(n+2)-A031131(n+2)` -/
def P13606002407919798460.Spec : Prop :=
  ∀ n, P13606002407919798460.a n = A031169 (n + 1)

theorem P13606002407919798460.correct : P13606002407919798460.Spec := by
  intro n
  simp only [A031169, Nat.add_sub_cancel, A031169.P13606002407919798460.a, A031169.P3035430483682365411.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, A031165, A031165.P11271458498397254626.a, A031168, A031168.P10733070865571447030.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031169

/-! ## A031169.P11014985112316926055

`A031166(n+1)+A031168(n+2)-A031165(n+2)`
-/

namespace A031169.P11014985112316926055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1) + (A031168 (n + 2) - A031165 (n + 2))

end

end A031169.P11014985112316926055

namespace A031169

/-- `A031166(n+1)+A031168(n+2)-A031165(n+2)` -/
def P11014985112316926055.Spec : Prop :=
  ∀ n, P11014985112316926055.a n = A031169 (n + 1)

theorem P11014985112316926055.correct : P11014985112316926055.Spec := by
  intro n
  simp only [A031169, Nat.add_sub_cancel, A031169.P11014985112316926055.a, A031169.P3035430483682365411.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031165, A031165.P11271458498397254626.a, A031166, A031166.P17500312358421671513.a, A031168, A031168.P10733070865571447030.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031169

/-! ## A031169.P4863994077941721181

`A031167(n+1)+A031168(n+2)-A031166(n+2)`
-/

namespace A031169.P4863994077941721181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031167 (n + 1) + (A031168 (n + 2) - A031166 (n + 2))

end

end A031169.P4863994077941721181

namespace A031169

/-- `A031167(n+1)+A031168(n+2)-A031166(n+2)` -/
def P4863994077941721181.Spec : Prop :=
  ∀ n, P4863994077941721181.a n = A031169 (n + 1)

theorem P4863994077941721181.correct : P4863994077941721181.Spec := by
  intro n
  simp only [A031169, Nat.add_sub_cancel, A031169.P4863994077941721181.a, A031169.P3035430483682365411.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031166, A031166.P17500312358421671513.a, A031167, A031167.P2441032652030270759.a, A031168, A031168.P10733070865571447030.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031169

/-! ## A031169.P9072800786414109866

`A031168(n+1)+A031168(n+2)-A031167(n+2)`
-/

namespace A031169.P9072800786414109866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031168 (n + 1) + (A031168 (n + 2) - A031167 (n + 2))

end

end A031169.P9072800786414109866

namespace A031169

/-- `A031168(n+1)+A031168(n+2)-A031167(n+2)` -/
def P9072800786414109866.Spec : Prop :=
  ∀ n, P9072800786414109866.a n = A031169 (n + 1)

theorem P9072800786414109866.correct : P9072800786414109866.Spec := by
  intro n
  simp only [A031169, Nat.add_sub_cancel, A031169.P9072800786414109866.a, A031169.P3035430483682365411.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031167, A031167.P2441032652030270759.a, A031168, A031168.P10733070865571447030.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031169

/-! ## A031169.P18214187185051152754

`(A046325(n+2)-A046325(n+1))/A046324(n+2)`
-/

namespace A031169.P18214187185051152754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046325 (n + 2) - A046325 (n + 1) : ℚ) / (A046324 (n + 2) : ℚ)

end

end A031169.P18214187185051152754

namespace A031169

/-- `(A046325(n+2)-A046325(n+1))/A046324(n+2)` -/
def P18214187185051152754.Spec : Prop :=
  ∀ n, P18214187185051152754.a n = (A031169 (n + 1) : ℚ)

end A031169

/-! ## A031169.P6280123767415317998

`A031167(n+3)+A031131(n+1)`
-/

namespace A031169.P6280123767415317998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031167 (n + 3) + A031131 (n + 1)

end

end A031169.P6280123767415317998

namespace A031169

/-- `A031167(n+3)+A031131(n+1)` -/
def P6280123767415317998.Spec : Prop :=
  ∀ n, P6280123767415317998.a n = A031169 (n + 1)

theorem P6280123767415317998.correct : P6280123767415317998.Spec := by
  intro n
  simp only [A031169, Nat.add_sub_cancel, A031169.P6280123767415317998.a, A031169.P3035430483682365411.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, A031167, A031167.P2441032652030270759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031169

/-! ## A031169.P16853363175330088405

`A031166(n+4)+A031165(n+1)`
-/

namespace A031169.P16853363175330088405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 4) + A031165 (n + 1)

end

end A031169.P16853363175330088405

namespace A031169

/-- `A031166(n+4)+A031165(n+1)` -/
def P16853363175330088405.Spec : Prop :=
  ∀ n, P16853363175330088405.a n = A031169 (n + 1)

theorem P16853363175330088405.correct : P16853363175330088405.Spec := by
  intro n
  simp only [A031169, Nat.add_sub_cancel, A031169.P16853363175330088405.a, A031169.P3035430483682365411.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031165, A031165.P11271458498397254626.a, A031166, A031166.P17500312358421671513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031169

/-! ## A031169.P304224549571271147

`Δ[A034964(n+3)+A001043(n+1)]`
-/

namespace A031169.P304224549571271147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 3) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031169.P304224549571271147

namespace A031169

/-- `Δ[A034964(n+3)+A001043(n+1)]` -/
def P304224549571271147.Spec : Prop :=
  ∀ n, P304224549571271147.a n = A031169 (n + 1)

end A031169

/-! ## A031169.P4213878526168734711

`A008864(n+8)-A008864(n+1)`
-/

namespace A031169.P4213878526168734711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 8) - A008864 (n + 1)

end

end A031169.P4213878526168734711

namespace A031169

/-- `A008864(n+8)-A008864(n+1)` -/
def P4213878526168734711.Spec : Prop :=
  ∀ n, P4213878526168734711.a n = A031169 (n + 1)

theorem P4213878526168734711.correct : P4213878526168734711.Spec := by
  intro n
  simp only [A031169, Nat.add_sub_cancel, A031169.P4213878526168734711.a, A031169.P3035430483682365411.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031169

/-! ## A031169.P971770277696667496

`A052147(A020722(n))-A052147(n+1)`
-/

namespace A031169.P971770277696667496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (A020722 n).toNat - A052147 (n + 1)

end

end A031169.P971770277696667496

namespace A031169

/-- `A052147(A020722(n))-A052147(n+1)` -/
def P971770277696667496.Spec : Prop :=
  ∀ n, P971770277696667496.a n = A031169 (n + 1)

end A031169

/-!
# A031170: a(n) = prime(n+8) - prime(n).

The programs for A031170, the canonical program `A031170.P7637823447145167778` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031170 has offset 1).

The definition of A031170 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+9)-A000040(n+1)` (program `A031170.P7637823447145167778`, by `A031170.P7637823447145167778.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031170.P7637823447145167778

`A000040(n+9)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031170

/-- `A000040(n+9)-A000040(n+1)` -/
def P7637823447145167778.Spec : Prop :=
  ∀ n, P7637823447145167778.a n = A031170 (n + 1)

theorem P7637823447145167778.correct : P7637823447145167778.Spec := by
  intro n
  simp only [A031170, Nat.add_sub_cancel]

end A031170

/-! ## A031170.P16551967860731784781

`A055670(n+9)-A008864(n+1)`
-/

namespace A031170.P16551967860731784781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 9) - A008864 (n + 1)

end

end A031170.P16551967860731784781

namespace A031170

/-- `A055670(n+9)-A008864(n+1)` -/
def P16551967860731784781.Spec : Prop :=
  ∀ n, P16551967860731784781.a n = A031170 (n + 1)

end A031170

/-! ## A031170.P4623828261408755810

`Δ[A127335(n+1)]`
-/

namespace A031170.P4623828261408755810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031170.P4623828261408755810

namespace A031170

/-- `Δ[A127335(n+1)]` -/
def P4623828261408755810.Spec : Prop :=
  ∀ n, P4623828261408755810.a n = A031170 (n + 1)

end A031170

/-! ## A031170.P7331237223544730669

`A031169(n+2)+A001223(n+1)`
-/

namespace A031170.P7331237223544730669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031169 (n + 2) + A001223 (n + 1)

end

end A031170.P7331237223544730669

namespace A031170

/-- `A031169(n+2)+A001223(n+1)` -/
def P7331237223544730669.Spec : Prop :=
  ∀ n, P7331237223544730669.a n = A031170 (n + 1)

theorem P7331237223544730669.correct : P7331237223544730669.Spec := by
  intro n
  simp only [A031170, Nat.add_sub_cancel, A031170.P7331237223544730669.a, A031170.P7637823447145167778.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A031169, A031169.P3035430483682365411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031170

/-! ## A031170.P14844803591115275292

`A054541(n+2)+A031169(n+2)`
-/

namespace A031170.P14844803591115275292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2) + A031169 (n + 2)

end

end A031170.P14844803591115275292

namespace A031170

/-- `A054541(n+2)+A031169(n+2)` -/
def P14844803591115275292.Spec : Prop :=
  ∀ n, P14844803591115275292.a n = A031170 (n + 1)

end A031170

/-! ## A031170.P12880732015202604212

`A127335(n+2)-A127335(n+1)`
-/

namespace A031170.P12880732015202604212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 2) - A127335 (n + 1)

end

end A031170.P12880732015202604212

namespace A031170

/-- `A127335(n+2)-A127335(n+1)` -/
def P12880732015202604212.Spec : Prop :=
  ∀ n, P12880732015202604212.a n = A031170 (n + 1)

end A031170

/-! ## A031170.P4625253489135823415

`A031165(n+1)+A031169(n+2)-A031131(n+2)`
-/

namespace A031170.P4625253489135823415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 1) + (A031169 (n + 2) - A031131 (n + 2))

end

end A031170.P4625253489135823415

namespace A031170

/-- `A031165(n+1)+A031169(n+2)-A031131(n+2)` -/
def P4625253489135823415.Spec : Prop :=
  ∀ n, P4625253489135823415.a n = A031170 (n + 1)

theorem P4625253489135823415.correct : P4625253489135823415.Spec := by
  intro n
  simp only [A031170, Nat.add_sub_cancel, A031170.P4625253489135823415.a, A031170.P7637823447145167778.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, A031165, A031165.P11271458498397254626.a, A031169, A031169.P3035430483682365411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031170

/-! ## A031170.P9159437428723321549

`A031166(n+1)+A031169(n+2)-A031165(n+2)`
-/

namespace A031170.P9159437428723321549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1) + (A031169 (n + 2) - A031165 (n + 2))

end

end A031170.P9159437428723321549

namespace A031170

/-- `A031166(n+1)+A031169(n+2)-A031165(n+2)` -/
def P9159437428723321549.Spec : Prop :=
  ∀ n, P9159437428723321549.a n = A031170 (n + 1)

theorem P9159437428723321549.correct : P9159437428723321549.Spec := by
  intro n
  simp only [A031170, Nat.add_sub_cancel, A031170.P9159437428723321549.a, A031170.P7637823447145167778.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031165, A031165.P11271458498397254626.a, A031166, A031166.P17500312358421671513.a, A031169, A031169.P3035430483682365411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031170

/-! ## A031170.P5177167514416804274

`A031167(n+1)+A031169(n+2)-A031166(n+2)`
-/

namespace A031170.P5177167514416804274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031167 (n + 1) + (A031169 (n + 2) - A031166 (n + 2))

end

end A031170.P5177167514416804274

namespace A031170

/-- `A031167(n+1)+A031169(n+2)-A031166(n+2)` -/
def P5177167514416804274.Spec : Prop :=
  ∀ n, P5177167514416804274.a n = A031170 (n + 1)

theorem P5177167514416804274.correct : P5177167514416804274.Spec := by
  intro n
  simp only [A031170, Nat.add_sub_cancel, A031170.P5177167514416804274.a, A031170.P7637823447145167778.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031166, A031166.P17500312358421671513.a, A031167, A031167.P2441032652030270759.a, A031169, A031169.P3035430483682365411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031170

/-! ## A031170.P16017441494588317206

`A031168(n+1)+A031169(n+2)-A031167(n+2)`
-/

namespace A031170.P16017441494588317206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031168 (n + 1) + (A031169 (n + 2) - A031167 (n + 2))

end

end A031170.P16017441494588317206

namespace A031170

/-- `A031168(n+1)+A031169(n+2)-A031167(n+2)` -/
def P16017441494588317206.Spec : Prop :=
  ∀ n, P16017441494588317206.a n = A031170 (n + 1)

theorem P16017441494588317206.correct : P16017441494588317206.Spec := by
  intro n
  simp only [A031170, Nat.add_sub_cancel, A031170.P16017441494588317206.a, A031170.P7637823447145167778.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031167, A031167.P2441032652030270759.a, A031168, A031168.P10733070865571447030.a, A031169, A031169.P3035430483682365411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031170

/-! ## A031170.P175592408489297656

`A031169(n+1)+A031169(n+2)-A031168(n+2)`
-/

namespace A031170.P175592408489297656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031169 (n + 1) + (A031169 (n + 2) - A031168 (n + 2))

end

end A031170.P175592408489297656

namespace A031170

/-- `A031169(n+1)+A031169(n+2)-A031168(n+2)` -/
def P175592408489297656.Spec : Prop :=
  ∀ n, P175592408489297656.a n = A031170 (n + 1)

theorem P175592408489297656.correct : P175592408489297656.Spec := by
  intro n
  simp only [A031170, Nat.add_sub_cancel, A031170.P175592408489297656.a, A031170.P7637823447145167778.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031168, A031168.P10733070865571447030.a, A031169, A031169.P3035430483682365411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031170

/-! ## A031170.P1376026405215548734

`(A046326(n+2)-A046326(n+1))/A046325(n+2)`
-/

namespace A031170.P1376026405215548734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046326 (n + 2) - A046326 (n + 1) : ℚ) / (A046325 (n + 2) : ℚ)

end

end A031170.P1376026405215548734

namespace A031170

/-- `(A046326(n+2)-A046326(n+1))/A046325(n+2)` -/
def P1376026405215548734.Spec : Prop :=
  ∀ n, P1376026405215548734.a n = (A031170 (n + 1) : ℚ)

end A031170

/-! ## A031170.P4228244357705509476

`A031168(n+3)+A031131(n+1)`
-/

namespace A031170.P4228244357705509476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031168 (n + 3) + A031131 (n + 1)

end

end A031170.P4228244357705509476

namespace A031170

/-- `A031168(n+3)+A031131(n+1)` -/
def P4228244357705509476.Spec : Prop :=
  ∀ n, P4228244357705509476.a n = A031170 (n + 1)

theorem P4228244357705509476.correct : P4228244357705509476.Spec := by
  intro n
  simp only [A031170, Nat.add_sub_cancel, A031170.P4228244357705509476.a, A031170.P7637823447145167778.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, A031168, A031168.P10733070865571447030.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031170

/-! ## A031170.P8714325899466372047

`A031167(n+4)+A031165(n+1)`
-/

namespace A031170.P8714325899466372047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031167 (n + 4) + A031165 (n + 1)

end

end A031170.P8714325899466372047

namespace A031170

/-- `A031167(n+4)+A031165(n+1)` -/
def P8714325899466372047.Spec : Prop :=
  ∀ n, P8714325899466372047.a n = A031170 (n + 1)

theorem P8714325899466372047.correct : P8714325899466372047.Spec := by
  intro n
  simp only [A031170, Nat.add_sub_cancel, A031170.P8714325899466372047.a, A031170.P7637823447145167778.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031165, A031165.P11271458498397254626.a, A031167, A031167.P2441032652030270759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031170

/-! ## A031170.P2583344113407236976

`Δ[A127333(n+3)+A001043(n+1)]`
-/

namespace A031170.P2583344113407236976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 3) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031170.P2583344113407236976

namespace A031170

/-- `Δ[A127333(n+3)+A001043(n+1)]` -/
def P2583344113407236976.Spec : Prop :=
  ∀ n, P2583344113407236976.a n = A031170 (n + 1)

end A031170

/-! ## A031170.P17061010538163594683

`A052147(n+9)-A052147(n+1)`
-/

namespace A031170.P17061010538163594683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 9) - A052147 (n + 1)

end

end A031170.P17061010538163594683

namespace A031170

/-- `A052147(n+9)-A052147(n+1)` -/
def P17061010538163594683.Spec : Prop :=
  ∀ n, P17061010538163594683.a n = A031170 (n + 1)

theorem P17061010538163594683.correct : P17061010538163594683.Spec := by
  intro n
  simp only [A031170, Nat.add_sub_cancel, A031170.P17061010538163594683.a, A031170.P7637823447145167778.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031170

/-! ## A031170.P10837777274623962482

`A008864(A020723(n))-A008864(n+1)`
-/

namespace A031170.P10837777274623962482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A020723 n).toNat - A008864 (n + 1)

end

end A031170.P10837777274623962482

namespace A031170

/-- `A008864(A020723(n))-A008864(n+1)` -/
def P10837777274623962482.Spec : Prop :=
  ∀ n, P10837777274623962482.a n = A031170 (n + 1)

end A031170

/-! ## A031170.P17236614786435095938

`A028815(A020723(n))-A028815(n+1)`
-/

namespace A031170.P17236614786435095938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A020723 n).toNat - A028815 (n + 1)

end

end A031170.P17236614786435095938

namespace A031170

/-- `A028815(A020723(n))-A028815(n+1)` -/
def P17236614786435095938.Spec : Prop :=
  ∀ n, P17236614786435095938.a n = A031170 (n + 1)

end A031170

/-! ## A031170.P9461565120694477750

`A008578(n+10)-A008578(n+2)`
-/

namespace A031170.P9461565120694477750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 10) - A008578 (n + 2)

end

end A031170.P9461565120694477750

namespace A031170

/-- `A008578(n+10)-A008578(n+2)` -/
def P9461565120694477750.Spec : Prop :=
  ∀ n, P9461565120694477750.a n = A031170 (n + 1)

end A031170

/-!
# A031171: a(n) = prime(n+9) - prime(n).

The programs for A031171, the canonical program `A031171.P249549039556152147` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031171 has offset 1).

The definition of A031171 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+10)-A000040(n+1)` (program `A031171.P249549039556152147`, by `A031171.P249549039556152147.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031171.P249549039556152147

`A000040(n+10)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031171

/-- `A000040(n+10)-A000040(n+1)` -/
def P249549039556152147.Spec : Prop :=
  ∀ n, P249549039556152147.a n = A031171 (n + 1)

theorem P249549039556152147.correct : P249549039556152147.Spec := by
  intro n
  simp only [A031171, Nat.add_sub_cancel]

end A031171

/-! ## A031171.P1985455575635686828

`Δ[A127336(n+1)]`
-/

namespace A031171.P1985455575635686828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031171.P1985455575635686828

namespace A031171

/-- `Δ[A127336(n+1)]` -/
def P1985455575635686828.Spec : Prop :=
  ∀ n, P1985455575635686828.a n = A031171 (n + 1)

end A031171

/-! ## A031171.P7815856791655403095

`A031170(n+2)+A001223(n+1)`
-/

namespace A031171.P7815856791655403095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031170 (n + 2) + A001223 (n + 1)

end

end A031171.P7815856791655403095

namespace A031171

/-- `A031170(n+2)+A001223(n+1)` -/
def P7815856791655403095.Spec : Prop :=
  ∀ n, P7815856791655403095.a n = A031171 (n + 1)

theorem P7815856791655403095.correct : P7815856791655403095.Spec := by
  intro n
  simp only [A031171, Nat.add_sub_cancel, A031171.P7815856791655403095.a, A031171.P249549039556152147.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A031170, A031170.P7637823447145167778.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031171

/-! ## A031171.P2189950431244038913

`A127336(n+2)-A127336(n+1)`
-/

namespace A031171.P2189950431244038913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 2) - A127336 (n + 1)

end

end A031171.P2189950431244038913

namespace A031171

/-- `A127336(n+2)-A127336(n+1)` -/
def P2189950431244038913.Spec : Prop :=
  ∀ n, P2189950431244038913.a n = A031171 (n + 1)

end A031171

/-! ## A031171.P18351133830744744379

`A031165(n+1)+A031170(n+2)-A031131(n+2)`
-/

namespace A031171.P18351133830744744379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 1) + (A031170 (n + 2) - A031131 (n + 2))

end

end A031171.P18351133830744744379

namespace A031171

/-- `A031165(n+1)+A031170(n+2)-A031131(n+2)` -/
def P18351133830744744379.Spec : Prop :=
  ∀ n, P18351133830744744379.a n = A031171 (n + 1)

theorem P18351133830744744379.correct : P18351133830744744379.Spec := by
  intro n
  simp only [A031171, Nat.add_sub_cancel, A031171.P18351133830744744379.a, A031171.P249549039556152147.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, A031165, A031165.P11271458498397254626.a, A031170, A031170.P7637823447145167778.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031171

/-! ## A031171.P5329835746180811388

`A031166(n+1)+A031170(n+2)-A031165(n+2)`
-/

namespace A031171.P5329835746180811388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1) + (A031170 (n + 2) - A031165 (n + 2))

end

end A031171.P5329835746180811388

namespace A031171

/-- `A031166(n+1)+A031170(n+2)-A031165(n+2)` -/
def P5329835746180811388.Spec : Prop :=
  ∀ n, P5329835746180811388.a n = A031171 (n + 1)

theorem P5329835746180811388.correct : P5329835746180811388.Spec := by
  intro n
  simp only [A031171, Nat.add_sub_cancel, A031171.P5329835746180811388.a, A031171.P249549039556152147.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031165, A031165.P11271458498397254626.a, A031166, A031166.P17500312358421671513.a, A031170, A031170.P7637823447145167778.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031171

/-! ## A031171.P7150298070218127343

`A031167(n+1)+A031170(n+2)-A031166(n+2)`
-/

namespace A031171.P7150298070218127343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031167 (n + 1) + (A031170 (n + 2) - A031166 (n + 2))

end

end A031171.P7150298070218127343

namespace A031171

/-- `A031167(n+1)+A031170(n+2)-A031166(n+2)` -/
def P7150298070218127343.Spec : Prop :=
  ∀ n, P7150298070218127343.a n = A031171 (n + 1)

theorem P7150298070218127343.correct : P7150298070218127343.Spec := by
  intro n
  simp only [A031171, Nat.add_sub_cancel, A031171.P7150298070218127343.a, A031171.P249549039556152147.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031166, A031166.P17500312358421671513.a, A031167, A031167.P2441032652030270759.a, A031170, A031170.P7637823447145167778.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031171

/-! ## A031171.P10765791984345263453

`A031168(n+1)+A031170(n+2)-A031167(n+2)`
-/

namespace A031171.P10765791984345263453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031168 (n + 1) + (A031170 (n + 2) - A031167 (n + 2))

end

end A031171.P10765791984345263453

namespace A031171

/-- `A031168(n+1)+A031170(n+2)-A031167(n+2)` -/
def P10765791984345263453.Spec : Prop :=
  ∀ n, P10765791984345263453.a n = A031171 (n + 1)

theorem P10765791984345263453.correct : P10765791984345263453.Spec := by
  intro n
  simp only [A031171, Nat.add_sub_cancel, A031171.P10765791984345263453.a, A031171.P249549039556152147.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031167, A031167.P2441032652030270759.a, A031168, A031168.P10733070865571447030.a, A031170, A031170.P7637823447145167778.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031171

/-! ## A031171.P14050270930036696147

`A031169(n+1)+A031170(n+2)-A031168(n+2)`
-/

namespace A031171.P14050270930036696147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031169 (n + 1) + (A031170 (n + 2) - A031168 (n + 2))

end

end A031171.P14050270930036696147

namespace A031171

/-- `A031169(n+1)+A031170(n+2)-A031168(n+2)` -/
def P14050270930036696147.Spec : Prop :=
  ∀ n, P14050270930036696147.a n = A031171 (n + 1)

theorem P14050270930036696147.correct : P14050270930036696147.Spec := by
  intro n
  simp only [A031171, Nat.add_sub_cancel, A031171.P14050270930036696147.a, A031171.P249549039556152147.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031168, A031168.P10733070865571447030.a, A031169, A031169.P3035430483682365411.a, A031170, A031170.P7637823447145167778.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031171

/-! ## A031171.P3531600095125213300

`A031170(n+1)+A031170(n+2)-A031169(n+2)`
-/

namespace A031171.P3531600095125213300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031170 (n + 1) + (A031170 (n + 2) - A031169 (n + 2))

end

end A031171.P3531600095125213300

namespace A031171

/-- `A031170(n+1)+A031170(n+2)-A031169(n+2)` -/
def P3531600095125213300.Spec : Prop :=
  ∀ n, P3531600095125213300.a n = A031171 (n + 1)

theorem P3531600095125213300.correct : P3531600095125213300.Spec := by
  intro n
  simp only [A031171, Nat.add_sub_cancel, A031171.P3531600095125213300.a, A031171.P249549039556152147.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031169, A031169.P3035430483682365411.a, A031170, A031170.P7637823447145167778.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031171

/-! ## A031171.P7656527429149192461

`A031169(n+3)+A031131(n+1)`
-/

namespace A031171.P7656527429149192461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031169 (n + 3) + A031131 (n + 1)

end

end A031171.P7656527429149192461

namespace A031171

/-- `A031169(n+3)+A031131(n+1)` -/
def P7656527429149192461.Spec : Prop :=
  ∀ n, P7656527429149192461.a n = A031171 (n + 1)

theorem P7656527429149192461.correct : P7656527429149192461.Spec := by
  intro n
  simp only [A031171, Nat.add_sub_cancel, A031171.P7656527429149192461.a, A031171.P249549039556152147.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, A031169, A031169.P3035430483682365411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031171

/-! ## A031171.P15660901505152853681

`Δ[A127335(n+2)+A000040(n+1)]`
-/

namespace A031171.P15660901505152853681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 2) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031171.P15660901505152853681

namespace A031171

/-- `Δ[A127335(n+2)+A000040(n+1)]` -/
def P15660901505152853681.Spec : Prop :=
  ∀ n, P15660901505152853681.a n = A031171 (n + 1)

end A031171

/-! ## A031171.P13118205897233582193

`A031168(n+4)+A031165(n+1)`
-/

namespace A031171.P13118205897233582193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031168 (n + 4) + A031165 (n + 1)

end

end A031171.P13118205897233582193

namespace A031171

/-- `A031168(n+4)+A031165(n+1)` -/
def P13118205897233582193.Spec : Prop :=
  ∀ n, P13118205897233582193.a n = A031171 (n + 1)

theorem P13118205897233582193.correct : P13118205897233582193.Spec := by
  intro n
  simp only [A031171, Nat.add_sub_cancel, A031171.P13118205897233582193.a, A031171.P249549039556152147.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031165, A031165.P11271458498397254626.a, A031168, A031168.P10733070865571447030.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031171

/-! ## A031171.P13142165889438486077

`Δ[A127334(n+3)+A001043(n+1)]`
-/

namespace A031171.P13142165889438486077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 3) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031171.P13142165889438486077

namespace A031171

/-- `Δ[A127334(n+3)+A001043(n+1)]` -/
def P13142165889438486077.Spec : Prop :=
  ∀ n, P13142165889438486077.a n = A031171 (n + 1)

end A031171

/-! ## A031171.P2562219639870997585

`A008864(n+10)-A008864(n+1)`
-/

namespace A031171.P2562219639870997585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 10) - A008864 (n + 1)

end

end A031171.P2562219639870997585

namespace A031171

/-- `A008864(n+10)-A008864(n+1)` -/
def P2562219639870997585.Spec : Prop :=
  ∀ n, P2562219639870997585.a n = A031171 (n + 1)

theorem P2562219639870997585.correct : P2562219639870997585.Spec := by
  intro n
  simp only [A031171, Nat.add_sub_cancel, A031171.P2562219639870997585.a, A031171.P249549039556152147.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031171

/-! ## A031171.P14963256789578304028

`A028815(n+10)-A028815(n+1)`
-/

namespace A031171.P14963256789578304028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 10) - A028815 (n + 1)

end

end A031171.P14963256789578304028

namespace A031171

/-- `A028815(n+10)-A028815(n+1)` -/
def P14963256789578304028.Spec : Prop :=
  ∀ n, P14963256789578304028.a n = A031171 (n + 1)

end A031171

/-! ## A031171.P7210176714509202177

`A052147(n+10)-A052147(n+1)`
-/

namespace A031171.P7210176714509202177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 10) - A052147 (n + 1)

end

end A031171.P7210176714509202177

namespace A031171

/-- `A052147(n+10)-A052147(n+1)` -/
def P7210176714509202177.Spec : Prop :=
  ∀ n, P7210176714509202177.a n = A031171 (n + 1)

theorem P7210176714509202177.correct : P7210176714509202177.Spec := by
  intro n
  simp only [A031171, Nat.add_sub_cancel, A031171.P7210176714509202177.a, A031171.P249549039556152147.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031171

/-!
# A031172: a(n) = prime(n+10) - prime(n).

The programs for A031172, the canonical program `A031172.P18084180749850706965` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031172 has offset 1).

The definition of A031172 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+11)-A000040(n+1)` (program `A031172.P18084180749850706965`, by `A031172.P18084180749850706965.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A031172.P18084180749850706965

`A000040(n+11)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031172

/-- `A000040(n+11)-A000040(n+1)` -/
def P18084180749850706965.Spec : Prop :=
  ∀ n, P18084180749850706965.a n = A031172 (n + 1)

theorem P18084180749850706965.correct : P18084180749850706965.Spec := by
  intro n
  simp only [A031172, Nat.add_sub_cancel]

end A031172

/-! ## A031172.P1168867580921055363

`Δ[A007504(n+10)-A007504(n)]`
-/

namespace A031172.P1168867580921055363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 10) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031172.P1168867580921055363

namespace A031172

/-- `Δ[A007504(n+10)-A007504(n)]` -/
def P1168867580921055363.Spec : Prop :=
  ∀ n, P1168867580921055363.a n = A031172 (n + 1)

end A031172

/-! ## A031172.P6103282605108667013

`Δ[A127337(n+1)]`
-/

namespace A031172.P6103282605108667013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031172.P6103282605108667013

namespace A031172

/-- `Δ[A127337(n+1)]` -/
def P6103282605108667013.Spec : Prop :=
  ∀ n, P6103282605108667013.a n = A031172 (n + 1)

end A031172

/-! ## A031172.P1532434177296640416

`A031171(n+2)+A001223(n+1)`
-/

namespace A031172.P1532434177296640416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031171 (n + 2) + A001223 (n + 1)

end

end A031172.P1532434177296640416

namespace A031172

/-- `A031171(n+2)+A001223(n+1)` -/
def P1532434177296640416.Spec : Prop :=
  ∀ n, P1532434177296640416.a n = A031172 (n + 1)

theorem P1532434177296640416.correct : P1532434177296640416.Spec := by
  intro n
  simp only [A031172, Nat.add_sub_cancel, A031172.P1532434177296640416.a, A031172.P18084180749850706965.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A031171, A031171.P249549039556152147.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031172

/-! ## A031172.P3104753133307971789

`A127337(n+2)-A127337(n+1)`
-/

namespace A031172.P3104753133307971789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 2) - A127337 (n + 1)

end

end A031172.P3104753133307971789

namespace A031172

/-- `A127337(n+2)-A127337(n+1)` -/
def P3104753133307971789.Spec : Prop :=
  ∀ n, P3104753133307971789.a n = A031172 (n + 1)

end A031172

/-! ## A031172.P16587536194075748327

`A031165(n+1)+A031171(n+2)-A031131(n+2)`
-/

namespace A031172.P16587536194075748327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 1) + (A031171 (n + 2) - A031131 (n + 2))

end

end A031172.P16587536194075748327

namespace A031172

/-- `A031165(n+1)+A031171(n+2)-A031131(n+2)` -/
def P16587536194075748327.Spec : Prop :=
  ∀ n, P16587536194075748327.a n = A031172 (n + 1)

theorem P16587536194075748327.correct : P16587536194075748327.Spec := by
  intro n
  simp only [A031172, Nat.add_sub_cancel, A031172.P16587536194075748327.a, A031172.P18084180749850706965.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, A031165, A031165.P11271458498397254626.a, A031171, A031171.P249549039556152147.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031172

/-! ## A031172.P533172327310504421

`A031166(n+1)+A031171(n+2)-A031165(n+2)`
-/

namespace A031172.P533172327310504421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1) + (A031171 (n + 2) - A031165 (n + 2))

end

end A031172.P533172327310504421

namespace A031172

/-- `A031166(n+1)+A031171(n+2)-A031165(n+2)` -/
def P533172327310504421.Spec : Prop :=
  ∀ n, P533172327310504421.a n = A031172 (n + 1)

theorem P533172327310504421.correct : P533172327310504421.Spec := by
  intro n
  simp only [A031172, Nat.add_sub_cancel, A031172.P533172327310504421.a, A031172.P18084180749850706965.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031165, A031165.P11271458498397254626.a, A031166, A031166.P17500312358421671513.a, A031171, A031171.P249549039556152147.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031172

/-! ## A031172.P5605689375535979411

`A031167(n+1)+A031171(n+2)-A031166(n+2)`
-/

namespace A031172.P5605689375535979411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031167 (n + 1) + (A031171 (n + 2) - A031166 (n + 2))

end

end A031172.P5605689375535979411

namespace A031172

/-- `A031167(n+1)+A031171(n+2)-A031166(n+2)` -/
def P5605689375535979411.Spec : Prop :=
  ∀ n, P5605689375535979411.a n = A031172 (n + 1)

theorem P5605689375535979411.correct : P5605689375535979411.Spec := by
  intro n
  simp only [A031172, Nat.add_sub_cancel, A031172.P5605689375535979411.a, A031172.P18084180749850706965.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031166, A031166.P17500312358421671513.a, A031167, A031167.P2441032652030270759.a, A031171, A031171.P249549039556152147.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031172

/-! ## A031172.P1065300964212658859

`A031168(n+1)+A031171(n+2)-A031167(n+2)`
-/

namespace A031172.P1065300964212658859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031168 (n + 1) + (A031171 (n + 2) - A031167 (n + 2))

end

end A031172.P1065300964212658859

namespace A031172

/-- `A031168(n+1)+A031171(n+2)-A031167(n+2)` -/
def P1065300964212658859.Spec : Prop :=
  ∀ n, P1065300964212658859.a n = A031172 (n + 1)

theorem P1065300964212658859.correct : P1065300964212658859.Spec := by
  intro n
  simp only [A031172, Nat.add_sub_cancel, A031172.P1065300964212658859.a, A031172.P18084180749850706965.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031167, A031167.P2441032652030270759.a, A031168, A031168.P10733070865571447030.a, A031171, A031171.P249549039556152147.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031172

/-! ## A031172.P6521831627795917569

`A031169(n+1)+A031171(n+2)-A031168(n+2)`
-/

namespace A031172.P6521831627795917569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031169 (n + 1) + (A031171 (n + 2) - A031168 (n + 2))

end

end A031172.P6521831627795917569

namespace A031172

/-- `A031169(n+1)+A031171(n+2)-A031168(n+2)` -/
def P6521831627795917569.Spec : Prop :=
  ∀ n, P6521831627795917569.a n = A031172 (n + 1)

theorem P6521831627795917569.correct : P6521831627795917569.Spec := by
  intro n
  simp only [A031172, Nat.add_sub_cancel, A031172.P6521831627795917569.a, A031172.P18084180749850706965.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031168, A031168.P10733070865571447030.a, A031169, A031169.P3035430483682365411.a, A031171, A031171.P249549039556152147.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031172

/-! ## A031172.P18029315433752926623

`A031171(n+1)+A031171(n+2)-A031170(n+2)`
-/

namespace A031172.P18029315433752926623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031171 (n + 1) + (A031171 (n + 2) - A031170 (n + 2))

end

end A031172.P18029315433752926623

namespace A031172

/-- `A031171(n+1)+A031171(n+2)-A031170(n+2)` -/
def P18029315433752926623.Spec : Prop :=
  ∀ n, P18029315433752926623.a n = A031172 (n + 1)

theorem P18029315433752926623.correct : P18029315433752926623.Spec := by
  intro n
  simp only [A031172, Nat.add_sub_cancel, A031172.P18029315433752926623.a, A031172.P18084180749850706965.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031170, A031170.P7637823447145167778.a, A031171, A031171.P249549039556152147.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031172

/-! ## A031172.P17030699782919468601

`A031170(n+3)+A031131(n+1)`
-/

namespace A031172.P17030699782919468601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031170 (n + 3) + A031131 (n + 1)

end

end A031172.P17030699782919468601

namespace A031172

/-- `A031170(n+3)+A031131(n+1)` -/
def P17030699782919468601.Spec : Prop :=
  ∀ n, P17030699782919468601.a n = A031172 (n + 1)

theorem P17030699782919468601.correct : P17030699782919468601.Spec := by
  intro n
  simp only [A031172, Nat.add_sub_cancel, A031172.P17030699782919468601.a, A031172.P18084180749850706965.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031131, A031131.P2453725465626413076.a, A031170, A031170.P7637823447145167778.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031172

/-! ## A031172.P11461326599843398668

`A031169(n+4)+A031165(n+1)`
-/

namespace A031172.P11461326599843398668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031169 (n + 4) + A031165 (n + 1)

end

end A031172.P11461326599843398668

namespace A031172

/-- `A031169(n+4)+A031165(n+1)` -/
def P11461326599843398668.Spec : Prop :=
  ∀ n, P11461326599843398668.a n = A031172 (n + 1)

theorem P11461326599843398668.correct : P11461326599843398668.Spec := by
  intro n
  simp only [A031172, Nat.add_sub_cancel, A031172.P11461326599843398668.a, A031172.P18084180749850706965.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031165, A031165.P11271458498397254626.a, A031169, A031169.P3035430483682365411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031172

/-! ## A031172.P8049482484522033583

`Δ[A127335(n+3)+A001043(n+1)]`
-/

namespace A031172.P8049482484522033583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 3) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031172.P8049482484522033583

namespace A031172

/-- `Δ[A127335(n+3)+A001043(n+1)]` -/
def P8049482484522033583.Spec : Prop :=
  ∀ n, P8049482484522033583.a n = A031172 (n + 1)

end A031172

/-! ## A031172.P10314286326404085282

`Δ[A127335(n+3)+A011974(n+2)]`
-/

namespace A031172.P10314286326404085282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 3) + A011974 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031172.P10314286326404085282

namespace A031172

/-- `Δ[A127335(n+3)+A011974(n+2)]` -/
def P10314286326404085282.Spec : Prop :=
  ∀ n, P10314286326404085282.a n = A031172 (n + 1)

end A031172

/-! ## A031172.P9831468756565102539

`A008864(n+11)-A008864(n+1)`
-/

namespace A031172.P9831468756565102539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 11) - A008864 (n + 1)

end

end A031172.P9831468756565102539

namespace A031172

/-- `A008864(n+11)-A008864(n+1)` -/
def P9831468756565102539.Spec : Prop :=
  ∀ n, P9831468756565102539.a n = A031172 (n + 1)

theorem P9831468756565102539.correct : P9831468756565102539.Spec := by
  intro n
  simp only [A031172, Nat.add_sub_cancel, A031172.P9831468756565102539.a, A031172.P18084180749850706965.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A031172

/-!
# A031174: Intermediate edge b of smallest (measured by the longest edge) primitive Euler bricks (a, b, c, sqrt(a^2 + b^2), sqrt(b^2 + c^2), sqrt(a^2 + c^2) are integers).

The programs for A031174, there is no canonical definition to state claims against.
-/

/-! ## A031174.P11713765103705685160

`A268396(or(A016789(n), A348059(n+1)))`
-/

namespace A031174.P11713765103705685160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268396 (Int.lor (A016789 n) (A348059 (n + 1))).toNat

end

end A031174.P11713765103705685160

/-!
# A031176: Periods of sum of squares of digits iterated until the sequence becomes periodic.

The programs for A031176, there is no canonical definition to state claims against.
-/

/-! ## A031176.P10454449096301005572

`7*char[A031177(n+1)]+1`
-/

namespace A031176.P10454449096301005572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A031176.P10454449096301005572

/-! ## A031176.P15479202724359500863

`A040019(A005408(n)+char[A031177(n+1)])`
-/

namespace A031176.P15479202724359500863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031177 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 (A005408 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A031176.P15479202724359500863

/-! ## A031176.P4939107434178179081

`A010689(A239693(n+1)+char[A007770(n+1)])`
-/

namespace A031176.P4939107434178179081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 (A239693 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A031176.P4939107434178179081

/-! ## A031176.P15320837083063104153

`A010689(A005843(n)-char[A031177(n+1)])`
-/

namespace A031176.P15320837083063104153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031177 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 (A005843 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A031176.P15320837083063104153

/-! ## A031176.P17242748399274157684

`A040019(A310493(n)+char[A007770(n+1)])`
-/

namespace A031176.P17242748399274157684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 (A310493 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A031176.P17242748399274157684

/-! ## A031176.P3451701580678766469

`A040019(A006093(n+1)+char[A007770(n+1)])`
-/

namespace A031176.P3451701580678766469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 (A006093 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A031176.P3451701580678766469

/-!
# A031177: Unhappy numbers: numbers having period-8 2-digitized sequences.

The programs for A031177, there is no canonical definition to state claims against.
-/

/-! ## A031177.P1360538603514440862

`comp[A007770(n+1)-1]+1`
-/

namespace A031177.P1360538603514440862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A031177.P1360538603514440862

/-! ## A031177.P15291888797333260171

`lt[1, A031176(n)]`
-/

namespace A031177.P15291888797333260171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031177.P15291888797333260171

/-! ## A031177.P6756091494641852364

`lt[1, A103369(n+1)]+1`
-/

namespace A031177.P6756091494641852364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A031177.P6756091494641852364

/-! ## A031177.P10878164993727827783

`lt[1, A103369(A028310(n))]`
-/

namespace A031177.P10878164993727827783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031177.P10878164993727827783

/-! ## A031177.P7984266911464000041

`A000027(eq[8, A031176(n)])`
-/

namespace A031177.P7984266911464000041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031177.P7984266911464000041

/-! ## A031177.P7491976377631548397

`eq[8, A031176(A003132(n))]`
-/

namespace A031177.P7491976377631548397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 (A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031177.P7491976377631548397

/-! ## A031177.P844347436864364210

`eq[8, A031176(A004185(n))]`
-/

namespace A031177.P844347436864364210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 (A004185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031177.P844347436864364210

/-! ## A031177.P7100647432955615994

`eq[A031176(n), A040012(n)]`
-/

namespace A031177.P7100647432955615994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031177.P7100647432955615994

/-! ## A031177.P13143942095400813927

`lt[1, A103369(A000007(n)+n)]`
-/

namespace A031177.P13143942095400813927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031177.P13143942095400813927

/-! ## A031177.P15417164717388945858

`eq[8, A031176(n)]%A000040(n+1)²`
-/

namespace A031177.P15417164717388945858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A000040 (n + 1) ^ 2)

end

end A031177.P15417164717388945858

/-! ## A031177.P12078870152811946708

`record[(n+2)%A032551(A193995(n+2)+1)]`
-/

namespace A031177.P12078870152811946708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A032551 (A193995 (n + 2) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031177.P12078870152811946708

/-!
# A031178: Periods of sum of cubes of digits iterated until the sequence becomes periodic.

The programs for A031178, there is no canonical definition to state claims against.
-/

/-! ## A031178.P10844097878257162491

`(A104138(A165330(n)+1)+2)%4`
-/

namespace A031178.P10844097878257162491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104138 (A165330 n + 1).toNat + 2) 4

end

end A031178.P10844097878257162491

/-! ## A031178.P15353047111297338119

`A129761(A331045(A165330(n))²)`
-/

namespace A031178.P15353047111297338119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 (A331045 (A165330 n).toNat ^ 2).toNat

end

end A031178.P15353047111297338119

/-! ## A031178.P17858296948924705666

`A130330(A331045(A165330(n))²)`
-/

namespace A031178.P17858296948924705666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 (A331045 (A165330 n).toNat ^ 2).toNat

end

end A031178.P17858296948924705666

/-! ## A031178.P681418276698032074

`A129252(A379128(n+1))`
-/

namespace A031178.P681418276698032074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129252 (A379128 (n + 1)).toNat

end

end A031178.P681418276698032074

/-!
# A031179: Numbers having period-1 3-digitized sequences.

The programs for A031179, there is no canonical definition to state claims against.
-/

/-! ## A031179.P4838906936547719854

`comp[A165336(n+1)]`
-/

namespace A031179.P4838906936547719854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A031179.P4838906936547719854

/-! ## A031179.P1212433707799222355

`eq[1, A031178(A165330(n))]`
-/

namespace A031179.P1212433707799222355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 (A165330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031179.P1212433707799222355

/-! ## A031179.P14726268682388410917

`eq[1, A031178(A004086(n))]`
-/

namespace A031179.P14726268682388410917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031179.P14726268682388410917

/-! ## A031179.P6941808649995459260

`eq[1, A031178(A004185(n))]`
-/

namespace A031179.P6941808649995459260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 (A004185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031179.P6941808649995459260

/-! ## A031179.P2756726707741797967

`record[A000027(n+1)-A031178(A004086(n))]`
-/

namespace A031179.P2756726707741797967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A031178 (A004086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031179.P2756726707741797967

/-! ## A031179.P1018335172875212787

`record[A000027(n+1)-A031178(A004185(n))]`
-/

namespace A031179.P1018335172875212787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A031178 (A004185 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031179.P1018335172875212787

/-! ## A031179.P3501149487495880955

`eq[1, A031178(n)]`
-/

namespace A031179.P3501149487495880955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031179.P3501149487495880955

/-! ## A031179.P6626943140942427654

`record[A000027(n+1)-A031178(n)]`
-/

namespace A031179.P6626943140942427654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A031178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031179.P6626943140942427654

/-! ## A031179.P12601982232566696906

`record[A008619(2*n)-A031178(n)]`
-/

namespace A031179.P12601982232566696906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A031178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031179.P12601982232566696906

/-! ## A031179.P9654948809498070721

`record[A057354(n)/A031178(A057354(n))]`
-/

namespace A031179.P9654948809498070721
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057354 n : ℚ) / (A031178 (A057354 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031179.P9654948809498070721

/-!
# A031180: Numbers having period-2 3-digitized sequences.

The programs for A031180, there is no canonical definition to state claims against.
-/

/-! ## A031180.P12273495932735245868

`eq[2, A031178(n)]`
-/

namespace A031180.P12273495932735245868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031180.P12273495932735245868

/-! ## A031180.P14365976794166311117

`lt[1, gcd(2, A031178(n+1))]+1`
-/

namespace A031180.P14365976794166311117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A031178 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A031180.P14365976794166311117

/-! ## A031180.P526859261881937258

`lt[tan(A031178(n)), A057428(n)]`
-/

namespace A031180.P526859261881937258
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A031178 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A031180.P526859261881937258

/-! ## A031180.P8709703202146892830

`lt[(n+1)*(tan(A031178(n))+1), A196048(n+1)]`
-/

namespace A031180.P8709703202146892830
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (Real.tan (A031178 n : ℝ) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A031180.P8709703202146892830

/-! ## A031180.P11770397912441798432

`lt[tan(A031178(n)), n/(A000203(n+1)-2)-2]`
-/

namespace A031180.P11770397912441798432
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A031178 n : ℝ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000203 (n + 1) - 2 : ℚ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A031180.P11770397912441798432

/-! ## A031180.P14340016748588677107

`∪[A165337(n+1), A165339(n+1)]`
-/

namespace A031180.P14340016748588677107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031180.P14340016748588677107

/-!
# A031181: Numbers having period-3 3-digitized sequences.

The programs for A031181, there is no canonical definition to state claims against.
-/

/-! ## A031181.P14492128803711514353

`lt[2, A031178(A165330(n))]`
-/

namespace A031181.P14492128803711514353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 (A165330 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031181.P14492128803711514353

/-! ## A031181.P2895492260761533627

`lt[2, A031178(A055012(n))]`
-/

namespace A031181.P2895492260761533627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031181.P2895492260761533627

/-! ## A031181.P5435753523567212321

`lt[2, A031178(n)]`
-/

namespace A031181.P5435753523567212321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031181.P5435753523567212321

/-! ## A031181.P1159394448312652985

`A000027(eq[3, A031178(n)])`
-/

namespace A031181.P1159394448312652985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031181.P1159394448312652985

/-! ## A031181.P11403400971493839046

`eq[3, A031178(A004086(n))]`
-/

namespace A031181.P11403400971493839046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031181.P11403400971493839046

/-! ## A031181.P8507318095250115951

`eq[3, A031178(A028310(n))]`
-/

namespace A031181.P8507318095250115951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031181.P8507318095250115951

/-! ## A031181.P4516569870123725743

`A091684(eq[3, A031178(n)])`
-/

namespace A031181.P4516569870123725743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031181.P4516569870123725743

/-! ## A031181.P16636075075129135735

`A184985(eq[3, A031178(n)])`
-/

namespace A031181.P16636075075129135735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031181.P16636075075129135735

/-! ## A031181.P15179550243021854265

`eq[A031178(n), A060397(n)]`
-/

namespace A031181.P15179550243021854265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060397 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031181.P15179550243021854265

/-! ## A031181.P5043038979821673162

`eq[A031178(n), A113923(n)]`
-/

namespace A031181.P5043038979821673162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113923 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031181.P5043038979821673162

/-! ## A031181.P17980129109934983964

`eq[A031178(n), A180593(n)]`
-/

namespace A031181.P17980129109934983964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180593 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031181.P17980129109934983964

/-! ## A031181.P13714182856286111380

`eq[A031178(n), A239278(n)]`
-/

namespace A031181.P13714182856286111380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239278 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031181.P13714182856286111380

/-! ## A031181.P17901641698772509532

`eq[A031178(n), A292996(n)]`
-/

namespace A031181.P17901641698772509532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292996 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031181.P17901641698772509532

/-! ## A031181.P16512195529388950183

`eq[A031178(n), A366973(n)]`
-/

namespace A031181.P16512195529388950183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366973 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031181.P16512195529388950183

/-! ## A031181.P644298716339637182

`eq[A031178(n), A366982(n)]`
-/

namespace A031181.P644298716339637182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366982 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031181.P644298716339637182

/-! ## A031181.P16563661978684370027

`eq[A031178(n), A367034(n)]`
-/

namespace A031181.P16563661978684370027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031181.P16563661978684370027

/-! ## A031181.P166690292511094564

`eq[A031178(n), A074724(n+1)]`
-/

namespace A031181.P166690292511094564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074724 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031181.P166690292511094564

/-! ## A031181.P5205560118866968151

`eq[A031178(n), A139401(n+1)]`
-/

namespace A031181.P5205560118866968151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031181.P5205560118866968151

/-! ## A031181.P424278686699833150

`eq[A031178(n), A157532(n+1)]`
-/

namespace A031181.P424278686699833150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031181.P424278686699833150

/-! ## A031181.P11391351544025089090

`eq[A031178(n), A183039(n+1)]`
-/

namespace A031181.P11391351544025089090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183039 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031181.P11391351544025089090

/-!
# A031182: Periods of sum of fourth powers of digits iterated until the sequence becomes periodic.

The programs for A031182, there is no canonical definition to state claims against.
-/

/-! ## A031182.P3370937340222633634

`A269349(A375000(n+1)+A358156(n+1))`
-/

namespace A031182.P3370937340222633634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269349 (A375000 (n + 1) + A358156 (n + 1)).toNat

end

end A031182.P3370937340222633634

/-! ## A031182.P15531415290708715987

`A269349(lcm(A048594(n+1), A144907(n+1)))`
-/

namespace A031182.P15531415290708715987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269349 (Int.lcm (A048594 (n + 1)) (A144907 (n + 1)))

end

end A031182.P15531415290708715987

/-!
# A031183: Numbers having period-1 4-digitized sequences.

The programs for A031183, there is no canonical definition to state claims against.
-/

/-! ## A031183.P13973447435643488129

`eq[1, A031182(n)]`
-/

namespace A031183.P13973447435643488129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031183.P13973447435643488129

/-! ## A031183.P10558610813767876978

`lt[A031182(n), atan(A001509(n))]`
-/

namespace A031183.P10558610813767876978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A001509 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031183.P10558610813767876978

/-! ## A031183.P1490296502041081846

`lt[A031182(n), sinh(A054977(n))]`
-/

namespace A031183.P1490296502041081846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sinh (A054977 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031183.P1490296502041081846

/-! ## A031183.P18412380305685864469

`lt[A031182(n), atan(A031180(n+1))]`
-/

namespace A031183.P18412380305685864469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A031180 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031183.P18412380305685864469

/-! ## A031183.P16381795875668568184

`lt[A031182(n), atan(A031181(n+1))]`
-/

namespace A031183.P16381795875668568184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A031181 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031183.P16381795875668568184

/-! ## A031183.P16511108887266940730

`lt[A031182(n), atan(A031185(n+1))]`
-/

namespace A031183.P16511108887266940730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A031185 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031183.P16511108887266940730

/-! ## A031183.P12717447395876102194

`lt[A031182(n), atan(A031188(n+1))]`
-/

namespace A031183.P12717447395876102194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A031188 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031183.P12717447395876102194

/-! ## A031183.P16305120927419522893

`lt[A031182(n), atan(A031193(n+1))]`
-/

namespace A031183.P16305120927419522893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A031193 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031183.P16305120927419522893

/-! ## A031183.P4384203005642203188

`lt[A031182(n), atan(A031203(n+1))]`
-/

namespace A031183.P4384203005642203188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A031203 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031183.P4384203005642203188

/-! ## A031183.P6111110663127126074

`lt[A031182(n), atan(A031208(n+1))]`
-/

namespace A031183.P6111110663127126074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A031208 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031183.P6111110663127126074

/-! ## A031183.P18384259850736072840

`lt[A031182(n), A046920((-1)^n+4)]`
-/

namespace A031183.P18384259850736072840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 ((-1) ^ n + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031183.P18384259850736072840

/-! ## A031183.P3852561625199983460

`lt[A031182(n), A046923((-1)^n+4)]`
-/

namespace A031183.P3852561625199983460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046923 ((-1) ^ n + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031183.P3852561625199983460

/-! ## A031183.P3719856812599463135

`lt[A031182(n), A000005(A073751(n+1))]`
-/

namespace A031183.P3719856812599463135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A073751 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031183.P3719856812599463135

/-!
# A031184: Numbers having period-2 4-digitized sequences.

The programs for A031184, there is no canonical definition to state claims against.
-/

/-! ## A031184.P14639028728913610980

`eq[2, A031182(n)]`
-/

namespace A031184.P14639028728913610980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031184.P14639028728913610980

/-! ## A031184.P6967914090640570203

`lt[A054977(n), A031182(n)%3]`
-/

namespace A031184.P6967914090640570203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031182 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031184.P6967914090640570203

/-! ## A031184.P806105189468921979

`lt[A001222(A071695(n+1)+A031182(n))², 2]`
-/

namespace A031184.P806105189468921979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071695 (n + 1) + A031182 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031184.P806105189468921979

/-!
# A031185: Numbers having period-7 4-digitized sequences.

The programs for A031185, there is no canonical definition to state claims against.
-/

/-! ## A031185.P9186103603340533598

`eq[7, A031182(n)]`
-/

namespace A031185.P9186103603340533598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031185.P9186103603340533598

/-! ## A031185.P6292668168202531515

`lt[A054977(n), log(A031182(n))]`
-/

namespace A031185.P6292668168202531515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A031182 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031185.P6292668168202531515

/-! ## A031185.P7972974676584027369

`lt[A054429(a(n-1)), A031182(n)]` with `a(0)=5`
-/

namespace A031185.P7972974676584027369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A054429 (f1 (n - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031185.P7972974676584027369

/-! ## A031185.P10977326533375712428

`lt[A031193(n+1), n*A031182(n)]`
-/

namespace A031185.P10977326533375712428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A031182 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031185.P10977326533375712428

/-! ## A031185.P376090728297354356

`lt[A014963((-1)^n+4), A031182(n)]`
-/

namespace A031185.P376090728297354356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((-1) ^ n + 4).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031185.P376090728297354356

/-! ## A031185.P9391994149460189041

`lt[A031179((-1)^n+4), A031182(n)]`
-/

namespace A031185.P9391994149460189041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031179 ((-1) ^ n + 4).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031185.P9391994149460189041

/-! ## A031185.P16214339065966498471

`lt[A046920((-1)^n+4), A031182(n)]`
-/

namespace A031185.P16214339065966498471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 ((-1) ^ n + 4).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031185.P16214339065966498471

/-! ## A031185.P4140412219286035046

`lt[A000005(A008578(n+1)), A031182(n)]`
-/

namespace A031185.P4140412219286035046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031182 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031185.P4140412219286035046

/-!
# A031187: Numbers having period-1 5-digitized sequences.

The programs for A031187, there is no canonical definition to state claims against.
-/

/-! ## A031187.P4374918865381562944

`eq[1, A031186(n)]`
-/

namespace A031187.P4374918865381562944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031187.P4374918865381562944

/-! ## A031187.P15342211942312883166

`lt[A031186(n), atan(A001509(n))]`
-/

namespace A031187.P15342211942312883166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A001509 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031187.P15342211942312883166

/-! ## A031187.P15766175821919180705

`lt[A000720(A031186(n)+1), 2]`
-/

namespace A031187.P15766175821919180705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A031186 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031187.P15766175821919180705

/-! ## A031187.P9727091108327719957

`lt[A002024(A031186(n)²+1), 3]`
-/

namespace A031187.P9727091108327719957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A031186 n ^ 2 + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031187.P9727091108327719957

/-! ## A031187.P12885432766841744624

`lt[A031186(n)², A053669(n+1)]`
-/

namespace A031187.P12885432766841744624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031187.P12885432766841744624

/-! ## A031187.P12249676655758973306

`lt[A031186(n), atan(A031180(n+1))]`
-/

namespace A031187.P12249676655758973306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A031180 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031187.P12249676655758973306

/-! ## A031187.P11493902122220448047

`lt[A031186(n), atan(A031181(n+1))]`
-/

namespace A031187.P11493902122220448047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A031181 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031187.P11493902122220448047

/-! ## A031187.P17189488960235610254

`lt[A031186(n), atan(A031185(n+1))]`
-/

namespace A031187.P17189488960235610254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A031185 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031187.P17189488960235610254

/-! ## A031187.P6324475804707411350

`lt[A031186(n), atan(A031188(n+1))]`
-/

namespace A031187.P6324475804707411350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A031188 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031187.P6324475804707411350

/-! ## A031187.P13214313243543222308

`lt[A001222(A031186(n)), A171905(n+1)]`
-/

namespace A031187.P13214313243543222308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A031186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031187.P13214313243543222308

/-!
# A031188: Numbers having period-2 5-digitized sequences.

The programs for A031188, there is no canonical definition to state claims against.
-/

/-! ## A031188.P14178648959429299546

`eq[2, A031186(n)]`
-/

namespace A031188.P14178648959429299546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031188.P14178648959429299546

/-! ## A031188.P4157585368747126384

`lt[A056559(A031186(n)), A158387(n+1)]`
-/

namespace A031188.P4157585368747126384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 (A031186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031188.P4157585368747126384

/-! ## A031188.P17807799068598313928

`lt[A065659(A031186(n)), A014963((-1)^n+4)]`
-/

namespace A031188.P17807799068598313928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A031186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((-1) ^ n + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031188.P17807799068598313928

/-! ## A031188.P17620231515854255667

`lt[A065659(A031186(n)), A031179((-1)^n+4)]`
-/

namespace A031188.P17620231515854255667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A031186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031179 ((-1) ^ n + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031188.P17620231515854255667

/-! ## A031188.P3408018251498171690

`lt[A065659(A031186(n)), A046920((-1)^n+4)]`
-/

namespace A031188.P3408018251498171690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A031186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 ((-1) ^ n + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031188.P3408018251498171690

/-! ## A031188.P7902063977747233392

`lt[A028310(n)*A065659(A031186(n))-(n+1), 11]`
-/

namespace A031188.P7902063977747233392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A065659 (A031186 n).toNat - (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031188.P7902063977747233392

/-! ## A031188.P12990728978852964654

`lt[A056559(A031186(n)), A171905(3*n+4)]`
-/

namespace A031188.P12990728978852964654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 (A031186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031188.P12990728978852964654

/-!
# A031189: Numbers having period-4 5-digitized sequences.

The programs for A031189, there is no canonical definition to state claims against.
-/

/-! ## A031189.P8172022728933130897

`eq[4, A031186(n)]`
-/

namespace A031189.P8172022728933130897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031189.P8172022728933130897

/-! ## A031189.P3085726208470536453

`lt[A056559(A031186(n)²), 1]`
-/

namespace A031189.P3085726208470536453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 (A031186 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031189.P3085726208470536453

/-! ## A031189.P5114317517232895874

`lt[A031235(A031186(n)+1), 1]`
-/

namespace A031189.P5114317517232895874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (A031186 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031189.P5114317517232895874

/-! ## A031189.P6113031905894832894

`lt[A000032(val(A031186(n)+1, 5)), 2]`
-/

namespace A031189.P6113031905894832894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.valuation (A031186 n + 1).toNat 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031189.P6113031905894832894

/-! ## A031189.P5742735160455911306

`lt[A000007(n), A175070(A031186(n))]`
-/

namespace A031189.P5742735160455911306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175070 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031189.P5742735160455911306

/-! ## A031189.P16312000874326981854

`lt[A031186(n), A175070(A031186(n)²)]`
-/

namespace A031189.P16312000874326981854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175070 (A031186 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031189.P16312000874326981854

/-! ## A031189.P8055835151442952116

`lt[A171905(n+1), A175070(A031186(n))]`
-/

namespace A031189.P8055835151442952116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175070 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031189.P8055835151442952116

/-! ## A031189.P1127283817269126847

`lt[A295924(n+1), A295924(A031186(n))²]`
-/

namespace A031189.P1127283817269126847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295924 (A031186 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031189.P1127283817269126847

/-! ## A031189.P8807000980771223855

`lt[A175070(n+1), n*A175070(A031186(n))]`
-/

namespace A031189.P8807000980771223855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A175070 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031189.P8807000980771223855

/-! ## A031189.P17620654614477412946

`lt[A171905(3*n+4), A052409(A031186(n))]`
-/

namespace A031189.P17620654614477412946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031189.P17620654614477412946

/-!
# A031190: Numbers having period-6 5-digitized sequences.

The programs for A031190, there is no canonical definition to state claims against.
-/

/-! ## A031190.P9968915909530917405

`eq[6, A031186(n)]`
-/

namespace A031190.P9968915909530917405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031190.P9968915909530917405

/-! ## A031190.P2863218243289118879

`eq[2, A004465(A113581(n))]`
-/

namespace A031190.P2863218243289118879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004465 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031190.P2863218243289118879

/-!
# A031191: Numbers having period-10 5-digitized sequences.

The programs for A031191, there is no canonical definition to state claims against.
-/

/-! ## A031191.P9268113823584566421

`eq[10, A031186(n)]`
-/

namespace A031191.P9268113823584566421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031191.P9268113823584566421

/-! ## A031191.P2578431469326371279

`lt[1, A130595(A031186(n)+2)]`
-/

namespace A031191.P2578431469326371279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A031186 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031191.P2578431469326371279

/-! ## A031191.P1268803837565864554

`lt[A000007(n), A056965(A031186(n))]`
-/

namespace A031191.P1268803837565864554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031191.P1268803837565864554

/-! ## A031191.P1762846423217220818

`lt[A040268(n), A056965(A031186(n))]`
-/

namespace A031191.P1762846423217220818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031191.P1762846423217220818

/-! ## A031191.P9405316898087498146

`lt[A102673(n), A056965(A031186(n))]`
-/

namespace A031191.P9405316898087498146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031191.P9405316898087498146

/-! ## A031191.P6585128123903427197

`lt[A178094(n+1)², A178094(A031186(n))]`
-/

namespace A031191.P6585128123903427197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178094 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178094 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031191.P6585128123903427197

/-!
# A031192: Numbers having period-12 5-digitized sequences.

The programs for A031192, there is no canonical definition to state claims against.
-/

/-! ## A031192.P3015842844113797612

`eq[12, A031186(n)]`
-/

namespace A031192.P3015842844113797612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031192.P3015842844113797612

/-! ## A031192.P16112397759617850874

`lt[1, A031226(A031186(n)²)]`
-/

namespace A031192.P16112397759617850874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031226 (A031186 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031192.P16112397759617850874

/-! ## A031192.P2794914280915210447

`lt[2, A031233(A031186(n)²)]`
-/

namespace A031192.P2794914280915210447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031233 (A031186 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031192.P2794914280915210447

/-! ## A031192.P3286464683865054216

`lt[1, A031178(A031186(n)+1)]`
-/

namespace A031192.P3286464683865054216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031178 (A031186 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031192.P3286464683865054216

/-! ## A031192.P2172534428318634061

`lt[1, A031226(A031186(n)+2)]`
-/

namespace A031192.P2172534428318634061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031226 (A031186 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031192.P2172534428318634061

/-! ## A031192.P15913294804061944075

`lt[2, A046920(A031186(n)+1)]`
-/

namespace A031192.P15913294804061944075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (A031186 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031192.P15913294804061944075

/-! ## A031192.P7679035731767634156

`lt[2, A232089(A031186(n)+1)]`
-/

namespace A031192.P7679035731767634156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232089 (A031186 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031192.P7679035731767634156

/-! ## A031192.P14767719967570587045

`lt[A065659(A031186(n)+2), 2]`
-/

namespace A031192.P14767719967570587045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065659 (A031186 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031192.P14767719967570587045

/-! ## A031192.P2858856151053722973

`lt[A317854(A031186(n)), A057428(n)]`
-/

namespace A031192.P2858856151053722973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317854 (A031186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031192.P2858856151053722973

/-! ## A031192.P10141261672701729622

`lt[A178094(n+1), A001222(A031186(n))]`
-/

namespace A031192.P10141261672701729622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031192.P10141261672701729622

/-! ## A031192.P708875803323171759

`lt[A171905(n+1), A326644(A031186(n))]`
-/

namespace A031192.P708875803323171759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326644 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031192.P708875803323171759

/-! ## A031192.P7302944626412060413

`lt[A040268(A031186(n)+2), A031186(n)]`
-/

namespace A031192.P7302944626412060413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040268 (A031186 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031192.P7302944626412060413

/-! ## A031192.P9048108665564577867

`lt[A031184((-1)^n+4), A065665(A031186(n))]`
-/

namespace A031192.P9048108665564577867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031184 ((-1) ^ n + 4).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065665 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031192.P9048108665564577867

/-! ## A031192.P15374518209573206705

`lt[A031188((-1)^n+4), A065665(A031186(n))]`
-/

namespace A031192.P15374518209573206705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031188 ((-1) ^ n + 4).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065665 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031192.P15374518209573206705

/-!
# A031193: Numbers having period-22 5-digitized sequences.

The programs for A031193, there is no canonical definition to state claims against.
-/

/-! ## A031193.P17867792684067751445

`lt[3, A031233(A031186(n))]`
-/

namespace A031193.P17867792684067751445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031233 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031193.P17867792684067751445

/-! ## A031193.P278535931271810460

`eq[1, A288725(A031186(n)²)]`
-/

namespace A031193.P278535931271810460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288725 (A031186 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031193.P278535931271810460

/-! ## A031193.P9895342913274824141

`(n+1)*A326057(A289413(n+3))`
-/

namespace A031193.P9895342913274824141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A326057 (A289413 (n + 3)).toNat

end

end A031193.P9895342913274824141

/-! ## A031193.P5153661403079549533

`(A033676(A007519(n+1))+2)*(n+1)`
-/

namespace A031193.P5153661403079549533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033676 (A007519 (n + 1)).toNat + 2) * (n + 1 : ℤ)

end

end A031193.P5153661403079549533

/-! ## A031193.P1949338412959074037

`(n+1)*A322988(A116968(2*n+5))`
-/

namespace A031193.P1949338412959074037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A322988 (A116968 (2 * n + 5)).toNat

end

end A031193.P1949338412959074037

/-! ## A031193.P6933817827559815050

`A016777(n)+A002325(A007519(n+1))`
-/

namespace A031193.P6933817827559815050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + A002325 (A007519 (n + 1)).toNat

end

end A031193.P6933817827559815050

/-! ## A031193.P3067709306388397503

`A057427(A123986(n+1))+A016789(n)`
-/

namespace A031193.P3067709306388397503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A123986 (n + 1)).toNat + A016789 n

end

end A031193.P3067709306388397503

/-! ## A031193.P3295836300550171590

`A000027(n+1)*A122553(A007519(n+1))`
-/

namespace A031193.P3295836300550171590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A122553 (A007519 (n + 1)).toNat

end

end A031193.P3295836300550171590

/-! ## A031193.P5485424211307118767

`A054977(A051635(2*n+1))+A016789(n)`
-/

namespace A031193.P5485424211307118767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A051635 (2 * n + 1)).toNat + A016789 n

end

end A031193.P5485424211307118767

/-! ## A031193.P12003454895434201015

`A057427(A014580(3*n+1))+A016789(n)`
-/

namespace A031193.P12003454895434201015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A014580 (3 * n + 1)).toNat + A016789 n

end

end A031193.P12003454895434201015

/-! ## A031193.P2388729960138104331

`A040954(A007519(n+1))+A000027(3*n+1)`
-/

namespace A031193.P2388729960138104331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040954 (A007519 (n + 1)).toNat + A000027 (3 * n + 1)

end

end A031193.P2388729960138104331

/-! ## A031193.P606342776270905349

`A000688(A086136(n+5))+A000027(3*n+2)`
-/

namespace A031193.P606342776270905349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A086136 (n + 5)).toNat + A000027 (3 * n + 2)

end

end A031193.P606342776270905349

/-! ## A031193.P7679661035600446130

`A052409(A105128(n+5))*A055562(2*n+1)`
-/

namespace A031193.P7679661035600446130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A105128 (n + 5)).toNat * A055562 (2 * n + 1)

end

end A031193.P7679661035600446130

/-! ## A031193.P6301176829053844035

`A305253(A105184(2*n+5))+A016789(n)`
-/

namespace A031193.P6301176829053844035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305253 (A105184 (2 * n + 5)).toNat + A016789 n

end

end A031193.P6301176829053844035

/-! ## A031193.P5489279305215381897

`(n+1)*A001069(A308169(2*n+5))`
-/

namespace A031193.P5489279305215381897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001069 (A308169 (2 * n + 5)).toNat

end

end A031193.P5489279305215381897

/-!
# A031194: Numbers having period-28 5-digitized sequences.

The programs for A031194, there is no canonical definition to state claims against.
-/

/-! ## A031194.P17692001891495761255

`eq[28, A031186(n)]`
-/

namespace A031194.P17692001891495761255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031194.P17692001891495761255

/-! ## A031194.P1945434718031199154

`lt[1, A005079(A031186(n)+2)]`
-/

namespace A031194.P1945434718031199154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005079 (A031186 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031194.P1945434718031199154

/-! ## A031194.P6156188394181784050

`lt[1, A056965(A031186(n)+2)]`
-/

namespace A031194.P6156188394181784050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A031186 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031194.P6156188394181784050

/-! ## A031194.P14069142895853204802

`lt[2, A326644(A031186(n)-1)]`
-/

namespace A031194.P14069142895853204802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326644 (A031186 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031194.P14069142895853204802

/-! ## A031194.P6216912864287798086

`lt[12, A245092(A031186(n)-1)]`
-/

namespace A031194.P6216912864287798086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A031186 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031194.P6216912864287798086

/-! ## A031194.P6085345464912195381

`lt[A020639(2*n+1)², A031186(n)]`
-/

namespace A031194.P6085345464912195381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031194.P6085345464912195381

/-! ## A031194.P16668962792053263461

`lt[A002024(n+1), A157985(A031186(n))]`
-/

namespace A031194.P16668962792053263461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031194.P16668962792053263461

/-! ## A031194.P5056933518358539503

`lt[A053669(n+1), A157985(A031186(n))]`
-/

namespace A031194.P5056933518358539503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031194.P5056933518358539503

/-! ## A031194.P16182189608248231111

`lt[A295924(n+1), A157985(A031186(n))]`
-/

namespace A031194.P16182189608248231111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (A031186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031194.P16182189608248231111

/-! ## A031194.P6957454051527989932

`lt[A031186(A031186(n)+2), A031186(n)]`
-/

namespace A031194.P6957454051527989932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 (A031186 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031194.P6957454051527989932

/-! ## A031194.P16550191961252142501

`lt[A031186(n), A232089(A031186(n)-1)]`
-/

namespace A031194.P16550191961252142501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232089 (A031186 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031194.P16550191961252142501

/-!
# A031196: Numbers having period-3 6-digitized sequences.

The programs for A031196, there is no canonical definition to state claims against.
-/

/-! ## A031196.P8578540330777343252

`eq[3, A031195(n)]`
-/

namespace A031196.P8578540330777343252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031196.P8578540330777343252

/-! ## A031196.P8104701434811143519

`lt[1, A032742(A031195(n)+1)]`
-/

namespace A031196.P8104701434811143519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A031195 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031196.P8104701434811143519

/-! ## A031196.P17590801891597897360

`lt[1, A054014(A031195(n)+1)]`
-/

namespace A031196.P17590801891597897360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054014 (A031195 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031196.P17590801891597897360

/-! ## A031196.P1620968506883351518

`lt[1, A324641(A031195(n)+1)]`
-/

namespace A031196.P1620968506883351518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324641 (A031195 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031196.P1620968506883351518

/-! ## A031196.P7192235545642392234

`lt[A031235(A031195(n)+2), 1]`
-/

namespace A031196.P7192235545642392234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (A031195 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031196.P7192235545642392234

/-! ## A031196.P8187164572446390991

`lt[A051664(A031195(n)+1), A031195(n)]`
-/

namespace A031196.P8187164572446390991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (A031195 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031196.P8187164572446390991

/-!
# A031197: Numbers having period-4 6-digitized sequences.

The programs for A031197, there is no canonical definition to state claims against.
-/

/-! ## A031197.P12812324356314861893

`eq[4, A031195(n)]`
-/

namespace A031197.P12812324356314861893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031197.P12812324356314861893

/-!
# A031198: Numbers having period-10 6-digitized sequences.

The programs for A031198, there is no canonical definition to state claims against.
-/

/-! ## A031198.P18225566340679351198

`eq[10, A031195(n)]`
-/

namespace A031198.P18225566340679351198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031198.P18225566340679351198

/-! ## A031198.P8416093164236876591

`lt[A000007(n), A051632(A031195(n))]`
-/

namespace A031198.P8416093164236876591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051632 (A031195 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031198.P8416093164236876591

/-! ## A031198.P9057371865119006980

`lt[A057427(n), A051632(A031195(n))]`
-/

namespace A031198.P9057371865119006980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051632 (A031195 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031198.P9057371865119006980

/-! ## A031198.P4765490994410399176

`lt[A059841(n), A051632(A031195(n))]`
-/

namespace A031198.P4765490994410399176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051632 (A031195 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031198.P4765490994410399176

/-! ## A031198.P4248537298068974589

`lt[A121262(n), A051632(A031195(n))]`
-/

namespace A031198.P4248537298068974589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051632 (A031195 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031198.P4248537298068974589

/-! ## A031198.P9917596483931804117

`lt[A031195(A031195(n)), A031195(n²)]`
-/

namespace A031198.P9917596483931804117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031195 (A031195 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031195 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031198.P9917596483931804117

/-!
# A031199: Numbers having period-30 6-digitized sequences.

The programs for A031199, there is no canonical definition to state claims against.
-/

/-! ## A031199.P9776447956852874922

`lt[10, A031195(n)]`
-/

namespace A031199.P9776447956852874922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031199.P9776447956852874922

/-! ## A031199.P250797781295297579

`eq[A031195(n), A040210(n)]`
-/

namespace A031199.P250797781295297579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031195 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040210 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031199.P250797781295297579

/-! ## A031199.P95123442977375460

`eq[2, A065516(A031195(n)+1)]`
-/

namespace A031199.P95123442977375460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (A031195 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031199.P95123442977375460

/-! ## A031199.P15928470326442715547

`eq[2, A136414(A031195(n)+1)]`
-/

namespace A031199.P15928470326442715547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136414 (A031195 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031199.P15928470326442715547

/-! ## A031199.P11995438869022539420

`eq[1, A344969(A031195(n)+3)]`
-/

namespace A031199.P11995438869022539420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344969 (A031195 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031199.P11995438869022539420

/-! ## A031199.P3852370719046837390

`eq[1, A348987(A031195(n)+3)]`
-/

namespace A031199.P3852370719046837390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348987 (A031195 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031199.P3852370719046837390

/-! ## A031199.P13065742589431109373

`eq[1, A348987(2*A031195(n))]`
-/

namespace A031199.P13065742589431109373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348987 (2 * A031195 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031199.P13065742589431109373

/-! ## A031199.P18386843828407514348

`eq[2, A065516(2*A031195(n))]`
-/

namespace A031199.P18386843828407514348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (2 * A031195 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031199.P18386843828407514348

/-! ## A031199.P12057052200998210678

`eq[A031195(n), A031200(A031195(n)+1)]`
-/

namespace A031199.P12057052200998210678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031195 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031200 (A031195 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031199.P12057052200998210678

