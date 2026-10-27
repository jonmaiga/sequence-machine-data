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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C020
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A177301: Number of permutations of 5 copies of 1..n with all adjacent differences <= 1 in absolute value.

The programs for A177301, there is no canonical definition to state claims against.
-/

/-! ## A177301.P16217208221320267697

`A331562(A055999(n+3))`
-/

namespace A177301.P16217208221320267697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A055999 (n + 3)).toNat

end

end A177301.P16217208221320267697

/-! ## A177301.P2662357901740772590

`A331562(A056119(n)+15)`
-/

namespace A177301.P2662357901740772590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A056119 n + 15).toNat

end

end A177301.P2662357901740772590

/-! ## A177301.P4065732186522012272

`A331562(eq[5, A025581(n)])`
-/

namespace A177301.P4065732186522012272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177301.P4065732186522012272

/-! ## A177301.P9703891877103425348

`A331562(eq[6, A193739(n)])`
-/

namespace A177301.P9703891877103425348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177301.P9703891877103425348

/-! ## A177301.P7515538560354507609

`A331562(Δ[A023551(n+1)])`
-/

namespace A177301.P7515538560354507609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (f1 (n + 1) - f1 n).toNat

end

end A177301.P7515538560354507609

/-!
# A177304: Number of permutations of 6 copies of 1..n with all adjacent differences <= 1 in absolute value.

The programs for A177304, there is no canonical definition to state claims against.
-/

/-! ## A177304.P2685311953055009169

`A331562(eq[6, A025581(n)])`
-/

namespace A177304.P2685311953055009169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177304.P2685311953055009169

/-! ## A177304.P15200835177158685656

`A331562(eq[8, A129713(n)])`
-/

namespace A177304.P15200835177158685656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177304.P15200835177158685656

/-! ## A177304.P4020627954410470415

`A331562(A052905(n+4)-2)`
-/

namespace A177304.P4020627954410470415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A052905 (n + 4) - 2).toNat

end

end A177304.P4020627954410470415

/-! ## A177304.P9962068251509786854

`A331562(A141214(n+4)-4)`
-/

namespace A177304.P9962068251509786854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A141214 (n + 4) - 4).toNat

end

end A177304.P9962068251509786854

/-! ## A177304.P9287798092862095232

`A331562(A253145(n+6)-7)`
-/

namespace A177304.P9287798092862095232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A253145 (n + 6) - 7).toNat

end

end A177304.P9287798092862095232

/-!
# A177307: Number of permutations of 7 copies of 1..n with all adjacent differences <= 1 in absolute value.

The programs for A177307, there is no canonical definition to state claims against.
-/

/-! ## A177307.P4988956046147335609

`A331562(eq[7, A025581(n)])`
-/

namespace A177307.P4988956046147335609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177307.P4988956046147335609

/-! ## A177307.P3175738596027503740

`A331562(eq[8, A193739(n)])`
-/

namespace A177307.P3175738596027503740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177307.P3175738596027503740

/-! ## A177307.P14833032984640883333

`A331562(eq[7, A144257(n+1)])`
-/

namespace A177307.P14833032984640883333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177307.P14833032984640883333

/-! ## A177307.P7938565856599719633

`A331562(eq[8, A004736(n+1)])`
-/

namespace A177307.P7938565856599719633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177307.P7938565856599719633

/-! ## A177307.P2172113789686485485

`A331562(A034856(n+6)+n+2)`
-/

namespace A177307.P2172113789686485485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A034856 (n + 6) + (n + 2 : ℤ)).toNat

end

end A177307.P2172113789686485485

/-!
# A177310: Number of permutations of 8 copies of 1..n with all adjacent differences <= 1 in absolute value.

The programs for A177310, there is no canonical definition to state claims against.
-/

/-! ## A177310.P9093668475936711533

`A331562(eq[8, A025581(n)])`
-/

namespace A177310.P9093668475936711533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177310.P9093668475936711533

/-! ## A177310.P9874151680091385794

`A331562(eq[9, A193739(n)])`
-/

namespace A177310.P9874151680091385794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177310.P9874151680091385794

/-! ## A177310.P3358116196977169438

`A331562(eq[9, A195663(n)])`
-/

namespace A177310.P3358116196977169438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177310.P3358116196977169438

/-! ## A177310.P16325684919962870537

`A331562(eq[9, A004736(n+1)])`
-/

namespace A177310.P16325684919962870537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177310.P16325684919962870537

/-! ## A177310.P5714500372453480084

`A331562(eq[7, log2(A155038(n+1))])`
-/

namespace A177310.P5714500372453480084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A155038 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A177310.P5714500372453480084

/-!
# A177313: Number of permutations of 9 copies of 1..n with all adjacent differences <= 1 in absolute value.

The programs for A177313, there is no canonical definition to state claims against.
-/

/-! ## A177313.P1363417308634149504

`A331562(eq[9, A025581(n)])`
-/

namespace A177313.P1363417308634149504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177313.P1363417308634149504

/-!
# A177316: Number of permutations of n copies of 1..4 with all adjacent differences <= 1 in absolute value.

The programs for A177316, there is no canonical definition to state claims against.
-/

/-! ## A177316.P9516390030194049243

`A361713(n)+A060150(n)`
-/

namespace A177316.P9516390030194049243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361713 n + A060150 n

end

end A177316.P9516390030194049243

/-! ## A177316.P7024587363184501291

`A331562(eq[4, A002262(n)])`
-/

namespace A177316.P7024587363184501291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177316.P7024587363184501291

/-! ## A177316.P11465065930464183441

`record[A331562(A008795(n)+4)]`
-/

namespace A177316.P11465065930464183441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A008795 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177316.P11465065930464183441

/-! ## A177316.P1936693348447687686

`A331562(A133263(n+4)+2)`
-/

namespace A177316.P1936693348447687686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A133263 (n + 4) + 2).toNat

end

end A177316.P1936693348447687686

/-! ## A177316.P13488015062436331613

`A331562(A000217(n+4)+4)`
-/

namespace A177316.P13488015062436331613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A000217 (n + 4) + 4).toNat

end

end A177316.P13488015062436331613

/-!
# A177317: Number of permutations of n copies of 1..5 with all adjacent differences <= 1 in absolute value.

The programs for A177317, there is no canonical definition to state claims against.
-/

/-! ## A177317.P12271939334477089283

`record[A331562(A167499(n))]`
-/

namespace A177317.P12271939334477089283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177317.P12271939334477089283

/-! ## A177317.P8609199029265809702

`A331562(eq[5, A002262(n)])`
-/

namespace A177317.P8609199029265809702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177317.P8609199029265809702

/-! ## A177317.P9520903110941526556

`record[A331562(A000124(n)+4)]`
-/

namespace A177317.P9520903110941526556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A000124 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177317.P9520903110941526556

/-! ## A177317.P4154839533152145988

`A331562(A167614(n+4)+2)`
-/

namespace A177317.P4154839533152145988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A167614 (n + 4) + 2).toNat

end

end A177317.P4154839533152145988

/-! ## A177317.P1527750257618767225

`A331562(A246172(n+1)+19)`
-/

namespace A177317.P1527750257618767225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A246172 (n + 1) + 19).toNat

end

end A177317.P1527750257618767225

/-!
# A177318: Number of permutations of n copies of 1..6 with all adjacent differences <= 1 in absolute value.

The programs for A177318, there is no canonical definition to state claims against.
-/

/-! ## A177318.P5575331819290769820

`A331562(eq[6, A002262(n)])`
-/

namespace A177318.P5575331819290769820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177318.P5575331819290769820

/-! ## A177318.P13828382328478383459

`A331562(eq[5, A327844(n+1)])`
-/

namespace A177318.P13828382328478383459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177318.P13828382328478383459

/-! ## A177318.P7353548070662814878

`A331562(eq[7, A002260(n+1)])`
-/

namespace A177318.P7353548070662814878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177318.P7353548070662814878

/-! ## A177318.P8389480332934029947

`A331562(eq[7, A134868(n+1)])`
-/

namespace A177318.P8389480332934029947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177318.P8389480332934029947

/-! ## A177318.P11550531050094849818

`A331562(eq[8, A245093(n+1)])`
-/

namespace A177318.P11550531050094849818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177318.P11550531050094849818

/-!
# A177319: Number of permutations of n copies of 1..7 with all adjacent differences <= 1 in absolute value.

The programs for A177319, there is no canonical definition to state claims against.
-/

/-! ## A177319.P1067881227630330559

`A331562(eq[7, A002262(n)])`
-/

namespace A177319.P1067881227630330559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177319.P1067881227630330559

/-! ## A177319.P16766553095328880181

`A331562(A056119(n+1)+28)`
-/

namespace A177319.P16766553095328880181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A056119 (n + 1) + 28).toNat

end

end A177319.P16766553095328880181

/-! ## A177319.P318919552510798965

`A331562(eq[7, A144328(n+1)])`
-/

namespace A177319.P318919552510798965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177319.P318919552510798965

/-! ## A177319.P1664543569477643544

`A331562(eq[8, A002260(n+1)])`
-/

namespace A177319.P1664543569477643544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177319.P1664543569477643544

/-! ## A177319.P18224722123275071434

`A331562(eq[8, A134868(n+1)])`
-/

namespace A177319.P18224722123275071434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177319.P18224722123275071434

/-!
# A177320: Number of permutations of n copies of 1..8 with all adjacent differences <= 1 in absolute value.

The programs for A177320, there is no canonical definition to state claims against.
-/

/-! ## A177320.P12826771468483305061

`A331562(A056126(n)+44)`
-/

namespace A177320.P12826771468483305061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A056126 n + 44).toNat

end

end A177320.P12826771468483305061

/-! ## A177320.P7054457903655531623

`A331562(eq[8, A002262(n)])`
-/

namespace A177320.P7054457903655531623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177320.P7054457903655531623

/-! ## A177320.P17565398647553515993

`A331562(eq[7, A327844(n+1)])`
-/

namespace A177320.P17565398647553515993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177320.P17565398647553515993

/-! ## A177320.P6428131962724778767

`A331562(eq[8, A144328(n+1)])`
-/

namespace A177320.P6428131962724778767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177320.P6428131962724778767

/-! ## A177320.P5902106316920630974

`A331562(eq[9, A002260(n+1)])`
-/

namespace A177320.P5902106316920630974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177320.P5902106316920630974

/-!
# A177321: Number of permutations of n copies of 1..9 with all adjacent differences <= 1 in absolute value.

The programs for A177321, there is no canonical definition to state claims against.
-/

/-! ## A177321.P15961614173831131149

`A331562(eq[9, A002262(n)])`
-/

namespace A177321.P15961614173831131149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177321.P15961614173831131149

/-! ## A177321.P3351971746142826383

`A331562(A000124(n+9)+8)`
-/

namespace A177321.P3351971746142826383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (A000124 (n + 9) + 8).toNat

end

end A177321.P3351971746142826383

/-! ## A177321.P15675510904250408883

`A331562(eq[9, A144328(n+1)])`
-/

namespace A177321.P15675510904250408883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177321.P15675510904250408883

/-! ## A177321.P2004500851930833834

`A331562(eq[10, A002260(n+1)])`
-/

namespace A177321.P2004500851930833834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177321.P2004500851930833834

/-! ## A177321.P14751213109370353150

`A331562(eq[10, A134868(n+1)])`
-/

namespace A177321.P14751213109370353150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177321.P14751213109370353150

/-!
# A177322: Number of permutations of n copies of 1..4 with all adjacent differences <= 2 in absolute value.

The programs for A177322, there is no canonical definition to state claims against.
-/

/-! ## A177322.P1453365732118615853

`A156554(n)*A000984(n)`
-/

namespace A177322.P1453365732118615853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156554 n * A000984 n

end

end A177322.P1453365732118615853

/-! ## A177322.P1349620055111819225

`A001405(2*n)*A156554(n)`
-/

namespace A177322.P1349620055111819225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A156554 n

end

end A177322.P1349620055111819225

/-!
# A177329: Number of factors in the representation of n! as a product of distinct terms of A050376.

The programs for A177329, there is no canonical definition to state claims against.
-/

/-! ## A177329.P13200942864729625387

`log2(A375635(n+2))`
-/

namespace A177329.P13200942864729625387
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A375635 (n + 2) : ℝ)

end

end A177329.P13200942864729625387

/-! ## A177329.P12991605714905141601

`A241139(n+2)+A055460(n+2)`
-/

namespace A177329.P12991605714905141601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241139 (n + 2) + A055460 (n + 2)

end

end A177329.P12991605714905141601

/-! ## A177329.P14853458158199173484

`val(A375635(n+2), A037445(A201019(n+1)))`
-/

namespace A177329.P14853458158199173484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A375635 (n + 2)).toNat (A037445 (A201019 (n + 1)).toNat).toNat

end

end A177329.P14853458158199173484

/-! ## A177329.P9138384289093275202

`∏{e}[A375635(A000027(n+2)), #]`
-/

namespace A177329.P9138384289093275202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375635 (A000027 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A177329.P9138384289093275202

/-! ## A177329.P17488131186364426298

`A000005(A375635(n+2)/2)`
-/

namespace A177329.P17488131186364426298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A375635 (n + 2) : ℚ) / 2)).toNat

end

end A177329.P17488131186364426298

/-!
# A177332: Partial sums of round(n^2/29).

The programs for A177332, the canonical program `A177332.P16036193210951469108` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177332 has offset 0).

The definition of A177332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177332.P16036193210951469108

`round(n*(n+1)*(2*n+1)/174)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A177332

/-- `round(n*(n+1)*(2*n+1)/174)` -/
def P16036193210951469108.Spec : Prop :=
  ∀ n, P16036193210951469108.a n = A177332 n

theorem P16036193210951469108.correct : P16036193210951469108.Spec := by
  intro n
  simp only [A177332]

end A177332

/-! ## A177332.P13411054938128009622

`A131138(A175776(n))`
-/

namespace A177332.P13411054938128009622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131138 (A175776 n).toNat

end

end A177332.P13411054938128009622

namespace A177332

/-- `A131138(A175776(n))` -/
def P13411054938128009622.Spec : Prop :=
  ∀ n, P13411054938128009622.a n = A177332 n

end A177332

/-! ## A177332.P9785273821934871728

`A276611(A034351(n+1))`
-/

namespace A177332.P9785273821934871728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A034351 (n + 1)).toNat

end

end A177332.P9785273821934871728

namespace A177332

/-- `A276611(A034351(n+1))` -/
def P9785273821934871728.Spec : Prop :=
  ∀ n, P9785273821934871728.a n = A177332 n

end A177332

/-! ## A177332.P8633458964957779991

`∑[∑[A267113(A246584(n))]]`
-/

namespace A177332.P8633458964957779991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267113 (A246584 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177332.P8633458964957779991

namespace A177332

/-- `∑[∑[A267113(A246584(n))]]` -/
def P8633458964957779991.Spec : Prop :=
  ∀ n, P8633458964957779991.a n = A177332 n

end A177332

/-! ## A177332.P10954461229370713290

`∑[∑[A056170(A119342(n))]]`
-/

namespace A177332.P10954461229370713290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A119342 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177332.P10954461229370713290

namespace A177332

/-- `∑[∑[A056170(A119342(n))]]` -/
def P10954461229370713290.Spec : Prop :=
  ∀ n, P10954461229370713290.a n = A177332 n

end A177332

/-!
# A177336: Greater of twin primes p such that 3*p-2 is also greater of twin primes.

The programs for A177336, there is no canonical definition to state claims against.
-/

/-! ## A177336.P925451868517796767

`A132929(n+1)+1`
-/

namespace A177336.P925451868517796767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132929 (n + 1) + 1

end

end A177336.P925451868517796767

/-! ## A177336.P15035858455774203761

`A174920(n+1)+2`
-/

namespace A177336.P15035858455774203761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174920 (n + 1) + 2

end

end A177336.P15035858455774203761

/-! ## A177336.P12060008261584899623

`A177335(4*(n+1))`
-/

namespace A177336.P12060008261584899623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177335 (4 * (n + 1))

end

end A177336.P12060008261584899623

/-! ## A177336.P17910571331550533423

`A177335(A016813(n))+2`
-/

namespace A177336.P17910571331550533423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177335 (A016813 n).toNat + 2

end

end A177336.P17910571331550533423

/-! ## A177336.P16052352150665900502

`A177335(A008586(n)+1)+2`
-/

namespace A177336.P16052352150665900502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177335 (A008586 n + 1).toNat + 2

end

end A177336.P16052352150665900502

/-! ## A177336.P6987849506498577726

`∩[A001359(n+1), A327700(n+1)]+2`
-/

namespace A177336.P6987849506498577726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A177336.P6987849506498577726

/-! ## A177336.P104976672017131286

`∩[A174913(n+1), A327700(n+1)]+2`
-/

namespace A177336.P104976672017131286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A177336.P104976672017131286

/-! ## A177336.P2108238796188988369

`∩[A174913(n+1), A181848(n+1)]+2`
-/

namespace A177336.P2108238796188988369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A177336.P2108238796188988369

/-! ## A177336.P18339889620147698174

`∩[A054799(n+1), A327700(n+1)]+2`
-/

namespace A177336.P18339889620147698174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A177336.P18339889620147698174

/-! ## A177336.P6349837198358308997

`∩[A063700(n+1), A327700(n+1)]+2`
-/

namespace A177336.P6349837198358308997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A177336.P6349837198358308997

/-! ## A177336.P3236495928623126684

`∩[A181747(n+1), A327700(n+1)]+2`
-/

namespace A177336.P3236495928623126684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A177336.P3236495928623126684

/-! ## A177336.P2707511679133786539

`∩[A280255(n+1), A327700(n+1)]+2`
-/

namespace A177336.P2707511679133786539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A177336.P2707511679133786539

/-! ## A177336.P5536600609097582060

`∩[A063693(n+1), A327700(n+1)]+2`
-/

namespace A177336.P5536600609097582060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A177336.P5536600609097582060

/-! ## A177336.P3938956140974633021

`∩[A280590(n+1), A327700(n+1)]+2`
-/

namespace A177336.P3938956140974633021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A177336.P3938956140974633021

/-! ## A177336.P10531452182105625777

`p?[A181848(n+1)+2]`
-/

namespace A177336.P10531452182105625777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177336.P10531452182105625777

/-! ## A177336.P9187988894537012343

`∩[A001838(n+1), A327700(n+1)]+2`
-/

namespace A177336.P9187988894537012343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A177336.P9187988894537012343

/-!
# A177337: Partial sums of round(n^2/36).

The programs for A177337, the canonical program `A177337.P12786730893184212595` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177337 has offset 0).

The definition of A177337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177337.P12786730893184212595

`floor((n+5)*(2*n²-7*n+17)/216)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A177337

/-- `floor((n+5)*(2*n²-7*n+17)/216)` -/
def P12786730893184212595.Spec : Prop :=
  ∀ n, P12786730893184212595.a n = A177337 n

theorem P12786730893184212595.correct : P12786730893184212595.Spec := by
  intro n
  simp only [A177337]

end A177337

/-! ## A177337.P14539812774079509624

`round(a(n-1)+(n/6)²)` with `a(0)=0`
-/

namespace A177337.P14539812774079509624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + ((n : ℚ) / 6) ^ 2)

end

end A177337.P14539812774079509624

namespace A177337

/-- `round(a(n-1)+(n/6)²)` -/
def P14539812774079509624.Spec : Prop :=
  ∀ n, P14539812774079509624.a n = A177337 n

end A177337

/-! ## A177337.P6343056400940668153

`round(A175724(n)/3)`
-/

namespace A177337.P6343056400940668153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A175724 n : ℚ) / 3)

end

end A177337.P6343056400940668153

namespace A177337

/-- `round(A175724(n)/3)` -/
def P6343056400940668153.Spec : Prop :=
  ∀ n, P6343056400940668153.a n = A177337 n

end A177337

/-! ## A177337.P1038041179713463165

`round(∑[A008724(n)/3])`
-/

namespace A177337.P1038041179713463165
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008724 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177337.P1038041179713463165

namespace A177337

/-- `round(∑[A008724(n)/3])` -/
def P1038041179713463165.Spec : Prop :=
  ∀ n, P1038041179713463165.a n = A177337 n

end A177337

/-! ## A177337.P15554112446664800565

`A002264(∑[round(a(n-1)+(n-1)/6)])` with `a(0)=1, a(1)=0`
-/

namespace A177337.P15554112446664800565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + ((n : ℤ) - 1 : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A177337.P15554112446664800565

namespace A177337

/-- `A002264(∑[round(a(n-1)+(n-1)/6)])` -/
def P15554112446664800565.Spec : Prop :=
  ∀ n, P15554112446664800565.a n = A177337 n

end A177337

/-! ## A177337.P7831997883425927748

`A002264(A175724(n)+1)`
-/

namespace A177337.P7831997883425927748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A175724 n + 1).toNat

end

end A177337.P7831997883425927748

namespace A177337

/-- `A002264(A175724(n)+1)` -/
def P7831997883425927748.Spec : Prop :=
  ∀ n, P7831997883425927748.a n = A177337 n

end A177337

/-!
# A177338: Triangle read by rows: T(n,k) = 2^(n-tau(k)) mod n, where tau(.) is the number of divisors of its argument.

The programs for A177338, the canonical program `A177338.P12772559038533815671` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177338 has offset 1).

The definition of A177338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(row(n)+1-A000005(col(n)+1)))%(row(n)+1)` (program `A177338.P12772559038533815671`, by `A177338.P12772559038533815671.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177338.P12772559038533815671

`(2^(row(n)+1-A000005(col(n)+1)))%(row(n)+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A177338

/-- `(2^(row(n)+1-A000005(col(n)+1)))%(row(n)+1)` -/
def P12772559038533815671.Spec : Prop :=
  ∀ n, P12772559038533815671.a n = A177338 (n + 1)

theorem P12772559038533815671.correct : P12772559038533815671.Spec := by
  intro n
  simp only [A177338, Nat.add_sub_cancel]

end A177338

/-! ## A177338.P10357776684034722288

`A348676(A008554(n+1))%A000005(A098355(n))`
-/

namespace A177338.P10357776684034722288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348676 (A008554 (n + 1)).toNat) (A000005 (A098355 n).toNat)

end

end A177338.P10357776684034722288

namespace A177338

/-- `A348676(A008554(n+1))%A000005(A098355(n))` -/
def P10357776684034722288.Spec : Prop :=
  ∀ n, P10357776684034722288.a n = A177338 (n + 1)

end A177338

/-! ## A177338.P15504445086698882164

`A348676(A055645(n))%log2(A140513(n))`
-/

namespace A177338.P15504445086698882164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348676 (A055645 n).toNat) (SequenceMachineLib.roundAway (Real.logb 2 (A140513 n : ℝ)))

end

end A177338.P15504445086698882164

namespace A177338

/-- `A348676(A055645(n))%log2(A140513(n))` -/
def P15504445086698882164.Spec : Prop :=
  ∀ n, P15504445086698882164.a n = A177338 (n + 1)

end A177338

/-!
# A177339: Partial sums of round(n^2/44).

The programs for A177339, the canonical program `A177339.P4712103199157154807` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177339 has offset 0).

The definition of A177339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177339.P4712103199157154807

`round(n*(n-2)*(2*n+7)/264)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A177339

/-- `round(n*(n-2)*(2*n+7)/264)` -/
def P4712103199157154807.Spec : Prop :=
  ∀ n, P4712103199157154807.a n = A177339 n

theorem P4712103199157154807.correct : P4712103199157154807.Spec := by
  intro n
  simp only [A177339]

end A177339

/-! ## A177339.P4213642152793262760

`a(n-1)+round(n²/44)` with `a(0)=0`
-/

namespace A177339.P4213642152793262760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 44)

end

end A177339.P4213642152793262760

namespace A177339

/-- `a(n-1)+round(n²/44)` -/
def P4213642152793262760.Spec : Prop :=
  ∀ n, P4213642152793262760.a n = A177339 n

end A177339

/-! ## A177339.P16848769382272529955

`∑[round(∑[A004526(n)]/11)]`
-/

namespace A177339.P16848769382272529955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177339.P16848769382272529955

namespace A177339

/-- `∑[round(∑[A004526(n)]/11)]` -/
def P16848769382272529955.Spec : Prop :=
  ∀ n, P16848769382272529955.a n = A177339 n

end A177339

/-! ## A177339.P10794916263730115017

`∑[A325678(A326522(n+4))]`
-/

namespace A177339.P10794916263730115017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A326522 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177339.P10794916263730115017

namespace A177339

/-- `∑[A325678(A326522(n+4))]` -/
def P10794916263730115017.Spec : Prop :=
  ∀ n, P10794916263730115017.a n = A177339 n

end A177339

/-! ## A177339.P14794533778481560590

`floor(floor(A309082(A081435(n))/11)/11)`
-/

namespace A177339.P14794533778481560590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A309082 (A081435 n).toNat : ℚ) / 11⌋ : ℚ) / 11⌋

end

end A177339.P14794533778481560590

namespace A177339

/-- `floor(floor(A309082(A081435(n))/11)/11)` -/
def P14794533778481560590.Spec : Prop :=
  ∀ n, P14794533778481560590.a n = A177339 n

end A177339

/-!
# A177340: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^(n(3n-1)/2).

The programs for A177340, there is no canonical definition to state claims against.
-/

/-! ## A177340.P3332555928586676637

`A110655(A007446(n))-A326545(A045633(n))`
-/

namespace A177340.P3332555928586676637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A007446 n).toNat - A326545 (A045633 n).toNat

end

end A177340.P3332555928586676637

/-! ## A177340.P16949874289687325677

`A117104(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A177340.P16949874289687325677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A117104 (a (n - 1)).toNat

end

end A177340.P16949874289687325677

/-!
# A177341: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^(n(3n+1)/2).

The programs for A177341, there is no canonical definition to state claims against.
-/

/-! ## A177341.P882395266305210422

`A187187(4*A145845(n))`
-/

namespace A177341.P882395266305210422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (4 * A145845 n).toNat

end

end A177341.P882395266305210422

/-! ## A177341.P6394509545054302692

`A187185(∑[A069723(n+1)])`
-/

namespace A177341.P6394509545054302692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A177341.P6394509545054302692

/-!
# A177342: a(n) = (4*n^3-3*n^2+5*n-3)/3.

The programs for A177342, the canonical program `A177342.P11458382800740035729` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177342 has offset 1).

The definition of A177342 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A177342.anchor (n : ℕ) : (A177342 (n + 1) : ℚ) = ((4 * (n + 1) ^ 3 : ℤ) - (3 * (n + 1) ^ 2 : ℤ) + (5 * (n + 1) : ℤ) - 3 : ℚ) / 3` in `Proof.A177.A177342`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177342.P1815087124018226116

`1+n*(4*(n+1)²+n+1+6)/3`
-/

namespace A177342.P1815087124018226116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (n * (4 * (n + 1) ^ 2 + (n + 1) + 6) : ℚ) / 3

end

end A177342.P1815087124018226116

namespace A177342

/-- `1+n*(4*(n+1)²+n+1+6)/3` -/
def P1815087124018226116.Spec : Prop :=
  ∀ n, P1815087124018226116.a n = (A177342 (n + 1) : ℚ)

end A177342

/-! ## A177342.P11458382800740035729

`(4*(n+1)^3-3*(n+1)²+5*(n+1)-3)/3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A177342

/-- `(4*(n+1)^3-3*(n+1)²+5*(n+1)-3)/3` -/
def P11458382800740035729.Spec : Prop :=
  ∀ n, P11458382800740035729.a n = (A177342 (n + 1) : ℚ)

end A177342

/-! ## A177342.P5687780160104238573

`∑[record[or(1, n+1)²-n]]`
-/

namespace A177342.P5687780160104238573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) ^ 2 : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177342.P5687780160104238573

namespace A177342

/-- `∑[record[or(1, n+1)²-n]]` -/
def P5687780160104238573.Spec : Prop :=
  ∀ n, P5687780160104238573.a n = A177342 (n + 1)

end A177342

/-! ## A177342.P17317350472422501175

`or(1, ∑[(2*n+1)²]-n²)`
-/

namespace A177342.P17317350472422501175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ))

end

end A177342.P17317350472422501175

namespace A177342

/-- `or(1, ∑[(2*n+1)²]-n²)` -/
def P17317350472422501175.Spec : Prop :=
  ∀ n, P17317350472422501175.a n = A177342 (n + 1)

end A177342

/-! ## A177342.P11027042489688034922

`∑[record[2-xor(1, -n)]+(2*n)²]`
-/

namespace A177342.P11027042489688034922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177342.P11027042489688034922

namespace A177342

/-- `∑[record[2-xor(1, -n)]+(2*n)²]` -/
def P11027042489688034922.Spec : Prop :=
  ∀ n, P11027042489688034922.a n = A177342 (n + 1)

end A177342

/-! ## A177342.P14006424743527513479

`abs(∑[2*(lcm(n, 2*n+1)+1)]-1)`
-/

namespace A177342.P14006424743527513479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.lcm n (2 * n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1|

end

end A177342.P14006424743527513479

namespace A177342

/-- `abs(∑[2*(lcm(n, 2*n+1)+1)]-1)` -/
def P14006424743527513479.Spec : Prop :=
  ∀ n, P14006424743527513479.a n = A177342 (n + 1)

end A177342

/-! ## A177342.P2441286450770620978

`xor(1, ∑[(2*n+1)*2*n]+2*n)`
-/

namespace A177342.P2441286450770620978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n)

end

end A177342.P2441286450770620978

namespace A177342

/-- `xor(1, ∑[(2*n+1)*2*n]+2*n)` -/
def P2441286450770620978.Spec : Prop :=
  ∀ n, (P2441286450770620978.a n : ℤ) = A177342 (n + 1)

end A177342

/-! ## A177342.P11836588605209209247

`∑[2*((n+1)*ceil(sqrt(a(n-1)))+2)]` with `a(0)=1`
-/

namespace A177342.P11836588605209209247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * ((n + 1 : ℤ) * ⌈Real.sqrt (f1 (n - 1) : ℝ)⌉ + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177342.P11836588605209209247

namespace A177342

/-- `∑[2*((n+1)*ceil(sqrt(a(n-1)))+2)]` -/
def P11836588605209209247.Spec : Prop :=
  ∀ n, P11836588605209209247.a n = A177342 (n + 1)

end A177342

/-! ## A177342.P9378227991261864042

`∑[∑[4*n]+(n²+1)*ceil(atan(n+1))]`
-/

namespace A177342.P9378227991261864042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (n ^ 2 + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177342.P9378227991261864042

namespace A177342

/-- `∑[∑[4*n]+(n²+1)*ceil(atan(n+1))]` -/
def P9378227991261864042.Spec : Prop :=
  ∀ n, P9378227991261864042.a n = A177342 (n + 1)

end A177342

/-! ## A177342.P9601639225021614485

`floor((2*n+1)*2*n+a(n-1)+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A177342.P9601639225021614485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1) * (2 * n) + (a (n - 1) + 2)

end

end A177342.P9601639225021614485

namespace A177342

/-- `floor((2*n+1)*2*n+a(n-1)+2)` -/
def P9601639225021614485.Spec : Prop :=
  ∀ n, (P9601639225021614485.a n : ℤ) = A177342 (n + 1)

end A177342

/-! ## A177342.P13882695545773005273

`∑[A005899(n)+2*n]`
-/

namespace A177342.P13882695545773005273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177342.P13882695545773005273

namespace A177342

/-- `∑[A005899(n)+2*n]` -/
def P13882695545773005273.Spec : Prop :=
  ∀ n, P13882695545773005273.a n = A177342 (n + 1)

end A177342

/-! ## A177342.P7275680789743762358

`∑[A103517(n)+(2*n)²]`
-/

namespace A177342.P7275680789743762358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177342.P7275680789743762358

namespace A177342

/-- `∑[A103517(n)+(2*n)²]` -/
def P7275680789743762358.Spec : Prop :=
  ∀ n, P7275680789743762358.a n = A177342 (n + 1)

end A177342

/-! ## A177342.P5031510226674154639

`∑[xor(1, A004277(n)²)+2*n+1]`
-/

namespace A177342.P5031510226674154639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A004277 n ^ 2) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177342.P5031510226674154639

namespace A177342

/-- `∑[xor(1, A004277(n)²)+2*n+1]` -/
def P5031510226674154639.Spec : Prop :=
  ∀ n, P5031510226674154639.a n = A177342 (n + 1)

end A177342

/-! ## A177342.P9510757956135985616

`∑[gcd(2, A000010(n+2))+(2*n+1)*2*n]`
-/

namespace A177342.P9510757956135985616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000010 (n + 2)) + (2 * n + 1) * (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177342.P9510757956135985616

namespace A177342

/-- `∑[gcd(2, A000010(n+2))+(2*n+1)*2*n]` -/
def P9510757956135985616.Spec : Prop :=
  ∀ n, (P9510757956135985616.a n : ℤ) = A177342 (n + 1)

end A177342

/-! ## A177342.P3171275831084494001

`∑[A000032(C(2, n+2))+(2*n+1)*2*n]`
-/

namespace A177342.P3171275831084494001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) + ((2 * n + 1) * (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177342.P3171275831084494001

namespace A177342

/-- `∑[A000032(C(2, n+2))+(2*n+1)*2*n]` -/
def P3171275831084494001.Spec : Prop :=
  ∀ n, P3171275831084494001.a n = A177342 (n + 1)

end A177342

/-! ## A177342.P15636299245188962957

`∑[A003682(Δ[n²])]`
-/

namespace A177342.P15636299245188962957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003682 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177342.P15636299245188962957

namespace A177342

/-- `∑[A003682(Δ[n²])]` -/
def P15636299245188962957.Spec : Prop :=
  ∀ n, P15636299245188962957.a n = A177342 (n + 1)

end A177342

/-! ## A177342.P463539786427389024

`∑[A137882(2*n+1)/2]`
-/

namespace A177342.P463539786427389024
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137882 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177342.P463539786427389024

namespace A177342

/-- `∑[A137882(2*n+1)/2]` -/
def P463539786427389024.Spec : Prop :=
  ∀ n, P463539786427389024.a n = (A177342 (n + 1) : ℚ)

end A177342

/-! ## A177342.P11946154162101027748

`∑[A010000(2*n)+2*n]`
-/

namespace A177342.P11946154162101027748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (2 * n) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177342.P11946154162101027748

namespace A177342

/-- `∑[A010000(2*n)+2*n]` -/
def P11946154162101027748.Spec : Prop :=
  ∀ n, P11946154162101027748.a n = A177342 (n + 1)

end A177342

/-! ## A177342.P268793932778023414

`∑[A000027(xor(1, A004277(n)²)+n+1)+n]`
-/

namespace A177342.P268793932778023414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.xor 1 (A004277 n ^ 2) + (n + 1 : ℤ)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177342.P268793932778023414

namespace A177342

/-- `∑[A000027(xor(1, A004277(n)²)+n+1)+n]` -/
def P268793932778023414.Spec : Prop :=
  ∀ n, P268793932778023414.a n = A177342 (n + 1)

end A177342

/-!
# A177343: Number of times the n-th prime occurs in A039654.

The programs for A177343, there is no canonical definition to state claims against.
-/

/-! ## A177343.P11774553148602549613

`A143811(A247907(∑[A000001(n)]))`
-/

namespace A177343.P11774553148602549613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143811 (A247907 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A177343.P11774553148602549613

/-! ## A177343.P17279718033731405610

`A226378(A053830(n^A226378(n)))`
-/

namespace A177343.P17279718033731405610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A053830 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A226378 n : ℤ))).toNat).toNat

end

end A177343.P17279718033731405610

/-! ## A177343.P6920086115036125050

`gcd(A003963(A295947(n)), A126846(n+1))`
-/

namespace A177343.P6920086115036125050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003963 (A295947 n).toNat) (A126846 (n + 1))

end

end A177343.P6920086115036125050

/-! ## A177343.P10494970571266508661

`∏{e}[and(6^n-3^n, ∑[floor(3^(n-1))]), #]`
-/

namespace A177343.P10494970571266508661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((6 ^ n : ℤ) - (3 ^ n : ℤ)) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A177343.P10494970571266508661

/-! ## A177343.P12795160798370023923

`∏{e}[47*A005803(n), #]`
-/

namespace A177343.P12795160798370023923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  47 * A005803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A177343.P12795160798370023923

/-!
# A177348: Subset of A174525 not of the form a*a + b*b - 1.

The programs for A177348, there is no canonical definition to state claims against.
-/

/-! ## A177348.P10502980232217830604

`∩[A174525(n+1), A255068(n)]`
-/

namespace A177348.P10502980232217830604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177348.P10502980232217830604

/-!
# A177349: Primes p for which no m! has a prime power factorization of the form 2^p*...*p^1*...

The programs for A177349, the canonical program `A177349.P17512532981795150140` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177349 has offset 1).

The definition of A177349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2033 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177349.P17512532981795150140

`p?[A046699(n+2)+A046699(n+2)+n]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A177349

/-- `p?[A046699(n+2)+A046699(n+2)+n]` -/
def P17512532981795150140.Spec : Prop :=
  ∀ n, P17512532981795150140.a n = A177349 (n + 1)

theorem P17512532981795150140.correct : P17512532981795150140.Spec := by
  intro n
  simp only [A177349, Nat.add_sub_cancel]

end A177349

/-! ## A177349.P5529012973804514574

`p?[A055938(n+1)]`
-/

namespace A177349.P5529012973804514574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177349.P5529012973804514574

namespace A177349

/-- `p?[A055938(n+1)]` -/
def P5529012973804514574.Spec : Prop :=
  ∀ n, P5529012973804514574.a n = A177349 (n + 1)

end A177349

/-! ## A177349.P18431611884745273061

`p?[A007843(n+1)+n]`
-/

namespace A177349.P18431611884745273061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177349.P18431611884745273061

namespace A177349

/-- `p?[A007843(n+1)+n]` -/
def P18431611884745273061.Spec : Prop :=
  ∀ n, P18431611884745273061.a n = A177349 (n + 1)

end A177349

/-! ## A177349.P7066225250751304168

`filter[A055938(n+1), A010051(#)]`
-/

namespace A177349.P7066225250751304168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A177349.P7066225250751304168

namespace A177349

/-- `filter[A055938(n+1), A010051(#)]` -/
def P7066225250751304168.Spec : Prop :=
  ∀ n, P7066225250751304168.a n = A177349 (n + 1)

end A177349

/-! ## A177349.P18015011827571308696

`record[A006530(A045412(n+1)-1)]`
-/

namespace A177349.P18015011827571308696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A045412 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177349.P18015011827571308696

namespace A177349

/-- `record[A006530(A045412(n+1)-1)]` -/
def P18015011827571308696.Spec : Prop :=
  ∀ n, P18015011827571308696.a n = A177349 (n + 1)

end A177349

/-! ## A177349.P483574933718066186

`record[A020639(A045412(n+1)-1)]`
-/

namespace A177349.P483574933718066186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A045412 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177349.P483574933718066186

namespace A177349

/-- `record[A020639(A045412(n+1)-1)]` -/
def P483574933718066186.Spec : Prop :=
  ∀ n, P483574933718066186.a n = A177349 (n + 1)

end A177349

/-! ## A177349.P9091746936173815948

`record[A020639(A007843(n+1)+n)]`
-/

namespace A177349.P9091746936173815948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007843 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177349.P9091746936173815948

namespace A177349

/-- `record[A020639(A007843(n+1)+n)]` -/
def P9091746936173815948.Spec : Prop :=
  ∀ n, P9091746936173815948.a n = A177349 (n + 1)

end A177349

/-! ## A177349.P4017599178003904724

`∩[A000040(n+1), A055938(n+1)]`
-/

namespace A177349.P4017599178003904724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177349.P4017599178003904724

namespace A177349

/-- `∩[A000040(n+1), A055938(n+1)]` -/
def P4017599178003904724.Spec : Prop :=
  ∀ n, (P4017599178003904724.a n : ℤ) = A177349 (n + 1)

end A177349

/-! ## A177349.P15562356798714443825

`∩[A008578(n+1), A055938(n+1)]`
-/

namespace A177349.P15562356798714443825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177349.P15562356798714443825

namespace A177349

/-- `∩[A008578(n+1), A055938(n+1)]` -/
def P15562356798714443825.Spec : Prop :=
  ∀ n, (P15562356798714443825.a n : ℤ) = A177349 (n + 1)

end A177349

/-! ## A177349.P2453545372591899641

`∩[A045344(n+1), A055938(n+1)]`
-/

namespace A177349.P2453545372591899641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177349.P2453545372591899641

namespace A177349

/-- `∩[A045344(n+1), A055938(n+1)]` -/
def P2453545372591899641.Spec : Prop :=
  ∀ n, (P2453545372591899641.a n : ℤ) = A177349 (n + 1)

end A177349

/-! ## A177349.P13042593690818835028

`∩[A046022(n+1), A055938(n+1)]`
-/

namespace A177349.P13042593690818835028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177349.P13042593690818835028

namespace A177349

/-- `∩[A046022(n+1), A055938(n+1)]` -/
def P13042593690818835028.Spec : Prop :=
  ∀ n, (P13042593690818835028.a n : ℤ) = A177349 (n + 1)

end A177349

/-! ## A177349.P12417948550894053996

`∩[A055938(n+1), A062972(n+1)]`
-/

namespace A177349.P12417948550894053996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177349.P12417948550894053996

namespace A177349

/-- `∩[A055938(n+1), A062972(n+1)]` -/
def P12417948550894053996.Spec : Prop :=
  ∀ n, (P12417948550894053996.a n : ℤ) = A177349 (n + 1)

end A177349

/-! ## A177349.P6448178737041176989

`∩[A055938(n+1), A106118(n+1)]`
-/

namespace A177349.P6448178737041176989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177349.P6448178737041176989

namespace A177349

/-- `∩[A055938(n+1), A106118(n+1)]` -/
def P6448178737041176989.Spec : Prop :=
  ∀ n, (P6448178737041176989.a n : ℤ) = A177349 (n + 1)

end A177349

/-! ## A177349.P13411851679074319107

`∩[A055938(n+1), A138837(n+1)]`
-/

namespace A177349.P13411851679074319107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177349.P13411851679074319107

namespace A177349

/-- `∩[A055938(n+1), A138837(n+1)]` -/
def P13411851679074319107.Spec : Prop :=
  ∀ n, (P13411851679074319107.a n : ℤ) = A177349 (n + 1)

end A177349

/-! ## A177349.P2149273521944039919

`∩[A055938(n+1), A158611(n+1)]`
-/

namespace A177349.P2149273521944039919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177349.P2149273521944039919

namespace A177349

/-- `∩[A055938(n+1), A158611(n+1)]` -/
def P2149273521944039919.Spec : Prop :=
  ∀ n, (P2149273521944039919.a n : ℤ) = A177349 (n + 1)

end A177349

/-! ## A177349.P9413882187451822357

`∩[A055938(n+1), A174090(n+1)]`
-/

namespace A177349.P9413882187451822357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177349.P9413882187451822357

namespace A177349

/-- `∩[A055938(n+1), A174090(n+1)]` -/
def P9413882187451822357.Spec : Prop :=
  ∀ n, (P9413882187451822357.a n : ℤ) = A177349 (n + 1)

end A177349

/-! ## A177349.P8102016104083536134

`∩[A055938(n+1), A175787(n+1)]`
-/

namespace A177349.P8102016104083536134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177349.P8102016104083536134

namespace A177349

/-- `∩[A055938(n+1), A175787(n+1)]` -/
def P8102016104083536134.Spec : Prop :=
  ∀ n, (P8102016104083536134.a n : ℤ) = A177349 (n + 1)

end A177349

/-! ## A177349.P15575786597872739360

`∩[A055938(n+1), A182986(n+1)]`
-/

namespace A177349.P15575786597872739360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177349.P15575786597872739360

namespace A177349

/-- `∩[A055938(n+1), A182986(n+1)]` -/
def P15575786597872739360.Spec : Prop :=
  ∀ n, (P15575786597872739360.a n : ℤ) = A177349 (n + 1)

end A177349

/-! ## A177349.P10396984149927625152

`∩[A055938(n+1), A335402(n+1)]`
-/

namespace A177349.P10396984149927625152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177349.P10396984149927625152

namespace A177349

/-- `∩[A055938(n+1), A335402(n+1)]` -/
def P10396984149927625152.Spec : Prop :=
  ∀ n, (P10396984149927625152.a n : ℤ) = A177349 (n + 1)

end A177349

/-! ## A177349.P14168906955783455602

`p?[comp[∑[A001511(n+1)]]]`
-/

namespace A177349.P14168906955783455602
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A177349.P14168906955783455602

namespace A177349

/-- `p?[comp[∑[A001511(n+1)]]]` -/
def P14168906955783455602.Spec : Prop :=
  ∀ n, (P14168906955783455602.a n : ℤ) = A177349 (n + 1)

end A177349

/-!
# A177351: Triangle t(n,k)= sum_{m=1..floor(n/2-k)} binomial(n-m-k,m+k), -floor(n/2) <= k <= floor(n/2), read by rows.

The programs for A177351, there is no canonical definition to state claims against.
-/

/-! ## A177351.P8510783129489614610

`A177352(n)-A052553(n)`
-/

namespace A177351.P8510783129489614610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177352 n - A052553 n

end

end A177351.P8510783129489614610

/-! ## A177351.P10365682277147065522

`A177352(n)-A320508(A007401(n+1))`
-/

namespace A177351.P10365682277147065522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177352 n - A320508 (A007401 (n + 1)).toNat

end

end A177351.P10365682277147065522

/-!
# A177352: The triangle t(n,k) of the binomial sum as in A177351 in the column index range -floor(n/2)-1 <=k <= floor(n/2)-1.

The programs for A177352, there is no canonical definition to state claims against.
-/

/-! ## A177352.P5412518419899634640

`A177351(n)+A052553(n)`
-/

namespace A177352.P5412518419899634640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177351 n + A052553 n

end

end A177352.P5412518419899634640

/-! ## A177352.P15081903561523336246

`A320508(A007401(n+1))+A177351(n)`
-/

namespace A177352.P15081903561523336246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320508 (A007401 (n + 1)).toNat + A177351 n

end

end A177352.P15081903561523336246

/-!
# A177353: n! (mod n^2+1).

The programs for A177353, the canonical program `A177353.P16939415667883646465` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177353 has offset 1).

The definition of A177353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177353.P16939415667883646465

`(n+1)!%((n+1)²+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A177353

/-- `(n+1)!%((n+1)²+1)` -/
def P16939415667883646465.Spec : Prop :=
  ∀ n, (P16939415667883646465.a n : ℤ) = A177353 (n + 1)

theorem P16939415667883646465.correct : P16939415667883646465.Spec := by
  intro n
  simp only [A177353, Nat.add_sub_cancel]

end A177353

/-! ## A177353.P10574001195701266078

`∏[n+1]%((n+1)²+1)`
-/

namespace A177353.P10574001195701266078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % ((n + 1) ^ 2 + 1)

end

end A177353.P10574001195701266078

namespace A177353

/-- `∏[n+1]%((n+1)²+1)` -/
def P10574001195701266078.Spec : Prop :=
  ∀ n, (P10574001195701266078.a n : ℤ) = A177353 (n + 1)

theorem P10574001195701266078.correct : P10574001195701266078.Spec := by
  intro n
  simp only [A177353, Nat.add_sub_cancel, A177353.P10574001195701266078.f1, A177353.P10574001195701266078.a, A177353.P16939415667883646465.a, SequenceMachineLib.memo_apply]
  try simp

end A177353

/-! ## A177353.P3399247406466023964

`A005843(A000142(n+1)%((n+1)²+1))/2`
-/

namespace A177353.P3399247406466023964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (Int.tmod (A000142 (n + 1)) ((n + 1) ^ 2 + 1 : ℤ)).toNat : ℚ) / 2

end

end A177353.P3399247406466023964

namespace A177353

/-- `A005843(A000142(n+1)%((n+1)²+1))/2` -/
def P3399247406466023964.Spec : Prop :=
  ∀ n, P3399247406466023964.a n = (A177353 (n + 1) : ℚ)

end A177353

/-!
# A177354: a(n) is the moment of order n for the density measure 24*x^4*exp(-x)/( (x^4*exp(-x)*Ei(x) - x^3 - x^2 - 2*x - 6)^2 + Pi^2*x^8*exp(-2*x) ) over the interval 0..infinity.

The programs for A177354, there is no canonical definition to state claims against.
-/

/-! ## A177354.P5357987317658250943

`5*A111532(n+1)`
-/

namespace A177354.P5357987317658250943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A111532 (n + 1)

end

end A177354.P5357987317658250943

/-! ## A177354.P14875315079040437984

`Δ[5*∑[A111532(n)]]`
-/

namespace A177354.P14875315079040437984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111532 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177354.P14875315079040437984

/-! ## A177354.P12101526543121262473

`record[5*A111532(A056926(n))]`
-/

namespace A177354.P12101526543121262473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A111532 (A056926 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177354.P12101526543121262473

/-! ## A177354.P2901488318106693211

`5*A111528(A055999(n+4))`
-/

namespace A177354.P2901488318106693211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A111528 (A055999 (n + 4)).toNat

end

end A177354.P2901488318106693211

/-!
# A177357: Number of positive squares <= prime(n) - 3.

The programs for A177357, the canonical program `A177357.P2631027854699251735` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177357 has offset 2).

The definition of A177357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177357.P2631027854699251735

`A000196(A086801(n+2))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A177357

/-- `A000196(A086801(n+2))` -/
def P2631027854699251735.Spec : Prop :=
  ∀ n, P2631027854699251735.a n = A177357 (n + 2)

theorem P2631027854699251735.correct : P2631027854699251735.Spec := by
  intro n
  simp only [A177357, Nat.add_sub_cancel]

end A177357

/-! ## A177357.P6455571870994497099

`floor(sqrt(p?[2*n+1]-3))`
-/

namespace A177357.P6455571870994497099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 3)

end

end A177357.P6455571870994497099

namespace A177357

/-- `floor(sqrt(p?[2*n+1]-3))` -/
def P6455571870994497099.Spec : Prop :=
  ∀ n, P6455571870994497099.a n = A177357 (n + 2)

end A177357

/-! ## A177357.P15758631329049661860

`floor(sqrt(A154115(n+1)))`
-/

namespace A177357.P15758631329049661860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A154115 (n + 1))

end

end A177357.P15758631329049661860

namespace A177357

/-- `floor(sqrt(A154115(n+1)))` -/
def P15758631329049661860.Spec : Prop :=
  ∀ n, P15758631329049661860.a n = A177357 (n + 2)

end A177357

/-! ## A177357.P7079682112429620744

`floor(sqrt(A065091(n+1)-3))`
-/

namespace A177357.P7079682112429620744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A065091 (n + 1) - 3)

end

end A177357.P7079682112429620744

namespace A177357

/-- `floor(sqrt(A065091(n+1)-3))` -/
def P7079682112429620744.Spec : Prop :=
  ∀ n, P7079682112429620744.a n = A177357 (n + 2)

end A177357

/-! ## A177357.P13341473651188570120

`floor(sqrt(2*A067076(n+1)))`
-/

namespace A177357.P13341473651188570120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A067076 (n + 1))

end

end A177357.P13341473651188570120

namespace A177357

/-- `floor(sqrt(2*A067076(n+1)))` -/
def P13341473651188570120.Spec : Prop :=
  ∀ n, P13341473651188570120.a n = A177357 (n + 2)

end A177357

/-! ## A177357.P5618342172720717352

`floor(sqrt(A006093(n+2)-2))`
-/

namespace A177357.P5618342172720717352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A006093 (n + 2) - 2)

end

end A177357.P5618342172720717352

namespace A177357

/-- `floor(sqrt(A006093(n+2)-2))` -/
def P5618342172720717352.Spec : Prop :=
  ∀ n, P5618342172720717352.a n = A177357 (n + 2)

end A177357

/-! ## A177357.P15982106068753611893

`floor(sqrt(A000040(n+2)-3))`
-/

namespace A177357.P15982106068753611893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000040 (n + 2) - 3)

end

end A177357.P15982106068753611893

namespace A177357

/-- `floor(sqrt(A000040(n+2)-3))` -/
def P15982106068753611893.Spec : Prop :=
  ∀ n, P15982106068753611893.a n = A177357 (n + 2)

end A177357

/-! ## A177357.P18053349844539640058

`A172471(A067076(n+1))`
-/

namespace A177357.P18053349844539640058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A067076 (n + 1)).toNat

end

end A177357.P18053349844539640058

namespace A177357

/-- `A172471(A067076(n+1))` -/
def P18053349844539640058.Spec : Prop :=
  ∀ n, P18053349844539640058.a n = A177357 (n + 2)

end A177357

/-! ## A177357.P17300919370647539117

`floor(record[sqrt(A303603(n+1))])`
-/

namespace A177357.P17300919370647539117
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A303603 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A177357.P17300919370647539117

namespace A177357

/-- `floor(record[sqrt(A303603(n+1))])` -/
def P17300919370647539117.Spec : Prop :=
  ∀ n, P17300919370647539117.a n = A177357 (n + 2)

end A177357

/-! ## A177357.P1151123942358780872

`floor(sqrt(record[A063070(n+1)]))`
-/

namespace A177357.P1151123942358780872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A177357.P1151123942358780872

namespace A177357

/-- `floor(sqrt(record[A063070(n+1)]))` -/
def P1151123942358780872.Spec : Prop :=
  ∀ n, P1151123942358780872.a n = A177357 (n + 2)

end A177357

/-! ## A177357.P5927003729282681820

`round(sqrt(record[A079530(n+1)]))`
-/

namespace A177357.P5927003729282681820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A177357.P5927003729282681820

namespace A177357

/-- `round(sqrt(record[A079530(n+1)]))` -/
def P5927003729282681820.Spec : Prop :=
  ∀ n, P5927003729282681820.a n = A177357 (n + 2)

end A177357

/-! ## A177357.P9313928016623567621

`A000196(A154115(n+1))`
-/

namespace A177357.P9313928016623567621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A154115 (n + 1)).toNat

end

end A177357.P9313928016623567621

namespace A177357

/-- `A000196(A154115(n+1))` -/
def P9313928016623567621.Spec : Prop :=
  ∀ n, P9313928016623567621.a n = A177357 (n + 2)

end A177357

/-! ## A177357.P1390591097109103412

`A339186(A040976(n+2))`
-/

namespace A177357.P1390591097109103412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339186 (A040976 (n + 2)).toNat

end

end A177357.P1390591097109103412

namespace A177357

/-- `A339186(A040976(n+2))` -/
def P1390591097109103412.Spec : Prop :=
  ∀ n, P1390591097109103412.a n = A177357 (n + 2)

end A177357

/-! ## A177357.P15689308700343811168

`A000196(A006093(n+2)-2)`
-/

namespace A177357.P15689308700343811168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A006093 (n + 2) - 2).toNat

end

end A177357.P15689308700343811168

namespace A177357

/-- `A000196(A006093(n+2)-2)` -/
def P15689308700343811168.Spec : Prop :=
  ∀ n, P15689308700343811168.a n = A177357 (n + 2)

theorem P15689308700343811168.correct : P15689308700343811168.Spec := by
  intro n
  simp only [A177357, Nat.add_sub_cancel, A177357.P15689308700343811168.a, A177357.P2631027854699251735.a, A000196, A000196.P15434771586934192083.a, A006093, A006093.P2906174024863549003.a, A086801, A086801.P17699144881820784956.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A177357

/-! ## A177357.P748252137517238205

`A000196(2*A067076(n+1))`
-/

namespace A177357.P748252137517238205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A067076 (n + 1)).toNat

end

end A177357.P748252137517238205

namespace A177357

/-- `A000196(2*A067076(n+1))` -/
def P748252137517238205.Spec : Prop :=
  ∀ n, P748252137517238205.a n = A177357 (n + 2)

end A177357

/-! ## A177357.P4513376372559096207

`A000196(A067076(n+1)+A067076(n+1))`
-/

namespace A177357.P4513376372559096207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A067076 (n + 1) + A067076 (n + 1)).toNat

end

end A177357.P4513376372559096207

namespace A177357

/-- `A000196(A067076(n+1)+A067076(n+1))` -/
def P4513376372559096207.Spec : Prop :=
  ∀ n, P4513376372559096207.a n = A177357 (n + 2)

end A177357

/-!
# A177363: a(n) contains the nonzero frequencies f(d) of digits d=0 .. 9 in all terms up to a(n-1) in concatenated form sorted with respect to d: f(0)//0//f(1)//1//...//f(9)//9. Initial term a(1)=4.

The programs for A177363, there is no canonical definition to state claims against.
-/

/-! ## A177363.P1387223211663775393

`A177365(n+1)-A020639((floor((sqrt(3)+2)^n)+1)²-2)`
-/

namespace A177363.P1387223211663775393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177365 (n + 1) - A020639 ((⌊(Real.sqrt (3 : ℝ) + 2) ^ n⌋ + 1) ^ 2 - 2).toNat

end

end A177363.P1387223211663775393

/-!
# A177364: a(n) contains the nonzero frequencies f(d) of digits d=0 .. 9 in all terms up to a(n-1) in concatenated form sorted with respect to d: f(0)//0//f(1)//1//...//f(9)//9. Initial term a(1)=5.

The programs for A177364, there is no canonical definition to state claims against.
-/

/-! ## A177364.P14395562187027809538

`A177363(n+1)+A072411(A000533(n))`
-/

namespace A177364.P14395562187027809538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177363 (n + 1) + A072411 (A000533 n).toNat

end

end A177364.P14395562187027809538

/-!
# A177365: a(n) contains the nonzero frequencies f(d) of digits d=0 .. 9 in all terms up to a(n-1) in concatenated form sorted with respect to d: f(0)//0//f(1)//1//...//f(9)//9. Initial term a(1)=6.

The programs for A177365, there is no canonical definition to state claims against.
-/

/-! ## A177365.P2141955645785099957

`A177368(n+1)+A078070(A001147(n))`
-/

namespace A177365.P2141955645785099957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177368 (n + 1) + A078070 (A001147 n).toNat

end

end A177365.P2141955645785099957

/-! ## A177365.P6430639838206735126

`A177367(n+1)+A114284(A054122(n))`
-/

namespace A177365.P6430639838206735126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177367 (n + 1) + A114284 (A054122 n).toNat

end

end A177365.P6430639838206735126

/-!
# A177366: a(n) contains the nonzero frequencies f(d) of digits d=0 .. 9 in all terms up to a(n-1) in concatenated form sorted with respect to d: f(0)//0//f(1)//1//...//f(9)//9. Initial term a(1)=7.

The programs for A177366, there is no canonical definition to state claims against.
-/

/-! ## A177366.P13183658351817301814

`A177368(n+1)+A134824(4^n+1)-1`
-/

namespace A177366.P13183658351817301814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177368 (n + 1) + A134824 (4 ^ n + 1) - 1

end

end A177366.P13183658351817301814

/-! ## A177366.P2055250053104472446

`A177368(n+1)-A089120(2*4^n-1)`
-/

namespace A177366.P2055250053104472446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177368 (n + 1) - A089120 (2 * 4 ^ n - 1)

end

end A177366.P2055250053104472446

/-! ## A177366.P4930611212945503790

`A177368(n+1)-A136441(comp[3*n]²)-1`
-/

namespace A177366.P4930611212945503790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177368 (n + 1) - A136441 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2) - 1

end

end A177366.P4930611212945503790

/-!
# A177367: a(n) contains the nonzero frequencies f(d) of digits d=0 .. 9 in all terms up to a(n-1) in concatenated form sorted with respect to d: f(0)//0//f(1)//1//...//f(9)//9. Initial term a(1)=8.

The programs for A177367, there is no canonical definition to state claims against.
-/

/-! ## A177367.P15518526125912280339

`A177368(n+1)+A134824(4^n+1)`
-/

namespace A177367.P15518526125912280339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177368 (n + 1) + A134824 (4 ^ n + 1)

end

end A177367.P15518526125912280339

/-! ## A177367.P14594699007678855978

`(A177368(n+1)-1)^A144261(n+4)`
-/

namespace A177367.P14594699007678855978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177368 (n + 1) - 1 : ℚ) ^ (A144261 (n + 4) : ℤ)

end

end A177367.P14594699007678855978

/-! ## A177367.P12749274916145489275

`A177368(n+1)-A136441(comp[3*n]²)`
-/

namespace A177367.P12749274916145489275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177368 (n + 1) - A136441 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2)

end

end A177367.P12749274916145489275

/-!
# A177368: Count the digits of the previous terms and describe nonzero counts, digits in ascending order, concatenating the count and the digit. Initial term is 9.

The programs for A177368, there is no canonical definition to state claims against.
-/

/-! ## A177368.P3015985614538558397

`A177367(n+1)+A177343(A177381(n))`
-/

namespace A177368.P3015985614538558397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177367 (n + 1) + A177343 (A177381 n).toNat

end

end A177368.P3015985614538558397

/-! ## A177368.P5768868219068936176

`A177367(n+1)-A260196(A188161(n))`
-/

namespace A177368.P5768868219068936176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177367 (n + 1) - A260196 (A188161 n).toNat

end

end A177368.P5768868219068936176

/-!
# A177369: Expansion of g.f.: (1+4*x-4*x^2)/(1-3*x-4*x^2+4*x^3).

The programs for A177369, the canonical program `A177369.P4163967355982582432` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177369 has offset 1).

The definition of A177369 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x-4x^2)/(1-3x-4x^2+4x^3))` (program `A177369.P4163967355982582432`, by `A177369.P4163967355982582432.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177369.P4163967355982582432

`ogf((1+4x-4x^2)/(1-3x-4x^2+4x^3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A177369

/-- `ogf((1+4x-4x^2)/(1-3x-4x^2+4x^3))` -/
def P4163967355982582432.Spec : Prop :=
  ∀ n, P4163967355982582432.a n = A177369 (n + 1)

theorem P4163967355982582432.correct : P4163967355982582432.Spec := by
  intro n
  simp only [A177369, Nat.add_sub_cancel]

end A177369

/-! ## A177369.P4886648397023048141

`3*a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=7, a(2)=21`
-/

namespace A177369.P4886648397023048141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 21] fun n a =>
  3 * a (n - 1) + 4 * a (n - 2) - 4 * a (n - 3)

end

end A177369.P4886648397023048141

namespace A177369

/-- `3*a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P4886648397023048141.Spec : Prop :=
  ∀ n, P4886648397023048141.a n = A177369 (n + 1)

end A177369

/-! ## A177369.P15240241832649205495

`A052965(n+1)-∑[A052965(n)]`
-/

namespace A177369.P15240241832649205495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052965 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177369.P15240241832649205495

namespace A177369

/-- `A052965(n+1)-∑[A052965(n)]` -/
def P15240241832649205495.Spec : Prop :=
  ∀ n, P15240241832649205495.a n = A177369 (n + 1)

end A177369

/-! ## A177369.P17623418594729009877

`A220621(∑[n+1]+2)`
-/

namespace A177369.P17623418594729009877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A177369.P17623418594729009877

namespace A177369

/-- `A220621(∑[n+1]+2)` -/
def P17623418594729009877.Spec : Prop :=
  ∀ n, P17623418594729009877.a n = A177369 (n + 1)

end A177369

/-! ## A177369.P1472663051781576810

`record[ratio[A220621(A080036(n))]]`
-/

namespace A177369.P1472663051781576810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220621 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177369.P1472663051781576810

namespace A177369

/-- `record[ratio[A220621(A080036(n))]]` -/
def P1472663051781576810.Spec : Prop :=
  ∀ n, P1472663051781576810.a n = (A177369 (n + 1) : ℚ)

end A177369

/-!
# A177370: (1+7*x-6*x^2)/(1-4*x-8*x^2+6*x^3).

The programs for A177370, the canonical program `A177370.P7133039894535233943` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177370 has offset 1).

The definition of A177370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177370.P7133039894535233943

`ogf((1+7x-6x^2)/(1-4x-8x^2+6x^3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A177370

/-- `ogf((1+7x-6x^2)/(1-4x-8x^2+6x^3))` -/
def P7133039894535233943.Spec : Prop :=
  ∀ n, P7133039894535233943.a n = A177370 (n + 1)

theorem P7133039894535233943.correct : P7133039894535233943.Spec := by
  intro n
  simp only [A177370, Nat.add_sub_cancel]

end A177370

/-!
# A177371: Expansion of (1+12*x-24*x^2+8*x^4)/((1-8*x+4*x^2+4*x^3)*(1+2*x-2*x^2)).

The programs for A177371, the canonical program `A177371.P7901630549474675076` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177371 has offset 0).

The definition of A177371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+12x-24x^2+8x^4)/(1-6x-14x^2+28x^3-8x^5))` (program `A177371.P7901630549474675076`, by `A177371.P7901630549474675076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177371.P7901630549474675076

`ogf((1+12x-24x^2+8x^4)/(1-6x-14x^2+28x^3-8x^5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A177371

/-- `ogf((1+12x-24x^2+8x^4)/(1-6x-14x^2+28x^3-8x^5))` -/
def P7901630549474675076.Spec : Prop :=
  ∀ n, P7901630549474675076.a n = A177371 n

theorem P7901630549474675076.correct : P7901630549474675076.Spec := by
  intro n
  simp only [A177371]

end A177371

/-!
# A177372: Fibonacci numbers whose decimal expansion does not contain any digit 7.

The programs for A177372, there is no canonical definition to state claims against.
-/

/-! ## A177372.P12325512567313979368

`A000045(eq[C(2, n+2), A085861(n)])`
-/

namespace A177372.P12325512567313979368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177372.P12325512567313979368

/-! ## A177372.P6998830729748827392

`A000045(eq[A000007(n), A085861(n)])`
-/

namespace A177372.P6998830729748827392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177372.P6998830729748827392

/-! ## A177372.P12179418770988076818

`A000045(eq[A000038(n), A085861(n)])`
-/

namespace A177372.P12179418770988076818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177372.P12179418770988076818

/-! ## A177372.P18304730342324571614

`A000045(lt[A098567(n+1), A028387(n)])`
-/

namespace A177372.P18304730342324571614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177372.P18304730342324571614

/-! ## A177372.P12525397034779369199

`A000045(lt[A098567(n+1), A227786(n+1)])`
-/

namespace A177372.P12525397034779369199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177372.P12525397034779369199

/-!
# A177373: a(n) = 2*n*a(n-1) if the parity of the ratio a(n-1)/a(n-2) is odd, otherwise (for even parity) a(n) = (2n-1)*a(n-1).

The programs for A177373, the canonical program `A177373.P4947550581456104515` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177373 has offset 0).

The definition of A177373 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177373.P4947550581456104515

`2*(a(n-1)+(n-1)*(2*n-3)*a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A177373

/-- `2*(a(n-1)+(n-1)*(2*n-3)*a(n-2))` -/
def P4947550581456104515.Spec : Prop :=
  ∀ n, P4947550581456104515.a n = A177373 n

theorem P4947550581456104515.correct : P4947550581456104515.Spec := by
  intro n
  simp only [A177373]

end A177373

/-! ## A177373.P4172165369965339073

`∏[record[abs(or(2, n-1))]]`
-/

namespace A177373.P4172165369965339073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 ((n : ℤ) - 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A177373.P4172165369965339073

namespace A177373

/-- `∏[record[abs(or(2, n-1))]]` -/
def P4172165369965339073.Spec : Prop :=
  ∀ n, P4172165369965339073.a n = A177373 n

end A177373

/-! ## A177373.P10724662117110087093

`-∏[record[or(2, n-1)]]`
-/

namespace A177373.P10724662117110087093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A177373.P10724662117110087093

namespace A177373

/-- `-∏[record[or(2, n-1)]]` -/
def P10724662117110087093.Spec : Prop :=
  ∀ n, P10724662117110087093.a n = A177373 n

end A177373

/-! ## A177373.P13223360799102379275

`∏[abs(record[xor(2, n-3)])]`
-/

namespace A177373.P13223360799102379275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((n : ℤ) - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A177373.P13223360799102379275

namespace A177373

/-- `∏[abs(record[xor(2, n-3)])]` -/
def P13223360799102379275.Spec : Prop :=
  ∀ n, P13223360799102379275.a n = A177373 n

end A177373

/-! ## A177373.P11658413820834850146

`-∏[record[xor(2, n-3)]]`
-/

namespace A177373.P11658413820834850146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((n : ℤ) - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A177373.P11658413820834850146

namespace A177373

/-- `-∏[record[xor(2, n-3)]]` -/
def P11658413820834850146.Spec : Prop :=
  ∀ n, P11658413820834850146.a n = A177373 n

end A177373

/-! ## A177373.P14917605625927341353

`∏[abs(or(1, -n))+n]`
-/

namespace A177373.P14917605625927341353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n : ℤ))| + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A177373.P14917605625927341353

namespace A177373

/-- `∏[abs(or(1, -n))+n]` -/
def P14917605625927341353.Spec : Prop :=
  ∀ n, P14917605625927341353.a n = A177373 n

end A177373

/-! ## A177373.P15739692000852064182

`-∏[n-or(1, -n)]`
-/

namespace A177373.P15739692000852064182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A177373.P15739692000852064182

namespace A177373

/-- `-∏[n-or(1, -n)]` -/
def P15739692000852064182.Spec : Prop :=
  ∀ n, P15739692000852064182.a n = A177373 n

end A177373

/-! ## A177373.P18019865678406886578

`∏[a(n-2)+4]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A177373.P18019865678406886578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A177373.P18019865678406886578

namespace A177373

/-- `∏[a(n-2)+4]` -/
def P18019865678406886578.Spec : Prop :=
  ∀ n, (P18019865678406886578.a n : ℤ) = A177373 n

end A177373

/-! ## A177373.P5793216149229242016

`∏[2*n-(n-1)%2]`
-/

namespace A177373.P5793216149229242016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.tmod ((n : ℤ) - 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A177373.P5793216149229242016

namespace A177373

/-- `∏[2*n-(n-1)%2]` -/
def P5793216149229242016.Spec : Prop :=
  ∀ n, P5793216149229242016.a n = A177373 n

end A177373

/-! ## A177373.P2307590253720523969

`∏[abs(2*n-char[2*n])]`
-/

namespace A177373.P2307590253720523969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A177373.P2307590253720523969

namespace A177373

/-- `∏[abs(2*n-char[2*n])]` -/
def P2307590253720523969.Spec : Prop :=
  ∀ n, P2307590253720523969.a n = A177373 n

end A177373

/-!
# A177374: Fibonacci numbers whose decimal expansion does not contain any digit 8.

The programs for A177374, there is no canonical definition to state claims against.
-/

/-! ## A177374.P9183362418320646657

`A000045(eq[C(2, n+2), A085862(n)])`
-/

namespace A177374.P9183362418320646657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177374.P9183362418320646657

/-! ## A177374.P472833435639000438

`A000045(eq[floor(1/(n+1)), A085862(n)])`
-/

namespace A177374.P472833435639000438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177374.P472833435639000438

/-! ## A177374.P16558932533135359655

`A000045(lt[A003586(n+1), A298264(n)])`
-/

namespace A177374.P16558932533135359655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177374.P16558932533135359655

/-! ## A177374.P2147011247994012405

`A000045(A005838(n+1)%A096762(n+1))`
-/

namespace A177374.P2147011247994012405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A005838 (n + 1)) (A096762 (n + 1))).toNat

end

end A177374.P2147011247994012405

/-! ## A177374.P15510711414942752141

`A274163(A267307(n+1))`
-/

namespace A177374.P15510711414942752141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274163 (A267307 (n + 1)).toNat

end

end A177374.P15510711414942752141

/-!
# A177376: Fibonacci numbers whose decimal expansion does not contain any digit 9.

The programs for A177376, there is no canonical definition to state claims against.
-/

/-! ## A177376.P10909826160264296931

`A000045(eq[C(2, n+2), A085863(n)])`
-/

namespace A177376.P10909826160264296931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177376.P10909826160264296931

/-! ## A177376.P16877104122722000395

`A000045(eq[A000007(n), A085863(n)])`
-/

namespace A177376.P16877104122722000395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177376.P16877104122722000395

/-! ## A177376.P15739058092295811650

`A000045(eq[A000038(n), A085863(n)])`
-/

namespace A177376.P15739058092295811650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177376.P15739058092295811650

/-! ## A177376.P4278301218308354296

`A000045(lt[A085863(n), A057427(n)])`
-/

namespace A177376.P4278301218308354296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085863 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A177376.P4278301218308354296

/-! ## A177376.P16224425758559625691

`A000045(eq[A085863(n), A151909(n)])`
-/

namespace A177376.P16224425758559625691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085863 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177376.P16224425758559625691

/-!
# A177377: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^Fibonacci(n).

The programs for A177377, there is no canonical definition to state claims against.
-/

/-! ## A177377.P8704337784189065714

`A157271(2*A092920(n))`
-/

namespace A177377.P8704337784189065714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (2 * A092920 n).toNat

end

end A177377.P8704337784189065714

/-! ## A177377.P8508206895613681041

`A080907(ceil(sqrt(A308204(n+1))))`
-/

namespace A177377.P8508206895613681041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 ⌈Real.sqrt (A308204 (n + 1) : ℝ)⌉.toNat

end

end A177377.P8508206895613681041

/-! ## A177377.P6758997635006995704

`A102683(A047970(n))+A092920(n)`
-/

namespace A177377.P6758997635006995704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A047970 n).toNat + A092920 n

end

end A177377.P6758997635006995704

/-! ## A177377.P13855285157578666266

`A185284(A000124(n))+A092920(n)`
-/

namespace A177377.P13855285157578666266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000124 n).toNat + A092920 n

end

end A177377.P13855285157578666266

/-! ## A177377.P5709394840583360730

`A185284(A016825(n))+A092920(n)`
-/

namespace A177377.P5709394840583360730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A016825 n).toNat + A092920 n

end

end A177377.P5709394840583360730

/-!
# A177378: a(n) is the smallest prime p>2 such that there are 2*n or 2*n+1 positive integers m for which the exponents of 2 and p in the prime power factorization of m! are both powers of 2.

The programs for A177378, there is no canonical definition to state claims against.
-/

/-! ## A177378.P4405222555731675298

`A107804(A165658(n+1)+A000005(2*(n+1)))`
-/

namespace A177378.P4405222555731675298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107804 (A165658 (n + 1) + A000005 (2 * (n + 1))).toNat

end

end A177378.P4405222555731675298

/-!
# A177379: E.g.f. satisfies: A(x) = 1/(1-x - x*log(A(x))).

The programs for A177379, there is no canonical definition to state claims against.
-/

/-! ## A177379.P2267870215875731457

`A025443(A074707(n))+n^∏{digits}[n, #]`
-/

namespace A177379.P2267870215875731457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A074707 n).toNat + (n ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℤ)

end

end A177379.P2267870215875731457

/-! ## A177379.P11246150358189697100

`A004396(A308877(n)+A028338(n))`
-/

namespace A177379.P11246150358189697100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A308877 n + A028338 n).toNat

end

end A177379.P11246150358189697100

/-!
# A177381: G.f.: Sum_{n>=0} Product_{k=1..n} tan(k*arctan(x)).

The programs for A177381, there is no canonical definition to state claims against.
-/

/-! ## A177381.P11735409035481915830

`A100682(A039831(n+1))`
-/

namespace A177381.P11735409035481915830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (A039831 (n + 1)).toNat

end

end A177381.P11735409035481915830

/-! ## A177381.P13946698422124782467

`A101402(A048098(n!)+1)`
-/

namespace A177381.P13946698422124782467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A048098 (Nat.factorial n) + 1).toNat

end

end A177381.P13946698422124782467

/-! ## A177381.P9454196752385922831

`A002264(or(3, A277609(n+1)))`
-/

namespace A177381.P9454196752385922831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.lor 3 (A277609 (n + 1))).toNat

end

end A177381.P9454196752385922831

/-!
# A177382: E.g.f.: Sum_{n>=0} Product_{k=1..n} tan(k*x).

The programs for A177382, there is no canonical definition to state claims against.
-/

/-! ## A177382.P4721395862365586365

`A335618(n)/A000079(n)`
-/

namespace A177382.P4721395862365586365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335618 n : ℚ) / (A000079 n : ℚ)

end

end A177382.P4721395862365586365

/-! ## A177382.P2638286303791591564

`A335618(n)/∑[A011782(n)]`
-/

namespace A177382.P2638286303791591564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335618 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A177382.P2638286303791591564

/-! ## A177382.P12577855006042429806

`A335618(n)/(A000225(n)+1)`
-/

namespace A177382.P12577855006042429806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335618 n : ℚ) / (A000225 n + 1 : ℚ)

end

end A177382.P12577855006042429806

/-! ## A177382.P17791519126812524446

`A335618(n)/A011782(n+1)`
-/

namespace A177382.P17791519126812524446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335618 n : ℚ) / (A011782 (n + 1) : ℚ)

end

end A177382.P17791519126812524446

/-! ## A177382.P3480754669503779884

`A335618(n)/A065109(A000217(n))`
-/

namespace A177382.P3480754669503779884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335618 n : ℚ) / (A065109 (A000217 n).toNat : ℚ)

end

end A177382.P3480754669503779884

/-!
# A177383: G.f. satisfies: [x^n] A(x)^(n+1) = [x^n] A(x)^(n+2) for n>1 with A'(0)=A(0)=1.

The programs for A177383, there is no canonical definition to state claims against.
-/

/-! ## A177383.P5237794168438561913

`A297323(xor(7, A038764(n)))`
-/

namespace A177383.P5237794168438561913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (Int.xor 7 (A038764 n)).toNat

end

end A177383.P5237794168438561913

/-!
# A177385: E.g.f.: Sum_{n>=0} Product_{k=1..n} sinh(k*x).

The programs for A177385, there is no canonical definition to state claims against.
-/

/-! ## A177385.P13861729868384275035

`A098073(ceil(cosh(n)))`
-/

namespace A177385.P13861729868384275035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098073 ⌈Real.cosh (n : ℝ)⌉.toNat

end

end A177385.P13861729868384275035

/-!
# A177386: O.g.f.: Sum_{n>=0} Product_{k=1..n} sinh(k*arcsinh(2x)).

The programs for A177386, there is no canonical definition to state claims against.
-/

/-! ## A177386.P16171076489618380475

`A001951(A120733(n))+A000045(n)`
-/

namespace A177386.P16171076489618380475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A120733 n).toNat + A000045 n

end

end A177386.P16171076489618380475

/-! ## A177386.P17288408484064577351

`A000010(A001147(n+1))-A033323(n+1)`
-/

namespace A177386.P17288408484064577351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001147 (n + 1)).toNat - A033323 (n + 1)

end

end A177386.P17288408484064577351

/-!
# A177387: E.g.f.: Sum_{n>=0} Product_{k=1..n} sin(k*x).

The programs for A177387, there is no canonical definition to state claims against.
-/

/-! ## A177387.P11505370857581752077

`A352725(n²*a(n-1))` with `a(0)=1`
-/

namespace A177387.P11505370857581752077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A352725 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A177387.P11505370857581752077

/-!
# A177388: O.g.f.: Sum_{n>=0} Product_{k=1..n} sin(k*arcsin(2x)).

The programs for A177388, there is no canonical definition to state claims against.
-/

/-! ## A177388.P8680751494731136090

`2^n*A100196(A059849(n))`
-/

namespace A177388.P8680751494731136090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A100196 (A059849 n).toNat

end

end A177388.P8680751494731136090

/-! ## A177388.P4226474183795585499

`A028310(2^n*A328441(n))`
-/

namespace A177388.P4226474183795585499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((2 ^ n : ℤ) * A328441 n).toNat

end

end A177388.P4226474183795585499

/-!
# A177389: Expansion of o.g.f.: Sum_{n>=0} Product_{k=1..n} tanh(k*arctanh(x)).

The programs for A177389, there is no canonical definition to state claims against.
-/

/-! ## A177389.P3380779527089949441

`A154255(A036374(n+1)+2)`
-/

namespace A177389.P3380779527089949441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154255 (A036374 (n + 1) + 2).toNat

end

end A177389.P3380779527089949441

/-! ## A177389.P9461215162028937746

`A059169(a(n-1)*A310252(n))` with `a(0)=1`
-/

namespace A177389.P9461215162028937746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059169 (a (n - 1) * A310252 n).toNat

end

end A177389.P9461215162028937746

/-! ## A177389.P9417118344362051388

`round(A163948(n+1)/A027027(n+2))`
-/

namespace A177389.P9417118344362051388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A163948 (n + 1) : ℚ) / (A027027 (n + 2) : ℚ))

end

end A177389.P9417118344362051388

/-!
# A177390: Triangle T where the g.f. of row n of T^(2n) = (2n^2 + y)^n for n>=0, as read by rows, where T^n denotes the n-th matrix power of T.

The programs for A177390, there is no canonical definition to state claims against.
-/

/-! ## A177390.P6699792006876717441

`A214247(A001786(n)-A269591(n))`
-/

namespace A177390.P6699792006876717441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214247 (A001786 n - A269591 n).toNat

end

end A177390.P6699792006876717441

/-! ## A177390.P11748848197753655141

`A208453(A000045(n)*A268387(n+1))`
-/

namespace A177390.P11748848197753655141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208453 (A000045 n * A268387 (n + 1)).toNat

end

end A177390.P11748848197753655141

/-! ## A177390.P12728043654933983156

`A208453(A000045(n)^A141335(n+1))`
-/

namespace A177390.P12728043654933983156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208453 (SequenceMachineLib.roundAway ((A000045 n : ℚ) ^ (A141335 (n + 1) : ℤ))).toNat

end

end A177390.P12728043654933983156

/-!
# A177391: Column 0 of triangle A177390.

The programs for A177391, there is no canonical definition to state claims against.
-/

/-! ## A177391.P8288127057623527755

`A177390(∑[n])`
-/

namespace A177391.P8288127057623527755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177390 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177391.P8288127057623527755

/-! ## A177391.P12354253370220558633

`and(-1, A177390(A000217(n)))`
-/

namespace A177391.P12354253370220558633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A177390 (A000217 n).toNat)

end

end A177391.P12354253370220558633

/-! ## A177391.P10005092624827290162

`A177390(A000217(n))+A025434(n)`
-/

namespace A177391.P10005092624827290162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177390 (A000217 n).toNat + A025434 n

end

end A177391.P10005092624827290162

/-! ## A177391.P11099718663270265425

`A177390(A000217(n))+A025469(n)`
-/

namespace A177391.P11099718663270265425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177390 (A000217 n).toNat + A025469 n

end

end A177391.P11099718663270265425

/-! ## A177391.P16794283399925702377

`A177390(A000217(n))+A031346(n)`
-/

namespace A177391.P16794283399925702377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177390 (A000217 n).toNat + A031346 n

end

end A177391.P16794283399925702377

/-!
# A177392: Column 1 of triangle A177390.

The programs for A177392, there is no canonical definition to state claims against.
-/

/-! ## A177392.P11984965973109600983

`record[A177390(comp[∑[n]])]`
-/

namespace A177392.P11984965973109600983
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177390 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177392.P11984965973109600983

/-! ## A177392.P2509784248006844900

`A177390(∑[n+1]+1)`
-/

namespace A177392.P2509784248006844900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177390 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A177392.P2509784248006844900

/-! ## A177392.P1326805575774882534

`record[A051168(n)*A177390(n)]`
-/

namespace A177392.P1326805575774882534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 n * A177390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177392.P1326805575774882534

/-!
# A177393: Column 2 of triangle A177390.

The programs for A177393, there is no canonical definition to state claims against.
-/

/-! ## A177393.P22948409805577108

`A177390(∑[n+2]+3)`
-/

namespace A177393.P22948409805577108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177390 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A177393.P22948409805577108

/-! ## A177393.P8146952995016322306

`record[A177390(n)*A319368(n+1)]`
-/

namespace A177393.P8146952995016322306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177390 n * A319368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177393.P8146952995016322306

/-!
# A177395: G.f. satisfies: x = A(x) - A(A(x))^2 - A(A(A(x)))^3.

The programs for A177395, there is no canonical definition to state claims against.
-/

/-! ## A177395.P5761570100970882917

`A045928(∏[∑[A241509(n)]])`
-/

namespace A177395.P5761570100970882917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045928 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A177395.P5761570100970882917

/-! ## A177395.P9108800064988889796

`A029579(A049143(2*n+1)-A016116(n))`
-/

namespace A177395.P9108800064988889796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A049143 (2 * n + 1) - A016116 n).toNat

end

end A177395.P9108800064988889796

/-!
# A177396: G.f. satisfies: x = A(x) - 2*A(A(x))^2 + A(A(A(x)))^3.

The programs for A177396, there is no canonical definition to state claims against.
-/

/-! ## A177396.P12447020548058133566

`A034888(A181545(2*n)+∑{d}[n+1, lcm(#, n+1)]/(n+1))`
-/

namespace A177396.P12447020548058133566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (SequenceMachineLib.roundAway ((A181545 (2 * n) : ℚ) + ((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A177396.P12447020548058133566

/-!
# A177397: G.f. satisfies: x = A(x) - A(A(x))^2 - A(A(A(x)))^2.

The programs for A177397, there is no canonical definition to state claims against.
-/

/-! ## A177397.P15634466033768059217

`A190238((n+1)*a(n-1)+1)-1` with `a(0)=1, a(1)=2`
-/

namespace A177397.P15634466033768059217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A190238 ((n + 1 : ℤ) * a (n - 1) + 1).toNat - 1

end

end A177397.P15634466033768059217

/-!
# A177398: O.g.f.: exp( Sum_{n>=1} (sigma(2n)-sigma(n))^2 * x^n/n ).

The programs for A177398, there is no canonical definition to state claims against.
-/

/-! ## A177398.P6300902137952916571

`A011782(n)*A101616(A007504(n))`
-/

namespace A177398.P6300902137952916571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A101616 (A007504 n).toNat

end

end A177398.P6300902137952916571

/-! ## A177398.P4205036406814526271

`record[and(A112356(n), A112626(n))]`
-/

namespace A177398.P4205036406814526271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112356 n) (A112626 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177398.P4205036406814526271

/-!
# A177399: O.g.f.: exp( Sum_{n>=1} (sigma(2n)-sigma(n))^n * x^n/n ).

The programs for A177399, there is no canonical definition to state claims against.
-/

/-! ## A177399.P13043695350525250566

`A035311(A000225(n)*A330544(n))`
-/

namespace A177399.P13043695350525250566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035311 (A000225 n * A330544 n).toNat

end

end A177399.P13043695350525250566

