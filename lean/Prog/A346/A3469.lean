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
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A346900: Number of partitions of the (n+7)-multiset {1,2,...,n,1,2,...,7} into distinct multisets.

The programs for A346900, there is no canonical definition to state claims against.
-/

/-! ## A346900.P8989222414520314690

`A346517(A155212(n+4))`
-/

namespace A346900.P8989222414520314690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A155212 (n + 4)).toNat

end

end A346900.P8989222414520314690

/-! ## A346900.P14823004865505572300

`A346517(eq[7, A002262(n)])`
-/

namespace A346900.P14823004865505572300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346900.P14823004865505572300

/-! ## A346900.P18313490650396474099

`A346517(eq[7, A025581(n)])`
-/

namespace A346900.P18313490650396474099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346900.P18313490650396474099

/-! ## A346900.P16625930672233641538

`A346517(eq[15, A099375(n)])`
-/

namespace A346900.P16625930672233641538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346900.P16625930672233641538

/-! ## A346900.P14616131622677407069

`A346517(A133263(n+7)+5)`
-/

namespace A346900.P14616131622677407069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A133263 (n + 7) + 5).toNat

end

end A346900.P14616131622677407069

/-! ## A346900.P15854095891569721049

`A346517(A000096(n+6)+8)`
-/

namespace A346900.P15854095891569721049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A000096 (n + 6) + 8).toNat

end

end A346900.P15854095891569721049

/-! ## A346900.P3144779568455042109

`A346517(A000217(n+8)-8)`
-/

namespace A346900.P3144779568455042109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A000217 (n + 8) - 8).toNat

end

end A346900.P3144779568455042109

/-! ## A346900.P13282085367878517202

`A346517(eq[8, A002260(n+1)])`
-/

namespace A346900.P13282085367878517202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346900.P13282085367878517202

/-! ## A346900.P11239869811930561977

`A346517(eq[8, A004736(n+1)])`
-/

namespace A346900.P11239869811930561977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346900.P11239869811930561977

/-!
# A346901: Number of partitions of the (n+8)-multiset {1,2,...,n,1,2,...,8} into distinct multisets.

The programs for A346901, there is no canonical definition to state claims against.
-/

/-! ## A346901.P10195804682721678214

`A346517(A167499(n+7)+3)`
-/

namespace A346901.P10195804682721678214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A167499 (n + 7) + 3).toNat

end

end A346901.P10195804682721678214

/-! ## A346901.P11971335655731080116

`A346517(A027379(n+7)-6)`
-/

namespace A346901.P11971335655731080116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A027379 (n + 7) - 6).toNat

end

end A346901.P11971335655731080116

/-! ## A346901.P6937382542857550210

`A346517(A133263(n+8)+6)`
-/

namespace A346901.P6937382542857550210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A133263 (n + 8) + 6).toNat

end

end A346901.P6937382542857550210

/-! ## A346901.P10121285421914131230

`A346517(A000124(n+8)+7)`
-/

namespace A346901.P10121285421914131230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A000124 (n + 8) + 7).toNat

end

end A346901.P10121285421914131230

/-! ## A346901.P8717340959438085450

`A346517(A000217(n+9)-9)`
-/

namespace A346901.P8717340959438085450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (A000217 (n + 9) - 9).toNat

end

end A346901.P8717340959438085450

/-!
# A346902: Number of partitions of the (n+9)-multiset {1,2,...,n,1,2,...,9} into distinct multisets.

The programs for A346902, there is no canonical definition to state claims against.
-/

/-! ## A346902.P9286516757813115564

`A346517(eq[9, A002262(n)])`
-/

namespace A346902.P9286516757813115564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346902.P9286516757813115564

/-! ## A346902.P14237375570986518173

`A346517(eq[9, A025581(n)])`
-/

namespace A346902.P14237375570986518173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346902.P14237375570986518173

/-! ## A346902.P11898776185440578908

`A346517(eq[10, A002260(n+1)])`
-/

namespace A346902.P11898776185440578908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346902.P11898776185440578908

/-! ## A346902.P7577632852727112466

`A346517(eq[10, A004736(n+1)])`
-/

namespace A346902.P7577632852727112466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346902.P7577632852727112466

/-! ## A346902.P16646575625305403992

`A346517(eq[10, A208233(n+1)])`
-/

namespace A346902.P16646575625305403992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346902.P16646575625305403992

/-! ## A346902.P14356441505006189970

`A346517(eq[10, A208234(n+1)])`
-/

namespace A346902.P14356441505006189970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346902.P14356441505006189970

/-!
# A346903: Number of partitions of the (n+10)-multiset {1,2,...,n,1,2,...,10} into distinct multisets.

The programs for A346903, there is no canonical definition to state claims against.
-/

/-! ## A346903.P2377366966507930606

`A346517(eq[10, A002262(n)])`
-/

namespace A346903.P2377366966507930606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346903.P2377366966507930606

/-! ## A346903.P15293949293743696596

`A346517(eq[10, A025581(n)])`
-/

namespace A346903.P15293949293743696596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346903.P15293949293743696596

/-! ## A346903.P6973652888294400633

`A346517(eq[11, A002260(n+1)])`
-/

namespace A346903.P6973652888294400633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346903.P6973652888294400633

/-! ## A346903.P15408599407366742856

`A346517(eq[11, A004736(n+1)])`
-/

namespace A346903.P15408599407366742856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346903.P15408599407366742856

/-! ## A346903.P2783467817247260738

`A346517(eq[11, A208233(n+1)])`
-/

namespace A346903.P2783467817247260738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346903.P2783467817247260738

/-! ## A346903.P4433194258643150305

`A346517(eq[11, A208234(n+1)])`
-/

namespace A346903.P4433194258643150305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346903.P4433194258643150305

/-!
# A346905: Triangle read by rows: T(n,k) is the number of ways of choosing a k-dimensional cube from the vertices of an n-dimensional hypercube; 0 <= k <= n.

The programs for A346905, there is no canonical definition to state claims against.
-/

/-! ## A346905.P15430711996276981360

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A346906(n)`
-/

namespace A346905.P15430711996276981360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A346906 n : ℚ)

end

end A346905.P15430711996276981360

/-! ## A346905.P7065231925139794106

`A130321(n)*A346906(n)`
-/

namespace A346905.P7065231925139794106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A346906 n

end

end A346905.P7065231925139794106

/-! ## A346905.P8849980799484054486

`sqrt(A262616(n))*A346906(n)`
-/

namespace A346905.P8849980799484054486
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A346906 n : ℝ)

end

end A346905.P8849980799484054486

/-! ## A346905.P12444626180752106749

`A059268(∑[2*n]%comp[∑[n]])*A346906(n)`
-/

namespace A346905.P12444626180752106749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) * A346906 n

end

end A346905.P12444626180752106749

/-! ## A346905.P9556671259276380256

`A000079(A025581(n))*A346906(n)`
-/

namespace A346905.P9556671259276380256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A346906 n

end

end A346905.P9556671259276380256

/-! ## A346905.P8758397340840763997

`A059268(A061579(n))*A346906(n)`
-/

namespace A346905.P8758397340840763997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A346906 n

end

end A346905.P8758397340840763997

/-! ## A346905.P7288733243434566583

`A003602(A130330(n))*A346906(n)`
-/

namespace A346905.P7288733243434566583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A130330 n).toNat * A346906 n

end

end A346905.P7288733243434566583

/-! ## A346905.P10852262313262287611

`A011782(A004736(n+1))*A346906(n)`
-/

namespace A346905.P10852262313262287611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004736 (n + 1)).toNat * A346906 n

end

end A346905.P10852262313262287611

/-! ## A346905.P5540750022304271726

`A038502(A036561(n))*A346906(n)`
-/

namespace A346905.P5540750022304271726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A036561 n).toNat * A346906 n

end

end A346905.P5540750022304271726

/-!
# A346906: Triangle read by rows: T(n,k) is the number of ways of choosing a k-dimensional cube from the vertices of an n-dimensional hypercube, where one of the vertices is the origin; 0 <= k <= n.

The programs for A346906, there is no canonical definition to state claims against.
-/

/-! ## A346906.P9688412051023521439

`A346905(n)/2^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A346906.P9688412051023521439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346905 n : ℚ) / (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A346906.P9688412051023521439

/-! ## A346906.P14311279083982655903

`A346905(n)/A130321(n)`
-/

namespace A346906.P14311279083982655903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346905 n : ℚ) / (A130321 n : ℚ)

end

end A346906.P14311279083982655903

/-! ## A346906.P725023044021611775

`A346905(n)/sqrt(A262616(n))`
-/

namespace A346906.P725023044021611775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A346905 n : ℝ) / Real.sqrt (A262616 n : ℝ)

end

end A346906.P725023044021611775

/-! ## A346906.P17324346219082911373

`A346905(n)/A329562(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A346906.P17324346219082911373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346905 n : ℚ) / (A329562 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) : ℚ)

end

end A346906.P17324346219082911373

/-! ## A346906.P12025372630824280496

`A346905(n)/A000079(A025581(n))`
-/

namespace A346906.P12025372630824280496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346905 n : ℚ) / (A000079 (A025581 n).toNat : ℚ)

end

end A346906.P12025372630824280496

/-! ## A346906.P3091082776723708291

`A346905(n)/A016116(A099375(n))`
-/

namespace A346906.P3091082776723708291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346905 n : ℚ) / (A016116 (A099375 n).toNat : ℚ)

end

end A346906.P3091082776723708291

/-! ## A346906.P4614429186326848726

`A346905(n)/A059268(A061579(n))`
-/

namespace A346906.P4614429186326848726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346905 n : ℚ) / (A059268 (A061579 n).toNat : ℚ)

end

end A346906.P4614429186326848726

/-! ## A346906.P1761488559374109935

`A346905(n)/A003602(A130330(n))`
-/

namespace A346906.P1761488559374109935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346905 n : ℚ) / (A003602 (A130330 n).toNat : ℚ)

end

end A346906.P1761488559374109935

/-! ## A346906.P10669418569671066000

`A346905(n)/A011782(A004736(n+1))`
-/

namespace A346906.P10669418569671066000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346905 n : ℚ) / (A011782 (A004736 (n + 1)).toNat : ℚ)

end

end A346906.P10669418569671066000

/-!
# A346907: Decimal expansion of 2 - 3 * Pi^3 / (2^6 * sqrt(2)).

The programs for A346907, there is no canonical definition to state claims against.
-/

/-! ## A346907.P10232920639658329159

`9-A251809(n+1)`
-/

namespace A346907.P10232920639658329159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A251809 (n + 1 + 1)

end

end A346907.P10232920639658329159

/-!
# A346908: Decimal expansion of 2 - Pi / (2*sqrt(2)).

The programs for A346908, there is no canonical definition to state claims against.
-/

/-! ## A346908.P16860670473610842793

`9-A093954(n+1)`
-/

namespace A346908.P16860670473610842793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A093954 (n + 1 + 1)

end

end A346908.P16860670473610842793

/-!
# A346910: Numbers k such that k and k+1 are both nonprime-powers whose all distinct prime divisors are consecutive primes (A066312).

The programs for A346910, there is no canonical definition to state claims against.
-/

/-! ## A346910.P16562267405405307200

`∩[A066312(n+1)-1, A066312(n+1)]`
-/

namespace A346910.P16562267405405307200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346910.P16562267405405307200

/-! ## A346910.P7663625920087973051

`∩[A066312(n+1), A023443(A066312(n+1))]`
-/

namespace A346910.P7663625920087973051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A066312 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346910.P7663625920087973051

/-!
# A346911: Triangle read by rows: T(n,k) is the number of k-dimensional simplices with vertices from the n-dimensional cross polytope; 0 <= k < n.

The programs for A346911, there is no canonical definition to state claims against.
-/

/-! ## A346911.P6306600282468071944

`A276985(n+1)+A127648(A038722(n+1))`
-/

namespace A346911.P6306600282468071944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276985 (n + 1) + A127648 (A038722 (n + 1)).toNat

end

end A346911.P6306600282468071944

/-! ## A346911.P7181596039327938091

`A127648(A038722(n+1))+A038207(A099375(n)+n)`
-/

namespace A346911.P7181596039327938091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (A038722 (n + 1)).toNat + A038207 (A099375 n + (n : ℤ)).toNat

end

end A346911.P7181596039327938091

/-!
# A346912: a(0) = 1; a(n) = a(n-1) + a(floor(n/2)) + 1.

The programs for A346912, the canonical program `A346912.P842760097947000706` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346912 has offset 0).

The definition of A346912 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(floor(n/2))+1` (program `A346912.P842760097947000706`, by `A346912.P842760097947000706.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A346912.P842760097947000706

`a(n-1)+a(floor(n/2))+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A346912

/-- `a(n-1)+a(floor(n/2))+1` -/
def P842760097947000706.Spec : Prop :=
  ∀ n, (P842760097947000706.a n : ℤ) = A346912 n

theorem P842760097947000706.correct : P842760097947000706.Spec := by
  intro n
  simp only [A346912]

end A346912

/-! ## A346912.P18219198765337584717

`2*A000123(n)-1`
-/

namespace A346912.P18219198765337584717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000123 n - 1

end

end A346912.P18219198765337584717

namespace A346912

/-- `2*A000123(n)-1` -/
def P18219198765337584717.Spec : Prop :=
  ∀ n, P18219198765337584717.a n = A346912 n

end A346912

/-! ## A346912.P7107840781026043433

`a(n-1)+1+a(floor(n/2))` with `a(0)=1`
-/

namespace A346912.P7107840781026043433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 + a ⌊(n : ℚ) / 2⌋.toNat

end

end A346912.P7107840781026043433

namespace A346912

/-- `a(n-1)+1+a(floor(n/2))` -/
def P7107840781026043433.Spec : Prop :=
  ∀ n, (P7107840781026043433.a n : ℤ) = A346912 n

theorem P7107840781026043433.correct : P7107840781026043433.Spec := by
  intro n
  simp only [A346912, Nat.add_sub_cancel, A346912.P7107840781026043433.a, A346912.P842760097947000706.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A346912

/-! ## A346912.P1229058623834589561

`or(2, a(n-1)-(1-a(floor(n/2))))` with `a(0)=1`
-/

namespace A346912.P1229058623834589561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 (a (n - 1) - (1 - a ⌊(n : ℚ) / 2⌋.toNat))

end

end A346912.P1229058623834589561

namespace A346912

/-- `or(2, a(n-1)-(1-a(floor(n/2))))` -/
def P1229058623834589561.Spec : Prop :=
  ∀ n, P1229058623834589561.a n = A346912 n

end A346912

/-! ## A346912.P5541368982668101981

`xor(2, a(n-1)-(1-a(floor(n/2))))` with `a(0)=1`
-/

namespace A346912.P5541368982668101981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 2 (a (n - 1) - (1 - a ⌊(n : ℚ) / 2⌋.toNat))

end

end A346912.P5541368982668101981

namespace A346912

/-- `xor(2, a(n-1)-(1-a(floor(n/2))))` -/
def P5541368982668101981.Spec : Prop :=
  ∀ n, P5541368982668101981.a n = A346912 n

end A346912

/-! ## A346912.P15403884148056346990

`2-floor(1-a(n-1)-a(floor(n/2)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A346912.P15403884148056346990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (1 - a (n - 1) - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A346912.P15403884148056346990

namespace A346912

/-- `2-floor(1-a(n-1)-a(floor(n/2)))` -/
def P15403884148056346990.Spec : Prop :=
  ∀ n, P15403884148056346990.a n = A346912 n

end A346912

/-! ## A346912.P14847836289901569758

`∑[2*A018819(n)]-1`
-/

namespace A346912.P14847836289901569758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A346912.P14847836289901569758

namespace A346912

/-- `∑[2*A018819(n)]-1` -/
def P14847836289901569758.Spec : Prop :=
  ∀ n, P14847836289901569758.a n = A346912 n

end A346912

/-! ## A346912.P7446860925616474194

`A000123(n)+∑[A018819(n)]-1`
-/

namespace A346912.P7446860925616474194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A346912.P7446860925616474194

namespace A346912

/-- `A000123(n)+∑[A018819(n)]-1` -/
def P7446860925616474194.Spec : Prop :=
  ∀ n, P7446860925616474194.a n = A346912 n

end A346912

/-! ## A346912.P704431032803070960

`A000123(n)+A000123(n)-A057427(n+1)`
-/

namespace A346912.P704431032803070960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n + (A000123 n - A057427 (n + 1))

end

end A346912.P704431032803070960

namespace A346912

/-- `A000123(n)+A000123(n)-A057427(n+1)` -/
def P704431032803070960.Spec : Prop :=
  ∀ n, P704431032803070960.a n = A346912 n

end A346912

/-! ## A346912.P8520791312815079489

`A102378(n+1)+A000123(n)-A018819(n+1)`
-/

namespace A346912.P8520791312815079489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102378 (n + 1) + (A000123 n - A018819 (n + 1))

end

end A346912.P8520791312815079489

namespace A346912

/-- `A102378(n+1)+A000123(n)-A018819(n+1)` -/
def P8520791312815079489.Spec : Prop :=
  ∀ n, P8520791312815079489.a n = A346912 n

end A346912

/-! ## A346912.P7644488362580680677

`2*A018819(2*n)-1`
-/

namespace A346912.P7644488362580680677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018819 (2 * n) - 1

end

end A346912.P7644488362580680677

namespace A346912

/-- `2*A018819(2*n)-1` -/
def P7644488362580680677.Spec : Prop :=
  ∀ n, P7644488362580680677.a n = A346912 n

end A346912

/-! ## A346912.P9671198025564100873

`A033999(2*n+1)+2*A018819(2*n)`
-/

namespace A346912.P9671198025564100873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + 2 * A018819 (2 * n)

end

end A346912.P9671198025564100873

namespace A346912

/-- `A033999(2*n+1)+2*A018819(2*n)` -/
def P9671198025564100873.Spec : Prop :=
  ∀ n, P9671198025564100873.a n = A346912 n

end A346912

/-! ## A346912.P15823111038206595766

`record[2*A089688(n)-1]`
-/

namespace A346912.P15823111038206595766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089688 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346912.P15823111038206595766

namespace A346912

/-- `record[2*A089688(n)-1]` -/
def P15823111038206595766.Spec : Prop :=
  ∀ n, P15823111038206595766.a n = A346912 n

end A346912

/-! ## A346912.P13947429699461248172

`record[2*A292477(n)-1]`
-/

namespace A346912.P13947429699461248172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292477 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346912.P13947429699461248172

namespace A346912

/-- `record[2*A292477(n)-1]` -/
def P13947429699461248172.Spec : Prop :=
  ∀ n, P13947429699461248172.a n = A346912 n

end A346912

/-!
# A346913: Irregular triangle read by rows where each row is the level sequence of a rooted tree in Beyer and Hedetniemi's iteration.

The programs for A346913, there is no canonical definition to state claims against.
-/

/-! ## A346913.P15530264160797101924

`A193929(A265691(n+1)^5)`
-/

namespace A346913.P15530264160797101924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (A265691 (n + 1) ^ 5).toNat

end

end A346913.P15530264160797101924

/-! ## A346913.P5968557372658454585

`A278161(5^A265691(n+1))`
-/

namespace A346913.P5968557372658454585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278161 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A265691 (n + 1) : ℤ))).toNat

end

end A346913.P5968557372658454585

/-! ## A346913.P9608789853740930814

`A286574(A212953(A265691(n+1)²))`
-/

namespace A346913.P9608789853740930814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286574 (A212953 (A265691 (n + 1) ^ 2).toNat).toNat

end

end A346913.P9608789853740930814

/-! ## A346913.P17807940063365244364

`A060500(A098836(A265691(n+1)!))`
-/

namespace A346913.P17807940063365244364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A098836 (Nat.factorial (A265691 (n + 1)).toNat)).toNat

end

end A346913.P17807940063365244364

/-! ## A346913.P1605629368842924703

`A193929(A265691(n+1)²²*A265691(n+1))`
-/

namespace A346913.P1605629368842924703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 ((A265691 (n + 1) ^ 2) ^ 2 * A265691 (n + 1)).toNat

end

end A346913.P1605629368842924703

/-!
# A346914: Irregular triangle read by rows where each row is the vertex parent array of a rooted forest in Knuth's form of Beyer and Hedetniemi's iteration.

The programs for A346914, there is no canonical definition to state claims against.
-/

/-! ## A346914.P15115822429869973357

`A188037(A184723(2*n+1))*A283530(n+1)`
-/

namespace A346914.P15115822429869973357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (A184723 (2 * n + 1)).toNat * A283530 (n + 1)

end

end A346914.P15115822429869973357

/-! ## A346914.P7231994579442306437

`val(A118761(A278233(2*(n+1))), 5)`
-/

namespace A346914.P7231994579442306437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A118761 (A278233 (2 * (n + 1))).toNat).toNat 5

end

end A346914.P7231994579442306437

/-! ## A346914.P9797129398796431318

`gcd(4, and(A059252(n), A247575(n+2)))%4`
-/

namespace A346914.P9797129398796431318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (Int.land (A059252 n) (A247575 (n + 2))) % 4

end

end A346914.P9797129398796431318

/-! ## A346914.P5830847782979902671

`A080843(A026008(n)-A121444(n))`
-/

namespace A346914.P5830847782979902671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A026008 n - A121444 n).toNat

end

end A346914.P5830847782979902671

/-! ## A346914.P17898921493650387536

`A055641(A008805(n)*A124270(n+1))`
-/

namespace A346914.P17898921493650387536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A008805 n * A124270 (n + 1)).toNat

end

end A346914.P17898921493650387536

/-!
# A346917: Numbers that are a sum of the cubes of four primes, not necessarily distinct.

The programs for A346917, there is no canonical definition to state claims against.
-/

/-! ## A346917.P3682012851548856557

`A112681(2*n+3)+A004159(A224239(n+1))`
-/

namespace A346917.P3682012851548856557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112681 (2 * n + 3) + A004159 (A224239 (n + 1)).toNat

end

end A346917.P3682012851548856557

/-! ## A346917.P11036971329139631419

`A328672(A264665(3*n+1))+A108587(3*n+5)`
-/

namespace A346917.P11036971329139631419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328672 (A264665 (3 * n + 1)).toNat + A108587 (3 * n + 5)

end

end A346917.P11036971329139631419

/-!
# A346919: Numbers that are both palindromes (A002113) and terms of A072389.

The programs for A346919, there is no canonical definition to state claims against.
-/

/-! ## A346919.P16623709882360411871

`∩[A002113(n+1), A072389(n+1)]`
-/

namespace A346919.P16623709882360411871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346919.P16623709882360411871

/-! ## A346919.P3621661800774911396

`∩[4*A085780(n+1), A002113(n+1)]`
-/

namespace A346919.P3621661800774911396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A085780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346919.P3621661800774911396

/-! ## A346919.P9062164256868434577

`∩[4*A085780(n+1), A029951(n+1)]`
-/

namespace A346919.P9062164256868434577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A085780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346919.P9062164256868434577

/-!
# A346921: Expansion of e.g.f. 1 / (1 - log(1 - x)^2 / 2).

The programs for A346921, there is no canonical definition to state claims against.
-/

/-! ## A346921.P3679552550597884021

`Δ[A347609(round(ϕ^n/sqrt(5))²+1)]`
-/

namespace A346921.P3679552550597884021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346921.P3679552550597884021

/-! ## A346921.P9649962305145097230

`A153174(record[n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]²)`
-/

namespace A346921.P9649962305145097230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153174 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2)).toNat

end

end A346921.P9649962305145097230

/-!
# A346922: Expansion of e.g.f. 1 / (1 + log(1 - x)^3 / 3!).

The programs for A346922, there is no canonical definition to state claims against.
-/

/-! ## A346922.P5282505023583521334

`A194369(a(n-1)-1+n)-1` with `a(0)=1`
-/

namespace A346922.P5282505023583521334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194369 (a (n - 1) - 1 + (n : ℤ)).toNat - 1

end

end A346922.P5282505023583521334

/-! ## A346922.P10801526318273990604

`A033182(A030960(n+1)-1)`
-/

namespace A346922.P10801526318273990604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A030960 (n + 1) - 1).toNat

end

end A346922.P10801526318273990604

/-! ## A346922.P3861457280139644578

`A138468(xor(7, A318344(n+1)))`
-/

namespace A346922.P3861457280139644578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138468 (Int.xor 7 (A318344 (n + 1))).toNat

end

end A346922.P3861457280139644578

/-!
# A346923: Expansion of e.g.f. 1 / (1 - log(1 - x)^4 / 4!).

The programs for A346923, there is no canonical definition to state claims against.
-/

/-! ## A346923.P13444188226402856033

`A347003(n)+A185034(A185034(n))`
-/

namespace A346923.P13444188226402856033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347003 n + A185034 (A185034 n).toNat

end

end A346923.P13444188226402856033

/-! ## A346923.P138268195490542412

`A347003(n)+A185234(A185234(n))`
-/

namespace A346923.P138268195490542412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347003 n + A185234 (A185234 n).toNat

end

end A346923.P138268195490542412

/-! ## A346923.P5473542504149102588

`or(A032741(A353882(n+1)), A347003(n))`
-/

namespace A346923.P5473542504149102588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032741 (A353882 (n + 1)).toNat) (A347003 n)

end

end A346923.P5473542504149102588

/-! ## A346923.P6805843747752066036

`or(A032741(A353885(n+1)), A347003(n))`
-/

namespace A346923.P6805843747752066036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032741 (A353885 (n + 1)).toNat) (A347003 n)

end

end A346923.P6805843747752066036

/-! ## A346923.P1506370979550702687

`or(A032741(A353893(n+1)), A347003(n))`
-/

namespace A346923.P1506370979550702687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032741 (A353893 (n + 1)).toNat) (A347003 n)

end

end A346923.P1506370979550702687

/-!
# A346924: Expansion of e.g.f. 1 / (1 + log(1 - x)^5 / 5!).

The programs for A346924, there is no canonical definition to state claims against.
-/

/-! ## A346924.P13593822433930886939

`abs(A354137(n^∑[char[10*n]]))`
-/

namespace A346924.P13593822433930886939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A354137 (n ^ (∑ j ∈ Finset.range (n + 1), f1 j))|

end

end A346924.P13593822433930886939

/-! ## A346924.P4801626332246038210

`A347004(n^(1-∑{digits}[n, #]+n))`
-/

namespace A346924.P4801626332246038210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347004 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ) : ℤ))).toNat

end

end A346924.P4801626332246038210

/-! ## A346924.P729559963766569394

`A347004(lcm(n, (n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9))`
-/

namespace A346924.P729559963766569394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347004 (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (((n : ℤ) - 9 * ⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℚ) * (((10 : ℚ) ^ (⌊(n + 8 : ℚ) / 9⌋ : ℤ) - 1) / 9))))

end

end A346924.P729559963766569394

/-! ## A346924.P15000557804057894051

`A347004(A024662(n))`
-/

namespace A346924.P15000557804057894051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347004 (A024662 n).toNat

end

end A346924.P15000557804057894051

/-! ## A346924.P7907655502392708511

`A347004(A051022(n))`
-/

namespace A346924.P7907655502392708511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347004 (A051022 n).toNat

end

end A346924.P7907655502392708511

/-!
# A346925: a(n) = Sum_{d|n} mu(n/d) * binomial(3*d,d) / (2*d+1).

The programs for A346925, the canonical program `A346925.P7741388599323349336` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346925 has offset 1).

The definition of A346925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346925.P7741388599323349336

`∑{d}[n+1, A008683((n+1)/#)*C(3*#, #)/(2*#+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A346925

/-- `∑{d}[n+1, A008683((n+1)/#)*C(3*#, #)/(2*#+1)]` -/
def P7741388599323349336.Spec : Prop :=
  ∀ n, P7741388599323349336.a n = (A346925 (n + 1) : ℚ)

end A346925

/-! ## A346925.P17238032652711940521

`record[A342154(n)+A121871(n+1)]`
-/

namespace A346925.P17238032652711940521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342154 n + A121871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346925.P17238032652711940521

namespace A346925

/-- `record[A342154(n)+A121871(n+1)]` -/
def P17238032652711940521.Spec : Prop :=
  ∀ n, P17238032652711940521.a n = A346925 (n + 1)

end A346925

/-!
# A346926: a(n) is the smallest positive integer whose square starts and ends with exactly n identical digits, and a(n) = 0 when there is no such integer.

The programs for A346926, there is no canonical definition to state claims against.
-/

/-! ## A346926.P611734086778701602

`A119981(A238476(n+1))*A174499(n+1)`
-/

namespace A346926.P611734086778701602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119981 (A238476 (n + 1)).toNat * A174499 (n + 1)

end

end A346926.P611734086778701602

/-! ## A346926.P2349104702450741549

`A174499(n+1)*A193356(A174449(3*n))`
-/

namespace A346926.P2349104702450741549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174499 (n + 1) * A193356 (A174449 (3 * n)).toNat

end

end A346926.P2349104702450741549

/-! ## A346926.P13213250367791236642

`A174499(n+1)*A385369(A048993(3*n))`
-/

namespace A346926.P13213250367791236642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174499 (n + 1) * A385369 (A048993 (3 * n)).toNat

end

end A346926.P13213250367791236642

/-! ## A346926.P1951993207747673400

`A174499(n+1)%A174499(A049041(n+1))`
-/

namespace A346926.P1951993207747673400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174499 (n + 1)) (A174499 (A049041 (n + 1)).toNat)

end

end A346926.P1951993207747673400

/-!
# A346928: Irregular triangle read by rows; the n-th row contains, in ascending order, the distinct integers of the form n! / m! (with 1 <= m <= n) that do not appear in former rows.

The programs for A346928, there is no canonical definition to state claims against.
-/

/-! ## A346928.P6914999155426346608

`A068424(lt[A120375(n+1), (A292879(n+1)+1)²])`
-/

namespace A346928.P6914999155426346608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A292879 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068424 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A346928.P6914999155426346608

/-! ## A346928.P16226850542722443125

`A181511(A080036(n)^A172359(n))`
-/

namespace A346928.P16226850542722443125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181511 (SequenceMachineLib.roundAway ((A080036 n : ℚ) ^ (A172359 n : ℤ))).toNat

end

end A346928.P16226850542722443125

/-! ## A346928.P4288716574152048694

`A121663(eq[A124774(n), A124776(n)])`
-/

namespace A346928.P4288716574152048694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A346928.P4288716574152048694

/-! ## A346928.P9564436482443977119

`A008279(lt[A079404(n+2), A157154(n)])`
-/

namespace A346928.P9564436482443977119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079404 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A346928.P9564436482443977119

/-! ## A346928.P5003278960963099176

`A324392(A386822(n))`
-/

namespace A346928.P5003278960963099176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324392 (A386822 n).toNat

end

end A346928.P5003278960963099176

/-!
# A346935: a(n) = Sum_{d|n} mu(n/d) * binomial(4*d,d) / (3*d+1).

The programs for A346935, the canonical program `A346935.P5274769031116077813` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346935 has offset 1).

The definition of A346935 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346935.P5274769031116077813

`∑{d}[n+1, A008683((n+1)/#)*C(4*#, #)/(3*#+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A346935

/-- `∑{d}[n+1, A008683((n+1)/#)*C(4*#, #)/(3*#+1)]` -/
def P5274769031116077813.Spec : Prop :=
  ∀ n, P5274769031116077813.a n = (A346935 (n + 1) : ℚ)

end A346935

/-!
# A346936: a(n) = Sum_{d|n} mu(n/d) * binomial(5*d,d) / (4*d+1).

The programs for A346936, the canonical program `A346936.P16740282395909997012` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346936 has offset 1).

The definition of A346936 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346936.P16740282395909997012

`∑{d}[n+1, A008683((n+1)/#)*C(5*#, #)/(4*#+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A346936

/-- `∑{d}[n+1, A008683((n+1)/#)*C(5*#, #)/(4*#+1)]` -/
def P16740282395909997012.Spec : Prop :=
  ∀ n, P16740282395909997012.a n = (A346936 (n + 1) : ℚ)

end A346936

/-!
# A346937: a(n) = Sum_{d|n} mu(n/d) * binomial(6*d,d) / (5*d+1).

The programs for A346937, the canonical program `A346937.P14960154957805133612` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346937 has offset 1).

The definition of A346937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346937.P14960154957805133612

`∑{d}[n+1, A008683((n+1)/#)*C(6*#, #)/(5*#+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A346937

/-- `∑{d}[n+1, A008683((n+1)/#)*C(6*#, #)/(5*#+1)]` -/
def P14960154957805133612.Spec : Prop :=
  ∀ n, P14960154957805133612.a n = (A346937 (n + 1) : ℚ)

end A346937

/-!
# A346938: a(n) = Sum_{d|n} mu(n/d) * binomial(7*d,d) / (6*d+1).

The programs for A346938, the canonical program `A346938.P13715173323895513385` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346938 has offset 1).

The definition of A346938 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346938.P13715173323895513385

`∑{d}[n+1, A008683((n+1)/#)*C(7*#, #)/(6*#+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A346938

/-- `∑{d}[n+1, A008683((n+1)/#)*C(7*#, #)/(6*#+1)]` -/
def P13715173323895513385.Spec : Prop :=
  ∀ n, P13715173323895513385.a n = (A346938 (n + 1) : ℚ)

end A346938

/-!
# A346939: a(n) = Sum_{d|n} mu(n/d) * binomial(8*d,d) / (7*d+1).

The programs for A346939, the canonical program `A346939.P10998234381404286433` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346939 has offset 1).

The definition of A346939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346939.P10998234381404286433

`∑{d}[n+1, A008683((n+1)/#)*C(8*#, #)/(7*#+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A346939

/-- `∑{d}[n+1, A008683((n+1)/#)*C(8*#, #)/(7*#+1)]` -/
def P10998234381404286433.Spec : Prop :=
  ∀ n, P10998234381404286433.a n = (A346939 (n + 1) : ℚ)

end A346939

/-!
# A346940: Numbers whose square starts with exactly 4 identical digits.

The programs for A346940, there is no canonical definition to state claims against.
-/

/-! ## A346940.P12804324119351394829

`A132391(comp[10*n]%A167461(n+1))`
-/

namespace A346940.P12804324119351394829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132391 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A167461 (n + 1))).toNat

end

end A346940.P12804324119351394829

/-! ## A346940.P5460388781505189053

`A132391(A067251(n+1))%A167461(n+1)`
-/

namespace A346940.P5460388781505189053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132391 (A067251 (n + 1)).toNat) (A167461 (n + 1))

end

end A346940.P5460388781505189053

/-! ## A346940.P1793715585980888058

`A132391(or(A067251(n+1), A185284(2*n+3)))`
-/

namespace A346940.P1793715585980888058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132391 (Int.lor (A067251 (n + 1)) (A185284 (2 * n + 3))).toNat

end

end A346940.P1793715585980888058

/-!
# A346941: E.g.f.: Product_{k>=1} 1 / (1 - x^k)^cos(x).

The programs for A346941, there is no canonical definition to state claims against.
-/

/-! ## A346941.P7490254571420780864

`A103221(A278392(n))+and(1, n+1)`
-/

namespace A346941.P7490254571420780864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A278392 n).toNat + (Nat.land 1 (n + 1) : ℤ)

end

end A346941.P7490254571420780864

/-! ## A346941.P1085311464958363713

`A143398(n)+A029917(A171803(n))`
-/

namespace A346941.P1085311464958363713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143398 n + A029917 (A171803 n).toNat

end

end A346941.P1085311464958363713

/-!
# A346942: Numbers whose square starts and ends with exactly 4 identical digits.

The programs for A346942, there is no canonical definition to state claims against.
-/

/-! ## A346942.P4112117787784979501

`10*A008592(A132391(n+1))`
-/

namespace A346942.P4112117787784979501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A008592 (A132391 (n + 1)).toNat

end

end A346942.P4112117787784979501

/-! ## A346942.P4942798835102937054

`10*A008592(A346940(n+1))`
-/

namespace A346942.P4942798835102937054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A008592 (A346940 (n + 1)).toNat

end

end A346942.P4942798835102937054

/-! ## A346942.P329634189586097949

`A143970(A143970(n))²*A132391(n+1)`
-/

namespace A346942.P329634189586097949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143970 (A143970 n).toNat ^ 2 * A132391 (n + 1)

end

end A346942.P329634189586097949

/-! ## A346942.P18109807000555959173

`A143970(A143970(n))²*A346940(n+1)`
-/

namespace A346942.P18109807000555959173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143970 (A143970 n).toNat ^ 2 * A346940 (n + 1)

end

end A346942.P18109807000555959173

/-!
# A346943: a(n) = a(n-1) + n*(n+1)*a(n-2) with a(0)=1, a(1)=1.

The programs for A346943, the canonical program `A346943.P12632916990111295225` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346943 has offset 0).

The definition of A346943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+n*(n+1)*a(n-2)` (program `A346943.P12632916990111295225`, by `A346943.P12632916990111295225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A346943.P12632916990111295225

`a(n-1)+n*(n+1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A346943

/-- `a(n-1)+n*(n+1)*a(n-2)` -/
def P12632916990111295225.Spec : Prop :=
  ∀ n, (P12632916990111295225.a n : ℤ) = A346943 n

theorem P12632916990111295225.correct : P12632916990111295225.Spec := by
  intro n
  simp only [A346943]

end A346943

/-! ## A346943.P8299654336161919353

`a(n-1)+2*a(n-2)*∑[n]` with `a(0)=1, a(1)=1`
-/

namespace A346943.P8299654336161919353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 2 * (a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A346943.P8299654336161919353

namespace A346943

/-- `a(n-1)+2*a(n-2)*∑[n]` -/
def P8299654336161919353.Spec : Prop :=
  ∀ n, (P8299654336161919353.a n : ℤ) = A346943 n

end A346943

/-! ## A346943.P7502137998398618550

`A001900(n+1)-A000246(n+2)`
-/

namespace A346943.P7502137998398618550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001900 (n + 1) - A000246 (n + 2)

end

end A346943.P7502137998398618550

namespace A346943

/-- `A001900(n+1)-A000246(n+2)` -/
def P7502137998398618550.Spec : Prop :=
  ∀ n, P7502137998398618550.a n = A346943 n

end A346943

/-! ## A346943.P8868892473408048318

`A001900(n+1)/A001901(n+1)*A092053(n+1)`
-/

namespace A346943.P8868892473408048318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001900 (n + 1) : ℚ) / (A001901 (n + 1) : ℚ) * (A092053 (n + 1) : ℚ)

end

end A346943.P8868892473408048318

namespace A346943

/-- `A001900(n+1)/A001901(n+1)*A092053(n+1)` -/
def P8868892473408048318.Spec : Prop :=
  ∀ n, P8868892473408048318.a n = (A346943 n : ℚ)

end A346943

/-!
# A346945: Expansion of e.g.f. log( 1 + log(1 + x)^3 / 3! ).

The programs for A346945, there is no canonical definition to state claims against.
-/

/-! ## A346945.P4381072411962434376

`A065359(A147639(n+1))*A347002(n+3)`
-/

namespace A346945.P4381072411962434376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A147639 (n + 1)).toNat * A347002 (n + 3)

end

end A346945.P4381072411962434376

/-! ## A346945.P13310887350651855148

`A347002(n+3)/A033999(A050226(2*n+5))`
-/

namespace A346945.P13310887350651855148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347002 (n + 3) : ℚ) / (A033999 (A050226 (2 * n + 5)).toNat : ℚ)

end

end A346945.P13310887350651855148

/-!
# A346946: Expansion of e.g.f. log( 1 + log(1 + x)^4 / 4! ).

The programs for A346946, there is no canonical definition to state claims against.
-/

/-! ## A346946.P17633772636122221823

`A003982(A000255(n))-A354318(n+4)`
-/

namespace A346946.P17633772636122221823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A000255 n).toNat - A354318 (n + 4)

end

end A346946.P17633772636122221823

/-! ## A346946.P16271804700451116947

`A354321(A354292(n+1))-A354318(n+4)`
-/

namespace A346946.P16271804700451116947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354321 (A354292 (n + 1)).toNat - A354318 (n + 4)

end

end A346946.P16271804700451116947

/-! ## A346946.P1099502670723640062

`A010815(A014398(n+2))-A354318(n+4)`
-/

namespace A346946.P1099502670723640062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A014398 (n + 2)).toNat - A354318 (n + 4)

end

end A346946.P1099502670723640062

/-!
# A346947: Expansion of e.g.f. log( 1 + log(1 + x)^5 / 5! ).

The programs for A346947, there is no canonical definition to state claims against.
-/

/-! ## A346947.P9131065860375064244

`A104416(A268581(n)+4)`
-/

namespace A346947.P9131065860375064244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104416 (A268581 n + 4).toNat

end

end A346947.P9131065860375064244

/-!
# A346949: Value of the permanent of the matrix [1-zeta^{j-k}]_{1<=j,k<=2n}, where zeta is any primitive 2n-th root of unity.

The programs for A346949, the canonical program `A346949.P17995431213961934974` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346949 has offset 1).

The definition of A346949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346949.P17995431213961934974

`2*(2*(n+1))!`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A346949

/-- `2*(2*(n+1))!` -/
def P17995431213961934974.Spec : Prop :=
  ∀ n, (P17995431213961934974.a n : ℤ) = A346949 (n + 1)

theorem P17995431213961934974.correct : P17995431213961934974.Spec := by
  intro n
  simp only [A346949, Nat.add_sub_cancel]

end A346949

/-! ## A346949.P6794448975640089004

`Δ[2*∑[(2*n)!]]`
-/

namespace A346949.P6794448975640089004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A346949.P6794448975640089004

namespace A346949

/-- `Δ[2*∑[(2*n)!]]` -/
def P6794448975640089004.Spec : Prop :=
  ∀ n, P6794448975640089004.a n = A346949 (n + 1)

end A346949

/-! ## A346949.P12449557823277319441

`record[-(2*∏[-(n+2)])]`
-/

namespace A346949.P12449557823277319441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * (∏ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346949.P12449557823277319441

namespace A346949

/-- `record[-(2*∏[-(n+2)])]` -/
def P12449557823277319441.Spec : Prop :=
  ∀ n, P12449557823277319441.a n = A346949 (n + 1)

end A346949

/-! ## A346949.P15626538580454691440

`2*record[abs(2*(1-n))!]`
-/

namespace A346949.P15626538580454691440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |2 * (1 - (n : ℤ))|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346949.P15626538580454691440

namespace A346949

/-- `2*record[abs(2*(1-n))!]` -/
def P15626538580454691440.Spec : Prop :=
  ∀ n, (P15626538580454691440.a n : ℤ) = A346949 (n + 1)

end A346949

/-! ## A346949.P14848554446998188607

`a(n-1)*∑[8*n+2]` with `a(0)=4`
-/

namespace A346949.P14848554446998188607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346949.P14848554446998188607

namespace A346949

/-- `a(n-1)*∑[8*n+2]` -/
def P14848554446998188607.Spec : Prop :=
  ∀ n, (P14848554446998188607.a n : ℤ) = A346949 (n + 1)

end A346949

/-!
# A346950: Positive integers k that are the product of two integers ending with 3.

The programs for A346950, there is no canonical definition to state claims against.
-/

/-! ## A346950.P2269808878421916794

`record[A000265(A324297(n+1)/2)]`
-/

namespace A346950.P2269808878421916794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A324297 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346950.P2269808878421916794

/-! ## A346950.P13341111169179648571

`record[A000265(A324297(n+1))]`
-/

namespace A346950.P13341111169179648571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A324297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346950.P13341111169179648571

/-! ## A346950.P18239071349618864856

`10*A346951(n+1)+9`
-/

namespace A346950.P18239071349618864856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A346951 (n + 1) + 9

end

end A346950.P18239071349618864856

/-! ## A346950.P3736463565762344712

`A017377(A346951(n+1))`
-/

namespace A346950.P3736463565762344712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A346951 (n + 1)).toNat

end

end A346950.P3736463565762344712

/-! ## A346950.P10995956106497895480

`A190876(A346951(n+1)+9)`
-/

namespace A346950.P10995956106497895480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190876 (A346951 (n + 1) + 9).toNat

end

end A346950.P10995956106497895480

/-! ## A346950.P16753948651598208197

`A020723(10*A346951(n+1))`
-/

namespace A346950.P16753948651598208197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (10 * A346951 (n + 1)).toNat

end

end A346950.P16753948651598208197

/-! ## A346950.P14602807761520514560

`A017365(A346951(n+1))+abs(A033999(n))`
-/

namespace A346950.P14602807761520514560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 (A346951 (n + 1)).toNat + |A033999 n|

end

end A346950.P14602807761520514560

/-! ## A346950.P17696799210072914068

`A017365(A346951(n+1))+A007318(∑[n])`
-/

namespace A346950.P17696799210072914068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 (A346951 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346950.P17696799210072914068

/-! ## A346950.P8661471991721390429

`A017365(A346951(n+1))+A000041(C(2, n+2))`
-/

namespace A346950.P8661471991721390429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 (A346951 (n + 1)).toNat + A000041 (Nat.choose 2 (n + 2))

end

end A346950.P8661471991721390429

/-!
# A346951: Positive integers k such that 10*k+9 is equal to the product of two integers ending with 3 (A346950).

The programs for A346951, there is no canonical definition to state claims against.
-/

/-! ## A346951.P14152119167736945958

`(A346950(n+1)-9)/10`
-/

namespace A346951.P14152119167736945958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346950 (n + 1) - 9 : ℚ) / 10

end

end A346951.P14152119167736945958

/-! ## A346951.P15603795747012676024

`floor(A346950(n+1)/10)`
-/

namespace A346951.P15603795747012676024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A346950 (n + 1) : ℚ) / 10⌋

end

end A346951.P15603795747012676024

/-! ## A346951.P14980936174663701837

`lt[0, A359288(2*(n+1))]`
-/

namespace A346951.P14980936174663701837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359288 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346951.P14980936174663701837

/-! ## A346951.P12551733555916093856

`lt[0, A001878(10*n+9)]`
-/

namespace A346951.P12551733555916093856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (10 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346951.P12551733555916093856

/-! ## A346951.P11901709768999901890

`A059995(A346950(n+1))`
-/

namespace A346951.P11901709768999901890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A346950 (n + 1)).toNat

end

end A346951.P11901709768999901890

/-! ## A346951.P16815614781351865612

`lt[0, A284281(A017377(n))]`
-/

namespace A346951.P16815614781351865612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (A017377 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346951.P16815614781351865612

/-! ## A346951.P4364140842648067045

`A076313(A346950(n+1)+2)`
-/

namespace A346951.P4364140842648067045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (A346950 (n + 1) + 2).toNat

end

end A346951.P4364140842648067045

/-! ## A346951.P5728459179156973861

`record[A025480(A324298(n+1)-2)]`
-/

namespace A346951.P5728459179156973861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A324298 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346951.P5728459179156973861

/-! ## A346951.P5858269316356869793

`floor(record[A000265(A324297(n+1))]/10)`
-/

namespace A346951.P5858269316356869793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A324297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 10⌋

end

end A346951.P5858269316356869793

/-! ## A346951.P10371301604265074685

`record[A025480(A004280(A324298(n+1)))]`
-/

namespace A346951.P10371301604265074685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A004280 (A324298 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346951.P10371301604265074685

/-!
# A346952: Number of positive integers with n digits that are the product of two integers ending with 3.

The programs for A346952, there is no canonical definition to state claims against.
-/

/-! ## A346952.P10428979770433082701

`A348546(n+1)+A348547(n+1)-A348055(n+1)`
-/

namespace A346952.P10428979770433082701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348546 (n + 1) + (A348547 (n + 1) - A348055 (n + 1))

end

end A346952.P10428979770433082701

/-!
# A346953: a(n) is the number of divisors of A346950(n) ending with 3.

The programs for A346953, the canonical program `A346953.P11251153157996994655` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346953 has offset 1).

The definition of A346953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346953.P11251153157996994655

`filter[A359288(2*(n+1)), A011558(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A346953

/-- `filter[A359288(2*(n+1)), A011558(#)]` -/
def P11251153157996994655.Spec : Prop :=
  ∀ n, P11251153157996994655.a n = A346953 (n + 1)

theorem P11251153157996994655.correct : P11251153157996994655.Spec := by
  intro n
  simp only [A346953, Nat.add_sub_cancel]

end A346953

/-! ## A346953.P17334880301303947781

`filter[A359288(2*(n+1)), A022932(#)]`
-/

namespace A346953.P17334880301303947781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359288 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A346953.P17334880301303947781

namespace A346953

/-- `filter[A359288(2*(n+1)), A022932(#)]` -/
def P17334880301303947781.Spec : Prop :=
  ∀ n, P17334880301303947781.a n = A346953 (n + 1)

end A346953

/-! ## A346953.P15205895469682544675

`filter[A359288(2*(n+1)), A075897(#)]`
-/

namespace A346953.P15205895469682544675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359288 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075897 (f1 j).toNat = 1) n)

end

end A346953.P15205895469682544675

namespace A346953

/-- `filter[A359288(2*(n+1)), A075897(#)]` -/
def P15205895469682544675.Spec : Prop :=
  ∀ n, P15205895469682544675.a n = A346953 (n + 1)

end A346953

/-! ## A346953.P5004846351670348680

`filter[A359288(2*(n+1)), A109720(#)]`
-/

namespace A346953.P5004846351670348680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359288 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A346953.P5004846351670348680

namespace A346953

/-- `filter[A359288(2*(n+1)), A109720(#)]` -/
def P5004846351670348680.Spec : Prop :=
  ∀ n, P5004846351670348680.a n = A346953 (n + 1)

end A346953

/-! ## A346953.P18352194573781825490

`filter[A359288(2*(n+1)), A135947(#)]`
-/

namespace A346953.P18352194573781825490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359288 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135947 (f1 j).toNat = 1) n)

end

end A346953.P18352194573781825490

namespace A346953

/-- `filter[A359288(2*(n+1)), A135947(#)]` -/
def P18352194573781825490.Spec : Prop :=
  ∀ n, P18352194573781825490.a n = A346953 (n + 1)

end A346953

/-! ## A346953.P770629436140814300

`filter[A359288(2*(n+1)), A145568(#)]`
-/

namespace A346953.P770629436140814300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359288 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A346953.P770629436140814300

namespace A346953

/-- `filter[A359288(2*(n+1)), A145568(#)]` -/
def P770629436140814300.Spec : Prop :=
  ∀ n, P770629436140814300.a n = A346953 (n + 1)

end A346953

/-! ## A346953.P9909818967270494100

`filter[A359288(2*(n+1)), A167393(#)]`
-/

namespace A346953.P9909818967270494100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359288 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167393 (f1 j).toNat = 1) n)

end

end A346953.P9909818967270494100

namespace A346953

/-- `filter[A359288(2*(n+1)), A167393(#)]` -/
def P9909818967270494100.Spec : Prop :=
  ∀ n, P9909818967270494100.a n = A346953 (n + 1)

end A346953

/-! ## A346953.P16303554177604302100

`filter[A359288(2*(n+1)), A168046(#)]`
-/

namespace A346953.P16303554177604302100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359288 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A346953.P16303554177604302100

namespace A346953

/-- `filter[A359288(2*(n+1)), A168046(#)]` -/
def P16303554177604302100.Spec : Prop :=
  ∀ n, P16303554177604302100.a n = A346953 (n + 1)

end A346953

/-! ## A346953.P13982453621298860318

`filter[A359288(2*(n+1)), A168182(#)]`
-/

namespace A346953.P13982453621298860318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359288 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A346953.P13982453621298860318

namespace A346953

/-- `filter[A359288(2*(n+1)), A168182(#)]` -/
def P13982453621298860318.Spec : Prop :=
  ∀ n, P13982453621298860318.a n = A346953 (n + 1)

end A346953

/-! ## A346953.P8506599141539936250

`filter[A359288(2*(n+1)), A168184(#)]`
-/

namespace A346953.P8506599141539936250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359288 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A346953.P8506599141539936250

namespace A346953

/-- `filter[A359288(2*(n+1)), A168184(#)]` -/
def P8506599141539936250.Spec : Prop :=
  ∀ n, P8506599141539936250.a n = A346953 (n + 1)

end A346953

/-! ## A346953.P8309133331340670450

`filter[A359288(2*(n+1)), A168185(#)]`
-/

namespace A346953.P8309133331340670450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359288 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A346953.P8309133331340670450

namespace A346953

/-- `filter[A359288(2*(n+1)), A168185(#)]` -/
def P8309133331340670450.Spec : Prop :=
  ∀ n, P8309133331340670450.a n = A346953 (n + 1)

end A346953

/-! ## A346953.P930746724387783976

`filter[A359288(2*(n+1)), A188642(#)]`
-/

namespace A346953.P930746724387783976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359288 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188642 (f1 j).toNat = 1) n)

end

end A346953.P930746724387783976

namespace A346953

/-- `filter[A359288(2*(n+1)), A188642(#)]` -/
def P930746724387783976.Spec : Prop :=
  ∀ n, P930746724387783976.a n = A346953 (n + 1)

end A346953

/-! ## A346953.P3436416754855206566

`A001878(A346950(n+1))`
-/

namespace A346953.P3436416754855206566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A346950 (n + 1)).toNat

end

end A346953.P3436416754855206566

namespace A346953

/-- `A001878(A346950(n+1))` -/
def P3436416754855206566.Spec : Prop :=
  ∀ n, P3436416754855206566.a n = A346953 (n + 1)

end A346953

/-!
# A346954: Expansion of e.g.f. -log( 1 - (exp(x) - 1)^4 / 4! ).

The programs for A346954, there is no canonical definition to state claims against.
-/

/-! ## A346954.P9281309751908257026

`A327505(A073789(n)+4)`
-/

namespace A346954.P9281309751908257026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327505 (A073789 n + 4).toNat

end

end A346954.P9281309751908257026

/-! ## A346954.P6452772325134386271

`record[A327505(A206437(n+8))]`
-/

namespace A346954.P6452772325134386271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327505 (A206437 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346954.P6452772325134386271

/-! ## A346954.P8575279330579960369

`record[A327505(n)]%A307487(3*(n+1))`
-/

namespace A346954.P8575279330579960369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A307487 (3 * (n + 1)))

end

end A346954.P8575279330579960369

/-! ## A346954.P710878214432870221

`A382172(A053496(n))+A327505(n+4)`
-/

namespace A346954.P710878214432870221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382172 (A053496 n).toNat + A327505 (n + 4)

end

end A346954.P710878214432870221

/-!
# A346955: Expansion of e.g.f. -log( 1 - (exp(x) - 1)^5 / 5! ).

The programs for A346955, there is no canonical definition to state claims against.
-/

/-! ## A346955.P13951209972365840094

`record[A327506(A055646(n))]`
-/

namespace A346955.P13951209972365840094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327506 (A055646 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346955.P13951209972365840094

/-! ## A346955.P9396633977215897846

`record[A327506(A225638(n))]`
-/

namespace A346955.P9396633977215897846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327506 (A225638 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346955.P9396633977215897846

/-! ## A346955.P134026063421310019

`record[A327506(A285189(n))]`
-/

namespace A346955.P134026063421310019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327506 (A285189 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346955.P134026063421310019

/-! ## A346955.P13546133922263398086

`A327506(A077168(n+4))`
-/

namespace A346955.P13546133922263398086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327506 (A077168 (n + 4)).toNat

end

end A346955.P13546133922263398086

/-! ## A346955.P9788386832929499706

`A327506(A051022(n)+5)`
-/

namespace A346955.P9788386832929499706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327506 (A051022 n + 5).toNat

end

end A346955.P9788386832929499706

/-!
# A346956: Numbers k such that A000203(k) and A007955(k) are both divisible by A187680(k).

The programs for A346956, the canonical program `A346956.P6151444584231932237` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346956 has offset 1).

The definition of A346956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346956.P6151444584231932237

`eq[A187680(n+1), A306682(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A346956

/-- `eq[A187680(n+1), A306682(n+1)]+1` -/
def P6151444584231932237.Spec : Prop :=
  ∀ n, (P6151444584231932237.a n : ℤ) = A346956 (n + 1)

theorem P6151444584231932237.correct : P6151444584231932237.Spec := by
  intro n
  simp only [A346956, Nat.add_sub_cancel]

end A346956

/-! ## A346956.P2967714392745935880

`A020725(eq[A187680(n+1), A306682(n+1)])`
-/

namespace A346956.P2967714392745935880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A346956.P2967714392745935880

namespace A346956

/-- `A020725(eq[A187680(n+1), A306682(n+1)])` -/
def P2967714392745935880.Spec : Prop :=
  ∀ n, P2967714392745935880.a n = A346956 (n + 1)

end A346956

/-! ## A346956.P12391875972038625554

`eq[A007955(n+1)%A000203(n+1), A306682(n+1)]+1`
-/

namespace A346956.P12391875972038625554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007955 (n + 1)) (A000203 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A346956.P12391875972038625554

namespace A346956

/-- `eq[A007955(n+1)%A000203(n+1), A306682(n+1)]+1` -/
def P12391875972038625554.Spec : Prop :=
  ∀ n, (P12391875972038625554.a n : ℤ) = A346956 (n + 1)

end A346956

/-!
# A346957: a(0) = 0, a(1) = 1, and b = a(n-2) + a(n-1). a(n) = b if b is a prime; otherwise a(n) = a(n-1) and a(n-1) = b.

The programs for A346957, there is no canonical definition to state claims against.
-/

/-! ## A346957.P4381274400732723439

`A120761(n+2)-Δ[A120761(n+2)]`
-/

namespace A346957.P4381274400732723439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120761 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120761 (n + 2) - (f1 (n + 1) - f1 n)

end

end A346957.P4381274400732723439

/-!
# A346960: a(0) = 0, a(1) = 1; a(n) = n * (n+1) * a(n-1) + a(n-2).

The programs for A346960, the canonical program `A346960.P16475961536989566450` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346960 has offset 0).

The definition of A346960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*a(n-1)+a(n-2)` (program `A346960.P16475961536989566450`, by `A346960.P16475961536989566450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A346960.P16475961536989566450

`n*(n+1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A346960

/-- `n*(n+1)*a(n-1)+a(n-2)` -/
def P16475961536989566450.Spec : Prop :=
  ∀ n, (P16475961536989566450.a n : ℤ) = A346960 n

theorem P16475961536989566450.correct : P16475961536989566450.Spec := by
  intro n
  simp only [A346960]

end A346960

/-! ## A346960.P2176116991353556847

`a(n-2)+2*a(n-1)*∑[n]` with `a(0)=0, a(1)=1`
-/

namespace A346960.P2176116991353556847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 2 * (a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A346960.P2176116991353556847

namespace A346960

/-- `a(n-2)+2*a(n-1)*∑[n]` -/
def P2176116991353556847.Spec : Prop :=
  ∀ n, (P2176116991353556847.a n : ℤ) = A346960 n

end A346960

/-! ## A346960.P16730368501494611067

`a(n-2)+(n²+n)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A346960.P16730368501494611067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (n ^ 2 + n) * a (n - 1)

end

end A346960.P16730368501494611067

namespace A346960

/-- `a(n-2)+(n²+n)*a(n-1)` -/
def P16730368501494611067.Spec : Prop :=
  ∀ n, (P16730368501494611067.a n : ℤ) = A346960 n

end A346960

/-! ## A346960.P13801199940137909648

`a(n-2)+a(n-1)*A002378(n)` with `a(0)=0, a(1)=1`
-/

namespace A346960.P13801199940137909648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) * A002378 n

end

end A346960.P13801199940137909648

namespace A346960

/-- `a(n-2)+a(n-1)*A002378(n)` -/
def P13801199940137909648.Spec : Prop :=
  ∀ n, P13801199940137909648.a n = A346960 n

end A346960

/-!
# A346961: Number of minimal total dominating sets in the n X n knight graph.

The programs for A346961, there is no canonical definition to state claims against.
-/

/-! ## A346961.P13230378303924398082

`A151978(ceil(n/2)^comp[or(2, n)])`
-/

namespace A346961.P13230378303924398082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151978 (⌈(n : ℚ) / 2⌉ ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n).toNat

end

end A346961.P13230378303924398082

/-!
# A346964: Expansion of e.g.f. Product_{k>=1} exp(x^k) * (1 + x^k).

The programs for A346964, there is no canonical definition to state claims against.
-/

/-! ## A346964.P12923606276072388081

`4*A075821(a(n-1))+n` with `a(0)=1`
-/

namespace A346964.P12923606276072388081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A075821 (a (n - 1)).toNat + (n : ℤ)

end

end A346964.P12923606276072388081

/-! ## A346964.P7628086003687496466

`∑[A141207(2*(a(n-1)+a(n-2)))]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A346964.P7628086003687496466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  A141207 (2 * (f1 (n - 1) + f1 (n - 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346964.P7628086003687496466

/-!
# A346965: a(n) is the number of ascending subsequences in reducing n to 1 using the Collatz reduction, or -1 if n refutes the Collatz conjecture.

The programs for A346965, there is no canonical definition to state claims against.
-/

/-! ## A346965.P15447327529172557670

`A160541(A000265(n+1))`
-/

namespace A346965.P15447327529172557670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (A000265 (n + 1)).toNat

end

end A346965.P15447327529172557670

/-! ## A346965.P8752582395169148737

`A160541(n+1)-n%2`
-/

namespace A346965.P8752582395169148737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A346965.P8752582395169148737

/-! ## A346965.P9806488799007647434

`A213181(A065883(n+1))`
-/

namespace A346965.P9806488799007647434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (A065883 (n + 1)).toNat

end

end A346965.P9806488799007647434

/-! ## A346965.P7563110724477804101

`A213181(A259445(n+1))`
-/

namespace A346965.P7563110724477804101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (A259445 (n + 1)).toNat

end

end A346965.P7563110724477804101

/-! ## A346965.P8045065752355818194

`A213181(A000265(2*(n+1)))`
-/

namespace A346965.P8045065752355818194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (A000265 (2 * (n + 1))).toNat

end

end A346965.P8045065752355818194

/-! ## A346965.P1054934799412475592

`A160541(n+1)-A000035(n)`
-/

namespace A346965.P1054934799412475592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (n + 1) - A000035 n

end

end A346965.P1054934799412475592

/-! ## A346965.P2950246724018133139

`A160541(n+1)-Δ[A008619(n)]`
-/

namespace A346965.P2950246724018133139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (n + 1) - (f1 (n + 1) - f1 n)

end

end A346965.P2950246724018133139

/-! ## A346965.P3769735741874238225

`A213181(n+1)-A011765(n+1)`
-/

namespace A346965.P3769735741874238225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (n + 1) - A011765 (n + 1)

end

end A346965.P3769735741874238225

/-! ## A346965.P6686627175570749743

`A160541(n+1)-A007814(n+1)/A375782(n+1)`
-/

namespace A346965.P6686627175570749743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160541 (n + 1) : ℚ) - (A007814 (n + 1) : ℚ) / (A375782 (n + 1) : ℚ)

end

end A346965.P6686627175570749743

/-! ## A346965.P10970036842702588508

`A160541(n+1)-A160541(Δ[A047613(n+1)])`
-/

namespace A346965.P10970036842702588508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (n + 1) - A160541 (f1 (n + 1) - f1 n).toNat

end

end A346965.P10970036842702588508

/-! ## A346965.P11403153886709292173

`A160541(n+1)+A286380(n+2)-A078719(n+2)`
-/

namespace A346965.P11403153886709292173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (n + 1) + (A286380 (n + 2) - A078719 (n + 2))

end

end A346965.P11403153886709292173

/-! ## A346965.P6963940453083433588

`A160541(2*(n+1))-1`
-/

namespace A346965.P6963940453083433588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (2 * (n + 1)) - 1

end

end A346965.P6963940453083433588

/-! ## A346965.P17834090904548683776

`A160541(A139391(2*(n+1)))`
-/

namespace A346965.P17834090904548683776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (A139391 (2 * (n + 1))).toNat

end

end A346965.P17834090904548683776

/-! ## A346965.P5962568713030423969

`A160541(A363270(2*(n+1)))`
-/

namespace A346965.P5962568713030423969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (A363270 (2 * (n + 1))).toNat

end

end A346965.P5962568713030423969

/-! ## A346965.P9876813164489276548

`A213181(A139391(2*n+2))`
-/

namespace A346965.P9876813164489276548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (A139391 (2 * n + 2)).toNat

end

end A346965.P9876813164489276548

/-! ## A346965.P8202621180803395152

`A213181(A363270(2*n+2))`
-/

namespace A346965.P8202621180803395152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (A363270 (2 * n + 2)).toNat

end

end A346965.P8202621180803395152

/-! ## A346965.P7303762843208963391

`A213181(2*(n+1))-A059841(n+1)`
-/

namespace A346965.P7303762843208963391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (2 * (n + 1)) - A059841 (n + 1)

end

end A346965.P7303762843208963391

/-! ## A346965.P1248693587014829818

`A213181(A000265(n+1)+A000265(n+1))`
-/

namespace A346965.P1248693587014829818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (A000265 (n + 1) + A000265 (n + 1)).toNat

end

end A346965.P1248693587014829818

/-! ## A346965.P2611823761257958032

`A213181(A008574(n+1))-1`
-/

namespace A346965.P2611823761257958032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (A008574 (n + 1)).toNat - 1

end

end A346965.P2611823761257958032

/-!
# A346966: Expansion of e.g.f. -log( 1 - log(1 - x)^2 / 2 ).

The programs for A346966, there is no canonical definition to state claims against.
-/

/-! ## A346966.P11336623612266690040

`record[A034887(A008290(n))]`
-/

namespace A346966.P11336623612266690040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A008290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346966.P11336623612266690040

/-!
# A346967: E.g.f.: exp( exp(x + x^2/2) - 1 ).

The programs for A346967, there is no canonical definition to state claims against.
-/

/-! ## A346967.P16579537730031741110

`A060145(2*A113226(n+1))`
-/

namespace A346967.P16579537730031741110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 (2 * A113226 (n + 1)).toNat

end

end A346967.P16579537730031741110

/-! ## A346967.P13428693373785444561

`A008611(A152363(n+1)+A124384(n))`
-/

namespace A346967.P13428693373785444561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A152363 (n + 1) + A124384 n).toNat

end

end A346967.P13428693373785444561

/-! ## A346967.P18131807429096701632

`A060145(A113226(n+1)+A113226(n+1)+2)`
-/

namespace A346967.P18131807429096701632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 (A113226 (n + 1) + (A113226 (n + 1) + 2)).toNat

end

end A346967.P18131807429096701632

/-!
# A346968: E.g.f.: 1 / (2 - exp(x + x^2/2)).

The programs for A346968, there is no canonical definition to state claims against.
-/

/-! ## A346968.P10362402204970879038

`A184942(n)-A184955(∑[n])`
-/

namespace A346968.P10362402204970879038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184942 n - A184955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346968.P10362402204970879038

/-! ## A346968.P3152260105631484079

`Δ[A008619(A326895(n+1))]+1`
-/

namespace A346968.P3152260105631484079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A326895 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A346968.P3152260105631484079

/-!
# A346970: Smallest c which can be split into positive integers a,b with a+b=c, such that a*b*c is divisible by each of the first n primes.

The programs for A346970, there is no canonical definition to state claims against.
-/

/-! ## A346970.P2472741876618729390

`A321667(∑[∑[A084784(n)]])`
-/

namespace A346970.P2472741876618729390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084784 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321667 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346970.P2472741876618729390

/-! ## A346970.P12825508653604479939

`A358170(∑[∏[A089408(n)]])`
-/

namespace A346970.P12825508653604479939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358170 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346970.P12825508653604479939

/-! ## A346970.P16850084604774913230

`A161704(n)+A001462(A134055(n))`
-/

namespace A346970.P16850084604774913230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161704 n + A001462 (A134055 n).toNat

end

end A346970.P16850084604774913230

/-!
# A346974: Expansion of e.g.f. log( 1 + (exp(x) - 1)^2 / 2 ).

The programs for A346974, there is no canonical definition to state claims against.
-/

/-! ## A346974.P99060605109769147

`∑[∑[4-A334753(A001815(n)+1)]]`
-/

namespace A346974.P99060605109769147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A334753 (A001815 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346974.P99060605109769147

/-!
# A346975: Expansion of e.g.f. log( 1 + (exp(x) - 1)^3 / 3! ).

The programs for A346975, there is no canonical definition to state claims against.
-/

/-! ## A346975.P828114731047017066

`A037273(A117387(n))-A354396(n+3)`
-/

namespace A346975.P828114731047017066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037273 (A117387 n).toNat - A354396 (n + 3)

end

end A346975.P828114731047017066

/-! ## A346975.P8119742307636462796

`A297968(A149136(n+3))-A354396(n+3)`
-/

namespace A346975.P8119742307636462796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297968 (A149136 (n + 3)).toNat - A354396 (n + 3)

end

end A346975.P8119742307636462796

/-!
# A346976: Expansion of e.g.f. log( 1 + (exp(x) - 1)^4 / 4! ).

The programs for A346976, there is no canonical definition to state claims against.
-/

/-! ## A346976.P11778062343315758119

`A000007(A001764(n))-A354397(n+4)`
-/

namespace A346976.P11778062343315758119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A001764 n).toNat - A354397 (n + 4)

end

end A346976.P11778062343315758119

/-! ## A346976.P14702643495847126098

`A000007(A007070(n))-A354397(n+4)`
-/

namespace A346976.P14702643495847126098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A007070 n).toNat - A354397 (n + 4)

end

end A346976.P14702643495847126098

/-! ## A346976.P8401833670777443243

`A061265(A288391(n))-A354397(n+4)`
-/

namespace A346976.P8401833670777443243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061265 (A288391 n).toNat - A354397 (n + 4)

end

end A346976.P8401833670777443243

/-! ## A346976.P16734225267373591046

`A000007(A094817(n+1))-A354397(n+4)`
-/

namespace A346976.P16734225267373591046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A094817 (n + 1)).toNat - A354397 (n + 4)

end

end A346976.P16734225267373591046

/-!
# A346977: Expansion of e.g.f. log( 1 + (exp(x) - 1)^5 / 5! ).

The programs for A346977, there is no canonical definition to state claims against.
-/

/-! ## A346977.P1735160420610048288

`record[abs(A354398(A055401(n)))]`
-/

namespace A346977.P1735160420610048288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A354398 (A055401 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346977.P1735160420610048288

/-! ## A346977.P14297091916887762246

`record[abs(A354398(A055647(n)))]`
-/

namespace A346977.P14297091916887762246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A354398 (A055647 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346977.P14297091916887762246

/-! ## A346977.P3208775612049827908

`record[abs(A354398(A089051(n)))]`
-/

namespace A346977.P3208775612049827908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A354398 (A089051 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346977.P3208775612049827908

/-! ## A346977.P9234783435663267866

`record[gcd(A348800(n), A354398(n))]`
-/

namespace A346977.P9234783435663267866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A348800 n) (A354398 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346977.P9234783435663267866

/-! ## A346977.P1782903966105161261

`record[abs(A354398(A034463(n+1)))]`
-/

namespace A346977.P1782903966105161261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A354398 (A034463 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346977.P1782903966105161261

/-!
# A346978: Expansion of e.g.f. 1 / sqrt(1 + 2 * log(1 - x)).

The programs for A346978, there is no canonical definition to state claims against.
-/

/-! ## A346978.P7759851533400683797

`A288552(n*a(n-1)+1)-1` with `a(0)=1`
-/

namespace A346978.P7759851533400683797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A288552 ((n : ℤ) * a (n - 1) + 1).toNat - 1

end

end A346978.P7759851533400683797

/-! ## A346978.P12748400229333644178

`A026437(A322137(n))`
-/

namespace A346978.P12748400229333644178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026437 (A322137 n).toNat

end

end A346978.P12748400229333644178

/-!
# A346980: a(n) = A152534(n,n).

The programs for A346980, there is no canonical definition to state claims against.
-/

/-! ## A346980.P14589692522729902241

`A105702(a(n-1))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A346980.P14589692522729902241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A105702 (a (n - 1)).toNat

end

end A346980.P14589692522729902241

/-! ## A346980.P16625381044696209347

`A033182(xor(4, A302188(n)))`
-/

namespace A346980.P16625381044696209347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (Int.xor 4 (A302188 n)).toNat

end

end A346980.P16625381044696209347

/-! ## A346980.P16089103236024921989

`A120327(10*a(n-1)-23*a(n-2))-A108825(n+1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=8`
-/

namespace A346980.P16089103236024921989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 8] fun n a =>
  A120327 (10 * a (n - 1) - 23 * a (n - 2)).toNat - A108825 (n + 1)

end

end A346980.P16089103236024921989

/-!
# A346981: a(n) = A152474(n,n).

The programs for A346981, there is no canonical definition to state claims against.
-/

/-! ## A346981.P13766444418084892500

`A321979(n)-∑[A122299(n+1)]`
-/

namespace A346981.P13766444418084892500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321979 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346981.P13766444418084892500

/-! ## A346981.P18317239346929907140

`and(A011791(n), A134227(A343365(n)))`
-/

namespace A346981.P18317239346929907140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011791 n) (A134227 (A343365 n).toNat)

end

end A346981.P18317239346929907140

/-!
# A346982: Expansion of e.g.f. 1 / (4 - 3 * exp(x))^(1/3).

The programs for A346982, there is no canonical definition to state claims against.
-/

/-! ## A346982.P7700463689861979218

`A066344(A001761(n))-A056823(n)`
-/

namespace A346982.P7700463689861979218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066344 (A001761 n).toNat - A056823 n

end

end A346982.P7700463689861979218

/-!
# A346983: Expansion of e.g.f. 1 / (5 - 4 * exp(x))^(1/4).

The programs for A346983, there is no canonical definition to state claims against.
-/

/-! ## A346983.P4054387736072613766

`A028310(A271841(n))`
-/

namespace A346983.P4054387736072613766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A271841 n).toNat

end

end A346983.P4054387736072613766

/-!
# A346984: Expansion of e.g.f. 1 / (6 - 5 * exp(x))^(1/5).

The programs for A346984, there is no canonical definition to state claims against.
-/

/-! ## A346984.P6638031902752985332

`A078641((2*n+1)^n+1)`
-/

namespace A346984.P6638031902752985332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078641 ((2 * n + 1) ^ n + 1)

end

end A346984.P6638031902752985332

/-!
# A346985: Expansion of e.g.f. 1 / (7 - 6 * exp(x))^(1/6).

The programs for A346985, there is no canonical definition to state claims against.
-/

/-! ## A346985.P9368084957170380729

`A166546(A007820(n))`
-/

namespace A346985.P9368084957170380729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166546 (A007820 n).toNat

end

end A346985.P9368084957170380729

/-!
# A346986: Number of states in minimal deterministic finite automaton recognizing the set of binary Lyndon words of length n.

The programs for A346986, there is no canonical definition to state claims against.
-/

/-! ## A346986.P7008782664406777413

`A071626(A136399(2*n+5)+A037444(n+2))`
-/

namespace A346986.P7008782664406777413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A136399 (2 * n + 5) + A037444 (n + 2)).toNat

end

end A346986.P7008782664406777413

/-! ## A346986.P11641159575569485102

`A083375(A026566(n))+2`
-/

namespace A346986.P11641159575569485102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A026566 n).toNat + 2

end

end A346986.P11641159575569485102

/-! ## A346986.P17122671802935285788

`A002024(A289463(n)+A211118(n+1))`
-/

namespace A346986.P17122671802935285788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A289463 n + A211118 (n + 1)).toNat

end

end A346986.P17122671802935285788

/-! ## A346986.P11880983326174662563

`A281114(A000108(n))+A281094(n+2)`
-/

namespace A346986.P11880983326174662563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281114 (A000108 n).toNat + A281094 (n + 2)

end

end A346986.P11880983326174662563

/-! ## A346986.P1683958159342992299

`A179510(A157727(n+1)+A005097(n+1))`
-/

namespace A346986.P1683958159342992299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179510 (A157727 (n + 1) + A005097 (n + 1)).toNat

end

end A346986.P1683958159342992299

/-!
# A346987: Expansion of e.g.f. 1 / (1 + 5 * log(1 - x))^(1/5).

The programs for A346987, there is no canonical definition to state claims against.
-/

/-! ## A346987.P5924963380127833823

`A059539(A126573(n!))`
-/

namespace A346987.P5924963380127833823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059539 (A126573 (Nat.factorial n)).toNat

end

end A346987.P5924963380127833823

/-!
# A346990: Numbers occurring as divisors of 2^k + 3^k, k > 0.

The programs for A346990, there is no canonical definition to state claims against.
-/

/-! ## A346990.P9797548940534665207

`record[gcd(n, A248205(n+1))]`
-/

namespace A346990.P9797548940534665207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A248205 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346990.P9797548940534665207

/-! ## A346990.P13920022810073225488

`record[A006530(A029612(n))-6]`
-/

namespace A346990.P13920022810073225488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A029612 n).toNat - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346990.P13920022810073225488

/-! ## A346990.P643048083173524913

`record[A006530(A029634(n))-6]`
-/

namespace A346990.P643048083173524913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A029634 n).toNat - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346990.P643048083173524913

/-! ## A346990.P10331327376921590869

`eq[A128033(n), A276788(n+1)]`
-/

namespace A346990.P10331327376921590869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276788 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346990.P10331327376921590869

/-! ## A346990.P17904572310670529325

`lt[A205484(A327791(n+1)), A090585(n+5)]`
-/

namespace A346990.P17904572310670529325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205484 (A327791 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090585 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346990.P17904572310670529325

/-!
# A346991: Numbers occurring as divisors of 2^k + 5^k, k > 0.

The programs for A346991, there is no canonical definition to state claims against.
-/

/-! ## A346991.P15034463909902186282

`A007775(lcm(A337050(n+1), A351241(n+3)))`
-/

namespace A346991.P15034463909902186282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (Int.lcm (A337050 (n + 1)) (A351241 (n + 3)))

end

end A346991.P15034463909902186282

/-! ## A346991.P15196056855788141069

`A007775(lt[A248777(n+1), A329028(n)])`
-/

namespace A346991.P15196056855788141069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A346991.P15196056855788141069

/-! ## A346991.P14075306446904104681

`A007775(A268335(n+1)%A116475(n+5))`
-/

namespace A346991.P14075306446904104681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (Int.tmod (A268335 (n + 1)) (A116475 (n + 5))).toNat

end

end A346991.P14075306446904104681

/-! ## A346991.P6914739144887507628

`A007775(A268335(n+1))%A272684(A043316(n+1))`
-/

namespace A346991.P6914739144887507628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007775 (A268335 (n + 1)).toNat) (A272684 (A043316 (n + 1)).toNat)

end

end A346991.P6914739144887507628

/-! ## A346991.P1188616178658947978

`A006530(C(A328336(2*n+3), A333229(n+1)))`
-/

namespace A346991.P1188616178658947978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A328336 (2 * n + 3)).toNat (A333229 (n + 1)).toNat)

end

end A346991.P1188616178658947978

/-!
# A346992: Numbers occurring as divisors of 3^k + 5^k.

The programs for A346992, there is no canonical definition to state claims against.
-/

/-! ## A346992.P14407432043860133176

`A229303(lt[A214742(3*n+2), A177800(n+1)])`
-/

namespace A346992.P14407432043860133176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214742 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A346992.P14407432043860133176

/-!
# A346993: Record numbers of grid points in a square lattice covered by a continuously growing circular disk if the center of the disk is chosen to cover the maximum possible number of grid points.

The programs for A346993, there is no canonical definition to state claims against.
-/

/-! ## A346993.P6111798305190455794

`∑[A237593(A001263(A109611(n+1)))]`
-/

namespace A346993.P6111798305190455794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (A001263 (A109611 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346993.P6111798305190455794

/-! ## A346993.P13206239896066707431

`∑[∏{e}[A005718(A000212(n)), #]]`
-/

namespace A346993.P13206239896066707431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 (A000212 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346993.P13206239896066707431

/-! ## A346993.P13424764549404341803

`∑[gcd(A175427(3*n+5), A175471(n+1))]`
-/

namespace A346993.P13424764549404341803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175427 (3 * n + 5)) (A175471 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346993.P13424764549404341803

/-! ## A346993.P13658161880664989156

`lt[A302982(A026905(n+1)), A082316(2*n)]`
-/

namespace A346993.P13658161880664989156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302982 (A026905 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082316 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346993.P13658161880664989156

/-! ## A346993.P12238503809453434662

`lt[1, A358359(A003601(2*(n+1)))]`
-/

namespace A346993.P12238503809453434662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358359 (A003601 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346993.P12238503809453434662

/-!
# A346996: a(n) = A022011(10^n).

The programs for A346996, there is no canonical definition to state claims against.
-/

/-! ## A346996.P13825560645249954796

`A022011(10^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346996.P13825560645249954796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022011 (10 ^ n)

end

end A346996.P13825560645249954796

/-!
# A346997: a(n) = A022012(10^n).

The programs for A346997, there is no canonical definition to state claims against.
-/

/-! ## A346997.P6920275944226880937

`A022012(10^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346997.P6920275944226880937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022012 (10 ^ n)

end

end A346997.P6920275944226880937

/-!
# A346999: a(n) is the maximum of x^(n - x), rounded to the nearest integer, for nonnegative real x.

The programs for A346999, there is no canonical definition to state claims against.
-/

/-! ## A346999.P13016316176433340412

`floor(root(A153931(3*n), 6))`
-/

namespace A346999.P13016316176433340412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153931 (3 * n) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A346999.P13016316176433340412

/-! ## A346999.P6777655199437582749

`∑[A350943(a(n-1))+3]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=2`
-/

namespace A346999.P6777655199437582749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 2] fun n f1 =>
  A350943 (f1 (n - 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346999.P6777655199437582749

/-! ## A346999.P1436922786547989546

`A034973(A200030(n)+1)`
-/

namespace A346999.P1436922786547989546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A200030 n + 1).toNat

end

end A346999.P1436922786547989546

