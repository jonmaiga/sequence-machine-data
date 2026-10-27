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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B001.C012
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
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
# A005500: Number of unrooted triangulations of a quadrilateral with n internal nodes.

The programs for A005500, there is no canonical definition to state claims against.
-/

/-! ## A005500.P6463452006540574376

`(A005505(n)+A002710(n))/2`
-/

namespace A005500.P6463452006540574376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005505 n + A002710 n : ℚ) / 2

end

end A005500.P6463452006540574376

/-! ## A005500.P1798869039249798759

`A169808(∑[n+2]-1)`
-/

namespace A005500.P1798869039249798759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169808 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A005500.P1798869039249798759

/-! ## A005500.P14962446540097850915

`record[gcd(A106356(n+1), A169808(n))]`
-/

namespace A005500.P14962446540097850915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106356 (n + 1)) (A169808 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005500.P14962446540097850915

/-! ## A005500.P7950198964679493115

`A169808(A034856(n+1))%A005502(n)`
-/

namespace A005500.P7950198964679493115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169808 (A034856 (n + 1)).toNat) (A005502 n)

end

end A005500.P7950198964679493115

/-! ## A005500.P15771154496429016907

`gcd(A000038(n), A169808(A034856(n+1)))`
-/

namespace A005500.P15771154496429016907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A169808 (A034856 (n + 1)).toNat)

end

end A005500.P15771154496429016907

/-! ## A005500.P10594123368599964627

`A169808(A034856(n+1))+A000038(A047809(n))`
-/

namespace A005500.P10594123368599964627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169808 (A034856 (n + 1)).toNat + A000038 (A047809 n).toNat

end

end A005500.P10594123368599964627

/-! ## A005500.P67177522716645722

`A033999(A051162(n))²*A169808(A034856(n+1))`
-/

namespace A005500.P67177522716645722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat ^ 2 * A169808 (A034856 (n + 1)).toNat

end

end A005500.P67177522716645722

/-! ## A005500.P13516522448915825589

`A001222(A005384(n+1))*A169808(A034856(n+1))`
-/

namespace A005500.P13516522448915825589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005384 (n + 1)).toNat * A169808 (A034856 (n + 1)).toNat

end

end A005500.P13516522448915825589

/-!
# A005501: Number of unrooted triangulations of a pentagon with n internal nodes.

The programs for A005501, there is no canonical definition to state claims against.
-/

/-! ## A005501.P14422838889217233445

`(A005506(n)+A002711(n))/2`
-/

namespace A005501.P14422838889217233445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005506 n + A002711 n : ℚ) / 2

end

end A005501.P14422838889217233445

/-! ## A005501.P10797923281656130491

`A169808(∑[n+3])`
-/

namespace A005501.P10797923281656130491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169808 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005501.P10797923281656130491

/-! ## A005501.P9444235058029838491

`record[A169808(A027379(A008676(n)))]`
-/

namespace A005501.P9444235058029838491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169808 (A027379 (A008676 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005501.P9444235058029838491

/-! ## A005501.P15576654691457431564

`record[A169808(A027379(A103221(n)))]`
-/

namespace A005501.P15576654691457431564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169808 (A027379 (A103221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005501.P15576654691457431564

/-! ## A005501.P14790738889543456446

`record[A169808(A055998(A003602(n+1)))]`
-/

namespace A005501.P14790738889543456446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169808 (A055998 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005501.P14790738889543456446

/-!
# A005502: Number of unrooted triangulations of a hexagon with n internal nodes.

The programs for A005502, there is no canonical definition to state claims against.
-/

/-! ## A005502.P324842753588066896

`(A005507(n)+A005495(n))/2`
-/

namespace A005502.P324842753588066896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005507 n + A005495 n : ℚ) / 2

end

end A005502.P324842753588066896

/-! ## A005502.P15260512027479283931

`A169808(∑[n+3]+n+3)`
-/

namespace A005502.P15260512027479283931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169808 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A005502.P15260512027479283931

/-!
# A005503: Number of unrooted triangulations of a disk with one internal node and n+3 nodes on the boundary.

The programs for A005503, there is no canonical definition to state claims against.
-/

/-! ## A005503.P18227086338455438183

`A169808(∑[n+1]+1)`
-/

namespace A005503.P18227086338455438183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169808 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005503.P18227086338455438183

/-! ## A005503.P12269403261415396120

`record[A169808(n)/(2-A341856(n))]`
-/

namespace A005503.P12269403261415396120
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169808 n : ℚ) / (2 - A341856 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005503.P12269403261415396120

/-! ## A005503.P7292397616292653138

`record[gcd(A169808(n), A185158(n+1))]`
-/

namespace A005503.P7292397616292653138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169808 n) (A185158 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005503.P7292397616292653138

/-! ## A005503.P16877986769104088294

`record[A169808(n+1)/A342053(n+1)]`
-/

namespace A005503.P16877986769104088294
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169808 (n + 1) : ℚ) / (A342053 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005503.P16877986769104088294

/-! ## A005503.P18416853672250748159

`A169808(A000124(n+1))^A178334(n)`
-/

namespace A005503.P18416853672250748159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169808 (A000124 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A005503.P18416853672250748159

/-!
# A005504: Number of unrooted triangulations of a disk with 2 internal nodes and n+3 nodes on the boundary.

The programs for A005504, there is no canonical definition to state claims against.
-/

/-! ## A005504.P17627598720172124329

`(A005509(n)+A005498(n))/2`
-/

namespace A005504.P17627598720172124329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005509 n + A005498 n : ℚ) / 2

end

end A005504.P17627598720172124329

/-! ## A005504.P2015816594694991388

`A169808(∑[n+2]+3)`
-/

namespace A005504.P2015816594694991388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169808 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A005504.P2015816594694991388

/-! ## A005504.P5264207225864205909

`record[gcd(A169808(n+2), A341856(n))]`
-/

namespace A005504.P5264207225864205909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169808 (n + 2)) (A341856 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005504.P5264207225864205909

/-! ## A005504.P6398698562883827259

`record[A169808(n+2)/A033282(n+3)]`
-/

namespace A005504.P6398698562883827259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169808 (n + 2) : ℚ) / (A033282 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005504.P6398698562883827259

/-! ## A005504.P852613026672961473

`record[gcd(A106356(n+1), A169808(n+4))]`
-/

namespace A005504.P852613026672961473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106356 (n + 1)) (A169808 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005504.P852613026672961473

/-!
# A005505: Number of unrooted triangulations with reflection symmetry of a quadrilateral with n internal nodes.

The programs for A005505, there is no canonical definition to state claims against.
-/

/-! ## A005505.P1670838636364745248

`2*A005500(n)-A002710(n)`
-/

namespace A005505.P1670838636364745248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005500 n - A002710 n

end

end A005505.P1670838636364745248

/-! ## A005505.P9946428322868468566

`2*A005500(n)-A262586(A034856(n+1))`
-/

namespace A005505.P9946428322868468566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005500 n - A262586 (A034856 (n + 1)).toNat

end

end A005505.P9946428322868468566

/-! ## A005505.P5337057443840525117

`A169809(∑[n+2]-1)`
-/

namespace A005505.P5337057443840525117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169809 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A005505.P5337057443840525117

/-! ## A005505.P13829881091637405011

`record[A169809(A279417(n+2)-2)]`
-/

namespace A005505.P13829881091637405011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169809 (A279417 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005505.P13829881091637405011

/-! ## A005505.P16810569965492111053

`record[A169809(n)/A007318(n+1)]`
-/

namespace A005505.P16810569965492111053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169809 n : ℚ) / (A007318 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005505.P16810569965492111053

/-! ## A005505.P10572937664472666426

`record[A169809(record[n+1-A007318(n+1)])]`
-/

namespace A005505.P10572937664472666426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007318 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169809 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005505.P10572937664472666426

/-! ## A005505.P13213299084904058222

`A169809(A034856(n+1))%A005502(n)`
-/

namespace A005505.P13213299084904058222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169809 (A034856 (n + 1)).toNat) (A005502 n)

end

end A005505.P13213299084904058222

/-! ## A005505.P17127045597254497915

`A001222(A005384(n+1))*A169809(A034856(n+1))`
-/

namespace A005505.P17127045597254497915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005384 (n + 1)).toNat * A169809 (A034856 (n + 1)).toNat

end

end A005505.P17127045597254497915

/-!
# A005506: Number of unrooted triangulations with reflection symmetry of a pentagon with n internal nodes.

The programs for A005506, there is no canonical definition to state claims against.
-/

/-! ## A005506.P4127950843733955137

`2*A005501(n)-A002711(n)`
-/

namespace A005506.P4127950843733955137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005501 n - A002711 n

end

end A005506.P4127950843733955137

/-! ## A005506.P7516767968364863143

`A169809(∑[n+3])`
-/

namespace A005506.P7516767968364863143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169809 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005506.P7516767968364863143

/-! ## A005506.P8390033436693559264

`record[A169809(A055998(A002260(n+1)))]`
-/

namespace A005506.P8390033436693559264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169809 (A055998 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005506.P8390033436693559264

/-! ## A005506.P17293568806522530097

`record[A169809(A055998(A004736(n+1)))]`
-/

namespace A005506.P17293568806522530097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169809 (A055998 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005506.P17293568806522530097

/-! ## A005506.P17120501702946674057

`A169809(Δ[A006503(n)])%A005059(n+2)`
-/

namespace A005506.P17120501702946674057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169809 (f1 (n + 1) - f1 n).toNat) (A005059 (n + 2))

end

end A005506.P17120501702946674057

/-!
# A005507: Number of unrooted triangulations with reflection symmetry of a hexagon with n internal nodes.

The programs for A005507, there is no canonical definition to state claims against.
-/

/-! ## A005507.P11966702923638982482

`2*A005502(n)-A005495(n)`
-/

namespace A005507.P11966702923638982482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005502 n - A005495 n

end

end A005507.P11966702923638982482

/-! ## A005507.P5179850632320818083

`A169809(∑[n+3]+n+3)`
-/

namespace A005507.P5179850632320818083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169809 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A005507.P5179850632320818083

/-! ## A005507.P15268474247013318376

`gcd(A000038(n), A169809(A055998(n+2)-1))`
-/

namespace A005507.P15268474247013318376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A169809 (A055998 (n + 2) - 1).toNat)

end

end A005507.P15268474247013318376

/-! ## A005507.P17626745683715895041

`dr(A020985(n))*A169809(A055998(n+2)-1)`
-/

namespace A005507.P17626745683715895041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A020985 n) : ℤ) * A169809 (A055998 (n + 2) - 1).toNat

end

end A005507.P17626745683715895041

/-! ## A005507.P18115022129617880789

`A032632(n+1)%2*A169809(A055998(n+2)-1)`
-/

namespace A005507.P18115022129617880789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032632 (n + 1)) 2 * A169809 (A055998 (n + 2) - 1).toNat

end

end A005507.P18115022129617880789

/-!
# A005508: Number of unrooted triangulations with reflection symmetry of a disk with one internal node and n+3 nodes on the boundary.

The programs for A005508, the canonical program `A005508.P2090669877977170398` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005508 has offset 0).

The definition of A005508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005508.P2090669877977170398

`A026008(n+2)-A026021(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A005508

/-- `A026008(n+2)-A026021(n)` -/
def P2090669877977170398.Spec : Prop :=
  ∀ n, P2090669877977170398.a n = A005508 n

theorem P2090669877977170398.correct : P2090669877977170398.Spec := by
  intro n
  simp only [A005508]

end A005508

/-! ## A005508.P17367482819430675368

`2*A026008(n)-A126120(n)`
-/

namespace A005508.P17367482819430675368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026008 n - A126120 n

end

end A005508.P17367482819430675368

namespace A005508

/-- `2*A026008(n)-A126120(n)` -/
def P17367482819430675368.Spec : Prop :=
  ∀ n, P17367482819430675368.a n = A005508 n

end A005508

/-! ## A005508.P17944644272098328386

`A026008(n)+A000245(ceil(n/2))`
-/

namespace A005508.P17944644272098328386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 n + A000245 ⌈(n : ℚ) / 2⌉.toNat

end

end A005508.P17944644272098328386

namespace A005508

/-- `A026008(n)+A000245(ceil(n/2))` -/
def P17944644272098328386.Spec : Prop :=
  ∀ n, P17944644272098328386.a n = A005508 n

end A005508

/-! ## A005508.P8832535495108079893

`A026008(n)+Δ[A059348(n+2)]`
-/

namespace A005508.P8832535495108079893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059348 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 n + (f1 (n + 1) - f1 n)

end

end A005508.P8832535495108079893

namespace A005508

/-- `A026008(n)+Δ[A059348(n+2)]` -/
def P8832535495108079893.Spec : Prop :=
  ∀ n, P8832535495108079893.a n = A005508 n

end A005508

/-! ## A005508.P18077305178749436583

`A026008(n)+A026008(n)-A097331(n+1)`
-/

namespace A005508.P18077305178749436583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 n + (A026008 n - A097331 (n + 1))

end

end A005508.P18077305178749436583

namespace A005508

/-- `A026008(n)+A026008(n)-A097331(n+1)` -/
def P18077305178749436583.Spec : Prop :=
  ∀ n, P18077305178749436583.a n = A005508 n

end A005508

/-! ## A005508.P6410350110851532695

`∪[A000782(n+1), A071721(n)]`
-/

namespace A005508.P6410350110851532695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005508.P6410350110851532695

namespace A005508

/-- `∪[A000782(n+1), A071721(n)]` -/
def P6410350110851532695.Spec : Prop :=
  ∀ n, (P6410350110851532695.a n : ℤ) = A005508 n

end A005508

/-! ## A005508.P16126308869053987061

`∪[A061557(n+1), A071721(n)]`
-/

namespace A005508.P16126308869053987061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005508.P16126308869053987061

namespace A005508

/-- `∪[A061557(n+1), A071721(n)]` -/
def P16126308869053987061.Spec : Prop :=
  ∀ n, (P16126308869053987061.a n : ℤ) = A005508 n

end A005508

/-! ## A005508.P2617651023399587943

`A026008(n)+A037952(n)-A037956(n)`
-/

namespace A005508.P2617651023399587943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 n + (A037952 n - A037956 n)

end

end A005508.P2617651023399587943

namespace A005508

/-- `A026008(n)+A037952(n)-A037956(n)` -/
def P2617651023399587943.Spec : Prop :=
  ∀ n, P2617651023399587943.a n = A005508 n

end A005508

/-! ## A005508.P3619966591552841088

`A001405(n+1)-2*A037956(n)`
-/

namespace A005508.P3619966591552841088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) - 2 * A037956 n

end

end A005508.P3619966591552841088

namespace A005508

/-- `A001405(n+1)-2*A037956(n)` -/
def P3619966591552841088.Spec : Prop :=
  ∀ n, P3619966591552841088.a n = A005508 n

end A005508

/-! ## A005508.P1973328820001999198

`A169809(∑[n+1]+1)`
-/

namespace A005508.P1973328820001999198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169809 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005508.P1973328820001999198

namespace A005508

/-- `A169809(∑[n+1]+1)` -/
def P1973328820001999198.Spec : Prop :=
  ∀ n, P1973328820001999198.a n = A005508 n

end A005508

/-!
# A005509: Number of unrooted triangulations with reflection symmetry of a disk with 2 internal nodes and n+3 nodes on the boundary.

The programs for A005509, there is no canonical definition to state claims against.
-/

/-! ## A005509.P849729862985245276

`A169809(∑[n+2]+3)`
-/

namespace A005509.P849729862985245276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169809 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A005509.P849729862985245276

/-! ## A005509.P17327313217344008206

`record[gcd(A002262(n), A169809(n+2))]`
-/

namespace A005509.P17327313217344008206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A169809 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005509.P17327313217344008206

/-! ## A005509.P3291554786738053194

`record[A169809(A133263(A002262(n)))]`
-/

namespace A005509.P3291554786738053194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169809 (A133263 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005509.P3291554786738053194

/-! ## A005509.P5121660844666264340

`record[A169809(A133263(A008612(n)))]`
-/

namespace A005509.P5121660844666264340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169809 (A133263 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005509.P5121660844666264340

/-! ## A005509.P6678516466530568129

`record[gcd(A169809(n+1), A185158(n+1))]`
-/

namespace A005509.P6678516466530568129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169809 (n + 1)) (A185158 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005509.P6678516466530568129

/-!
# A005510: a(n) = 1 + a(floor(n/2))*a(ceiling(n/2)) for n > 1, a(1) = 3.

The programs for A005510, the canonical program `A005510.P16172342020561461793` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005510 has offset 1).

The definition of A005510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(floor((n+1)/2)-1)*a(ceil((n+1)/2)-1)` (program `A005510.P16172342020561461793`, by `A005510.P16172342020561461793.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005510.P16172342020561461793

`1+a(floor((n+1)/2)-1)*a(ceil((n+1)/2)-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005510

/-- `1+a(floor((n+1)/2)-1)*a(ceil((n+1)/2)-1)` -/
def P16172342020561461793.Spec : Prop :=
  ∀ n, (P16172342020561461793.a n : ℤ) = A005510 (n + 1)

theorem P16172342020561461793.correct : P16172342020561461793.Spec := by
  intro n
  simp only [A005510, Nat.add_sub_cancel]

end A005510

/-! ## A005510.P12465881019045749465

`a(floor((n-1)/2))*a(floor(n/2))+1` with `a(0)=3`
-/

namespace A005510.P12465881019045749465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat * a ⌊(n : ℚ) / 2⌋.toNat + 1

end

end A005510.P12465881019045749465

namespace A005510

/-- `a(floor((n-1)/2))*a(floor(n/2))+1` -/
def P12465881019045749465.Spec : Prop :=
  ∀ n, (P12465881019045749465.a n : ℤ) = A005510 (n + 1)

end A005510

/-! ## A005510.P9401945262382805666

`A180432(A010055(n+1)+A005255(n))`
-/

namespace A005510.P9401945262382805666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180432 (A010055 (n + 1) + A005255 n).toNat

end

end A005510.P9401945262382805666

namespace A005510

/-- `A180432(A010055(n+1)+A005255(n))` -/
def P9401945262382805666.Spec : Prop :=
  ∀ n, P9401945262382805666.a n = A005510 (n + 1)

end A005510

/-!
# A005511: a(n) = 1 + a(floor(n/2))*a(ceiling(n/2)) for n > 1, a(1) = 4.

The programs for A005511, the canonical program `A005511.P6138033376818686266` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005511 has offset 1).

The definition of A005511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(floor((n+1)/2)-1)*a(ceil((n+1)/2)-1)` (program `A005511.P6138033376818686266`, by `A005511.P6138033376818686266.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005511.P6138033376818686266

`1+a(floor((n+1)/2)-1)*a(ceil((n+1)/2)-1)` with `a(0)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005511

/-- `1+a(floor((n+1)/2)-1)*a(ceil((n+1)/2)-1)` -/
def P6138033376818686266.Spec : Prop :=
  ∀ n, (P6138033376818686266.a n : ℤ) = A005511 (n + 1)

theorem P6138033376818686266.correct : P6138033376818686266.Spec := by
  intro n
  simp only [A005511, Nat.add_sub_cancel]

end A005511

/-! ## A005511.P16506636203681651795

`a(floor((n-1)/2))*a(floor(n/2))+1` with `a(0)=4`
-/

namespace A005511.P16506636203681651795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat * a ⌊(n : ℚ) / 2⌋.toNat + 1

end

end A005511.P16506636203681651795

namespace A005511

/-- `a(floor((n-1)/2))*a(floor(n/2))+1` -/
def P16506636203681651795.Spec : Prop :=
  ∀ n, (P16506636203681651795.a n : ℤ) = A005511 (n + 1)

end A005511

/-!
# A005512: Number of series-reduced labeled trees with n nodes.

The programs for A005512, there is no canonical definition to state claims against.
-/

/-! ## A005512.P6469270979529183776

`A060313(n+1)/(n+1)`
-/

namespace A005512.P6469270979529183776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060313 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A005512.P6469270979529183776

/-! ## A005512.P16447275454285170787

`A331437(∑[n]+n)`
-/

namespace A005512.P16447275454285170787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331437 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A005512.P16447275454285170787

/-! ## A005512.P6432214273751570305

`A000034(2*n)*A331437(A000096(n))`
-/

namespace A005512.P6432214273751570305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A331437 (A000096 n).toNat

end

end A005512.P6432214273751570305

/-! ## A005512.P15814024929005274925

`A007318(C(2, n))*A331437(A000096(n))`
-/

namespace A005512.P15814024929005274925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A331437 (A000096 n).toNat

end

end A005512.P15814024929005274925

/-! ## A005512.P6937285243212231764

`A001222(A063908(n+1))*A331437(A000096(n))`
-/

namespace A005512.P6937285243212231764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A063908 (n + 1)).toNat * A331437 (A000096 n).toNat

end

end A005512.P6937285243212231764

/-! ## A005512.P13363641981453194325

`A001222(A088878(n+1))*A331437(A000096(n))`
-/

namespace A005512.P13363641981453194325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A088878 (n + 1)).toNat * A331437 (A000096 n).toNat

end

end A005512.P13363641981453194325

/-!
# A005513: Number of n-bead bracelets (turnover necklaces) of two colors with 6 red beads and n-6 black beads.

The programs for A005513, the canonical program `A005513.P10771624203458813298` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005513 has offset 6).

The definition of A005513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005513.P10771624203458813298

`(A294085(n)+A037240(n))/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A005513

/-- `(A294085(n)+A037240(n))/2` -/
def P10771624203458813298.Spec : Prop :=
  ∀ n, P10771624203458813298.a n = (A005513 (n + 6) : ℚ)

end A005513

/-! ## A005513.P272166998285579628

`A259342(eq[3, A055087(n)])`
-/

namespace A005513.P272166998285579628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005513.P272166998285579628

namespace A005513

/-- `A259342(eq[3, A055087(n)])` -/
def P272166998285579628.Spec : Prop :=
  ∀ n, P272166998285579628.a n = A005513 (n + 6)

end A005513

/-! ## A005513.P6237540323117554506

`A052307(A000096(n+5)+7)`
-/

namespace A005513.P6237540323117554506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A000096 (n + 5) + 7).toNat

end

end A005513.P6237540323117554506

namespace A005513

/-- `A052307(A000096(n+5)+7)` -/
def P6237540323117554506.Spec : Prop :=
  ∀ n, P6237540323117554506.a n = A005513 (n + 6)

end A005513

/-! ## A005513.P17225656695782940398

`A052307(A000217(n+6)+6)`
-/

namespace A005513.P17225656695782940398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A000217 (n + 6) + 6).toNat

end

end A005513.P17225656695782940398

namespace A005513

/-- `A052307(A000217(n+6)+6)` -/
def P17225656695782940398.Spec : Prop :=
  ∀ n, P17225656695782940398.a n = A005513 (n + 6)

end A005513

/-! ## A005513.P10616683701876878628

`A052307(A056121(n)+21)`
-/

namespace A005513.P10616683701876878628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A056121 n + 21).toNat

end

end A005513.P10616683701876878628

namespace A005513

/-- `A052307(A056121(n)+21)` -/
def P10616683701876878628.Spec : Prop :=
  ∀ n, P10616683701876878628.a n = A005513 (n + 6)

end A005513

/-! ## A005513.P15719256506255584990

`A052307(eq[6, A025581(n)])`
-/

namespace A005513.P15719256506255584990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005513.P15719256506255584990

namespace A005513

/-- `A052307(eq[6, A025581(n)])` -/
def P15719256506255584990.Spec : Prop :=
  ∀ n, P15719256506255584990.a n = A005513 (n + 6)

end A005513

/-! ## A005513.P17972050544873337242

`A052307(Δ[Δ[A055832(n+5)]])`
-/

namespace A005513.P17972050544873337242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (f1 (n + 1) - f1 n).toNat

end

end A005513.P17972050544873337242

namespace A005513

/-- `A052307(Δ[Δ[A055832(n+5)]])` -/
def P17972050544873337242.Spec : Prop :=
  ∀ n, P17972050544873337242.a n = A005513 (n + 6)

end A005513

/-!
# A005514: Number of n-bead bracelets (turnover necklaces) with 8 red beads and n-8 black beads.

The programs for A005514, there is no canonical definition to state claims against.
-/

/-! ## A005514.P10961482627204037439

`(A032193(n+8)+C(floor((n+8)/2), 4))/2`
-/

namespace A005514.P10961482627204037439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032193 (n + 8) + (Nat.choose ⌊(n + 8 : ℚ) / 2⌋.toNat 4 : ℤ) : ℚ) / 2

end

end A005514.P10961482627204037439

/-! ## A005514.P5233052861815391620

`(A189976(n+8)+A032193(n+8))/2`
-/

namespace A005514.P5233052861815391620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189976 (n + 8) + A032193 (n + 8) : ℚ) / 2

end

end A005514.P5233052861815391620

/-! ## A005514.P17931560181852202343

`A259342(eq[4, A055087(n)])`
-/

namespace A005514.P17931560181852202343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005514.P17931560181852202343

/-! ## A005514.P18152282574216768483

`A052307(A056126(n)+44)`
-/

namespace A005514.P18152282574216768483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A056126 n + 44).toNat

end

end A005514.P18152282574216768483

/-! ## A005514.P6881034341923419576

`A052307(A000096(n+7)+9)`
-/

namespace A005514.P6881034341923419576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A000096 (n + 7) + 9).toNat

end

end A005514.P6881034341923419576

/-! ## A005514.P14774875379286846005

`A052307(A000217(n+8)+8)`
-/

namespace A005514.P14774875379286846005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A000217 (n + 8) + 8).toNat

end

end A005514.P14774875379286846005

/-! ## A005514.P1606224301783391204

`A052307(A055999(n+7)-A004273(n+3))`
-/

namespace A005514.P1606224301783391204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A055999 (n + 7) - A004273 (n + 3)).toNat

end

end A005514.P1606224301783391204

/-! ## A005514.P3317724791966500718

`A052307(A165900(n+8)-A056000(n+2))`
-/

namespace A005514.P3317724791966500718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A165900 (n + 8) - A056000 (n + 2)).toNat

end

end A005514.P3317724791966500718

/-! ## A005514.P4805613223013153023

`A052307(A167614(n+6)+A004273(n+3))`
-/

namespace A005514.P4805613223013153023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A167614 (n + 6) + A004273 (n + 3)).toNat

end

end A005514.P4805613223013153023

/-!
# A005515: Number of n-bead bracelets (turnover necklaces) of two colors with 10 red beads and n-10 black beads.

The programs for A005515, there is no canonical definition to state claims against.
-/

/-! ## A005515.P3757075703697752062

`A052307(A000096(n+9)+11)`
-/

namespace A005515.P3757075703697752062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A000096 (n + 9) + 11).toNat

end

end A005515.P3757075703697752062

/-! ## A005515.P2162180850524713175

`A052307(A055999(n+9)-A004273(n+4))`
-/

namespace A005515.P2162180850524713175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A055999 (n + 9) - A004273 (n + 4)).toNat

end

end A005515.P2162180850524713175

/-! ## A005515.P9432285180839884266

`A052307(A056000(n+7)-1)`
-/

namespace A005515.P9432285180839884266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A056000 (n + 7) - 1).toNat

end

end A005515.P9432285180839884266

/-! ## A005515.P14906256527776389874

`A052307(A155212(n+7)-3)`
-/

namespace A005515.P14906256527776389874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A155212 (n + 7) - 3).toNat

end

end A005515.P14906256527776389874

/-! ## A005515.P8023047257420095241

`A052307(A167614(n+8)+A004273(n+4))`
-/

namespace A005515.P8023047257420095241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A167614 (n + 8) + A004273 (n + 4)).toNat

end

end A005515.P8023047257420095241

/-! ## A005515.P12934132819681238048

`A052307(A133263(n+7)+A016813(n+6))`
-/

namespace A005515.P12934132819681238048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A133263 (n + 7) + A016813 (n + 6)).toNat

end

end A005515.P12934132819681238048

/-! ## A005515.P1721384957875522973

`A052307(A008585(n+6)+A000124(n+8))`
-/

namespace A005515.P1721384957875522973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A008585 (n + 6) + A000124 (n + 8)).toNat

end

end A005515.P1721384957875522973

/-!
# A005516: Number of n-bead bracelets (turnover necklaces) with 12 red beads.

The programs for A005516, there is no canonical definition to state claims against.
-/

/-! ## A005516.P10201801267581091341

`A259342(eq[6, A055087(n)])`
-/

namespace A005516.P10201801267581091341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005516.P10201801267581091341

/-! ## A005516.P18431717111755231613

`A052307(A155212(n+9)-5)`
-/

namespace A005516.P18431717111755231613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A155212 (n + 9) - 5).toNat

end

end A005516.P18431717111755231613

/-! ## A005516.P14545494409343493239

`A052307(A000096(n+12)-n)`
-/

namespace A005516.P14545494409343493239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A000096 (n + 12) - (n : ℤ)).toNat

end

end A005516.P14545494409343493239

/-! ## A005516.P9431367076754011234

`A052307(A133263(n+2)+A017329(n+8))`
-/

namespace A005516.P9431367076754011234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A133263 (n + 2) + A017329 (n + 8)).toNat

end

end A005516.P9431367076754011234

/-! ## A005516.P16662874080277516324

`A052307(A167614(n+10)+A004273(n+5))`
-/

namespace A005516.P16662874080277516324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A167614 (n + 10) + A004273 (n + 5)).toNat

end

end A005516.P16662874080277516324

/-!
# A005517: Smallest label f(T) given to a rooted tree T with n nodes in Matula-Goebel labeling.

The programs for A005517, the canonical program `A005517.P16237575263181106525` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005517 has offset 1).

The definition of A005517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005517.P16237575263181106525

`5*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=9`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005517

/-- `5*a(n-3)` -/
def P16237575263181106525.Spec : Prop :=
  ∀ n, (P16237575263181106525.a n : ℤ) = A005517 (n + 1)

theorem P16237575263181106525.correct : P16237575263181106525.Spec := by
  intro n
  simp only [A005517, Nat.add_sub_cancel]

end A005517

/-! ## A005517.P17709027713813557006

`∑[a(n-1)+a(n-gcd(2, n%3))]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A005517.P17709027713813557006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - Nat.gcd 2 (n % 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005517.P17709027713813557006

namespace A005517

/-- `∑[a(n-1)+a(n-gcd(2, n%3))]` -/
def P17709027713813557006.Spec : Prop :=
  ∀ n, (P17709027713813557006.a n : ℤ) = A005517 (n + 1)

end A005517

/-! ## A005517.P9787680970781103605

`∪[A056487(n)+A026395(n), A056487(n)]`
-/

namespace A005517.P9787680970781103605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 n + A026395 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005517.P9787680970781103605

namespace A005517

/-- `∪[A056487(n)+A026395(n), A056487(n)]` -/
def P9787680970781103605.Spec : Prop :=
  ∀ n, (P9787680970781103605.a n : ℤ) = A005517 (n + 1)

end A005517

/-! ## A005517.P6268152201991786427

`ogf((1+2x+3x^2-x^4)/(1-5x^3))`
-/

namespace A005517.P6268152201991786427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 0, -1] [1, 0, 0, -5] n

end

end A005517.P6268152201991786427

namespace A005517

/-- `ogf((1+2x+3x^2-x^4)/(1-5x^3))` -/
def P6268152201991786427.Spec : Prop :=
  ∀ n, P6268152201991786427.a n = A005517 (n + 1)

end A005517

/-! ## A005517.P11574090020292098067

`∑[ceil(A138278(n)/4)]`
-/

namespace A005517.P11574090020292098067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138278 n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005517.P11574090020292098067

namespace A005517

/-- `∑[ceil(A138278(n)/4)]` -/
def P11574090020292098067.Spec : Prop :=
  ∀ n, P11574090020292098067.a n = A005517 (n + 1)

end A005517

/-! ## A005517.P10952822943454207949

`∑[A138278(n)/A151798(n)]`
-/

namespace A005517.P10952822943454207949
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138278 n : ℚ) / (A151798 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005517.P10952822943454207949

namespace A005517

/-- `∑[A138278(n)/A151798(n)]` -/
def P10952822943454207949.Spec : Prop :=
  ∀ n, P10952822943454207949.a n = (A005517 (n + 1) : ℚ)

end A005517

/-! ## A005517.P831997327401602475

`∑[A138278(A233583(n+1))/4]`
-/

namespace A005517.P831997327401602475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138278 (A233583 (n + 1)).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005517.P831997327401602475

namespace A005517

/-- `∑[A138278(A233583(n+1))/4]` -/
def P831997327401602475.Spec : Prop :=
  ∀ n, P831997327401602475.a n = (A005517 (n + 1) : ℚ)

end A005517

/-!
# A005518: Largest label f(T) given to a rooted tree T with n nodes in Matula-Goebel labeling.

The programs for A005518, the canonical program `A005518.P8872672557620915422` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005518 has offset 1).

The definition of A005518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005518.P8872672557620915422

`A000040(a(n-1))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005518

/-- `A000040(a(n-1))` -/
def P8872672557620915422.Spec : Prop :=
  ∀ n, P8872672557620915422.a n = A005518 (n + 1)

theorem P8872672557620915422.correct : P8872672557620915422.Spec := by
  intro n
  simp only [A005518, Nat.add_sub_cancel]

end A005518

/-! ## A005518.P11704900547859939949

`A005517(n+1)+A091233(n+1)-1`
-/

namespace A005518.P11704900547859939949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005517 (n + 1) + (A091233 (n + 1) - 1)

end

end A005518.P11704900547859939949

namespace A005518

/-- `A005517(n+1)+A091233(n+1)-1` -/
def P11704900547859939949.Spec : Prop :=
  ∀ n, P11704900547859939949.a n = A005518 (n + 1)

theorem P11704900547859939949.correct : P11704900547859939949.Spec := by
  intro n
  simp only [A005518, Nat.add_sub_cancel, A005518.P11704900547859939949.a, A005518.P8872672557620915422.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005517, A005517.P16237575263181106525.a, A091233, A091233.P10406429357354494568.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005518

/-! ## A005518.P16491659347995357821

`A091233(n+1)+A023443(A005517(n+1))`
-/

namespace A005518.P16491659347995357821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091233 (n + 1) + A023443 (A005517 (n + 1)).toNat

end

end A005518.P16491659347995357821

namespace A005518

/-- `A091233(n+1)+A023443(A005517(n+1))` -/
def P16491659347995357821.Spec : Prop :=
  ∀ n, P16491659347995357821.a n = A005518 (n + 1)

end A005518

/-! ## A005518.P10405947972061866804

`A091233(n+1)+A023443(A290323(2^n))`
-/

namespace A005518.P10405947972061866804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091233 (n + 1) + A023443 (A290323 (2 ^ n)).toNat

end

end A005518.P10405947972061866804

namespace A005518

/-- `A091233(n+1)+A023443(A290323(2^n))` -/
def P10405947972061866804.Spec : Prop :=
  ∀ n, P10405947972061866804.a n = A005518 (n + 1)

end A005518

/-! ## A005518.P1497256343394265250

`A061773(A087803(n+1))`
-/

namespace A005518.P1497256343394265250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061773 (A087803 (n + 1)).toNat

end

end A005518.P1497256343394265250

namespace A005518

/-- `A061773(A087803(n+1))` -/
def P1497256343394265250.Spec : Prop :=
  ∀ n, P1497256343394265250.a n = A005518 (n + 1)

end A005518

/-!
# A005519: Let T(n,d) = number of distinct d-dimensional polyominoes (or polycubes) with n cells (A049429, A049430); sequence gives Sum_{d} T(n,d).

The programs for A005519, there is no canonical definition to state claims against.
-/

/-! ## A005519.P16624050706646847795

`A330891(∑[n+1])`
-/

namespace A005519.P16624050706646847795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330891 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005519.P16624050706646847795

/-! ## A005519.P5274681217757390834

`A330891(A261422(n))%A016794(n)`
-/

namespace A005519.P5274681217757390834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330891 (A261422 n).toNat) (A016794 n)

end

end A005519.P5274681217757390834

/-! ## A005519.P374300126704312710

`A330891(A000217(n+1))%A091465(n)`
-/

namespace A005519.P374300126704312710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330891 (A000217 (n + 1)).toNat) (A091465 n)

end

end A005519.P374300126704312710

/-! ## A005519.P16196423053221566369

`char[A029435(n)]*A330891(A000217(n+1))`
-/

namespace A005519.P16196423053221566369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029435 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A330891 (A000217 (n + 1)).toNat

end

end A005519.P16196423053221566369

/-!
# A005520: Smallest number of complexity n: smallest number requiring n 1's to build using + and *.

The programs for A005520, there is no canonical definition to state claims against.
-/

/-! ## A005520.P16232591868730204579

`record[A036561(n)]-A133374(n+1)`
-/

namespace A005520.P16232591868730204579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A133374 (n + 1)

end

end A005520.P16232591868730204579

/-! ## A005520.P16777872271985243919

`record[A141396(n)]-A133374(n+1)`
-/

namespace A005520.P16777872271985243919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A133374 (n + 1)

end

end A005520.P16777872271985243919

/-! ## A005520.P17062145383802610848

`A000792(n+1)-A133374(n+1)`
-/

namespace A005520.P17062145383802610848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (n + 1) - A133374 (n + 1)

end

end A005520.P17062145383802610848

/-! ## A005520.P9254386292854873786

`record[A122164(n+1)]-A133374(n+1)`
-/

namespace A005520.P9254386292854873786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A133374 (n + 1)

end

end A005520.P9254386292854873786

/-! ## A005520.P2589253388853619202

`record[A155118(n+1)]-A133374(n+1)`
-/

namespace A005520.P2589253388853619202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A133374 (n + 1)

end

end A005520.P2589253388853619202

/-!
# A005521: 1 + (sum of first n odd primes - n)/2.

The programs for A005521, the canonical program `A005521.P885099194916779393` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005521 has offset 0).

The definition of A005521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005521.P17219801644742613919

`∑[A130290(n+1)]`
-/

namespace A005521.P17219801644742613919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005521.P17219801644742613919

namespace A005521

/-- `∑[A130290(n+1)]` -/
def P17219801644742613919.Spec : Prop :=
  ∀ n, P17219801644742613919.a n = A005521 n

end A005521

/-! ## A005521.P2439245025886682502

`ceil(A101301(n+1)/2)`
-/

namespace A005521.P2439245025886682502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101301 (n + 1) : ℚ) / 2⌉

end

end A005521.P2439245025886682502

namespace A005521

/-- `ceil(A101301(n+1)/2)` -/
def P2439245025886682502.Spec : Prop :=
  ∀ n, P2439245025886682502.a n = A005521 n

end A005521

/-! ## A005521.P99596749063799905

`∑[A102781(n+1)]+1`
-/

namespace A005521.P99596749063799905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005521.P99596749063799905

namespace A005521

/-- `∑[A102781(n+1)]+1` -/
def P99596749063799905.Spec : Prop :=
  ∀ n, P99596749063799905.a n = A005521 n

end A005521

/-! ## A005521.P3658839203196748143

`∑[A130291(n+1)-1]`
-/

namespace A005521.P3658839203196748143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005521.P3658839203196748143

namespace A005521

/-- `∑[A130291(n+1)-1]` -/
def P3658839203196748143.Spec : Prop :=
  ∀ n, P3658839203196748143.a n = A005521 n

theorem P3658839203196748143.correct : P3658839203196748143.Spec := by
  intro n
  simp only [A005521, Nat.add_sub_cancel, A005521.P3658839203196748143.f1, A005521.P3658839203196748143.a, A005521.P885099194916779393.f1, A005521.P885099194916779393.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A130291, A130291.P14568566917462971400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005521

/-! ## A005521.P4354960224749718541

`∑[A111333(n+1)]-n`
-/

namespace A005521.P4354960224749718541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A005521.P4354960224749718541

namespace A005521

/-- `∑[A111333(n+1)]-n` -/
def P4354960224749718541.Spec : Prop :=
  ∀ n, P4354960224749718541.a n = A005521 n

end A005521

/-! ## A005521.P16905939861866185270

`∑[floor(Δ[A007504(n)/2])]`
-/

namespace A005521.P16905939861866185270
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005521.P16905939861866185270

namespace A005521

/-- `∑[floor(Δ[A007504(n)/2])]` -/
def P16905939861866185270.Spec : Prop :=
  ∀ n, P16905939861866185270.a n = A005521 n

end A005521

/-! ## A005521.P18088058220476658987

`(A007504(n+1)-n)/2`
-/

namespace A005521.P18088058220476658987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A005521.P18088058220476658987

namespace A005521

/-- `(A007504(n+1)-n)/2` -/
def P18088058220476658987.Spec : Prop :=
  ∀ n, P18088058220476658987.a n = (A005521 n : ℚ)

end A005521

/-! ## A005521.P7340110847494422559

`A005097(n)+a(n-1)` with `a(0)=1`
-/

namespace A005521.P7340110847494422559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005097 n + a (n - 1)

end

end A005521.P7340110847494422559

namespace A005521

/-- `A005097(n)+a(n-1)` -/
def P7340110847494422559.Spec : Prop :=
  ∀ n, P7340110847494422559.a n = A005521 n

end A005521

/-! ## A005521.P885099194916779393

`∑[floor(A000040(n+1)/2)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005521

/-- `∑[floor(A000040(n+1)/2)]` -/
def P885099194916779393.Spec : Prop :=
  ∀ n, P885099194916779393.a n = A005521 n

theorem P885099194916779393.correct : P885099194916779393.Spec := by
  intro n
  simp only [A005521]

end A005521

/-! ## A005521.P15701258176714934647

`∑[ceil(A006093(n+1)/2)]`
-/

namespace A005521.P15701258176714934647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006093 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005521.P15701258176714934647

namespace A005521

/-- `∑[ceil(A006093(n+1)/2)]` -/
def P15701258176714934647.Spec : Prop :=
  ∀ n, P15701258176714934647.a n = A005521 n

end A005521

/-! ## A005521.P2956832222551561201

`(∑[A039915(n+1)]-1)/2`
-/

namespace A005521.P2956832222551561201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A005521.P2956832222551561201

namespace A005521

/-- `(∑[A039915(n+1)]-1)/2` -/
def P2956832222551561201.Spec : Prop :=
  ∀ n, P2956832222551561201.a n = (A005521 n : ℚ)

end A005521

/-! ## A005521.P16567388406537743625

`∑[A129768(n+1)+n]-n`
-/

namespace A005521.P16567388406537743625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129768 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A005521.P16567388406537743625

namespace A005521

/-- `∑[A129768(n+1)+n]-n` -/
def P16567388406537743625.Spec : Prop :=
  ∀ n, P16567388406537743625.a n = A005521 n

end A005521

/-! ## A005521.P15845692474563915695

`(A237589(n+1)-(n-1))/2`
-/

namespace A005521.P15845692474563915695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237589 (n + 1) - ((n : ℤ) - 1) : ℚ) / 2

end

end A005521.P15845692474563915695

namespace A005521

/-- `(A237589(n+1)-(n-1))/2` -/
def P15845692474563915695.Spec : Prop :=
  ∀ n, P15845692474563915695.a n = (A005521 n : ℚ)

end A005521

/-! ## A005521.P9752787671055425505

`a(n-1)+A067076(n)+1` with `a(0)=1`
-/

namespace A005521.P9752787671055425505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A067076 n + 1)

end

end A005521.P9752787671055425505

namespace A005521

/-- `a(n-1)+A067076(n)+1` -/
def P9752787671055425505.Spec : Prop :=
  ∀ n, P9752787671055425505.a n = A005521 n

end A005521

/-! ## A005521.P4480130114774932448

`a(n-1)+A008507(n)+n` with `a(0)=1`
-/

namespace A005521.P4480130114774932448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A008507 n + (n : ℤ))

end

end A005521.P4480130114774932448

namespace A005521

/-- `a(n-1)+A008507(n)+n` -/
def P4480130114774932448.Spec : Prop :=
  ∀ n, P4480130114774932448.a n = A005521 n

end A005521

/-! ## A005521.P5195907065452282334

`(∑[A000040(C(n+1, n))]-n)/2`
-/

namespace A005521.P5195907065452282334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.choose (n + 1) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 2

end

end A005521.P5195907065452282334

namespace A005521

/-- `(∑[A000040(C(n+1, n))]-n)/2` -/
def P5195907065452282334.Spec : Prop :=
  ∀ n, P5195907065452282334.a n = (A005521 n : ℚ)

end A005521

/-! ## A005521.P9099249100608345140

`(∑[A000040(2*n+1-n)]-n)/2`
-/

namespace A005521.P9099249100608345140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1 - n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 2

end

end A005521.P9099249100608345140

namespace A005521

/-- `(∑[A000040(2*n+1-n)]-n)/2` -/
def P9099249100608345140.Spec : Prop :=
  ∀ n, P9099249100608345140.a n = (A005521 n : ℚ)

end A005521

/-! ## A005521.P2991568429345536068

`(A014692(n+1)+A007504(n))/2`
-/

namespace A005521.P2991568429345536068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + A007504 n : ℚ) / 2

end

end A005521.P2991568429345536068

namespace A005521

/-- `(A014692(n+1)+A007504(n))/2` -/
def P2991568429345536068.Spec : Prop :=
  ∀ n, P2991568429345536068.a n = (A005521 n : ℚ)

end A005521

/-! ## A005521.P6628701469624968604

`∑[A005097(n+1)]+1-A005097(n+1)`
-/

namespace A005521.P6628701469624968604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A005097 (n + 1))

end

end A005521.P6628701469624968604

namespace A005521

/-- `∑[A005097(n+1)]+1-A005097(n+1)` -/
def P6628701469624968604.Spec : Prop :=
  ∀ n, P6628701469624968604.a n = A005521 n

end A005521

/-! ## A005521.P893114252741259880

`∑[A067076(n+1)+1]-A067076(n+1)`
-/

namespace A005521.P893114252741259880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A067076 (n + 1)

end

end A005521.P893114252741259880

namespace A005521

/-- `∑[A067076(n+1)+1]-A067076(n+1)` -/
def P893114252741259880.Spec : Prop :=
  ∀ n, P893114252741259880.a n = A005521 n

end A005521

/-!
# A005522: a(n) = 1 + L(n) + F(2*n-1) with {L(n)}_{n>=0} the Lucas numbers (A000032) and F(2*n-1)_{n>=0} the bisected Fibonacci numbers (A001519).

The programs for A005522, the canonical program `A005522.P10018832916922347540` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005522 has offset 0).

The definition of A005522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005522.P10018832916922347540

`5*a(n-1)-7*a(n-2)+a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=4, a(1)=3, a(2)=6, a(3)=10, a(4)=21`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005522

/-- `5*a(n-1)-7*a(n-2)+a(n-3)+3*a(n-4)-a(n-5)` -/
def P10018832916922347540.Spec : Prop :=
  ∀ n, P10018832916922347540.a n = A005522 n

theorem P10018832916922347540.correct : P10018832916922347540.Spec := by
  intro n
  simp only [A005522]

end A005522

/-! ## A005522.P16163394258516393773

`A001612(n)+A001519(n)`
-/

namespace A005522.P16163394258516393773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n + A001519 n

end

end A005522.P16163394258516393773

namespace A005522

/-- `A001612(n)+A001519(n)` -/
def P16163394258516393773.Spec : Prop :=
  ∀ n, P16163394258516393773.a n = A005522 n

end A005522

/-! ## A005522.P4976191575030572105

`A032908(n)+A000032(n)`
-/

namespace A005522.P4976191575030572105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n + A000032 n

end

end A005522.P4976191575030572105

namespace A005522

/-- `A032908(n)+A000032(n)` -/
def P4976191575030572105.Spec : Prop :=
  ∀ n, P4976191575030572105.a n = A005522 n

end A005522

/-! ## A005522.P18171345498620929998

`A032908(n)+Δ[A001610(n)]`
-/

namespace A005522.P18171345498620929998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n + (f1 (n + 1) - f1 n)

end

end A005522.P18171345498620929998

namespace A005522

/-- `A032908(n)+Δ[A001610(n)]` -/
def P18171345498620929998.Spec : Prop :=
  ∀ n, P18171345498620929998.a n = A005522 n

end A005522

/-! ## A005522.P4233947692145920376

`A000032(n)+A001519(n)+1`
-/

namespace A005522.P4233947692145920376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A001519 n + 1)

end

end A005522.P4233947692145920376

namespace A005522

/-- `A000032(n)+A001519(n)+1` -/
def P4233947692145920376.Spec : Prop :=
  ∀ n, P4233947692145920376.a n = A005522 n

end A005522

/-! ## A005522.P15368393618209691645

`A000211(n)+A032908(n)-2`
-/

namespace A005522.P15368393618209691645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n + (A032908 n - 2)

end

end A005522.P15368393618209691645

namespace A005522

/-- `A000211(n)+A032908(n)-2` -/
def P15368393618209691645.Spec : Prop :=
  ∀ n, P15368393618209691645.a n = A005522 n

end A005522

/-! ## A005522.P1613683314744654995

`A119282(2*n)+A000211(n)`
-/

namespace A005522.P1613683314744654995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 (2 * n) + A000211 n

end

end A005522.P1613683314744654995

namespace A005522

/-- `A119282(2*n)+A000211(n)` -/
def P1613683314744654995.Spec : Prop :=
  ∀ n, P1613683314744654995.a n = A005522 n

end A005522

/-! ## A005522.P18165383645625619368

`A212804(2*n)+A001612(n)`
-/

namespace A005522.P18165383645625619368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n) + A001612 n

end

end A005522.P18165383645625619368

namespace A005522

/-- `A212804(2*n)+A001612(n)` -/
def P18165383645625619368.Spec : Prop :=
  ∀ n, P18165383645625619368.a n = A005522 n

end A005522

/-! ## A005522.P17796898933767965502

`A001612(n)-A152163(2*n+1)`
-/

namespace A005522.P17796898933767965502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n - A152163 (2 * n + 1)

end

end A005522.P17796898933767965502

namespace A005522

/-- `A001612(n)-A152163(2*n+1)` -/
def P17796898933767965502.Spec : Prop :=
  ∀ n, P17796898933767965502.a n = A005522 n

end A005522

/-! ## A005522.P4030830466373968795

`A127218(2*n)+A212804(2*n)+1`
-/

namespace A005522.P4030830466373968795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * n) + (A212804 (2 * n) + 1)

end

end A005522.P4030830466373968795

namespace A005522

/-- `A127218(2*n)+A212804(2*n)+1` -/
def P4030830466373968795.Spec : Prop :=
  ∀ n, P4030830466373968795.a n = A005522 n

end A005522

/-! ## A005522.P10358097559789353974

`A000032(n)+A000045(abs(1-2*n))+1`
-/

namespace A005522.P10358097559789353974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A000045 |1 - (2 * n : ℤ)|.toNat + 1)

end

end A005522.P10358097559789353974

namespace A005522

/-- `A000032(n)+A000045(abs(1-2*n))+1` -/
def P10358097559789353974.Spec : Prop :=
  ∀ n, P10358097559789353974.a n = A005522 n

end A005522

/-! ## A005522.P4914632475256087526

`A010051(2*(n+1))+Δ[round(ϕ^(n+1))]+A001519(n)+1`
-/

namespace A005522.P4914632475256087526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + (f1 (n + 1) - f1 n) + (A001519 n + 1)

end

end A005522.P4914632475256087526

namespace A005522

/-- `A010051(2*(n+1))+Δ[round(ϕ^(n+1))]+A001519(n)+1` -/
def P4914632475256087526.Spec : Prop :=
  ∀ n, P4914632475256087526.a n = A005522 n

end A005522

/-! ## A005522.P7785171875033401868

`A094967(A004273(n))+A001612(n)`
-/

namespace A005522.P7785171875033401868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (A004273 n).toNat + A001612 n

end

end A005522.P7785171875033401868

namespace A005522

/-- `A094967(A004273(n))+A001612(n)` -/
def P7785171875033401868.Spec : Prop :=
  ∀ n, P7785171875033401868.a n = A005522 n

end A005522

/-! ## A005522.P5772383798378999644

`A094967(A004275(n))+A001612(n)`
-/

namespace A005522.P5772383798378999644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (A004275 n).toNat + A001612 n

end

end A005522.P5772383798378999644

namespace A005522

/-- `A094967(A004275(n))+A001612(n)` -/
def P5772383798378999644.Spec : Prop :=
  ∀ n, P5772383798378999644.a n = A005522 n

end A005522

/-! ## A005522.P10005788532981871421

`A000045(A004280(n+1))+A000032(n)+1`
-/

namespace A005522.P10005788532981871421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004280 (n + 1)).toNat + (A000032 n + 1)

end

end A005522.P10005788532981871421

namespace A005522

/-- `A000045(A004280(n+1))+A000032(n)+1` -/
def P10005788532981871421.Spec : Prop :=
  ∀ n, P10005788532981871421.a n = A005522 n

end A005522

/-! ## A005522.P12081994608070743400

`A032908(n)+Δ[A000045(n)]+A000045(n+1)`
-/

namespace A005522.P12081994608070743400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n + (f1 (n + 1) - f1 n + A000045 (n + 1))

end

end A005522.P12081994608070743400

namespace A005522

/-- `A032908(n)+Δ[A000045(n)]+A000045(n+1)` -/
def P12081994608070743400.Spec : Prop :=
  ∀ n, P12081994608070743400.a n = A005522 n

end A005522

/-! ## A005522.P2674099619847710551

`A212804(n+2)+A212804(n)+A001519(n)+1`
-/

namespace A005522.P2674099619847710551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + A212804 n + (A001519 n + 1)

end

end A005522.P2674099619847710551

namespace A005522

/-- `A212804(n+2)+A212804(n)+A001519(n)+1` -/
def P2674099619847710551.Spec : Prop :=
  ∀ n, P2674099619847710551.a n = A005522 n

end A005522

/-! ## A005522.P9427882025326972300

`A000204(n+2)+A032908(n)-A000204(n+1)`
-/

namespace A005522.P9427882025326972300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + (A032908 n - A000204 (n + 1))

end

end A005522.P9427882025326972300

namespace A005522

/-- `A000204(n+2)+A032908(n)-A000204(n+1)` -/
def P9427882025326972300.Spec : Prop :=
  ∀ n, P9427882025326972300.a n = A005522 n

end A005522

/-!
# A005524: Values k arising from a construction of Hirschfeld of k-arcs on elliptic curves over GF(q), where q = A246655(n) is the n-th prime power > 1.

The programs for A005524, the canonical program `A005524.P6132441036754086361` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005524 has offset 1).

The definition of A005524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005524.P6019001288283198844

`floor(A005523(n+1)/2)`
-/

namespace A005524.P6019001288283198844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005523 (n + 1) : ℚ) / 2⌋

end

end A005524.P6019001288283198844

namespace A005524

/-- `floor(A005523(n+1)/2)` -/
def P6019001288283198844.Spec : Prop :=
  ∀ n, P6019001288283198844.a n = A005524 (n + 1)

end A005524

/-! ## A005524.P6132441036754086361

`floor((sqrt(A246655(n+1))+1)²/2)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A005524

/-- `floor((sqrt(A246655(n+1))+1)²/2)` -/
def P6132441036754086361.Spec : Prop :=
  ∀ n, P6132441036754086361.a n = A005524 (n + 1)

theorem P6132441036754086361.correct : P6132441036754086361.Spec := by
  intro n
  simp only [A005524, Nat.add_sub_cancel]

end A005524

/-! ## A005524.P12162196085909067801

`A004526(A005523(n+1))`
-/

namespace A005524.P12162196085909067801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005523 (n + 1)).toNat

end

end A005524.P12162196085909067801

namespace A005524

/-- `A004526(A005523(n+1))` -/
def P12162196085909067801.Spec : Prop :=
  ∀ n, P12162196085909067801.a n = A005524 (n + 1)

end A005524

/-! ## A005524.P13875427757995559985

`A065033(A005523(n+1)-1)`
-/

namespace A005524.P13875427757995559985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A005523 (n + 1) - 1).toNat

end

end A005524.P13875427757995559985

namespace A005524

/-- `A065033(A005523(n+1)-1)` -/
def P13875427757995559985.Spec : Prop :=
  ∀ n, P13875427757995559985.a n = A005524 (n + 1)

end A005524

/-! ## A005524.P17576309120782581239

`A110654(A005523(n+1)-1)`
-/

namespace A005524.P17576309120782581239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005523 (n + 1) - 1).toNat

end

end A005524.P17576309120782581239

namespace A005524

/-- `A110654(A005523(n+1)-1)` -/
def P17576309120782581239.Spec : Prop :=
  ∀ n, P17576309120782581239.a n = A005524 (n + 1)

end A005524

/-!
# A005525: Maximal number of rational points on a curve of genus 2 over GF(q), where q = A246655(n) is the n-th prime power > 1.

The programs for A005525, there is no canonical definition to state claims against.
-/

/-! ## A005525.P4591371202642295533

`A068509(A164454(n+5)+1)`
-/

namespace A005525.P4591371202642295533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 (A164454 (n + 5) + 1).toNat

end

end A005525.P4591371202642295533

/-! ## A005525.P5026950154772249346

`A353393(n+4)-A351566(A347004(n))`
-/

namespace A005525.P5026950154772249346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353393 (n + 4) - A351566 (A347004 n).toNat

end

end A005525.P5026950154772249346

/-! ## A005525.P10821276021523908052

`A110548(2*(n+1))+A002808(A034887(n))`
-/

namespace A005525.P10821276021523908052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110548 (2 * (n + 1)) + A002808 (A034887 n).toNat

end

end A005525.P10821276021523908052

/-! ## A005525.P11357606345912336806

`A249949(A162975(3*n+1))+A075025(n+1)`
-/

namespace A005525.P11357606345912336806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249949 (A162975 (3 * n + 1)).toNat + A075025 (n + 1)

end

end A005525.P11357606345912336806

/-!
# A005526: Maximal number of rational points that a (smooth, geometrically irreducible) curve of genus 3 over the finite field GF(q) can have, where q is the n-th prime power >= 2.

The programs for A005526, there is no canonical definition to state claims against.
-/

/-! ## A005526.P11882163339429947326

`A080205(A128603(n+1))`
-/

namespace A005526.P11882163339429947326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080205 (A128603 (n + 1)).toNat

end

end A005526.P11882163339429947326

/-! ## A005526.P13223280258189409441

`A080205(A144711(n+1))`
-/

namespace A005526.P13223280258189409441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080205 (A144711 (n + 1)).toNat

end

end A005526.P13223280258189409441

/-! ## A005526.P1322192579452353715

`A080205(A246655(n+1))`
-/

namespace A005526.P1322192579452353715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080205 (A246655 (n + 1)).toNat

end

end A005526.P1322192579452353715

/-! ## A005526.P9276075334694809557

`A080205(A337935(n+1))`
-/

namespace A005526.P9276075334694809557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080205 (A337935 (n + 1)).toNat

end

end A005526.P9276075334694809557

/-! ## A005526.P8691222688979653440

`A080205(A363727(n+1))`
-/

namespace A005526.P8691222688979653440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080205 (A363727 (n + 1)).toNat

end

end A005526.P8691222688979653440

/-!
# A005528: Størmer numbers or arc-cotangent irreducible numbers: numbers k such that the largest prime factor of k^2 + 1 is >= 2*k.

The programs for A005528, the canonical program `A005528.P781520974399035425` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005528 has offset 1).

The definition of A005528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005528.P5737811196249327030

`eq[1, A242012(n+1)]+1`
-/

namespace A005528.P5737811196249327030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242012 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005528.P5737811196249327030

namespace A005528

/-- `eq[1, A242012(n+1)]+1` -/
def P5737811196249327030.Spec : Prop :=
  ∀ n, (P5737811196249327030.a n : ℤ) = A005528 (n + 1)

end A005528

/-! ## A005528.P10018687353194301753

`eq[1, A249066(n+1)]+1`
-/

namespace A005528.P10018687353194301753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005528.P10018687353194301753

namespace A005528

/-- `eq[1, A249066(n+1)]+1` -/
def P10018687353194301753.Spec : Prop :=
  ∀ n, (P10018687353194301753.a n : ℤ) = A005528 (n + 1)

end A005528

/-! ## A005528.P6031773555639356639

`eq[1, A252890(n+1)]+1`
-/

namespace A005528.P6031773555639356639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005528.P6031773555639356639

namespace A005528

/-- `eq[1, A252890(n+1)]+1` -/
def P6031773555639356639.Spec : Prop :=
  ∀ n, (P6031773555639356639.a n : ℤ) = A005528 (n + 1)

end A005528

/-! ## A005528.P15140203547510083229

`lt[2*n+1, A014442(n+1)]+1`
-/

namespace A005528.P15140203547510083229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A005528.P15140203547510083229

namespace A005528

/-- `lt[2*n+1, A014442(n+1)]+1` -/
def P15140203547510083229.Spec : Prop :=
  ∀ n, (P15140203547510083229.a n : ℤ) = A005528 (n + 1)

end A005528

/-! ## A005528.P939993687001083725

`record[(n+1)/A242012(n+1)]%A006512(n+1)`
-/

namespace A005528.P939993687001083725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A242012 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (A006512 (n + 1))

end

end A005528.P939993687001083725

namespace A005528

/-- `record[(n+1)/A242012(n+1)]%A006512(n+1)` -/
def P939993687001083725.Spec : Prop :=
  ∀ n, P939993687001083725.a n = A005528 (n + 1)

end A005528

/-! ## A005528.P781520974399035425

`lt[2*n+1, A281793(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A005528

/-- `lt[2*n+1, A281793(n+1)]+1` -/
def P781520974399035425.Spec : Prop :=
  ∀ n, (P781520974399035425.a n : ℤ) = A005528 (n + 1)

theorem P781520974399035425.correct : P781520974399035425.Spec := by
  intro n
  simp only [A005528, Nat.add_sub_cancel]

end A005528

/-! ## A005528.P16254590300544222978

`A070669(A005529(n+1))`
-/

namespace A005528.P16254590300544222978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070669 (A005529 (n + 1)).toNat

end

end A005528.P16254590300544222978

namespace A005528

/-- `A070669(A005529(n+1))` -/
def P16254590300544222978.Spec : Prop :=
  ∀ n, P16254590300544222978.a n = A005528 (n + 1)

end A005528

/-! ## A005528.P11247094071209013156

`lt[n, A026741(A250069(n+1))]+1`
-/

namespace A005528.P11247094071209013156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A250069 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A005528.P11247094071209013156

namespace A005528

/-- `lt[n, A026741(A250069(n+1))]+1` -/
def P11247094071209013156.Spec : Prop :=
  ∀ n, (P11247094071209013156.a n : ℤ) = A005528 (n + 1)

end A005528

/-!
# A005529: Primitive prime factors of the sequence k^2 + 1 (A002522) in the order that they are found.

The programs for A005529, the canonical program `A005529.P8745701647646569088` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005529 has offset 1).

The definition of A005529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005529.P8745701647646569088

`A014442(A005528(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A005529

/-- `A014442(A005528(n+1))` -/
def P8745701647646569088.Spec : Prop :=
  ∀ n, P8745701647646569088.a n = A005529 (n + 1)

theorem P8745701647646569088.correct : P8745701647646569088.Spec := by
  intro n
  simp only [A005529, Nat.add_sub_cancel]

end A005529

/-! ## A005529.P18142274914602077554

`A014442(eq[1, A252890(n+1)]+1)`
-/

namespace A005529.P18142274914602077554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A005529.P18142274914602077554

namespace A005529

/-- `A014442(eq[1, A252890(n+1)]+1)` -/
def P18142274914602077554.Spec : Prop :=
  ∀ n, P18142274914602077554.a n = A005529 (n + 1)

end A005529

/-! ## A005529.P2058889933603709265

`A014442(lt[2*n+1, A014442(n+1)]+1)`
-/

namespace A005529.P2058889933603709265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A005529.P2058889933603709265

namespace A005529

/-- `A014442(lt[2*n+1, A014442(n+1)]+1)` -/
def P2058889933603709265.Spec : Prop :=
  ∀ n, P2058889933603709265.a n = A005529 (n + 1)

end A005529

/-! ## A005529.P5063449462896861191

`A014442(record[n%(n+1-A014442(n+1))]+1)`
-/

namespace A005529.P5063449462896861191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) ((n + 1 : ℤ) - A014442 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A005529.P5063449462896861191

namespace A005529

/-- `A014442(record[n%(n+1-A014442(n+1))]+1)` -/
def P5063449462896861191.Spec : Prop :=
  ∀ n, P5063449462896861191.a n = A005529 (n + 1)

end A005529

/-! ## A005529.P15500768823256955269

`p?[A014442(n+1)*A242012(n+1)]`
-/

namespace A005529.P15500768823256955269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1) * A242012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005529.P15500768823256955269

namespace A005529

/-- `p?[A014442(n+1)*A242012(n+1)]` -/
def P15500768823256955269.Spec : Prop :=
  ∀ n, P15500768823256955269.a n = A005529 (n + 1)

end A005529

/-! ## A005529.P6359935329286536000

`p?[A089122(n+1)*A260258(n+1)]`
-/

namespace A005529.P6359935329286536000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089122 (n + 1) * A260258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005529.P6359935329286536000

namespace A005529

/-- `p?[A089122(n+1)*A260258(n+1)]` -/
def P6359935329286536000.Spec : Prop :=
  ∀ n, P6359935329286536000.a n = A005529 (n + 1)

end A005529

/-! ## A005529.P5325005880323380156

`A006530(A005528(n+1)²+1)`
-/

namespace A005529.P5325005880323380156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005528 (n + 1) ^ 2 + 1).toNat

end

end A005529.P5325005880323380156

namespace A005529

/-- `A006530(A005528(n+1)²+1)` -/
def P5325005880323380156.Spec : Prop :=
  ∀ n, P5325005880323380156.a n = A005529 (n + 1)

end A005529

/-!
# A005530: Number of Boolean functions of n variables from Post class F(8,inf); number of degenerate Boolean functions of n variables.

The programs for A005530, there is no canonical definition to state claims against.
-/

/-! ## A005530.P4081709533810871678

`2*A051381(n+1)`
-/

namespace A005530.P4081709533810871678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051381 (n + 1)

end

end A005530.P4081709533810871678

/-! ## A005530.P6096623726273778647

`lcm(2, A051381(A187829(n+1)))`
-/

namespace A005530.P6096623726273778647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A051381 (A187829 (n + 1)).toNat)

end

end A005530.P6096623726273778647

/-! ## A005530.P7818517162919490294

`lcm(A020639(A051435(n)), A051381(n+1))`
-/

namespace A005530.P7818517162919490294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (A051435 n).toNat) (A051381 (n + 1))

end

end A005530.P7818517162919490294

/-! ## A005530.P16981128576845782493

`A051381(n+1)+A051381(A187829(n+1))`
-/

namespace A005530.P16981128576845782493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051381 (n + 1) + A051381 (A187829 (n + 1)).toNat

end

end A005530.P16981128576845782493

/-!
# A005535: Number of semi-regular digraphs (with loops) on n unlabeled nodes with each node having out-degree 3.

The programs for A005535, there is no canonical definition to state claims against.
-/

/-! ## A005535.P7385570787102161255

`A259471(A167614(n+2))`
-/

namespace A005535.P7385570787102161255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259471 (A167614 (n + 2)).toNat

end

end A005535.P7385570787102161255

/-! ## A005535.P2722391553779663370

`A259471(A141214(n)+6)`
-/

namespace A005535.P2722391553779663370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259471 (A141214 n + 6).toNat

end

end A005535.P2722391553779663370

/-! ## A005535.P6253952130363041231

`A259471(A052905(n)+8)`
-/

namespace A005535.P6253952130363041231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259471 (A052905 n + 8).toNat

end

end A005535.P6253952130363041231

/-! ## A005535.P17293599113451115904

`A259471(eq[3, A002262(n)])`
-/

namespace A005535.P17293599113451115904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259471 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005535.P17293599113451115904

/-! ## A005535.P9839785101410029784

`A259471(A000096(n+2)+4)`
-/

namespace A005535.P9839785101410029784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259471 (A000096 (n + 2) + 4).toNat

end

end A005535.P9839785101410029784

/-!
# A005536: a(0) = 0; thereafter a(2n) = n - a(n) - a(n-1), a(2n+1) = n - 2a(n) + 1.

The programs for A005536, the canonical program `A005536.P13394771337707187493` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005536 has offset 0).

The definition of A005536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005536.P13394771337707187493

`∑[n%2-a(floor(n/2))]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005536

/-- `∑[n%2-a(floor(n/2))]` -/
def P13394771337707187493.Spec : Prop :=
  ∀ n, P13394771337707187493.a n = A005536 n

theorem P13394771337707187493.correct : P13394771337707187493.Spec := by
  intro n
  simp only [A005536]

end A005536

/-! ## A005536.P8320847762534259436

`∑[A065359(n)]`
-/

namespace A005536.P8320847762534259436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005536.P8320847762534259436

namespace A005536

/-- `∑[A065359(n)]` -/
def P8320847762534259436.Spec : Prop :=
  ∀ n, P8320847762534259436.a n = A005536 n

end A005536

/-! ## A005536.P7821772583421775845

`∑[n-3*A123087(n)]`
-/

namespace A005536.P7821772583421775845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 * A123087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005536.P7821772583421775845

namespace A005536

/-- `∑[n-3*A123087(n)]` -/
def P7821772583421775845.Spec : Prop :=
  ∀ n, P7821772583421775845.a n = A005536 n

end A005536

/-! ## A005536.P10773796588223263646

`∑[∑[3*A285384(n+1)]]%(n+1)`
-/

namespace A005536.P10773796588223263646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A285384 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A005536.P10773796588223263646

namespace A005536

/-- `∑[∑[3*A285384(n+1)]]%(n+1)` -/
def P10773796588223263646.Spec : Prop :=
  ∀ n, P10773796588223263646.a n = A005536 n

end A005536

/-! ## A005536.P17277097483585533146

`∑[A139351(n)-A139352(n)]`
-/

namespace A005536.P17277097483585533146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n - A139352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005536.P17277097483585533146

namespace A005536

/-- `∑[A139351(n)-A139352(n)]` -/
def P17277097483585533146.Spec : Prop :=
  ∀ n, P17277097483585533146.a n = A005536 n

end A005536

/-! ## A005536.P16607461696202509886

`∑[A160381(n)-A160382(n)]`
-/

namespace A005536.P16607461696202509886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n - A160382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005536.P16607461696202509886

namespace A005536

/-- `∑[A160381(n)-A160382(n)]` -/
def P16607461696202509886.Spec : Prop :=
  ∀ n, P16607461696202509886.a n = A005536 n

end A005536

/-! ## A005536.P16359140035189211484

`∑[2*A139351(n)-A000120(n)]`
-/

namespace A005536.P16359140035189211484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139351 n - A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005536.P16359140035189211484

namespace A005536

/-- `∑[2*A139351(n)-A000120(n)]` -/
def P16359140035189211484.Spec : Prop :=
  ∀ n, P16359140035189211484.a n = A005536 n

end A005536

/-! ## A005536.P2383855568185807406

`∑[A000120(n)-2*A139352(n)]`
-/

namespace A005536.P2383855568185807406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - 2 * A139352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005536.P2383855568185807406

namespace A005536

/-- `∑[A000120(n)-2*A139352(n)]` -/
def P2383855568185807406.Spec : Prop :=
  ∀ n, P2383855568185807406.a n = A005536 n

end A005536

/-! ## A005536.P6185294721952053511

`∑[A160381(n)-A000120(A292372(n))]`
-/

namespace A005536.P6185294721952053511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n - A000120 (A292372 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005536.P6185294721952053511

namespace A005536

/-- `∑[A160381(n)-A000120(A292372(n))]` -/
def P6185294721952053511.Spec : Prop :=
  ∀ n, P6185294721952053511.a n = A005536 n

end A005536

/-! ## A005536.P7235734772577989555

`∑[A000120(A292371(n))-A160382(n)]`
-/

namespace A005536.P7235734772577989555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292371 n).toNat - A160382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005536.P7235734772577989555

namespace A005536

/-- `∑[A000120(A292371(n))-A160382(n)]` -/
def P7235734772577989555.Spec : Prop :=
  ∀ n, P7235734772577989555.a n = A005536 n

end A005536

/-! ## A005536.P371741086001390770

`∑[A053737(2*n)-A053737(n)]`
-/

namespace A005536.P371741086001390770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (2 * n) - A053737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005536.P371741086001390770

namespace A005536

/-- `∑[A053737(2*n)-A053737(n)]` -/
def P371741086001390770.Spec : Prop :=
  ∀ n, P371741086001390770.a n = A005536 n

end A005536

/-! ## A005536.P15383817861720820129

`∑[A139352(2*n)-A139352(n)]`
-/

namespace A005536.P15383817861720820129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (2 * n) - A139352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005536.P15383817861720820129

namespace A005536

/-- `∑[A139352(2*n)-A139352(n)]` -/
def P15383817861720820129.Spec : Prop :=
  ∀ n, P15383817861720820129.a n = A005536 n

end A005536

/-! ## A005536.P3462002856269524872

`∑[A139351(n)-A139351(2*n)]`
-/

namespace A005536.P3462002856269524872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n - A139351 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005536.P3462002856269524872

namespace A005536

/-- `∑[A139351(n)-A139351(2*n)]` -/
def P3462002856269524872.Spec : Prop :=
  ∀ n, P3462002856269524872.a n = A005536 n

end A005536

/-! ## A005536.P8353029504156655078

`∑[A004718(A048678(n))]`
-/

namespace A005536.P8353029504156655078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A048678 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005536.P8353029504156655078

namespace A005536

/-- `∑[A004718(A048678(n))]` -/
def P8353029504156655078.Spec : Prop :=
  ∀ n, P8353029504156655078.a n = A005536 n

end A005536

/-! ## A005536.P13071153272441567198

`∑[A131851(A000695(n))]`
-/

namespace A005536.P13071153272441567198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A000695 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005536.P13071153272441567198

namespace A005536

/-- `∑[A131851(A000695(n))]` -/
def P13071153272441567198.Spec : Prop :=
  ∀ n, P13071153272441567198.a n = A005536 n

end A005536

/-! ## A005536.P12676056799116024886

`∑[A085144(A196168(n))]`
-/

namespace A005536.P12676056799116024886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A196168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005536.P12676056799116024886

namespace A005536

/-- `∑[A085144(A196168(n))]` -/
def P12676056799116024886.Spec : Prop :=
  ∀ n, P12676056799116024886.a n = A005536 n

end A005536

/-! ## A005536.P16030863175419638934

`∑[A131851(A020991(n+1))]`
-/

namespace A005536.P16030863175419638934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A020991 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005536.P16030863175419638934

namespace A005536

/-- `∑[A131851(A020991(n+1))]` -/
def P16030863175419638934.Spec : Prop :=
  ∀ n, P16030863175419638934.a n = A005536 n

end A005536

/-! ## A005536.P2721196164512684484

`∑[A195017(A019565(n))]`
-/

namespace A005536.P2721196164512684484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A019565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005536.P2721196164512684484

namespace A005536

/-- `∑[A195017(A019565(n))]` -/
def P2721196164512684484.Spec : Prop :=
  ∀ n, P2721196164512684484.a n = A005536 n

end A005536

/-!
# A005537: Numbers m such that 4*3^m + 1 is prime.

The programs for A005537, there is no canonical definition to state claims against.
-/

/-! ## A005537.P16228305347629578349

`A216889(round(sqrt(n²+1)))+A178334(n)`
-/

namespace A005537.P16228305347629578349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216889 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A178334 n

end

end A005537.P16228305347629578349

/-! ## A005537.P15460304542427938468

`A216889(A028310(n))+A057427(n)`
-/

namespace A005537.P15460304542427938468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216889 (A028310 n).toNat + A057427 n

end

end A005537.P15460304542427938468

/-! ## A005537.P2277626909679921579

`A216889(A028310(n))+A178489(n)`
-/

namespace A005537.P2277626909679921579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216889 (A028310 n).toNat + A178489 n

end

end A005537.P2277626909679921579

/-! ## A005537.P18073152396659482752

`A216889(A028310(n))-A057428(n)`
-/

namespace A005537.P18073152396659482752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216889 (A028310 n).toNat - A057428 n

end

end A005537.P18073152396659482752

/-! ## A005537.P11270340461647687556

`A216889(A028310(n))+and(1, A000040(n+1))`
-/

namespace A005537.P11270340461647687556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216889 (A028310 n).toNat + Int.land 1 (A000040 (n + 1))

end

end A005537.P11270340461647687556

/-!
# A005540: Numbers k such that 4*3^k - 1 is prime.

The programs for A005540, there is no canonical definition to state claims against.
-/

/-! ## A005540.P1091480087981122905

`eq[A033807(A181530(n+1)), A033807(n)]`
-/

namespace A005540.P1091480087981122905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033807 (A181530 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033807 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005540.P1091480087981122905

/-!
# A005541: Numbers k such that 8*3^k - 1 is prime.

The programs for A005541, there is no canonical definition to state claims against.
-/

/-! ## A005541.P1233166789882833501

`A276156(n)+A061358(A074430(n+1))`
-/

namespace A005541.P1233166789882833501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 n + A061358 (A074430 (n + 1)).toNat

end

end A005541.P1233166789882833501

/-! ## A005541.P4068259628661617554

`eq[A000203(A220413(n+1)), A084600(n)]`
-/

namespace A005541.P4068259628661617554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A220413 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A005541.P4068259628661617554

/-! ## A005541.P8900472617464588886

`A002487(A177540(n)+A065091(n+1))-A287731(n+1)`
-/

namespace A005541.P8900472617464588886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A177540 n + A065091 (n + 1)).toNat - A287731 (n + 1)

end

end A005541.P8900472617464588886

/-!
# A005543: Number of n-step self-avoiding walks on f.c.c. lattice from (0,0,0) to (0,2,2).

The programs for A005543, there is no canonical definition to state claims against.
-/

/-! ## A005543.P3874294698061055299

`A121373(3*(n+1))+∑[A026355(A000225(3*n))]`
-/

namespace A005543.P3874294698061055299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 (A000225 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (3 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005543.P3874294698061055299

/-!
# A005544: Number of n-step self-avoiding walks on f.c.c. lattice from (0,0,0) to (1,1,2).

The programs for A005544, there is no canonical definition to state claims against.
-/

/-! ## A005544.P4544843056946088117

`A036554(A143608(n)+A082145(n))`
-/

namespace A005544.P4544843056946088117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (A143608 n + A082145 n).toNat

end

end A005544.P4544843056946088117

/-!
# A005549: Number of n-step self-avoiding walks on hexagonal lattice from (0,0) to (0,3).

The programs for A005549, there is no canonical definition to state claims against.
-/

/-! ## A005549.P6524305551911369316

`A119034(2*(n+1))-A239932(A127083(n))`
-/

namespace A005549.P6524305551911369316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119034 (2 * (n + 1)) - A239932 (A127083 n).toNat

end

end A005549.P6524305551911369316

/-!
# A005550: Number of n-step self-avoiding walks on hexagonal lattice from (0,0) to (1,2).

The programs for A005550, there is no canonical definition to state claims against.
-/

/-! ## A005550.P17102531926458613362

`A290312(n)+A233583(A280853(n+1))`
-/

namespace A005550.P17102531926458613362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n + A233583 (A280853 (n + 1)).toNat

end

end A005550.P17102531926458613362

/-!
# A005554: Sums of successive Motzkin numbers.

The programs for A005554, the canonical program `A005554.P9832709042548983027` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005554 has offset 1).

The definition of A005554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005554.P5245231640425498294

`abs(Δ[Δ[A099323(n)]])`
-/

namespace A005554.P5245231640425498294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A005554.P5245231640425498294

namespace A005554

/-- `abs(Δ[Δ[A099323(n)]])` -/
def P5245231640425498294.Spec : Prop :=
  ∀ n, P5245231640425498294.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P8920041409433422320

`abs(Δ[Δ[A174297(n+1)]])`
-/

namespace A005554.P8920041409433422320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174297 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A005554.P8920041409433422320

namespace A005554

/-- `abs(Δ[Δ[A174297(n+1)]])` -/
def P8920041409433422320.Spec : Prop :=
  ∀ n, P8920041409433422320.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P9832709042548983027

`A102071(n-1)+a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005554

/-- `A102071(n-1)+a(n-1)` -/
def P9832709042548983027.Spec : Prop :=
  ∀ n, P9832709042548983027.a n = A005554 (n + 1)

theorem P9832709042548983027.correct : P9832709042548983027.Spec := by
  intro n
  simp only [A005554, Nat.add_sub_cancel]

end A005554

/-! ## A005554.P14194717664120031955

`A228338(n-2)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A005554.P14194717664120031955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A228338 (n - 2) - a (n - 1)

end

end A005554.P14194717664120031955

namespace A005554

/-- `A228338(n-2)-a(n-1)` -/
def P14194717664120031955.Spec : Prop :=
  ∀ n, P14194717664120031955.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P1944331572146870015

`record[A126068(n)+A105695(n)]`
-/

namespace A005554.P1944331572146870015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126068 n + A105695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005554.P1944331572146870015

namespace A005554

/-- `record[A126068(n)+A105695(n)]` -/
def P1944331572146870015.Spec : Prop :=
  ∀ n, P1944331572146870015.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P11904935848619798690

`A168049(n+1)+A001006(n)`
-/

namespace A005554.P11904935848619798690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 1) + A001006 n

end

end A005554.P11904935848619798690

namespace A005554

/-- `A168049(n+1)+A001006(n)` -/
def P11904935848619798690.Spec : Prop :=
  ∀ n, P11904935848619798690.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P14435588540742392025

`A001006(n)-A168051(n+1)`
-/

namespace A005554.P14435588540742392025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A168051 (n + 1)

end

end A005554.P14435588540742392025

namespace A005554

/-- `A001006(n)-A168051(n+1)` -/
def P14435588540742392025.Spec : Prop :=
  ∀ n, P14435588540742392025.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P8284205121186948723

`abs(A000007(n)+Δ[A166587(n)])`
-/

namespace A005554.P8284205121186948723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000007 n + (f1 (n + 1) - f1 n)|

end

end A005554.P8284205121186948723

namespace A005554

/-- `abs(A000007(n)+Δ[A166587(n)])` -/
def P8284205121186948723.Spec : Prop :=
  ∀ n, P8284205121186948723.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P4884835220199016755

`A168049(n+1)+A086246(n+2)`
-/

namespace A005554.P4884835220199016755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 1) + A086246 (n + 2)

end

end A005554.P4884835220199016755

namespace A005554

/-- `A168049(n+1)+A086246(n+2)` -/
def P4884835220199016755.Spec : Prop :=
  ∀ n, P4884835220199016755.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P7631432364407909793

`A168049(n+1)+A168049(n+2)`
-/

namespace A005554.P7631432364407909793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 1) + A168049 (n + 2)

end

end A005554.P7631432364407909793

namespace A005554

/-- `A168049(n+1)+A168049(n+2)` -/
def P7631432364407909793.Spec : Prop :=
  ∀ n, P7631432364407909793.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P9373340745079996794

`A086246(n+2)-A168051(n+1)`
-/

namespace A005554.P9373340745079996794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2) - A168051 (n + 1)

end

end A005554.P9373340745079996794

namespace A005554

/-- `A086246(n+2)-A168051(n+1)` -/
def P9373340745079996794.Spec : Prop :=
  ∀ n, P9373340745079996794.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P15583672708370536851

`A086246(n+1)+A001006(n)-A000007(n)`
-/

namespace A005554.P15583672708370536851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 1) + (A001006 n - A000007 n)

end

end A005554.P15583672708370536851

namespace A005554

/-- `A086246(n+1)+A001006(n)-A000007(n)` -/
def P15583672708370536851.Spec : Prop :=
  ∀ n, P15583672708370536851.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P104904881894800754

`A126068(n+1)+A168051(n+1)+A001006(n)`
-/

namespace A005554.P104904881894800754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126068 (n + 1) + (A168051 (n + 1) + A001006 n)

end

end A005554.P104904881894800754

namespace A005554

/-- `A126068(n+1)+A168051(n+1)+A001006(n)` -/
def P104904881894800754.Spec : Prop :=
  ∀ n, P104904881894800754.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P13449894359085953231

`A007971(n+1)+A292440(n+1)+A001006(n)`
-/

namespace A005554.P13449894359085953231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007971 (n + 1) + (A292440 (n + 1) + A001006 n)

end

end A005554.P13449894359085953231

namespace A005554

/-- `A007971(n+1)+A292440(n+1)+A001006(n)` -/
def P13449894359085953231.Spec : Prop :=
  ∀ n, P13449894359085953231.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P9409832651774674996

`A168051(n+1)+A168055(n+1)+A001006(n)`
-/

namespace A005554.P9409832651774674996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 (n + 1) + (A168055 (n + 1) + A001006 n)

end

end A005554.P9409832651774674996

namespace A005554

/-- `A168051(n+1)+A168055(n+1)+A001006(n)` -/
def P9409832651774674996.Spec : Prop :=
  ∀ n, P9409832651774674996.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P1121671524881958798

`A007971(n+1)+A001006(n)-A086246(n+1)`
-/

namespace A005554.P1121671524881958798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007971 (n + 1) + (A001006 n - A086246 (n + 1))

end

end A005554.P1121671524881958798

namespace A005554

/-- `A007971(n+1)+A001006(n)-A086246(n+1)` -/
def P1121671524881958798.Spec : Prop :=
  ∀ n, P1121671524881958798.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P12646309438454388919

`A005043(n+1)+A005043(n)-A168051(n+1)`
-/

namespace A005554.P12646309438454388919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1) + (A005043 n - A168051 (n + 1))

end

end A005554.P12646309438454388919

namespace A005554

/-- `A005043(n+1)+A005043(n)-A168051(n+1)` -/
def P12646309438454388919.Spec : Prop :=
  ∀ n, P12646309438454388919.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P9410598976686331014

`A001006(n)-(A167022(n+1)+A086246(n+1))`
-/

namespace A005554.P9410598976686331014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - (A167022 (n + 1) + A086246 (n + 1))

end

end A005554.P9410598976686331014

namespace A005554

/-- `A001006(n)-(A167022(n+1)+A086246(n+1))` -/
def P9410598976686331014.Spec : Prop :=
  ∀ n, P9410598976686331014.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P12871213254634688212

`A168073(n+1)+A001006(n)-A168055(n+1)`
-/

namespace A005554.P12871213254634688212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168073 (n + 1) + (A001006 n - A168055 (n + 1))

end

end A005554.P12871213254634688212

namespace A005554

/-- `A168073(n+1)+A001006(n)-A168055(n+1)` -/
def P12871213254634688212.Spec : Prop :=
  ∀ n, P12871213254634688212.a n = A005554 (n + 1)

end A005554

/-! ## A005554.P306864500531336030

`A292440(n+1)+A001006(n)-A167022(n+1)`
-/

namespace A005554.P306864500531336030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 (n + 1) + (A001006 n - A167022 (n + 1))

end

end A005554.P306864500531336030

namespace A005554

/-- `A292440(n+1)+A001006(n)-A167022(n+1)` -/
def P306864500531336030.Spec : Prop :=
  ∀ n, P306864500531336030.a n = A005554 (n + 1)

end A005554

/-!
# A005555: A finite sequence associated with the Lie algebra E_8.

The programs for A005555, there is no canonical definition to state claims against.
-/

/-! ## A005555.P12180658240810247047

`∑[A011973(A092234(4*n))]`
-/

namespace A005555.P12180658240810247047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A092234 (4 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005555.P12180658240810247047

/-! ## A005555.P14858354423867372110

`lt[A325769(A164929(2*n+3)), A281372(3*n)]`
-/

namespace A005555.P14858354423867372110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325769 (A164929 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281372 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A005555.P14858354423867372110

/-!
# A005557: a(n) is the number of Dyck paths of semilength n+6 having its first peak at height n+1.

The programs for A005557, the canonical program `A005557.P14664060055189981175` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005557 has offset 0).

The definition of A005557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005557.P11888914299244915335

`(n+1)*C(n+10, 4)/5`
-/

namespace A005557.P11888914299244915335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.choose (n + 10) 4 : ℚ) / 5

end

end A005557.P11888914299244915335

namespace A005557

/-- `(n+1)*C(n+10, 4)/5` -/
def P11888914299244915335.Spec : Prop :=
  ∀ n, P11888914299244915335.a n = (A005557 n : ℚ)

theorem P11888914299244915335.correct : P11888914299244915335.Spec := by
  intro n
  simp only [A005557, Nat.add_sub_cancel, A005557.P11888914299244915335.a, A005557.P14664060055189981175.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005557

/-! ## A005557.P14664060055189981175

`C(n+9, 5)-C(n+9, 3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005557

/-- `C(n+9, 5)-C(n+9, 3)` -/
def P14664060055189981175.Spec : Prop :=
  ∀ n, P14664060055189981175.a n = A005557 n

theorem P14664060055189981175.correct : P14664060055189981175.Spec := by
  intro n
  simp only [A005557]

end A005557

/-! ## A005557.P10176431737967229760

`(n+1)*(n+7)*(n+8)*(n+9)*(n+10)/120`
-/

namespace A005557.P10176431737967229760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 7) * (n + 8) * (n + 9) * (n + 10) : ℚ) / 120

end

end A005557.P10176431737967229760

namespace A005557

/-- `(n+1)*(n+7)*(n+8)*(n+9)*(n+10)/120` -/
def P10176431737967229760.Spec : Prop :=
  ∀ n, P10176431737967229760.a n = (A005557 n : ℚ)

theorem P10176431737967229760.correct : P10176431737967229760.Spec := by
  intro n
  simp only [A005557, Nat.add_sub_cancel, A005557.P10176431737967229760.a, A005557.P14664060055189981175.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005557

/-! ## A005557.P16833797016922938259

`∑[abs(Δ[A115129(n)])]`
-/

namespace A005557.P16833797016922938259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005557.P16833797016922938259

namespace A005557

/-- `∑[abs(Δ[A115129(n)])]` -/
def P16833797016922938259.Spec : Prop :=
  ∀ n, P16833797016922938259.a n = A005557 n

end A005557

/-! ## A005557.P16694158260484935247

`A115129(n+1)-14`
-/

namespace A005557.P16694158260484935247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115129 (n + 1) - 14

end

end A005557.P16694158260484935247

namespace A005557

/-- `A115129(n+1)-14` -/
def P16694158260484935247.Spec : Prop :=
  ∀ n, P16694158260484935247.a n = A005557 n

end A005557

/-! ## A005557.P9437235943009797882

`∑[Δ[A115129(n)]%A017201(n)]`
-/

namespace A005557.P9437235943009797882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A017201 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005557.P9437235943009797882

namespace A005557

/-- `∑[Δ[A115129(n)]%A017201(n)]` -/
def P9437235943009797882.Spec : Prop :=
  ∀ n, P9437235943009797882.a n = A005557 n

end A005557

/-! ## A005557.P12874453293826088909

`∑[Δ[A115129(n)]+A008586(n)%2]`
-/

namespace A005557.P12874453293826088909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + Int.tmod (A008586 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005557.P12874453293826088909

namespace A005557

/-- `∑[Δ[A115129(n)]+A008586(n)%2]` -/
def P12874453293826088909.Spec : Prop :=
  ∀ n, P12874453293826088909.a n = A005557 n

end A005557

/-! ## A005557.P17109117665872762578

`∑[A005587(n+2)]`
-/

namespace A005557.P17109117665872762578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005587 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005557.P17109117665872762578

namespace A005557

/-- `∑[A005587(n+2)]` -/
def P17109117665872762578.Spec : Prop :=
  ∀ n, P17109117665872762578.a n = A005557 n

end A005557

/-! ## A005557.P2816076792005070652

`∑[A024191(n+3)-5]`
-/

namespace A005557.P2816076792005070652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 3) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005557.P2816076792005070652

namespace A005557

/-- `∑[A024191(n+3)-5]` -/
def P2816076792005070652.Spec : Prop :=
  ∀ n, P2816076792005070652.a n = A005557 n

end A005557

/-! ## A005557.P6974975692987282628

`∑[A323221(n+3)+A323220(n)]`
-/

namespace A005557.P6974975692987282628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 (n + 3) + A323220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005557.P6974975692987282628

namespace A005557

/-- `∑[A323221(n+3)+A323220(n)]` -/
def P6974975692987282628.Spec : Prop :=
  ∀ n, P6974975692987282628.a n = A005557 n

end A005557

/-! ## A005557.P178450149783116708

`A000389(n+10)-Δ[A000389(n+10)]`
-/

namespace A005557.P178450149783116708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 10) - (f1 (n + 1) - f1 n)

end

end A005557.P178450149783116708

namespace A005557

/-- `A000389(n+10)-Δ[A000389(n+10)]` -/
def P178450149783116708.Spec : Prop :=
  ∀ n, P178450149783116708.a n = A005557 n

theorem P178450149783116708.correct : P178450149783116708.Spec := by
  intro n
  simp only [A005557, Nat.add_sub_cancel, A005557.P178450149783116708.f1, A005557.P178450149783116708.a, A005557.P14664060055189981175.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005557

/-! ## A005557.P17962779007995710456

`∑[A030237(A000217(n+4)+5)]`
-/

namespace A005557.P17962779007995710456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030237 (A000217 (n + 4) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005557.P17962779007995710456

namespace A005557

/-- `∑[A030237(A000217(n+4)+5)]` -/
def P17962779007995710456.Spec : Prop :=
  ∀ n, P17962779007995710456.a n = A005557 n

end A005557

/-! ## A005557.P5424202114101430086

`A214292(A000124(n+9)+3)`
-/

namespace A005557.P5424202114101430086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214292 (A000124 (n + 9) + 3).toNat

end

end A005557.P5424202114101430086

namespace A005557

/-- `A214292(A000124(n+9)+3)` -/
def P5424202114101430086.Spec : Prop :=
  ∀ n, P5424202114101430086.a n = A005557 n

end A005557

/-! ## A005557.P13934269805249417756

`A009766(A167499(n+4))`
-/

namespace A005557.P13934269805249417756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A167499 (n + 4)).toNat

end

end A005557.P13934269805249417756

namespace A005557

/-- `A009766(A167499(n+4))` -/
def P13934269805249417756.Spec : Prop :=
  ∀ n, P13934269805249417756.a n = A005557 n

end A005557

/-! ## A005557.P7608075010195867118

`A009766(eq[5, A002262(n)])`
-/

namespace A005557.P7608075010195867118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005557.P7608075010195867118

namespace A005557

/-- `A009766(eq[5, A002262(n)])` -/
def P7608075010195867118.Spec : Prop :=
  ∀ n, P7608075010195867118.a n = A005557 n

end A005557

/-! ## A005557.P984156168690584485

`A009766(A000124(n+6)-(n+2))`
-/

namespace A005557.P984156168690584485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A000124 (n + 6) - (n + 2 : ℤ)).toNat

end

end A005557.P984156168690584485

namespace A005557

/-- `A009766(A000124(n+6)-(n+2))` -/
def P984156168690584485.Spec : Prop :=
  ∀ n, P984156168690584485.a n = A005557 n

end A005557

/-! ## A005557.P6828870679507938705

`A033184(A000096(n+5)-4)`
-/

namespace A005557.P6828870679507938705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (A000096 (n + 5) - 4).toNat

end

end A005557.P6828870679507938705

namespace A005557

/-- `A033184(A000096(n+5)-4)` -/
def P6828870679507938705.Spec : Prop :=
  ∀ n, P6828870679507938705.a n = A005557 n

end A005557

/-! ## A005557.P1126585227569582974

`A037012(A167499(n+10))`
-/

namespace A005557.P1126585227569582974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (A167499 (n + 10)).toNat

end

end A005557.P1126585227569582974

namespace A005557

/-- `A037012(A167499(n+10))` -/
def P1126585227569582974.Spec : Prop :=
  ∀ n, P1126585227569582974.a n = A005557 n

end A005557

/-!
# A005558: a(n) is the number of n-step walks on square lattice such that 0 <= y <= x at each step.

The programs for A005558, the canonical program `A005558.P18386753089207024967` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005558 has offset 0).

The definition of A005558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005558.P16742624221083943251

`C(2*floor(n/2)+1, floor(n/2)+1)*A000108(1/2*(n+n%2))`
-/

namespace A005558.P16742624221083943251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * ⌊(n : ℚ) / 2⌋ + 1).toNat (⌊(n : ℚ) / 2⌋ + 1).toNat : ℤ) * A000108 (SequenceMachineLib.roundAway ((1 : ℚ) / 2 * ((n + n % 2 : ℕ) : ℚ))).toNat

end

end A005558.P16742624221083943251

namespace A005558

/-- `C(2*floor(n/2)+1, floor(n/2)+1)*A000108(1/2*(n+n%2))` -/
def P16742624221083943251.Spec : Prop :=
  ∀ n, P16742624221083943251.a n = A005558 n

end A005558

/-! ## A005558.P18386753089207024967

`A000108(floor((n+1)/2))*A000108(floor(n/2))*(2*floor(n/2)+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005558

/-- `A000108(floor((n+1)/2))*A000108(floor(n/2))*(2*floor(n/2)+1)` -/
def P18386753089207024967.Spec : Prop :=
  ∀ n, P18386753089207024967.a n = A005558 n

theorem P18386753089207024967.correct : P18386753089207024967.Spec := by
  intro n
  simp only [A005558]

end A005558

/-! ## A005558.P2112114325841947269

`A128015(n)*A208355(n)`
-/

namespace A005558.P2112114325841947269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128015 n * A208355 n

end

end A005558.P2112114325841947269

namespace A005558

/-- `A128015(n)*A208355(n)` -/
def P2112114325841947269.Spec : Prop :=
  ∀ n, P2112114325841947269.a n = A005558 n

end A005558

/-! ## A005558.P2024297220814155510

`A057977(n+1)*A057977(n)`
-/

namespace A005558.P2024297220814155510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (n + 1) * A057977 n

end

end A005558.P2024297220814155510

namespace A005558

/-- `A057977(n+1)*A057977(n)` -/
def P2024297220814155510.Spec : Prop :=
  ∀ n, P2024297220814155510.a n = A005558 n

end A005558

/-! ## A005558.P3775926643012698514

`abs(Δ[A138364(n)]*A208355(n))`
-/

namespace A005558.P3775926643012698514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A208355 n|

end

end A005558.P3775926643012698514

namespace A005558

/-- `abs(Δ[A138364(n)]*A208355(n))` -/
def P3775926643012698514.Spec : Prop :=
  ∀ n, P3775926643012698514.a n = A005558 n

end A005558

/-! ## A005558.P9004785303767983321

`A001700(A004526(n))*A208355(n)`
-/

namespace A005558.P9004785303767983321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (A004526 n).toNat * A208355 n

end

end A005558.P9004785303767983321

namespace A005558

/-- `A001700(A004526(n))*A208355(n)` -/
def P9004785303767983321.Spec : Prop :=
  ∀ n, P9004785303767983321.a n = A005558 n

end A005558

/-! ## A005558.P16899837185648383798

`A088218(A008619(n))*A208355(n)`
-/

namespace A005558.P16899837185648383798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (A008619 n).toNat * A208355 n

end

end A005558.P16899837185648383798

namespace A005558

/-- `A088218(A008619(n))*A208355(n)` -/
def P16899837185648383798.Spec : Prop :=
  ∀ n, P16899837185648383798.a n = A005558 n

end A005558

/-! ## A005558.P2331877499196920960

`A001405(A109613(n))*A208355(n)`
-/

namespace A005558.P2331877499196920960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A109613 n).toNat * A208355 n

end

end A005558.P2331877499196920960

namespace A005558

/-- `A001405(A109613(n))*A208355(n)` -/
def P2331877499196920960.Spec : Prop :=
  ∀ n, P2331877499196920960.a n = A005558 n

end A005558

/-! ## A005558.P2263666050443438599

`A063549(n+1)*A063549(A028310(n))`
-/

namespace A005558.P2263666050443438599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063549 (n + 1) * A063549 (A028310 n).toNat

end

end A005558.P2263666050443438599

namespace A005558

/-- `A063549(n+1)*A063549(A028310(n))` -/
def P2263666050443438599.Spec : Prop :=
  ∀ n, P2263666050443438599.a n = A005558 n

end A005558

/-! ## A005558.P18344060127849756217

`A001405(A215495(2*n))*A208355(n)`
-/

namespace A005558.P18344060127849756217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A215495 (2 * n)).toNat * A208355 n

end

end A005558.P18344060127849756217

namespace A005558

/-- `A001405(A215495(2*n))*A208355(n)` -/
def P18344060127849756217.Spec : Prop :=
  ∀ n, P18344060127849756217.a n = A005558 n

end A005558

/-! ## A005558.P15946777434893577566

`A063549(n+1)*A063549(A233583(n+1))`
-/

namespace A005558.P15946777434893577566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063549 (n + 1) * A063549 (A233583 (n + 1)).toNat

end

end A005558.P15946777434893577566

namespace A005558

/-- `A063549(n+1)*A063549(A233583(n+1))` -/
def P15946777434893577566.Spec : Prop :=
  ∀ n, P15946777434893577566.a n = A005558 n

end A005558

/-! ## A005558.P15646796072733623812

`A001405(n+1)/A008619(n+1)*A001405(n)`
-/

namespace A005558.P15646796072733623812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A008619 (n + 1) : ℚ) * (A001405 n : ℚ)

end

end A005558.P15646796072733623812

namespace A005558

/-- `A001405(n+1)/A008619(n+1)*A001405(n)` -/
def P15646796072733623812.Spec : Prop :=
  ∀ n, P15646796072733623812.a n = (A005558 n : ℚ)

end A005558

/-! ## A005558.P8277325029403711657

`A001405(n)²-A037952(n)*A037955(n)`
-/

namespace A005558.P8277325029403711657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n ^ 2 - A037952 n * A037955 n

end

end A005558.P8277325029403711657

namespace A005558

/-- `A001405(n)²-A037952(n)*A037955(n)` -/
def P8277325029403711657.Spec : Prop :=
  ∀ n, P8277325029403711657.a n = A005558 n

end A005558

/-! ## A005558.P15963586681669427297

`A378070(n+2)/(n+1)`
-/

namespace A005558.P15963586681669427297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378070 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A005558.P15963586681669427297

namespace A005558

/-- `A378070(n+2)/(n+1)` -/
def P15963586681669427297.Spec : Prop :=
  ∀ n, P15963586681669427297.a n = (A005558 n : ℚ)

end A005558

/-! ## A005558.P5277902716184944167

`A005566(n)/A080513(n)`
-/

namespace A005558.P5277902716184944167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005566 n : ℚ) / (A080513 n : ℚ)

end

end A005558.P5277902716184944167

namespace A005558

/-- `A005566(n)/A080513(n)` -/
def P5277902716184944167.Spec : Prop :=
  ∀ n, P5277902716184944167.a n = (A005558 n : ℚ)

end A005558

/-! ## A005558.P8505065626236723352

`A005566(n)/A008619(n+1)`
-/

namespace A005558.P8505065626236723352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005566 n : ℚ) / (A008619 (n + 1) : ℚ)

end

end A005558.P8505065626236723352

namespace A005558

/-- `A005566(n)/A008619(n+1)` -/
def P8505065626236723352.Spec : Prop :=
  ∀ n, P8505065626236723352.a n = (A005558 n : ℚ)

end A005558

/-! ## A005558.P12647829778579778376

`A141811(A080827(n+1))`
-/

namespace A005558.P12647829778579778376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141811 (A080827 (n + 1)).toNat

end

end A005558.P12647829778579778376

namespace A005558

/-- `A141811(A080827(n+1))` -/
def P12647829778579778376.Spec : Prop :=
  ∀ n, P12647829778579778376.a n = A005558 n

end A005558

/-! ## A005558.P1638596561746272282

`A141811(A099392(n+2))`
-/

namespace A005558.P1638596561746272282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141811 (A099392 (n + 2)).toNat

end

end A005558.P1638596561746272282

namespace A005558

/-- `A141811(A099392(n+2))` -/
def P1638596561746272282.Spec : Prop :=
  ∀ n, P1638596561746272282.a n = A005558 n

end A005558

/-! ## A005558.P1781773773085251880

`A141811(A008619(n+1)+∑[n])`
-/

namespace A005558.P1781773773085251880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141811 (A008619 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A005558.P1781773773085251880

namespace A005558

/-- `A141811(A008619(n+1)+∑[n])` -/
def P1781773773085251880.Spec : Prop :=
  ∀ n, P1781773773085251880.a n = A005558 n

end A005558

/-! ## A005558.P9066329934915994435

`A052174(∑[n])`
-/

namespace A005558.P9066329934915994435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052174 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005558.P9066329934915994435

namespace A005558

/-- `A052174(∑[n])` -/
def P9066329934915994435.Spec : Prop :=
  ∀ n, P9066329934915994435.a n = A005558 n

end A005558

/-!
# A005559: Number of walks on square lattice. Column y=1 of A052174.

The programs for A005559, the canonical program `A005559.P6024995097356233494` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005559 has offset 1).

The definition of A005559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005559.P6024995097356233494

`A005817(n+1)*A008619(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A005559

/-- `A005817(n+1)*A008619(n)` -/
def P6024995097356233494.Spec : Prop :=
  ∀ n, P6024995097356233494.a n = A005559 (n + 1)

theorem P6024995097356233494.correct : P6024995097356233494.Spec := by
  intro n
  simp only [A005559, Nat.add_sub_cancel]

end A005559

/-! ## A005559.P2833557805162642208

`∑[A059841(n)]*A005817(n+1)`
-/

namespace A005559.P2833557805162642208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A005817 (n + 1)

end

end A005559.P2833557805162642208

namespace A005559

/-- `∑[A059841(n)]*A005817(n+1)` -/
def P2833557805162642208.Spec : Prop :=
  ∀ n, P2833557805162642208.a n = A005559 (n + 1)

end A005559

/-! ## A005559.P1134748698350317411

`(A004526(n)+1)*A005817(n+1)`
-/

namespace A005559.P1134748698350317411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 1) * A005817 (n + 1)

end

end A005559.P1134748698350317411

namespace A005559

/-- `(A004526(n)+1)*A005817(n+1)` -/
def P1134748698350317411.Spec : Prop :=
  ∀ n, P1134748698350317411.a n = A005559 (n + 1)

theorem P1134748698350317411.correct : P1134748698350317411.Spec := by
  intro n
  simp only [A005559, Nat.add_sub_cancel, A005559.P1134748698350317411.a, A005559.P6024995097356233494.a, A004526, A004526.P10084182425416171735.a, A005817, A005817.P16626410066484048791.a, A008619, A008619.P16053834178911111118.a, A208355, A208355.P6360215552861429744.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005559

/-! ## A005559.P14559916793505875270

`A005817(n+1)*A065033(n+1)`
-/

namespace A005559.P14559916793505875270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005817 (n + 1) * A065033 (n + 1)

end

end A005559.P14559916793505875270

namespace A005559

/-- `A005817(n+1)*A065033(n+1)` -/
def P14559916793505875270.Spec : Prop :=
  ∀ n, P14559916793505875270.a n = A005559 (n + 1)

end A005559

/-! ## A005559.P4463900087785107050

`A052174(∑[n+1]+1)`
-/

namespace A005559.P4463900087785107050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052174 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005559.P4463900087785107050

namespace A005559

/-- `A052174(∑[n+1]+1)` -/
def P4463900087785107050.Spec : Prop :=
  ∀ n, P4463900087785107050.a n = A005559 (n + 1)

end A005559

/-! ## A005559.P13982576968446391225

`A093768(∑[n+2]-1)`
-/

namespace A005559.P13982576968446391225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093768 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A005559.P13982576968446391225

namespace A005559

/-- `A093768(∑[n+2]-1)` -/
def P13982576968446391225.Spec : Prop :=
  ∀ n, P13982576968446391225.a n = A005559 (n + 1)

end A005559

/-!
# A005560: Number of walks on square lattice. Column y=2 of A052174.

The programs for A005560, there is no canonical definition to state claims against.
-/

/-! ## A005560.P2881996892825343321

`record[A052174(∑[n]+2)]`
-/

namespace A005560.P2881996892825343321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052174 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005560.P2881996892825343321

/-! ## A005560.P2720870086582887704

`A052174(∑[n+2]+3)`
-/

namespace A005560.P2720870086582887704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052174 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A005560.P2720870086582887704

/-! ## A005560.P13406777935581537429

`A093768(∑[n+3])`
-/

namespace A005560.P13406777935581537429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093768 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005560.P13406777935581537429

/-! ## A005560.P15945188196064019841

`record[A093768(A027379(A008611(n)))]`
-/

namespace A005560.P15945188196064019841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093768 (A027379 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005560.P15945188196064019841

/-! ## A005560.P12016217954167890760

`record[A093768(n)/A286232(n+3)]`
-/

namespace A005560.P12016217954167890760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093768 n : ℚ) / (A286232 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005560.P12016217954167890760

/-!
# A005561: Number of walks on square lattice. Column y=3 of A052174.

The programs for A005561, there is no canonical definition to state claims against.
-/

/-! ## A005561.P2849126993912864303

`A145598(A105343(n+1))`
-/

namespace A005561.P2849126993912864303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145598 (A105343 (n + 1)).toNat

end

end A005561.P2849126993912864303

/-! ## A005561.P6762417528147615805

`A145598(A330357(n+1))`
-/

namespace A005561.P6762417528147615805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145598 (A330357 (n + 1)).toNat

end

end A005561.P6762417528147615805

/-! ## A005561.P17756396721198142431

`A052174(∑[n+3]+6)`
-/

namespace A005561.P17756396721198142431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052174 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A005561.P17756396721198142431

/-! ## A005561.P9442071512389274034

`abs(A052174(A167614(n+2))-1)+1`
-/

namespace A005561.P9442071512389274034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A052174 (A167614 (n + 2)).toNat - 1| + 1

end

end A005561.P9442071512389274034

/-! ## A005561.P12546699183609296128

`Δ[A052174(A167614(n+1))+a(n-1)]` with `a(0)=0`
-/

namespace A005561.P12546699183609296128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A052174 (A167614 (n + 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005561.P12546699183609296128

/-! ## A005561.P1686781044881401967

`A052174(A167614(n+2))+A008683(4*(n+10))`
-/

namespace A005561.P1686781044881401967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052174 (A167614 (n + 2)).toNat + A008683 (4 * (n + 10))

end

end A005561.P1686781044881401967

/-! ## A005561.P17063767007294775259

`∏{e}[A091633(n+1), A052174(A167614(n+2))/#]`
-/

namespace A005561.P17063767007294775259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A052174 (A167614 (n + 2)).toNat : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A005561.P17063767007294775259

/-! ## A005561.P3941235941458254210

`A052174(A167614(n+2))%Δ[A027122(n+3)]²`
-/

namespace A005561.P3941235941458254210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027122 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052174 (A167614 (n + 2)).toNat) ((f1 (n + 1) - f1 n) ^ 2)

end

end A005561.P3941235941458254210

/-! ## A005561.P4594747188063277082

`A052174(A167614(n+2))%A299872(n+1)`
-/

namespace A005561.P4594747188063277082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052174 (A167614 (n + 2)).toNat) (A299872 (n + 1))

end

end A005561.P4594747188063277082

/-!
# A005562: Number of walks on square lattice. Column y=4 of A052174.

The programs for A005562, there is no canonical definition to state claims against.
-/

/-! ## A005562.P13732197374407141684

`A052174(∑[n+3]+n+11)`
-/

namespace A005562.P13732197374407141684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052174 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 11))

end

end A005562.P13732197374407141684

/-! ## A005562.P3450404357054192735

`A093768(A056115(n)+10)`
-/

namespace A005562.P3450404357054192735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093768 (A056115 n + 10).toNat

end

end A005562.P3450404357054192735

/-! ## A005562.P13204409758060645759

`A093768(A179865(n+6)-5)`
-/

namespace A005562.P13204409758060645759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093768 (A179865 (n + 6) - 5).toNat

end

end A005562.P13204409758060645759

/-! ## A005562.P3809643329315791776

`A093768(A167614(n+4)-8)`
-/

namespace A005562.P3809643329315791776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093768 (A167614 (n + 4) - 8).toNat

end

end A005562.P3809643329315791776

/-! ## A005562.P2574990810172222133

`A093768(3*n+4+A167614(n+1))`
-/

namespace A005562.P2574990810172222133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093768 ((3 * n + 4 : ℤ) + A167614 (n + 1)).toNat

end

end A005562.P2574990810172222133

/-!
# A005563: a(n) = n*(n+2) = (n+1)^2 - 1.

The programs for A005563, the canonical program `A005563.P13300161655551567421` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005563 has offset 0).

The definition of A005563 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+2)` (program `A005563.P13300161655551567421`, by `A005563.P13300161655551567421.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005563.P13300161655551567421

`n*(n+2)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005563

/-- `n*(n+2)` -/
def P13300161655551567421.Spec : Prop :=
  ∀ n, (P13300161655551567421.a n : ℤ) = A005563 n

theorem P13300161655551567421.correct : P13300161655551567421.Spec := by
  intro n
  simp only [A005563]

end A005563

/-! ## A005563.P9934369037733486675

`(n+1)²-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005563.P9934369037733486675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - 1

end

end A005563.P9934369037733486675

namespace A005563

/-- `(n+1)²-1` -/
def P9934369037733486675.Spec : Prop :=
  ∀ n, P9934369037733486675.a n = A005563 n

theorem P9934369037733486675.correct : P9934369037733486675.Spec := by
  intro n
  simp only [A005563, Nat.add_sub_cancel, A005563.P9934369037733486675.a, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005563

/-!
# A005564: Number of n-step walks on square lattice in the first quadrant which finish at distance n-3 from the x-axis.

The programs for A005564, the canonical program `A005564.P11400626001127055626` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005564 has offset 3).

The definition of A005564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005564.P13833873342474515347

`(n+1)*C(n+4, 2)`
-/

namespace A005564.P13833873342474515347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 4) 2

end

end A005564.P13833873342474515347

namespace A005564

/-- `(n+1)*C(n+4, 2)` -/
def P13833873342474515347.Spec : Prop :=
  ∀ n, (P13833873342474515347.a n : ℤ) = A005564 (n + 3)

end A005564

/-! ## A005564.P1237134306092371897

`(n+1)*(n+3)*(n+4)/2`
-/

namespace A005564.P1237134306092371897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 3) * (n + 4) : ℚ) / 2

end

end A005564.P1237134306092371897

namespace A005564

/-- `(n+1)*(n+3)*(n+4)/2` -/
def P1237134306092371897.Spec : Prop :=
  ∀ n, P1237134306092371897.a n = (A005564 (n + 3) : ℚ)

theorem P1237134306092371897.correct : P1237134306092371897.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A005564, Nat.add_sub_cancel, A005564.P1237134306092371897.a, A005564.P11400626001127055626.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A005564, Nat.add_sub_cancel, A005564.P1237134306092371897.a, A005564.P11400626001127055626.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005564

/-! ## A005564.P11400626001127055626

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=6, a(1)=20, a(2)=45, a(3)=84`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005564

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11400626001127055626.Spec : Prop :=
  ∀ n, P11400626001127055626.a n = A005564 (n + 3)

theorem P11400626001127055626.correct : P11400626001127055626.Spec := by
  intro n
  simp only [A005564, Nat.add_sub_cancel]

end A005564

/-! ## A005564.P12252421064616480675

`(n+1)*A000217(n+3)`
-/

namespace A005564.P12252421064616480675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000217 (n + 3)

end

end A005564.P12252421064616480675

namespace A005564

/-- `(n+1)*A000217(n+3)` -/
def P12252421064616480675.Spec : Prop :=
  ∀ n, P12252421064616480675.a n = A005564 (n + 3)

end A005564

/-! ## A005564.P9092201926779477915

`∑[∑[a(n-1)+3]]` with `a(0)=6, a(1)=8`
-/

namespace A005564.P9092201926779477915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6, 8] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005564.P9092201926779477915

namespace A005564

/-- `∑[∑[a(n-1)+3]]` -/
def P9092201926779477915.Spec : Prop :=
  ∀ n, (P9092201926779477915.a n : ℤ) = A005564 (n + 3)

end A005564

/-! ## A005564.P14130107868122531185

`floor((n+3)/acot(∑[n+2]))`
-/

namespace A005564.P14130107868122531185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A005564.P14130107868122531185

namespace A005564

/-- `floor((n+3)/acot(∑[n+2]))` -/
def P14130107868122531185.Spec : Prop :=
  ∀ n, P14130107868122531185.a n = A005564 (n + 3)

end A005564

/-! ## A005564.P17946538122412022898

`round((n+3)/acot(∑[n+2]))`
-/

namespace A005564.P17946538122412022898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 3 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A005564.P17946538122412022898

namespace A005564

/-- `round((n+3)/acot(∑[n+2]))` -/
def P17946538122412022898.Spec : Prop :=
  ∀ n, P17946538122412022898.a n = A005564 (n + 3)

end A005564

/-! ## A005564.P153830366460194728

`∑[∑[ogf((6-4x+x^2)/(1-2x+x^2))]]`
-/

namespace A005564.P153830366460194728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -4, 1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005564.P153830366460194728

namespace A005564

/-- `∑[∑[ogf((6-4x+x^2)/(1-2x+x^2))]]` -/
def P153830366460194728.Spec : Prop :=
  ∀ n, P153830366460194728.a n = A005564 (n + 3)

end A005564

/-! ## A005564.P8633496812067160615

`ogf((6-4x+x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A005564.P8633496812067160615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -4, 1] [1, -4, 6, -4, 1] n

end

end A005564.P8633496812067160615

namespace A005564

/-- `ogf((6-4x+x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P8633496812067160615.Spec : Prop :=
  ∀ n, P8633496812067160615.a n = A005564 (n + 3)

end A005564

/-! ## A005564.P18112465409753770555

`∑[1-∑[a(n-1)-3]]` with `a(0)=-5`
-/

namespace A005564.P18112465409753770555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-5] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005564.P18112465409753770555

namespace A005564

/-- `∑[1-∑[a(n-1)-3]]` -/
def P18112465409753770555.Spec : Prop :=
  ∀ n, P18112465409753770555.a n = A005564 (n + 3)

end A005564

/-! ## A005564.P5004248605123248706

`lcm(n+1, lcm(n+3, ∑[n+2]))`
-/

namespace A005564.P5004248605123248706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.lcm (n + 3) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A005564.P5004248605123248706

namespace A005564

/-- `lcm(n+1, lcm(n+3, ∑[n+2]))` -/
def P5004248605123248706.Spec : Prop :=
  ∀ n, (P5004248605123248706.a n : ℤ) = A005564 (n + 3)

end A005564

/-! ## A005564.P1880494111185141511

`∑[(n+2)²-1+C(n+3, 2)]`
-/

namespace A005564.P1880494111185141511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 1 + (Nat.choose (n + 3) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005564.P1880494111185141511

namespace A005564

/-- `∑[(n+2)²-1+C(n+3, 2)]` -/
def P1880494111185141511.Spec : Prop :=
  ∀ n, P1880494111185141511.a n = A005564 (n + 3)

end A005564

/-! ## A005564.P10662200386017033797

`lcm(n+2, (n+3)²)/2-(n+3)`
-/

namespace A005564.P10662200386017033797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) ((n + 3) ^ 2) : ℚ) / 2 - (n + 3 : ℚ)

end

end A005564.P10662200386017033797

namespace A005564

/-- `lcm(n+2, (n+3)²)/2-(n+3)` -/
def P10662200386017033797.Spec : Prop :=
  ∀ n, P10662200386017033797.a n = (A005564 (n + 3) : ℚ)

end A005564

/-! ## A005564.P7431245600622664229

`∑[∑[C(n+2, n+1)]+(n+2)²]`
-/

namespace A005564.P7431245600622664229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005564.P7431245600622664229

namespace A005564

/-- `∑[∑[C(n+2, n+1)]+(n+2)²]` -/
def P7431245600622664229.Spec : Prop :=
  ∀ n, (P7431245600622664229.a n : ℤ) = A005564 (n + 3)

end A005564

/-! ## A005564.P6179562382558395827

`A096957(n)+∑[n²]`
-/

namespace A005564.P6179562382558395827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096957 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005564.P6179562382558395827

namespace A005564

/-- `A096957(n)+∑[n²]` -/
def P6179562382558395827.Spec : Prop :=
  ∀ n, P6179562382558395827.a n = A005564 (n + 3)

end A005564

/-! ## A005564.P3111261439715452860

`A072277(n+3)-(n+4)`
-/

namespace A005564.P3111261439715452860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072277 (n + 3) - (n + 4 : ℤ)

end

end A005564.P3111261439715452860

namespace A005564

/-- `A072277(n+3)-(n+4)` -/
def P3111261439715452860.Spec : Prop :=
  ∀ n, P3111261439715452860.a n = A005564 (n + 3)

end A005564

/-! ## A005564.P11712237431640494144

`A117560(n+2)+(n+2)*(n+2)`
-/

namespace A005564.P11712237431640494144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117560 (n + 2) + ((n + 2) * (n + 2) : ℤ)

end

end A005564.P11712237431640494144

namespace A005564

/-- `A117560(n+2)+(n+2)*(n+2)` -/
def P11712237431640494144.Spec : Prop :=
  ∀ n, P11712237431640494144.a n = A005564 (n + 3)

end A005564

/-! ## A005564.P15074073012114120037

`A167875(n)+A096941(n)`
-/

namespace A005564.P15074073012114120037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n + A096941 n

end

end A005564.P15074073012114120037

namespace A005564

/-- `A167875(n)+A096941(n)` -/
def P15074073012114120037.Spec : Prop :=
  ∀ n, P15074073012114120037.a n = A005564 (n + 3)

end A005564

/-! ## A005564.P2429480512244459532

`A267370(n)+A104675(n)`
-/

namespace A005564.P2429480512244459532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267370 n + A104675 n

end

end A005564.P2429480512244459532

namespace A005564

/-- `A267370(n)+A104675(n)` -/
def P2429480512244459532.Spec : Prop :=
  ∀ n, P2429480512244459532.a n = A005564 (n + 3)

end A005564

/-! ## A005564.P5019963663524475843

`A162267(n+1)-A027480(n)`
-/

namespace A005564.P5019963663524475843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162267 (n + 1) - A027480 n

end

end A005564.P5019963663524475843

namespace A005564

/-- `A162267(n+1)-A027480(n)` -/
def P5019963663524475843.Spec : Prop :=
  ∀ n, P5019963663524475843.a n = A005564 (n + 3)

end A005564

/-!
# A005565: Number of walks on square lattice.

The programs for A005565, the canonical program `A005565.P3348243603003306686` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005565 has offset 0).

The definition of A005565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005565.P3348243603003306686

`(n^4+14*n^3+69*n²+136*n)/4+20`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005565

/-- `(n^4+14*n^3+69*n²+136*n)/4+20` -/
def P3348243603003306686.Spec : Prop :=
  ∀ n, P3348243603003306686.a n = (A005565 n : ℚ)

end A005565

/-! ## A005565.P4672764711740495231

`C(n+5, 2)*∑[n+2]`
-/

namespace A005565.P4672764711740495231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 5) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005565.P4672764711740495231

namespace A005565

/-- `C(n+5, 2)*∑[n+2]` -/
def P4672764711740495231.Spec : Prop :=
  ∀ n, (P4672764711740495231.a n : ℤ) = A005565 n

end A005565

/-! ## A005565.P6157624434474011038

`∑[n+2]*A000217(n+4)`
-/

namespace A005565.P6157624434474011038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000217 (n + 4)

end

end A005565.P6157624434474011038

namespace A005565

/-- `∑[n+2]*A000217(n+4)` -/
def P6157624434474011038.Spec : Prop :=
  ∀ n, P6157624434474011038.a n = A005565 n

end A005565

/-! ## A005565.P10718956074099748341

`A000096(n+1)/A000217(n+1)*A105938(n)`
-/

namespace A005565.P10718956074099748341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ) * (A105938 n : ℚ)

end

end A005565.P10718956074099748341

namespace A005565

/-- `A000096(n+1)/A000217(n+1)*A105938(n)` -/
def P10718956074099748341.Spec : Prop :=
  ∀ n, P10718956074099748341.a n = (A005565 n : ℚ)

end A005565

/-! ## A005565.P15620718380435124407

`∑[A318765(n+2)]`
-/

namespace A005565.P15620718380435124407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318765 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005565.P15620718380435124407

namespace A005565

/-- `∑[A318765(n+2)]` -/
def P15620718380435124407.Spec : Prop :=
  ∀ n, P15620718380435124407.a n = A005565 n

end A005565

/-! ## A005565.P1601860846776644970

`Δ[A222001(n+2)]*A000096(n+1)`
-/

namespace A005565.P1601860846776644970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222001 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000096 (n + 1)

end

end A005565.P1601860846776644970

namespace A005565

/-- `Δ[A222001(n+2)]*A000096(n+1)` -/
def P1601860846776644970.Spec : Prop :=
  ∀ n, P1601860846776644970.a n = A005565 n

end A005565

/-! ## A005565.P12994255725963675256

`∑[n+2]*A253145(n+3)`
-/

namespace A005565.P12994255725963675256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A253145 (n + 3)

end

end A005565.P12994255725963675256

namespace A005565

/-- `∑[n+2]*A253145(n+3)` -/
def P12994255725963675256.Spec : Prop :=
  ∀ n, P12994255725963675256.a n = A005565 n

end A005565

/-! ## A005565.P10730454188012345346

`A160050(n+2)*A257942(n+3)`
-/

namespace A005565.P10730454188012345346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160050 (n + 2) * A257942 (n + 3)

end

end A005565.P10730454188012345346

namespace A005565

/-- `A160050(n+2)*A257942(n+3)` -/
def P10730454188012345346.Spec : Prop :=
  ∀ n, P10730454188012345346.a n = A005565 n

end A005565

/-! ## A005565.P13521160351640426329

`A061037(n+3)*A227168(n+4)`
-/

namespace A005565.P13521160351640426329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (n + 3) * A227168 (n + 4)

end

end A005565.P13521160351640426329

namespace A005565

/-- `A061037(n+3)*A227168(n+4)` -/
def P13521160351640426329.Spec : Prop :=
  ∀ n, P13521160351640426329.a n = A005565 n

end A005565

/-! ## A005565.P18414752198634551631

`(A101881(2*n)+A020723(2*n))*A101881(2*n+1)`
-/

namespace A005565.P18414752198634551631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101881 (2 * n) + A020723 (2 * n)) * A101881 (2 * n + 1)

end

end A005565.P18414752198634551631

namespace A005565

/-- `(A101881(2*n)+A020723(2*n))*A101881(2*n+1)` -/
def P18414752198634551631.Spec : Prop :=
  ∀ n, P18414752198634551631.a n = A005565 n

end A005565

/-!
# A005566: Number of walks of length n on square lattice, starting at origin, staying in first quadrant.

The programs for A005566, the canonical program `A005566.P8340348658817518865` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005566 has offset 0).

The definition of A005566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005566.P8340348658817518865

`C(n, floor(n/2))*C(n+1, floor((n+1)/2))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005566

/-- `C(n, floor(n/2))*C(n+1, floor((n+1)/2))` -/
def P8340348658817518865.Spec : Prop :=
  ∀ n, (P8340348658817518865.a n : ℤ) = A005566 n

theorem P8340348658817518865.correct : P8340348658817518865.Spec := by
  intro n
  simp only [A005566]

end A005566

/-! ## A005566.P17178964458347012340

`A241530(n+1)/2`
-/

namespace A005566.P17178964458347012340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241530 (n + 1) : ℚ) / 2

end

end A005566.P17178964458347012340

namespace A005566

/-- `A241530(n+1)/2` -/
def P17178964458347012340.Spec : Prop :=
  ∀ n, P17178964458347012340.a n = (A005566 n : ℚ)

end A005566

/-! ## A005566.P10751656552501644587

`(ceil(n/2)+1)*A005558(n)`
-/

namespace A005566.P10751656552501644587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 2⌉ + 1) * A005558 n

end

end A005566.P10751656552501644587

namespace A005566

/-- `(ceil(n/2)+1)*A005558(n)` -/
def P10751656552501644587.Spec : Prop :=
  ∀ n, P10751656552501644587.a n = A005566 n

end A005566

/-! ## A005566.P17289521214358608793

`C(n, ∑[n%2])*A001405(n+1)`
-/

namespace A005566.P17289521214358608793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A001405 (n + 1)

end

end A005566.P17289521214358608793

namespace A005566

/-- `C(n, ∑[n%2])*A001405(n+1)` -/
def P17289521214358608793.Spec : Prop :=
  ∀ n, P17289521214358608793.a n = A005566 n

end A005566

/-! ## A005566.P11939209266224779159

`A005558(n)*A080513(n)`
-/

namespace A005566.P11939209266224779159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005558 n * A080513 n

end

end A005566.P11939209266224779159

namespace A005566

/-- `A005558(n)*A080513(n)` -/
def P11939209266224779159.Spec : Prop :=
  ∀ n, P11939209266224779159.a n = A005566 n

end A005566

/-! ## A005566.P5970278512010087934

`Δ[A036256(n)]*A001405(n)`
-/

namespace A005566.P5970278512010087934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001405 n

end

end A005566.P5970278512010087934

namespace A005566

/-- `Δ[A036256(n)]*A001405(n)` -/
def P5970278512010087934.Spec : Prop :=
  ∀ n, P5970278512010087934.a n = A005566 n

end A005566

/-! ## A005566.P11420536466558911856

`A001405(n+1)*A001405(n)`
-/

namespace A005566.P11420536466558911856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) * A001405 n

end

end A005566.P11420536466558911856

namespace A005566

/-- `A001405(n+1)*A001405(n)` -/
def P11420536466558911856.Spec : Prop :=
  ∀ n, P11420536466558911856.a n = A005566 n

theorem P11420536466558911856.correct : P11420536466558911856.Spec := by
  intro n
  simp only [A005566, Nat.add_sub_cancel, A005566.P11420536466558911856.a, A005566.P8340348658817518865.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005566

/-! ## A005566.P8211382470667012612

`A005558(n)*A008619(n+1)`
-/

namespace A005566.P8211382470667012612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005558 n * A008619 (n + 1)

end

end A005566.P8211382470667012612

namespace A005566

/-- `A005558(n)*A008619(n+1)` -/
def P8211382470667012612.Spec : Prop :=
  ∀ n, P8211382470667012612.a n = A005566 n

end A005566

/-! ## A005566.P8785172018203393542

`A056040(n+1)*A057977(n)`
-/

namespace A005566.P8785172018203393542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (n + 1) * A057977 n

end

end A005566.P8785172018203393542

namespace A005566

/-- `A056040(n+1)*A057977(n)` -/
def P8785172018203393542.Spec : Prop :=
  ∀ n, P8785172018203393542.a n = A005566 n

end A005566

/-! ## A005566.P8478514904329502009

`A128014(n+1)*A128015(n)`
-/

namespace A005566.P8478514904329502009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (n + 1) * A128015 n

end

end A005566.P8478514904329502009

namespace A005566

/-- `A128014(n+1)*A128015(n)` -/
def P8478514904329502009.Spec : Prop :=
  ∀ n, P8478514904329502009.a n = A005566 n

end A005566

/-! ## A005566.P14762409569985113433

`abs(A126930(n+1)*A126930(n))`
-/

namespace A005566.P14762409569985113433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126930 (n + 1) * A126930 n|

end

end A005566.P14762409569985113433

namespace A005566

/-- `abs(A126930(n+1)*A126930(n))` -/
def P14762409569985113433.Spec : Prop :=
  ∀ n, P14762409569985113433.a n = A005566 n

end A005566

/-! ## A005566.P1917557833660482781

`(A014495(n)+1)*record[A046899(n)]`
-/

namespace A005566.P1917557833660482781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014495 n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005566.P1917557833660482781

namespace A005566

/-- `(A014495(n)+1)*record[A046899(n)]` -/
def P1917557833660482781.Spec : Prop :=
  ∀ n, P1917557833660482781.a n = A005566 n

end A005566

/-! ## A005566.P4226763470009108784

`record[A059481(n+1)*A059481(n)]`
-/

namespace A005566.P4226763470009108784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (n + 1) * A059481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005566.P4226763470009108784

namespace A005566

/-- `record[A059481(n+1)*A059481(n)]` -/
def P4226763470009108784.Spec : Prop :=
  ∀ n, P4226763470009108784.a n = A005566 n

end A005566

/-! ## A005566.P17132962663788627006

`record[A046899(n)]*A210736(n+1)`
-/

namespace A005566.P17132962663788627006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A210736 (n + 1)

end

end A005566.P17132962663788627006

namespace A005566

/-- `record[A046899(n)]*A210736(n+1)` -/
def P17132962663788627006.Spec : Prop :=
  ∀ n, P17132962663788627006.a n = A005566 n

end A005566

/-! ## A005566.P11546561581971882538

`A210736(n+1)*A210736(n+2)`
-/

namespace A005566.P11546561581971882538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) * A210736 (n + 2)

end

end A005566.P11546561581971882538

namespace A005566

/-- `A210736(n+1)*A210736(n+2)` -/
def P11546561581971882538.Spec : Prop :=
  ∀ n, P11546561581971882538.a n = A005566 n

end A005566

/-! ## A005566.P10975750235613560060

`record[A001405(A152271(n))]*A001405(n)`
-/

namespace A005566.P10975750235613560060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001405 n

end

end A005566.P10975750235613560060

namespace A005566

/-- `record[A001405(A152271(n))]*A001405(n)` -/
def P10975750235613560060.Spec : Prop :=
  ∀ n, P10975750235613560060.a n = A005566 n

end A005566

/-! ## A005566.P3577439280756341675

`(A056040(n)-A237884(n))*A056040(n+1)`
-/

namespace A005566.P3577439280756341675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056040 n - A237884 n) * A056040 (n + 1)

end

end A005566.P3577439280756341675

namespace A005566

/-- `(A056040(n)-A237884(n))*A056040(n+1)` -/
def P3577439280756341675.Spec : Prop :=
  ∀ n, P3577439280756341675.a n = A005566 n

end A005566

/-! ## A005566.P8632843461053090876

`(A275329(n)-A056040(n))*A056040(n+1)`
-/

namespace A005566.P8632843461053090876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A275329 n - A056040 n) * A056040 (n + 1)

end

end A005566.P8632843461053090876

namespace A005566

/-- `(A275329(n)-A056040(n))*A056040(n+1)` -/
def P8632843461053090876.Spec : Prop :=
  ∀ n, P8632843461053090876.a n = A005566 n

end A005566

/-! ## A005566.P7193651590800741780

`(A275329(n)-A126120(n))*A057977(n+1)`
-/

namespace A005566.P7193651590800741780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A275329 n - A126120 n) * A057977 (n + 1)

end

end A005566.P7193651590800741780

namespace A005566

/-- `(A275329(n)-A126120(n))*A057977(n+1)` -/
def P7193651590800741780.Spec : Prop :=
  ∀ n, P7193651590800741780.a n = A005566 n

end A005566

/-! ## A005566.P1596970828889524197

`(A275329(n)-A126120(n))*A063549(n+1)`
-/

namespace A005566.P1596970828889524197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A275329 n - A126120 n) * A063549 (n + 1)

end

end A005566.P1596970828889524197

namespace A005566

/-- `(A275329(n)-A126120(n))*A063549(n+1)` -/
def P1596970828889524197.Spec : Prop :=
  ∀ n, P1596970828889524197.a n = A005566 n

end A005566

/-!
# A005567: Number of walks on square lattice.

The programs for A005567, the canonical program `A005567.P6007281572393295764` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005567 has offset 0).

The definition of A005567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005567.P6007281572393295764

`∑[(n+5)*A036799(n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005567

/-- `∑[(n+5)*A036799(n+1)]` -/
def P6007281572393295764.Spec : Prop :=
  ∀ n, P6007281572393295764.a n = A005567 n

theorem P6007281572393295764.correct : P6007281572393295764.Spec := by
  intro n
  simp only [A005567]

end A005567

/-! ## A005567.P8177712369517178648

`∑[(n+5)*(A048479(n)+1)]`
-/

namespace A005567.P8177712369517178648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * (A048479 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005567.P8177712369517178648

namespace A005567

/-- `∑[(n+5)*(A048479(n)+1)]` -/
def P8177712369517178648.Spec : Prop :=
  ∀ n, P8177712369517178648.a n = A005567 n

end A005567

/-! ## A005567.P11994221955213308697

`∑[(n+5)*∑[A134401(n+1)]]`
-/

namespace A005567.P11994221955213308697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134401 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005567.P11994221955213308697

namespace A005567

/-- `∑[(n+5)*∑[A134401(n+1)]]` -/
def P11994221955213308697.Spec : Prop :=
  ∀ n, P11994221955213308697.a n = A005567 n

end A005567

/-! ## A005567.P4962875111671486904

`∑[∑[A036289(n+1)]*A020710(n)]`
-/

namespace A005567.P4962875111671486904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005567.P4962875111671486904

namespace A005567

/-- `∑[∑[A036289(n+1)]*A020710(n)]` -/
def P4962875111671486904.Spec : Prop :=
  ∀ n, P4962875111671486904.a n = A005567 n

end A005567

/-! ## A005567.P228443240040930625

`∑[A000337(n+1)*A004275(n+6)]`
-/

namespace A005567.P228443240040930625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 (n + 1) * A004275 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005567.P228443240040930625

namespace A005567

/-- `∑[A000337(n+1)*A004275(n+6)]` -/
def P228443240040930625.Spec : Prop :=
  ∀ n, P228443240040930625.a n = A005567 n

end A005567

/-!
# A005568: Product of two successive Catalan numbers C(n)*C(n+1).

The programs for A005568, the canonical program `A005568.P12626986940016009255` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005568 has offset 0).

The definition of A005568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005568.P12626986940016009255

`A000108(n)*A000108(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005568

/-- `A000108(n)*A000108(n+1)` -/
def P12626986940016009255.Spec : Prop :=
  ∀ n, P12626986940016009255.a n = A005568 n

theorem P12626986940016009255.correct : P12626986940016009255.Spec := by
  intro n
  simp only [A005568]

end A005568

/-! ## A005568.P11622786494421553127

`C(2*n, n)*C(2*(n+1), n+1)/((n+1)*(n+2))`
-/

namespace A005568.P11622786494421553127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n * Nat.choose (2 * (n + 1)) (n + 1) : ℚ) / ((n + 1) * (n + 2) : ℚ)

end

end A005568.P11622786494421553127

namespace A005568

/-- `C(2*n, n)*C(2*(n+1), n+1)/((n+1)*(n+2))` -/
def P11622786494421553127.Spec : Prop :=
  ∀ n, P11622786494421553127.a n = (A005568 n : ℚ)

end A005568

/-! ## A005568.P13832654985272266075

`(2*n)!*(2+2*n)!/(n!*(1+n)!²*(2+n)!)`
-/

namespace A005568.P13832654985272266075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) * Nat.factorial (2 + 2 * n) : ℚ) / (Nat.factorial n * Nat.factorial (1 + n) ^ 2 * Nat.factorial (2 + n) : ℚ)

end

end A005568.P13832654985272266075

namespace A005568

/-- `(2*n)!*(2+2*n)!/(n!*(1+n)!²*(2+n)!)` -/
def P13832654985272266075.Spec : Prop :=
  ∀ n, P13832654985272266075.a n = (A005568 n : ℚ)

end A005568

/-! ## A005568.P17168408879192259664

`A005817(2*n)`
-/

namespace A005568.P17168408879192259664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005817 (2 * n)

end

end A005568.P17168408879192259664

namespace A005568

/-- `A005817(2*n)` -/
def P17168408879192259664.Spec : Prop :=
  ∀ n, P17168408879192259664.a n = A005568 n

end A005568

/-! ## A005568.P10641241700712801326

`A302093(2*n)`
-/

namespace A005568.P10641241700712801326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302093 (2 * n)

end

end A005568.P10641241700712801326

namespace A005568

/-- `A302093(2*n)` -/
def P10641241700712801326.Spec : Prop :=
  ∀ n, P10641241700712801326.a n = A005568 n

end A005568

/-! ## A005568.P8974788797747084518

`∏{d}[-a(n-1), A000108(n+2-#)]` with `a(0)=2`
-/

namespace A005568.P8974788797747084518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000108 (n + 2 - d)

end

end A005568.P8974788797747084518

namespace A005568

/-- `∏{d}[-a(n-1), A000108(n+2-#)]` -/
def P8974788797747084518.Spec : Prop :=
  ∀ n, P8974788797747084518.a n = A005568 n

end A005568

/-! ## A005568.P18079768119038114331

`record[A005817(A014681(n))]`
-/

namespace A005568.P18079768119038114331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005817 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005568.P18079768119038114331

namespace A005568

/-- `record[A005817(A014681(n))]` -/
def P18079768119038114331.Spec : Prop :=
  ∀ n, P18079768119038114331.a n = A005568 n

end A005568

/-! ## A005568.P75752926484643139

`∑[A071724(n)]*A000108(n)`
-/

namespace A005568.P75752926484643139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000108 n

end

end A005568.P75752926484643139

namespace A005568

/-- `∑[A071724(n)]*A000108(n)` -/
def P75752926484643139.Spec : Prop :=
  ∀ n, P75752926484643139.a n = A005568 n

end A005568

/-! ## A005568.P5870661656975691074

`A000108(n)*Δ[A014137(n)]`
-/

namespace A005568.P5870661656975691074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A005568.P5870661656975691074

namespace A005568

/-- `A000108(n)*Δ[A014137(n)]` -/
def P5870661656975691074.Spec : Prop :=
  ∀ n, P5870661656975691074.a n = A005568 n

end A005568

/-! ## A005568.P14193632782142205651

`A000108(n)*Δ[A014138(n)]`
-/

namespace A005568.P14193632782142205651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A005568.P14193632782142205651

namespace A005568

/-- `A000108(n)*Δ[A014138(n)]` -/
def P14193632782142205651.Spec : Prop :=
  ∀ n, P14193632782142205651.a n = A005568 n

end A005568

/-!
# A005569: Number of walks on square lattice.

The programs for A005569, there is no canonical definition to state claims against.
-/

/-! ## A005569.P383411479414000930

`A052175(n*(n+3)+3)`
-/

namespace A005569.P383411479414000930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052175 (n * (n + 3) + 3)

end

end A005569.P383411479414000930

/-! ## A005569.P1792911645594594985

`record[A052176(∑[n+2]+3)]`
-/

namespace A005569.P1792911645594594985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052176 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005569.P1792911645594594985

/-! ## A005569.P13280408251457283458

`A052176(A096376(n+1))`
-/

namespace A005569.P13280408251457283458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052176 (A096376 (n + 1)).toNat

end

end A005569.P13280408251457283458

/-! ## A005569.P11516520069818236274

`A052176(eq[4, A130125(n)])`
-/

namespace A005569.P11516520069818236274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005569.P11516520069818236274

/-! ## A005569.P17087900079599847823

`A052176(A014105(n+1)+2)`
-/

namespace A005569.P17087900079599847823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052176 (A014105 (n + 1) + 2).toNat

end

end A005569.P17087900079599847823

/-!
# A005570: Number of walks on cubic lattice.

The programs for A005570, the canonical program `A005570.P15380422708776581964` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005570 has offset 1).

The definition of A005570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005570.P15380422708776581964

`8*(n+1)²+9*(n+1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005570

/-- `8*(n+1)²+9*(n+1)` -/
def P15380422708776581964.Spec : Prop :=
  ∀ n, (P15380422708776581964.a n : ℤ) = A005570 (n + 1)

theorem P15380422708776581964.correct : P15380422708776581964.Spec := by
  intro n
  simp only [A005570, Nat.add_sub_cancel]

end A005570

/-! ## A005570.P12025762360456371356

`∑[a(n-1)+16]` with `a(0)=17`
-/

namespace A005570.P12025762360456371356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [17] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005570.P12025762360456371356

namespace A005570

/-- `∑[a(n-1)+16]` -/
def P12025762360456371356.Spec : Prop :=
  ∀ n, (P12025762360456371356.a n : ℤ) = A005570 (n + 1)

end A005570

/-! ## A005570.P9503368018653507899

`(n+1)*or(1, 8*(n+2))`
-/

namespace A005570.P9503368018653507899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.lor 1 (8 * (n + 2))

end

end A005570.P9503368018653507899

namespace A005570

/-- `(n+1)*or(1, 8*(n+2))` -/
def P9503368018653507899.Spec : Prop :=
  ∀ n, (P9503368018653507899.a n : ℤ) = A005570 (n + 1)

end A005570

/-! ## A005570.P14220439463603687009

`(n+1)*xor(1, 8*(n+2))`
-/

namespace A005570.P14220439463603687009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.xor 1 (8 * (n + 2))

end

end A005570.P14220439463603687009

namespace A005570

/-- `(n+1)*xor(1, 8*(n+2))` -/
def P14220439463603687009.Spec : Prop :=
  ∀ n, (P14220439463603687009.a n : ℤ) = A005570 (n + 1)

end A005570

/-! ## A005570.P227740676197038767

`(record[lcm(4, n+3)]+5)*(n+1)`
-/

namespace A005570.P227740676197038767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 5) * (n + 1)

end

end A005570.P227740676197038767

namespace A005570

/-- `(record[lcm(4, n+3)]+5)*(n+1)` -/
def P227740676197038767.Spec : Prop :=
  ∀ n, (P227740676197038767.a n : ℤ) = A005570 (n + 1)

end A005570

/-! ## A005570.P12770255402083738262

`(n+1)*A004768(n+1)`
-/

namespace A005570.P12770255402083738262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004768 (n + 1)

end

end A005570.P12770255402083738262

namespace A005570

/-- `(n+1)*A004768(n+1)` -/
def P12770255402083738262.Spec : Prop :=
  ∀ n, P12770255402083738262.a n = A005570 (n + 1)

theorem P12770255402083738262.correct : P12770255402083738262.Spec := by
  intro n
  simp only [A005570, Nat.add_sub_cancel, A005570.P12770255402083738262.a, A005570.P15380422708776581964.a, A004768, A004768.P10813831617649309423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005570

/-! ## A005570.P7098205291548945569

`(n+1)*(A004769(n)+6)`
-/

namespace A005570.P7098205291548945569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A004769 n + 6)

end

end A005570.P7098205291548945569

namespace A005570

/-- `(n+1)*(A004769(n)+6)` -/
def P7098205291548945569.Spec : Prop :=
  ∀ n, P7098205291548945569.a n = A005570 (n + 1)

theorem P7098205291548945569.correct : P7098205291548945569.Spec := by
  intro n
  simp only [A005570, Nat.add_sub_cancel, A005570.P7098205291548945569.a, A005570.P15380422708776581964.a, A004769, A004769.P6705187457684456756.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005570

/-! ## A005570.P7162006336972255944

`(n+1)*(A004771(n)+10)`
-/

namespace A005570.P7162006336972255944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A004771 n + 10)

end

end A005570.P7162006336972255944

namespace A005570

/-- `(n+1)*(A004771(n)+10)` -/
def P7162006336972255944.Spec : Prop :=
  ∀ n, P7162006336972255944.a n = A005570 (n + 1)

theorem P7162006336972255944.correct : P7162006336972255944.Spec := by
  intro n
  simp only [A005570, Nat.add_sub_cancel, A005570.P7162006336972255944.a, A005570.P15380422708776581964.a, A004771, A004771.P15562682025386998074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005570

/-! ## A005570.P14353550936373062813

`(n+1)*(A017137(n)+11)`
-/

namespace A005570.P14353550936373062813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A017137 n + 11)

end

end A005570.P14353550936373062813

namespace A005570

/-- `(n+1)*(A017137(n)+11)` -/
def P14353550936373062813.Spec : Prop :=
  ∀ n, P14353550936373062813.a n = A005570 (n + 1)

theorem P14353550936373062813.correct : P14353550936373062813.Spec := by
  intro n
  simp only [A005570, Nat.add_sub_cancel, A005570.P14353550936373062813.a, A005570.P15380422708776581964.a, A017137, A017137.P18352355205687682311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005570

/-! ## A005570.P8791837844692812704

`∑[A158057(n+1)]`
-/

namespace A005570.P8791837844692812704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005570.P8791837844692812704

namespace A005570

/-- `∑[A158057(n+1)]` -/
def P8791837844692812704.Spec : Prop :=
  ∀ n, P8791837844692812704.a n = A005570 (n + 1)

end A005570

/-! ## A005570.P13204090975097249769

`(n+1)*(A017257(n+1)-n)`
-/

namespace A005570.P13204090975097249769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A017257 (n + 1) - (n : ℤ))

end

end A005570.P13204090975097249769

namespace A005570

/-- `(n+1)*(A017257(n+1)-n)` -/
def P13204090975097249769.Spec : Prop :=
  ∀ n, P13204090975097249769.a n = A005570 (n + 1)

theorem P13204090975097249769.correct : P13204090975097249769.Spec := by
  intro n
  simp only [A005570, Nat.add_sub_cancel, A005570.P13204090975097249769.a, A005570.P15380422708776581964.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005570

/-! ## A005570.P9467947339839827292

`(n+1)*A017077(n+2)`
-/

namespace A005570.P9467947339839827292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017077 (n + 2)

end

end A005570.P9467947339839827292

namespace A005570

/-- `(n+1)*A017077(n+2)` -/
def P9467947339839827292.Spec : Prop :=
  ∀ n, P9467947339839827292.a n = A005570 (n + 1)

theorem P9467947339839827292.correct : P9467947339839827292.Spec := by
  intro n
  simp only [A005570, Nat.add_sub_cancel, A005570.P9467947339839827292.a, A005570.P15380422708776581964.a, A017077, A017077.P465032159772507632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005570

/-! ## A005570.P18193995544798404690

`A165719(2*(n+1))`
-/

namespace A005570.P18193995544798404690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165719 (2 * (n + 1))

end

end A005570.P18193995544798404690

namespace A005570

/-- `A165719(2*(n+1))` -/
def P18193995544798404690.Spec : Prop :=
  ∀ n, P18193995544798404690.a n = A005570 (n + 1)

end A005570

/-! ## A005570.P3396227843276664650

`∑[A004768(2*n+1)]`
-/

namespace A005570.P3396227843276664650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005570.P3396227843276664650

namespace A005570

/-- `∑[A004768(2*n+1)]` -/
def P3396227843276664650.Spec : Prop :=
  ∀ n, P3396227843276664650.a n = A005570 (n + 1)

end A005570

/-! ## A005570.P4624346807566067617

`(n+1)*A006369(A016921(n+2))`
-/

namespace A005570.P4624346807566067617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006369 (A016921 (n + 2)).toNat

end

end A005570.P4624346807566067617

namespace A005570

/-- `(n+1)*A006369(A016921(n+2))` -/
def P4624346807566067617.Spec : Prop :=
  ∀ n, P4624346807566067617.a n = A005570 (n + 1)

end A005570

/-! ## A005570.P5639770403513011621

`∑[A273407(2*n+1)]`
-/

namespace A005570.P5639770403513011621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273407 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005570.P5639770403513011621

namespace A005570

/-- `∑[A273407(2*n+1)]` -/
def P5639770403513011621.Spec : Prop :=
  ∀ n, P5639770403513011621.a n = A005570 (n + 1)

end A005570

/-! ## A005570.P10711888664699691767

`A186380(8*(n+1))`
-/

namespace A005570.P10711888664699691767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186380 (8 * (n + 1))

end

end A005570.P10711888664699691767

namespace A005570

/-- `A186380(8*(n+1))` -/
def P10711888664699691767.Spec : Prop :=
  ∀ n, P10711888664699691767.a n = A005570 (n + 1)

end A005570

/-! ## A005570.P15618720212154642552

`A395532(∑[n+3])`
-/

namespace A005570.P15618720212154642552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395532 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005570.P15618720212154642552

namespace A005570

/-- `A395532(∑[n+3])` -/
def P15618720212154642552.Spec : Prop :=
  ∀ n, P15618720212154642552.a n = A005570 (n + 1)

end A005570

/-! ## A005570.P2949617338630817208

`A052179(∑[n+3])`
-/

namespace A005570.P2949617338630817208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052179 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005570.P2949617338630817208

namespace A005570

/-- `A052179(∑[n+3])` -/
def P2949617338630817208.Spec : Prop :=
  ∀ n, P2949617338630817208.a n = A005570 (n + 1)

end A005570

/-!
# A005571: Number of walks on cubic lattice.

The programs for A005571, the canonical program `A005571.P590316609267557943` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005571 has offset 0).

The definition of A005571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005571.P590316609267557943

`4*(n+1)*(n+3)*(8*n+19)/3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005571

/-- `4*(n+1)*(n+3)*(8*n+19)/3` -/
def P590316609267557943.Spec : Prop :=
  ∀ n, P590316609267557943.a n = (A005571 n : ℚ)

end A005571

/-! ## A005571.P12780449499971955303

`∑[A161617(2*(n+1))+3]`
-/

namespace A005571.P12780449499971955303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161617 (2 * (n + 1)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005571.P12780449499971955303

namespace A005571

/-- `∑[A161617(2*(n+1))+3]` -/
def P12780449499971955303.Spec : Prop :=
  ∀ n, P12780449499971955303.a n = A005571 n

end A005571

/-! ## A005571.P17629721871932578317

`∑[A033586(2*n+3)-8]`
-/

namespace A005571.P17629721871932578317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 (2 * n + 3) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005571.P17629721871932578317

namespace A005571

/-- `∑[A033586(2*n+3)-8]` -/
def P17629721871932578317.Spec : Prop :=
  ∀ n, P17629721871932578317.a n = A005571 n

end A005571

/-! ## A005571.P1305764027224639653

`∑[A033951(3*n+4)-A266883(2*n)]`
-/

namespace A005571.P1305764027224639653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 (3 * n + 4) - A266883 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005571.P1305764027224639653

namespace A005571

/-- `∑[A033951(3*n+4)-A266883(2*n)]` -/
def P1305764027224639653.Spec : Prop :=
  ∀ n, P1305764027224639653.a n = A005571 n

end A005571

/-! ## A005571.P8990343690171830521

`A023551(A008586(n+1))-4*(n²+n)`
-/

namespace A005571.P8990343690171830521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (A008586 (n + 1)).toNat - (4 * (n ^ 2 + n) : ℤ)

end

end A005571.P8990343690171830521

namespace A005571

/-- `A023551(A008586(n+1))-4*(n²+n)` -/
def P8990343690171830521.Spec : Prop :=
  ∀ n, P8990343690171830521.a n = A005571 n

end A005571

/-! ## A005571.P3012598594292516272

`A052179(∑[n+3]+n+3)`
-/

namespace A005571.P3012598594292516272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052179 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A005571.P3012598594292516272

namespace A005571

/-- `A052179(∑[n+3]+n+3)` -/
def P3012598594292516272.Spec : Prop :=
  ∀ n, P3012598594292516272.a n = A005571 n

end A005571

/-!
# A005572: Number of walks on cubic lattice starting and finishing on the xy plane and never going below it.

The programs for A005572, the canonical program `A005572.P3286533252801621649` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005572 has offset 0).

The definition of A005572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005572.P6000838985358292986

`4*a(n-1)+A052177(n-1)` with `a(0)=1`
-/

namespace A005572.P6000838985358292986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + A052177 (n - 1)

end

end A005572.P6000838985358292986

namespace A005572

/-- `4*a(n-1)+A052177(n-1)` -/
def P6000838985358292986.Spec : Prop :=
  ∀ n, P6000838985358292986.a n = A005572 n

end A005572

/-! ## A005572.P3286533252801621649

`((2*n+1)*a(n-1)-3*(n-1)*a(n-2))*4/(n+2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005572

/-- `((2*n+1)*a(n-1)-3*(n-1)*a(n-2))*4/(n+2)` -/
def P3286533252801621649.Spec : Prop :=
  ∀ n, P3286533252801621649.a n = (A005572 n : ℚ)

end A005572

/-! ## A005572.P8127571315679531853

`A052179(∑[n])`
-/

namespace A005572.P8127571315679531853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052179 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005572.P8127571315679531853

namespace A005572

/-- `A052179(∑[n])` -/
def P8127571315679531853.Spec : Prop :=
  ∀ n, P8127571315679531853.a n = A005572 n

end A005572

/-! ## A005572.P11980938837254039855

`A025228(n+2)`
-/

namespace A005572.P11980938837254039855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025228 (n + 2)

end

end A005572.P11980938837254039855

namespace A005572

/-- `A025228(n+2)` -/
def P11980938837254039855.Spec : Prop :=
  ∀ n, P11980938837254039855.a n = A005572 n

end A005572

/-! ## A005572.P1343775621805229665

`Δ[A064613(n)]-A064613(n)`
-/

namespace A005572.P1343775621805229665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A064613 n

end

end A005572.P1343775621805229665

namespace A005572

/-- `Δ[A064613(n)]-A064613(n)` -/
def P1343775621805229665.Spec : Prop :=
  ∀ n, P1343775621805229665.a n = A005572 n

end A005572

/-! ## A005572.P6633611617973386295

`Δ[2*A033543(n)]-A033543(n)`
-/

namespace A005572.P6633611617973386295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033543 n

end

end A005572.P6633611617973386295

namespace A005572

/-- `Δ[2*A033543(n)]-A033543(n)` -/
def P6633611617973386295.Spec : Prop :=
  ∀ n, P6633611617973386295.a n = A005572 n

end A005572

/-! ## A005572.P11413694134904427910

`A064613(n+1)-2*A064613(n)`
-/

namespace A005572.P11413694134904427910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064613 (n + 1) - 2 * A064613 n

end

end A005572.P11413694134904427910

namespace A005572

/-- `A064613(n+1)-2*A064613(n)` -/
def P11413694134904427910.Spec : Prop :=
  ∀ n, P11413694134904427910.a n = A005572 n

end A005572

/-! ## A005572.P5015938122743844245

`A052179(A161680(n+1))^(A000007(n)+1)`
-/

namespace A005572.P5015938122743844245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052179 (A161680 (n + 1)).toNat : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A005572.P5015938122743844245

namespace A005572

/-- `A052179(A161680(n+1))^(A000007(n)+1)` -/
def P5015938122743844245.Spec : Prop :=
  ∀ n, P5015938122743844245.a n = (A005572 n : ℚ)

end A005572

/-! ## A005572.P15205477395906606398

`A344055(n+1)/(n+1)`
-/

namespace A005572.P15205477395906606398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344055 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A005572.P15205477395906606398

namespace A005572

/-- `A344055(n+1)/(n+1)` -/
def P15205477395906606398.Spec : Prop :=
  ∀ n, P15205477395906606398.a n = (A005572 n : ℚ)

end A005572

/-! ## A005572.P10124022505280352669

`A068766(n+1)/2^n`
-/

namespace A005572.P10124022505280352669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068766 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A005572.P10124022505280352669

namespace A005572

/-- `A068766(n+1)/2^n` -/
def P10124022505280352669.Spec : Prop :=
  ∀ n, P10124022505280352669.a n = (A005572 n : ℚ)

end A005572

/-!
# A005573: Number of walks on cubic lattice (starting from origin and not going below xy plane).

The programs for A005573, the canonical program `A005573.P16196864534000188363` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005573 has offset 0).

The definition of A005573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005573.P16196864534000188363

`6*a(n-1)-A005572(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005573

/-- `6*a(n-1)-A005572(n-1)` -/
def P16196864534000188363.Spec : Prop :=
  ∀ n, P16196864534000188363.a n = A005573 n

theorem P16196864534000188363.correct : P16196864534000188363.Spec := by
  intro n
  simp only [A005573]

end A005573

/-! ## A005573.P16245244435839148198

`A360317(n+1)/2`
-/

namespace A005573.P16245244435839148198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360317 (n + 1) : ℚ) / 2

end

end A005573.P16245244435839148198

namespace A005573

/-- `A360317(n+1)/2` -/
def P16245244435839148198.Spec : Prop :=
  ∀ n, P16245244435839148198.a n = (A005573 n : ℚ)

end A005573

/-! ## A005573.P145872035626838349

`6*a(n-1)-A025228(n+1)` with `a(0)=1`
-/

namespace A005573.P145872035626838349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - A025228 (n + 1)

end

end A005573.P145872035626838349

namespace A005573

/-- `6*a(n-1)-A025228(n+1)` -/
def P145872035626838349.Spec : Prop :=
  ∀ n, P145872035626838349.a n = A005573 n

end A005573

/-! ## A005573.P7461683172151541859

`A344055(n)+A081671(n)`
-/

namespace A005573.P7461683172151541859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344055 n + A081671 n

end

end A005573.P7461683172151541859

namespace A005573

/-- `A344055(n)+A081671(n)` -/
def P7461683172151541859.Spec : Prop :=
  ∀ n, P7461683172151541859.a n = A005573 n

end A005573

/-! ## A005573.P9288388577143715953

`2*A081671(n)-A064613(n)`
-/

namespace A005573.P9288388577143715953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081671 n - A064613 n

end

end A005573.P9288388577143715953

namespace A005573

/-- `2*A081671(n)-A064613(n)` -/
def P9288388577143715953.Spec : Prop :=
  ∀ n, P9288388577143715953.a n = A005573 n

end A005573

/-! ## A005573.P11509834883524549956

`A081671(n)+n*A025228(n+1)`
-/

namespace A005573.P11509834883524549956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081671 n + (n : ℤ) * A025228 (n + 1)

end

end A005573.P11509834883524549956

namespace A005573

/-- `A081671(n)+n*A025228(n+1)` -/
def P11509834883524549956.Spec : Prop :=
  ∀ n, P11509834883524549956.a n = A005573 n

end A005573

/-! ## A005573.P4918889272103360329

`A064613(n)+A005843(n)*A025228(n+1)`
-/

namespace A005573.P4918889272103360329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064613 n + A005843 n * A025228 (n + 1)

end

end A005573.P4918889272103360329

namespace A005573

/-- `A064613(n)+A005843(n)*A025228(n+1)` -/
def P4918889272103360329.Spec : Prop :=
  ∀ n, P4918889272103360329.a n = A005573 n

end A005573

/-! ## A005573.P13836823817347590372

`A011782(n+1)/A000142(n+1)*A317618(n+1)`
-/

namespace A005573.P13836823817347590372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ) * (A317618 (n + 1) : ℚ)

end

end A005573.P13836823817347590372

namespace A005573

/-- `A011782(n+1)/A000142(n+1)*A317618(n+1)` -/
def P13836823817347590372.Spec : Prop :=
  ∀ n, P13836823817347590372.a n = (A005573 n : ℚ)

end A005573

/-!
# A005574: Numbers k such that k^2 + 1 is prime.

The programs for A005574, the canonical program `A005574.P826988356271563688` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005574 has offset 1).

The definition of A005574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005574.P10746561985362936799

`A090693(n+1)-1`
-/

namespace A005574.P10746561985362936799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1) - 1

end

end A005574.P10746561985362936799

namespace A005574

/-- `A090693(n+1)-1` -/
def P10746561985362936799.Spec : Prop :=
  ∀ n, P10746561985362936799.a n = A005574 (n + 1)

theorem P10746561985362936799.correct : P10746561985362936799.Spec := by
  intro n
  simp only [A005574, Nat.add_sub_cancel, A005574.P10746561985362936799.a, A005574.P826988356271563688.a, A002496, A002496.P13667531374760205001.a, A090693, A090693.P14905492316959680231.a, A121326, A121326.P7190985811209929169.a, A009005, A009005.P4556890301061570360.a, A054964, A054964.P645230808875844543.f1, A054964.P645230808875844543.a, A002522, A002522.P3778392011853271743.a, A333167, A333167.P7830250556896041600.a, A333169, A333169.P11111623842642408816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005574

/-! ## A005574.P12987445072560478804

`A059793(n)/2`
-/

namespace A005574.P12987445072560478804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059793 n : ℚ) / 2

end

end A005574.P12987445072560478804

namespace A005574

/-- `A059793(n)/2` -/
def P12987445072560478804.Spec : Prop :=
  ∀ n, P12987445072560478804.a n = (A005574 (n + 1) : ℚ)

theorem P12987445072560478804.correct : P12987445072560478804.Spec := by
  intro n
  simp only [A005574, Nat.add_sub_cancel, A005574.P12987445072560478804.a, A005574.P826988356271563688.a, A002496, A002496.P13667531374760205001.a, A059793, A059793.P6091692102446340852.a, A121326, A121326.P7190985811209929169.a, A009005, A009005.P4556890301061570360.a, A054964, A054964.P645230808875844543.f1, A054964.P645230808875844543.a, A002522, A002522.P3778392011853271743.a, A333167, A333167.P7830250556896041600.a, A333169, A333169.P11111623842642408816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005574

/-! ## A005574.P7541151805471684985

`sqrt(A075408(n+1))`
-/

namespace A005574.P7541151805471684985
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075408 (n + 1) : ℝ)

end

end A005574.P7541151805471684985

namespace A005574

/-- `sqrt(A075408(n+1))` -/
def P7541151805471684985.Spec : Prop :=
  ∀ n, P7541151805471684985.a n = (A005574 (n + 1) : ℝ)

end A005574

/-! ## A005574.P9316503511950881554

`A089593(n+1)+1`
-/

namespace A005574.P9316503511950881554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1) + 1

end

end A005574.P9316503511950881554

namespace A005574

/-- `A089593(n+1)+1` -/
def P9316503511950881554.Spec : Prop :=
  ∀ n, P9316503511950881554.a n = A005574 (n + 1)

theorem P9316503511950881554.correct : P9316503511950881554.Spec := by
  intro n
  simp only [A005574, Nat.add_sub_cancel, A005574.P9316503511950881554.a, A005574.P826988356271563688.a, A002496, A002496.P13667531374760205001.a, A089593, A089593.P11264897865475131752.a, A121326, A121326.P7190985811209929169.a, A009005, A009005.P4556890301061570360.a, A054964, A054964.P645230808875844543.f1, A054964.P645230808875844543.a, A002522, A002522.P3778392011853271743.a, A333167, A333167.P7830250556896041600.a, A333169, A333169.P11111623842642408816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005574

/-! ## A005574.P826988356271563688

`floor(sqrt(A002496(n+1)))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A005574

/-- `floor(sqrt(A002496(n+1)))` -/
def P826988356271563688.Spec : Prop :=
  ∀ n, P826988356271563688.a n = A005574 (n + 1)

theorem P826988356271563688.correct : P826988356271563688.Spec := by
  intro n
  simp only [A005574, Nat.add_sub_cancel]

end A005574

/-! ## A005574.P16841940827574267751

`A214516(n)+a(n-1)` with `a(0)=1`
-/

namespace A005574.P16841940827574267751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214516 n + a (n - 1)

end

end A005574.P16841940827574267751

namespace A005574

/-- `A214516(n)+a(n-1)` -/
def P16841940827574267751.Spec : Prop :=
  ∀ n, P16841940827574267751.a n = A005574 (n + 1)

end A005574

/-! ## A005574.P8797547631529922935

`a(n-1)+A206400(n)+1` with `a(0)=1`
-/

namespace A005574.P8797547631529922935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A206400 n + 1)

end

end A005574.P8797547631529922935

namespace A005574

/-- `a(n-1)+A206400(n)+1` -/
def P8797547631529922935.Spec : Prop :=
  ∀ n, P8797547631529922935.a n = A005574 (n + 1)

end A005574

/-! ## A005574.P9905462018425709764

`A382617(n+1)/A002496(n+1)`
-/

namespace A005574.P9905462018425709764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382617 (n + 1) : ℚ) / (A002496 (n + 1) : ℚ)

end

end A005574.P9905462018425709764

namespace A005574

/-- `A382617(n+1)/A002496(n+1)` -/
def P9905462018425709764.Spec : Prop :=
  ∀ n, P9905462018425709764.a n = (A005574 (n + 1) : ℚ)

end A005574

/-! ## A005574.P378927932515751288

`gcd(A075408(n+1), A382617(n+1))`
-/

namespace A005574.P378927932515751288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075408 (n + 1)) (A382617 (n + 1))

end

end A005574.P378927932515751288

namespace A005574

/-- `gcd(A075408(n+1), A382617(n+1))` -/
def P378927932515751288.Spec : Prop :=
  ∀ n, (P378927932515751288.a n : ℤ) = A005574 (n + 1)

end A005574

/-! ## A005574.P13364373231805072433

`2*A001912(n+1)-A214516(n+1)`
-/

namespace A005574.P13364373231805072433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001912 (n + 1) - A214516 (n + 1)

end

end A005574.P13364373231805072433

namespace A005574

/-- `2*A001912(n+1)-A214516(n+1)` -/
def P13364373231805072433.Spec : Prop :=
  ∀ n, P13364373231805072433.a n = A005574 (n + 1)

end A005574

/-! ## A005574.P1847535183872542515

`floor(sqrt(A163588(n+2)))`
-/

namespace A005574.P1847535183872542515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A163588 (n + 2))

end

end A005574.P1847535183872542515

namespace A005574

/-- `floor(sqrt(A163588(n+2)))` -/
def P1847535183872542515.Spec : Prop :=
  ∀ n, P1847535183872542515.a n = A005574 (n + 1)

end A005574

/-! ## A005574.P1362729391990239162

`floor(sqrt(A206246(2*n+1)))`
-/

namespace A005574.P1362729391990239162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A206246 (2 * n + 1))

end

end A005574.P1362729391990239162

namespace A005574

/-- `floor(sqrt(A206246(2*n+1)))` -/
def P1362729391990239162.Spec : Prop :=
  ∀ n, P1362729391990239162.a n = A005574 (n + 1)

end A005574

/-! ## A005574.P9960285565994141714

`eq[1, A295405(n+1)]+1`
-/

namespace A005574.P9960285565994141714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005574.P9960285565994141714

namespace A005574

/-- `eq[1, A295405(n+1)]+1` -/
def P9960285565994141714.Spec : Prop :=
  ∀ n, (P9960285565994141714.a n : ℤ) = A005574 (n + 1)

end A005574

/-! ## A005574.P4867324016738047494

`filter[A066755(n+1), A295405(#)]`
-/

namespace A005574.P4867324016738047494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A005574.P4867324016738047494

namespace A005574

/-- `filter[A066755(n+1), A295405(#)]` -/
def P4867324016738047494.Spec : Prop :=
  ∀ n, P4867324016738047494.a n = A005574 (n + 1)

end A005574

/-! ## A005574.P7345851063374480153

`filter[A221284(n+1), A295405(#)]`
-/

namespace A005574.P7345851063374480153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A005574.P7345851063374480153

namespace A005574

/-- `filter[A221284(n+1), A295405(#)]` -/
def P7345851063374480153.Spec : Prop :=
  ∀ n, P7345851063374480153.a n = A005574 (n + 1)

end A005574

/-! ## A005574.P16376463744813883953

`filter[A333635(n+1), A295405(#)]`
-/

namespace A005574.P16376463744813883953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A005574.P16376463744813883953

namespace A005574

/-- `filter[A333635(n+1), A295405(#)]` -/
def P16376463744813883953.Spec : Prop :=
  ∀ n, P16376463744813883953.a n = A005574 (n + 1)

end A005574

/-! ## A005574.P4881920544117662903

`record[gcd(n+1, A249122(n+1))]`
-/

namespace A005574.P4881920544117662903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A249122 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005574.P4881920544117662903

namespace A005574

/-- `record[gcd(n+1, A249122(n+1))]` -/
def P4881920544117662903.Spec : Prop :=
  ∀ n, (P4881920544117662903.a n : ℤ) = A005574 (n + 1)

end A005574

/-! ## A005574.P12832906199633109740

`filter[A004277(n), A295405(#)]`
-/

namespace A005574.P12832906199633109740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A005574.P12832906199633109740

namespace A005574

/-- `filter[A004277(n), A295405(#)]` -/
def P12832906199633109740.Spec : Prop :=
  ∀ n, P12832906199633109740.a n = A005574 (n + 1)

end A005574

/-! ## A005574.P10957193746040885311

`filter[A004279(n), A295405(#)]`
-/

namespace A005574.P10957193746040885311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A005574.P10957193746040885311

namespace A005574

/-- `filter[A004279(n), A295405(#)]` -/
def P10957193746040885311.Spec : Prop :=
  ∀ n, P10957193746040885311.a n = A005574 (n + 1)

end A005574

/-! ## A005574.P6438886567892507548

`filter[A004271(n+1), A295405(#)]`
-/

namespace A005574.P6438886567892507548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A005574.P6438886567892507548

namespace A005574

/-- `filter[A004271(n+1), A295405(#)]` -/
def P6438886567892507548.Spec : Prop :=
  ∀ n, P6438886567892507548.a n = A005574 (n + 1)

end A005574

/-!
# A005575: a(n) = A259095(2n,n).

The programs for A005575, there is no canonical definition to state claims against.
-/

/-! ## A005575.P9285665221811176909

`A259095(2*(n+1)²)`
-/

namespace A005575.P9285665221811176909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259095 (2 * (n + 1) ^ 2)

end

end A005575.P9285665221811176909

/-! ## A005575.P13054181215049565836

`and(-1, A259095(A001105(n+1)))`
-/

namespace A005575.P13054181215049565836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A259095 (A001105 (n + 1)).toNat)

end

end A005575.P13054181215049565836

/-! ## A005575.P1498035282158014045

`A057427(n)*A259095(A001105(n+1))`
-/

namespace A005575.P1498035282158014045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A259095 (A001105 (n + 1)).toNat

end

end A005575.P1498035282158014045

/-! ## A005575.P13622409751029392544

`lcm(A020985(n), A259095(A001105(n+1)))`
-/

namespace A005575.P13622409751029392544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A259095 (A001105 (n + 1)).toNat)

end

end A005575.P13622409751029392544

/-! ## A005575.P10531674072864602702

`A259095(A001105(n+1))%A000041(n)²`
-/

namespace A005575.P10531674072864602702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259095 (A001105 (n + 1)).toNat) (A000041 n ^ 2)

end

end A005575.P10531674072864602702

/-! ## A005575.P11704131434586519476

`A259095(A001105(n+1))+A000007(n+1)`
-/

namespace A005575.P11704131434586519476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259095 (A001105 (n + 1)).toNat + A000007 (n + 1)

end

end A005575.P11704131434586519476

/-! ## A005575.P16082544444659167696

`A000108(C(2, n))*A259095(A001105(n+1))`
-/

namespace A005575.P16082544444659167696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A259095 (A001105 (n + 1)).toNat

end

end A005575.P16082544444659167696

/-! ## A005575.P17673004946650774382

`A259095(A001105(n+1))/A007318(C(3, n))`
-/

namespace A005575.P17673004946650774382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259095 (A001105 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A005575.P17673004946650774382

/-! ## A005575.P10472139277821312110

`A259095(A001105(n+1))+A008683(8*(n+1))`
-/

namespace A005575.P10472139277821312110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259095 (A001105 (n + 1)).toNat + A008683 (8 * (n + 1))

end

end A005575.P10472139277821312110

/-!
# A005576: The limiting sequence [A259095(r(r+1)/2-s,r), s=0,1,2,...,r-1] for very large r.

The programs for A005576, there is no canonical definition to state claims against.
-/

/-! ## A005576.P923541801460118786

`A259095(A004255(n+1))`
-/

namespace A005576.P923541801460118786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259095 (A004255 (n + 1)).toNat

end

end A005576.P923541801460118786

/-! ## A005576.P2355906459847707416

`or(n%2, A123648(A077168(n)))`
-/

namespace A005576.P2355906459847707416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A123648 (A077168 n).toNat)

end

end A005576.P2355906459847707416

/-! ## A005576.P8327760608056473788

`or(A000035(n), A123648(A077168(n)))`
-/

namespace A005576.P8327760608056473788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A123648 (A077168 n).toNat)

end

end A005576.P8327760608056473788

/-! ## A005576.P3388076858780385856

`or(A123648(n+1), A139352(A000079(n)))`
-/

namespace A005576.P3388076858780385856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A123648 (n + 1)) (A139352 (A000079 n).toNat)

end

end A005576.P3388076858780385856

/-!
# A005577: Maxima of the rows of the triangle A259095.

The programs for A005577, there is no canonical definition to state claims against.
-/

/-! ## A005577.P8998577332071931671

`A140530(∑[n])`
-/

namespace A005577.P8998577332071931671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005577.P8998577332071931671

/-! ## A005577.P7211900469618771471

`A140530(A000217(n))%A140529(n)`
-/

namespace A005577.P7211900469618771471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140530 (A000217 n).toNat) (A140529 n)

end

end A005577.P7211900469618771471

/-! ## A005577.P13095686148574749068

`A186685(2*n+5)+A140530(A000217(n))`
-/

namespace A005577.P13095686148574749068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186685 (2 * n + 5) + A140530 (A000217 n).toNat

end

end A005577.P13095686148574749068

/-! ## A005577.P15914799314521168757

`A000001(A000040(n+1))*A140530(A000217(n))`
-/

namespace A005577.P15914799314521168757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A000040 (n + 1)).toNat * A140530 (A000217 n).toNat

end

end A005577.P15914799314521168757

/-! ## A005577.P8796021841552069784

`A007913(A062503(n+1))*A140530(A000217(n))`
-/

namespace A005577.P8796021841552069784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A062503 (n + 1)).toNat * A140530 (A000217 n).toNat

end

end A005577.P8796021841552069784

/-! ## A005577.P13358173597305415351

`A096270(A053644(n+4))*A140530(A000217(n))`
-/

namespace A005577.P13358173597305415351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A053644 (n + 4)).toNat * A140530 (A000217 n).toNat

end

end A005577.P13358173597305415351

/-! ## A005577.P17958462066859874597

`A280751(2*n+1)+A140530(A000217(n))`
-/

namespace A005577.P17958462066859874597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280751 (2 * n + 1) + A140530 (A000217 n).toNat

end

end A005577.P17958462066859874597

/-!
# A005578: a(2*n) = 2*a(2*n-1), a(2*n+1) = 2*a(2*n)-1.

The programs for A005578, the canonical program `A005578.P2291364383458398663` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005578 has offset 0).

The definition of A005578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005578.P9128185806473924044

`a(n-2)+2^(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A005578.P9128185806473924044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A005578.P9128185806473924044

namespace A005578

/-- `a(n-2)+2^(n-2)` -/
def P9128185806473924044.Spec : Prop :=
  ∀ n, P9128185806473924044.a n = (A005578 n : ℚ)

end A005578

/-! ## A005578.P2291364383458398663

`a(n-1)+2*a(n-2)-1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005578

/-- `a(n-1)+2*a(n-2)-1` -/
def P2291364383458398663.Spec : Prop :=
  ∀ n, P2291364383458398663.a n = A005578 n

theorem P2291364383458398663.correct : P2291364383458398663.Spec := by
  intro n
  simp only [A005578]

end A005578

/-! ## A005578.P1488491844420566014

`A023105(n+1)-1`
-/

namespace A005578.P1488491844420566014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 (n + 1) - 1

end

end A005578.P1488491844420566014

namespace A005578

/-- `A023105(n+1)-1` -/
def P1488491844420566014.Spec : Prop :=
  ∀ n, P1488491844420566014.a n = A005578 n

end A005578

/-! ## A005578.P8662285095345893828

`A001045(n)+A000035(n+1)`
-/

namespace A005578.P8662285095345893828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + A000035 (n + 1)

end

end A005578.P8662285095345893828

namespace A005578

/-- `A001045(n)+A000035(n+1)` -/
def P8662285095345893828.Spec : Prop :=
  ∀ n, P8662285095345893828.a n = A005578 n

end A005578

/-! ## A005578.P11320273221990137018

`ceil(2^n/3)`
-/

namespace A005578.P11320273221990137018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℚ) / 3⌉

end

end A005578.P11320273221990137018

namespace A005578

/-- `ceil(2^n/3)` -/
def P11320273221990137018.Spec : Prop :=
  ∀ n, P11320273221990137018.a n = A005578 n

end A005578

/-! ## A005578.P5161534121682709021

`(1+A001045(n+1))/2`
-/

namespace A005578.P5161534121682709021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A001045 (n + 1) : ℚ) / 2

end

end A005578.P5161534121682709021

namespace A005578

/-- `(1+A001045(n+1))/2` -/
def P5161534121682709021.Spec : Prop :=
  ∀ n, P5161534121682709021.a n = (A005578 n : ℚ)

end A005578

/-! ## A005578.P12456082845283040133

`∑[ogf((-1+x+x^2)/(-1+x+2x^2))]`
-/

namespace A005578.P12456082845283040133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005578.P12456082845283040133

namespace A005578

/-- `∑[ogf((-1+x+x^2)/(-1+x+2x^2))]` -/
def P12456082845283040133.Spec : Prop :=
  ∀ n, P12456082845283040133.a n = A005578 n

end A005578

/-! ## A005578.P8058511167190565367

`ogf((-1+x+x^2)/(-1+2x+x^2-2x^3))`
-/

namespace A005578.P8058511167190565367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -2, -1, 2] n

end

end A005578.P8058511167190565367

namespace A005578

/-- `ogf((-1+x+x^2)/(-1+2x+x^2-2x^3))` -/
def P8058511167190565367.Spec : Prop :=
  ∀ n, P8058511167190565367.a n = A005578 n

end A005578

/-! ## A005578.P16941972807121210509

`2*a(n-1)-n%2` with `a(0)=1`
-/

namespace A005578.P16941972807121210509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - ((n % 2 : ℕ) : ℤ)

end

end A005578.P16941972807121210509

namespace A005578

/-- `2*a(n-1)-n%2` -/
def P16941972807121210509.Spec : Prop :=
  ∀ n, P16941972807121210509.a n = A005578 n

end A005578

/-! ## A005578.P14268813697790099939

`2*a(n-1)-and(1, n)` with `a(0)=1`
-/

namespace A005578.P14268813697790099939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (Nat.land 1 n : ℤ)

end

end A005578.P14268813697790099939

namespace A005578

/-- `2*a(n-1)-and(1, n)` -/
def P14268813697790099939.Spec : Prop :=
  ∀ n, P14268813697790099939.a n = A005578 n

end A005578

/-! ## A005578.P11322352652101574385

`or(2^(n-2), a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A005578.P11322352652101574385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))) (a (n - 2))

end

end A005578.P11322352652101574385

namespace A005578

/-- `or(2^(n-2), a(n-2))` -/
def P11322352652101574385.Spec : Prop :=
  ∀ n, P11322352652101574385.a n = A005578 n

end A005578

/-! ## A005578.P4327805022526073266

`xor(2^(n-2), a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A005578.P4327805022526073266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))) (a (n - 2))

end

end A005578.P4327805022526073266

namespace A005578

/-- `xor(2^(n-2), a(n-2))` -/
def P4327805022526073266.Spec : Prop :=
  ∀ n, P4327805022526073266.a n = A005578 n

end A005578

/-! ## A005578.P17335649087898634242

`1-(a(n-1)-2^(n-1))` with `a(0)=1`
-/

namespace A005578.P17335649087898634242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A005578.P17335649087898634242

namespace A005578

/-- `1-(a(n-1)-2^(n-1))` -/
def P17335649087898634242.Spec : Prop :=
  ∀ n, P17335649087898634242.a n = (A005578 n : ℚ)

end A005578

/-! ## A005578.P16018494399734248945

`floor(4*a(n-2)-gcd(2, n))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A005578.P16018494399734248945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * a (n - 2) - (Nat.gcd 2 n : ℤ)

end

end A005578.P16018494399734248945

namespace A005578

/-- `floor(4*a(n-2)-gcd(2, n))` -/
def P16018494399734248945.Spec : Prop :=
  ∀ n, P16018494399734248945.a n = A005578 n

end A005578

/-! ## A005578.P12282339641968918911

`floor(2*a(n-2)-(1-a(n-1)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A005578.P12282339641968918911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 2) - (1 - a (n - 1))

end

end A005578.P12282339641968918911

namespace A005578

/-- `floor(2*a(n-2)-(1-a(n-1)))` -/
def P12282339641968918911.Spec : Prop :=
  ∀ n, P12282339641968918911.a n = A005578 n

end A005578

/-! ## A005578.P5955831645914101337

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A005578.P5955831645914101337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  5 * a (n - 2) - 4 * a (n - 4)

end

end A005578.P5955831645914101337

namespace A005578

/-- `5*a(n-2)-4*a(n-4)` -/
def P5955831645914101337.Spec : Prop :=
  ∀ n, P5955831645914101337.a n = A005578 n

end A005578

/-! ## A005578.P6926058810087419981

`∑[a(n-2)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A005578.P6926058810087419981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005578.P6926058810087419981

namespace A005578

/-- `∑[a(n-2)+a(n-1)+a(n-2)]` -/
def P6926058810087419981.Spec : Prop :=
  ∀ n, (P6926058810087419981.a n : ℤ) = A005578 n

end A005578

/-! ## A005578.P969772115364682343

`floor(a(n-2)-1+a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A005578.P969772115364682343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - 1 + (a (n - 1) + a (n - 2))

end

end A005578.P969772115364682343

namespace A005578

/-- `floor(a(n-2)-1+a(n-1)+a(n-2))` -/
def P969772115364682343.Spec : Prop :=
  ∀ n, P969772115364682343.a n = A005578 n

end A005578

/-! ## A005578.P3368177464047046418

`floor(floor(a(n-1))-(1-a(n-2)-a(n-2)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A005578.P3368177464047046418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (1 - a (n - 2) - a (n - 2))

end

end A005578.P3368177464047046418

namespace A005578

/-- `floor(floor(a(n-1))-(1-a(n-2)-a(n-2)))` -/
def P3368177464047046418.Spec : Prop :=
  ∀ n, P3368177464047046418.a n = A005578 n

theorem P3368177464047046418.correct : P3368177464047046418.Spec := by
  intro n
  simp only [A005578, Nat.add_sub_cancel, A005578.P3368177464047046418.a, A005578.P2291364383458398663.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005578

/-! ## A005578.P3927821376264884073

`abs(∑[A248155(n)])`
-/

namespace A005578.P3927821376264884073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A005578.P3927821376264884073

namespace A005578

/-- `abs(∑[A248155(n)])` -/
def P3927821376264884073.Spec : Prop :=
  ∀ n, P3927821376264884073.a n = A005578 n

end A005578

/-!
# A005579: a(n) = smallest number k such that Product_{i=1..k} prime(i)/(prime(i)-1) > n.

The programs for A005579, there is no canonical definition to state claims against.
-/

/-! ## A005579.P13397408985509330597

`∑[A005347(n)]-A005347(n)`
-/

namespace A005579.P13397408985509330597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005347 n

end

end A005579.P13397408985509330597

/-! ## A005579.P6850032705495888749

`A256968(n)+A036987(A212522(n))-A151622(n)`
-/

namespace A005579.P6850032705495888749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256968 n + A036987 (A212522 n).toNat - A151622 n

end

end A005579.P6850032705495888749

/-! ## A005579.P2285922050005862231

`(A256968(n)+A036987(A212522(n)))*A178334(n)`
-/

namespace A005579.P2285922050005862231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A256968 n + A036987 (A212522 n).toNat) * A178334 n

end

end A005579.P2285922050005862231

/-!
# A005580: a(n) = smallest number k such that Product_{i=2..k+1} prime(i)/(prime(i)-1) > n.

The programs for A005580, there is no canonical definition to state claims against.
-/

/-! ## A005580.P16384513045961125610

`A005579(A004277(n))-1`
-/

namespace A005580.P16384513045961125610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005579 (A004277 n).toNat - 1

end

end A005580.P16384513045961125610

/-! ## A005580.P1521562449406510878

`A005579(A004275(n+1))-1`
-/

namespace A005580.P1521562449406510878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005579 (A004275 (n + 1)).toNat - 1

end

end A005580.P1521562449406510878

/-! ## A005580.P3657525716621886214

`A005579(A028310(2*n))-1`
-/

namespace A005580.P3657525716621886214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005579 (A028310 (2 * n)).toNat - 1

end

end A005580.P3657525716621886214

/-! ## A005580.P8254612183857961670

`A005579(A028310(n)+n)-1`
-/

namespace A005580.P8254612183857961670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005579 (A028310 n + (n : ℤ)).toNat - 1

end

end A005580.P8254612183857961670

/-! ## A005580.P5829505453519762031

`A005579(2*n)-A057427(n)`
-/

namespace A005580.P5829505453519762031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005579 (2 * n) - A057427 n

end

end A005580.P5829505453519762031

/-!
# A005581: a(n) = (n-1)*n*(n+4)/6.

The programs for A005581, the canonical program `A005581.P11014497433873413039` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005581 has offset 0).

The definition of A005581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*n*(n+4)/6` (program `A005581.P5570134317976789116`, by `A005581.P5570134317976789116.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005581.P11014497433873413039

`2*C(n, 2)+C(n, 3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005581

/-- `2*C(n, 2)+C(n, 3)` -/
def P11014497433873413039.Spec : Prop :=
  ∀ n, (P11014497433873413039.a n : ℤ) = A005581 n

theorem P11014497433873413039.correct : P11014497433873413039.Spec := by
  intro n
  simp only [A005581]

end A005581

/-! ## A005581.P5570134317976789116

`(n-1)*n*(n+4)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005581.P5570134317976789116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * (n : ℤ) * (n + 4 : ℤ) : ℚ) / 6

end

end A005581.P5570134317976789116

namespace A005581

/-- `(n-1)*n*(n+4)/6` -/
def P5570134317976789116.Spec : Prop :=
  ∀ n, P5570134317976789116.a n = (A005581 n : ℚ)

theorem P5570134317976789116.correct : P5570134317976789116.Spec := by
  intro n
  simp only [A005581, Nat.add_sub_cancel, A005581.P5570134317976789116.a, A005581.P11014497433873413039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005581

/-! ## A005581.P206174144064730374

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=7`
-/

namespace A005581.P206174144064730374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 7] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A005581.P206174144064730374

namespace A005581

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P206174144064730374.Spec : Prop :=
  ∀ n, P206174144064730374.a n = A005581 n

end A005581

/-! ## A005581.P1179624626805779267

`∑[∑[xor(n, char[1])]]`
-/

namespace A005581.P1179624626805779267
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005581.P1179624626805779267

namespace A005581

/-- `∑[∑[xor(n, char[1])]]` -/
def P1179624626805779267.Spec : Prop :=
  ∀ n, (P1179624626805779267.a n : ℤ) = A005581 n

end A005581

/-! ## A005581.P3163410407161928767

`C(n+2, 3)-n`
-/

namespace A005581.P3163410407161928767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 3 : ℤ) - (n : ℤ)

end

end A005581.P3163410407161928767

namespace A005581

/-- `C(n+2, 3)-n` -/
def P3163410407161928767.Spec : Prop :=
  ∀ n, P3163410407161928767.a n = A005581 n

theorem P3163410407161928767.correct : P3163410407161928767.Spec := by
  intro n
  simp only [A005581, Nat.add_sub_cancel, A005581.P3163410407161928767.a, A005581.P11014497433873413039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005581

/-! ## A005581.P17838091635093558975

`∑[∑[n*floor(atan(n))]]`
-/

namespace A005581.P17838091635093558975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊Real.arctan (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005581.P17838091635093558975

namespace A005581

/-- `∑[∑[n*floor(atan(n))]]` -/
def P17838091635093558975.Spec : Prop :=
  ∀ n, P17838091635093558975.a n = A005581 n

end A005581

/-! ## A005581.P10656780308740056471

`∑[∑[C(n, char[1]+1)]]`
-/

namespace A005581.P10656780308740056471
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((if ∃ j, f3 j = n then 1 else 0) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005581.P10656780308740056471

namespace A005581

/-- `∑[∑[C(n, char[1]+1)]]` -/
def P10656780308740056471.Spec : Prop :=
  ∀ n, (P10656780308740056471.a n : ℤ) = A005581 n

end A005581

/-! ## A005581.P7998423295713509279

`∑[∑[and(n, char[1]+n)]]`
-/

namespace A005581.P7998423295713509279
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n ((if ∃ j, f3 j = n then 1 else 0) + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005581.P7998423295713509279

namespace A005581

/-- `∑[∑[and(n, char[1]+n)]]` -/
def P7998423295713509279.Spec : Prop :=
  ∀ n, (P7998423295713509279.a n : ℤ) = A005581 n

end A005581

/-! ## A005581.P14822906851575338516

`∑[∑[n*floor(acot(acot(n)))]]`
-/

namespace A005581.P14822906851575338516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005581.P14822906851575338516

namespace A005581

/-- `∑[∑[n*floor(acot(acot(n)))]]` -/
def P14822906851575338516.Spec : Prop :=
  ∀ n, P14822906851575338516.a n = A005581 n

end A005581

/-! ## A005581.P3886591547477895593

`∑[∑[n]+-1%(n+1)]`
-/

namespace A005581.P3886591547477895593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + Int.tmod (-1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005581.P3886591547477895593

namespace A005581

/-- `∑[∑[n]+-1%(n+1)]` -/
def P3886591547477895593.Spec : Prop :=
  ∀ n, P3886591547477895593.a n = A005581 n

end A005581

/-! ## A005581.P183325914883006210

`-(Δ[-C(n+2, 4)]+n)`
-/

namespace A005581.P183325914883006210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (n + 2) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n + (n : ℤ))

end

end A005581.P183325914883006210

namespace A005581

/-- `-(Δ[-C(n+2, 4)]+n)` -/
def P183325914883006210.Spec : Prop :=
  ∀ n, P183325914883006210.a n = A005581 n

theorem P183325914883006210.correct : P183325914883006210.Spec := by
  intro n
  simp only [A005581, Nat.add_sub_cancel, A005581.P183325914883006210.f1, A005581.P183325914883006210.a, A005581.P11014497433873413039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005581

/-! ## A005581.P18188596339933998151

`∑[floor(n/tan(2/(n+1)))]`
-/

namespace A005581.P18188596339933998151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.tan (2 / (n + 1 : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005581.P18188596339933998151

namespace A005581

/-- `∑[floor(n/tan(2/(n+1)))]` -/
def P18188596339933998151.Spec : Prop :=
  ∀ n, P18188596339933998151.a n = A005581 n

end A005581

/-! ## A005581.P13297598731290800434

`∑[floor(n/sinh(2/(n+1)))]`
-/

namespace A005581.P13297598731290800434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sinh (2 / (n + 1 : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005581.P13297598731290800434

namespace A005581

/-- `∑[floor(n/sinh(2/(n+1)))]` -/
def P13297598731290800434.Spec : Prop :=
  ∀ n, P13297598731290800434.a n = A005581 n

end A005581

/-! ## A005581.P9692970569391100937

`∑[floor(n*cot(2/(n+1)))]`
-/

namespace A005581.P9692970569391100937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.cot (2 / (n + 1 : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005581.P9692970569391100937

namespace A005581

/-- `∑[floor(n*cot(2/(n+1)))]` -/
def P9692970569391100937.Spec : Prop :=
  ∀ n, P9692970569391100937.a n = A005581 n

end A005581

/-! ## A005581.P301660173249255645

`a(n-2)+n²-2` with `a(0)=0, a(1)=0`
-/

namespace A005581.P301660173249255645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + ((n ^ 2 : ℤ) - 2)

end

end A005581.P301660173249255645

namespace A005581

/-- `a(n-2)+n²-2` -/
def P301660173249255645.Spec : Prop :=
  ∀ n, P301660173249255645.a n = A005581 n

end A005581

/-! ## A005581.P6852743173242505187

`n²-(2-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A005581.P6852743173242505187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n ^ 2 : ℤ) - (2 - a (n - 2))

end

end A005581.P6852743173242505187

namespace A005581

/-- `n²-(2-a(n-2))` -/
def P6852743173242505187.Spec : Prop :=
  ∀ n, P6852743173242505187.a n = A005581 n

end A005581

/-! ## A005581.P9954213335964254084

`∑[∑[ogf((2x^2-x^3)/(1-2x+x^2))]]`
-/

namespace A005581.P9954213335964254084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005581.P9954213335964254084

namespace A005581

/-- `∑[∑[ogf((2x^2-x^3)/(1-2x+x^2))]]` -/
def P9954213335964254084.Spec : Prop :=
  ∀ n, P9954213335964254084.a n = A005581 n

end A005581

/-! ## A005581.P17692621993497048916

`n*n+a(n-2)-2` with `a(0)=0, a(1)=0`
-/

namespace A005581.P17692621993497048916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n * n : ℤ) + (a (n - 2) - 2)

end

end A005581.P17692621993497048916

namespace A005581

/-- `n*n+a(n-2)-2` -/
def P17692621993497048916.Spec : Prop :=
  ∀ n, P17692621993497048916.a n = A005581 n

end A005581

/-! ## A005581.P16541629848606233324

`n*(n-(2-a(n-2))/n)` with `a(0)=0, a(1)=0`
-/

namespace A005581.P16541629848606233324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (n : ℚ) * ((n : ℚ) - (2 - a (n - 2)) / (n : ℚ))

end

end A005581.P16541629848606233324

namespace A005581

/-- `n*(n-(2-a(n-2))/n)` -/
def P16541629848606233324.Spec : Prop :=
  ∀ n, P16541629848606233324.a n = (A005581 n : ℚ)

end A005581

/-! ## A005581.P5457213741278830383

`floor(2*a(n-1)-floor(a(n-2)-n))` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A005581.P5457213741278830383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * a (n - 1) - (a (n - 2) - (n : ℤ))

end

end A005581.P5457213741278830383

namespace A005581

/-- `floor(2*a(n-1)-floor(a(n-2)-n))` -/
def P5457213741278830383.Spec : Prop :=
  ∀ n, P5457213741278830383.a n = A005581 n

end A005581

/-!
# A005582: a(n) = n*(n+1)*(n+2)*(n+7)/24.

The programs for A005582, the canonical program `A005582.P2745663949563023269` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005582 has offset 0).

The definition of A005582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n+2)*(n+7)/24` (program `A005582.P17540307493386249210`, by `A005582.P17540307493386249210.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005582.P5542566349165104847

`C(n+2, 4)+2*C(n+2, 3)`
-/

namespace A005582.P5542566349165104847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 4 + 2 * Nat.choose (n + 2) 3

end

end A005582.P5542566349165104847

namespace A005582

/-- `C(n+2, 4)+2*C(n+2, 3)` -/
def P5542566349165104847.Spec : Prop :=
  ∀ n, (P5542566349165104847.a n : ℤ) = A005582 n

end A005582

/-! ## A005582.P17540307493386249210

`n*(n+1)*(n+2)*(n+7)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005582.P17540307493386249210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n + 2) * (n + 7) : ℚ) / 24

end

end A005582.P17540307493386249210

namespace A005582

/-- `n*(n+1)*(n+2)*(n+7)/24` -/
def P17540307493386249210.Spec : Prop :=
  ∀ n, P17540307493386249210.a n = (A005582 n : ℚ)

theorem P17540307493386249210.correct : P17540307493386249210.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A005582, Nat.add_sub_cancel, A005582.P17540307493386249210.a, A005582.P2745663949563023269.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A005582, Nat.add_sub_cancel, A005582.P17540307493386249210.a, A005582.P2745663949563023269.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005582

/-! ## A005582.P2745663949563023269

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=9, a(3)=25, a(4)=55`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005582

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2745663949563023269.Spec : Prop :=
  ∀ n, P2745663949563023269.a n = A005582 n

theorem P2745663949563023269.correct : P2745663949563023269.Spec := by
  intro n
  simp only [A005582]

end A005582

/-! ## A005582.P10159764136000187476

`C(n+2, 3)+C(n+3, 4)`
-/

namespace A005582.P10159764136000187476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + Nat.choose (n + 3) 4

end

end A005582.P10159764136000187476

namespace A005582

/-- `C(n+2, 3)+C(n+3, 4)` -/
def P10159764136000187476.Spec : Prop :=
  ∀ n, (P10159764136000187476.a n : ℤ) = A005582 n

end A005582

/-! ## A005582.P1138280844480674095

`∑[∑[n²-a(n-3)]]` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A005582.P1138280844480674095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5] fun n f2 =>
  (n ^ 2 : ℤ) - f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005582.P1138280844480674095

namespace A005582

/-- `∑[∑[n²-a(n-3)]]` -/
def P1138280844480674095.Spec : Prop :=
  ∀ n, P1138280844480674095.a n = A005582 n

end A005582

/-! ## A005582.P11324847881162007708

`∑[∑[n-∑[a(n-1)-1]]]` with `a(0)=0`
-/

namespace A005582.P11324847881162007708
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  f3 (n - 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005582.P11324847881162007708

namespace A005582

/-- `∑[∑[n-∑[a(n-1)-1]]]` -/
def P11324847881162007708.Spec : Prop :=
  ∀ n, P11324847881162007708.a n = A005582 n

end A005582

/-! ## A005582.P2379666704869534182

`∑[∑[A000096(n)]]`
-/

namespace A005582.P2379666704869534182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005582.P2379666704869534182

namespace A005582

/-- `∑[∑[A000096(n)]]` -/
def P2379666704869534182.Spec : Prop :=
  ∀ n, P2379666704869534182.a n = A005582 n

end A005582

/-! ## A005582.P2111517895324400067

`∑[A267370(n)/3]`
-/

namespace A005582.P2111517895324400067
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267370 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005582.P2111517895324400067

namespace A005582

/-- `∑[A267370(n)/3]` -/
def P2111517895324400067.Spec : Prop :=
  ∀ n, P2111517895324400067.a n = (A005582 n : ℚ)

end A005582

/-! ## A005582.P1937204350688886394

`∑[A004006(n)+n²]`
-/

namespace A005582.P1937204350688886394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005582.P1937204350688886394

namespace A005582

/-- `∑[A004006(n)+n²]` -/
def P1937204350688886394.Spec : Prop :=
  ∀ n, P1937204350688886394.a n = A005582 n

end A005582

/-! ## A005582.P5860636439617340573

`∑[A349417(n+1)-2]`
-/

namespace A005582.P5860636439617340573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349417 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005582.P5860636439617340573

namespace A005582

/-- `∑[A349417(n+1)-2]` -/
def P5860636439617340573.Spec : Prop :=
  ∀ n, P5860636439617340573.a n = A005582 n

end A005582

/-! ## A005582.P9805755726650424952

`A086274(n+1)-(n+1)`
-/

namespace A005582.P9805755726650424952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086274 (n + 1) - (n + 1 : ℤ)

end

end A005582.P9805755726650424952

namespace A005582

/-- `A086274(n+1)-(n+1)` -/
def P9805755726650424952.Spec : Prop :=
  ∀ n, P9805755726650424952.a n = A005582 n

end A005582

/-! ## A005582.P13679693004829508659

`A051740(n)-∑[n+1]²`
-/

namespace A005582.P13679693004829508659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 n - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A005582.P13679693004829508659

namespace A005582

/-- `A051740(n)-∑[n+1]²` -/
def P13679693004829508659.Spec : Prop :=
  ∀ n, P13679693004829508659.a n = A005582 n

end A005582

/-! ## A005582.P2255592556362488390

`∑[A341209(n)]-(n+1)²`
-/

namespace A005582.P2255592556362488390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A005582.P2255592556362488390

namespace A005582

/-- `∑[A341209(n)]-(n+1)²` -/
def P2255592556362488390.Spec : Prop :=
  ∀ n, P2255592556362488390.a n = A005582 n

end A005582

/-! ## A005582.P13774479498823658221

`A101986(n)+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A005582.P13774479498823658221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A101986 n + a (n - 2)

end

end A005582.P13774479498823658221

namespace A005582

/-- `A101986(n)+a(n-2)` -/
def P13774479498823658221.Spec : Prop :=
  ∀ n, P13774479498823658221.a n = A005582 n

end A005582

/-! ## A005582.P4486546131247647720

`∑[A000292(n+1)-(n+1)]`
-/

namespace A005582.P4486546131247647720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005582.P4486546131247647720

namespace A005582

/-- `∑[A000292(n+1)-(n+1)]` -/
def P4486546131247647720.Spec : Prop :=
  ∀ n, P4486546131247647720.a n = A005582 n

end A005582

/-! ## A005582.P18084409640798926110

`∑[n+1]²-A007715(n+1)`
-/

namespace A005582.P18084409640798926110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A007715 (n + 1)

end

end A005582.P18084409640798926110

namespace A005582

/-- `∑[n+1]²-A007715(n+1)` -/
def P18084409640798926110.Spec : Prop :=
  ∀ n, P18084409640798926110.a n = A005582 n

end A005582

/-! ## A005582.P1582230281367293110

`A022815(n+1)-∑[(n+1)²]`
-/

namespace A005582.P1582230281367293110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005582.P1582230281367293110

namespace A005582

/-- `A022815(n+1)-∑[(n+1)²]` -/
def P1582230281367293110.Spec : Prop :=
  ∀ n, P1582230281367293110.a n = A005582 n

end A005582

/-! ## A005582.P13153097670074284616

`∑[A134465(n+1)-(n+1)²]`
-/

namespace A005582.P13153097670074284616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134465 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005582.P13153097670074284616

namespace A005582

/-- `∑[A134465(n+1)-(n+1)²]` -/
def P13153097670074284616.Spec : Prop :=
  ∀ n, P13153097670074284616.a n = A005582 n

end A005582

/-! ## A005582.P14205361363871942353

`∑[(n+1)²-A254749(n+1)]`
-/

namespace A005582.P14205361363871942353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A254749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005582.P14205361363871942353

namespace A005582

/-- `∑[(n+1)²-A254749(n+1)]` -/
def P14205361363871942353.Spec : Prop :=
  ∀ n, P14205361363871942353.a n = A005582 n

end A005582

/-! ## A005582.P4843244022114304458

`A014626(n)+A002412(n)`
-/

namespace A005582.P4843244022114304458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014626 n + A002412 n

end

end A005582.P4843244022114304458

namespace A005582

/-- `A014626(n)+A002412(n)` -/
def P4843244022114304458.Spec : Prop :=
  ∀ n, P4843244022114304458.a n = A005582 n

end A005582

/-!
# A005583: Coefficients of Chebyshev polynomials.

The programs for A005583, the canonical program `A005583.P10508475019933476382` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005583 has offset 1).

The definition of A005583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005583.P10508475019933476382

`C(n+5, n)+C(n+4, n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005583

/-- `C(n+5, n)+C(n+4, n)` -/
def P10508475019933476382.Spec : Prop :=
  ∀ n, (P10508475019933476382.a n : ℤ) = A005583 (n + 1)

theorem P10508475019933476382.correct : P10508475019933476382.Spec := by
  intro n
  simp only [A005583, Nat.add_sub_cancel]

end A005583

/-! ## A005583.P7574295978940099710

`(n+1)*(n+2)*(n+3)*(n+4)*(n+10)/120`
-/

namespace A005583.P7574295978940099710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 10) : ℚ) / 120

end

end A005583.P7574295978940099710

namespace A005583

/-- `(n+1)*(n+2)*(n+3)*(n+4)*(n+10)/120` -/
def P7574295978940099710.Spec : Prop :=
  ∀ n, P7574295978940099710.a n = (A005583 (n + 1) : ℚ)

end A005583

/-! ## A005583.P8381572367297282809

`floor(∑[∑[∑[∑[2*a(n-1)-n]]]])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A005583.P8381572367297282809
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f4 =>
  2 * f4 (n - 1) - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005583.P8381572367297282809

namespace A005583

/-- `floor(∑[∑[∑[∑[2*a(n-1)-n]]]])` -/
def P8381572367297282809.Spec : Prop :=
  ∀ n, P8381572367297282809.a n = A005583 (n + 1)

end A005583

/-! ## A005583.P11736420802015245089

`floor(∑[∑[∑[∑[a(n-1)-(n-a(n-1))]]]])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A005583.P11736420802015245089
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f4 =>
  f4 (n - 1) - ((n : ℤ) - f4 (n - 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005583.P11736420802015245089

namespace A005583

/-- `floor(∑[∑[∑[∑[a(n-1)-(n-a(n-1))]]]])` -/
def P11736420802015245089.Spec : Prop :=
  ∀ n, P11736420802015245089.a n = A005583 (n + 1)

end A005583

/-! ## A005583.P3649884034272497547

`∑[A005582(n+1)]`
-/

namespace A005583.P3649884034272497547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005583.P3649884034272497547

namespace A005583

/-- `∑[A005582(n+1)]` -/
def P3649884034272497547.Spec : Prop :=
  ∀ n, P3649884034272497547.a n = A005583 (n + 1)

end A005583

/-! ## A005583.P7436788286005987808

`A062988(n)-A062748(n)`
-/

namespace A005583.P7436788286005987808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062988 n - A062748 n

end

end A005583.P7436788286005987808

namespace A005583

/-- `A062988(n)-A062748(n)` -/
def P7436788286005987808.Spec : Prop :=
  ∀ n, P7436788286005987808.a n = A005583 (n + 1)

end A005583

/-! ## A005583.P199367221303115084

`A051746(n+1)+A005582(n)`
-/

namespace A005583.P199367221303115084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051746 (n + 1) + A005582 n

end

end A005583.P199367221303115084

namespace A005583

/-- `A051746(n+1)+A005582(n)` -/
def P199367221303115084.Spec : Prop :=
  ∀ n, P199367221303115084.a n = A005583 (n + 1)

end A005583

/-! ## A005583.P845443557913622760

`A006411(n+1)-A034263(n)`
-/

namespace A005583.P845443557913622760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006411 (n + 1) - A034263 n

end

end A005583.P845443557913622760

namespace A005583

/-- `A006411(n+1)-A034263(n)` -/
def P845443557913622760.Spec : Prop :=
  ∀ n, P845443557913622760.a n = A005583 (n + 1)

end A005583

/-! ## A005583.P6585295262599472775

`A005719(n+2)-A000292(n)`
-/

namespace A005583.P6585295262599472775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005719 (n + 2) - A000292 n

end

end A005583.P6585295262599472775

namespace A005583

/-- `A005719(n+2)-A000292(n)` -/
def P6585295262599472775.Spec : Prop :=
  ∀ n, P6585295262599472775.a n = A005583 (n + 1)

end A005583

/-! ## A005583.P1764851916481019158

`∑[2*A095661(n)]-A095668(n)`
-/

namespace A005583.P1764851916481019158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A095668 n

end

end A005583.P1764851916481019158

namespace A005583

/-- `∑[2*A095661(n)]-A095668(n)` -/
def P1764851916481019158.Spec : Prop :=
  ∀ n, P1764851916481019158.a n = A005583 (n + 1)

end A005583

/-! ## A005583.P14750754033175863567

`A166808(n+1)-A166830(n+1)`
-/

namespace A005583.P14750754033175863567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166808 (n + 1) - A166830 (n + 1)

end

end A005583.P14750754033175863567

namespace A005583

/-- `A166808(n+1)-A166830(n+1)` -/
def P14750754033175863567.Spec : Prop :=
  ∀ n, P14750754033175863567.a n = A005583 (n + 1)

end A005583

/-! ## A005583.P481894581847747169

`2*A000574(n+3)-A095668(n)`
-/

namespace A005583.P481894581847747169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000574 (n + 3) - A095668 n

end

end A005583.P481894581847747169

namespace A005583

/-- `2*A000574(n+3)-A095668(n)` -/
def P481894581847747169.Spec : Prop :=
  ∀ n, P481894581847747169.a n = A005583 (n + 1)

end A005583

/-! ## A005583.P11190538388449485279

`A253945(n+4)-A027764(n+3)`
-/

namespace A005583.P11190538388449485279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253945 (n + 4) - A027764 (n + 3)

end

end A005583.P11190538388449485279

namespace A005583

/-- `A253945(n+4)-A027764(n+3)` -/
def P11190538388449485279.Spec : Prop :=
  ∀ n, P11190538388449485279.a n = A005583 (n + 1)

end A005583

/-! ## A005583.P10558587585111503241

`A027764(n+3)-2*A005585(n+1)`
-/

namespace A005583.P10558587585111503241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027764 (n + 3) - 2 * A005585 (n + 1)

end

end A005583.P10558587585111503241

namespace A005583

/-- `A027764(n+3)-2*A005585(n+1)` -/
def P10558587585111503241.Spec : Prop :=
  ∀ n, P10558587585111503241.a n = A005583 (n + 1)

end A005583

/-! ## A005583.P12748844681855914288

`A253945(n+4)/2-A005585(n+1)`
-/

namespace A005583.P12748844681855914288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253945 (n + 4) : ℚ) / 2 - (A005585 (n + 1) : ℚ)

end

end A005583.P12748844681855914288

namespace A005583

/-- `A253945(n+4)/2-A005585(n+1)` -/
def P12748844681855914288.Spec : Prop :=
  ∀ n, P12748844681855914288.a n = (A005583 (n + 1) : ℚ)

end A005583

/-! ## A005583.P7941783395685826495

`A027659(n)-(A000292(n+1)+A000217(n+1))`
-/

namespace A005583.P7941783395685826495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027659 n - (A000292 (n + 1) + A000217 (n + 1))

end

end A005583.P7941783395685826495

namespace A005583

/-- `A027659(n)-(A000292(n+1)+A000217(n+1))` -/
def P7941783395685826495.Spec : Prop :=
  ∀ n, P7941783395685826495.a n = A005583 (n + 1)

end A005583

/-! ## A005583.P4142960376188037043

`A145126(n+1)+A323228(n+1)-2`
-/

namespace A005583.P4142960376188037043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 (n + 1) + (A323228 (n + 1) - 2)

end

end A005583.P4142960376188037043

namespace A005583

/-- `A145126(n+1)+A323228(n+1)-2` -/
def P4142960376188037043.Spec : Prop :=
  ∀ n, P4142960376188037043.a n = A005583 (n + 1)

end A005583

/-! ## A005583.P601293770601379923

`A051878(n+1)-(A027800(n+1)+A005585(n+1))`
-/

namespace A005583.P601293770601379923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051878 (n + 1) - (A027800 (n + 1) + A005585 (n + 1))

end

end A005583.P601293770601379923

namespace A005583

/-- `A051878(n+1)-(A027800(n+1)+A005585(n+1))` -/
def P601293770601379923.Spec : Prop :=
  ∀ n, P601293770601379923.a n = A005583 (n + 1)

end A005583

/-! ## A005583.P3642672779439204945

`A027800(n+1)-(A005585(n+1)+A005585(n+2))`
-/

namespace A005583.P3642672779439204945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 (n + 1) - (A005585 (n + 1) + A005585 (n + 2))

end

end A005583.P3642672779439204945

namespace A005583

/-- `A027800(n+1)-(A005585(n+1)+A005585(n+2))` -/
def P3642672779439204945.Spec : Prop :=
  ∀ n, P3642672779439204945.a n = A005583 (n + 1)

end A005583

/-! ## A005583.P4063900732489457189

`∑[∑[A005581(n+2)]]`
-/

namespace A005583.P4063900732489457189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005583.P4063900732489457189

namespace A005583

/-- `∑[∑[A005581(n+2)]]` -/
def P4063900732489457189.Spec : Prop :=
  ∀ n, P4063900732489457189.a n = A005583 (n + 1)

end A005583

/-!
# A005584: Coefficients of Chebyshev polynomials.

The programs for A005584, the canonical program `A005584.P2571660156201909217` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005584 has offset 1).

The definition of A005584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005584.P7509483318680802038

`(n+12)*C(n+5, 5)/6`
-/

namespace A005584.P7509483318680802038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 12) * Nat.choose (n + 5) 5 : ℚ) / 6

end

end A005584.P7509483318680802038

namespace A005584

/-- `(n+12)*C(n+5, 5)/6` -/
def P7509483318680802038.Spec : Prop :=
  ∀ n, P7509483318680802038.a n = (A005584 (n + 1) : ℚ)

end A005584

/-! ## A005584.P2571660156201909217

`C(n+6, n)+C(n+5, n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005584

/-- `C(n+6, n)+C(n+5, n)` -/
def P2571660156201909217.Spec : Prop :=
  ∀ n, (P2571660156201909217.a n : ℤ) = A005584 (n + 1)

theorem P2571660156201909217.correct : P2571660156201909217.Spec := by
  intro n
  simp only [A005584, Nat.add_sub_cancel]

end A005584

/-! ## A005584.P7111888242066511419

`(n+1)*(n+12)*(n+5)*(n+4)*(n+3)*(n+2)/720`
-/

namespace A005584.P7111888242066511419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 12) * (n + 5) * (n + 4) * (n + 3) * (n + 2) : ℚ) / 720

end

end A005584.P7111888242066511419

namespace A005584

/-- `(n+1)*(n+12)*(n+5)*(n+4)*(n+3)*(n+2)/720` -/
def P7111888242066511419.Spec : Prop :=
  ∀ n, P7111888242066511419.a n = (A005584 (n + 1) : ℚ)

end A005584

/-! ## A005584.P7248588667453287256

`∑[A005583(n+1)]`
-/

namespace A005584.P7248588667453287256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005584.P7248588667453287256

namespace A005584

/-- `∑[A005583(n+1)]` -/
def P7248588667453287256.Spec : Prop :=
  ∀ n, P7248588667453287256.a n = A005584 (n + 1)

end A005584

/-! ## A005584.P17809113909591656113

`∑[∑[A005582(n+1)]]`
-/

namespace A005584.P17809113909591656113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005584.P17809113909591656113

namespace A005584

/-- `∑[∑[A005582(n+1)]]` -/
def P17809113909591656113.Spec : Prop :=
  ∀ n, P17809113909591656113.a n = A005584 (n + 1)

end A005584

/-! ## A005584.P9644414845240127271

`A062989(n)+A051745(n+1)`
-/

namespace A005584.P9644414845240127271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 n + A051745 (n + 1)

end

end A005584.P9644414845240127271

namespace A005584

/-- `A062989(n)+A051745(n+1)` -/
def P9644414845240127271.Spec : Prop :=
  ∀ n, P9644414845240127271.a n = A005584 (n + 1)

end A005584

/-! ## A005584.P4964988964682195903

`A064056(n)-A005712(n+2)`
-/

namespace A005584.P4964988964682195903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064056 n - A005712 (n + 2)

end

end A005584.P4964988964682195903

namespace A005584

/-- `A064056(n)-A005712(n+2)` -/
def P4964988964682195903.Spec : Prop :=
  ∀ n, P4964988964682195903.a n = A005584 (n + 1)

end A005584

/-! ## A005584.P1989696404183258343

`A112459(n+3)-A051947(n)`
-/

namespace A005584.P1989696404183258343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112459 (n + 3) - A051947 n

end

end A005584.P1989696404183258343

namespace A005584

/-- `A112459(n+3)-A051947(n)` -/
def P1989696404183258343.Spec : Prop :=
  ∀ n, P1989696404183258343.a n = A005584 (n + 1)

end A005584

/-! ## A005584.P10509964613429940527

`2*A095662(n)-A095669(n)`
-/

namespace A005584.P10509964613429940527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095662 n - A095669 n

end

end A005584.P10509964613429940527

namespace A005584

/-- `2*A095662(n)-A095669(n)` -/
def P10509964613429940527.Spec : Prop :=
  ∀ n, P10509964613429940527.a n = A005584 (n + 1)

end A005584

/-! ## A005584.P3821368494728137009

`A253943(n+5)-A040977(n)`
-/

namespace A005584.P3821368494728137009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253943 (n + 5) - A040977 n

end

end A005584.P3821368494728137009

namespace A005584

/-- `A253943(n+5)-A040977(n)` -/
def P3821368494728137009.Spec : Prop :=
  ∀ n, P3821368494728137009.a n = A005584 (n + 1)

end A005584

/-! ## A005584.P14547444006716952798

`A257200(n+1)+A005585(n+1)`
-/

namespace A005584.P14547444006716952798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257200 (n + 1) + A005585 (n + 1)

end

end A005584.P14547444006716952798

namespace A005584

/-- `A257200(n+1)+A005585(n+1)` -/
def P14547444006716952798.Spec : Prop :=
  ∀ n, P14547444006716952798.a n = A005584 (n + 1)

end A005584

/-! ## A005584.P11396622522014823868

`A278670(n+1)+A257199(n+1)`
-/

namespace A005584.P11396622522014823868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278670 (n + 1) + A257199 (n + 1)

end

end A005584.P11396622522014823868

namespace A005584

/-- `A278670(n+1)+A257199(n+1)` -/
def P11396622522014823868.Spec : Prop :=
  ∀ n, P11396622522014823868.a n = A005584 (n + 1)

end A005584

/-! ## A005584.P15345405860913054064

`A166810(n+1)-A166805(n+1)`
-/

namespace A005584.P15345405860913054064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166810 (n + 1) - A166805 (n + 1)

end

end A005584.P15345405860913054064

namespace A005584

/-- `A166810(n+1)-A166805(n+1)` -/
def P15345405860913054064.Spec : Prop :=
  ∀ n, P15345405860913054064.a n = A005584 (n + 1)

end A005584

/-! ## A005584.P16212818904001554447

`A027765(n+4)-A112459(n+3)`
-/

namespace A005584.P16212818904001554447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027765 (n + 4) - A112459 (n + 3)

end

end A005584.P16212818904001554447

namespace A005584

/-- `A027765(n+4)-A112459(n+3)` -/
def P16212818904001554447.Spec : Prop :=
  ∀ n, P16212818904001554447.a n = A005584 (n + 1)

end A005584

/-! ## A005584.P8921626375460724724

`A124089(n+7)-A063258(n)`
-/

namespace A005584.P8921626375460724724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (n + 7) - A063258 n

end

end A005584.P8921626375460724724

namespace A005584

/-- `A124089(n+7)-A063258(n)` -/
def P8921626375460724724.Spec : Prop :=
  ∀ n, P8921626375460724724.a n = A005584 (n + 1)

end A005584

/-! ## A005584.P15592142012071249909

`A096944(n)-A253942(n+4)`
-/

namespace A005584.P15592142012071249909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096944 n - A253942 (n + 4)

end

end A005584.P15592142012071249909

namespace A005584

/-- `A096944(n)-A253942(n+4)` -/
def P15592142012071249909.Spec : Prop :=
  ∀ n, P15592142012071249909.a n = A005584 (n + 1)

end A005584

/-!
# A005585: 5-dimensional pyramidal numbers: a(n) = n*(n+1)*(n+2)*(n+3)*(2n+3)/5!.

The programs for A005585, the canonical program `A005585.P5066831349655201454` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005585 has offset 1).

The definition of A005585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)*(n+3)*(n+4)*(2*(n+1)+3)/5!` (program `A005585.P9317796794552167293`, by `A005585.P9317796794552167293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005585.P13913767853792811795

`C(n+4, 5)+C(n+5, 5)`
-/

namespace A005585.P13913767853792811795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 5 + Nat.choose (n + 5) 5

end

end A005585.P13913767853792811795

namespace A005585

/-- `C(n+4, 5)+C(n+5, 5)` -/
def P13913767853792811795.Spec : Prop :=
  ∀ n, (P13913767853792811795.a n : ℤ) = A005585 (n + 1)

theorem P13913767853792811795.correct : P13913767853792811795.Spec := by
  intro n
  simp only [A005585, Nat.add_sub_cancel, A005585.P13913767853792811795.a, A005585.P5066831349655201454.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005585

/-! ## A005585.P9317796794552167293

`(n+1)*(n+2)*(n+3)*(n+4)*(2*(n+1)+3)/5!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005585.P9317796794552167293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (2 * (n + 1) + 3) : ℚ) / (Nat.factorial 5 : ℚ)

end

end A005585.P9317796794552167293

namespace A005585

/-- `(n+1)*(n+2)*(n+3)*(n+4)*(2*(n+1)+3)/5!` -/
def P9317796794552167293.Spec : Prop :=
  ∀ n, P9317796794552167293.a n = (A005585 (n + 1) : ℚ)

theorem P9317796794552167293.correct : P9317796794552167293.Spec := by
  intro n
  simp only [A005585, Nat.add_sub_cancel, A005585.P9317796794552167293.a, A005585.P5066831349655201454.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005585

/-! ## A005585.P18288976444786351013

`A004302(n+2)-A207361(n+2)`
-/

namespace A005585.P18288976444786351013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004302 (n + 2) - A207361 (n + 2)

end

end A005585.P18288976444786351013

namespace A005585

/-- `A004302(n+2)-A207361(n+2)` -/
def P18288976444786351013.Spec : Prop :=
  ∀ n, P18288976444786351013.a n = A005585 (n + 1)

end A005585

/-! ## A005585.P2262491652231446688

`(A000538(n+2)-A000330(n+2))/12`
-/

namespace A005585.P2262491652231446688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000538 (n + 2) - A000330 (n + 2) : ℚ) / 12

end

end A005585.P2262491652231446688

namespace A005585

/-- `(A000538(n+2)-A000330(n+2))/12` -/
def P2262491652231446688.Spec : Prop :=
  ∀ n, P2262491652231446688.a n = (A005585 (n + 1) : ℚ)

end A005585

/-! ## A005585.P5066831349655201454

`A000389(n+4)+A000389(n+5)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005585

/-- `A000389(n+4)+A000389(n+5)` -/
def P5066831349655201454.Spec : Prop :=
  ∀ n, P5066831349655201454.a n = A005585 (n + 1)

theorem P5066831349655201454.correct : P5066831349655201454.Spec := by
  intro n
  simp only [A005585, Nat.add_sub_cancel]

end A005585

/-! ## A005585.P343604538238158703

`∑[∑[∑[(n+1)²]]]`
-/

namespace A005585.P343604538238158703
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005585.P343604538238158703

namespace A005585

/-- `∑[∑[∑[(n+1)²]]]` -/
def P343604538238158703.Spec : Prop :=
  ∀ n, (P343604538238158703.a n : ℤ) = A005585 (n + 1)

end A005585

/-! ## A005585.P6055449170167237872

`floor(∑[∑[∑[∑[a(n-1)+2]]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A005585.P6055449170167237872
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f4 =>
  f4 (n - 1) + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005585.P6055449170167237872

namespace A005585

/-- `floor(∑[∑[∑[∑[a(n-1)+2]]]])` -/
def P6055449170167237872.Spec : Prop :=
  ∀ n, (P6055449170167237872.a n : ℤ) = A005585 (n + 1)

end A005585

/-! ## A005585.P9573022987498811291

`∑[∑[∑[∑[a(n-1)+4]]]]/2` with `a(0)=2`
-/

namespace A005585.P9573022987498811291
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f4 =>
  f4 (n - 1) + 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A005585.P9573022987498811291

namespace A005585

/-- `∑[∑[∑[∑[a(n-1)+4]]]]/2` -/
def P9573022987498811291.Spec : Prop :=
  ∀ n, P9573022987498811291.a n = (A005585 (n + 1) : ℚ)

end A005585

/-! ## A005585.P9139966547890648852

`∑[∑[∑[2*n+1]]]+a(n-1)` with `a(0)=1`
-/

namespace A005585.P9139966547890648852
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A005585.P9139966547890648852

namespace A005585

/-- `∑[∑[∑[2*n+1]]]+a(n-1)` -/
def P9139966547890648852.Spec : Prop :=
  ∀ n, (P9139966547890648852.a n : ℤ) = A005585 (n + 1)

end A005585

/-! ## A005585.P8287691562176024607

`∑[A086689(n+1)]/(n+1)`
-/

namespace A005585.P8287691562176024607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086689 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A005585.P8287691562176024607

namespace A005585

/-- `∑[A086689(n+1)]/(n+1)` -/
def P8287691562176024607.Spec : Prop :=
  ∀ n, P8287691562176024607.a n = (A005585 (n + 1) : ℚ)

end A005585

/-! ## A005585.P11050074278506816028

`∑[(n+2)*A000292(n+1)]/2`
-/

namespace A005585.P11050074278506816028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000292 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A005585.P11050074278506816028

namespace A005585

/-- `∑[(n+2)*A000292(n+1)]/2` -/
def P11050074278506816028.Spec : Prop :=
  ∀ n, P11050074278506816028.a n = (A005585 (n + 1) : ℚ)

end A005585

/-! ## A005585.P2345722411429148655

`A271663(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A005585.P2345722411429148655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271663 n - (a (n - 1) + a (n - 1))

end

end A005585.P2345722411429148655

namespace A005585

/-- `A271663(n)-(a(n-1)+a(n-1))` -/
def P2345722411429148655.Spec : Prop :=
  ∀ n, P2345722411429148655.a n = A005585 (n + 1)

end A005585

/-! ## A005585.P7404725349481512216

`A051877(n)-A174002(n)`
-/

namespace A005585.P7404725349481512216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051877 n - A174002 n

end

end A005585.P7404725349481512216

namespace A005585

/-- `A051877(n)-A174002(n)` -/
def P7404725349481512216.Spec : Prop :=
  ∀ n, P7404725349481512216.a n = A005585 (n + 1)

end A005585

/-! ## A005585.P17464742947834641024

`A244882(n)-A051836(n)`
-/

namespace A005585.P17464742947834641024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244882 n - A051836 n

end

end A005585.P17464742947834641024

namespace A005585

/-- `A244882(n)-A051836(n)` -/
def P17464742947834641024.Spec : Prop :=
  ∀ n, P17464742947834641024.a n = A005585 (n + 1)

end A005585

/-! ## A005585.P166754112770930806

`A271567(n)-A266732(n)`
-/

namespace A005585.P166754112770930806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271567 n - A266732 n

end

end A005585.P166754112770930806

namespace A005585

/-- `A271567(n)-A266732(n)` -/
def P166754112770930806.Spec : Prop :=
  ∀ n, P166754112770930806.a n = A005585 (n + 1)

end A005585

/-! ## A005585.P14581849590171743150

`A337895(n+1)+A002817(n)`
-/

namespace A005585.P14581849590171743150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337895 (n + 1) + A002817 n

end

end A005585.P14581849590171743150

namespace A005585

/-- `A337895(n+1)+A002817(n)` -/
def P14581849590171743150.Spec : Prop :=
  ∀ n, P14581849590171743150.a n = A005585 (n + 1)

end A005585

/-! ## A005585.P16730536907059206448

`A034263(n)-A277935(n+1)`
-/

namespace A005585.P16730536907059206448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n - A277935 (n + 1)

end

end A005585.P16730536907059206448

namespace A005585

/-- `A034263(n)-A277935(n+1)` -/
def P16730536907059206448.Spec : Prop :=
  ∀ n, P16730536907059206448.a n = A005585 (n + 1)

theorem P16730536907059206448.correct : P16730536907059206448.Spec := by
  intro n
  simp only [A005585, Nat.add_sub_cancel, A005585.P16730536907059206448.a, A005585.P5066831349655201454.a, A000389, A000389.P15450220129395289428.a, A034263, A034263.P5868129197671622568.a, A277935, A277935.P11391963306517879859.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005585

/-! ## A005585.P1394092741828160288

`A167566(n+3)-A006414(n)`
-/

namespace A005585.P1394092741828160288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167566 (n + 3) - A006414 n

end

end A005585.P1394092741828160288

namespace A005585

/-- `A167566(n+3)-A006414(n)` -/
def P1394092741828160288.Spec : Prop :=
  ∀ n, P1394092741828160288.a n = A005585 (n + 1)

theorem P1394092741828160288.correct : P1394092741828160288.Spec := by
  intro n
  simp only [A005585, Nat.add_sub_cancel, A005585.P1394092741828160288.a, A005585.P5066831349655201454.a, A000389, A000389.P15450220129395289428.a, A006414, A006414.P3634447629182822101.a, A167566, A167566.P3658616145969070422.a, A024166, A024166.P6072422221111961718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005585

/-! ## A005585.P2285460059384396688

`2*A027800(n)-A051878(n)`
-/

namespace A005585.P2285460059384396688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027800 n - A051878 n

end

end A005585.P2285460059384396688

namespace A005585

/-- `2*A027800(n)-A051878(n)` -/
def P2285460059384396688.Spec : Prop :=
  ∀ n, P2285460059384396688.a n = A005585 (n + 1)

end A005585

/-! ## A005585.P16010842595217610187

`A271567(n)-2*A174002(n)`
-/

namespace A005585.P16010842595217610187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271567 n - 2 * A174002 n

end

end A005585.P16010842595217610187

namespace A005585

/-- `A271567(n)-2*A174002(n)` -/
def P16010842595217610187.Spec : Prop :=
  ∀ n, P16010842595217610187.a n = A005585 (n + 1)

end A005585

/-!
# A005586: a(n) = n*(n+4)*(n+5)/6.

The programs for A005586, the canonical program `A005586.P9208734561395852364` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005586 has offset 0).

The definition of A005586 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+4)*(n+5)/6` (program `A005586.P2168849729452016327`, by `A005586.P2168849729452016327.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005586.P7795213518547145130

`C(5+n, 3)-C(5+n, 2)`
-/

namespace A005586.P7795213518547145130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 + n) 3 : ℤ) - (Nat.choose (5 + n) 2 : ℤ)

end

end A005586.P7795213518547145130

namespace A005586

/-- `C(5+n, 3)-C(5+n, 2)` -/
def P7795213518547145130.Spec : Prop :=
  ∀ n, P7795213518547145130.a n = A005586 n

end A005586

/-! ## A005586.P2168849729452016327

`n*(n+4)*(n+5)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005586.P2168849729452016327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 4) * (n + 5) : ℚ) / 6

end

end A005586.P2168849729452016327

namespace A005586

/-- `n*(n+4)*(n+5)/6` -/
def P2168849729452016327.Spec : Prop :=
  ∀ n, P2168849729452016327.a n = (A005586 n : ℚ)

theorem P2168849729452016327.correct : P2168849729452016327.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A005586, Nat.add_sub_cancel, A005586.P2168849729452016327.a, A005586.P9208734561395852364.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A005586, Nat.add_sub_cancel, A005586.P2168849729452016327.a, A005586.P9208734561395852364.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005586

/-! ## A005586.P9208734561395852364

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=14, a(3)=28`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005586

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9208734561395852364.Spec : Prop :=
  ∀ n, P9208734561395852364.a n = A005586 n

theorem P9208734561395852364.correct : P9208734561395852364.Spec := by
  intro n
  simp only [A005586]

end A005586

/-! ## A005586.P10733484582411688424

`A005581(n+2)-2`
-/

namespace A005586.P10733484582411688424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (n + 2) - 2

end

end A005586.P10733484582411688424

namespace A005586

/-- `A005581(n+2)-2` -/
def P10733484582411688424.Spec : Prop :=
  ∀ n, P10733484582411688424.a n = A005586 n

end A005586

/-! ## A005586.P17454829414125170023

`record[C(n, 3)-n]`
-/

namespace A005586.P17454829414125170023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005586.P17454829414125170023

namespace A005586

/-- `record[C(n, 3)-n]` -/
def P17454829414125170023.Spec : Prop :=
  ∀ n, P17454829414125170023.a n = A005586 n

end A005586

/-! ## A005586.P4936447344868481086

`C(4+n, 3)-(n+4)`
-/

namespace A005586.P4936447344868481086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 + n) 3 : ℤ) - (n + 4 : ℤ)

end

end A005586.P4936447344868481086

namespace A005586

/-- `C(4+n, 3)-(n+4)` -/
def P4936447344868481086.Spec : Prop :=
  ∀ n, P4936447344868481086.a n = A005586 n

end A005586

/-! ## A005586.P11068345878034893581

`∑[∑[n+2]%((n+1)^3)]`
-/

namespace A005586.P11068345878034893581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005586.P11068345878034893581

namespace A005586

/-- `∑[∑[n+2]%((n+1)^3)]` -/
def P11068345878034893581.Spec : Prop :=
  ∀ n, (P11068345878034893581.a n : ℤ) = A005586 n

end A005586

/-! ## A005586.P4901471611779715459

`∑[(n+2)²%∑[n+2]+n]`
-/

namespace A005586.P4901471611779715459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 % (∑ j ∈ Finset.range (n + 1), f2 j) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005586.P4901471611779715459

namespace A005586

/-- `∑[(n+2)²%∑[n+2]+n]` -/
def P4901471611779715459.Spec : Prop :=
  ∀ n, (P4901471611779715459.a n : ℤ) = A005586 n

end A005586

/-! ## A005586.P10210083825350736143

`∑[∑[2*a(n-1)-n]]` with `a(0)=0, a(1)=5, a(2)=4`
-/

namespace A005586.P10210083825350736143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 4] fun n f2 =>
  2 * f2 (n - 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005586.P10210083825350736143

namespace A005586

/-- `∑[∑[2*a(n-1)-n]]` -/
def P10210083825350736143.Spec : Prop :=
  ∀ n, P10210083825350736143.a n = A005586 n

end A005586

/-! ## A005586.P16017387122808857726

`∑[∑[floor(a(n-1)²/n)]]` with `a(0)=0, a(1)=5, a(2)=4`
-/

namespace A005586.P16017387122808857726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 4] fun n f2 =>
  ⌊(f2 (n - 1) ^ 2 : ℚ) / (n : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005586.P16017387122808857726

namespace A005586

/-- `∑[∑[floor(a(n-1)²/n)]]` -/
def P16017387122808857726.Spec : Prop :=
  ∀ n, P16017387122808857726.a n = A005586 n

end A005586

/-! ## A005586.P5675652794569814282

`∑[∑[a(n-1)-(n-a(n-1))]]` with `a(0)=0, a(1)=5, a(2)=4`
-/

namespace A005586.P5675652794569814282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 4] fun n f2 =>
  f2 (n - 1) - ((n : ℤ) - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005586.P5675652794569814282

namespace A005586

/-- `∑[∑[a(n-1)-(n-a(n-1))]]` -/
def P5675652794569814282.Spec : Prop :=
  ∀ n, P5675652794569814282.a n = A005586 n

end A005586

/-! ## A005586.P14266378151087459237

`A005286(n)-1`
-/

namespace A005586.P14266378151087459237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n - 1

end

end A005586.P14266378151087459237

namespace A005586

/-- `A005286(n)-1` -/
def P14266378151087459237.Spec : Prop :=
  ∀ n, P14266378151087459237.a n = A005586 n

end A005586

/-! ## A005586.P4192875359770656896

`A092286(n)-n`
-/

namespace A005586.P4192875359770656896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092286 n - (n : ℤ)

end

end A005586.P4192875359770656896

namespace A005586

/-- `A092286(n)-n` -/
def P4192875359770656896.Spec : Prop :=
  ∀ n, P4192875359770656896.a n = A005586 n

end A005586

/-! ## A005586.P9020758655574940728

`Δ[A005582(n)]-2`
-/

namespace A005586.P9020758655574940728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A005586.P9020758655574940728

namespace A005586

/-- `Δ[A005582(n)]-2` -/
def P9020758655574940728.Spec : Prop :=
  ∀ n, P9020758655574940728.a n = A005586 n

end A005586

/-! ## A005586.P11682943317711066341

`A008778(n)-1+n`
-/

namespace A005586.P11682943317711066341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n - 1 + (n : ℤ)

end

end A005586.P11682943317711066341

namespace A005586

/-- `A008778(n)-1+n` -/
def P11682943317711066341.Spec : Prop :=
  ∀ n, P11682943317711066341.a n = A005586 n

end A005586

/-! ## A005586.P15349343540723438537

`A006503(n)+2*n`
-/

namespace A005586.P15349343540723438537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n + (2 * n : ℤ)

end

end A005586.P15349343540723438537

namespace A005586

/-- `A006503(n)+2*n` -/
def P15349343540723438537.Spec : Prop :=
  ∀ n, P15349343540723438537.a n = A005586 n

end A005586

/-! ## A005586.P9599940201306387261

`A062748(n)-(n+3)`
-/

namespace A005586.P9599940201306387261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n - (n + 3 : ℤ)

end

end A005586.P9599940201306387261

namespace A005586

/-- `A062748(n)-(n+3)` -/
def P9599940201306387261.Spec : Prop :=
  ∀ n, P9599940201306387261.a n = A005586 n

end A005586

/-! ## A005586.P6774369845936277400

`∑[A000096(n+1)]-2`
-/

namespace A005586.P6774369845936277400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A005586.P6774369845936277400

namespace A005586

/-- `∑[A000096(n+1)]-2` -/
def P6774369845936277400.Spec : Prop :=
  ∀ n, P6774369845936277400.a n = A005586 n

end A005586

/-! ## A005586.P2096656468161244973

`A159920(n+2)/2-2`
-/

namespace A005586.P2096656468161244973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159920 (n + 2) : ℚ) / 2 - 2

end

end A005586.P2096656468161244973

namespace A005586

/-- `A159920(n+2)/2-2` -/
def P2096656468161244973.Spec : Prop :=
  ∀ n, P2096656468161244973.a n = (A005586 n : ℚ)

end A005586

/-!
# A005587: a(n) = n*(n+5)*(n+6)*(n+7)/24.

The programs for A005587, the canonical program `A005587.P12134575304824728595` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005587 has offset 0).

The definition of A005587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005587.P6582048939080116347

`C(7+n, 4)-C(7+n, 3)`
-/

namespace A005587.P6582048939080116347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (7 + n) 4 : ℤ) - (Nat.choose (7 + n) 3 : ℤ)

end

end A005587.P6582048939080116347

namespace A005587

/-- `C(7+n, 4)-C(7+n, 3)` -/
def P6582048939080116347.Spec : Prop :=
  ∀ n, P6582048939080116347.a n = A005587 n

end A005587

/-! ## A005587.P16500548414225171402

`n*(n+5)*(n+6)*(n+7)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005587.P16500548414225171402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 5) * (n + 6) * (n + 7) : ℚ) / 24

end

end A005587.P16500548414225171402

namespace A005587

/-- `n*(n+5)*(n+6)*(n+7)/24` -/
def P16500548414225171402.Spec : Prop :=
  ∀ n, P16500548414225171402.a n = (A005587 n : ℚ)

end A005587

/-! ## A005587.P12134575304824728595

`A024191(n+1)-5`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005587

/-- `A024191(n+1)-5` -/
def P12134575304824728595.Spec : Prop :=
  ∀ n, P12134575304824728595.a n = A005587 n

theorem P12134575304824728595.correct : P12134575304824728595.Spec := by
  intro n
  simp only [A005587]

end A005587

/-! ## A005587.P15227851050867708932

`record[C(n, 4)-C(n, 2)]`
-/

namespace A005587.P15227851050867708932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005587.P15227851050867708932

namespace A005587

/-- `record[C(n, 4)-C(n, 2)]` -/
def P15227851050867708932.Spec : Prop :=
  ∀ n, P15227851050867708932.a n = A005587 n

end A005587

/-! ## A005587.P913321805122425299

`∑[∑[n+3]+2]+a(n-1)` with `a(0)=0`
-/

namespace A005587.P913321805122425299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A005587.P913321805122425299

namespace A005587

/-- `∑[∑[n+3]+2]+a(n-1)` -/
def P913321805122425299.Spec : Prop :=
  ∀ n, (P913321805122425299.a n : ℤ) = A005587 n

end A005587

/-! ## A005587.P4274146774464793835

`A387204(n)+A140672(n)`
-/

namespace A005587.P4274146774464793835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387204 n + A140672 n

end

end A005587.P4274146774464793835

namespace A005587

/-- `A387204(n)+A140672(n)` -/
def P4274146774464793835.Spec : Prop :=
  ∀ n, P4274146774464793835.a n = A005587 n

end A005587

/-! ## A005587.P6076882634275289840

`A393327(n)+A327032(n)`
-/

namespace A005587.P6076882634275289840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393327 n + A327032 n

end

end A005587.P6076882634275289840

namespace A005587

/-- `A393327(n)+A327032(n)` -/
def P6076882634275289840.Spec : Prop :=
  ∀ n, P6076882634275289840.a n = A005587 n

end A005587

/-! ## A005587.P12649432553945176853

`A090386(n)-A028569(n)`
-/

namespace A005587.P12649432553945176853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090386 n - A028569 n

end

end A005587.P12649432553945176853

namespace A005587

/-- `A090386(n)-A028569(n)` -/
def P12649432553945176853.Spec : Prop :=
  ∀ n, P12649432553945176853.a n = A005587 n

end A005587

/-! ## A005587.P9096421489316905823

`A323220(n)-A323221(n)`
-/

namespace A005587.P9096421489316905823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323220 n - A323221 n

end

end A005587.P9096421489316905823

namespace A005587

/-- `A323220(n)-A323221(n)` -/
def P9096421489316905823.Spec : Prop :=
  ∀ n, P9096421489316905823.a n = A005587 n

end A005587

/-! ## A005587.P3590702229775118414

`A096942(n)-A155757(n+1)`
-/

namespace A005587.P3590702229775118414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096942 n - A155757 (n + 1)

end

end A005587.P3590702229775118414

namespace A005587

/-- `A096942(n)-A155757(n+1)` -/
def P3590702229775118414.Spec : Prop :=
  ∀ n, P3590702229775118414.a n = A005587 n

end A005587

/-! ## A005587.P2476004469906188528

`A005287(n+4)-A020710(n)`
-/

namespace A005587.P2476004469906188528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005287 (n + 4) - A020710 n

end

end A005587.P2476004469906188528

namespace A005587

/-- `A005287(n+4)-A020710(n)` -/
def P2476004469906188528.Spec : Prop :=
  ∀ n, P2476004469906188528.a n = A005587 n

end A005587

/-! ## A005587.P12250478128129954166

`∑[A005586(n+1)]-5`
-/

namespace A005587.P12250478128129954166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A005587.P12250478128129954166

namespace A005587

/-- `∑[A005586(n+1)]-5` -/
def P12250478128129954166.Spec : Prop :=
  ∀ n, P12250478128129954166.a n = A005587 n

end A005587

/-! ## A005587.P32463288348000027

`A206262(n+2)-A206261(n+3)`
-/

namespace A005587.P32463288348000027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206262 (n + 2) - A206261 (n + 3)

end

end A005587.P32463288348000027

namespace A005587

/-- `A206262(n+2)-A206261(n+3)` -/
def P32463288348000027.Spec : Prop :=
  ∀ n, P32463288348000027.a n = A005587 n

end A005587

/-! ## A005587.P11226874445927014175

`Δ[A062988(n+1)-Δ[A062988(n+1)]]`
-/

namespace A005587.P11226874445927014175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062988 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062988 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005587.P11226874445927014175

namespace A005587

/-- `Δ[A062988(n+1)-Δ[A062988(n+1)]]` -/
def P11226874445927014175.Spec : Prop :=
  ∀ n, P11226874445927014175.a n = A005587 n

end A005587

/-! ## A005587.P8741127556177196239

`Δ[A166808(n+2)-Δ[A166808(n+2)]]`
-/

namespace A005587.P8741127556177196239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166808 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166808 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005587.P8741127556177196239

namespace A005587

/-- `Δ[A166808(n+2)-Δ[A166808(n+2)]]` -/
def P8741127556177196239.Spec : Prop :=
  ∀ n, P8741127556177196239.a n = A005587 n

end A005587

/-! ## A005587.P11207935119320855738

`record[∑[C(n, 3)-n]]`
-/

namespace A005587.P11207935119320855738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005587.P11207935119320855738

namespace A005587

/-- `record[∑[C(n, 3)-n]]` -/
def P11207935119320855738.Spec : Prop :=
  ∀ n, P11207935119320855738.a n = A005587 n

end A005587

/-! ## A005587.P4316504601809896158

`record[∑[∑[∑[n-2]+2]]]`
-/

namespace A005587.P4316504601809896158
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005587.P4316504601809896158

namespace A005587

/-- `record[∑[∑[∑[n-2]+2]]]` -/
def P4316504601809896158.Spec : Prop :=
  ∀ n, P4316504601809896158.a n = A005587 n

end A005587

/-! ## A005587.P4175600516149869273

`A106566(A000096(n+3)+n+1)`
-/

namespace A005587.P4175600516149869273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A000096 (n + 3) + (n + 1 : ℤ)).toNat

end

end A005587.P4175600516149869273

namespace A005587

/-- `A106566(A000096(n+3)+n+1)` -/
def P4175600516149869273.Spec : Prop :=
  ∀ n, P4175600516149869273.a n = A005587 n

end A005587

/-! ## A005587.P14182916428663280291

`A099039(A052905(n+2))`
-/

namespace A005587.P14182916428663280291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099039 (A052905 (n + 2)).toNat

end

end A005587.P14182916428663280291

namespace A005587

/-- `A099039(A052905(n+2))` -/
def P14182916428663280291.Spec : Prop :=
  ∀ n, P14182916428663280291.a n = A005587 n

end A005587

/-!
# A005590: a(0) = 0, a(1) = 1, a(2n) = a(n), a(2n+1) = a(n+1) - a(n).

The programs for A005590, the canonical program `A005590.P3379431448846241054` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005590 has offset 0).

The definition of A005590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005590.P1290664141020608955

`A281048(n)+a(n-1)` with `a(0)=0`
-/

namespace A005590.P1290664141020608955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A281048 n + a (n - 1)

end

end A005590.P1290664141020608955

namespace A005590

/-- `A281048(n)+a(n-1)` -/
def P1290664141020608955.Spec : Prop :=
  ∀ n, P1290664141020608955.a n = A005590 n

end A005590

/-! ## A005590.P8188429753743054201

`∑[A281048(abs(1-n)+1)]`
-/

namespace A005590.P8188429753743054201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281048 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005590.P8188429753743054201

namespace A005590

/-- `∑[A281048(abs(1-n)+1)]` -/
def P8188429753743054201.Spec : Prop :=
  ∀ n, P8188429753743054201.a n = A005590 n

end A005590

/-! ## A005590.P3635097935208081138

`Δ[A182093(A029578(n))]`
-/

namespace A005590.P3635097935208081138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182093 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005590.P3635097935208081138

namespace A005590

/-- `Δ[A182093(A029578(n))]` -/
def P3635097935208081138.Spec : Prop :=
  ∀ n, P3635097935208081138.a n = A005590 n

end A005590

/-! ## A005590.P6162290252153849428

`∑[A281048(n+1)]-A281048(n+1)`
-/

namespace A005590.P6162290252153849428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A281048 (n + 1)

end

end A005590.P6162290252153849428

namespace A005590

/-- `∑[A281048(n+1)]-A281048(n+1)` -/
def P6162290252153849428.Spec : Prop :=
  ∀ n, P6162290252153849428.a n = A005590 n

end A005590

/-! ## A005590.P7371320443948371407

`A182093(n)-A182093(A029578(n))`
-/

namespace A005590.P7371320443948371407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182093 n - A182093 (A029578 n).toNat

end

end A005590.P7371320443948371407

namespace A005590

/-- `A182093(n)-A182093(A029578(n))` -/
def P7371320443948371407.Spec : Prop :=
  ∀ n, P7371320443948371407.a n = A005590 n

end A005590

/-! ## A005590.P16773178375915310887

`A182093(n)-A182093(n-A057427(n))`
-/

namespace A005590.P16773178375915310887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182093 n - A182093 ((n : ℤ) - A057427 n).toNat

end

end A005590.P16773178375915310887

namespace A005590

/-- `A182093(n)-A182093(n-A057427(n))` -/
def P16773178375915310887.Spec : Prop :=
  ∀ n, P16773178375915310887.a n = A005590 n

end A005590

/-! ## A005590.P3870906580401016414

`A182093(n+1)-(A281048(n+1)+A182093(n))`
-/

namespace A005590.P3870906580401016414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182093 (n + 1) - (A281048 (n + 1) + A182093 n)

end

end A005590.P3870906580401016414

namespace A005590

/-- `A182093(n+1)-(A281048(n+1)+A182093(n))` -/
def P3870906580401016414.Spec : Prop :=
  ∀ n, P3870906580401016414.a n = A005590 n

end A005590

/-! ## A005590.P17378494005690231684

`Δ[A182093(n-A057427(n))]`
-/

namespace A005590.P17378494005690231684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182093 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005590.P17378494005690231684

namespace A005590

/-- `Δ[A182093(n-A057427(n))]` -/
def P17378494005690231684.Spec : Prop :=
  ∀ n, P17378494005690231684.a n = A005590 n

end A005590

/-! ## A005590.P3379431448846241054

`A145865(A122155(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A005590

/-- `A145865(A122155(n))` -/
def P3379431448846241054.Spec : Prop :=
  ∀ n, P3379431448846241054.a n = A005590 n

theorem P3379431448846241054.correct : P3379431448846241054.Spec := by
  intro n
  simp only [A005590]

end A005590

/-! ## A005590.P5173397648614913624

`A145865(A054429(n+1)+2)`
-/

namespace A005590.P5173397648614913624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145865 (A054429 (n + 1) + 2).toNat

end

end A005590.P5173397648614913624

namespace A005590

/-- `A145865(A054429(n+1)+2)` -/
def P5173397648614913624.Spec : Prop :=
  ∀ n, P5173397648614913624.a n = A005590 n

end A005590

/-! ## A005590.P1562689605451894187

`A182093(2*n)-A182093(n)`
-/

namespace A005590.P1562689605451894187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182093 (2 * n) - A182093 n

end

end A005590.P1562689605451894187

namespace A005590

/-- `A182093(2*n)-A182093(n)` -/
def P1562689605451894187.Spec : Prop :=
  ∀ n, P1562689605451894187.a n = A005590 n

end A005590

/-! ## A005590.P5121171632606023024

`A281048(2*(n+1))`
-/

namespace A005590.P5121171632606023024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281048 (2 * (n + 1))

end

end A005590.P5121171632606023024

namespace A005590

/-- `A281048(2*(n+1))` -/
def P5121171632606023024.Spec : Prop :=
  ∀ n, P5121171632606023024.a n = A005590 n

end A005590

/-! ## A005590.P16424564776281445063

`A145865(A345401(2*n+1))`
-/

namespace A005590.P16424564776281445063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145865 (A345401 (2 * n + 1)).toNat

end

end A005590.P16424564776281445063

namespace A005590

/-- `A145865(A345401(2*n+1))` -/
def P16424564776281445063.Spec : Prop :=
  ∀ n, P16424564776281445063.a n = A005590 n

end A005590

/-!
# A005591: Number of semigroups of order n with 3 idempotents, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A005591, there is no canonical definition to state claims against.
-/

/-! ## A005591.P14739644930033467252

`A058123(∑[n+2]+4)`
-/

namespace A005591.P14739644930033467252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058123 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A005591.P14739644930033467252

/-! ## A005591.P17569064394585926707

`A058123(A167614(n+1))+A031346(n)`
-/

namespace A005591.P17569064394585926707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058123 (A167614 (n + 1)).toNat + A031346 n

end

end A005591.P17569064394585926707

/-! ## A005591.P8343635185035834597

`A058123(A167614(n+1))+A036597(n)`
-/

namespace A005591.P8343635185035834597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058123 (A167614 (n + 1)).toNat + A036597 n

end

end A005591.P8343635185035834597

/-! ## A005591.P9808013327139199908

`A058123(A167614(n+1))+A036639(n)`
-/

namespace A005591.P9808013327139199908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058123 (A167614 (n + 1)).toNat + A036639 n

end

end A005591.P9808013327139199908

/-!
# A005592: a(n) = F(2n+1) + F(2n-1) - 1.

The programs for A005592, the canonical program `A005592.P14150685278040946245` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005592 has offset 0).

The definition of A005592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005592.P14150685278040946245

`A004146(n)+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005592

/-- `A004146(n)+1` -/
def P14150685278040946245.Spec : Prop :=
  ∀ n, P14150685278040946245.a n = A005592 n

theorem P14150685278040946245.correct : P14150685278040946245.Spec := by
  intro n
  simp only [A005592]

end A005592

/-! ## A005592.P2726395253278915779

`A000032(2*n)-1`
-/

namespace A005592.P2726395253278915779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) - 1

end

end A005592.P2726395253278915779

namespace A005592

/-- `A000032(2*n)-1` -/
def P2726395253278915779.Spec : Prop :=
  ∀ n, P2726395253278915779.a n = A005592 n

theorem P2726395253278915779.correct : P2726395253278915779.Spec := by
  intro n
  simp only [A005592, Nat.add_sub_cancel, A005592.P2726395253278915779.a, A005592.P14150685278040946245.a, A000032, A000032.P8352177345629330861.a, A004146, A004146.P7346826017881566823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005592

/-! ## A005592.P6272733787028386794

`floor((ϕ^n)²)`
-/

namespace A005592.P6272733787028386794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ n) ^ 2⌋

end

end A005592.P6272733787028386794

namespace A005592

/-- `floor((ϕ^n)²)` -/
def P6272733787028386794.Spec : Prop :=
  ∀ n, P6272733787028386794.a n = A005592 n

end A005592

/-! ## A005592.P5837804691764155932

`record[floor((-ϕ)^n)]`
-/

namespace A005592.P5837804691764155932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(-Real.goldenRatio) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005592.P5837804691764155932

namespace A005592

/-- `record[floor((-ϕ)^n)]` -/
def P5837804691764155932.Spec : Prop :=
  ∀ n, P5837804691764155932.a n = A005592 n

end A005592

/-! ## A005592.P11655388819532896479

`-ceil(-record[(-ϕ)^n])`
-/

namespace A005592.P11655388819532896479
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.goldenRatio) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈-f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A005592.P11655388819532896479

namespace A005592

/-- `-ceil(-record[(-ϕ)^n])` -/
def P11655388819532896479.Spec : Prop :=
  ∀ n, P11655388819532896479.a n = A005592 n

end A005592

/-! ## A005592.P16928255869088353043

`ceil(ϕ^(2*n)-atan(n))`
-/

namespace A005592.P16928255869088353043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (2 * n) - Real.arctan (n : ℝ)⌉

end

end A005592.P16928255869088353043

namespace A005592

/-- `ceil(ϕ^(2*n)-atan(n))` -/
def P16928255869088353043.Spec : Prop :=
  ∀ n, P16928255869088353043.a n = A005592 n

end A005592

/-! ## A005592.P11164254680191030871

`∑[ogf((1-2x+2x^2)/(1-3x+x^2))]`
-/

namespace A005592.P11164254680191030871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005592.P11164254680191030871

namespace A005592

/-- `∑[ogf((1-2x+2x^2)/(1-3x+x^2))]` -/
def P11164254680191030871.Spec : Prop :=
  ∀ n, P11164254680191030871.a n = A005592 n

end A005592

/-! ## A005592.P14414232931233463925

`ogf((1-2x+2x^2)/(1-4x+4x^2-x^3))`
-/

namespace A005592.P14414232931233463925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -4, 4, -1] n

end

end A005592.P14414232931233463925

namespace A005592

/-- `ogf((1-2x+2x^2)/(1-4x+4x^2-x^3))` -/
def P14414232931233463925.Spec : Prop :=
  ∀ n, P14414232931233463925.a n = A005592 n

end A005592

/-! ## A005592.P6906841779242762078

`-or(2, ceil(-ϕ^(2*n)))`
-/

namespace A005592.P6906841779242762078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 ⌈-(Real.goldenRatio ^ (2 * n))⌉

end

end A005592.P6906841779242762078

namespace A005592

/-- `-or(2, ceil(-ϕ^(2*n)))` -/
def P6906841779242762078.Spec : Prop :=
  ∀ n, P6906841779242762078.a n = A005592 n

end A005592

/-! ## A005592.P13089813987565347716

`3*a(n-1)+1-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A005592.P13089813987565347716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) + (1 - a (n - 2))

end

end A005592.P13089813987565347716

namespace A005592

/-- `3*a(n-1)+1-a(n-2)` -/
def P13089813987565347716.Spec : Prop :=
  ∀ n, P13089813987565347716.a n = A005592 n

end A005592

/-! ## A005592.P4824314198655571963

`1-(a(n-2)-3*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A005592.P4824314198655571963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (a (n - 2) - 3 * a (n - 1))

end

end A005592.P4824314198655571963

namespace A005592

/-- `1-(a(n-2)-3*a(n-1))` -/
def P4824314198655571963.Spec : Prop :=
  ∀ n, P4824314198655571963.a n = A005592 n

end A005592

/-! ## A005592.P43204517091753778

`a(n-1)+1+a(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A005592.P43204517091753778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A005592.P43204517091753778

namespace A005592

/-- `a(n-1)+1+a(n-1)+a(n-1)-a(n-2)` -/
def P43204517091753778.Spec : Prop :=
  ∀ n, P43204517091753778.a n = A005592 n

end A005592

/-! ## A005592.P13385553025592367680

`1-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A005592.P13385553025592367680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (a (n - 2) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A005592.P13385553025592367680

namespace A005592

/-- `1-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` -/
def P13385553025592367680.Spec : Prop :=
  ∀ n, P13385553025592367680.a n = A005592 n

end A005592

/-! ## A005592.P6859223582029411227

`A005248(n)-1`
-/

namespace A005592.P6859223582029411227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n - 1

end

end A005592.P6859223582029411227

namespace A005592

/-- `A005248(n)-1` -/
def P6859223582029411227.Spec : Prop :=
  ∀ n, P6859223582029411227.a n = A005592 n

theorem P6859223582029411227.correct : P6859223582029411227.Spec := by
  intro n
  simp only [A005592, Nat.add_sub_cancel, A005592.P6859223582029411227.a, A005592.P14150685278040946245.a, A004146, A004146.P7346826017881566823.a, A005248, A005248.P3255906601217542815.a, A000032, A000032.P8352177345629330861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005592

/-! ## A005592.P848021720087104297

`A065034(n)-2`
-/

namespace A005592.P848021720087104297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065034 n - 2

end

end A005592.P848021720087104297

namespace A005592

/-- `A065034(n)-2` -/
def P848021720087104297.Spec : Prop :=
  ∀ n, P848021720087104297.a n = A005592 n

theorem P848021720087104297.correct : P848021720087104297.Spec := by
  intro n
  simp only [A005592, Nat.add_sub_cancel, A005592.P848021720087104297.a, A005592.P14150685278040946245.a, A004146, A004146.P7346826017881566823.a, A065034, A065034.P7551508921847598807.a, A000032, A000032.P8352177345629330861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005592

/-! ## A005592.P14768811969167246709

`A014217(2*n)`
-/

namespace A005592.P14768811969167246709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (2 * n)

end

end A005592.P14768811969167246709

namespace A005592

/-- `A014217(2*n)` -/
def P14768811969167246709.Spec : Prop :=
  ∀ n, P14768811969167246709.a n = A005592 n

end A005592

/-! ## A005592.P5793703442143794334

`A092387(n)-3`
-/

namespace A005592.P5793703442143794334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092387 n - 3

end

end A005592.P5793703442143794334

namespace A005592

/-- `A092387(n)-3` -/
def P5793703442143794334.Spec : Prop :=
  ∀ n, P5793703442143794334.a n = A005592 n

end A005592

/-! ## A005592.P3678639144152535982

`A098600(2*n)`
-/

namespace A005592.P3678639144152535982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 (2 * n)

end

end A005592.P3678639144152535982

namespace A005592

/-- `A098600(2*n)` -/
def P3678639144152535982.Spec : Prop :=
  ∀ n, P3678639144152535982.a n = A005592 n

end A005592

/-! ## A005592.P14394010354696913087

`A355021(2*n)`
-/

namespace A005592.P14394010354696913087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355021 (2 * n)

end

end A005592.P14394010354696913087

namespace A005592

/-- `A355021(2*n)` -/
def P14394010354696913087.Spec : Prop :=
  ∀ n, P14394010354696913087.a n = A005592 n

end A005592

/-! ## A005592.P155464151252236296

`A192660(4*n)`
-/

namespace A005592.P155464151252236296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192660 (4 * n)

end

end A005592.P155464151252236296

namespace A005592

/-- `A192660(4*n)` -/
def P155464151252236296.Spec : Prop :=
  ∀ n, P155464151252236296.a n = A005592 n

end A005592

/-!
# A005593: a(n) = (F(2n+1) + F(2n-1) + F(n+3) - 2)/2, where F() = Fibonacci numbers A000045.

The programs for A005593, the canonical program `A005593.P4912739495604859043` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005593 has offset 1).

The definition of A005593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005593.P4912739495604859043

`(A000045(2*(n+1)+1)+A000045(2*(n+1)-1)+A000045(n+4)-2)/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005593

/-- `(A000045(2*(n+1)+1)+A000045(2*(n+1)-1)+A000045(n+4)-2)/2` -/
def P4912739495604859043.Spec : Prop :=
  ∀ n, P4912739495604859043.a n = (A005593 (n + 1) : ℚ)

end A005593

/-! ## A005593.P3210736227062726643

`∑[∑[A049680(n)]]-A001911(n)`
-/

namespace A005593.P3210736227062726643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001911 n

end

end A005593.P3210736227062726643

namespace A005593

/-- `∑[∑[A049680(n)]]-A001911(n)` -/
def P3210736227062726643.Spec : Prop :=
  ∀ n, P3210736227062726643.a n = A005593 (n + 1)

end A005593

/-! ## A005593.P14895371567403433716

`∑[A088305(n)+A005207(n+1)]`
-/

namespace A005593.P14895371567403433716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n + A005207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005593.P14895371567403433716

namespace A005593

/-- `∑[A088305(n)+A005207(n+1)]` -/
def P14895371567403433716.Spec : Prop :=
  ∀ n, P14895371567403433716.a n = A005593 (n + 1)

end A005593

/-! ## A005593.P3584207400330890765

`A051450(n+2)-∑[A056014(n)]`
-/

namespace A005593.P3584207400330890765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051450 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005593.P3584207400330890765

namespace A005593

/-- `A051450(n+2)-∑[A056014(n)]` -/
def P3584207400330890765.Spec : Prop :=
  ∀ n, P3584207400330890765.a n = A005593 (n + 1)

end A005593

/-! ## A005593.P17625671380574149641

`A005207(n+1)+∑[A051450(n+1)]`
-/

namespace A005593.P17625671380574149641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005593.P17625671380574149641

namespace A005593

/-- `A005207(n+1)+∑[A051450(n+1)]` -/
def P17625671380574149641.Spec : Prop :=
  ∀ n, P17625671380574149641.a n = A005593 (n + 1)

end A005593

/-! ## A005593.P18393301565204404222

`A000045(2*n+1)+∑[A005207(n+1)]`
-/

namespace A005593.P18393301565204404222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005593.P18393301565204404222

namespace A005593

/-- `A000045(2*n+1)+∑[A005207(n+1)]` -/
def P18393301565204404222.Spec : Prop :=
  ∀ n, P18393301565204404222.a n = A005593 (n + 1)

end A005593

/-! ## A005593.P2952489883013011679

`A005207(n+1)+A296516(n+1)+A000217(n)`
-/

namespace A005593.P2952489883013011679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1) + (A296516 (n + 1) + A000217 n)

end

end A005593.P2952489883013011679

namespace A005593

/-- `A005207(n+1)+A296516(n+1)+A000217(n)` -/
def P2952489883013011679.Spec : Prop :=
  ∀ n, P2952489883013011679.a n = A005593 (n + 1)

end A005593

/-! ## A005593.P5613676107496529461

`A126358(n+1)-A032097(n+2)`
-/

namespace A005593.P5613676107496529461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126358 (n + 1) - A032097 (n + 2)

end

end A005593.P5613676107496529461

namespace A005593

/-- `A126358(n+1)-A032097(n+2)` -/
def P5613676107496529461.Spec : Prop :=
  ∀ n, P5613676107496529461.a n = A005593 (n + 1)

end A005593

/-!
# A005594: States of a dynamic storage system.

The programs for A005594, the canonical program `A005594.P12083784087894004788` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005594 has offset 0).

The definition of A005594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005594.P11922272336235319706

`∑{d}[n, A032170(#)]+1`
-/

namespace A005594.P11922272336235319706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032170 d + 1

end

end A005594.P11922272336235319706

namespace A005594

/-- `∑{d}[n, A032170(#)]+1` -/
def P11922272336235319706.Spec : Prop :=
  ∀ n, P11922272336235319706.a n = A005594 n

end A005594

/-! ## A005594.P12083784087894004788

`A057427(n)+A032198(A028310(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A005594

/-- `A057427(n)+A032198(A028310(n))` -/
def P12083784087894004788.Spec : Prop :=
  ∀ n, P12083784087894004788.a n = A005594 n

theorem P12083784087894004788.correct : P12083784087894004788.Spec := by
  intro n
  simp only [A005594]

end A005594

/-! ## A005594.P8726116455487786939

`A032198(A028310(n))+char[A154958(n)]`
-/

namespace A005594.P8726116455487786939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032198 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A005594.P8726116455487786939

namespace A005594

/-- `A032198(A028310(n))+char[A154958(n)]` -/
def P8726116455487786939.Spec : Prop :=
  ∀ n, P8726116455487786939.a n = A005594 n

end A005594

/-! ## A005594.P530844662171775251

`A032198(A028310(n))+char[A109812(n+1)]`
-/

namespace A005594.P530844662171775251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109812 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032198 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A005594.P530844662171775251

namespace A005594

/-- `A032198(A028310(n))+char[A109812(n+1)]` -/
def P530844662171775251.Spec : Prop :=
  ∀ n, P530844662171775251.a n = A005594 n

end A005594

/-! ## A005594.P16133188644750979992

`A208723(A028310(n))-A014963(4*n+2)`
-/

namespace A005594.P16133188644750979992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208723 (A028310 n).toNat - A014963 (4 * n + 2)

end

end A005594.P16133188644750979992

namespace A005594

/-- `A208723(A028310(n))-A014963(4*n+2)` -/
def P16133188644750979992.Spec : Prop :=
  ∀ n, P16133188644750979992.a n = A005594 n

end A005594

/-!
# A005595: States of a dynamic storage system.

The programs for A005595, the canonical program `A005595.P9132776123884695998` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005595 has offset 0).

The definition of A005595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005595.P9132776123884695998

`(A005594(n)+A001911(n)+1)/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A005595

/-- `(A005594(n)+A001911(n)+1)/2` -/
def P9132776123884695998.Spec : Prop :=
  ∀ n, P9132776123884695998.a n = (A005595 n : ℚ)

end A005595

/-! ## A005595.P4031793293903099469

`A014682(A001911(n)+A005594(n)+1)`
-/

namespace A005595.P4031793293903099469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A001911 n + (A005594 n + 1)).toNat

end

end A005595.P4031793293903099469

namespace A005595

/-- `A014682(A001911(n)+A005594(n)+1)` -/
def P4031793293903099469.Spec : Prop :=
  ∀ n, P4031793293903099469.a n = A005595 n

end A005595

/-! ## A005595.P8953577526257560354

`A008619(A005594(n)+A001911(n))`
-/

namespace A005595.P8953577526257560354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005594 n + A001911 n).toNat

end

end A005595.P8953577526257560354

namespace A005595

/-- `A008619(A005594(n)+A001911(n))` -/
def P8953577526257560354.Spec : Prop :=
  ∀ n, P8953577526257560354.a n = A005595 n

end A005595

/-! ## A005595.P17062168601323887974

`A004526(A020695(n)+A005594(n))`
-/

namespace A005595.P17062168601323887974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A020695 n + A005594 n).toNat

end

end A005595.P17062168601323887974

namespace A005595

/-- `A004526(A020695(n)+A005594(n))` -/
def P17062168601323887974.Spec : Prop :=
  ∀ n, P17062168601323887974.a n = A005595 n

end A005595

/-! ## A005595.P14327027925347388916

`A065033(A005594(n)+A001911(n))`
-/

namespace A005595.P14327027925347388916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A005594 n + A001911 n).toNat

end

end A005595.P14327027925347388916

namespace A005595

/-- `A065033(A005594(n)+A001911(n))` -/
def P14327027925347388916.Spec : Prop :=
  ∀ n, P14327027925347388916.a n = A005595 n

end A005595

/-!
# A005598: a(n) = 1 + Sum_{i=1..n} (n-i+1)*phi(i).

The programs for A005598, the canonical program `A005598.P13593438204838445571` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005598 has offset 0).

The definition of A005598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005598.P7918284267793271267

`A103116(n)+1`
-/

namespace A005598.P7918284267793271267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n + 1

end

end A005598.P7918284267793271267

namespace A005598

/-- `A103116(n)+1` -/
def P7918284267793271267.Spec : Prop :=
  ∀ n, P7918284267793271267.a n = A005598 n

theorem P7918284267793271267.correct : P7918284267793271267.Spec := by
  intro n
  simp only [A005598, Nat.add_sub_cancel, A005598.P7918284267793271267.a, A005598.P13593438204838445571.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A103116, A103116.P13446593034198861880.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P11293466613211840242.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005598

/-! ## A005598.P14814407691917663550

`∑[A002088(n)]+1`
-/

namespace A005598.P14814407691917663550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005598.P14814407691917663550

namespace A005598

/-- `∑[A002088(n)]+1` -/
def P14814407691917663550.Spec : Prop :=
  ∀ n, P14814407691917663550.a n = A005598 n

end A005598

/-! ## A005598.P7218951597544513864

`∑[A005728(n)]-n`
-/

namespace A005598.P7218951597544513864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A005598.P7218951597544513864

namespace A005598

/-- `∑[A005728(n)]-n` -/
def P7218951597544513864.Spec : Prop :=
  ∀ n, P7218951597544513864.a n = A005598 n

end A005598

/-! ## A005598.P14791863657854469193

`(A274008(n)+1)/2`
-/

namespace A005598.P14791863657854469193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274008 n + 1 : ℚ) / 2

end

end A005598.P14791863657854469193

namespace A005598

/-- `(A274008(n)+1)/2` -/
def P14791863657854469193.Spec : Prop :=
  ∀ n, P14791863657854469193.a n = (A005598 n : ℚ)

theorem P14791863657854469193.correct : P14791863657854469193.Spec := by
  intro n
  simp only [A005598, Nat.add_sub_cancel, A005598.P14791863657854469193.a, A005598.P13593438204838445571.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A274008, A274008.P14054883072027176064.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P11293466613211840242.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005598

/-! ## A005598.P3018488242292477059

`A049688(n)+1-n`
-/

namespace A005598.P3018488242292477059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 n + (1 - (n : ℤ))

end

end A005598.P3018488242292477059

namespace A005598

/-- `A049688(n)+1-n` -/
def P3018488242292477059.Spec : Prop :=
  ∀ n, P3018488242292477059.a n = A005598 n

theorem P3018488242292477059.correct : P3018488242292477059.Spec := by
  intro n
  simp only [A005598, Nat.add_sub_cancel, A005598.P3018488242292477059.a, A005598.P13593438204838445571.a, A049688, A049688.P4025135909260073091.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P11293466613211840242.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005598

/-! ## A005598.P10619015090428486657

`∑[abs(1-A049643(n))]`
-/

namespace A005598.P10619015090428486657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A049643 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005598.P10619015090428486657

namespace A005598

/-- `∑[abs(1-A049643(n))]` -/
def P10619015090428486657.Spec : Prop :=
  ∀ n, P10619015090428486657.a n = A005598 n

end A005598

/-! ## A005598.P1780381124495858635

`∑[A049696(n)/2]+1`
-/

namespace A005598.P1780381124495858635
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049696 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005598.P1780381124495858635

namespace A005598

/-- `∑[A049696(n)/2]+1` -/
def P1780381124495858635.Spec : Prop :=
  ∀ n, P1780381124495858635.a n = (A005598 n : ℚ)

end A005598

/-! ## A005598.P13593438204838445571

`A092249(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A005598

/-- `A092249(n)+a(n-1)` -/
def P13593438204838445571.Spec : Prop :=
  ∀ n, P13593438204838445571.a n = A005598 n

theorem P13593438204838445571.correct : P13593438204838445571.Spec := by
  intro n
  simp only [A005598]

end A005598

/-! ## A005598.P1227203161427626428

`a(n-1)+A015614(n)+1` with `a(0)=1`
-/

namespace A005598.P1227203161427626428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A015614 n + 1)

end

end A005598.P1227203161427626428

namespace A005598

/-- `a(n-1)+A015614(n)+1` -/
def P1227203161427626428.Spec : Prop :=
  ∀ n, P1227203161427626428.a n = A005598 n

end A005598

/-! ## A005598.P9091933035554217388

`∑[A000010(n)+a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A005598.P9091933035554217388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000010 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005598.P9091933035554217388

namespace A005598

/-- `∑[A000010(n)+a(n-1)]` -/
def P9091933035554217388.Spec : Prop :=
  ∀ n, P9091933035554217388.a n = A005598 n

end A005598

/-! ## A005598.P3566304810244282783

`a(n-1)+A015613(n)+n` with `a(0)=1`
-/

namespace A005598.P3566304810244282783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A015613 n + (n : ℤ))

end

end A005598.P3566304810244282783

namespace A005598

/-- `a(n-1)+A015613(n)+n` -/
def P3566304810244282783.Spec : Prop :=
  ∀ n, P3566304810244282783.a n = A005598 n

end A005598

/-! ## A005598.P14418271090140219851

`∑[∑[A000010(abs(1-n)+1)]]-n`
-/

namespace A005598.P14418271090140219851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A005598.P14418271090140219851

namespace A005598

/-- `∑[∑[A000010(abs(1-n)+1)]]-n` -/
def P14418271090140219851.Spec : Prop :=
  ∀ n, P14418271090140219851.a n = A005598 n

end A005598

/-! ## A005598.P12917944642153763949

`∑[∑[A109606(abs(1-n)+1)+1]]-n`
-/

namespace A005598.P12917944642153763949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (|1 - (n : ℤ)| + 1).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A005598.P12917944642153763949

namespace A005598

/-- `∑[∑[A109606(abs(1-n)+1)+1]]-n` -/
def P12917944642153763949.Spec : Prop :=
  ∀ n, P12917944642153763949.a n = A005598 n

end A005598

/-! ## A005598.P6435861307230924551

`A274008(n)-A103116(n)`
-/

namespace A005598.P6435861307230924551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274008 n - A103116 n

end

end A005598.P6435861307230924551

namespace A005598

/-- `A274008(n)-A103116(n)` -/
def P6435861307230924551.Spec : Prop :=
  ∀ n, P6435861307230924551.a n = A005598 n

theorem P6435861307230924551.correct : P6435861307230924551.Spec := by
  intro n
  simp only [A005598, Nat.add_sub_cancel, A005598.P6435861307230924551.a, A005598.P13593438204838445571.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A103116, A103116.P13446593034198861880.a, A274008, A274008.P14054883072027176064.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P11293466613211840242.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005598

/-! ## A005598.P17915072110966554903

`∑[A015614(A028310(n))+1]`
-/

namespace A005598.P17915072110966554903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (A028310 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005598.P17915072110966554903

namespace A005598

/-- `∑[A015614(A028310(n))+1]` -/
def P17915072110966554903.Spec : Prop :=
  ∀ n, P17915072110966554903.a n = A005598 n

end A005598

/-! ## A005598.P13888844978930763787

`A001489(n)+A049688(n)+1`
-/

namespace A005598.P13888844978930763787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A049688 n + 1)

end

end A005598.P13888844978930763787

namespace A005598

/-- `A001489(n)+A049688(n)+1` -/
def P13888844978930763787.Spec : Prop :=
  ∀ n, P13888844978930763787.a n = A005598 n

theorem P13888844978930763787.correct : P13888844978930763787.Spec := by
  intro n
  simp only [A005598, Nat.add_sub_cancel, A005598.P13888844978930763787.a, A005598.P13593438204838445571.a, A001489, A001489.P15233530513763566776.a, A049688, A049688.P4025135909260073091.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P11293466613211840242.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005598

/-! ## A005598.P14717503589110870184

`A135342(n+1)+A057428(n)`
-/

namespace A005598.P14717503589110870184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135342 (n + 1) + A057428 n

end

end A005598.P14717503589110870184

namespace A005598

/-- `A135342(n+1)+A057428(n)` -/
def P14717503589110870184.Spec : Prop :=
  ∀ n, P14717503589110870184.a n = A005598 n

end A005598

/-! ## A005598.P5886142743330235353

`A135342(n+1)-A057427(n)`
-/

namespace A005598.P5886142743330235353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135342 (n + 1) - A057427 n

end

end A005598.P5886142743330235353

namespace A005598

/-- `A135342(n+1)-A057427(n)` -/
def P5886142743330235353.Spec : Prop :=
  ∀ n, P5886142743330235353.a n = A005598 n

end A005598

/-! ## A005598.P5641611906232160403

`A049703(n+1)+A049703(n+1)-A002088(n+1)`
-/

namespace A005598.P5641611906232160403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049703 (n + 1) + (A049703 (n + 1) - A002088 (n + 1))

end

end A005598.P5641611906232160403

namespace A005598

/-- `A049703(n+1)+A049703(n+1)-A002088(n+1)` -/
def P5641611906232160403.Spec : Prop :=
  ∀ n, P5641611906232160403.a n = A005598 n

end A005598

/-!
# A005599: Running sum of every third term in the {+1,-1}-version of Thue-Morse sequence A010060.

The programs for A005599, the canonical program `A005599.P10071438624159496024` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005599 has offset 0).

The definition of A005599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005599.P10071438624159496024

`∑[A106400(3*n)]-A106400(3*n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A005599

/-- `∑[A106400(3*n)]-A106400(3*n)` -/
def P10071438624159496024.Spec : Prop :=
  ∀ n, P10071438624159496024.a n = A005599 n

theorem P10071438624159496024.correct : P10071438624159496024.Spec := by
  intro n
  simp only [A005599]

end A005599

/-! ## A005599.P15985482967907967733

`∑[A089045(6*n+1)]-A089045(6*n+1)`
-/

namespace A005599.P15985482967907967733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089045 (6 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A089045 (6 * n + 1)

end

end A005599.P15985482967907967733

namespace A005599

/-- `∑[A089045(6*n+1)]-A089045(6*n+1)` -/
def P15985482967907967733.Spec : Prop :=
  ∀ n, P15985482967907967733.a n = A005599 n

end A005599

