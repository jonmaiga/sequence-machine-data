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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A054503: Table T(n,k) giving log_b(k), 1<=k<=p, where p = n-th prime and b = smallest primitive root of p (A001918).

The programs for A054503, there is no canonical definition to state claims against.
-/

/-! ## A054503.P308328987743300775

`and(A001222(A029895(n)), A039060(n+1))`
-/

namespace A054503.P308328987743300775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A029895 n).toNat) (A039060 (n + 1))

end

end A054503.P308328987743300775

/-! ## A054503.P3560566285892035102

`xor(A001842(A189052(n)), A002262(n))`
-/

namespace A054503.P3560566285892035102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001842 (A189052 n).toNat) (A002262 n)

end

end A054503.P3560566285892035102

/-! ## A054503.P8325014828527771965

`A324192(A051717(n)*A152414(3*n+1))`
-/

namespace A054503.P8325014828527771965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324192 (A051717 n * A152414 (3 * n + 1)).toNat

end

end A054503.P8325014828527771965

/-! ## A054503.P14195861692441554272

`A071127(2*n+5)-A317675(A007825(n))`
-/

namespace A054503.P14195861692441554272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071127 (2 * n + 5) - A317675 (A007825 n).toNat

end

end A054503.P14195861692441554272

/-!
# A054504: Numbers n such that Mordell's equation y^2 = x^3 + n has no integral solutions.

The programs for A054504, there is no canonical definition to state claims against.
-/

/-! ## A054504.P833322377769293376

`eq[A000007(A025505(n+1)), A134108(n+1)]+1`
-/

namespace A054504.P833322377769293376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A025505 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054504.P833322377769293376

/-! ## A054504.P13710065476004881636

`eq[A000038(n), A134108(A123108(2*n))]`
-/

namespace A054504.P13710065476004881636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054504.P13710065476004881636

/-! ## A054504.P16611589795698706952

`eq[A000007(A056239(2*(n+2))), A134108(n+1)]+1`
-/

namespace A054504.P16611589795698706952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A056239 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054504.P16611589795698706952

/-! ## A054504.P12103420731604077768

`eq[A000007(A265358(n)), A081119(n+1)]+1`
-/

namespace A054504.P12103420731604077768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A265358 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054504.P12103420731604077768

/-! ## A054504.P6550460655434004507

`eq[A000007(A077028(3*n+2)), A134108(n+1)]+1`
-/

namespace A054504.P6550460655434004507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A077028 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054504.P6550460655434004507

/-! ## A054504.P16558664699248807811

`eq[A000007(A138166(n+1)), A134108(n+1)]+1`
-/

namespace A054504.P16558664699248807811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A138166 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054504.P16558664699248807811

/-! ## A054504.P9953404235385383739

`eq[A000007(A019426(n)), A134108(n+1)]+1`
-/

namespace A054504.P9953404235385383739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A019426 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054504.P9953404235385383739

/-! ## A054504.P6854753442168577425

`eq[A000007(A296150(3*(n+1))), A081119(n+1)]+1`
-/

namespace A054504.P6854753442168577425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A296150 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054504.P6854753442168577425

/-! ## A054504.P10316635356335102108

`eq[A000007(3*(n+1)), A081119(n+1)]+1`
-/

namespace A054504.P10316635356335102108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054504.P10316635356335102108

/-! ## A054504.P12207697598483344790

`eq[A060950(A002151(n+1)), A081119(n+1)]+1`
-/

namespace A054504.P12207697598483344790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (A002151 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054504.P12207697598483344790

/-! ## A054504.P13102077457967229468

`eq[3, A258928(A134108(n+1)²)]+1`
-/

namespace A054504.P13102077457967229468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258928 (A134108 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054504.P13102077457967229468

/-! ## A054504.P1875573870712167401

`eq[0, A081119(A233583(n+1))]`
-/

namespace A054504.P1875573870712167401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054504.P1875573870712167401

/-! ## A054504.P6468306254949764537

`eq[A000038(n), A134108(A233583(n+1))]`
-/

namespace A054504.P6468306254949764537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054504.P6468306254949764537

/-! ## A054504.P16246265978168598827

`eq[0, A134108(A233583(n+1))+A000007(n)]`
-/

namespace A054504.P16246265978168598827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (A233583 (n + 1)).toNat + A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054504.P16246265978168598827

/-! ## A054504.P12012714072812199759

`eq[0, A134108(A233583(n+1))%A016028(n+5)]`
-/

namespace A054504.P12012714072812199759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134108 (A233583 (n + 1)).toNat) (A016028 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054504.P12012714072812199759

/-! ## A054504.P8716548298943502520

`eq[0, A134108(A233583(n+1))]%A053130(n+8)`
-/

namespace A054504.P8716548298943502520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A053130 (n + 8))

end

end A054504.P8716548298943502520

/-! ## A054504.P108226743018298444

`eq[A060952(A002156(n+1)), A081119(n+1)]+1`
-/

namespace A054504.P108226743018298444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (A002156 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054504.P108226743018298444

/-!
# A054505: Log_b 2 where b is smallest primitive root (A001918) mod n-th prime.

The programs for A054505, there is no canonical definition to state claims against.
-/

/-! ## A054505.P10256155610511263112

`A054503(A101301(n+1)+1)`
-/

namespace A054505.P10256155610511263112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (A101301 (n + 1) + 1).toNat

end

end A054505.P10256155610511263112

/-! ## A054505.P3812653553679000503

`A054503(A007504(n+1)-n)`
-/

namespace A054505.P3812653553679000503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (A007504 (n + 1) - (n : ℤ)).toNat

end

end A054505.P3812653553679000503

/-! ## A054505.P7875121692014330566

`A054503(∑[A006093(n+1)]+1)`
-/

namespace A054505.P7875121692014330566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A054505.P7875121692014330566

/-! ## A054505.P12937913076551607360

`A054503(∑[2*A130290(n+1)])`
-/

namespace A054505.P12937913076551607360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054505.P12937913076551607360

/-! ## A054505.P12712876566063357884

`A054503(∑[A000040(n+1)]-n)`
-/

namespace A054505.P12712876566063357884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A054505.P12712876566063357884

/-! ## A054505.P2993890001396537406

`A054503(A237589(n+1)+1-n)`
-/

namespace A054505.P2993890001396537406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (A237589 (n + 1) + (1 - (n : ℤ))).toNat

end

end A054505.P2993890001396537406

/-! ## A054505.P16811634838524213098

`A054503(A060939(n+1)-(2*n+1))`
-/

namespace A054505.P16811634838524213098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (A060939 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A054505.P16811634838524213098

/-! ## A054505.P10840633371811173964

`A054503(A014692(n+1)+A007504(n))`
-/

namespace A054505.P10840633371811173964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (A014692 (n + 1) + A007504 n).toNat

end

end A054505.P10840633371811173964

/-! ## A054505.P13193457128023374257

`A054503(A065890(n+1)+A036439(n+1))`
-/

namespace A054505.P13193457128023374257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (A065890 (n + 1) + A036439 (n + 1)).toNat

end

end A054505.P13193457128023374257

/-! ## A054505.P9494343486244069269

`A054503(A014692(n+1)+A036439(n+1)-2)`
-/

namespace A054505.P9494343486244069269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (A014692 (n + 1) + (A036439 (n + 1) - 2)).toNat

end

end A054505.P9494343486244069269

/-!
# A054506: Log_b 3 where b is smallest primitive root (A001918) mod n-th prime.

The programs for A054506, there is no canonical definition to state claims against.
-/

/-! ## A054506.P2909945446083531730

`A054503(A101301(n+2)+2)`
-/

namespace A054506.P2909945446083531730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (A101301 (n + 2) + 2).toNat

end

end A054506.P2909945446083531730

/-! ## A054506.P12792411912060470250

`A054503(A007504(n+2)-n)`
-/

namespace A054506.P12792411912060470250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (A007504 (n + 2) - (n : ℤ)).toNat

end

end A054506.P12792411912060470250

/-!
# A054507: Log_b 4 where b is smallest primitive root (A001918) mod n-th prime.

The programs for A054507, there is no canonical definition to state claims against.
-/

/-! ## A054507.P1180316593224062484

`A005843(A054505(n+3)%A005097(n+2))`
-/

namespace A054507.P1180316593224062484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A054505 (n + 3)) (A005097 (n + 2))).toNat

end

end A054507.P1180316593224062484

/-! ## A054507.P2672244422439981832

`A005843(A054505(n+3))%A006093(n+3)`
-/

namespace A054507.P2672244422439981832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A054505 (n + 3)).toNat) (A006093 (n + 3))

end

end A054507.P2672244422439981832

/-! ## A054507.P6623208172285088812

`A054503(A036439(n+2)+A014692(n+2))`
-/

namespace A054507.P6623208172285088812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (A036439 (n + 2) + A014692 (n + 2)).toNat

end

end A054507.P6623208172285088812

/-!
# A054509: Log_b 6 where b is smallest primitive root (A001918) mod n-th prime.

The programs for A054509, there is no canonical definition to state claims against.
-/

/-! ## A054509.P5162447850112644219

`A054503(A101301(n+3)+5)`
-/

namespace A054509.P5162447850112644219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (A101301 (n + 3) + 5).toNat

end

end A054509.P5162447850112644219

/-!
# A054510: Log_b 7 where b is smallest primitive root (A001918) mod n-th prime.

The programs for A054510, there is no canonical definition to state claims against.
-/

/-! ## A054510.P7034095835912843658

`A054503(A036439(n+5)-n)`
-/

namespace A054510.P7034095835912843658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (A036439 (n + 5) - (n : ℤ)).toNat

end

end A054510.P7034095835912843658

/-!
# A054514: Number of ways to place non-crossing diagonals in convex (n+4)-gon so as to create no triangles or quadrilaterals.

The programs for A054514, there is no canonical definition to state claims against.
-/

/-! ## A054514.P917427335658017836

`A340786(n+1)+A033109(A100320(n))`
-/

namespace A054514.P917427335658017836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340786 (n + 1) + A033109 (A100320 n).toNat

end

end A054514.P917427335658017836

/-!
# A054515: Number of ways to place non-intersecting diagonals in convex (n+2)-gon so as to create no quadrilaterals.

The programs for A054515, there is no canonical definition to state claims against.
-/

/-! ## A054515.P11710048307591688095

`A138999(A149328(n+1))`
-/

namespace A054515.P11710048307591688095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A149328 (n + 1)).toNat

end

end A054515.P11710048307591688095

/-! ## A054515.P12889702627715808678

`A008621(A002082(n)*A366095(n))`
-/

namespace A054515.P12889702627715808678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A002082 n * A366095 n).toNat

end

end A054515.P12889702627715808678

/-! ## A054515.P14002607484454231116

`A110656(A197601(n)+A052709(n+2))`
-/

namespace A054515.P14002607484454231116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A197601 n + A052709 (n + 2)).toNat

end

end A054515.P14002607484454231116

/-!
# A054516: Equivalent of the Kurepa hypothesis for left factorial.

The programs for A054516, there is no canonical definition to state claims against.
-/

/-! ## A054516.P1846194181681309140

`n*(1-a(n-1)+n)` with `a(0)=0`
-/

namespace A054516.P1846194181681309140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (1 - a (n - 1) + (n : ℤ))

end

end A054516.P1846194181681309140

/-! ## A054516.P12990554017798631291

`n*(1-(a(n-1)-n))` with `a(0)=0`
-/

namespace A054516.P12990554017798631291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (1 - (a (n - 1) - (n : ℤ)))

end

end A054516.P12990554017798631291

/-! ## A054516.P240039941009696397

`(1-a(n-1)+n)/n^(-1)` with `a(0)=0`
-/

namespace A054516.P240039941009696397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (1 - a (n - 1) + (n : ℚ)) / (n : ℚ) ^ (-1 : ℤ)

end

end A054516.P240039941009696397

/-! ## A054516.P13318293066973918012

`(1-(a(n-1)-n))/n^(-1)` with `a(0)=0`
-/

namespace A054516.P13318293066973918012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (1 - (a (n - 1) - (n : ℚ))) / (n : ℚ) ^ (-1 : ℤ)

end

end A054516.P13318293066973918012

/-! ## A054516.P8260439943806614691

`(n+1-a(n-1))/((n+1)/n-1)` with `a(0)=0`
-/

namespace A054516.P8260439943806614691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1 : ℚ) - a (n - 1)) / ((n + 1 : ℚ) / (n : ℚ) - 1)

end

end A054516.P8260439943806614691

/-! ## A054516.P12973465581515797850

`2*A009574(n)`
-/

namespace A054516.P12973465581515797850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009574 n

end

end A054516.P12973465581515797850

/-! ## A054516.P14154055337919684267

`1-A182386(n)+n`
-/

namespace A054516.P14154055337919684267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A182386 n + (n : ℤ)

end

end A054516.P14154055337919684267

/-! ## A054516.P10776361003582662037

`A051398(n+3)/2-1`
-/

namespace A054516.P10776361003582662037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051398 (n + 3) : ℚ) / 2 - 1

end

end A054516.P10776361003582662037

/-! ## A054516.P13550393432825797752

`2-A179508(n+1)+n`
-/

namespace A054516.P13550393432825797752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A179508 (n + 1) + (n : ℤ)

end

end A054516.P13550393432825797752

/-! ## A054516.P3412786559309217564

`A002378(n)-n*a(n-1)` with `a(0)=0`
-/

namespace A054516.P3412786559309217564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002378 n - (n : ℤ) * a (n - 1)

end

end A054516.P3412786559309217564

/-!
# A054518: Emirpnons (nonprimes whose reversal is a different nonprime).

The programs for A054518, there is no canonical definition to state claims against.
-/

/-! ## A054518.P7746659675600130786

`filter[A067013(n+1), A377191(#)]`
-/

namespace A054518.P7746659675600130786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A054518.P7746659675600130786

/-! ## A054518.P8668156006204578137

`lt[2, A326968(A086150(n+1))]+1`
-/

namespace A054518.P8668156006204578137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326968 (A086150 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A054518.P8668156006204578137

/-! ## A054518.P1703182727910126706

`eq[2, A086150(n+1)]-A260196(A259770(n+1))`
-/

namespace A054518.P1703182727910126706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A260196 (A259770 (n + 1)).toNat

end

end A054518.P1703182727910126706

/-! ## A054518.P13762972861181285613

`eq[2, A043537(A020338(n+1))-A039999(n+1)]+1`
-/

namespace A054518.P13762972861181285613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A020338 (n + 1)).toNat - A039999 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054518.P13762972861181285613

/-!
# A054519: Number of increasing arithmetic progressions of nonnegative integers ending in n, including those of length 1 or 2.

The programs for A054519, the canonical program `A054519.P3292618312068876157` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054519 has offset 0).

The definition of A054519 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054519.P3292618312068876157

`A006218(n)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054519

/-- `A006218(n)+1` -/
def P3292618312068876157.Spec : Prop :=
  ∀ n, P3292618312068876157.a n = A054519 n

theorem P3292618312068876157.correct : P3292618312068876157.Spec := by
  intro n
  simp only [A054519]

end A054519

/-! ## A054519.P13639933302058458900

`a(n-1)+A000005(n)` with `a(0)=1`
-/

namespace A054519.P13639933302058458900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000005 n

end

end A054519.P13639933302058458900

namespace A054519

/-- `a(n-1)+A000005(n)` -/
def P13639933302058458900.Spec : Prop :=
  ∀ n, P13639933302058458900.a n = A054519 n

end A054519

/-! ## A054519.P2222304871551404748

`∑[∏{e}[n, #+1]]`
-/

namespace A054519.P2222304871551404748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054519.P2222304871551404748

namespace A054519

/-- `∑[∏{e}[n, #+1]]` -/
def P2222304871551404748.Spec : Prop :=
  ∀ n, (P2222304871551404748.a n : ℤ) = A054519 n

end A054519

/-! ## A054519.P6481136763808863819

`∑[∏{p}[n, val(n, #)+1]]`
-/

namespace A054519.P6481136763808863819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (SequenceMachineLib.valuation n p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054519.P6481136763808863819

namespace A054519

/-- `∑[∏{p}[n, val(n, #)+1]]` -/
def P6481136763808863819.Spec : Prop :=
  ∀ n, (P6481136763808863819.a n : ℤ) = A054519 n

end A054519

/-! ## A054519.P12659951485536058985

`∑[∑{d}[n, ceil(acot(#))]]+1`
-/

namespace A054519.P12659951485536058985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A054519.P12659951485536058985

namespace A054519

/-- `∑[∑{d}[n, ceil(acot(#))]]+1` -/
def P12659951485536058985.Spec : Prop :=
  ∀ n, P12659951485536058985.a n = A054519 n

end A054519

/-! ## A054519.P6639351327221972013

`∑[∏{p}[n, val(n*#, #)]]`
-/

namespace A054519.P6639351327221972013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (n * p) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054519.P6639351327221972013

namespace A054519

/-- `∑[∏{p}[n, val(n*#, #)]]` -/
def P6639351327221972013.Spec : Prop :=
  ∀ n, (P6639351327221972013.a n : ℤ) = A054519 n

end A054519

/-! ## A054519.P15343021198204742743

`∑[∑{d}[n, gcd(2, gcd(3, #))]]+1`
-/

namespace A054519.P15343021198204742743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd 2 (Nat.gcd 3 d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A054519.P15343021198204742743

namespace A054519

/-- `∑[∑{d}[n, gcd(2, gcd(3, #))]]+1` -/
def P15343021198204742743.Spec : Prop :=
  ∀ n, (P15343021198204742743.a n : ℤ) = A054519 n

end A054519

/-! ## A054519.P15770380991207305565

`∑[∑{d}[n, (n+1)%#]+1]`
-/

namespace A054519.P15770380991207305565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (n + 1) % d + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054519.P15770380991207305565

namespace A054519

/-- `∑[∑{d}[n, (n+1)%#]+1]` -/
def P15770380991207305565.Spec : Prop :=
  ∀ n, (P15770380991207305565.a n : ℤ) = A054519 n

end A054519

/-! ## A054519.P4390940963563071918

`∏{e}[n, #+1]+a(n-1)` with `a(0)=1`
-/

namespace A054519.P4390940963563071918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + a (n - 1)

end

end A054519.P4390940963563071918

namespace A054519

/-- `∏{e}[n, #+1]+a(n-1)` -/
def P4390940963563071918.Spec : Prop :=
  ∀ n, (P4390940963563071918.a n : ℤ) = A054519 n

end A054519

/-! ## A054519.P4896487978455208047

`∑[A032741(n)+1]`
-/

namespace A054519.P4896487978455208047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054519.P4896487978455208047

namespace A054519

/-- `∑[A032741(n)+1]` -/
def P4896487978455208047.Spec : Prop :=
  ∀ n, P4896487978455208047.a n = A054519 n

end A054519

/-! ## A054519.P6762482648972726362

`A350102(n+1)-1`
-/

namespace A054519.P6762482648972726362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350102 (n + 1) - 1

end

end A054519.P6762482648972726362

namespace A054519

/-- `A350102(n+1)-1` -/
def P6762482648972726362.Spec : Prop :=
  ∀ n, P6762482648972726362.a n = A054519 n

end A054519

/-! ## A054519.P1438835650320028958

`A006590(n+1)-n`
-/

namespace A054519.P1438835650320028958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) - (n : ℤ)

end

end A054519.P1438835650320028958

namespace A054519

/-- `A006590(n+1)-n` -/
def P1438835650320028958.Spec : Prop :=
  ∀ n, P1438835650320028958.a n = A054519 n

end A054519

/-! ## A054519.P2215424578548926022

`A106633(n)-2*n`
-/

namespace A054519.P2215424578548926022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106633 n - (2 * n : ℤ)

end

end A054519.P2215424578548926022

namespace A054519

/-- `A106633(n)-2*n` -/
def P2215424578548926022.Spec : Prop :=
  ∀ n, P2215424578548926022.a n = A054519 n

end A054519

/-! ## A054519.P6795210423803597177

`∑{d}[n, A116477(#)]+1`
-/

namespace A054519.P6795210423803597177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A116477 d + 1

end

end A054519.P6795210423803597177

namespace A054519

/-- `∑{d}[n, A116477(#)]+1` -/
def P6795210423803597177.Spec : Prop :=
  ∀ n, P6795210423803597177.a n = A054519 n

end A054519

/-! ## A054519.P9089160279891789017

`∑[A000005(ceil(abs(γ-n)))]`
-/

namespace A054519.P9089160279891789017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054519.P9089160279891789017

namespace A054519

/-- `∑[A000005(ceil(abs(γ-n)))]` -/
def P9089160279891789017.Spec : Prop :=
  ∀ n, P9089160279891789017.a n = A054519 n

end A054519

/-! ## A054519.P8099301313081196140

`A320111(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A054519.P8099301313081196140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320111 (2 * n) + a (n - 1)

end

end A054519.P8099301313081196140

namespace A054519

/-- `A320111(2*n)+a(n-1)` -/
def P8099301313081196140.Spec : Prop :=
  ∀ n, P8099301313081196140.a n = A054519 n

end A054519

/-! ## A054519.P1160676593003725971

`∑[A000005(abs(1-n)+1)]-1`
-/

namespace A054519.P1160676593003725971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054519.P1160676593003725971

namespace A054519

/-- `∑[A000005(abs(1-n)+1)]-1` -/
def P1160676593003725971.Spec : Prop :=
  ∀ n, P1160676593003725971.a n = A054519 n

end A054519

/-! ## A054519.P578321147235937885

`a(n-1)+n-A049820(n)` with `a(0)=1`
-/

namespace A054519.P578321147235937885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) - A049820 n)

end

end A054519.P578321147235937885

namespace A054519

/-- `a(n-1)+n-A049820(n)` -/
def P578321147235937885.Spec : Prop :=
  ∀ n, P578321147235937885.a n = A054519 n

end A054519

/-! ## A054519.P7069546936629500802

`A325459(n)+A004277(n)`
-/

namespace A054519.P7069546936629500802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n + A004277 n

end

end A054519.P7069546936629500802

namespace A054519

/-- `A325459(n)+A004277(n)` -/
def P7069546936629500802.Spec : Prop :=
  ∀ n, P7069546936629500802.a n = A054519 n

end A054519

/-!
# A054520: Let S = {1,5,9,13,..., 4n+1, ...} and call p in S an S-prime if p>1 and the only divisors of p in S are 1 and p; sequence gives elements of S that are not S-primes.

The programs for A054520, the canonical program `A054520.P14142192903502151308` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054520 has offset 1).

The definition of A054520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054520.P15151583789821611587

`lt[A326049(n+1)+1, A000038(n)]+1`
-/

namespace A054520.P15151583789821611587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A054520.P15151583789821611587

namespace A054520

/-- `lt[A326049(n+1)+1, A000038(n)]+1` -/
def P15151583789821611587.Spec : Prop :=
  ∀ n, (P15151583789821611587.a n : ℤ) = A054520 (n + 1)

end A054520

/-! ## A054520.P14612129063763939132

`lt[A005811(n), 1-A326049(n+1)]+1`
-/

namespace A054520.P14612129063763939132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A326049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A054520.P14612129063763939132

namespace A054520

/-- `lt[A005811(n), 1-A326049(n+1)]+1` -/
def P14612129063763939132.Spec : Prop :=
  ∀ n, (P14612129063763939132.a n : ℤ) = A054520 (n + 1)

end A054520

/-! ## A054520.P11797182570305961282

`A109613(lt[A326049(n+1)+1, A000038(n)])`
-/

namespace A054520.P11797182570305961282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A054520.P11797182570305961282

namespace A054520

/-- `A109613(lt[A326049(n+1)+1, A000038(n)])` -/
def P11797182570305961282.Spec : Prop :=
  ∀ n, P11797182570305961282.a n = A054520 (n + 1)

end A054520

/-! ## A054520.P14142192903502151308

`lt[A230641(n), A050449(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054520

/-- `lt[A230641(n), A050449(n+1)]+1` -/
def P14142192903502151308.Spec : Prop :=
  ∀ n, (P14142192903502151308.a n : ℤ) = A054520 (n + 1)

theorem P14142192903502151308.correct : P14142192903502151308.Spec := by
  intro n
  simp only [A054520, Nat.add_sub_cancel]

end A054520

/-! ## A054520.P4714341953091442303

`lt[A326049(n+1)+1, 2*A000007(n)]+1`
-/

namespace A054520.P4714341953091442303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A054520.P4714341953091442303

namespace A054520

/-- `lt[A326049(n+1)+1, 2*A000007(n)]+1` -/
def P4714341953091442303.Spec : Prop :=
  ∀ n, (P4714341953091442303.a n : ℤ) = A054520 (n + 1)

end A054520

/-!
# A054521: Triangle read by rows: T(n,k) = 1 if gcd(n, k) = 1, T(n,k) = 0 otherwise (n >= 1, 1 <= k <= n).

The programs for A054521, the canonical program `A054521.P4283920493715643574` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054521 has offset 1).

The definition of A054521 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050873, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054521.P4283920493715643574

`A063524(A050873(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A054521

/-- `A063524(A050873(n+1))` -/
def P4283920493715643574.Spec : Prop :=
  ∀ n, P4283920493715643574.a n = A054521 (n + 1)

theorem P4283920493715643574.correct : P4283920493715643574.Spec := by
  intro n
  simp only [A054521, Nat.add_sub_cancel]

end A054521

/-! ## A054521.P17156055346720594918

`abs(A215200(n+1))`
-/

namespace A054521.P17156055346720594918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215200 (n + 1)|

end

end A054521.P17156055346720594918

namespace A054521

/-- `abs(A215200(n+1))` -/
def P17156055346720594918.Spec : Prop :=
  ∀ n, P17156055346720594918.a n = A054521 (n + 1)

end A054521

/-! ## A054521.P17025044932419437873

`1-A349317(n+1)`
-/

namespace A054521.P17025044932419437873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A349317 (n + 1)

end

end A054521.P17025044932419437873

namespace A054521

/-- `1-A349317(n+1)` -/
def P17025044932419437873.Spec : Prop :=
  ∀ n, P17025044932419437873.a n = A054521 (n + 1)

end A054521

/-! ## A054521.P3076059469543464306

`and(1, A144733(n+1))`
-/

namespace A054521.P3076059469543464306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A144733 (n + 1))

end

end A054521.P3076059469543464306

namespace A054521

/-- `and(1, A144733(n+1))` -/
def P3076059469543464306.Spec : Prop :=
  ∀ n, P3076059469543464306.a n = A054521 (n + 1)

end A054521

/-! ## A054521.P11443969948464939196

`and(1, A394178(n+1))`
-/

namespace A054521.P11443969948464939196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A394178 (n + 1))

end

end A054521.P11443969948464939196

namespace A054521

/-- `and(1, A394178(n+1))` -/
def P11443969948464939196.Spec : Prop :=
  ∀ n, P11443969948464939196.a n = A054521 (n + 1)

end A054521

/-! ## A054521.P7884797901453011360

`floor(1/A046143(n+1))`
-/

namespace A054521.P7884797901453011360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A046143 (n + 1) : ℚ)⌋

end

end A054521.P7884797901453011360

namespace A054521

/-- `floor(1/A046143(n+1))` -/
def P7884797901453011360.Spec : Prop :=
  ∀ n, P7884797901453011360.a n = A054521 (n + 1)

end A054521

/-! ## A054521.P11365010600634328807

`char[A169581(n+1)-1]`
-/

namespace A054521.P11365010600634328807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169581 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A054521.P11365010600634328807

namespace A054521

/-- `char[A169581(n+1)-1]` -/
def P11365010600634328807.Spec : Prop :=
  ∀ n, (P11365010600634328807.a n : ℤ) = A054521 (n + 1)

end A054521

/-! ## A054521.P11261241993389756620

`char[eq[1, A051194(n+1)]]`
-/

namespace A054521.P11261241993389756620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A054521.P11261241993389756620

namespace A054521

/-- `char[eq[1, A051194(n+1)]]` -/
def P11261241993389756620.Spec : Prop :=
  ∀ n, (P11261241993389756620.a n : ℤ) = A054521 (n + 1)

end A054521

/-! ## A054521.P17288727793304541624

`char[lt[0, A127449(n+1)]]`
-/

namespace A054521.P17288727793304541624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127449 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A054521.P17288727793304541624

namespace A054521

/-- `char[lt[0, A127449(n+1)]]` -/
def P17288727793304541624.Spec : Prop :=
  ∀ n, (P17288727793304541624.a n : ℤ) = A054521 (n + 1)

end A054521

/-! ## A054521.P13974895527939583625

`1-C(n, A088307(n+1))`
-/

namespace A054521.P13974895527939583625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose n (A088307 (n + 1)).toNat : ℤ)

end

end A054521.P13974895527939583625

namespace A054521

/-- `1-C(n, A088307(n+1))` -/
def P13974895527939583625.Spec : Prop :=
  ∀ n, P13974895527939583625.a n = A054521 (n + 1)

end A054521

/-! ## A054521.P15625932162215008519

`floor(acot(n/A054531(n+1)²))`
-/

namespace A054521.P15625932162215008519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((n : ℚ) / (A054531 (n + 1) ^ 2 : ℚ) : ℝ)⌋

end

end A054521.P15625932162215008519

namespace A054521

/-- `floor(acot(n/A054531(n+1)²))` -/
def P15625932162215008519.Spec : Prop :=
  ∀ n, P15625932162215008519.a n = A054521 (n + 1)

end A054521

/-! ## A054521.P745061531875390223

`A217831(A014132(n+1))`
-/

namespace A054521.P745061531875390223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217831 (A014132 (n + 1)).toNat

end

end A054521.P745061531875390223

namespace A054521

/-- `A217831(A014132(n+1))` -/
def P745061531875390223.Spec : Prop :=
  ∀ n, P745061531875390223.a n = A054521 (n + 1)

end A054521

/-! ## A054521.P2209349380052121642

`A008683(A050873(n+1)²)`
-/

namespace A054521.P2209349380052121642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A050873 (n + 1) ^ 2).toNat

end

end A054521.P2209349380052121642

namespace A054521

/-- `A008683(A050873(n+1)²)` -/
def P2209349380052121642.Spec : Prop :=
  ∀ n, P2209349380052121642.a n = A054521 (n + 1)

end A054521

/-! ## A054521.P17820707968943193212

`A008966(A050873(n+1)²)`
-/

namespace A054521.P17820707968943193212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A050873 (n + 1) ^ 2).toNat

end

end A054521.P17820707968943193212

namespace A054521

/-- `A008966(A050873(n+1)²)` -/
def P17820707968943193212.Spec : Prop :=
  ∀ n, P17820707968943193212.a n = A054521 (n + 1)

end A054521

/-! ## A054521.P14384561480999547024

`A008683(A051194(n+1)²)`
-/

namespace A054521.P14384561480999547024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A051194 (n + 1) ^ 2).toNat

end

end A054521.P14384561480999547024

namespace A054521

/-- `A008683(A051194(n+1)²)` -/
def P14384561480999547024.Spec : Prop :=
  ∀ n, P14384561480999547024.a n = A054521 (n + 1)

end A054521

/-! ## A054521.P15185634540750116483

`A014061(A051194(n+1)+1)`
-/

namespace A054521.P15185634540750116483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014061 (A051194 (n + 1) + 1).toNat

end

end A054521.P15185634540750116483

namespace A054521

/-- `A014061(A051194(n+1)+1)` -/
def P15185634540750116483.Spec : Prop :=
  ∀ n, P15185634540750116483.a n = A054521 (n + 1)

end A054521

/-! ## A054521.P5489264345089320588

`A000007(A050873(n+1)-1)`
-/

namespace A054521.P5489264345089320588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A050873 (n + 1) - 1).toNat

end

end A054521.P5489264345089320588

namespace A054521

/-- `A000007(A050873(n+1)-1)` -/
def P5489264345089320588.Spec : Prop :=
  ∀ n, P5489264345089320588.a n = A054521 (n + 1)

end A054521

/-! ## A054521.P6553440588078582823

`A000007(A051194(n+1)-1)`
-/

namespace A054521.P6553440588078582823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A051194 (n + 1) - 1).toNat

end

end A054521.P6553440588078582823

namespace A054521

/-- `A000007(A051194(n+1)-1)` -/
def P6553440588078582823.Spec : Prop :=
  ∀ n, P6553440588078582823.a n = A054521 (n + 1)

end A054521

/-! ## A054521.P12600362750075896166

`A058348(A051194(n+1)-1)`
-/

namespace A054521.P12600362750075896166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 (A051194 (n + 1) - 1).toNat

end

end A054521.P12600362750075896166

namespace A054521

/-- `A058348(A051194(n+1)-1)` -/
def P12600362750075896166.Spec : Prop :=
  ∀ n, P12600362750075896166.a n = A054521 (n + 1)

end A054521

/-! ## A054521.P5733186091953941168

`1-A000007(A127368(n+1))`
-/

namespace A054521.P5733186091953941168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A127368 (n + 1)).toNat

end

end A054521.P5733186091953941168

namespace A054521

/-- `1-A000007(A127368(n+1))` -/
def P5733186091953941168.Spec : Prop :=
  ∀ n, P5733186091953941168.a n = A054521 (n + 1)

end A054521

/-!
# A054522: Triangle T(n,k): T(n,k) = phi(k) if k divides n, T(n,k)=0 otherwise (n >= 1, 1<=k<=n). T(n,k) = number of elements of order k in cyclic group of order n.

The programs for A054522, the canonical program `A054522.P13001746357644342535` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054522 has offset 1).

The definition of A054522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054522.P13001746357644342535

`A127093(n+1)-A141846(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A054522

/-- `A127093(n+1)-A141846(n+1)` -/
def P13001746357644342535.Spec : Prop :=
  ∀ n, P13001746357644342535.a n = A054522 (n + 1)

theorem P13001746357644342535.correct : P13001746357644342535.Spec := by
  intro n
  simp only [A054522, Nat.add_sub_cancel]

end A054522

/-! ## A054522.P15355325648630134554

`A051731(n+1)*A054526(n+1)`
-/

namespace A054522.P15355325648630134554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A054526 (n + 1)

end

end A054522.P15355325648630134554

namespace A054522

/-- `A051731(n+1)*A054526(n+1)` -/
def P15355325648630134554.Spec : Prop :=
  ∀ n, P15355325648630134554.a n = A054522 (n + 1)

end A054522

/-! ## A054522.P15294725970027881737

`A051731(n+1)*A054532(n+1)`
-/

namespace A054522.P15294725970027881737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A054532 (n + 1)

end

end A054522.P15294725970027881737

namespace A054522

/-- `A051731(n+1)*A054532(n+1)` -/
def P15294725970027881737.Spec : Prop :=
  ∀ n, P15294725970027881737.a n = A054522 (n + 1)

end A054522

/-! ## A054522.P2235798364554404137

`A051731(n+1)*A372673(n+1)`
-/

namespace A054522.P2235798364554404137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A372673 (n + 1)

end

end A054522.P2235798364554404137

namespace A054522

/-- `A051731(n+1)*A372673(n+1)` -/
def P2235798364554404137.Spec : Prop :=
  ∀ n, P2235798364554404137.a n = A054522 (n + 1)

end A054522

/-! ## A054522.P15106990950161883369

`A127466(n+1)/A002024(n+1)`
-/

namespace A054522.P15106990950161883369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127466 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A054522.P15106990950161883369

namespace A054522

/-- `A127466(n+1)/A002024(n+1)` -/
def P15106990950161883369.Spec : Prop :=
  ∀ n, P15106990950161883369.a n = (A054522 (n + 1) : ℚ)

end A054522

/-! ## A054522.P6369574362456325553

`A127478(n+1)/A010766(n+1)`
-/

namespace A054522.P6369574362456325553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127478 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A054522.P6369574362456325553

namespace A054522

/-- `A127478(n+1)/A010766(n+1)` -/
def P6369574362456325553.Spec : Prop :=
  ∀ n, P6369574362456325553.a n = (A054522 (n + 1) : ℚ)

end A054522

/-! ## A054522.P1986704955968300877

`A127466(n+1)/A049840(n+1)`
-/

namespace A054522.P1986704955968300877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127466 (n + 1) : ℚ) / (A049840 (n + 1) : ℚ)

end

end A054522.P1986704955968300877

namespace A054522

/-- `A127466(n+1)/A049840(n+1)` -/
def P1986704955968300877.Spec : Prop :=
  ∀ n, P1986704955968300877.a n = (A054522 (n + 1) : ℚ)

end A054522

/-! ## A054522.P8388729326761909423

`A127478(n+1)/A049834(n+1)`
-/

namespace A054522.P8388729326761909423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127478 (n + 1) : ℚ) / (A049834 (n + 1) : ℚ)

end

end A054522.P8388729326761909423

namespace A054522

/-- `A127478(n+1)/A049834(n+1)` -/
def P8388729326761909423.Spec : Prop :=
  ∀ n, P8388729326761909423.a n = (A054522 (n + 1) : ℚ)

end A054522

/-! ## A054522.P5615583405279899217

`A127466(n+1)/A051173(n+1)`
-/

namespace A054522.P5615583405279899217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127466 (n + 1) : ℚ) / (A051173 (n + 1) : ℚ)

end

end A054522.P5615583405279899217

namespace A054522

/-- `A127466(n+1)/A051173(n+1)` -/
def P5615583405279899217.Spec : Prop :=
  ∀ n, P5615583405279899217.a n = (A054522 (n + 1) : ℚ)

end A054522

/-! ## A054522.P2306970986633267123

`A127478(n+1)/A051537(n+1)`
-/

namespace A054522.P2306970986633267123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127478 (n + 1) : ℚ) / (A051537 (n + 1) : ℚ)

end

end A054522.P2306970986633267123

namespace A054522

/-- `A127478(n+1)/A051537(n+1)` -/
def P2306970986633267123.Spec : Prop :=
  ∀ n, P2306970986633267123.a n = (A054522 (n + 1) : ℚ)

end A054522

/-! ## A054522.P10023396483936251523

`A127478(n+1)/A054531(n+1)`
-/

namespace A054522.P10023396483936251523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127478 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ)

end

end A054522.P10023396483936251523

namespace A054522

/-- `A127478(n+1)/A054531(n+1)` -/
def P10023396483936251523.Spec : Prop :=
  ∀ n, P10023396483936251523.a n = (A054522 (n + 1) : ℚ)

end A054522

/-! ## A054522.P4023042151454932072

`A127478(n+1)/A059026(n+1)`
-/

namespace A054522.P4023042151454932072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127478 (n + 1) : ℚ) / (A059026 (n + 1) : ℚ)

end

end A054522.P4023042151454932072

namespace A054522

/-- `A127478(n+1)/A059026(n+1)` -/
def P4023042151454932072.Spec : Prop :=
  ∀ n, P4023042151454932072.a n = (A054522 (n + 1) : ℚ)

end A054522

/-! ## A054522.P11573065736589546722

`A127466(n+1)/A074712(n+1)`
-/

namespace A054522.P11573065736589546722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127466 (n + 1) : ℚ) / (A074712 (n + 1) : ℚ)

end

end A054522.P11573065736589546722

namespace A054522

/-- `A127466(n+1)/A074712(n+1)` -/
def P11573065736589546722.Spec : Prop :=
  ∀ n, P11573065736589546722.a n = (A054522 (n + 1) : ℚ)

end A054522

/-! ## A054522.P877813295888769586

`A127466(n+1)/A123229(n+1)`
-/

namespace A054522.P877813295888769586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127466 (n + 1) : ℚ) / (A123229 (n + 1) : ℚ)

end

end A054522.P877813295888769586

namespace A054522

/-- `A127466(n+1)/A123229(n+1)` -/
def P877813295888769586.Spec : Prop :=
  ∀ n, P877813295888769586.a n = (A054522 (n + 1) : ℚ)

end A054522

/-! ## A054522.P15823467391692721202

`A127466(n+1)/A199408(n+1)`
-/

namespace A054522.P15823467391692721202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127466 (n + 1) : ℚ) / (A199408 (n + 1) : ℚ)

end

end A054522.P15823467391692721202

namespace A054522

/-- `A127466(n+1)/A199408(n+1)` -/
def P15823467391692721202.Spec : Prop :=
  ∀ n, P15823467391692721202.a n = (A054522 (n + 1) : ℚ)

end A054522

/-! ## A054522.P3355799519018740355

`A127478(n+1)/A219158(n+1)`
-/

namespace A054522.P3355799519018740355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127478 (n + 1) : ℚ) / (A219158 (n + 1) : ℚ)

end

end A054522.P3355799519018740355

namespace A054522

/-- `A127478(n+1)/A219158(n+1)` -/
def P3355799519018740355.Spec : Prop :=
  ∀ n, P3355799519018740355.a n = (A054522 (n + 1) : ℚ)

end A054522

/-! ## A054522.P17943058612700517359

`A127478(n+1)/A234575(n+1)`
-/

namespace A054522.P17943058612700517359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127478 (n + 1) : ℚ) / (A234575 (n + 1) : ℚ)

end

end A054522.P17943058612700517359

namespace A054522

/-- `A127478(n+1)/A234575(n+1)` -/
def P17943058612700517359.Spec : Prop :=
  ∀ n, P17943058612700517359.a n = (A054522 (n + 1) : ℚ)

end A054522

/-! ## A054522.P3706043997366522632

`and(A054526(n+1), A130888(n+1))`
-/

namespace A054522.P3706043997366522632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054526 (n + 1)) (A130888 (n + 1))

end

end A054522.P3706043997366522632

namespace A054522

/-- `and(A054526(n+1), A130888(n+1))` -/
def P3706043997366522632.Spec : Prop :=
  ∀ n, P3706043997366522632.a n = A054522 (n + 1)

end A054522

/-! ## A054522.P6179260366249910875

`and(A054532(n+1), A130888(n+1))`
-/

namespace A054522.P6179260366249910875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054532 (n + 1)) (A130888 (n + 1))

end

end A054522.P6179260366249910875

namespace A054522

/-- `and(A054532(n+1), A130888(n+1))` -/
def P6179260366249910875.Spec : Prop :=
  ∀ n, P6179260366249910875.a n = A054522 (n + 1)

end A054522

/-! ## A054522.P421162943943345580

`and(A130888(n+1), A372673(n+1))`
-/

namespace A054522.P421162943943345580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130888 (n + 1)) (A372673 (n + 1))

end

end A054522.P421162943943345580

namespace A054522

/-- `and(A130888(n+1), A372673(n+1))` -/
def P421162943943345580.Spec : Prop :=
  ∀ n, P421162943943345580.a n = A054522 (n + 1)

end A054522

/-!
# A054523: Triangle read by rows: T(n,k) = phi(n/k) if k divides n, T(n,k)=0 otherwise (n >= 1, 1 <= k <= n).

The programs for A054523, the canonical program `A054523.P592142950605229816` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054523 has offset 1).

The definition of A054523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054523.P103923406068599918

`A004525(A143316(n+1))`
-/

namespace A054523.P103923406068599918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A143316 (n + 1)).toNat

end

end A054523.P103923406068599918

namespace A054523

/-- `A004525(A143316(n+1))` -/
def P103923406068599918.Spec : Prop :=
  ∀ n, P103923406068599918.a n = A054523 (n + 1)

end A054523

/-! ## A054523.P592142950605229816

`A130207(A286158(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A054523

/-- `A130207(A286158(n+1))` -/
def P592142950605229816.Spec : Prop :=
  ∀ n, P592142950605229816.a n = A054523 (n + 1)

theorem P592142950605229816.correct : P592142950605229816.Spec := by
  intro n
  simp only [A054523, Nat.add_sub_cancel]

end A054523

/-! ## A054523.P16670206667009680471

`A129236(n+1)/A051340(n)`
-/

namespace A054523.P16670206667009680471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129236 (n + 1) : ℚ) / (A051340 n : ℚ)

end

end A054523.P16670206667009680471

namespace A054523

/-- `A129236(n+1)/A051340(n)` -/
def P16670206667009680471.Spec : Prop :=
  ∀ n, P16670206667009680471.a n = (A054523 (n + 1) : ℚ)

end A054523

/-! ## A054523.P10921118501368565824

`A129236(n+1)/A175892(n)`
-/

namespace A054523.P10921118501368565824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129236 (n + 1) : ℚ) / (A175892 n : ℚ)

end

end A054523.P10921118501368565824

namespace A054523

/-- `A129236(n+1)/A175892(n)` -/
def P10921118501368565824.Spec : Prop :=
  ∀ n, P10921118501368565824.a n = (A054523 (n + 1) : ℚ)

end A054523

/-! ## A054523.P1087706542150226554

`gcd(A115359(n), A129236(n+1))`
-/

namespace A054523.P1087706542150226554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115359 n) (A129236 (n + 1))

end

end A054523.P1087706542150226554

namespace A054523

/-- `gcd(A115359(n), A129236(n+1))` -/
def P1087706542150226554.Spec : Prop :=
  ∀ n, (P1087706542150226554.a n : ℤ) = A054523 (n + 1)

end A054523

/-! ## A054523.P3126226652284437921

`A127649(n+1)/A002024(n+1)`
-/

namespace A054523.P3126226652284437921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127649 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A054523.P3126226652284437921

namespace A054523

/-- `A127649(n+1)/A002024(n+1)` -/
def P3126226652284437921.Spec : Prop :=
  ∀ n, P3126226652284437921.a n = (A054523 (n + 1) : ℚ)

end A054523

/-! ## A054523.P8391551668521738305

`A127465(n+1)/A002260(n+1)`
-/

namespace A054523.P8391551668521738305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127465 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A054523.P8391551668521738305

namespace A054523

/-- `A127465(n+1)/A002260(n+1)` -/
def P8391551668521738305.Spec : Prop :=
  ∀ n, P8391551668521738305.a n = (A054523 (n + 1) : ℚ)

end A054523

/-! ## A054523.P3481748742350664651

`A127465(n+1)/(A002262(n)+1)`
-/

namespace A054523.P3481748742350664651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127465 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A054523.P3481748742350664651

namespace A054523

/-- `A127465(n+1)/(A002262(n)+1)` -/
def P3481748742350664651.Spec : Prop :=
  ∀ n, P3481748742350664651.a n = (A054523 (n + 1) : ℚ)

end A054523

/-! ## A054523.P11754824694561799097

`A129236(n+1)/A010783(n+1)`
-/

namespace A054523.P11754824694561799097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129236 (n + 1) : ℚ) / (A010783 (n + 1) : ℚ)

end

end A054523.P11754824694561799097

namespace A054523

/-- `A129236(n+1)/A010783(n+1)` -/
def P11754824694561799097.Spec : Prop :=
  ∀ n, P11754824694561799097.a n = (A054523 (n + 1) : ℚ)

end A054523

/-! ## A054523.P4209913208760867284

`A127649(n+1)/A049840(n+1)`
-/

namespace A054523.P4209913208760867284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127649 (n + 1) : ℚ) / (A049840 (n + 1) : ℚ)

end

end A054523.P4209913208760867284

namespace A054523

/-- `A127649(n+1)/A049840(n+1)` -/
def P4209913208760867284.Spec : Prop :=
  ∀ n, P4209913208760867284.a n = (A054523 (n + 1) : ℚ)

end A054523

/-! ## A054523.P1500141226996938228

`A127465(n+1)/A050873(n+1)`
-/

namespace A054523.P1500141226996938228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127465 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A054523.P1500141226996938228

namespace A054523

/-- `A127465(n+1)/A050873(n+1)` -/
def P1500141226996938228.Spec : Prop :=
  ∀ n, P1500141226996938228.a n = (A054523 (n + 1) : ℚ)

end A054523

/-! ## A054523.P4958104651124251384

`A127527(n+1)/A051194(n+1)`
-/

namespace A054523.P4958104651124251384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127527 (n + 1) : ℚ) / (A051194 (n + 1) : ℚ)

end

end A054523.P4958104651124251384

namespace A054523

/-- `A127527(n+1)/A051194(n+1)` -/
def P4958104651124251384.Spec : Prop :=
  ∀ n, P4958104651124251384.a n = (A054523 (n + 1) : ℚ)

end A054523

/-! ## A054523.P15869083340551705505

`A127649(n+1)/A051173(n+1)`
-/

namespace A054523.P15869083340551705505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127649 (n + 1) : ℚ) / (A051173 (n + 1) : ℚ)

end

end A054523.P15869083340551705505

namespace A054523

/-- `A127649(n+1)/A051173(n+1)` -/
def P15869083340551705505.Spec : Prop :=
  ∀ n, P15869083340551705505.a n = (A054523 (n + 1) : ℚ)

end A054523

/-! ## A054523.P8056435912729083118

`A127649(n+1)/A074712(n+1)`
-/

namespace A054523.P8056435912729083118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127649 (n + 1) : ℚ) / (A074712 (n + 1) : ℚ)

end

end A054523.P8056435912729083118

namespace A054523

/-- `A127649(n+1)/A074712(n+1)` -/
def P8056435912729083118.Spec : Prop :=
  ∀ n, P8056435912729083118.a n = (A054523 (n + 1) : ℚ)

end A054523

/-! ## A054523.P12525783126541193621

`A159937(n+1)/A054526(n+1)`
-/

namespace A054523.P12525783126541193621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159937 (n + 1) : ℚ) / (A054526 (n + 1) : ℚ)

end

end A054523.P12525783126541193621

namespace A054523

/-- `A159937(n+1)/A054526(n+1)` -/
def P12525783126541193621.Spec : Prop :=
  ∀ n, P12525783126541193621.a n = (A054523 (n + 1) : ℚ)

end A054523

/-! ## A054523.P7070096611195356242

`A127465(n+1)/A123275(n+1)`
-/

namespace A054523.P7070096611195356242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127465 (n + 1) : ℚ) / (A123275 (n + 1) : ℚ)

end

end A054523.P7070096611195356242

namespace A054523

/-- `A127465(n+1)/A123275(n+1)` -/
def P7070096611195356242.Spec : Prop :=
  ∀ n, P7070096611195356242.a n = (A054523 (n + 1) : ℚ)

end A054523

/-! ## A054523.P6814118461316472736

`A127649(n+1)/A123229(n+1)`
-/

namespace A054523.P6814118461316472736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127649 (n + 1) : ℚ) / (A123229 (n + 1) : ℚ)

end

end A054523.P6814118461316472736

namespace A054523

/-- `A127649(n+1)/A123229(n+1)` -/
def P6814118461316472736.Spec : Prop :=
  ∀ n, P6814118461316472736.a n = (A054523 (n + 1) : ℚ)

end A054523

/-! ## A054523.P3785743900206595173

`A129236(n+1)/A162319(n+1)`
-/

namespace A054523.P3785743900206595173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129236 (n + 1) : ℚ) / (A162319 (n + 1) : ℚ)

end

end A054523.P3785743900206595173

namespace A054523

/-- `A129236(n+1)/A162319(n+1)` -/
def P3785743900206595173.Spec : Prop :=
  ∀ n, P3785743900206595173.a n = (A054523 (n + 1) : ℚ)

end A054523

/-! ## A054523.P14533300948207631876

`A366444(n+1)/A231425(n+1)`
-/

namespace A054523.P14533300948207631876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366444 (n + 1) : ℚ) / (A231425 (n + 1) : ℚ)

end

end A054523.P14533300948207631876

namespace A054523

/-- `A366444(n+1)/A231425(n+1)` -/
def P14533300948207631876.Spec : Prop :=
  ∀ n, P14533300948207631876.a n = (A054523 (n + 1) : ℚ)

end A054523

/-! ## A054523.P15595550040515878566

`A000010(A010766(n+1))*A051731(n+1)`
-/

namespace A054523.P15595550040515878566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A054523.P15595550040515878566

namespace A054523

/-- `A000010(A010766(n+1))*A051731(n+1)` -/
def P15595550040515878566.Spec : Prop :=
  ∀ n, P15595550040515878566.a n = A054523 (n + 1)

end A054523

/-!
# A054524: Triangle T(n,k): T(n,k) = mu(k) if k divides n, T(n,k)=0 otherwise (n >= 1, 1<=k<=n).

The programs for A054524, the canonical program `A054524.P18058734108985721974` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054524 has offset 1).

The definition of A054524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054524.P16477368101226006681

`A143467(n+1)%2`
-/

namespace A054524.P16477368101226006681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143467 (n + 1)) 2

end

end A054524.P16477368101226006681

namespace A054524

/-- `A143467(n+1)%2` -/
def P16477368101226006681.Spec : Prop :=
  ∀ n, P16477368101226006681.a n = A054524 (n + 1)

end A054524

/-! ## A054524.P3020659732246594466

`round(atan(atan(A143239(n+1))))`
-/

namespace A054524.P3020659732246594466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.arctan (A143239 (n + 1) : ℝ)))

end

end A054524.P3020659732246594466

namespace A054524

/-- `round(atan(atan(A143239(n+1))))` -/
def P3020659732246594466.Spec : Prop :=
  ∀ n, P3020659732246594466.a n = A054524 (n + 1)

end A054524

/-! ## A054524.P18058734108985721974

`∑{d}[A127093(n+1), A007427(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A054524

/-- `∑{d}[A127093(n+1), A007427(#)]` -/
def P18058734108985721974.Spec : Prop :=
  ∀ n, P18058734108985721974.a n = A054524 (n + 1)

theorem P18058734108985721974.correct : P18058734108985721974.Spec := by
  intro n
  simp only [A054524, Nat.add_sub_cancel]

end A054524

/-! ## A054524.P7285437579985388739

`A051731(n+1)*A054527(n+1)`
-/

namespace A054524.P7285437579985388739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A054527 (n + 1)

end

end A054524.P7285437579985388739

namespace A054524

/-- `A051731(n+1)*A054527(n+1)` -/
def P7285437579985388739.Spec : Prop :=
  ∀ n, P7285437579985388739.a n = A054524 (n + 1)

end A054524

/-! ## A054524.P2829650566175894329

`A051731(n+1)*A054534(n+1)`
-/

namespace A054524.P2829650566175894329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A054534 (n + 1)

end

end A054524.P2829650566175894329

namespace A054524

/-- `A051731(n+1)*A054534(n+1)` -/
def P2829650566175894329.Spec : Prop :=
  ∀ n, P2829650566175894329.a n = A054524 (n + 1)

end A054524

/-! ## A054524.P6224398710511039681

`A054527(n+1)*A304569(n+1)`
-/

namespace A054524.P6224398710511039681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A304569 (n + 1)

end

end A054524.P6224398710511039681

namespace A054524

/-- `A054527(n+1)*A304569(n+1)` -/
def P6224398710511039681.Spec : Prop :=
  ∀ n, P6224398710511039681.a n = A054524 (n + 1)

end A054524

/-! ## A054524.P9919658277073982150

`A054534(n+1)*A304569(n+1)`
-/

namespace A054524.P9919658277073982150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (n + 1) * A304569 (n + 1)

end

end A054524.P9919658277073982150

namespace A054524

/-- `A054534(n+1)*A304569(n+1)` -/
def P9919658277073982150.Spec : Prop :=
  ∀ n, P9919658277073982150.a n = A054524 (n + 1)

end A054524

/-! ## A054524.P9899974537594817977

`A143256(n+1)/A002260(n+1)`
-/

namespace A054524.P9899974537594817977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143256 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A054524.P9899974537594817977

namespace A054524

/-- `A143256(n+1)/A002260(n+1)` -/
def P9899974537594817977.Spec : Prop :=
  ∀ n, P9899974537594817977.a n = (A054524 (n + 1) : ℚ)

end A054524

/-! ## A054524.P12205533636461382436

`A143239(n+1)/A010766(n+1)`
-/

namespace A054524.P12205533636461382436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143239 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A054524.P12205533636461382436

namespace A054524

/-- `A143239(n+1)/A010766(n+1)` -/
def P12205533636461382436.Spec : Prop :=
  ∀ n, P12205533636461382436.a n = (A054524 (n + 1) : ℚ)

end A054524

/-! ## A054524.P8049397230049095784

`A143239(n+1)/A049834(n+1)`
-/

namespace A054524.P8049397230049095784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143239 (n + 1) : ℚ) / (A049834 (n + 1) : ℚ)

end

end A054524.P8049397230049095784

namespace A054524

/-- `A143239(n+1)/A049834(n+1)` -/
def P8049397230049095784.Spec : Prop :=
  ∀ n, P8049397230049095784.a n = (A054524 (n + 1) : ℚ)

end A054524

/-! ## A054524.P7585099327435983088

`A143256(n+1)/A050873(n+1)`
-/

namespace A054524.P7585099327435983088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143256 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A054524.P7585099327435983088

namespace A054524

/-- `A143256(n+1)/A050873(n+1)` -/
def P7585099327435983088.Spec : Prop :=
  ∀ n, P7585099327435983088.a n = (A054524 (n + 1) : ℚ)

end A054524

/-! ## A054524.P14295586460183090194

`A143239(n+1)/A051537(n+1)`
-/

namespace A054524.P14295586460183090194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143239 (n + 1) : ℚ) / (A051537 (n + 1) : ℚ)

end

end A054524.P14295586460183090194

namespace A054524

/-- `A143239(n+1)/A051537(n+1)` -/
def P14295586460183090194.Spec : Prop :=
  ∀ n, P14295586460183090194.a n = (A054524 (n + 1) : ℚ)

end A054524

/-! ## A054524.P15593857137899520896

`A143239(n+1)/A054531(n+1)`
-/

namespace A054524.P15593857137899520896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143239 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ)

end

end A054524.P15593857137899520896

namespace A054524

/-- `A143239(n+1)/A054531(n+1)` -/
def P15593857137899520896.Spec : Prop :=
  ∀ n, P15593857137899520896.a n = (A054524 (n + 1) : ℚ)

end A054524

/-! ## A054524.P10404218434488322223

`A143239(n+1)/A059026(n+1)`
-/

namespace A054524.P10404218434488322223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143239 (n + 1) : ℚ) / (A059026 (n + 1) : ℚ)

end

end A054524.P10404218434488322223

namespace A054524

/-- `A143239(n+1)/A059026(n+1)` -/
def P10404218434488322223.Spec : Prop :=
  ∀ n, P10404218434488322223.a n = (A054524 (n + 1) : ℚ)

end A054524

/-! ## A054524.P17047812581160135553

`A143256(n+1)/A123275(n+1)`
-/

namespace A054524.P17047812581160135553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143256 (n + 1) : ℚ) / (A123275 (n + 1) : ℚ)

end

end A054524.P17047812581160135553

namespace A054524

/-- `A143256(n+1)/A123275(n+1)` -/
def P17047812581160135553.Spec : Prop :=
  ∀ n, P17047812581160135553.a n = (A054524 (n + 1) : ℚ)

end A054524

/-! ## A054524.P1873665477794572197

`A143239(n+1)/A219158(n+1)`
-/

namespace A054524.P1873665477794572197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143239 (n + 1) : ℚ) / (A219158 (n + 1) : ℚ)

end

end A054524.P1873665477794572197

namespace A054524

/-- `A143239(n+1)/A219158(n+1)` -/
def P1873665477794572197.Spec : Prop :=
  ∀ n, P1873665477794572197.a n = (A054524 (n + 1) : ℚ)

end A054524

/-! ## A054524.P5787814578736499183

`A143239(n+1)/A234575(n+1)`
-/

namespace A054524.P5787814578736499183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143239 (n + 1) : ℚ) / (A234575 (n + 1) : ℚ)

end

end A054524.P5787814578736499183

namespace A054524

/-- `A143239(n+1)/A234575(n+1)` -/
def P5787814578736499183.Spec : Prop :=
  ∀ n, P5787814578736499183.a n = (A054524 (n + 1) : ℚ)

end A054524

/-! ## A054524.P18020619735983065065

`A008683(gcd(4*(n+1), A127093(n+1)))`
-/

namespace A054524.P18020619735983065065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.gcd (4 * (n + 1) : ℤ) (A127093 (n + 1)))

end

end A054524.P18020619735983065065

namespace A054524

/-- `A008683(gcd(4*(n+1), A127093(n+1)))` -/
def P18020619735983065065.Spec : Prop :=
  ∀ n, P18020619735983065065.a n = A054524 (n + 1)

end A054524

/-! ## A054524.P18157394307026087540

`A008683(A002260(n+1))*A051731(n+1)`
-/

namespace A054524.P18157394307026087540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002260 (n + 1)).toNat * A051731 (n + 1)

end

end A054524.P18157394307026087540

namespace A054524

/-- `A008683(A002260(n+1))*A051731(n+1)` -/
def P18157394307026087540.Spec : Prop :=
  ∀ n, P18157394307026087540.a n = A054524 (n + 1)

end A054524

/-! ## A054524.P12678366818948426555

`A008683(A002260(n+1)*A164306(n+1))`
-/

namespace A054524.P12678366818948426555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002260 (n + 1) * A164306 (n + 1)).toNat

end

end A054524.P12678366818948426555

namespace A054524

/-- `A008683(A002260(n+1)*A164306(n+1))` -/
def P12678366818948426555.Spec : Prop :=
  ∀ n, P12678366818948426555.a n = A054524 (n + 1)

end A054524

/-!
# A054525: Triangle T(n,k): T(n,k) = mu(n/k) if k divides n, T(n,k) = 0 otherwise (n >= 1, 1 <= k <= n).

The programs for A054525, the canonical program `A054525.P5010349066179246070` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054525 has offset 1).

The definition of A054525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054525.P17697659354697232124

`A143468(n+1)%2`
-/

namespace A054525.P17697659354697232124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143468 (n + 1)) 2

end

end A054525.P17697659354697232124

namespace A054525

/-- `A143468(n+1)%2` -/
def P17697659354697232124.Spec : Prop :=
  ∀ n, P17697659354697232124.a n = A054525 (n + 1)

end A054525

/-! ## A054525.P11281244624825735100

`A143424(n+1)/A059268(n)`
-/

namespace A054525.P11281244624825735100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143424 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A054525.P11281244624825735100

namespace A054525

/-- `A143424(n+1)/A059268(n)` -/
def P11281244624825735100.Spec : Prop :=
  ∀ n, P11281244624825735100.a n = (A054525 (n + 1) : ℚ)

end A054525

/-! ## A054525.P5010349066179246070

`∑{d}[A126988(n+1), A007427(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A054525

/-- `∑{d}[A126988(n+1), A007427(#)]` -/
def P5010349066179246070.Spec : Prop :=
  ∀ n, P5010349066179246070.a n = A054525 (n + 1)

theorem P5010349066179246070.correct : P5010349066179246070.Spec := by
  intro n
  simp only [A054525, Nat.add_sub_cancel]

end A054525

/-! ## A054525.P8594825386497815402

`A125093(n+1)/A002024(n+1)`
-/

namespace A054525.P8594825386497815402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A054525.P8594825386497815402

namespace A054525

/-- `A125093(n+1)/A002024(n+1)` -/
def P8594825386497815402.Spec : Prop :=
  ∀ n, P8594825386497815402.a n = (A054525 (n + 1) : ℚ)

end A054525

/-! ## A054525.P12381450063777254182

`A127448(n+1)/A002260(n+1)`
-/

namespace A054525.P12381450063777254182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127448 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A054525.P12381450063777254182

namespace A054525

/-- `A127448(n+1)/A002260(n+1)` -/
def P12381450063777254182.Spec : Prop :=
  ∀ n, P12381450063777254182.a n = (A054525 (n + 1) : ℚ)

end A054525

/-! ## A054525.P12495102076563261877

`A127139(n+1)/A010766(n+1)`
-/

namespace A054525.P12495102076563261877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127139 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A054525.P12495102076563261877

namespace A054525

/-- `A127139(n+1)/A010766(n+1)` -/
def P12495102076563261877.Spec : Prop :=
  ∀ n, P12495102076563261877.a n = (A054525 (n + 1) : ℚ)

end A054525

/-! ## A054525.P4086832548775300630

`A127638(n+1)/A037126(n+1)`
-/

namespace A054525.P4086832548775300630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127638 (n + 1) : ℚ) / (A037126 (n + 1) : ℚ)

end

end A054525.P4086832548775300630

namespace A054525

/-- `A127638(n+1)/A037126(n+1)` -/
def P4086832548775300630.Spec : Prop :=
  ∀ n, P4086832548775300630.a n = (A054525 (n + 1) : ℚ)

end A054525

/-! ## A054525.P15068394035946076394

`A125093(n+1)/A049840(n+1)`
-/

namespace A054525.P15068394035946076394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A049840 (n + 1) : ℚ)

end

end A054525.P15068394035946076394

namespace A054525

/-- `A125093(n+1)/A049840(n+1)` -/
def P15068394035946076394.Spec : Prop :=
  ∀ n, P15068394035946076394.a n = (A054525 (n + 1) : ℚ)

end A054525

/-! ## A054525.P150607352147006374

`A125093(n+1)/A051173(n+1)`
-/

namespace A054525.P150607352147006374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A051173 (n + 1) : ℚ)

end

end A054525.P150607352147006374

namespace A054525

/-- `A125093(n+1)/A051173(n+1)` -/
def P150607352147006374.Spec : Prop :=
  ∀ n, P150607352147006374.a n = (A054525 (n + 1) : ℚ)

end A054525

/-! ## A054525.P3328330624556069235

`A127139(n+1)/A049834(n+1)`
-/

namespace A054525.P3328330624556069235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127139 (n + 1) : ℚ) / (A049834 (n + 1) : ℚ)

end

end A054525.P3328330624556069235

namespace A054525

/-- `A127139(n+1)/A049834(n+1)` -/
def P3328330624556069235.Spec : Prop :=
  ∀ n, P3328330624556069235.a n = (A054525 (n + 1) : ℚ)

end A054525

/-! ## A054525.P8827326693750924245

`A127448(n+1)/A050873(n+1)`
-/

namespace A054525.P8827326693750924245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127448 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A054525.P8827326693750924245

namespace A054525

/-- `A127448(n+1)/A050873(n+1)` -/
def P8827326693750924245.Spec : Prop :=
  ∀ n, P8827326693750924245.a n = (A054525 (n + 1) : ℚ)

end A054525

/-! ## A054525.P2675602890845286420

`A127139(n+1)/A051537(n+1)`
-/

namespace A054525.P2675602890845286420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127139 (n + 1) : ℚ) / (A051537 (n + 1) : ℚ)

end

end A054525.P2675602890845286420

namespace A054525

/-- `A127139(n+1)/A051537(n+1)` -/
def P2675602890845286420.Spec : Prop :=
  ∀ n, P2675602890845286420.a n = (A054525 (n + 1) : ℚ)

end A054525

/-! ## A054525.P8266169789079991631

`A127139(n+1)/A054531(n+1)`
-/

namespace A054525.P8266169789079991631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127139 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ)

end

end A054525.P8266169789079991631

namespace A054525

/-- `A127139(n+1)/A054531(n+1)` -/
def P8266169789079991631.Spec : Prop :=
  ∀ n, P8266169789079991631.a n = (A054525 (n + 1) : ℚ)

end A054525

/-! ## A054525.P16733119368725232138

`A127505(n+1)/A054526(n+1)`
-/

namespace A054525.P16733119368725232138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127505 (n + 1) : ℚ) / (A054526 (n + 1) : ℚ)

end

end A054525.P16733119368725232138

namespace A054525

/-- `A127505(n+1)/A054526(n+1)` -/
def P16733119368725232138.Spec : Prop :=
  ∀ n, P16733119368725232138.a n = (A054525 (n + 1) : ℚ)

end A054525

/-! ## A054525.P17428070469364450077

`A127139(n+1)/A059026(n+1)`
-/

namespace A054525.P17428070469364450077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127139 (n + 1) : ℚ) / (A059026 (n + 1) : ℚ)

end

end A054525.P17428070469364450077

namespace A054525

/-- `A127139(n+1)/A059026(n+1)` -/
def P17428070469364450077.Spec : Prop :=
  ∀ n, P17428070469364450077.a n = (A054525 (n + 1) : ℚ)

end A054525

/-! ## A054525.P3688742313832803561

`A125093(n+1)/A074712(n+1)`
-/

namespace A054525.P3688742313832803561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A074712 (n + 1) : ℚ)

end

end A054525.P3688742313832803561

namespace A054525

/-- `A125093(n+1)/A074712(n+1)` -/
def P3688742313832803561.Spec : Prop :=
  ∀ n, P3688742313832803561.a n = (A054525 (n + 1) : ℚ)

end A054525

/-! ## A054525.P8042466804536674500

`A125093(n+1)/A123229(n+1)`
-/

namespace A054525.P8042466804536674500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A123229 (n + 1) : ℚ)

end

end A054525.P8042466804536674500

namespace A054525

/-- `A125093(n+1)/A123229(n+1)` -/
def P8042466804536674500.Spec : Prop :=
  ∀ n, P8042466804536674500.a n = (A054525 (n + 1) : ℚ)

end A054525

/-! ## A054525.P11566585451919818205

`A127448(n+1)/A123275(n+1)`
-/

namespace A054525.P11566585451919818205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127448 (n + 1) : ℚ) / (A123275 (n + 1) : ℚ)

end

end A054525.P11566585451919818205

namespace A054525

/-- `A127448(n+1)/A123275(n+1)` -/
def P11566585451919818205.Spec : Prop :=
  ∀ n, P11566585451919818205.a n = (A054525 (n + 1) : ℚ)

end A054525

/-! ## A054525.P4333728241873178770

`2*A051731(n+1)-A131088(n+1)`
-/

namespace A054525.P4333728241873178770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051731 (n + 1) - A131088 (n + 1)

end

end A054525.P4333728241873178770

namespace A054525

/-- `2*A051731(n+1)-A131088(n+1)` -/
def P4333728241873178770.Spec : Prop :=
  ∀ n, P4333728241873178770.a n = A054525 (n + 1)

end A054525

/-! ## A054525.P11810420162570008593

`A008683(A010766(n+1))*A051731(n+1)`
-/

namespace A054525.P11810420162570008593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A054525.P11810420162570008593

namespace A054525

/-- `A008683(A010766(n+1))*A051731(n+1)` -/
def P11810420162570008593.Spec : Prop :=
  ∀ n, P11810420162570008593.a n = A054525 (n + 1)

end A054525

/-!
# A054526: Triangle T(n,k): T(n,k) = phi(k) (n >= 1, 1 <= k <= n).

The programs for A054526, the canonical program `A054526.P10074911723705506468` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054526 has offset 1).

The definition of A054526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054526.P1249106491929567453

`A000010(n+1-C(∑[char[∑[n]]], 2))`
-/

namespace A054526.P1249106491929567453
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1 - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A054526.P1249106491929567453

namespace A054526

/-- `A000010(n+1-C(∑[char[∑[n]]], 2))` -/
def P1249106491929567453.Spec : Prop :=
  ∀ n, P1249106491929567453.a n = A054526 (n + 1)

end A054526

/-! ## A054526.P10074911723705506468

`A349137(A174028(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A054526

/-- `A349137(A174028(n))` -/
def P10074911723705506468.Spec : Prop :=
  ∀ n, P10074911723705506468.a n = A054526 (n + 1)

theorem P10074911723705506468.correct : P10074911723705506468.Spec := by
  intro n
  simp only [A054526, Nat.add_sub_cancel]

end A054526

/-! ## A054526.P7780760595493677832

`A000010(A002260(n+1))`
-/

namespace A054526.P7780760595493677832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1)).toNat

end

end A054526.P7780760595493677832

namespace A054526

/-- `A000010(A002260(n+1))` -/
def P7780760595493677832.Spec : Prop :=
  ∀ n, P7780760595493677832.a n = A054526 (n + 1)

end A054526

/-! ## A054526.P12374779519580698787

`A000010(A002262(n)+1)`
-/

namespace A054526.P12374779519580698787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002262 n + 1).toNat

end

end A054526.P12374779519580698787

namespace A054526

/-- `A000010(A002262(n)+1)` -/
def P12374779519580698787.Spec : Prop :=
  ∀ n, P12374779519580698787.a n = A054526 (n + 1)

end A054526

/-! ## A054526.P10783745499117036550

`A000010(A134868(n+1))`
-/

namespace A054526.P10783745499117036550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A134868 (n + 1)).toNat

end

end A054526.P10783745499117036550

namespace A054526

/-- `A000010(A134868(n+1))` -/
def P10783745499117036550.Spec : Prop :=
  ∀ n, P10783745499117036550.a n = A054526 (n + 1)

end A054526

/-! ## A054526.P16624045908946837303

`A067541(A158405(n+1))`
-/

namespace A054526.P16624045908946837303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (A158405 (n + 1)).toNat

end

end A054526.P16624045908946837303

namespace A054526

/-- `A067541(A158405(n+1))` -/
def P16624045908946837303.Spec : Prop :=
  ∀ n, P16624045908946837303.a n = A054526 (n + 1)

end A054526

/-! ## A054526.P16562289879336573268

`A002260(A286235(n+1))`
-/

namespace A054526.P16562289879336573268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286235 (n + 1)).toNat

end

end A054526.P16562289879336573268

namespace A054526

/-- `A002260(A286235(n+1))` -/
def P16562289879336573268.Spec : Prop :=
  ∀ n, P16562289879336573268.a n = A054526 (n + 1)

end A054526

/-! ## A054526.P17345479213296875051

`A130584(n)/A101508(n)`
-/

namespace A054526.P17345479213296875051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130584 n : ℚ) / (A101508 n : ℚ)

end

end A054526.P17345479213296875051

namespace A054526

/-- `A130584(n)/A101508(n)` -/
def P17345479213296875051.Spec : Prop :=
  ∀ n, P17345479213296875051.a n = (A054526 (n + 1) : ℚ)

end A054526

/-! ## A054526.P17875017380416990352

`A000010(abs(A140756(n+1)))`
-/

namespace A054526.P17875017380416990352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |A140756 (n + 1)|.toNat

end

end A054526.P17875017380416990352

namespace A054526

/-- `A000010(abs(A140756(n+1)))` -/
def P17875017380416990352.Spec : Prop :=
  ∀ n, P17875017380416990352.a n = A054526 (n + 1)

end A054526

/-! ## A054526.P1506606806046285461

`A000010(sqrt(A133819(n+1)))`
-/

namespace A054526.P1506606806046285461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat

end

end A054526.P1506606806046285461

namespace A054526

/-- `A000010(sqrt(A133819(n+1)))` -/
def P1506606806046285461.Spec : Prop :=
  ∀ n, P1506606806046285461.a n = A054526 (n + 1)

end A054526

/-! ## A054526.P8647023149800909202

`A000010(log2(A059268(n))+1)`
-/

namespace A054526.P8647023149800909202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 1)).toNat

end

end A054526.P8647023149800909202

namespace A054526

/-- `A000010(log2(A059268(n))+1)` -/
def P8647023149800909202.Spec : Prop :=
  ∀ n, P8647023149800909202.a n = A054526 (n + 1)

end A054526

/-! ## A054526.P161884245660134386

`A000010(log2(2*A059268(n)))`
-/

namespace A054526.P161884245660134386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A059268 n : ℝ))).toNat

end

end A054526.P161884245660134386

namespace A054526

/-- `A000010(log2(2*A059268(n)))` -/
def P161884245660134386.Spec : Prop :=
  ∀ n, P161884245660134386.a n = A054526 (n + 1)

end A054526

/-! ## A054526.P2616265023881147363

`A109606(A002262(n)+1)+1`
-/

namespace A054526.P2616265023881147363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A002262 n + 1).toNat + 1

end

end A054526.P2616265023881147363

namespace A054526

/-- `A109606(A002262(n)+1)+1` -/
def P2616265023881147363.Spec : Prop :=
  ∀ n, P2616265023881147363.a n = A054526 (n + 1)

end A054526

/-! ## A054526.P16585687081382141701

`A000010(1-A057944(n)+n)`
-/

namespace A054526.P16585687081382141701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (1 - A057944 n + (n : ℤ)).toNat

end

end A054526.P16585687081382141701

namespace A054526

/-- `A000010(1-A057944(n)+n)` -/
def P16585687081382141701.Spec : Prop :=
  ∀ n, P16585687081382141701.a n = A054526 (n + 1)

end A054526

/-! ## A054526.P16986230512619064763

`A000010(A132118(n+1)-n)`
-/

namespace A054526.P16986230512619064763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A132118 (n + 1) - (n : ℤ)).toNat

end

end A054526.P16986230512619064763

namespace A054526

/-- `A000010(A132118(n+1)-n)` -/
def P16986230512619064763.Spec : Prop :=
  ∀ n, P16986230512619064763.a n = A054526 (n + 1)

end A054526

/-! ## A054526.P11403794926031617702

`A000010(1-(A057944(n)-n))`
-/

namespace A054526.P11403794926031617702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (1 - (A057944 n - (n : ℤ))).toNat

end

end A054526.P11403794926031617702

namespace A054526

/-- `A000010(1-(A057944(n)-n))` -/
def P11403794926031617702.Spec : Prop :=
  ∀ n, P11403794926031617702.a n = A054526 (n + 1)

end A054526

/-! ## A054526.P17084826488514887103

`A000010((A158405(n+1)+1)/2)`
-/

namespace A054526.P17084826488514887103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A158405 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A054526.P17084826488514887103

namespace A054526

/-- `A000010((A158405(n+1)+1)/2)` -/
def P17084826488514887103.Spec : Prop :=
  ∀ n, P17084826488514887103.a n = A054526 (n + 1)

end A054526

/-! ## A054526.P7687655361420872425

`A130212(n+1)/A010766(n+1)`
-/

namespace A054526.P7687655361420872425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130212 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A054526.P7687655361420872425

namespace A054526

/-- `A130212(n+1)/A010766(n+1)` -/
def P7687655361420872425.Spec : Prop :=
  ∀ n, P7687655361420872425.a n = (A054526 (n + 1) : ℚ)

end A054526

/-! ## A054526.P3598024251862256602

`A143269(n+1)/A002024(n+1)`
-/

namespace A054526.P3598024251862256602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143269 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A054526.P3598024251862256602

namespace A054526

/-- `A143269(n+1)/A002024(n+1)` -/
def P3598024251862256602.Spec : Prop :=
  ∀ n, P3598024251862256602.a n = (A054526 (n + 1) : ℚ)

end A054526

/-! ## A054526.P1092192515941721504

`A181538(n+1)/A050873(n+1)`
-/

namespace A054526.P1092192515941721504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181538 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A054526.P1092192515941721504

namespace A054526

/-- `A181538(n+1)/A050873(n+1)` -/
def P1092192515941721504.Spec : Prop :=
  ∀ n, P1092192515941721504.a n = (A054526 (n + 1) : ℚ)

end A054526

/-!
# A054527: Triangle read by rows: T(n,k) = Moebius mu(k) (n >= 1, 1 <= k <= n).

The programs for A054527, the canonical program `A054527.P15635467565137321450` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054527 has offset 1).

The definition of A054527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054527.P9898389306306973188

`A008683(n+1-C(∑[char[∑[n]]], 2))`
-/

namespace A054527.P9898389306306973188
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1 - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A054527.P9898389306306973188

namespace A054527

/-- `A008683(n+1-C(∑[char[∑[n]]], 2))` -/
def P9898389306306973188.Spec : Prop :=
  ∀ n, P9898389306306973188.a n = A054527 (n + 1)

end A054527

/-! ## A054527.P13521414952422923155

`A130161(A112367(n))`
-/

namespace A054527.P13521414952422923155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130161 (A112367 n).toNat

end

end A054527.P13521414952422923155

namespace A054527

/-- `A130161(A112367(n))` -/
def P13521414952422923155.Spec : Prop :=
  ∀ n, P13521414952422923155.a n = A054527 (n + 1)

end A054527

/-! ## A054527.P18276619442377422168

`A008683(A002260(n+1))`
-/

namespace A054527.P18276619442377422168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002260 (n + 1)).toNat

end

end A054527.P18276619442377422168

namespace A054527

/-- `A008683(A002260(n+1))` -/
def P18276619442377422168.Spec : Prop :=
  ∀ n, P18276619442377422168.a n = A054527 (n + 1)

end A054527

/-! ## A054527.P13905071156749216652

`A008683(A002262(n)+1)`
-/

namespace A054527.P13905071156749216652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002262 n + 1).toNat

end

end A054527.P13905071156749216652

namespace A054527

/-- `A008683(A002262(n)+1)` -/
def P13905071156749216652.Spec : Prop :=
  ∀ n, P13905071156749216652.a n = A054527 (n + 1)

end A054527

/-! ## A054527.P17889007289881013812

`A054533(A112367(n)+1)`
-/

namespace A054527.P17889007289881013812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054533 (A112367 n + 1).toNat

end

end A054527.P17889007289881013812

namespace A054527

/-- `A054533(A112367(n)+1)` -/
def P17889007289881013812.Spec : Prop :=
  ∀ n, P17889007289881013812.a n = A054527 (n + 1)

end A054527

/-! ## A054527.P14979329572756452796

`A008683(abs(A140756(n+1)))`
-/

namespace A054527.P14979329572756452796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 |A140756 (n + 1)|.toNat

end

end A054527.P14979329572756452796

namespace A054527

/-- `A008683(abs(A140756(n+1)))` -/
def P14979329572756452796.Spec : Prop :=
  ∀ n, P14979329572756452796.a n = A054527 (n + 1)

end A054527

/-! ## A054527.P16383626199352774886

`A008683(sqrt(A133819(n+1)))`
-/

namespace A054527.P16383626199352774886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat

end

end A054527.P16383626199352774886

namespace A054527

/-- `A008683(sqrt(A133819(n+1)))` -/
def P16383626199352774886.Spec : Prop :=
  ∀ n, P16383626199352774886.a n = A054527 (n + 1)

end A054527

/-! ## A054527.P9482979581571714762

`A008683(1-A057944(n)+n)`
-/

namespace A054527.P9482979581571714762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (1 - A057944 n + (n : ℤ)).toNat

end

end A054527.P9482979581571714762

namespace A054527

/-- `A008683(1-A057944(n)+n)` -/
def P9482979581571714762.Spec : Prop :=
  ∀ n, P9482979581571714762.a n = A054527 (n + 1)

end A054527

/-! ## A054527.P18123504469383146357

`A008683(1-(A057944(n)-n))`
-/

namespace A054527.P18123504469383146357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (1 - (A057944 n - (n : ℤ))).toNat

end

end A054527.P18123504469383146357

namespace A054527

/-- `A008683(1-(A057944(n)-n))` -/
def P18123504469383146357.Spec : Prop :=
  ∀ n, P18123504469383146357.a n = A054527 (n + 1)

end A054527

/-! ## A054527.P14880917418503294476

`A127514(n+1)/A007318(n)`
-/

namespace A054527.P14880917418503294476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127514 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A054527.P14880917418503294476

namespace A054527

/-- `A127514(n+1)/A007318(n)` -/
def P14880917418503294476.Spec : Prop :=
  ∀ n, P14880917418503294476.a n = (A054527 (n + 1) : ℚ)

end A054527

/-! ## A054527.P10233380507085938654

`A008683((A158405(n+1)+1)/2)`
-/

namespace A054527.P10233380507085938654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A158405 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A054527.P10233380507085938654

namespace A054527

/-- `A008683((A158405(n+1)+1)/2)` -/
def P10233380507085938654.Spec : Prop :=
  ∀ n, P10233380507085938654.a n = A054527 (n + 1)

end A054527

/-! ## A054527.P10590710669935256942

`A143442(n+1)/A002024(n+1)`
-/

namespace A054527.P10590710669935256942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143442 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A054527.P10590710669935256942

namespace A054527

/-- `A143442(n+1)/A002024(n+1)` -/
def P10590710669935256942.Spec : Prop :=
  ∀ n, P10590710669935256942.a n = (A054527 (n + 1) : ℚ)

end A054527

/-! ## A054527.P5459642133695682946

`A143349(n+1)/A010766(n+1)`
-/

namespace A054527.P5459642133695682946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143349 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A054527.P5459642133695682946

namespace A054527

/-- `A143349(n+1)/A010766(n+1)` -/
def P5459642133695682946.Spec : Prop :=
  ∀ n, P5459642133695682946.a n = (A054527 (n + 1) : ℚ)

end A054527

/-! ## A054527.P12549094045261852273

`A143469(n+1)/A360610(n+1)`
-/

namespace A054527.P12549094045261852273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143469 (n + 1) : ℚ) / (A360610 (n + 1) : ℚ)

end

end A054527.P12549094045261852273

namespace A054527

/-- `A143469(n+1)/A360610(n+1)` -/
def P12549094045261852273.Spec : Prop :=
  ∀ n, P12549094045261852273.a n = (A054527 (n + 1) : ℚ)

end A054527

/-! ## A054527.P137055115124903095

`A143469(n+1)%A050206(n+2)`
-/

namespace A054527.P137055115124903095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143469 (n + 1)) (A050206 (n + 2))

end

end A054527.P137055115124903095

namespace A054527

/-- `A143469(n+1)%A050206(n+2)` -/
def P137055115124903095.Spec : Prop :=
  ∀ n, P137055115124903095.a n = A054527 (n + 1)

end A054527

/-! ## A054527.P8302941074898918711

`A143469(n+1)/A010766(n+1)²`
-/

namespace A054527.P8302941074898918711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143469 (n + 1) : ℚ) / (A010766 (n + 1) ^ 2 : ℚ)

end

end A054527.P8302941074898918711

namespace A054527

/-- `A143469(n+1)/A010766(n+1)²` -/
def P8302941074898918711.Spec : Prop :=
  ∀ n, P8302941074898918711.a n = (A054527 (n + 1) : ℚ)

end A054527

/-! ## A054527.P15968565531445292678

`A008683(round(sqrt(2*n+1))-A025581(n))`
-/

namespace A054527.P15968565531445292678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - A025581 n).toNat

end

end A054527.P15968565531445292678

namespace A054527

/-- `A008683(round(sqrt(2*n+1))-A025581(n))` -/
def P15968565531445292678.Spec : Prop :=
  ∀ n, P15968565531445292678.a n = A054527 (n + 1)

end A054527

/-! ## A054527.P15635467565137321450

`A054525(A000124(A002262(n)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A054527

/-- `A054525(A000124(A002262(n)))` -/
def P15635467565137321450.Spec : Prop :=
  ∀ n, P15635467565137321450.a n = A054527 (n + 1)

theorem P15635467565137321450.correct : P15635467565137321450.Spec := by
  intro n
  simp only [A054527, Nat.add_sub_cancel]

end A054527

/-! ## A054527.P11746755084111878050

`A008683(n+1-A161680(A003056(n)+1))`
-/

namespace A054527.P11746755084111878050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1 : ℤ) - A161680 (A003056 n + 1).toNat).toNat

end

end A054527.P11746755084111878050

namespace A054527

/-- `A008683(n+1-A161680(A003056(n)+1))` -/
def P11746755084111878050.Spec : Prop :=
  ∀ n, P11746755084111878050.a n = A054527 (n + 1)

end A054527

/-! ## A054527.P6619687938916512158

`A152904(A038722(n+1))`
-/

namespace A054527.P6619687938916512158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152904 (A038722 (n + 1)).toNat

end

end A054527.P6619687938916512158

namespace A054527

/-- `A152904(A038722(n+1))` -/
def P6619687938916512158.Spec : Prop :=
  ∀ n, P6619687938916512158.a n = A054527 (n + 1)

end A054527

/-!
# A054528: Triangle T(n,k) giving number of codewords with k runs in Varshamov-Tenengolts code VT_0(n) of length n (n >= 1, 1<=k<=n).

The programs for A054528, there is no canonical definition to state claims against.
-/

/-! ## A054528.P15216466437413782760

`A190487(∑[A220054(n)!])`
-/

namespace A054528.P15216466437413782760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A220054 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190487 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054528.P15216466437413782760

/-! ## A054528.P18126821731224107213

`A190241(A061497(n+1))%3`
-/

namespace A054528.P18126821731224107213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190241 (A061497 (n + 1)).toNat) 3

end

end A054528.P18126821731224107213

/-! ## A054528.P15328406226776713216

`A020655(∑[A299905(n)!])%3`
-/

namespace A054528.P15328406226776713216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A299905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020655 (∑ j ∈ Finset.range (n + 1), f1 j)) 3

end

end A054528.P15328406226776713216

/-! ## A054528.P5804824183461249367

`A076826(lcm(A008126(n), A190098(n+1)))`
-/

namespace A054528.P5804824183461249367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (Int.lcm (A008126 n) (A190098 (n + 1)))

end

end A054528.P5804824183461249367

/-! ## A054528.P8225471150075503151

`lt[7, A321391(2*(n+2))]%3`
-/

namespace A054528.P8225471150075503151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321391 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 3

end

end A054528.P8225471150075503151

/-!
# A054531: Triangular array T read by rows: T(n,k) = n/gcd(n,k) (n >= 1, 1 <= k <= n).

The programs for A054531, the canonical program `A054531.P17853687530783938553` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054531 has offset 1).

The definition of A054531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054531.P18235270103958631731

`∑[char[∑[n]]]/A050873(n+1)`
-/

namespace A054531.P18235270103958631731
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A054531.P18235270103958631731

namespace A054531

/-- `∑[char[∑[n]]]/A050873(n+1)` -/
def P18235270103958631731.Spec : Prop :=
  ∀ n, P18235270103958631731.a n = (A054531 (n + 1) : ℚ)

end A054531

/-! ## A054531.P13759715009896297839

`A167192(n+1)+A164306(n+1)`
-/

namespace A054531.P13759715009896297839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167192 (n + 1) + A164306 (n + 1)

end

end A054531.P13759715009896297839

namespace A054531

/-- `A167192(n+1)+A164306(n+1)` -/
def P13759715009896297839.Spec : Prop :=
  ∀ n, P13759715009896297839.a n = A054531 (n + 1)

end A054531

/-! ## A054531.P12688164532641546371

`A051173(n+1)/A002260(n+1)`
-/

namespace A054531.P12688164532641546371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A054531.P12688164532641546371

namespace A054531

/-- `A051173(n+1)/A002260(n+1)` -/
def P12688164532641546371.Spec : Prop :=
  ∀ n, P12688164532641546371.a n = (A054531 (n + 1) : ℚ)

end A054531

/-! ## A054531.P6699172630328841141

`A051173(n+1)/(A002262(n)+1)`
-/

namespace A054531.P6699172630328841141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A054531.P6699172630328841141

namespace A054531

/-- `A051173(n+1)/(A002262(n)+1)` -/
def P6699172630328841141.Spec : Prop :=
  ∀ n, P6699172630328841141.a n = (A054531 (n + 1) : ℚ)

end A054531

/-! ## A054531.P15196459286666338402

`A051537(n+1)/A164306(n+1)`
-/

namespace A054531.P15196459286666338402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051537 (n + 1) : ℚ) / (A164306 (n + 1) : ℚ)

end

end A054531.P15196459286666338402

namespace A054531

/-- `A051537(n+1)/A164306(n+1)` -/
def P15196459286666338402.Spec : Prop :=
  ∀ n, P15196459286666338402.a n = (A054531 (n + 1) : ℚ)

end A054531

/-! ## A054531.P4822408256566177414

`A143269(n+1)/A181538(n+1)`
-/

namespace A054531.P4822408256566177414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143269 (n + 1) : ℚ) / (A181538 (n + 1) : ℚ)

end

end A054531.P4822408256566177414

namespace A054531

/-- `A143269(n+1)/A181538(n+1)` -/
def P4822408256566177414.Spec : Prop :=
  ∀ n, P4822408256566177414.a n = (A054531 (n + 1) : ℚ)

end A054531

/-! ## A054531.P17853687530783938553

`floor(A002024(n+1)/A050873(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A054531

/-- `floor(A002024(n+1)/A050873(n+1))` -/
def P17853687530783938553.Spec : Prop :=
  ∀ n, P17853687530783938553.a n = A054531 (n + 1)

theorem P17853687530783938553.correct : P17853687530783938553.Spec := by
  intro n
  simp only [A054531, Nat.add_sub_cancel]

end A054531

/-! ## A054531.P4553030082357803079

`A000027(A002024(n+1)/A050873(n+1))`
-/

namespace A054531.P4553030082357803079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A002024 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ))).toNat

end

end A054531.P4553030082357803079

namespace A054531

/-- `A000027(A002024(n+1)/A050873(n+1))` -/
def P4553030082357803079.Spec : Prop :=
  ∀ n, P4553030082357803079.a n = A054531 (n + 1)

end A054531

/-! ## A054531.P8200373710377775863

`A002024(n+1)/gcd(A002260(n+1), A025581(n))`
-/

namespace A054531.P8200373710377775863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) / (Int.gcd (A002260 (n + 1)) (A025581 n) : ℚ)

end

end A054531.P8200373710377775863

namespace A054531

/-- `A002024(n+1)/gcd(A002260(n+1), A025581(n))` -/
def P8200373710377775863.Spec : Prop :=
  ∀ n, P8200373710377775863.a n = (A054531 (n + 1) : ℚ)

end A054531

/-! ## A054531.P13514040525817922988

`A167192(n+1)+A002260(n+1)/A050873(n+1)`
-/

namespace A054531.P13514040525817922988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167192 (n + 1) : ℚ) + (A002260 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A054531.P13514040525817922988

namespace A054531

/-- `A167192(n+1)+A002260(n+1)/A050873(n+1)` -/
def P13514040525817922988.Spec : Prop :=
  ∀ n, P13514040525817922988.a n = (A054531 (n + 1) : ℚ)

end A054531

/-! ## A054531.P6398401337810679491

`A050873(n+1)/A002260(n+1)*A051537(n+1)`
-/

namespace A054531.P6398401337810679491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050873 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A051537 (n + 1) : ℚ)

end

end A054531.P6398401337810679491

namespace A054531

/-- `A050873(n+1)/A002260(n+1)*A051537(n+1)` -/
def P6398401337810679491.Spec : Prop :=
  ∀ n, P6398401337810679491.a n = (A054531 (n + 1) : ℚ)

end A054531

/-! ## A054531.P1647021228499199733

`A075362(n+1)/(A002260(n+1)*A050873(n+1))`
-/

namespace A054531.P1647021228499199733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) : ℚ) / (A002260 (n + 1) * A050873 (n + 1) : ℚ)

end

end A054531.P1647021228499199733

namespace A054531

/-- `A075362(n+1)/(A002260(n+1)*A050873(n+1))` -/
def P1647021228499199733.Spec : Prop :=
  ∀ n, P1647021228499199733.a n = (A054531 (n + 1) : ℚ)

end A054531

/-! ## A054531.P3710006429483178254

`A051173(n+1)/(A050873(n+1)*A164306(n+1))`
-/

namespace A054531.P3710006429483178254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) : ℚ) / (A050873 (n + 1) * A164306 (n + 1) : ℚ)

end

end A054531.P3710006429483178254

namespace A054531

/-- `A051173(n+1)/(A050873(n+1)*A164306(n+1))` -/
def P3710006429483178254.Spec : Prop :=
  ∀ n, P3710006429483178254.a n = (A054531 (n + 1) : ℚ)

end A054531

/-! ## A054531.P15651645310827184208

`A075362(n+1)/gcd(A075362(n+1), A133819(n+1))`
-/

namespace A054531.P15651645310827184208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) : ℚ) / (Int.gcd (A075362 (n + 1)) (A133819 (n + 1)) : ℚ)

end

end A054531.P15651645310827184208

namespace A054531

/-- `A075362(n+1)/gcd(A075362(n+1), A133819(n+1))` -/
def P15651645310827184208.Spec : Prop :=
  ∀ n, P15651645310827184208.a n = (A054531 (n + 1) : ℚ)

end A054531

/-! ## A054531.P2817397108169429929

`A277227(n+2)`
-/

namespace A054531.P2817397108169429929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (n + 2)

end

end A054531.P2817397108169429929

namespace A054531

/-- `A277227(n+2)` -/
def P2817397108169429929.Spec : Prop :=
  ∀ n, P2817397108169429929.a n = A054531 (n + 1)

end A054531

/-! ## A054531.P487830019381527607

`A341314(A014132(n+1))`
-/

namespace A054531.P487830019381527607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341314 (A014132 (n + 1)).toNat

end

end A054531.P487830019381527607

namespace A054531

/-- `A341314(A014132(n+1))` -/
def P487830019381527607.Spec : Prop :=
  ∀ n, P487830019381527607.a n = A054531 (n + 1)

end A054531

/-! ## A054531.P351735219856898594

`A341314(A007401(n+2))`
-/

namespace A054531.P351735219856898594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341314 (A007401 (n + 2)).toNat

end

end A054531.P351735219856898594

namespace A054531

/-- `A341314(A007401(n+2))` -/
def P351735219856898594.Spec : Prop :=
  ∀ n, P351735219856898594.a n = A054531 (n + 1)

end A054531

/-! ## A054531.P17541011331748629270

`A391490(A133280(n+1))`
-/

namespace A054531.P17541011331748629270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391490 (A133280 (n + 1)).toNat

end

end A054531.P17541011331748629270

namespace A054531

/-- `A391490(A133280(n+1))` -/
def P17541011331748629270.Spec : Prop :=
  ∀ n, P17541011331748629270.a n = A054531 (n + 1)

end A054531

/-! ## A054531.P12105151473320563841

`A075119(A004202(n+1))`
-/

namespace A054531.P12105151473320563841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (A004202 (n + 1)).toNat

end

end A054531.P12105151473320563841

namespace A054531

/-- `A075119(A004202(n+1))` -/
def P12105151473320563841.Spec : Prop :=
  ∀ n, P12105151473320563841.a n = A054531 (n + 1)

end A054531

/-! ## A054531.P16497745358888315038

`A075119(A063657(n+1))`
-/

namespace A054531.P16497745358888315038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (A063657 (n + 1)).toNat

end

end A054531.P16497745358888315038

namespace A054531

/-- `A075119(A063657(n+1))` -/
def P16497745358888315038.Spec : Prop :=
  ∀ n, P16497745358888315038.a n = A054531 (n + 1)

end A054531

/-!
# A054532: Ramanujan sum T(n, k) = c_k(n) = Sum_{m=1..k, (m,k)=1} exp(2*Pi*i*m*n / k), triangular array read by rows for n >= 1 and 1 <= k <= n.

The programs for A054532, there is no canonical definition to state claims against.
-/

/-! ## A054532.P18428612755898771488

`A054534(A245300(n)+1)`
-/

namespace A054532.P18428612755898771488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (A245300 n + 1).toNat

end

end A054532.P18428612755898771488

/-! ## A054532.P7877167973893687864

`A054534((A214661(n+1)+1)/2)`
-/

namespace A054532.P7877167973893687864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (SequenceMachineLib.roundAway ((A214661 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A054532.P7877167973893687864

/-! ## A054532.P7848730872435863156

`A054535(A245300(n)+A004736(n+1))`
-/

namespace A054532.P7848730872435863156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054535 (A245300 n + A004736 (n + 1)).toNat

end

end A054532.P7848730872435863156

/-! ## A054532.P4412406072570850052

`A054534(A008619(A214661(n+1)))`
-/

namespace A054532.P4412406072570850052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (A008619 (A214661 (n + 1)).toNat).toNat

end

end A054532.P4412406072570850052

/-!
# A054533: Triangular array giving Ramanujan sum T(n,k) = c_n(k) = Sum_{m=1..n, (m,n)=1} exp(2 Pi i m k / n) for n >= 1 and 1 <= k <= n.

The programs for A054533, there is no canonical definition to state claims against.
-/

/-! ## A054533.P11432371694454778217

`ceil(A144733(n+1)/2)`
-/

namespace A054533.P11432371694454778217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A144733 (n + 1) : ℚ) / 2⌉

end

end A054533.P11432371694454778217

/-! ## A054533.P5444832677313267024

`A390279(A014132(n+1))`
-/

namespace A054533.P5444832677313267024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390279 (A014132 (n + 1)).toNat

end

end A054533.P5444832677313267024

/-! ## A054533.P16738600572758705494

`A144824(n+1)/A002260(n+1)`
-/

namespace A054533.P16738600572758705494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144824 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A054533.P16738600572758705494

/-! ## A054533.P17883607295924847494

`Δ[-A144734(n+1)]`
-/

namespace A054533.P17883607295924847494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A144734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054533.P17883607295924847494

/-! ## A054533.P14344152302701920265

`A282634(A066181(n+1))`
-/

namespace A054533.P14344152302701920265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282634 (A066181 (n + 1)).toNat

end

end A054533.P14344152302701920265

/-! ## A054533.P17235890007320080008

`A144734(n+1)-A144734(n+2)`
-/

namespace A054533.P17235890007320080008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144734 (n + 1) - A144734 (n + 2)

end

end A054533.P17235890007320080008

/-! ## A054533.P11167676211061230397

`A282634(A038722(n+1))`
-/

namespace A054533.P11167676211061230397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282634 (A038722 (n + 1)).toNat

end

end A054533.P11167676211061230397

/-! ## A054533.P786959275392989171

`A282634(∑[A010054(n)]²-n)`
-/

namespace A054533.P786959275392989171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282634 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)).toNat

end

end A054533.P786959275392989171

/-! ## A054533.P10463456959232034261

`A282634(A002024(n+1)²-n)`
-/

namespace A054533.P10463456959232034261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282634 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A054533.P10463456959232034261

/-! ## A054533.P4117701030913288548

`A282634(A000194(2*n+1)²-n)`
-/

namespace A054533.P4117701030913288548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282634 (A000194 (2 * n + 1) ^ 2 - (n : ℤ)).toNat

end

end A054533.P4117701030913288548

/-! ## A054533.P1379604339931473626

`A054535(A245300(n)+1)`
-/

namespace A054533.P1379604339931473626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054535 (A245300 n + 1).toNat

end

end A054533.P1379604339931473626

/-!
# A054534: Square array giving Ramanujan sum T(n,k) = c_k(n) = Sum_{m=1..k, (m,k)=1} exp(2 Pi i m n / k), read by antidiagonals upwards (n >= 1, k >= 1).

The programs for A054534, there is no canonical definition to state claims against.
-/

/-! ## A054534.P11264389770469067381

`A054535(∑[char[∑[n]]]²-n)`
-/

namespace A054534.P11264389770469067381
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054535 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A054534.P11264389770469067381

/-! ## A054534.P7266584573265383653

`or(A000007(n), A054535(A038722(n+1)))`
-/

namespace A054534.P7266584573265383653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A054535 (A038722 (n + 1)).toNat)

end

end A054534.P7266584573265383653

/-! ## A054534.P6636047517222821210

`or(A010054(n), A054535(A038722(n+1)))`
-/

namespace A054534.P6636047517222821210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A054535 (A038722 (n + 1)).toNat)

end

end A054534.P6636047517222821210

/-! ## A054534.P3397886770111774919

`A054535(A038722(n+1))+A000007(n+2)`
-/

namespace A054534.P3397886770111774919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054535 (A038722 (n + 1)).toNat + A000007 (n + 2)

end

end A054534.P3397886770111774919

/-! ## A054534.P5316061186926161234

`A054532(comp[∑[n]])`
-/

namespace A054534.P5316061186926161234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A054534.P5316061186926161234

/-! ## A054534.P13282650100241796722

`A054532(A007401(n+1)+1)%A000040(n+2)`
-/

namespace A054534.P13282650100241796722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054532 (A007401 (n + 1) + 1).toNat) (A000040 (n + 2))

end

end A054534.P13282650100241796722

/-! ## A054534.P4305238950727956158

`or(A054535(A038722(n+1)), A130706(2*n+3))`
-/

namespace A054534.P4305238950727956158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054535 (A038722 (n + 1)).toNat) (A130706 (2 * n + 3))

end

end A054534.P4305238950727956158

/-!
# A054535: Square array giving Ramanujan sum T(n,k) = c_n(k) = Sum_{m=1..n, (m,n)=1} exp(2 Pi i m k / n), read by antidiagonals upwards (n >= 1, k >= 1).

The programs for A054535, there is no canonical definition to state claims against.
-/

/-! ## A054535.P6353484484914094558

`A054534(A038722(n+1))`
-/

namespace A054535.P6353484484914094558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (A038722 (n + 1)).toNat

end

end A054535.P6353484484914094558

/-! ## A054535.P8163645488398546535

`A054534(A061579(n)+1)`
-/

namespace A054535.P8163645488398546535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (A061579 n + 1).toNat

end

end A054535.P8163645488398546535

/-! ## A054535.P8978474128695510611

`A054534(∑[A198954(n)]-n)`
-/

namespace A054535.P8978474128695510611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A054535.P8978474128695510611

/-! ## A054535.P10077825491330756107

`A054534((A003056(n)+1)²-n)`
-/

namespace A054535.P10077825491330756107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 ((A003056 n + 1) ^ 2 - (n : ℤ)).toNat

end

end A054535.P10077825491330756107

/-! ## A054535.P5183396483521085581

`A054534(A123578(n+1)²-n)`
-/

namespace A054535.P5183396483521085581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (A123578 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A054535.P5183396483521085581

/-! ## A054535.P1828989156383815289

`A054532(2*A004736(n+1)+n)`
-/

namespace A054535.P1828989156383815289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A054535.P1828989156383815289

/-! ## A054535.P16313719515588187847

`A054532(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A054535.P16313719515588187847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054532 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A054535.P16313719515588187847

/-!
# A054538: A000013 / 2.

The programs for A054538, the canonical program `A054538.P2968054408366459089` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054538 has offset 1).

The definition of A054538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054538.P16975130543128098703

`A059053(n+2)+A016116(n)`
-/

namespace A054538.P16975130543128098703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 (n + 2) + A016116 n

end

end A054538.P16975130543128098703

namespace A054538

/-- `A059053(n+2)+A016116(n)` -/
def P16975130543128098703.Spec : Prop :=
  ∀ n, P16975130543128098703.a n = A054538 (n + 1)

end A054538

/-! ## A054538.P9058302703469514532

`A000011(n+2)-A016116(n)`
-/

namespace A054538.P9058302703469514532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 2) - A016116 n

end

end A054538.P9058302703469514532

namespace A054538

/-- `A000011(n+2)-A016116(n)` -/
def P9058302703469514532.Spec : Prop :=
  ∀ n, P9058302703469514532.a n = A054538 (n + 1)

end A054538

/-! ## A054538.P5043507862238902882

`A158780(n+2)+A059053(n+2)`
-/

namespace A054538.P5043507862238902882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 2) + A059053 (n + 2)

end

end A054538.P5043507862238902882

namespace A054538

/-- `A158780(n+2)+A059053(n+2)` -/
def P5043507862238902882.Spec : Prop :=
  ∀ n, P5043507862238902882.a n = A054538 (n + 1)

end A054538

/-! ## A054538.P5083795304603856389

`A000013(n+2)/2`
-/

namespace A054538.P5083795304603856389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000013 (n + 2) : ℚ) / 2

end

end A054538.P5083795304603856389

namespace A054538

/-- `A000013(n+2)/2` -/
def P5083795304603856389.Spec : Prop :=
  ∀ n, P5083795304603856389.a n = (A054538 (n + 1) : ℚ)

end A054538

/-! ## A054538.P14773027777909977499

`round(A056295(n+2)/2)`
-/

namespace A054538.P14773027777909977499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A056295 (n + 2) : ℚ) / 2)

end

end A054538.P14773027777909977499

namespace A054538

/-- `round(A056295(n+2)/2)` -/
def P14773027777909977499.Spec : Prop :=
  ∀ n, P14773027777909977499.a n = A054538 (n + 1)

end A054538

/-! ## A054538.P3827761451848135449

`a(n-1)*ratio[A000013(n+1)]` with `a(0)=1, a(1)=1`
-/

namespace A054538.P3827761451848135449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A054538.P3827761451848135449

namespace A054538

/-- `a(n-1)*ratio[A000013(n+1)]` -/
def P3827761451848135449.Spec : Prop :=
  ∀ n, P3827761451848135449.a n = (A054538 (n + 1) : ℚ)

end A054538

/-! ## A054538.P3052520349784181977

`A007148(n+2)-2^n`
-/

namespace A054538.P3052520349784181977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007148 (n + 2) - (2 ^ n : ℤ)

end

end A054538.P3052520349784181977

namespace A054538

/-- `A007148(n+2)-2^n` -/
def P3052520349784181977.Spec : Prop :=
  ∀ n, P3052520349784181977.a n = A054538 (n + 1)

end A054538

/-! ## A054538.P12409506058412944416

`2^n-A059078(n+2)`
-/

namespace A054538.P12409506058412944416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A059078 (n + 2)

end

end A054538.P12409506058412944416

namespace A054538

/-- `2^n-A059078(n+2)` -/
def P12409506058412944416.Spec : Prop :=
  ∀ n, P12409506058412944416.a n = A054538 (n + 1)

end A054538

/-! ## A054538.P2968054408366459089

`A306905(n+2)/(2*(n+2))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A054538

/-- `A306905(n+2)/(2*(n+2))` -/
def P2968054408366459089.Spec : Prop :=
  ∀ n, P2968054408366459089.a n = (A054538 (n + 1) : ℚ)

end A054538

/-! ## A054538.P15468636423286996254

`A000116(n+2)-A053634(2*(n+2))`
-/

namespace A054538.P15468636423286996254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000116 (n + 2) - A053634 (2 * (n + 2))

end

end A054538.P15468636423286996254

namespace A054538

/-- `A000116(n+2)-A053634(2*(n+2))` -/
def P15468636423286996254.Spec : Prop :=
  ∀ n, P15468636423286996254.a n = A054538 (n + 1)

end A054538

/-!
# A054539: A000016 / 2.

The programs for A054539, the canonical program `A054539.P18146575541717922731` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054539 has offset 3).

The definition of A054539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054539.P3351705660730217427

`A007147(n+3)-A016116(n)`
-/

namespace A054539.P3351705660730217427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007147 (n + 3) - A016116 n

end

end A054539.P3351705660730217427

namespace A054539

/-- `A007147(n+3)-A016116(n)` -/
def P3351705660730217427.Spec : Prop :=
  ∀ n, P3351705660730217427.a n = A054539 (n + 3)

end A054539

/-! ## A054539.P14989186968456561646

`A263768(n+3)+1-A016116(n)`
-/

namespace A054539.P14989186968456561646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263768 (n + 3) + (1 - A016116 n)

end

end A054539.P14989186968456561646

namespace A054539

/-- `A263768(n+3)+1-A016116(n)` -/
def P14989186968456561646.Spec : Prop :=
  ∀ n, P14989186968456561646.a n = A054539 (n + 3)

end A054539

/-! ## A054539.P18146575541717922731

`A000016(n+3)/2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A054539

/-- `A000016(n+3)/2` -/
def P18146575541717922731.Spec : Prop :=
  ∀ n, P18146575541717922731.a n = (A054539 (n + 3) : ℚ)

end A054539

/-! ## A054539.P527462703390258316

`(A096010(n+3)-1)/2`
-/

namespace A054539.P527462703390258316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096010 (n + 3) - 1 : ℚ) / 2

end

end A054539.P527462703390258316

namespace A054539

/-- `(A096010(n+3)-1)/2` -/
def P527462703390258316.Spec : Prop :=
  ∀ n, P527462703390258316.a n = (A054539 (n + 3) : ℚ)

end A054539

/-! ## A054539.P13643521638589365424

`A063776(n+3)/4`
-/

namespace A054539.P13643521638589365424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063776 (n + 3) : ℚ) / 4

end

end A054539.P13643521638589365424

namespace A054539

/-- `A063776(n+3)/4` -/
def P13643521638589365424.Spec : Prop :=
  ∀ n, P13643521638589365424.a n = (A054539 (n + 3) : ℚ)

end A054539

/-! ## A054539.P17407166271039099868

`Δ[A065795(n+2)/2]`
-/

namespace A054539.P17407166271039099868
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065795 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054539.P17407166271039099868

namespace A054539

/-- `Δ[A065795(n+2)/2]` -/
def P17407166271039099868.Spec : Prop :=
  ∀ n, P17407166271039099868.a n = (A054539 (n + 3) : ℚ)

end A054539

/-! ## A054539.P16380985648239588506

`Δ[A133670(n+2)/2]`
-/

namespace A054539.P16380985648239588506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133670 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054539.P16380985648239588506

namespace A054539

/-- `Δ[A133670(n+2)/2]` -/
def P16380985648239588506.Spec : Prop :=
  ∀ n, P16380985648239588506.a n = (A054539 (n + 3) : ℚ)

end A054539

/-! ## A054539.P16807257422322242996

`A053633(C(n+3, 2))/2`
-/

namespace A054539.P16807257422322242996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053633 (Nat.choose (n + 3) 2) : ℚ) / 2

end

end A054539.P16807257422322242996

namespace A054539

/-- `A053633(C(n+3, 2))/2` -/
def P16807257422322242996.Spec : Prop :=
  ∀ n, P16807257422322242996.a n = (A054539 (n + 3) : ℚ)

end A054539

/-! ## A054539.P2111738157740153347

`A053633(A000217(n+2))/2`
-/

namespace A054539.P2111738157740153347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053633 (A000217 (n + 2)).toNat : ℚ) / 2

end

end A054539.P2111738157740153347

namespace A054539

/-- `A053633(A000217(n+2))/2` -/
def P2111738157740153347.Spec : Prop :=
  ∀ n, P2111738157740153347.a n = (A054539 (n + 3) : ℚ)

end A054539

/-! ## A054539.P3772517820204989024

`A068009(2*(n+2)²)`
-/

namespace A054539.P3772517820204989024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (2 * (n + 2) ^ 2)

end

end A054539.P3772517820204989024

namespace A054539

/-- `A068009(2*(n+2)²)` -/
def P3772517820204989024.Spec : Prop :=
  ∀ n, P3772517820204989024.a n = A054539 (n + 3)

end A054539

/-!
# A054540: A list of equal temperaments (equal divisions of the octave) whose nearest scale steps are closer and closer approximations to the six simple ratios of musical harmony: 6/5, 5/4, 4/3, 3/2, 8/5 and 5/3.

The programs for A054540, there is no canonical definition to state claims against.
-/

/-! ## A054540.P4065305741859427108

`record[A134628(∑[A297020(n+1)]+1)]`
-/

namespace A054540.P4065305741859427108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297020 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134628 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054540.P4065305741859427108

/-! ## A054540.P5525985572060702010

`A068937(record[A020639((n+1)*Δ[n^3])])`
-/

namespace A054540.P5525985572060702010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054540.P5525985572060702010

/-! ## A054540.P7043776816947539226

`A318745(n+2)-A329343(A326563(n))`
-/

namespace A054540.P7043776816947539226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318745 (n + 2) - A329343 (A326563 n).toNat

end

end A054540.P7043776816947539226

/-! ## A054540.P13018600049215426580

`∪[A005382(n+1), A347457(A335457(n))]`
-/

namespace A054540.P13018600049215426580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347457 (A335457 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054540.P13018600049215426580

/-!
# A054541: Sum of first n terms equals n-th prime.

The programs for A054541, the canonical program `A054541.P347795157194570387` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054541 has offset 1).

The definition of A054541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054541.P1698430311839163504

`A230847(n+1)-1`
-/

namespace A054541.P1698430311839163504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1) - 1

end

end A054541.P1698430311839163504

namespace A054541

/-- `A230847(n+1)-1` -/
def P1698430311839163504.Spec : Prop :=
  ∀ n, P1698430311839163504.a n = A054541 (n + 1)

end A054541

/-! ## A054541.P852576696787821414

`∑{d}[n+1, A333471(#)]`
-/

namespace A054541.P852576696787821414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A333471 d

end

end A054541.P852576696787821414

namespace A054541

/-- `∑{d}[n+1, A333471(#)]` -/
def P852576696787821414.Spec : Prop :=
  ∀ n, P852576696787821414.a n = A054541 (n + 1)

end A054541

/-! ## A054541.P9201252743377557048

`∑{digits}[A270264(n+1), #]`
-/

namespace A054541.P9201252743377557048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A054541.P9201252743377557048

namespace A054541

/-- `∑{digits}[A270264(n+1), #]` -/
def P9201252743377557048.Spec : Prop :=
  ∀ n, (P9201252743377557048.a n : ℤ) = A054541 (n + 1)

end A054541

/-! ## A054541.P12720804607163846145

`A001223(abs(1-n)+1)`
-/

namespace A054541.P12720804607163846145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (|1 - (n : ℤ)| + 1).toNat

end

end A054541.P12720804607163846145

namespace A054541

/-- `A001223(abs(1-n)+1)` -/
def P12720804607163846145.Spec : Prop :=
  ∀ n, P12720804607163846145.a n = A054541 (n + 1)

end A054541

/-! ## A054541.P347795157194570387

`A046930(n)+2-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A054541

/-- `A046930(n)+2-a(n-1)` -/
def P347795157194570387.Spec : Prop :=
  ∀ n, P347795157194570387.a n = A054541 (n + 1)

theorem P347795157194570387.correct : P347795157194570387.Spec := by
  intro n
  simp only [A054541, Nat.add_sub_cancel]

end A054541

/-! ## A054541.P11622439006728919368

`A036263(n-1)+a(n-1)` with `a(0)=2, a(1)=1`
-/

namespace A054541.P11622439006728919368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A036263 (n - 1) + a (n - 1)

end

end A054541.P11622439006728919368

namespace A054541

/-- `A036263(n-1)+a(n-1)` -/
def P11622439006728919368.Spec : Prop :=
  ∀ n, P11622439006728919368.a n = A054541 (n + 1)

end A054541

/-! ## A054541.P2934955160869476773

`A031131(n-1)-a(n-1)` with `a(0)=2, a(1)=1`
-/

namespace A054541.P2934955160869476773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A031131 (n - 1) - a (n - 1)

end

end A054541.P2934955160869476773

namespace A054541

/-- `A031131(n-1)-a(n-1)` -/
def P2934955160869476773.Spec : Prop :=
  ∀ n, P2934955160869476773.a n = A054541 (n + 1)

end A054541

/-! ## A054541.P17631335064022782843

`A083550(n-1)/a(n-1)` with `a(0)=2, a(1)=1`
-/

namespace A054541.P17631335064022782843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  (A083550 (n - 1) : ℚ) / a (n - 1)

end

end A054541.P17631335064022782843

namespace A054541

/-- `A083550(n-1)/a(n-1)` -/
def P17631335064022782843.Spec : Prop :=
  ∀ n, P17631335064022782843.a n = (A054541 (n + 1) : ℚ)

end A054541

/-! ## A054541.P17104497166707682632

`A131055(A125266(n+1))`
-/

namespace A054541.P17104497166707682632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (A125266 (n + 1)).toNat

end

end A054541.P17104497166707682632

namespace A054541

/-- `A131055(A125266(n+1))` -/
def P17104497166707682632.Spec : Prop :=
  ∀ n, P17104497166707682632.a n = A054541 (n + 1)

end A054541

/-! ## A054541.P11186502357883751805

`A075526(n)+A000007(n)`
-/

namespace A054541.P11186502357883751805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n + A000007 n

end

end A054541.P11186502357883751805

namespace A054541

/-- `A075526(n)+A000007(n)` -/
def P11186502357883751805.Spec : Prop :=
  ∀ n, P11186502357883751805.a n = A054541 (n + 1)

end A054541

/-! ## A054541.P6904423192288040281

`A138383(n)-A371201(n)`
-/

namespace A054541.P6904423192288040281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 n - A371201 n

end

end A054541.P6904423192288040281

namespace A054541

/-- `A138383(n)-A371201(n)` -/
def P6904423192288040281.Spec : Prop :=
  ∀ n, P6904423192288040281.a n = A054541 (n + 1)

end A054541

/-! ## A054541.P1760772964115818095

`A054977(n)*A075526(n)`
-/

namespace A054541.P1760772964115818095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A075526 n

end

end A054541.P1760772964115818095

namespace A054541

/-- `A054977(n)*A075526(n)` -/
def P1760772964115818095.Spec : Prop :=
  ∀ n, P1760772964115818095.a n = A054541 (n + 1)

end A054541

/-! ## A054541.P7675228272924993048

`lcm(A006340(n), A075526(n))`
-/

namespace A054541.P7675228272924993048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006340 n) (A075526 n)

end

end A054541.P7675228272924993048

namespace A054541

/-- `lcm(A006340(n), A075526(n))` -/
def P7675228272924993048.Spec : Prop :=
  ∀ n, (P7675228272924993048.a n : ℤ) = A054541 (n + 1)

end A054541

/-! ## A054541.P469165297651662668

`A230846(n+1)+A057428(n)`
-/

namespace A054541.P469165297651662668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1) + A057428 n

end

end A054541.P469165297651662668

namespace A054541

/-- `A230846(n+1)+A057428(n)` -/
def P469165297651662668.Spec : Prop :=
  ∀ n, P469165297651662668.a n = A054541 (n + 1)

end A054541

/-! ## A054541.P9601128829669507621

`A125266(n+1)-A000007(n)`
-/

namespace A054541.P9601128829669507621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1) - A000007 n

end

end A054541.P9601128829669507621

namespace A054541

/-- `A125266(n+1)-A000007(n)` -/
def P9601128829669507621.Spec : Prop :=
  ∀ n, P9601128829669507621.a n = A054541 (n + 1)

end A054541

/-! ## A054541.P5517897246003513388

`A175216(n+1)-A028815(n)`
-/

namespace A054541.P5517897246003513388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 1) - A028815 n

end

end A054541.P5517897246003513388

namespace A054541

/-- `A175216(n+1)-A028815(n)` -/
def P5517897246003513388.Spec : Prop :=
  ∀ n, P5517897246003513388.a n = A054541 (n + 1)

end A054541

/-! ## A054541.P17657520780443497564

`A076368(n+1)-A158388(n)`
-/

namespace A054541.P17657520780443497564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1) - A158388 n

end

end A054541.P17657520780443497564

namespace A054541

/-- `A076368(n+1)-A158388(n)` -/
def P17657520780443497564.Spec : Prop :=
  ∀ n, P17657520780443497564.a n = A054541 (n + 1)

end A054541

/-! ## A054541.P13982000517765474526

`A075526(n)+A036987(2*n)`
-/

namespace A054541.P13982000517765474526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n + A036987 (2 * n)

end

end A054541.P13982000517765474526

namespace A054541

/-- `A075526(n)+A036987(2*n)` -/
def P13982000517765474526.Spec : Prop :=
  ∀ n, P13982000517765474526.a n = A054541 (n + 1)

end A054541

/-! ## A054541.P6332420448826509863

`A001043(n+1)-A048448(n+1)`
-/

namespace A054541.P6332420448826509863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A048448 (n + 1)

end

end A054541.P6332420448826509863

namespace A054541

/-- `A001043(n+1)-A048448(n+1)` -/
def P6332420448826509863.Spec : Prop :=
  ∀ n, P6332420448826509863.a n = A054541 (n + 1)

end A054541

/-! ## A054541.P15112282677013299472

`A100484(n+1)-A011974(n+1)`
-/

namespace A054541.P15112282677013299472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A011974 (n + 1)

end

end A054541.P15112282677013299472

namespace A054541

/-- `A100484(n+1)-A011974(n+1)` -/
def P15112282677013299472.Spec : Prop :=
  ∀ n, P15112282677013299472.a n = A054541 (n + 1)

end A054541

/-!
# A054542: A Catalan-like sequence.

The programs for A054542, the canonical program `A054542.P2109901209092788677` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054542 has offset 0).

The definition of A054542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054542.P2109901209092788677

`ceil(A000984(n)/(n+2))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054542

/-- `ceil(A000984(n)/(n+2))` -/
def P2109901209092788677.Spec : Prop :=
  ∀ n, P2109901209092788677.a n = A054542 n

theorem P2109901209092788677.correct : P2109901209092788677.Spec := by
  intro n
  simp only [A054542]

end A054542

/-! ## A054542.P8967461991336401434

`floor(A350653(n+2)/(4*n+2))+1`
-/

namespace A054542.P8967461991336401434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350653 (n + 2) : ℚ) / (4 * n + 2 : ℚ)⌋ + 1

end

end A054542.P8967461991336401434

namespace A054542

/-- `floor(A350653(n+2)/(4*n+2))+1` -/
def P8967461991336401434.Spec : Prop :=
  ∀ n, P8967461991336401434.a n = A054542 n

end A054542

/-! ## A054542.P1449573440893582307

`ceil(record[A094527(n)/A193973(n)])`
-/

namespace A054542.P1449573440893582307
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094527 n : ℚ) / (A193973 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A054542.P1449573440893582307

namespace A054542

/-- `ceil(record[A094527(n)/A193973(n)])` -/
def P1449573440893582307.Spec : Prop :=
  ∀ n, P1449573440893582307.a n = A054542 n

end A054542

/-! ## A054542.P13570851421200969376

`ceil(C(2*n, n)/(n+2))`
-/

namespace A054542.P13570851421200969376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n) n : ℚ) / (n + 2 : ℚ)⌉

end

end A054542.P13570851421200969376

namespace A054542

/-- `ceil(C(2*n, n)/(n+2))` -/
def P13570851421200969376.Spec : Prop :=
  ∀ n, P13570851421200969376.a n = A054542 n

end A054542

/-! ## A054542.P8442986909516327391

`floor((C(2*n, n)+n+1)/(n+2))`
-/

namespace A054542.P8442986909516327391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n) n + (n + 1) : ℚ) / (n + 2 : ℚ)⌋

end

end A054542.P8442986909516327391

namespace A054542

/-- `floor((C(2*n, n)+n+1)/(n+2))` -/
def P8442986909516327391.Spec : Prop :=
  ∀ n, P8442986909516327391.a n = A054542 n

end A054542

/-!
# A054544: Engel series expansion (or "Egyptian product") for Khintchine's constant.

The programs for A054544, there is no canonical definition to state claims against.
-/

/-! ## A054544.P1381674915927938229

`A025454(n*A226736(n+1))`
-/

namespace A054544.P1381674915927938229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 ((n : ℤ) * A226736 (n + 1)).toNat

end

end A054544.P1381674915927938229

/-! ## A054544.P6328108461335452282

`A045778(A290621(n)*A307605(n))`
-/

namespace A054544.P6328108461335452282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A290621 n * A307605 n).toNat

end

end A054544.P6328108461335452282

/-! ## A054544.P6872111008686654169

`A276976(A231493(n)+Δ[A174016(n)])`
-/

namespace A054544.P6872111008686654169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 (A231493 n + (f1 (n + 1) - f1 n)).toNat

end

end A054544.P6872111008686654169

/-!
# A054545: Number of labeled digraphs on n unisolated nodes (inverse binomial transform of A053763).

The programs for A054545, there is no canonical definition to state claims against.
-/

/-! ## A054545.P17352936038517855358

`A217580(∑[n])`
-/

namespace A054545.P17352936038517855358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217580 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054545.P17352936038517855358

/-! ## A054545.P17904668504404314069

`gcd(A000038(n), A217580(A000217(n)))`
-/

namespace A054545.P17904668504404314069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A217580 (A000217 n).toNat)

end

end A054545.P17904668504404314069

/-! ## A054545.P2784933362491455384

`lcm(A033999(n), A217580(A000217(n)))`
-/

namespace A054545.P2784933362491455384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A217580 (A000217 n).toNat)

end

end A054545.P2784933362491455384

/-! ## A054545.P9827312835288385575

`or(A000007(n), A217580(A000217(n)))`
-/

namespace A054545.P9827312835288385575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A217580 (A000217 n).toNat)

end

end A054545.P9827312835288385575

/-! ## A054545.P15316205194708459705

`A217580(A000217(n))+A133010(n+1)`
-/

namespace A054545.P15316205194708459705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217580 (A000217 n).toNat + A133010 (n + 1)

end

end A054545.P15316205194708459705

/-!
# A054546: First differences of nonprimes (including 0 and 1, A002808).

The programs for A054546, the canonical program `A054546.P12235855701833693749` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054546 has offset 1).

The definition of A054546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054546.P7941677746410983189

`A018252(n+1)-A141468(n+1)`
-/

namespace A054546.P7941677746410983189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - A141468 (n + 1)

end

end A054546.P7941677746410983189

namespace A054546

/-- `A018252(n+1)-A141468(n+1)` -/
def P7941677746410983189.Spec : Prop :=
  ∀ n, P7941677746410983189.a n = A054546 (n + 1)

end A054546

/-! ## A054546.P8103344799996666717

`Δ[A141468(n+1)]`
-/

namespace A054546.P8103344799996666717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054546.P8103344799996666717

namespace A054546

/-- `Δ[A141468(n+1)]` -/
def P8103344799996666717.Spec : Prop :=
  ∀ n, P8103344799996666717.a n = A054546 (n + 1)

end A054546

/-! ## A054546.P8092367445460768805

`A161811(n)-a(n-1)` with `a(0)=1`
-/

namespace A054546.P8092367445460768805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A161811 n - a (n - 1)

end

end A054546.P8092367445460768805

namespace A054546

/-- `A161811(n)-a(n-1)` -/
def P8092367445460768805.Spec : Prop :=
  ∀ n, P8092367445460768805.a n = A054546 (n + 1)

end A054546

/-! ## A054546.P4444534534661802849

`Δ[∪[A002808(n+1), n²]]`
-/

namespace A054546.P4444534534661802849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A054546.P4444534534661802849

namespace A054546

/-- `Δ[∪[A002808(n+1), n²]]` -/
def P4444534534661802849.Spec : Prop :=
  ∀ n, P4444534534661802849.a n = A054546 (n + 1)

end A054546

/-! ## A054546.P7439098851980077369

`Δ[∪[A018252(n+1), n²]]`
-/

namespace A054546.P7439098851980077369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A054546.P7439098851980077369

namespace A054546

/-- `Δ[∪[A018252(n+1), n²]]` -/
def P7439098851980077369.Spec : Prop :=
  ∀ n, P7439098851980077369.a n = A054546 (n + 1)

end A054546

/-! ## A054546.P12235855701833693749

`A065310(A000038(n)²+n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054546

/-- `A065310(A000038(n)²+n)` -/
def P12235855701833693749.Spec : Prop :=
  ∀ n, P12235855701833693749.a n = A054546 (n + 1)

theorem P12235855701833693749.correct : P12235855701833693749.Spec := by
  intro n
  simp only [A054546, Nat.add_sub_cancel]

end A054546

/-! ## A054546.P8191740056813589972

`Δ[A051349(n)]-comp[A060264(n)]`
-/

namespace A054546.P8191740056813589972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A054546.P8191740056813589972

namespace A054546

/-- `Δ[A051349(n)]-comp[A060264(n)]` -/
def P8191740056813589972.Spec : Prop :=
  ∀ n, P8191740056813589972.a n = A054546 (n + 1)

end A054546

/-! ## A054546.P972437730657153754

`A018252(n+1)-comp[A060264(n)]`
-/

namespace A054546.P972437730657153754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A054546.P972437730657153754

namespace A054546

/-- `A018252(n+1)-comp[A060264(n)]` -/
def P972437730657153754.Spec : Prop :=
  ∀ n, P972437730657153754.a n = A054546 (n + 1)

end A054546

/-! ## A054546.P184032619281129735

`A018252(n+1)-comp[A151800(n)]`
-/

namespace A054546.P184032619281129735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A054546.P184032619281129735

namespace A054546

/-- `A018252(n+1)-comp[A151800(n)]` -/
def P184032619281129735.Spec : Prop :=
  ∀ n, P184032619281129735.a n = A054546 (n + 1)

end A054546

/-! ## A054546.P250865082889299195

`A018252(n+1)-comp[A162753(n)]`
-/

namespace A054546.P250865082889299195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A054546.P250865082889299195

namespace A054546

/-- `A018252(n+1)-comp[A162753(n)]` -/
def P250865082889299195.Spec : Prop :=
  ∀ n, P250865082889299195.a n = A054546 (n + 1)

end A054546

/-! ## A054546.P6249678834730714844

`Δ[∪[A000578(n), A018252(n+1)]]`
-/

namespace A054546.P6249678834730714844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A054546.P6249678834730714844

namespace A054546

/-- `Δ[∪[A000578(n), A018252(n+1)]]` -/
def P6249678834730714844.Spec : Prop :=
  ∀ n, P6249678834730714844.a n = A054546 (n + 1)

end A054546

/-! ## A054546.P2184335039517595000

`Δ[∪[A051872(n), A018252(n+1)]]`
-/

namespace A054546.P2184335039517595000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A054546.P2184335039517595000

namespace A054546

/-- `Δ[∪[A051872(n), A018252(n+1)]]` -/
def P2184335039517595000.Spec : Prop :=
  ∀ n, P2184335039517595000.a n = A054546 (n + 1)

end A054546

/-! ## A054546.P9012062023682340586

`A161671(n+1)-A014237(n+1)`
-/

namespace A054546.P9012062023682340586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 1) - A014237 (n + 1)

end

end A054546.P9012062023682340586

namespace A054546

/-- `A161671(n+1)-A014237(n+1)` -/
def P9012062023682340586.Spec : Prop :=
  ∀ n, P9012062023682340586.a n = A054546 (n + 1)

end A054546

/-! ## A054546.P8665349604054650493

`A161811(n+1)-A065310(n+1)`
-/

namespace A054546.P8665349604054650493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161811 (n + 1) - A065310 (n + 1)

end

end A054546.P8665349604054650493

namespace A054546

/-- `A161811(n+1)-A065310(n+1)` -/
def P8665349604054650493.Spec : Prop :=
  ∀ n, P8665349604054650493.a n = A054546 (n + 1)

end A054546

/-! ## A054546.P14919313067115092537

`A139270(n+1)-A166037(n+1)`
-/

namespace A054546.P14919313067115092537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1) - A166037 (n + 1)

end

end A054546.P14919313067115092537

namespace A054546

/-- `A139270(n+1)-A166037(n+1)` -/
def P14919313067115092537.Spec : Prop :=
  ∀ n, P14919313067115092537.a n = A054546 (n + 1)

end A054546

/-! ## A054546.P16507209243634145464

`A166037(n+1)-A176100(n+1)`
-/

namespace A054546.P16507209243634145464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1) - A176100 (n + 1)

end

end A054546.P16507209243634145464

namespace A054546

/-- `A166037(n+1)-A176100(n+1)` -/
def P16507209243634145464.Spec : Prop :=
  ∀ n, P16507209243634145464.a n = A054546 (n + 1)

end A054546

/-! ## A054546.P4283053303588805023

`A141468(n+2)-A141468(n+1)`
-/

namespace A054546.P4283053303588805023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2) - A141468 (n + 1)

end

end A054546.P4283053303588805023

namespace A054546

/-- `A141468(n+2)-A141468(n+1)` -/
def P4283053303588805023.Spec : Prop :=
  ∀ n, P4283053303588805023.a n = A054546 (n + 1)

end A054546

/-! ## A054546.P12488333731026252827

`A163602(n+1)/A166037(n+1)`
-/

namespace A054546.P12488333731026252827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163602 (n + 1) : ℚ) / (A166037 (n + 1) : ℚ)

end

end A054546.P12488333731026252827

namespace A054546

/-- `A163602(n+1)/A166037(n+1)` -/
def P12488333731026252827.Spec : Prop :=
  ∀ n, P12488333731026252827.a n = (A054546 (n + 1) : ℚ)

end A054546

/-!
# A054547: Triangular array giving number of labeled digraphs on n unisolated nodes and k=0..n*(n-1) arcs.

The programs for A054547, there is no canonical definition to state claims against.
-/

/-! ## A054547.P16194886785501382539

`∏{e}[3^n, A062735(#+1)]-floor(acot(n))`
-/

namespace A054547.P16194886785501382539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A062735 (Nat.factorization (f1 n) p + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A054547.P16194886785501382539

/-! ## A054547.P11391858088386877149

`A062735(n+1)%A228413(n)`
-/

namespace A054547.P11391858088386877149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062735 (n + 1)) (A228413 n)

end

end A054547.P11391858088386877149

/-! ## A054547.P4242315710340608950

`A057272(n+1)%A339845(n)`
-/

namespace A054547.P4242315710340608950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057272 (n + 1)) (A339845 n)

end

end A054547.P4242315710340608950

/-! ## A054547.P16808174699000543612

`∑{e}[A084712(n+4), A057272((n+1)/#)]`
-/

namespace A054547.P16808174699000543612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084712 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A057272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat

end

end A054547.P16808174699000543612

/-! ## A054547.P15484204715311524987

`A014306(round(16^(n/3)))*A062735(n+1)`
-/

namespace A054547.P15484204715311524987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (SequenceMachineLib.roundAway ((16 : ℝ) ^ ((n : ℚ) / 3 : ℝ))).toNat * A062735 (n + 1)

end

end A054547.P15484204715311524987

/-!
# A054549: Number of symmetric nonnegative integer 9 X 9 matrices with sum of elements equal to 4*n, under action of dihedral group D_4.

The programs for A054549, the canonical program `A054549.P14228439514455555932` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054549 has offset 0).

The definition of A054549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054549.P14228439514455555932

`∑[∑[∑[A038166(n)]]]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054549

/-- `∑[∑[∑[A038166(n)]]]` -/
def P14228439514455555932.Spec : Prop :=
  ∀ n, P14228439514455555932.a n = A054549 n

theorem P14228439514455555932.correct : P14228439514455555932.Spec := by
  intro n
  simp only [A054549]

end A054549

/-! ## A054549.P14580846159397125783

`∑[2*A059595(n)]-A059595(n)`
-/

namespace A054549.P14580846159397125783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A059595 n

end

end A054549.P14580846159397125783

namespace A054549

/-- `∑[2*A059595(n)]-A059595(n)` -/
def P14580846159397125783.Spec : Prop :=
  ∀ n, P14580846159397125783.a n = A054549 n

end A054549

/-!
# A054550: Composite numbers whose least prime factor is either 5 or 7.

The programs for A054550, the canonical program `A054550.P15837303380878172216` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054550 has offset 1).

The definition of A054550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054550.P11165799611524436073

`eq[2, A000196(A107286(n))]`
-/

namespace A054550.P11165799611524436073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A107286 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054550.P11165799611524436073

namespace A054550

/-- `eq[2, A000196(A107286(n))]` -/
def P11165799611524436073.Spec : Prop :=
  ∀ n, (P11165799611524436073.a n : ℤ) = A054550 (n + 1)

end A054550

/-! ## A054550.P525057115454846660

`eq[1, A059995(2*A107286(n))]`
-/

namespace A054550.P525057115454846660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (2 * A107286 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054550.P525057115454846660

namespace A054550

/-- `eq[1, A059995(2*A107286(n))]` -/
def P525057115454846660.Spec : Prop :=
  ∀ n, (P525057115454846660.a n : ℤ) = A054550 (n + 1)

end A054550

/-! ## A054550.P7484948125185080856

`A005408(eq[2, A132090(A281680(n))])`
-/

namespace A054550.P7484948125185080856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (A281680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054550.P7484948125185080856

namespace A054550

/-- `A005408(eq[2, A132090(A281680(n))])` -/
def P7484948125185080856.Spec : Prop :=
  ∀ n, P7484948125185080856.a n = A054550 (n + 1)

end A054550

/-! ## A054550.P11942461433986890409

`A005408(eq[2, A320536(A281680(n))])`
-/

namespace A054550.P11942461433986890409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A281680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054550.P11942461433986890409

namespace A054550

/-- `A005408(eq[2, A320536(A281680(n))])` -/
def P11942461433986890409.Spec : Prop :=
  ∀ n, P11942461433986890409.a n = A054550 (n + 1)

end A054550

/-! ## A054550.P12265105109065985387

`eq[A008615(A107286(n)), A040001(n)]`
-/

namespace A054550.P12265105109065985387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A107286 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054550.P12265105109065985387

namespace A054550

/-- `eq[A008615(A107286(n)), A040001(n)]` -/
def P12265105109065985387.Spec : Prop :=
  ∀ n, (P12265105109065985387.a n : ℤ) = A054550 (n + 1)

end A054550

/-! ## A054550.P15837303380878172216

`∩[A038509(n+1), A080672(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A054550

/-- `∩[A038509(n+1), A080672(n+1)]` -/
def P15837303380878172216.Spec : Prop :=
  ∀ n, (P15837303380878172216.a n : ℤ) = A054550 (n + 1)

theorem P15837303380878172216.correct : P15837303380878172216.Spec := by
  intro n
  simp only [A054550, Nat.add_sub_cancel]

end A054550

/-! ## A054550.P14668683118889235605

`eq[A004525(A107286(n)), A040565(n)]`
-/

namespace A054550.P14668683118889235605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A107286 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054550.P14668683118889235605

namespace A054550

/-- `eq[A004525(A107286(n)), A040565(n)]` -/
def P14668683118889235605.Spec : Prop :=
  ∀ n, (P14668683118889235605.a n : ℤ) = A054550 (n + 1)

end A054550

/-! ## A054550.P18269099475321834031

`eq[A000035(n), A230069(A107286(n))]`
-/

namespace A054550.P18269099475321834031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230069 (A107286 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054550.P18269099475321834031

namespace A054550

/-- `eq[A000035(n), A230069(A107286(n))]` -/
def P18269099475321834031.Spec : Prop :=
  ∀ n, (P18269099475321834031.a n : ℤ) = A054550 (n + 1)

end A054550

/-! ## A054550.P1160933840080685355

`eq[6, A344259(A107286(n)²)]`
-/

namespace A054550.P1160933840080685355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344259 (A107286 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054550.P1160933840080685355

namespace A054550

/-- `eq[6, A344259(A107286(n)²)]` -/
def P1160933840080685355.Spec : Prop :=
  ∀ n, (P1160933840080685355.a n : ℤ) = A054550 (n + 1)

end A054550

/-!
# A054551: Prime number spiral (clockwise, North spoke).

The programs for A054551, the canonical program `A054551.P9102736681837561329` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054551 has offset 0).

The definition of A054551 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054551.P9102736681837561329

`A000040(A054552(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054551

/-- `A000040(A054552(n))` -/
def P9102736681837561329.Spec : Prop :=
  ∀ n, P9102736681837561329.a n = A054551 n

theorem P9102736681837561329.correct : P9102736681837561329.Spec := by
  intro n
  simp only [A054551]

end A054551

/-! ## A054551.P9943115168937329235

`A317187(A004277(n))`
-/

namespace A054551.P9943115168937329235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317187 (A004277 n).toNat

end

end A054551.P9943115168937329235

namespace A054551

/-- `A317187(A004277(n))` -/
def P9943115168937329235.Spec : Prop :=
  ∀ n, P9943115168937329235.a n = A054551 n

end A054551

/-! ## A054551.P558935007300535077

`A317187(A004275(n+1))`
-/

namespace A054551.P558935007300535077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317187 (A004275 (n + 1)).toNat

end

end A054551.P558935007300535077

namespace A054551

/-- `A317187(A004275(n+1))` -/
def P558935007300535077.Spec : Prop :=
  ∀ n, P558935007300535077.a n = A054551 n

end A054551

/-! ## A054551.P2707785477974086436

`A317187(A028310(2*n))`
-/

namespace A054551.P2707785477974086436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317187 (A028310 (2 * n)).toNat

end

end A054551.P2707785477974086436

namespace A054551

/-- `A317187(A028310(2*n))` -/
def P2707785477974086436.Spec : Prop :=
  ∀ n, P2707785477974086436.a n = A054551 n

end A054551

/-! ## A054551.P17925274392485376423

`A317187(A028310(n)+n)`
-/

namespace A054551.P17925274392485376423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317187 (A028310 n + (n : ℤ)).toNat

end

end A054551.P17925274392485376423

namespace A054551

/-- `A317187(A028310(n)+n)` -/
def P17925274392485376423.Spec : Prop :=
  ∀ n, P17925274392485376423.a n = A054551 n

end A054551

/-! ## A054551.P15599113264031304473

`A317187(record[A234586(n+1)])`
-/

namespace A054551.P15599113264031304473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317187 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054551.P15599113264031304473

namespace A054551

/-- `A317187(record[A234586(n+1)])` -/
def P15599113264031304473.Spec : Prop :=
  ∀ n, P15599113264031304473.a n = A054551 n

end A054551

/-! ## A054551.P14167223113288071500

`A001749(A001107(n)+1)/4`
-/

namespace A054551.P14167223113288071500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A001107 n + 1).toNat : ℚ) / 4

end

end A054551.P14167223113288071500

namespace A054551

/-- `A001749(A001107(n)+1)/4` -/
def P14167223113288071500.Spec : Prop :=
  ∀ n, P14167223113288071500.a n = (A054551 n : ℚ)

end A054551

/-! ## A054551.P5905261141698086981

`A000040(∑[8*n-7]+8)`
-/

namespace A054551.P5905261141698086981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 8).toNat

end

end A054551.P5905261141698086981

namespace A054551

/-- `A000040(∑[8*n-7]+8)` -/
def P5905261141698086981.Spec : Prop :=
  ∀ n, P5905261141698086981.a n = A054551 n

end A054551

/-! ## A054551.P15339425714391577820

`A008578(∑[a(n-1)+8])` with `a(0)=2, a(1)=1`
-/

namespace A054551.P15339425714391577820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054551.P15339425714391577820

namespace A054551

/-- `A008578(∑[a(n-1)+8])` -/
def P15339425714391577820.Spec : Prop :=
  ∀ n, P15339425714391577820.a n = A054551 n

end A054551

/-! ## A054551.P4253735594976466854

`A182986(∑[a(n-1)+8])` with `a(0)=2, a(1)=1`
-/

namespace A054551.P4253735594976466854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054551.P4253735594976466854

namespace A054551

/-- `A182986(∑[a(n-1)+8])` -/
def P4253735594976466854.Spec : Prop :=
  ∀ n, P4253735594976466854.a n = A054551 n

end A054551

/-!
# A054552: a(n) = 4*n^2 - 3*n + 1.

The programs for A054552, the canonical program `A054552.P9181386657183712970` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054552 has offset 0).

The definition of A054552 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²-3*n+1` (program `A054552.P9181386657183712970`, by `A054552.P9181386657183712970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054552.P9181386657183712970

`4*n²-3*n+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054552

/-- `4*n²-3*n+1` -/
def P9181386657183712970.Spec : Prop :=
  ∀ n, P9181386657183712970.a n = A054552 n

theorem P9181386657183712970.correct : P9181386657183712970.Spec := by
  intro n
  simp only [A054552]

end A054552

/-! ## A054552.P13334672442254120816

`∑[a(n-1)+8]` with `a(0)=1, a(1)=1`
-/

namespace A054552.P13334672442254120816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054552.P13334672442254120816

namespace A054552

/-- `∑[a(n-1)+8]` -/
def P13334672442254120816.Spec : Prop :=
  ∀ n, (P13334672442254120816.a n : ℤ) = A054552 n

end A054552

/-! ## A054552.P7195569342963294983

`∑[ogf((1-x+8x^2)/(1-2x+x^2))]`
-/

namespace A054552.P7195569342963294983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054552.P7195569342963294983

namespace A054552

/-- `∑[ogf((1-x+8x^2)/(1-2x+x^2))]` -/
def P7195569342963294983.Spec : Prop :=
  ∀ n, P7195569342963294983.a n = A054552 n

end A054552

/-! ## A054552.P14122055200203396101

`ogf((1-x+8x^2)/(1-3x+3x^2-x^3))`
-/

namespace A054552.P14122055200203396101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 8] [1, -3, 3, -1] n

end

end A054552.P14122055200203396101

namespace A054552

/-- `ogf((1-x+8x^2)/(1-3x+3x^2-x^3))` -/
def P14122055200203396101.Spec : Prop :=
  ∀ n, P14122055200203396101.a n = A054552 n

end A054552

/-! ## A054552.P11492335160971448537

`∑[lcm(4, 1-2*n)-3]`
-/

namespace A054552.P11492335160971448537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (1 - (2 * n : ℤ)) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054552.P11492335160971448537

namespace A054552

/-- `∑[lcm(4, 1-2*n)-3]` -/
def P11492335160971448537.Spec : Prop :=
  ∀ n, P11492335160971448537.a n = A054552 n

end A054552

/-! ## A054552.P12315185935646780061

`abs(2*C(2*n, 2)-(n-1))`
-/

namespace A054552.P12315185935646780061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * Nat.choose (2 * n) 2 : ℤ) - ((n : ℤ) - 1)|

end

end A054552.P12315185935646780061

namespace A054552

/-- `abs(2*C(2*n, 2)-(n-1))` -/
def P12315185935646780061.Spec : Prop :=
  ∀ n, P12315185935646780061.a n = A054552 n

end A054552

/-! ## A054552.P16665483640145941550

`floor(8*n+a(n-1)-7)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A054552.P16665483640145941550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 * n : ℤ) + (a (n - 1) - 7)

end

end A054552.P16665483640145941550

namespace A054552

/-- `floor(8*n+a(n-1)-7)` -/
def P16665483640145941550.Spec : Prop :=
  ∀ n, P16665483640145941550.a n = A054552 n

theorem P16665483640145941550.correct : P16665483640145941550.Spec := by
  intro n
  induction n with
  | zero => simp [A054552, A054552.P16665483640145941550.a, A054552.P9181386657183712970.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A054552, Nat.add_sub_cancel, A054552.P16665483640145941550.a, A054552.P9181386657183712970.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A054552

/-! ## A054552.P13350280868789511452

`floor(8*n-(7-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A054552.P13350280868789511452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 * n : ℤ) - (7 - a (n - 1))

end

end A054552.P13350280868789511452

namespace A054552

/-- `floor(8*n-(7-a(n-1)))` -/
def P13350280868789511452.Spec : Prop :=
  ∀ n, P13350280868789511452.a n = A054552 n

theorem P13350280868789511452.correct : P13350280868789511452.Spec := by
  intro n
  induction n with
  | zero => simp [A054552, A054552.P13350280868789511452.a, A054552.P9181386657183712970.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A054552, Nat.add_sub_cancel, A054552.P13350280868789511452.a, A054552.P9181386657183712970.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A054552

/-! ## A054552.P1754386135469502834

`2*(C(2*n, 2)-(n-1)/2)`
-/

namespace A054552.P1754386135469502834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose (2 * n) 2 : ℚ) - ((n : ℤ) - 1 : ℚ) / 2)

end

end A054552.P1754386135469502834

namespace A054552

/-- `2*(C(2*n, 2)-(n-1)/2)` -/
def P1754386135469502834.Spec : Prop :=
  ∀ n, P1754386135469502834.a n = (A054552 n : ℚ)

end A054552

/-! ## A054552.P14594322528824769209

`abs(lcm(2*n-1, 2*n)-(n-1))`
-/

namespace A054552.P14594322528824769209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.lcm ((2 * n : ℤ) - 1) (2 * n : ℤ) : ℤ) - ((n : ℤ) - 1)|

end

end A054552.P14594322528824769209

namespace A054552

/-- `abs(lcm(2*n-1, 2*n)-(n-1))` -/
def P14594322528824769209.Spec : Prop :=
  ∀ n, P14594322528824769209.a n = A054552 n

end A054552

/-! ## A054552.P12954243682601474850

`2*(a(n-1)+4-a(n-2)/2)` with `a(0)=1, a(1)=2`
-/

namespace A054552.P12954243682601474850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) + (4 - a (n - 2) / 2))

end

end A054552.P12954243682601474850

namespace A054552

/-- `2*(a(n-1)+4-a(n-2)/2)` -/
def P12954243682601474850.Spec : Prop :=
  ∀ n, P12954243682601474850.a n = (A054552 n : ℚ)

theorem P12954243682601474850.correct : P12954243682601474850.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A054552, Nat.add_sub_cancel, A054552.P12954243682601474850.a, A054552.P9181386657183712970.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A054552, Nat.add_sub_cancel, A054552.P12954243682601474850.a, A054552.P9181386657183712970.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A054552

/-! ## A054552.P11789371256463396017

`2*(4-(a(n-2)/2-a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A054552.P11789371256463396017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (4 - (a (n - 2) / 2 - a (n - 1)))

end

end A054552.P11789371256463396017

namespace A054552

/-- `2*(4-(a(n-2)/2-a(n-1)))` -/
def P11789371256463396017.Spec : Prop :=
  ∀ n, P11789371256463396017.a n = (A054552 n : ℚ)

theorem P11789371256463396017.correct : P11789371256463396017.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A054552, Nat.add_sub_cancel, A054552.P11789371256463396017.a, A054552.P9181386657183712970.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A054552, Nat.add_sub_cancel, A054552.P11789371256463396017.a, A054552.P9181386657183712970.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A054552

/-! ## A054552.P13157132412645517430

`ceil(A033567(n)/2)`
-/

namespace A054552.P13157132412645517430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033567 n : ℚ) / 2⌉

end

end A054552.P13157132412645517430

namespace A054552

/-- `ceil(A033567(n)/2)` -/
def P13157132412645517430.Spec : Prop :=
  ∀ n, P13157132412645517430.a n = A054552 n

end A054552

/-! ## A054552.P1253873499077396384

`(A360417(n)+n)/2`
-/

namespace A054552.P1253873499077396384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360417 n + (n : ℤ) : ℚ) / 2

end

end A054552.P1253873499077396384

namespace A054552

/-- `(A360417(n)+n)/2` -/
def P1253873499077396384.Spec : Prop :=
  ∀ n, P1253873499077396384.a n = (A054552 n : ℚ)

end A054552

/-! ## A054552.P2783420334229992158

`(A051870(n)+2+n)/2`
-/

namespace A054552.P2783420334229992158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051870 n + 2 + (n : ℤ) : ℚ) / 2

end

end A054552.P2783420334229992158

namespace A054552

/-- `(A051870(n)+2+n)/2` -/
def P2783420334229992158.Spec : Prop :=
  ∀ n, P2783420334229992158.a n = (A054552 n : ℚ)

end A054552

/-! ## A054552.P5036113628136715265

`(A139272(n)+2-n)/2`
-/

namespace A054552.P5036113628136715265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139272 n + (2 - (n : ℤ)) : ℚ) / 2

end

end A054552.P5036113628136715265

namespace A054552

/-- `(A139272(n)+2-n)/2` -/
def P5036113628136715265.Spec : Prop :=
  ∀ n, P5036113628136715265.a n = (A054552 n : ℚ)

end A054552

/-! ## A054552.P2187984303518092585

`(A185212(n)+2-n)/3`
-/

namespace A054552.P2187984303518092585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185212 n + (2 - (n : ℤ)) : ℚ) / 3

end

end A054552.P2187984303518092585

namespace A054552

/-- `(A185212(n)+2-n)/3` -/
def P2187984303518092585.Spec : Prop :=
  ∀ n, P2187984303518092585.a n = (A054552 n : ℚ)

end A054552

/-! ## A054552.P5427912568953670381

`A236267(n)%A059193(n+1)`
-/

namespace A054552.P5427912568953670381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236267 n) (A059193 (n + 1))

end

end A054552.P5427912568953670381

namespace A054552

/-- `A236267(n)%A059193(n+1)` -/
def P5427912568953670381.Spec : Prop :=
  ∀ n, P5427912568953670381.a n = A054552 n

end A054552

/-! ## A054552.P15213112653292717142

`A280089(n)%A144916(n+1)`
-/

namespace A054552.P15213112653292717142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280089 n) (A144916 (n + 1))

end

end A054552.P15213112653292717142

namespace A054552

/-- `A280089(n)%A144916(n+1)` -/
def P15213112653292717142.Spec : Prop :=
  ∀ n, P15213112653292717142.a n = A054552 n

end A054552

/-! ## A054552.P4264247286459949760

`A174114(A004277(n))`
-/

namespace A054552.P4264247286459949760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174114 (A004277 n).toNat

end

end A054552.P4264247286459949760

namespace A054552

/-- `A174114(A004277(n))` -/
def P4264247286459949760.Spec : Prop :=
  ∀ n, P4264247286459949760.a n = A054552 n

end A054552

/-!
# A054553: Prime number spiral (clockwise, Northeast spoke).

The programs for A054553, the canonical program `A054553.P7038844397685091000` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054553 has offset 0).

The definition of A054553 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054553.P7038844397685091000

`A000040(A054554(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054553

/-- `A000040(A054554(n+1))` -/
def P7038844397685091000.Spec : Prop :=
  ∀ n, P7038844397685091000.a n = A054553 n

theorem P7038844397685091000.correct : P7038844397685091000.Spec := by
  intro n
  simp only [A054553]

end A054553

/-! ## A054553.P10947573734120989777

`A122566(A004273(n))`
-/

namespace A054553.P10947573734120989777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122566 (A004273 n).toNat

end

end A054553.P10947573734120989777

namespace A054553

/-- `A122566(A004273(n))` -/
def P10947573734120989777.Spec : Prop :=
  ∀ n, P10947573734120989777.a n = A054553 n

end A054553

/-! ## A054553.P5127343938479804036

`A059428(A131098(n+1))`
-/

namespace A054553.P5127343938479804036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059428 (A131098 (n + 1)).toNat

end

end A054553.P5127343938479804036

namespace A054553

/-- `A059428(A131098(n+1))` -/
def P5127343938479804036.Spec : Prop :=
  ∀ n, P5127343938479804036.a n = A054553 n

end A054553

/-! ## A054553.P1878127143824143703

`A059428(A004275(2*n)+1)`
-/

namespace A054553.P1878127143824143703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059428 (A004275 (2 * n) + 1).toNat

end

end A054553.P1878127143824143703

namespace A054553

/-- `A059428(A004275(2*n)+1)` -/
def P1878127143824143703.Spec : Prop :=
  ∀ n, P1878127143824143703.a n = A054553 n

end A054553

/-! ## A054553.P12545651704873811547

`A059428(2*A004277(n)-1)`
-/

namespace A054553.P12545651704873811547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059428 (2 * A004277 n - 1).toNat

end

end A054553.P12545651704873811547

namespace A054553

/-- `A059428(2*A004277(n)-1)` -/
def P12545651704873811547.Spec : Prop :=
  ∀ n, P12545651704873811547.a n = A054553 n

end A054553

/-! ## A054553.P14561729805458419403

`A031368(C(2*n, 2)+1)`
-/

namespace A054553.P14561729805458419403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (Nat.choose (2 * n) 2 + 1)

end

end A054553.P14561729805458419403

namespace A054553

/-- `A031368(C(2*n, 2)+1)` -/
def P14561729805458419403.Spec : Prop :=
  ∀ n, P14561729805458419403.a n = A054553 n

end A054553

/-! ## A054553.P1702658022815105924

`A031368(2*n²+1-n)`
-/

namespace A054553.P1702658022815105924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (2 * n ^ 2 + 1 - n)

end

end A054553.P1702658022815105924

namespace A054553

/-- `A031368(2*n²+1-n)` -/
def P1702658022815105924.Spec : Prop :=
  ∀ n, P1702658022815105924.a n = A054553 n

end A054553

/-! ## A054553.P6997411484670106898

`A000040(∑[8*n-6]+7)`
-/

namespace A054553.P6997411484670106898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 7).toNat

end

end A054553.P6997411484670106898

namespace A054553

/-- `A000040(∑[8*n-6]+7)` -/
def P6997411484670106898.Spec : Prop :=
  ∀ n, P6997411484670106898.a n = A054553 n

end A054553

/-! ## A054553.P16240267806112762698

`A182986(2*(C(2*n, 2)+1))`
-/

namespace A054553.P16240267806112762698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (2 * (Nat.choose (2 * n) 2 + 1))

end

end A054553.P16240267806112762698

namespace A054553

/-- `A182986(2*(C(2*n, 2)+1))` -/
def P16240267806112762698.Spec : Prop :=
  ∀ n, P16240267806112762698.a n = A054553 n

end A054553

/-! ## A054553.P12233617809136765

`A008578(n*(4*n-2)+2)`
-/

namespace A054553.P12233617809136765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((n : ℤ) * ((4 * n : ℤ) - 2) + 2).toNat

end

end A054553.P12233617809136765

namespace A054553

/-- `A008578(n*(4*n-2)+2)` -/
def P12233617809136765.Spec : Prop :=
  ∀ n, P12233617809136765.a n = A054553 n

end A054553

/-!
# A054554: a(n) = 4*n^2 - 10*n + 7.

The programs for A054554, the canonical program `A054554.P10059529129339584182` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054554 has offset 1).

The definition of A054554 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)²-10*(n+1)+7` (program `A054554.P10059529129339584182`, by `A054554.P10059529129339584182.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054554.P2879089842905397616

`8*(n+1)+a(n-1)-14` with `a(0)=1`
-/

namespace A054554.P2879089842905397616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 * (n + 1) : ℤ) + a (n - 1) - 14

end

end A054554.P2879089842905397616

namespace A054554

/-- `8*(n+1)+a(n-1)-14` -/
def P2879089842905397616.Spec : Prop :=
  ∀ n, P2879089842905397616.a n = A054554 (n + 1)

theorem P2879089842905397616.correct : P2879089842905397616.Spec := by
  intro n
  induction n with
  | zero => simp [A054554, A054554.P2879089842905397616.a, A054554.P10059529129339584182.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A054554, Nat.add_sub_cancel, A054554.P2879089842905397616.a, A054554.P10059529129339584182.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A054554

/-! ## A054554.P10059529129339584182

`4*(n+1)²-10*(n+1)+7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054554

/-- `4*(n+1)²-10*(n+1)+7` -/
def P10059529129339584182.Spec : Prop :=
  ∀ n, P10059529129339584182.a n = A054554 (n + 1)

theorem P10059529129339584182.correct : P10059529129339584182.Spec := by
  intro n
  simp only [A054554, Nat.add_sub_cancel]

end A054554

/-! ## A054554.P7694378538308492378

`or(1, n*record[lcm(2, n)])`
-/

namespace A054554.P7694378538308492378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A054554.P7694378538308492378

namespace A054554

/-- `or(1, n*record[lcm(2, n)])` -/
def P7694378538308492378.Spec : Prop :=
  ∀ n, (P7694378538308492378.a n : ℤ) = A054554 (n + 1)

end A054554

/-! ## A054554.P14248228890232441486

`record[xor(1, -n)²-n]`
-/

namespace A054554.P14248228890232441486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054554.P14248228890232441486

namespace A054554

/-- `record[xor(1, -n)²-n]` -/
def P14248228890232441486.Spec : Prop :=
  ∀ n, P14248228890232441486.a n = A054554 (n + 1)

end A054554

/-! ## A054554.P17741874331483465509

`or(1, 2*C(2*n, 2))`
-/

namespace A054554.P17741874331483465509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * Nat.choose (2 * n) 2)

end

end A054554.P17741874331483465509

namespace A054554

/-- `or(1, 2*C(2*n, 2))` -/
def P17741874331483465509.Spec : Prop :=
  ∀ n, (P17741874331483465509.a n : ℤ) = A054554 (n + 1)

end A054554

/-! ## A054554.P8817164219792702803

`xor(1, 2*C(2*n, 2))`
-/

namespace A054554.P8817164219792702803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * Nat.choose (2 * n) 2)

end

end A054554.P8817164219792702803

namespace A054554

/-- `xor(1, 2*C(2*n, 2))` -/
def P8817164219792702803.Spec : Prop :=
  ∀ n, (P8817164219792702803.a n : ℤ) = A054554 (n + 1)

end A054554

/-! ## A054554.P9998748662945759385

`∑[a(n-1)+8]` with `a(0)=1, a(1)=2`
-/

namespace A054554.P9998748662945759385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054554.P9998748662945759385

namespace A054554

/-- `∑[a(n-1)+8]` -/
def P9998748662945759385.Spec : Prop :=
  ∀ n, (P9998748662945759385.a n : ℤ) = A054554 (n + 1)

end A054554

/-! ## A054554.P6243313049697596979

`∑[ogf((1+7x^2)/(1-2x+x^2))]`
-/

namespace A054554.P6243313049697596979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054554.P6243313049697596979

namespace A054554

/-- `∑[ogf((1+7x^2)/(1-2x+x^2))]` -/
def P6243313049697596979.Spec : Prop :=
  ∀ n, P6243313049697596979.a n = A054554 (n + 1)

end A054554

/-! ## A054554.P16896259704954304223

`ogf((1+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A054554.P16896259704954304223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 7] [1, -3, 3, -1] n

end

end A054554.P16896259704954304223

namespace A054554

/-- `ogf((1+7x^2)/(1-3x+3x^2-x^3))` -/
def P16896259704954304223.Spec : Prop :=
  ∀ n, P16896259704954304223.a n = A054554 (n + 1)

end A054554

/-! ## A054554.P12463677829588776004

`or(1, (2*n)²-2*n)`
-/

namespace A054554.P12463677829588776004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((2 * n) ^ 2 : ℤ) - (2 * n : ℤ))

end

end A054554.P12463677829588776004

namespace A054554

/-- `or(1, (2*n)²-2*n)` -/
def P12463677829588776004.Spec : Prop :=
  ∀ n, P12463677829588776004.a n = A054554 (n + 1)

end A054554

/-! ## A054554.P2172781144114050589

`xor(1, (2*n)²-2*n)`
-/

namespace A054554.P2172781144114050589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((2 * n) ^ 2 : ℤ) - (2 * n : ℤ))

end

end A054554.P2172781144114050589

namespace A054554

/-- `xor(1, (2*n)²-2*n)` -/
def P2172781144114050589.Spec : Prop :=
  ∀ n, P2172781144114050589.a n = A054554 (n + 1)

end A054554

/-! ## A054554.P4932019281379067888

`record[n*xor(1, n-2)+1]`
-/

namespace A054554.P4932019281379067888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor 1 ((n : ℤ) - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054554.P4932019281379067888

namespace A054554

/-- `record[n*xor(1, n-2)+1]` -/
def P4932019281379067888.Spec : Prop :=
  ∀ n, P4932019281379067888.a n = A054554 (n + 1)

end A054554

/-! ## A054554.P13016815296209212377

`record[n^gcd(2, n)-(n-1)]`
-/

namespace A054554.P13016815296209212377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ Nat.gcd 2 n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054554.P13016815296209212377

namespace A054554

/-- `record[n^gcd(2, n)-(n-1)]` -/
def P13016815296209212377.Spec : Prop :=
  ∀ n, P13016815296209212377.a n = A054554 (n + 1)

end A054554

/-! ## A054554.P11562678374533406489

`record[and(n, -2)²-(n-1)]`
-/

namespace A054554.P11562678374533406489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2) ^ 2 - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054554.P11562678374533406489

namespace A054554

/-- `record[and(n, -2)²-(n-1)]` -/
def P11562678374533406489.Spec : Prop :=
  ∀ n, P11562678374533406489.a n = A054554 (n + 1)

end A054554

/-! ## A054554.P11939667222877025945

`Δ[C(2*n, 3)-(1-n)²]`
-/

namespace A054554.P11939667222877025945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 3 : ℤ) - (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054554.P11939667222877025945

namespace A054554

/-- `Δ[C(2*n, 3)-(1-n)²]` -/
def P11939667222877025945.Spec : Prop :=
  ∀ n, P11939667222877025945.a n = A054554 (n + 1)

end A054554

/-! ## A054554.P10830323480108857969

`abs(or(1, (2*n-1)*2*n))`
-/

namespace A054554.P10830323480108857969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (((2 * n : ℤ) - 1) * (2 * n : ℤ))|

end

end A054554.P10830323480108857969

namespace A054554

/-- `abs(or(1, (2*n-1)*2*n))` -/
def P10830323480108857969.Spec : Prop :=
  ∀ n, P10830323480108857969.a n = A054554 (n + 1)

end A054554

/-! ## A054554.P8608483343916889027

`floor(8*n+a(n-1)-6)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A054554.P8608483343916889027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 * n : ℤ) + (a (n - 1) - 6)

end

end A054554.P8608483343916889027

namespace A054554

/-- `floor(8*n+a(n-1)-6)` -/
def P8608483343916889027.Spec : Prop :=
  ∀ n, P8608483343916889027.a n = A054554 (n + 1)

theorem P8608483343916889027.correct : P8608483343916889027.Spec := by
  intro n
  induction n with
  | zero => simp [A054554, A054554.P8608483343916889027.a, A054554.P10059529129339584182.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A054554, Nat.add_sub_cancel, A054554.P8608483343916889027.a, A054554.P10059529129339584182.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A054554

/-! ## A054554.P13489145094656702868

`floor(8*n-(6-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A054554.P13489145094656702868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 * n : ℤ) - (6 - a (n - 1))

end

end A054554.P13489145094656702868

namespace A054554

/-- `floor(8*n-(6-a(n-1)))` -/
def P13489145094656702868.Spec : Prop :=
  ∀ n, P13489145094656702868.a n = A054554 (n + 1)

theorem P13489145094656702868.correct : P13489145094656702868.Spec := by
  intro n
  induction n with
  | zero => simp [A054554, A054554.P13489145094656702868.a, A054554.P10059529129339584182.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A054554, Nat.add_sub_cancel, A054554.P13489145094656702868.a, A054554.P10059529129339584182.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A054554

/-! ## A054554.P3705711322265825861

`record[(n+1)^(2*and(1, n))-n]`
-/

namespace A054554.P3705711322265825861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (2 * Nat.land 1 n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054554.P3705711322265825861

namespace A054554

/-- `record[(n+1)^(2*and(1, n))-n]` -/
def P3705711322265825861.Spec : Prop :=
  ∀ n, P3705711322265825861.a n = A054554 (n + 1)

end A054554

/-! ## A054554.P10655241856984070357

`or(1, (2*n)^3)/(2*n+1)`
-/

namespace A054554.P10655241856984070357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 ((2 * n) ^ 3) : ℚ) / (2 * n + 1 : ℚ)

end

end A054554.P10655241856984070357

namespace A054554

/-- `or(1, (2*n)^3)/(2*n+1)` -/
def P10655241856984070357.Spec : Prop :=
  ∀ n, P10655241856984070357.a n = (A054554 (n + 1) : ℚ)

end A054554

/-!
# A054555: Prime number spiral (clockwise, East spoke).

The programs for A054555, the canonical program `A054555.P15825922673142589422` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054555 has offset 0).

The definition of A054555 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054555.P15825922673142589422

`A000040(A054556(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054555

/-- `A000040(A054556(n+1))` -/
def P15825922673142589422.Spec : Prop :=
  ∀ n, P15825922673142589422.a n = A054555 n

theorem P15825922673142589422.correct : P15825922673142589422.Spec := by
  intro n
  simp only [A054555]

end A054555

/-! ## A054555.P16964659144907704040

`A001749(A267682(2*n))/4`
-/

namespace A054555.P16964659144907704040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A267682 (2 * n)).toNat : ℚ) / 4

end

end A054555.P16964659144907704040

namespace A054555

/-- `A001749(A267682(2*n))/4` -/
def P16964659144907704040.Spec : Prop :=
  ∀ n, P16964659144907704040.a n = (A054555 n : ℚ)

end A054555

/-! ## A054555.P10832188112835778086

`A001748(A014635(n)/2+1)/3`
-/

namespace A054555.P10832188112835778086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (SequenceMachineLib.roundAway ((A014635 n : ℚ) / 2 + 1)).toNat : ℚ) / 3

end

end A054555.P10832188112835778086

namespace A054555

/-- `A001748(A014635(n)/2+1)/3` -/
def P10832188112835778086.Spec : Prop :=
  ∀ n, P10832188112835778086.a n = (A054555 n : ℚ)

end A054555

/-! ## A054555.P2720202165979623311

`A001749(A002939(n)+n+1)/4`
-/

namespace A054555.P2720202165979623311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A002939 n + (n + 1 : ℤ)).toNat : ℚ) / 4

end

end A054555.P2720202165979623311

namespace A054555

/-- `A001749(A002939(n)+n+1)/4` -/
def P2720202165979623311.Spec : Prop :=
  ∀ n, P2720202165979623311.a n = (A054555 n : ℚ)

end A054555

/-! ## A054555.P7079876191442817753

`A001748(A016742(n)-n+1)/3`
-/

namespace A054555.P7079876191442817753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A016742 n - (n : ℤ) + 1).toNat : ℚ) / 3

end

end A054555.P7079876191442817753

namespace A054555

/-- `A001748(A016742(n)-n+1)/3` -/
def P7079876191442817753.Spec : Prop :=
  ∀ n, P7079876191442817753.a n = (A054555 n : ℚ)

end A054555

/-! ## A054555.P10535866331792213967

`A001748(A049450(n)+n²+1)/3`
-/

namespace A054555.P10535866331792213967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A049450 n + (n ^ 2 : ℤ) + 1).toNat : ℚ) / 3

end

end A054555.P10535866331792213967

namespace A054555

/-- `A001748(A049450(n)+n²+1)/3` -/
def P10535866331792213967.Spec : Prop :=
  ∀ n, P10535866331792213967.a n = (A054555 n : ℚ)

end A054555

/-! ## A054555.P3916270648870225452

`A156037((2*n)²-n+1)+1`
-/

namespace A054555.P3916270648870225452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (((2 * n) ^ 2 : ℤ) - (n : ℤ) + 1).toNat + 1

end

end A054555.P3916270648870225452

namespace A054555

/-- `A156037((2*n)²-n+1)+1` -/
def P3916270648870225452.Spec : Prop :=
  ∀ n, P3916270648870225452.a n = A054555 n

end A054555

/-! ## A054555.P3929485603340029140

`A000040(∑[8*n-5]+6)`
-/

namespace A054555.P3929485603340029140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A054555.P3929485603340029140

namespace A054555

/-- `A000040(∑[8*n-5]+6)` -/
def P3929485603340029140.Spec : Prop :=
  ∀ n, P3929485603340029140.a n = A054555 n

end A054555

/-! ## A054555.P626386454524414043

`A008578((2*n)²+2-n)`
-/

namespace A054555.P626386454524414043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((2 * n) ^ 2 + 2 - n)

end

end A054555.P626386454524414043

namespace A054555

/-- `A008578((2*n)²+2-n)` -/
def P626386454524414043.Spec : Prop :=
  ∀ n, P626386454524414043.a n = A054555 n

end A054555

/-!
# A054556: a(n) = 4*n^2 - 9*n + 6.

The programs for A054556, the canonical program `A054556.P3593573316087169911` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054556 has offset 1).

The definition of A054556 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)²-9*(n+1)+6` (program `A054556.P3593573316087169911`, by `A054556.P3593573316087169911.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054556.P15101021451388747745

`n*(4*(n+1)-5)+1`
-/

namespace A054556.P15101021451388747745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((4 * (n + 1) : ℤ) - 5) + 1

end

end A054556.P15101021451388747745

namespace A054556

/-- `n*(4*(n+1)-5)+1` -/
def P15101021451388747745.Spec : Prop :=
  ∀ n, P15101021451388747745.a n = A054556 (n + 1)

theorem P15101021451388747745.correct : P15101021451388747745.Spec := by
  intro n
  simp only [A054556, Nat.add_sub_cancel, A054556.P15101021451388747745.a, A054556.P3593573316087169911.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A054556

/-! ## A054556.P3593573316087169911

`4*(n+1)²-9*(n+1)+6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054556

/-- `4*(n+1)²-9*(n+1)+6` -/
def P3593573316087169911.Spec : Prop :=
  ∀ n, P3593573316087169911.a n = A054556 (n + 1)

theorem P3593573316087169911.correct : P3593573316087169911.Spec := by
  intro n
  simp only [A054556, Nat.add_sub_cancel]

end A054556

/-! ## A054556.P10462450463159227005

`(C(4*n, 2)+2)/2`
-/

namespace A054556.P10462450463159227005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) 2 + 2 : ℚ) / 2

end

end A054556.P10462450463159227005

namespace A054556

/-- `(C(4*n, 2)+2)/2` -/
def P10462450463159227005.Spec : Prop :=
  ∀ n, P10462450463159227005.a n = (A054556 (n + 1) : ℚ)

end A054556

/-! ## A054556.P7795006761683914086

`∑[a(n-1)+8]` with `a(0)=1, a(1)=3`
-/

namespace A054556.P7795006761683914086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054556.P7795006761683914086

namespace A054556

/-- `∑[a(n-1)+8]` -/
def P7795006761683914086.Spec : Prop :=
  ∀ n, (P7795006761683914086.a n : ℤ) = A054556 (n + 1)

end A054556

/-! ## A054556.P4379697062654009244

`abs(or(1, (2*n)²)-n)`
-/

namespace A054556.P4379697062654009244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 ((2 * n) ^ 2) : ℤ) - (n : ℤ)|

end

end A054556.P4379697062654009244

namespace A054556

/-- `abs(or(1, (2*n)²)-n)` -/
def P4379697062654009244.Spec : Prop :=
  ∀ n, P4379697062654009244.a n = A054556 (n + 1)

end A054556

/-! ## A054556.P12899575554354864775

`abs(xor(1, (2*n)²)-n)`
-/

namespace A054556.P12899575554354864775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.xor 1 ((2 * n) ^ 2) : ℤ) - (n : ℤ)|

end

end A054556.P12899575554354864775

namespace A054556

/-- `abs(xor(1, (2*n)²)-n)` -/
def P12899575554354864775.Spec : Prop :=
  ∀ n, P12899575554354864775.a n = A054556 (n + 1)

end A054556

/-! ## A054556.P1908295090409620271

`∑[ogf((1+x+6x^2)/(1-2x+x^2))]`
-/

namespace A054556.P1908295090409620271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054556.P1908295090409620271

namespace A054556

/-- `∑[ogf((1+x+6x^2)/(1-2x+x^2))]` -/
def P1908295090409620271.Spec : Prop :=
  ∀ n, P1908295090409620271.a n = A054556 (n + 1)

end A054556

/-! ## A054556.P7696026624190576151

`ogf((1+x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A054556.P7696026624190576151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 6] [1, -3, 3, -1] n

end

end A054556.P7696026624190576151

namespace A054556

/-- `ogf((1+x+6x^2)/(1-3x+3x^2-x^3))` -/
def P7696026624190576151.Spec : Prop :=
  ∀ n, P7696026624190576151.a n = A054556 (n + 1)

end A054556

/-! ## A054556.P8056731928969130187

`-(xor(-1, (2*n)²)+n)`
-/

namespace A054556.P8056731928969130187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (-1) ((2 * n) ^ 2 : ℤ) + (n : ℤ))

end

end A054556.P8056731928969130187

namespace A054556

/-- `-(xor(-1, (2*n)²)+n)` -/
def P8056731928969130187.Spec : Prop :=
  ∀ n, P8056731928969130187.a n = A054556 (n + 1)

end A054556

/-! ## A054556.P16959053694298564296

`-xor((2*n)²-n, -1)`
-/

namespace A054556.P16959053694298564296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (((2 * n) ^ 2 : ℤ) - (n : ℤ)) (-1)

end

end A054556.P16959053694298564296

namespace A054556

/-- `-xor((2*n)²-n, -1)` -/
def P16959053694298564296.Spec : Prop :=
  ∀ n, P16959053694298564296.a n = A054556 (n + 1)

end A054556

/-! ## A054556.P12154681086991377230

`abs(lcm(2, (2*n)²)-(n-1))`
-/

namespace A054556.P12154681086991377230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm 2 ((2 * n) ^ 2) : ℤ) - ((n : ℤ) - 1)|

end

end A054556.P12154681086991377230

namespace A054556

/-- `abs(lcm(2, (2*n)²)-(n-1))` -/
def P12154681086991377230.Spec : Prop :=
  ∀ n, P12154681086991377230.a n = A054556 (n + 1)

end A054556

/-! ## A054556.P11583578982417392887

`cot(-acot(n-1-(2*n)²))`
-/

namespace A054556.P11583578982417392887
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (-SequenceMachineLib.acot ((n : ℤ) - 1 - ((2 * n) ^ 2 : ℤ) : ℝ))

end

end A054556.P11583578982417392887

namespace A054556

/-- `cot(-acot(n-1-(2*n)²))` -/
def P11583578982417392887.Spec : Prop :=
  ∀ n, P11583578982417392887.a n = (A054556 (n + 1) : ℝ)

end A054556

/-! ## A054556.P14874169114873560102

`floor(lcm(n, 2*n)²-(n-ϕ))`
-/

namespace A054556.P14874169114873560102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm n (2 * n) ^ 2 : ℝ) - ((n : ℝ) - Real.goldenRatio)⌋

end

end A054556.P14874169114873560102

namespace A054556

/-- `floor(lcm(n, 2*n)²-(n-ϕ))` -/
def P14874169114873560102.Spec : Prop :=
  ∀ n, P14874169114873560102.a n = A054556 (n + 1)

end A054556

/-! ## A054556.P12662261735123049573

`xor(1, xor(1, (2*n)²-(n-1)))`
-/

namespace A054556.P12662261735123049573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (((2 * n) ^ 2 : ℤ) - ((n : ℤ) - 1)))

end

end A054556.P12662261735123049573

namespace A054556

/-- `xor(1, xor(1, (2*n)²-(n-1)))` -/
def P12662261735123049573.Spec : Prop :=
  ∀ n, P12662261735123049573.a n = A054556 (n + 1)

end A054556

/-! ## A054556.P12380003419879639593

`floor(8*n-(5-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A054556.P12380003419879639593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 * n : ℤ) - (5 - a (n - 1))

end

end A054556.P12380003419879639593

namespace A054556

/-- `floor(8*n-(5-a(n-1)))` -/
def P12380003419879639593.Spec : Prop :=
  ∀ n, P12380003419879639593.a n = A054556 (n + 1)

theorem P12380003419879639593.correct : P12380003419879639593.Spec := by
  intro n
  induction n with
  | zero => simp [A054556, A054556.P12380003419879639593.a, A054556.P3593573316087169911.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A054556, Nat.add_sub_cancel, A054556.P12380003419879639593.a, A054556.P3593573316087169911.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A054556

/-! ## A054556.P4063834304313434859

`abs(and(2*n, -2)²-(n-1))`
-/

namespace A054556.P4063834304313434859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land (2 * n : ℤ) (-2) ^ 2 - ((n : ℤ) - 1)|

end

end A054556.P4063834304313434859

namespace A054556

/-- `abs(and(2*n, -2)²-(n-1))` -/
def P4063834304313434859.Spec : Prop :=
  ∀ n, P4063834304313434859.a n = A054556 (n + 1)

end A054556

/-! ## A054556.P5489391620076214465

`or((2*n)²-(n-1), and(2, n))`
-/

namespace A054556.P5489391620076214465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((2 * n) ^ 2 : ℤ) - ((n : ℤ) - 1)) (Nat.land 2 n : ℤ)

end

end A054556.P5489391620076214465

namespace A054556

/-- `or((2*n)²-(n-1), and(2, n))` -/
def P5489391620076214465.Spec : Prop :=
  ∀ n, P5489391620076214465.a n = A054556 (n + 1)

end A054556

/-! ## A054556.P5039262791888315850

`abs(∩[(2*n)², n²]-(n-1))`
-/

namespace A054556.P5039262791888315850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n : ℤ) - ((n : ℤ) - 1)|

end

end A054556.P5039262791888315850

namespace A054556

/-- `abs(∩[(2*n)², n²]-(n-1))` -/
def P5039262791888315850.Spec : Prop :=
  ∀ n, P5039262791888315850.a n = A054556 (n + 1)

end A054556

/-!
# A054557: Number of labeled pure 2-complexes on n nodes (0-simplexes) with 5 2-simplexes and 10 1-simplexes.

The programs for A054557, the canonical program `A054557.P14435988549531021799` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054557 has offset 5).

The definition of A054557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054557.P14435988549531021799

`(n+5)*(n+4)*(n+3)*(n+2)*(n+1)*(61*(n+5)-299)/10`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054557

/-- `(n+5)*(n+4)*(n+3)*(n+2)*(n+1)*(61*(n+5)-299)/10` -/
def P14435988549531021799.Spec : Prop :=
  ∀ n, P14435988549531021799.a n = (A054557 (n + 5) : ℚ)

end A054557

/-!
# A054558: Number of labeled pure 2-complexes on n nodes (0-simplexes) with 5 2-simplexes and 9 1-simplexes.

The programs for A054558, the canonical program `A054558.P14901462491353099386` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054558 has offset 5).

The definition of A054558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054558.P14901462491353099386

`150*C(n+5, 5)+60*C(n+5, 6)+35*C(n+5, 7)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054558

/-- `150*C(n+5, 5)+60*C(n+5, 6)+35*C(n+5, 7)` -/
def P14901462491353099386.Spec : Prop :=
  ∀ n, (P14901462491353099386.a n : ℤ) = A054558 (n + 5)

theorem P14901462491353099386.correct : P14901462491353099386.Spec := by
  intro n
  simp only [A054558, Nat.add_sub_cancel]

end A054558

/-!
# A054559: Number of labeled pure 2-complexes on n nodes (0-simplexes) with 5 2-simplexes and 8 1-simplexes.

The programs for A054559, the canonical program `A054559.P15202165871438408034` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054559 has offset 5).

The definition of A054559 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054559.P15202165871438408034

`30*C(n+5, 5)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054559

/-- `30*C(n+5, 5)` -/
def P15202165871438408034.Spec : Prop :=
  ∀ n, (P15202165871438408034.a n : ℤ) = A054559 (n + 5)

theorem P15202165871438408034.correct : P15202165871438408034.Spec := by
  intro n
  simp only [A054559, Nat.add_sub_cancel]

end A054559

/-! ## A054559.P8664985811284798470

`(n+5)*(n+4)*(n+3)*(n+2)*(n+1)/4`
-/

namespace A054559.P8664985811284798470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℚ) * ((n + 4 : ℚ) * ((n + 3 : ℚ) * ((n + 2 : ℚ) * ((n + 1 : ℚ) / 4))))

end

end A054559.P8664985811284798470

namespace A054559

/-- `(n+5)*(n+4)*(n+3)*(n+2)*(n+1)/4` -/
def P8664985811284798470.Spec : Prop :=
  ∀ n, P8664985811284798470.a n = (A054559 (n + 5) : ℚ)

end A054559

/-! ## A054559.P2700422243758508532

`abs(A331434(n))`
-/

namespace A054559.P2700422243758508532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A331434 n|

end

end A054559.P2700422243758508532

namespace A054559

/-- `abs(A331434(n))` -/
def P2700422243758508532.Spec : Prop :=
  ∀ n, P2700422243758508532.a n = A054559 (n + 5)

end A054559

/-! ## A054559.P456775507731449624

`lcm(A000034(n), A331434(n))`
-/

namespace A054559.P456775507731449624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A331434 n)

end

end A054559.P456775507731449624

namespace A054559

/-- `lcm(A000034(n), A331434(n))` -/
def P456775507731449624.Spec : Prop :=
  ∀ n, (P456775507731449624.a n : ℤ) = A054559 (n + 5)

end A054559

/-! ## A054559.P9486312720553276601

`A293615(n+1)/2`
-/

namespace A054559.P9486312720553276601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293615 (n + 1) : ℚ) / 2

end

end A054559.P9486312720553276601

namespace A054559

/-- `A293615(n+1)/2` -/
def P9486312720553276601.Spec : Prop :=
  ∀ n, P9486312720553276601.a n = (A054559 (n + 5) : ℚ)

end A054559

/-! ## A054559.P15686133208749078842

`Δ[2*∑[A151974(n)]]`
-/

namespace A054559.P15686133208749078842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151974 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054559.P15686133208749078842

namespace A054559

/-- `Δ[2*∑[A151974(n)]]` -/
def P15686133208749078842.Spec : Prop :=
  ∀ n, P15686133208749078842.a n = A054559 (n + 5)

end A054559

/-!
# A054563: a(n) = n*(n^2 - 1)*(n + 2)*(n^2 + 4*n + 6)/72.

The programs for A054563, the canonical program `A054563.P17816310526759205414` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054563 has offset 0).

The definition of A054563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054563.P8696748176579544217

`n*(n²-1)*(n+2)*(n²+4*n+6)/72`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A054563.P8696748176579544217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n ^ 2 : ℤ) - 1 : ℚ) * ((n + 2 : ℚ) * ((n ^ 2 + 4 * n + 6 : ℚ) / 72)))

end

end A054563.P8696748176579544217

namespace A054563

/-- `n*(n²-1)*(n+2)*(n²+4*n+6)/72` -/
def P8696748176579544217.Spec : Prop :=
  ∀ n, P8696748176579544217.a n = (A054563 n : ℚ)

end A054563

/-! ## A054563.P17816310526759205414

`A373733(n)-A000292(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054563

/-- `A373733(n)-A000292(n)` -/
def P17816310526759205414.Spec : Prop :=
  ∀ n, P17816310526759205414.a n = A054563 n

theorem P17816310526759205414.correct : P17816310526759205414.Spec := by
  intro n
  simp only [A054563]

end A054563

/-! ## A054563.P4725276847561677721

`C(∑[∑[n]], 2)`
-/

namespace A054563.P4725276847561677721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A054563.P4725276847561677721

namespace A054563

/-- `C(∑[∑[n]], 2)` -/
def P4725276847561677721.Spec : Prop :=
  ∀ n, (P4725276847561677721.a n : ℤ) = A054563 n

end A054563

/-! ## A054563.P1695422002293432027

`∑[A004302(n)-A002817(n)]`
-/

namespace A054563.P1695422002293432027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004302 n - A002817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054563.P1695422002293432027

namespace A054563

/-- `∑[A004302(n)-A002817(n)]` -/
def P1695422002293432027.Spec : Prop :=
  ∀ n, P1695422002293432027.a n = A054563 n

end A054563

/-! ## A054563.P1062099872553851624

`A198833(n+1)-A006542(n+4)`
-/

namespace A054563.P1062099872553851624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198833 (n + 1) - A006542 (n + 4)

end

end A054563.P1062099872553851624

namespace A054563

/-- `A198833(n+1)-A006542(n+4)` -/
def P1062099872553851624.Spec : Prop :=
  ∀ n, P1062099872553851624.a n = A054563 n

end A054563

/-! ## A054563.P876949286907098868

`∑[A260513(n+1)]-A006542(n+4)`
-/

namespace A054563.P876949286907098868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006542 (n + 4)

end

end A054563.P876949286907098868

namespace A054563

/-- `∑[A260513(n+1)]-A006542(n+4)` -/
def P876949286907098868.Spec : Prop :=
  ∀ n, P876949286907098868.a n = A054563 n

end A054563

/-! ## A054563.P7646208672203743750

`A093566(n+3)-A093567(n+2)`
-/

namespace A054563.P7646208672203743750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093566 (n + 3) - A093567 (n + 2)

end

end A054563.P7646208672203743750

namespace A054563

/-- `A093566(n+3)-A093567(n+2)` -/
def P7646208672203743750.Spec : Prop :=
  ∀ n, P7646208672203743750.a n = A054563 n

end A054563

/-! ## A054563.P18097675622760712289

`A000292(∑[n+1])-A006542(n+4)`
-/

namespace A054563.P18097675622760712289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (∑ j ∈ Finset.range (n + 1), f1 j) - A006542 (n + 4)

end

end A054563.P18097675622760712289

namespace A054563

/-- `A000292(∑[n+1])-A006542(n+4)` -/
def P18097675622760712289.Spec : Prop :=
  ∀ n, P18097675622760712289.a n = A054563 n

end A054563

/-! ## A054563.P12957743715739233527

`A000217(∑[∑[n]-char[1]])`
-/

namespace A054563.P12957743715739233527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054563.P12957743715739233527

namespace A054563

/-- `A000217(∑[∑[n]-char[1]])` -/
def P12957743715739233527.Spec : Prop :=
  ∀ n, P12957743715739233527.a n = A054563 n

end A054563

/-! ## A054563.P17996001450162932030

`A000217(C(n+2, 3))-C(n+2, 3)`
-/

namespace A054563.P17996001450162932030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.choose (n + 2) 3) - (Nat.choose (n + 2) 3 : ℤ)

end

end A054563.P17996001450162932030

namespace A054563

/-- `A000217(C(n+2, 3))-C(n+2, 3)` -/
def P17996001450162932030.Spec : Prop :=
  ∀ n, P17996001450162932030.a n = A054563 n

end A054563

/-!
# A054564: Prime number spiral (clockwise, Southeast spoke).

The programs for A054564, the canonical program `A054564.P9697744919051862196` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054564 has offset 0).

The definition of A054564 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054564.P9697744919051862196

`A000040(A053755(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054564

/-- `A000040(A053755(n))` -/
def P9697744919051862196.Spec : Prop :=
  ∀ n, P9697744919051862196.a n = A054564 n

theorem P9697744919051862196.correct : P9697744919051862196.Spec := by
  intro n
  simp only [A054564]

end A054564

/-! ## A054564.P9892526580566813620

`A243896(2*n)`
-/

namespace A054564.P9892526580566813620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243896 (2 * n)

end

end A054564.P9892526580566813620

namespace A054564

/-- `A243896(2*n)` -/
def P9892526580566813620.Spec : Prop :=
  ∀ n, P9892526580566813620.a n = A054564 n

end A054564

/-! ## A054564.P1490711448900632841

`record[A243896(n)^(-1)^n]`
-/

namespace A054564.P1490711448900632841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243896 n : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054564.P1490711448900632841

namespace A054564

/-- `record[A243896(n)^(-1)^n]` -/
def P1490711448900632841.Spec : Prop :=
  ∀ n, P1490711448900632841.a n = (A054564 n : ℚ)

end A054564

/-! ## A054564.P81725128589105320

`A059428(A008574(n))`
-/

namespace A054564.P81725128589105320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059428 (A008574 n).toNat

end

end A054564.P81725128589105320

namespace A054564

/-- `A059428(A008574(n))` -/
def P81725128589105320.Spec : Prop :=
  ∀ n, P81725128589105320.a n = A054564 n

end A054564

/-! ## A054564.P17889469595724589001

`A059428(A004277(2*n))`
-/

namespace A054564.P17889469595724589001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059428 (A004277 (2 * n)).toNat

end

end A054564.P17889469595724589001

namespace A054564

/-- `A059428(A004277(2*n))` -/
def P17889469595724589001.Spec : Prop :=
  ∀ n, P17889469595724589001.a n = A054564 n

end A054564

/-! ## A054564.P6922578974534376823

`A059428(A004275(2*n+1))`
-/

namespace A054564.P6922578974534376823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059428 (A004275 (2 * n + 1)).toNat

end

end A054564.P6922578974534376823

namespace A054564

/-- `A059428(A004275(2*n+1))` -/
def P6922578974534376823.Spec : Prop :=
  ∀ n, P6922578974534376823.a n = A054564 n

end A054564

/-! ## A054564.P12227932529736184056

`A031385(n²+1)`
-/

namespace A054564.P12227932529736184056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031385 (n ^ 2 + 1)

end

end A054564.P12227932529736184056

namespace A054564

/-- `A031385(n²+1)` -/
def P12227932529736184056.Spec : Prop :=
  ∀ n, P12227932529736184056.a n = A054564 n

end A054564

/-! ## A054564.P555544384499415067

`∩[A031385(n+1), A243896(n)]`
-/

namespace A054564.P555544384499415067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243896 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054564.P555544384499415067

namespace A054564

/-- `∩[A031385(n+1), A243896(n)]` -/
def P555544384499415067.Spec : Prop :=
  ∀ n, (P555544384499415067.a n : ℤ) = A054564 n

end A054564

/-! ## A054564.P4219421056355843759

`∩[A091735(n+1), A243896(n)]`
-/

namespace A054564.P4219421056355843759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243896 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054564.P4219421056355843759

namespace A054564

/-- `∩[A091735(n+1), A243896(n)]` -/
def P4219421056355843759.Spec : Prop :=
  ∀ n, (P4219421056355843759.a n : ℤ) = A054564 n

end A054564

/-! ## A054564.P14405393239083593030

`A060191(2*n²)`
-/

namespace A054564.P14405393239083593030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 (2 * n ^ 2)

end

end A054564.P14405393239083593030

namespace A054564

/-- `A060191(2*n²)` -/
def P14405393239083593030.Spec : Prop :=
  ∀ n, P14405393239083593030.a n = A054564 n

end A054564

/-!
# A054565: Numbers n such that 3 is the first digit of 3^n.

The programs for A054565, the canonical program `A054565.P1541033831285552119` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054565 has offset 1).

The definition of A054565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054565.P1541033831285552119

`eq[3, A060956(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054565

/-- `eq[3, A060956(n)]` -/
def P1541033831285552119.Spec : Prop :=
  ∀ n, (P1541033831285552119.a n : ℤ) = A054565 (n + 1)

theorem P1541033831285552119.correct : P1541033831285552119.Spec := by
  intro n
  simp only [A054565, Nat.add_sub_cancel]

end A054565

/-! ## A054565.P14446621502308418700

`eq[3, A004167(n)%10]`
-/

namespace A054565.P14446621502308418700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004167 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054565.P14446621502308418700

namespace A054565

/-- `eq[3, A004167(n)%10]` -/
def P14446621502308418700.Spec : Prop :=
  ∀ n, (P14446621502308418700.a n : ℤ) = A054565 (n + 1)

end A054565

/-!
# A054566: Prime number spiral (clockwise, South spoke).

The programs for A054566, the canonical program `A054566.P16975862670620973608` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054566 has offset 0).

The definition of A054566 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054566.P16975862670620973608

`A000040(A054567(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054566

/-- `A000040(A054567(n+1))` -/
def P16975862670620973608.Spec : Prop :=
  ∀ n, P16975862670620973608.a n = A054566 n

theorem P16975862670620973608.correct : P16975862670620973608.Spec := by
  intro n
  simp only [A054566]

end A054566

/-! ## A054566.P10978416830587147072

`A317187(Δ[n²])`
-/

namespace A054566.P10978416830587147072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317187 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A054566.P10978416830587147072

namespace A054566

/-- `A317187(Δ[n²])` -/
def P10978416830587147072.Spec : Prop :=
  ∀ n, P10978416830587147072.a n = A054566 n

end A054566

/-! ## A054566.P10930782029073397473

`record[A317187(2*(n+1)/(xor(n, n+1)+1))]`
-/

namespace A054566.P10930782029073397473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317187 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054566.P10930782029073397473

namespace A054566

/-- `record[A317187(2*(n+1)/(xor(n, n+1)+1))]` -/
def P10930782029073397473.Spec : Prop :=
  ∀ n, P10930782029073397473.a n = A054566 n

end A054566

/-! ## A054566.P7681663046717395190

`record[A317187(n+1)/A033999(n)]`
-/

namespace A054566.P7681663046717395190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317187 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054566.P7681663046717395190

namespace A054566

/-- `record[A317187(n+1)/A033999(n)]` -/
def P7681663046717395190.Spec : Prop :=
  ∀ n, P7681663046717395190.a n = (A054566 n : ℚ)

end A054566

/-! ## A054566.P5670507838355858006

`A317187(2*n+1)+A000007(3*n+2)`
-/

namespace A054566.P5670507838355858006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317187 (2 * n + 1) + A000007 (3 * n + 2)

end

end A054566.P5670507838355858006

namespace A054566

/-- `A317187(2*n+1)+A000007(3*n+2)` -/
def P5670507838355858006.Spec : Prop :=
  ∀ n, P5670507838355858006.a n = A054566 n

end A054566

/-! ## A054566.P6396494749546401505

`A247665(A248387((2*n)²+n+1))`
-/

namespace A054566.P6396494749546401505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (A248387 ((2 * n) ^ 2 + (n + 1))).toNat

end

end A054566.P6396494749546401505

namespace A054566

/-- `A247665(A248387((2*n)²+n+1))` -/
def P6396494749546401505.Spec : Prop :=
  ∀ n, P6396494749546401505.a n = A054566 n

end A054566

/-! ## A054566.P14816575506167546896

`p?[A317187(2*n+1)]`
-/

namespace A054566.P14816575506167546896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317187 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054566.P14816575506167546896

namespace A054566

/-- `p?[A317187(2*n+1)]` -/
def P14816575506167546896.Spec : Prop :=
  ∀ n, P14816575506167546896.a n = A054566 n

end A054566

/-! ## A054566.P4896815491772978523

`A001749((2*n)²+n+1)/4`
-/

namespace A054566.P4896815491772978523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 ((2 * n) ^ 2 + (n + 1)) : ℚ) / 4

end

end A054566.P4896815491772978523

namespace A054566

/-- `A001749((2*n)²+n+1)/4` -/
def P4896815491772978523.Spec : Prop :=
  ∀ n, P4896815491772978523.a n = (A054566 n : ℚ)

end A054566

/-! ## A054566.P9659148943272384065

`A001748(n*(4*n+1)+1)/3`
-/

namespace A054566.P9659148943272384065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n * (4 * n + 1) + 1) : ℚ) / 3

end

end A054566.P9659148943272384065

namespace A054566

/-- `A001748(n*(4*n+1)+1)/3` -/
def P9659148943272384065.Spec : Prop :=
  ∀ n, P9659148943272384065.a n = (A054566 n : ℚ)

end A054566

/-! ## A054566.P15712020241763627961

`ceil(A001749(A007742(n)+1)/4)`
-/

namespace A054566.P15712020241763627961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001749 (A007742 n + 1).toNat : ℚ) / 4⌉

end

end A054566.P15712020241763627961

namespace A054566

/-- `ceil(A001749(A007742(n)+1)/4)` -/
def P15712020241763627961.Spec : Prop :=
  ∀ n, P15712020241763627961.a n = A054566 n

end A054566

/-!
# A054567: a(n) = 4*n^2 - 7*n + 4.

The programs for A054567, the canonical program `A054567.P492713919854177401` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054567 has offset 1).

The definition of A054567 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)²-7*(n+1)+4` (program `A054567.P492713919854177401`, by `A054567.P492713919854177401.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054567.P3720340904535448251

`8*(n+1)+a(n-1)-11` with `a(0)=1`
-/

namespace A054567.P3720340904535448251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 * (n + 1) : ℤ) + a (n - 1) - 11

end

end A054567.P3720340904535448251

namespace A054567

/-- `8*(n+1)+a(n-1)-11` -/
def P3720340904535448251.Spec : Prop :=
  ∀ n, P3720340904535448251.a n = A054567 (n + 1)

theorem P3720340904535448251.correct : P3720340904535448251.Spec := by
  intro n
  induction n with
  | zero => simp [A054567, A054567.P3720340904535448251.a, A054567.P492713919854177401.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A054567, Nat.add_sub_cancel, A054567.P3720340904535448251.a, A054567.P492713919854177401.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A054567

/-! ## A054567.P492713919854177401

`4*(n+1)²-7*(n+1)+4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054567

/-- `4*(n+1)²-7*(n+1)+4` -/
def P492713919854177401.Spec : Prop :=
  ∀ n, P492713919854177401.a n = A054567 (n + 1)

theorem P492713919854177401.correct : P492713919854177401.Spec := by
  intro n
  simp only [A054567, Nat.add_sub_cancel]

end A054567

/-! ## A054567.P14771678869604259850

`A204674(n)/(n+1)`
-/

namespace A054567.P14771678869604259850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204674 n : ℚ) / (n + 1 : ℚ)

end

end A054567.P14771678869604259850

namespace A054567

/-- `A204674(n)/(n+1)` -/
def P14771678869604259850.Spec : Prop :=
  ∀ n, P14771678869604259850.a n = (A054567 (n + 1) : ℚ)

end A054567

/-! ## A054567.P2504016646935071082

`∑[record[lcm(4, n)+1]]`
-/

namespace A054567.P2504016646935071082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054567.P2504016646935071082

namespace A054567

/-- `∑[record[lcm(4, n)+1]]` -/
def P2504016646935071082.Spec : Prop :=
  ∀ n, (P2504016646935071082.a n : ℤ) = A054567 (n + 1)

end A054567

/-! ## A054567.P4842010044093886717

`∑[a(n-1)+8]` with `a(0)=1, a(1)=5`
-/

namespace A054567.P4842010044093886717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054567.P4842010044093886717

namespace A054567

/-- `∑[a(n-1)+8]` -/
def P4842010044093886717.Spec : Prop :=
  ∀ n, (P4842010044093886717.a n : ℤ) = A054567 (n + 1)

end A054567

/-! ## A054567.P3605529183690582257

`∑[ogf((1+3x+4x^2)/(1-2x+x^2))]`
-/

namespace A054567.P3605529183690582257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054567.P3605529183690582257

namespace A054567

/-- `∑[ogf((1+3x+4x^2)/(1-2x+x^2))]` -/
def P3605529183690582257.Spec : Prop :=
  ∀ n, P3605529183690582257.a n = A054567 (n + 1)

end A054567

/-! ## A054567.P1280804429323728459

`ogf((1+3x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A054567.P1280804429323728459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4] [1, -3, 3, -1] n

end

end A054567.P1280804429323728459

namespace A054567

/-- `ogf((1+3x+4x^2)/(1-3x+3x^2-x^3))` -/
def P1280804429323728459.Spec : Prop :=
  ∀ n, P1280804429323728459.a n = A054567 (n + 1)

end A054567

/-! ## A054567.P3737602802823530661

`abs(xor(-1, (2*n)²)-n)`
-/

namespace A054567.P3737602802823530661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) ((2 * n) ^ 2 : ℤ) - (n : ℤ)|

end

end A054567.P3737602802823530661

namespace A054567

/-- `abs(xor(-1, (2*n)²)-n)` -/
def P3737602802823530661.Spec : Prop :=
  ∀ n, P3737602802823530661.a n = A054567 (n + 1)

end A054567

/-! ## A054567.P16184902933735450403

`(C(4*n+1, 2)+2)/2`
-/

namespace A054567.P16184902933735450403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 1) 2 + 2 : ℚ) / 2

end

end A054567.P16184902933735450403

namespace A054567

/-- `(C(4*n+1, 2)+2)/2` -/
def P16184902933735450403.Spec : Prop :=
  ∀ n, P16184902933735450403.a n = (A054567 (n + 1) : ℚ)

end A054567

/-! ## A054567.P14263396350398221951

`floor(8*n+a(n-1)-3)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A054567.P14263396350398221951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 * n : ℤ) + (a (n - 1) - 3)

end

end A054567.P14263396350398221951

namespace A054567

/-- `floor(8*n+a(n-1)-3)` -/
def P14263396350398221951.Spec : Prop :=
  ∀ n, P14263396350398221951.a n = A054567 (n + 1)

theorem P14263396350398221951.correct : P14263396350398221951.Spec := by
  intro n
  induction n with
  | zero => simp [A054567, A054567.P14263396350398221951.a, A054567.P492713919854177401.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A054567, Nat.add_sub_cancel, A054567.P14263396350398221951.a, A054567.P492713919854177401.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A054567

/-! ## A054567.P4508616919102010996

`floor(8*n-(3-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A054567.P4508616919102010996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 * n : ℤ) - (3 - a (n - 1))

end

end A054567.P4508616919102010996

namespace A054567

/-- `floor(8*n-(3-a(n-1)))` -/
def P4508616919102010996.Spec : Prop :=
  ∀ n, P4508616919102010996.a n = A054567 (n + 1)

theorem P4508616919102010996.correct : P4508616919102010996.Spec := by
  intro n
  induction n with
  | zero => simp [A054567, A054567.P4508616919102010996.a, A054567.P492713919854177401.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A054567, Nat.add_sub_cancel, A054567.P4508616919102010996.a, A054567.P492713919854177401.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A054567

/-! ## A054567.P4655342365218977581

`floor(2*n/acot(2*n)+n+1)`
-/

namespace A054567.P4655342365218977581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / SequenceMachineLib.acot (2 * n : ℝ) + (n + 1 : ℝ)⌋

end

end A054567.P4655342365218977581

namespace A054567

/-- `floor(2*n/acot(2*n)+n+1)` -/
def P4655342365218977581.Spec : Prop :=
  ∀ n, P4655342365218977581.a n = A054567 (n + 1)

end A054567

/-! ## A054567.P12558846169869551224

`ceil((2*n+1)/acot(2*n)-n)`
-/

namespace A054567.P12558846169869551224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / SequenceMachineLib.acot (2 * n : ℝ) - (n : ℝ)⌉

end

end A054567.P12558846169869551224

namespace A054567

/-- `ceil((2*n+1)/acot(2*n)-n)` -/
def P12558846169869551224.Spec : Prop :=
  ∀ n, P12558846169869551224.a n = A054567 (n + 1)

end A054567

/-! ## A054567.P13288949122470978735

`round((2*n+2*n+1)/acot(n))`
-/

namespace A054567.P13288949122470978735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + (2 * n + 1) : ℝ) / SequenceMachineLib.acot (n : ℝ))

end

end A054567.P13288949122470978735

namespace A054567

/-- `round((2*n+2*n+1)/acot(n))` -/
def P13288949122470978735.Spec : Prop :=
  ∀ n, P13288949122470978735.a n = A054567 (n + 1)

end A054567

/-! ## A054567.P5568441919564320251

`abs(2*C(2*n+1, 2)-(n-1))`
-/

namespace A054567.P5568441919564320251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * Nat.choose (2 * n + 1) 2 : ℤ) - ((n : ℤ) - 1)|

end

end A054567.P5568441919564320251

namespace A054567

/-- `abs(2*C(2*n+1, 2)-(n-1))` -/
def P5568441919564320251.Spec : Prop :=
  ∀ n, P5568441919564320251.a n = A054567 (n + 1)

end A054567

/-! ## A054567.P11849856537011301730

`abs(lcm(2*n+1, 2*n)+1-n)`
-/

namespace A054567.P11849856537011301730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm (2 * n + 1) (2 * n) : ℤ) + (1 - (n : ℤ))|

end

end A054567.P11849856537011301730

namespace A054567

/-- `abs(lcm(2*n+1, 2*n)+1-n)` -/
def P11849856537011301730.Spec : Prop :=
  ∀ n, P11849856537011301730.a n = A054567 (n + 1)

end A054567

/-! ## A054567.P11902705275625006045

`abs(or(1, (2*n+1)*2*n)-n)`
-/

namespace A054567.P11902705275625006045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 ((2 * n + 1) * (2 * n)) : ℤ) - (n : ℤ)|

end

end A054567.P11902705275625006045

namespace A054567

/-- `abs(or(1, (2*n+1)*2*n)-n)` -/
def P11902705275625006045.Spec : Prop :=
  ∀ n, P11902705275625006045.a n = A054567 (n + 1)

end A054567

/-! ## A054567.P8433358955729851284

`abs(2*n*or(1, 2*n)-(n-1))`
-/

namespace A054567.P8433358955729851284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n * Nat.lor 1 (2 * n) : ℤ) - ((n : ℤ) - 1)|

end

end A054567.P8433358955729851284

namespace A054567

/-- `abs(2*n*or(1, 2*n)-(n-1))` -/
def P8433358955729851284.Spec : Prop :=
  ∀ n, P8433358955729851284.a n = A054567 (n + 1)

end A054567

/-! ## A054567.P4039602120357307200

`abs(n-xor(1, (2*n+1)*2*n))`
-/

namespace A054567.P4039602120357307200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (Nat.xor 1 ((2 * n + 1) * (2 * n)) : ℤ)|

end

end A054567.P4039602120357307200

namespace A054567

/-- `abs(n-xor(1, (2*n+1)*2*n))` -/
def P4039602120357307200.Spec : Prop :=
  ∀ n, P4039602120357307200.a n = A054567 (n + 1)

end A054567

/-! ## A054567.P12728839621931515817

`abs(2*n*xor(1, 2*n)-(n-1))`
-/

namespace A054567.P12728839621931515817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n * Nat.xor 1 (2 * n) : ℤ) - ((n : ℤ) - 1)|

end

end A054567.P12728839621931515817

namespace A054567

/-- `abs(2*n*xor(1, 2*n)-(n-1))` -/
def P12728839621931515817.Spec : Prop :=
  ∀ n, P12728839621931515817.a n = A054567 (n + 1)

end A054567

/-!
# A054568: Prime number spiral (clockwise, Southwest spoke).

The programs for A054568, the canonical program `A054568.P5863294076294315471` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054568 has offset 0).

The definition of A054568 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054568.P5863294076294315471

`A000040(A054569(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054568

/-- `A000040(A054569(n+1))` -/
def P5863294076294315471.Spec : Prop :=
  ∀ n, P5863294076294315471.a n = A054568 n

theorem P5863294076294315471.correct : P5863294076294315471.Spec := by
  intro n
  simp only [A054568]

end A054568

/-! ## A054568.P6819946546047719491

`A122566(2*n)`
-/

namespace A054568.P6819946546047719491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122566 (2 * n)

end

end A054568.P6819946546047719491

namespace A054568

/-- `A122566(2*n)` -/
def P6819946546047719491.Spec : Prop :=
  ∀ n, P6819946546047719491.a n = A054568 n

end A054568

/-! ## A054568.P4519223359459887606

`record[gcd(A007814(n+1), A122566(n))]`
-/

namespace A054568.P4519223359459887606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A122566 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054568.P4519223359459887606

namespace A054568

/-- `record[gcd(A007814(n+1), A122566(n))]` -/
def P4519223359459887606.Spec : Prop :=
  ∀ n, (P4519223359459887606.a n : ℤ) = A054568 n

end A054568

/-! ## A054568.P16244531169977856801

`A059428(3*n+n+1)`
-/

namespace A054568.P16244531169977856801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059428 (3 * n + (n + 1))

end

end A054568.P16244531169977856801

namespace A054568

/-- `A059428(3*n+n+1)` -/
def P16244531169977856801.Spec : Prop :=
  ∀ n, P16244531169977856801.a n = A054568 n

end A054568

/-! ## A054568.P10468368808153285698

`record[A122566(A390430(n+1))]`
-/

namespace A054568.P10468368808153285698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122566 (A390430 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054568.P10468368808153285698

namespace A054568

/-- `record[A122566(A390430(n+1))]` -/
def P10468368808153285698.Spec : Prop :=
  ∀ n, P10468368808153285698.a n = A054568 n

end A054568

/-! ## A054568.P4346553546304168974

`A031368(∑[abs(1-4*n)])`
-/

namespace A054568.P4346553546304168974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (4 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054568.P4346553546304168974

namespace A054568

/-- `A031368(∑[abs(1-4*n)])` -/
def P4346553546304168974.Spec : Prop :=
  ∀ n, P4346553546304168974.a n = A054568 n

end A054568

/-! ## A054568.P10237620301301793112

`A001748(n*lcm(2, 2*n+1)+1)/3`
-/

namespace A054568.P10237620301301793112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n * Nat.lcm 2 (2 * n + 1) + 1) : ℚ) / 3

end

end A054568.P10237620301301793112

namespace A054568

/-- `A001748(n*lcm(2, 2*n+1)+1)/3` -/
def P10237620301301793112.Spec : Prop :=
  ∀ n, P10237620301301793112.a n = (A054568 n : ℚ)

end A054568

/-! ## A054568.P15543127709965138937

`A001748(A002943(n)+1)/3`
-/

namespace A054568.P15543127709965138937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A002943 n + 1).toNat : ℚ) / 3

end

end A054568.P15543127709965138937

namespace A054568

/-- `A001748(A002943(n)+1)/3` -/
def P15543127709965138937.Spec : Prop :=
  ∀ n, P15543127709965138937.a n = (A054568 n : ℚ)

end A054568

/-! ## A054568.P7777212207464848200

`A001749(A002943(n)+1)/4`
-/

namespace A054568.P7777212207464848200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A002943 n + 1).toNat : ℚ) / 4

end

end A054568.P7777212207464848200

namespace A054568

/-- `A001749(A002943(n)+1)/4` -/
def P7777212207464848200.Spec : Prop :=
  ∀ n, P7777212207464848200.a n = (A054568 n : ℚ)

end A054568

/-! ## A054568.P16094853605613343780

`A001748(n*A016825(n)+1)/3`
-/

namespace A054568.P16094853605613343780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 ((n : ℤ) * A016825 n + 1).toNat : ℚ) / 3

end

end A054568.P16094853605613343780

namespace A054568

/-- `A001748(n*A016825(n)+1)/3` -/
def P16094853605613343780.Spec : Prop :=
  ∀ n, P16094853605613343780.a n = (A054568 n : ℚ)

end A054568

/-!
# A054569: a(n) = 4*n^2 - 6*n + 3.

The programs for A054569, the canonical program `A054569.P15731719506517451756` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054569 has offset 1).

The definition of A054569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)²-6*(n+1)+3` (program `A054569.P15731719506517451756`, by `A054569.P15731719506517451756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054569.P10803139056337972236

`4*n²+2*n+1`
-/

namespace A054569.P10803139056337972236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n ^ 2 + 2 * n + 1

end

end A054569.P10803139056337972236

namespace A054569

/-- `4*n²+2*n+1` -/
def P10803139056337972236.Spec : Prop :=
  ∀ n, (P10803139056337972236.a n : ℤ) = A054569 (n + 1)

theorem P10803139056337972236.correct : P10803139056337972236.Spec := by
  intro n
  simp only [A054569, Nat.add_sub_cancel, A054569.P10803139056337972236.a, A054569.P15731719506517451756.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A054569

/-! ## A054569.P15731719506517451756

`4*(n+1)²-6*(n+1)+3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054569

/-- `4*(n+1)²-6*(n+1)+3` -/
def P15731719506517451756.Spec : Prop :=
  ∀ n, P15731719506517451756.a n = A054569 (n + 1)

theorem P15731719506517451756.correct : P15731719506517451756.Spec := by
  intro n
  simp only [A054569, Nat.add_sub_cancel]

end A054569

/-! ## A054569.P6232310455695007774

`record[or(1, n)²-n]`
-/

namespace A054569.P6232310455695007774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054569.P6232310455695007774

namespace A054569

/-- `record[or(1, n)²-n]` -/
def P6232310455695007774.Spec : Prop :=
  ∀ n, P6232310455695007774.a n = A054569 (n + 1)

end A054569

/-! ## A054569.P13772313519887498594

`record[xor(1, n)²-n]`
-/

namespace A054569.P13772313519887498594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054569.P13772313519887498594

namespace A054569

/-- `record[xor(1, n)²-n]` -/
def P13772313519887498594.Spec : Prop :=
  ∀ n, P13772313519887498594.a n = A054569 (n + 1)

end A054569

/-! ## A054569.P6442193283582021383

`∑[a(n-1)+8]` with `a(0)=1, a(1)=6`
-/

namespace A054569.P6442193283582021383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054569.P6442193283582021383

namespace A054569

/-- `∑[a(n-1)+8]` -/
def P6442193283582021383.Spec : Prop :=
  ∀ n, (P6442193283582021383.a n : ℤ) = A054569 (n + 1)

end A054569

/-! ## A054569.P13067431691274971703

`or(1, n*(4*n+2))`
-/

namespace A054569.P13067431691274971703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (4 * n + 2))

end

end A054569.P13067431691274971703

namespace A054569

/-- `or(1, n*(4*n+2))` -/
def P13067431691274971703.Spec : Prop :=
  ∀ n, (P13067431691274971703.a n : ℤ) = A054569 (n + 1)

end A054569

/-! ## A054569.P7703774735355136763

`xor(1, n*(4*n+2))`
-/

namespace A054569.P7703774735355136763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (4 * n + 2))

end

end A054569.P7703774735355136763

namespace A054569

/-- `xor(1, n*(4*n+2))` -/
def P7703774735355136763.Spec : Prop :=
  ∀ n, (P7703774735355136763.a n : ℤ) = A054569 (n + 1)

end A054569

/-! ## A054569.P2685727955451816695

`Δ[C(2*n, 3)+n²]`
-/

namespace A054569.P2685727955451816695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A054569.P2685727955451816695

namespace A054569

/-- `Δ[C(2*n, 3)+n²]` -/
def P2685727955451816695.Spec : Prop :=
  ∀ n, P2685727955451816695.a n = A054569 (n + 1)

end A054569

/-! ## A054569.P15777900442708038472

`∑[ogf((1+4x+3x^2)/(1-2x+x^2))]`
-/

namespace A054569.P15777900442708038472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054569.P15777900442708038472

namespace A054569

/-- `∑[ogf((1+4x+3x^2)/(1-2x+x^2))]` -/
def P15777900442708038472.Spec : Prop :=
  ∀ n, P15777900442708038472.a n = A054569 (n + 1)

end A054569

/-! ## A054569.P9197170370225254736

`ogf((1+4x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A054569.P9197170370225254736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 3] [1, -3, 3, -1] n

end

end A054569.P9197170370225254736

namespace A054569

/-- `ogf((1+4x+3x^2)/(1-3x+3x^2-x^3))` -/
def P9197170370225254736.Spec : Prop :=
  ∀ n, P9197170370225254736.a n = A054569 (n + 1)

end A054569

/-! ## A054569.P17820883823373589422

`record[(n+1)^gcd(2, n)-n]`
-/

namespace A054569.P17820883823373589422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ Nat.gcd 2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054569.P17820883823373589422

namespace A054569

/-- `record[(n+1)^gcd(2, n)-n]` -/
def P17820883823373589422.Spec : Prop :=
  ∀ n, P17820883823373589422.a n = A054569 (n + 1)

end A054569

/-! ## A054569.P3189708379683553669

`ceil(comp[2*n]/acot(2*n))`
-/

namespace A054569.P3189708379683553669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) / SequenceMachineLib.acot (2 * n : ℝ)⌉

end

end A054569.P3189708379683553669

namespace A054569

/-- `ceil(comp[2*n]/acot(2*n))` -/
def P3189708379683553669.Spec : Prop :=
  ∀ n, P3189708379683553669.a n = A054569 (n + 1)

end A054569

/-! ## A054569.P9662172610359958659

`abs(or(1, 2*n)²-2*n)`
-/

namespace A054569.P9662172610359958659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 (2 * n) ^ 2 : ℤ) - (2 * n : ℤ)|

end

end A054569.P9662172610359958659

namespace A054569

/-- `abs(or(1, 2*n)²-2*n)` -/
def P9662172610359958659.Spec : Prop :=
  ∀ n, P9662172610359958659.a n = A054569 (n + 1)

end A054569

/-! ## A054569.P7153251422385461565

`abs(xor(1, 2*n)²-2*n)`
-/

namespace A054569.P7153251422385461565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.xor 1 (2 * n) ^ 2 : ℤ) - (2 * n : ℤ)|

end

end A054569.P7153251422385461565

namespace A054569

/-- `abs(xor(1, 2*n)²-2*n)` -/
def P7153251422385461565.Spec : Prop :=
  ∀ n, P7153251422385461565.a n = A054569 (n + 1)

end A054569

/-! ## A054569.P16243972690782311070

`floor(2*(2*n+1)/acot(n))`
-/

namespace A054569.P16243972690782311070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((2 * n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ))⌋

end

end A054569.P16243972690782311070

namespace A054569

/-- `floor(2*(2*n+1)/acot(n))` -/
def P16243972690782311070.Spec : Prop :=
  ∀ n, P16243972690782311070.a n = A054569 (n + 1)

end A054569

/-! ## A054569.P6010888736110773063

`floor(Δ[lcm(n, n²²)]/(n+1))`
-/

namespace A054569.P6010888736110773063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n ^ 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A054569.P6010888736110773063

namespace A054569

/-- `floor(Δ[lcm(n, n²²)]/(n+1))` -/
def P6010888736110773063.Spec : Prop :=
  ∀ n, P6010888736110773063.a n = A054569 (n + 1)

end A054569

/-! ## A054569.P11844447173005093402

`floor(Δ[n²²]/C(n+1, n))`
-/

namespace A054569.P11844447173005093402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (Nat.choose (n + 1) n : ℚ)⌋

end

end A054569.P11844447173005093402

namespace A054569

/-- `floor(Δ[n²²]/C(n+1, n))` -/
def P11844447173005093402.Spec : Prop :=
  ∀ n, P11844447173005093402.a n = A054569 (n + 1)

end A054569

/-! ## A054569.P16480731848903721790

`floor(8*n+a(n-1)-2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A054569.P16480731848903721790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 * n : ℤ) + (a (n - 1) - 2)

end

end A054569.P16480731848903721790

namespace A054569

/-- `floor(8*n+a(n-1)-2)` -/
def P16480731848903721790.Spec : Prop :=
  ∀ n, P16480731848903721790.a n = A054569 (n + 1)

theorem P16480731848903721790.correct : P16480731848903721790.Spec := by
  intro n
  induction n with
  | zero => simp [A054569, A054569.P16480731848903721790.a, A054569.P15731719506517451756.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A054569, Nat.add_sub_cancel, A054569.P16480731848903721790.a, A054569.P15731719506517451756.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A054569

/-! ## A054569.P15319027735210233029

`floor(8*n-(2-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A054569.P15319027735210233029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 * n : ℤ) - (2 - a (n - 1))

end

end A054569.P15319027735210233029

namespace A054569

/-- `floor(8*n-(2-a(n-1)))` -/
def P15319027735210233029.Spec : Prop :=
  ∀ n, P15319027735210233029.a n = A054569 (n + 1)

theorem P15319027735210233029.correct : P15319027735210233029.Spec := by
  intro n
  induction n with
  | zero => simp [A054569, A054569.P15319027735210233029.a, A054569.P15731719506517451756.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A054569, Nat.add_sub_cancel, A054569.P15319027735210233029.a, A054569.P15731719506517451756.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A054569

/-! ## A054569.P17976458749772461416

`record[n*xor(1, n-1)-(n-1)]`
-/

namespace A054569.P17976458749772461416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor 1 ((n : ℤ) - 1) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054569.P17976458749772461416

namespace A054569

/-- `record[n*xor(1, n-1)-(n-1)]` -/
def P17976458749772461416.Spec : Prop :=
  ∀ n, P17976458749772461416.a n = A054569 (n + 1)

end A054569

/-!
# A054570: Prime number spiral (clockwise, West spoke).

The programs for A054570, the canonical program `A054570.P11964430520200564668` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054570 has offset 0).

The definition of A054570 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054570.P11964430520200564668

`A000040(A033951(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054570

/-- `A000040(A033951(n))` -/
def P11964430520200564668.Spec : Prop :=
  ∀ n, P11964430520200564668.a n = A054570 n

theorem P11964430520200564668.correct : P11964430520200564668.Spec := by
  intro n
  simp only [A054570]

end A054570

/-! ## A054570.P1782467579318101457

`A001748((2*n+1)²-n)/3`
-/

namespace A054570.P1782467579318101457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 ((2 * n + 1) ^ 2 - n) : ℚ) / 3

end

end A054570.P1782467579318101457

namespace A054570

/-- `A001748((2*n+1)²-n)/3` -/
def P1782467579318101457.Spec : Prop :=
  ∀ n, P1782467579318101457.a n = (A054570 n : ℚ)

end A054570

/-! ## A054570.P4307072194591288470

`A001749((2*n+1)²-n)/4`
-/

namespace A054570.P4307072194591288470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 ((2 * n + 1) ^ 2 - n) : ℚ) / 4

end

end A054570.P4307072194591288470

namespace A054570

/-- `A001749((2*n+1)²-n)/4` -/
def P4307072194591288470.Spec : Prop :=
  ∀ n, P4307072194591288470.a n = (A054570 n : ℚ)

end A054570

/-! ## A054570.P7854191622373209262

`floor(A001748(A109613(2*n)²-n)/3)`
-/

namespace A054570.P7854191622373209262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001748 (A109613 (2 * n) ^ 2 - (n : ℤ)).toNat : ℚ) / 3⌋

end

end A054570.P7854191622373209262

namespace A054570

/-- `floor(A001748(A109613(2*n)²-n)/3)` -/
def P7854191622373209262.Spec : Prop :=
  ∀ n, P7854191622373209262.a n = A054570 n

end A054570

/-! ## A054570.P1169793265625157762

`floor(A001748(A194073(2*n+1)+n²)/3)`
-/

namespace A054570.P1169793265625157762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001748 (A194073 (2 * n + 1) + (n ^ 2 : ℤ)).toNat : ℚ) / 3⌋

end

end A054570.P1169793265625157762

namespace A054570

/-- `floor(A001748(A194073(2*n+1)+n²)/3)` -/
def P1169793265625157762.Spec : Prop :=
  ∀ n, P1169793265625157762.a n = A054570 n

end A054570

/-! ## A054570.P17474268513625516495

`A156037((2*n)²+3*n+1)+1`
-/

namespace A054570.P17474268513625516495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 ((2 * n) ^ 2 + 3 * n + 1) + 1

end

end A054570.P17474268513625516495

namespace A054570

/-- `A156037((2*n)²+3*n+1)+1` -/
def P17474268513625516495.Spec : Prop :=
  ∀ n, P17474268513625516495.a n = A054570 n

end A054570

/-! ## A054570.P1711520696723344037

`A000040(Δ[n²]²-n)`
-/

namespace A054570.P1711520696723344037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A054570.P1711520696723344037

namespace A054570

/-- `A000040(Δ[n²]²-n)` -/
def P1711520696723344037.Spec : Prop :=
  ∀ n, P1711520696723344037.a n = A054570 n

end A054570

/-! ## A054570.P10861671434235275342

`sqrt(A001248(Δ[n²]²-n))`
-/

namespace A054570.P10861671434235275342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - (n : ℤ)).toNat : ℝ)

end

end A054570.P10861671434235275342

namespace A054570

/-- `sqrt(A001248(Δ[n²]²-n))` -/
def P10861671434235275342.Spec : Prop :=
  ∀ n, P10861671434235275342.a n = (A054570 n : ℝ)

end A054570

/-! ## A054570.P6981882785496516745

`A008578(∑[8*n]-n+2)`
-/

namespace A054570.P6981882785496516745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) + 2).toNat

end

end A054570.P6981882785496516745

namespace A054570

/-- `A008578(∑[8*n]-n+2)` -/
def P6981882785496516745.Spec : Prop :=
  ∀ n, P6981882785496516745.a n = A054570 n

end A054570

/-! ## A054570.P15202135267196749933

`p?[A000040(∑[abs(1-8*n)])]`
-/

namespace A054570.P15202135267196749933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (8 * n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054570.P15202135267196749933

namespace A054570

/-- `p?[A000040(∑[abs(1-8*n)])]` -/
def P15202135267196749933.Spec : Prop :=
  ∀ n, P15202135267196749933.a n = A054570 n

end A054570

/-!
# A054571: a(n) = phi(n - phi(n)), a(1) = 0.

The programs for A054571, the canonical program `A054571.P8375509208684838660` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054571 has offset 1).

The definition of A054571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054571.P8375509208684838660

`1-A343912(n+1)+n`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A054571

/-- `1-A343912(n+1)+n` -/
def P8375509208684838660.Spec : Prop :=
  ∀ n, P8375509208684838660.a n = A054571 (n + 1)

theorem P8375509208684838660.correct : P8375509208684838660.Spec := by
  intro n
  simp only [A054571, Nat.add_sub_cancel]

end A054571

/-! ## A054571.P16135417281204208994

`∑{d}[A051953(n+1), A007431(#)]`
-/

namespace A054571.P16135417281204208994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A054571.P16135417281204208994

namespace A054571

/-- `∑{d}[A051953(n+1), A007431(#)]` -/
def P16135417281204208994.Spec : Prop :=
  ∀ n, P16135417281204208994.a n = A054571 (n + 1)

end A054571

/-! ## A054571.P5850601703385033960

`A051953(n+1)-A053470(n+1)`
-/

namespace A054571.P5850601703385033960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A053470 (n + 1)

end

end A054571.P5850601703385033960

namespace A054571

/-- `A051953(n+1)-A053470(n+1)` -/
def P5850601703385033960.Spec : Prop :=
  ∀ n, P5850601703385033960.a n = A054571 (n + 1)

end A054571

/-! ## A054571.P1137543174400292278

`A070556(n+1)-A065152(n+1)`
-/

namespace A054571.P1137543174400292278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (n + 1) - A065152 (n + 1)

end

end A054571.P1137543174400292278

namespace A054571

/-- `A070556(n+1)-A065152(n+1)` -/
def P1137543174400292278.Spec : Prop :=
  ∀ n, P1137543174400292278.a n = A054571 (n + 1)

end A054571

/-! ## A054571.P15395619072107664871

`A000010(n+1)-A346692(n+1)`
-/

namespace A054571.P15395619072107664871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A346692 (n + 1)

end

end A054571.P15395619072107664871

namespace A054571

/-- `A000010(n+1)-A346692(n+1)` -/
def P15395619072107664871.Spec : Prop :=
  ∀ n, P15395619072107664871.a n = A054571 (n + 1)

end A054571

/-! ## A054571.P9239422423668373223

`A000010(A016035(n+1)+1)%(n+1)`
-/

namespace A054571.P9239422423668373223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A016035 (n + 1) + 1).toNat) (n + 1 : ℤ)

end

end A054571.P9239422423668373223

namespace A054571

/-- `A000010(A016035(n+1)+1)%(n+1)` -/
def P9239422423668373223.Spec : Prop :=
  ∀ n, P9239422423668373223.a n = A054571 (n + 1)

end A054571

/-! ## A054571.P9555372805917578563

`1-(A053470(n+1)+A000010(n+1))+n`
-/

namespace A054571.P9555372805917578563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A053470 (n + 1) + A000010 (n + 1)) + (n : ℤ)

end

end A054571.P9555372805917578563

namespace A054571

/-- `1-(A053470(n+1)+A000010(n+1))+n` -/
def P9555372805917578563.Spec : Prop :=
  ∀ n, P9555372805917578563.a n = A054571 (n + 1)

end A054571

/-! ## A054571.P2800538577272794392

`A000010(abs(A000010(n+1)-n)+1)%(n+1)`
-/

namespace A054571.P2800538577272794392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (|A000010 (n + 1) - (n : ℤ)| + 1).toNat) (n + 1 : ℤ)

end

end A054571.P2800538577272794392

namespace A054571

/-- `A000010(abs(A000010(n+1)-n)+1)%(n+1)` -/
def P2800538577272794392.Spec : Prop :=
  ∀ n, P2800538577272794392.a n = A054571 (n + 1)

end A054571

/-! ## A054571.P11028650653108786155

`A051953(A000010(n+1))-A065152(n+1)`
-/

namespace A054571.P11028650653108786155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000010 (n + 1)).toNat - A065152 (n + 1)

end

end A054571.P11028650653108786155

namespace A054571

/-- `A051953(A000010(n+1))-A065152(n+1)` -/
def P11028650653108786155.Spec : Prop :=
  ∀ n, P11028650653108786155.a n = A054571 (n + 1)

end A054571

/-! ## A054571.P11719488129658281780

`A051953(n+1)-A051953(A016035(n+1)+1)`
-/

namespace A054571.P11719488129658281780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A051953 (A016035 (n + 1) + 1).toNat

end

end A054571.P11719488129658281780

namespace A054571

/-- `A051953(n+1)-A051953(A016035(n+1)+1)` -/
def P11719488129658281780.Spec : Prop :=
  ∀ n, P11719488129658281780.a n = A054571 (n + 1)

end A054571

/-! ## A054571.P1318401425943667586

`∑{d}[A001065(n+1)-A051709(n+1), A007431(#)]`
-/

namespace A054571.P1318401425943667586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A051709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A054571.P1318401425943667586

namespace A054571

/-- `∑{d}[A001065(n+1)-A051709(n+1), A007431(#)]` -/
def P1318401425943667586.Spec : Prop :=
  ∀ n, P1318401425943667586.a n = A054571 (n + 1)

end A054571

/-! ## A054571.P10140119333370310033

`A051953(n+1)-A051953(A051953(n+1)+A000007(n))`
-/

namespace A054571.P10140119333370310033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A051953 (A051953 (n + 1) + A000007 n).toNat

end

end A054571.P10140119333370310033

namespace A054571

/-- `A051953(n+1)-A051953(A051953(n+1)+A000007(n))` -/
def P10140119333370310033.Spec : Prop :=
  ∀ n, P10140119333370310033.a n = A054571 (n + 1)

end A054571

/-! ## A054571.P7182750662993910312

`A051953(n+1)-A051953(A028310(n)-A109606(n+1))`
-/

namespace A054571.P7182750662993910312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A051953 (A028310 n - A109606 (n + 1)).toNat

end

end A054571.P7182750662993910312

namespace A054571

/-- `A051953(n+1)-A051953(A028310(n)-A109606(n+1))` -/
def P7182750662993910312.Spec : Prop :=
  ∀ n, P7182750662993910312.a n = A054571 (n + 1)

end A054571

/-!
# A054574: Begin with n-th prime, add its prime divisors (itself), repeat until reach a new prime; sequence gives prime reached.

The programs for A054574, there is no canonical definition to state claims against.
-/

/-! ## A054574.P865746091997489056

`A282795(2*A000040(n+1))`
-/

namespace A054574.P865746091997489056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282795 (2 * A000040 (n + 1)).toNat

end

end A054574.P865746091997489056

/-! ## A054574.P14665871676327896785

`A282795(2*(A006093(n+1)+1))`
-/

namespace A054574.P14665871676327896785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282795 (2 * (A006093 (n + 1) + 1)).toNat

end

end A054574.P14665871676327896785

/-! ## A054574.P13066216110816053566

`A282795(A006093(n+1)+A006093(n+1)+2)`
-/

namespace A054574.P13066216110816053566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282795 (A006093 (n + 1) + (A006093 (n + 1) + 2)).toNat

end

end A054574.P13066216110816053566

/-! ## A054574.P7906713382224295721

`A016837(A000040(n+1))`
-/

namespace A054574.P7906713382224295721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016837 (A000040 (n + 1)).toNat

end

end A054574.P7906713382224295721

/-! ## A054574.P12526637459839198195

`A016837(A008578(n+2))`
-/

namespace A054574.P12526637459839198195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016837 (A008578 (n + 2)).toNat

end

end A054574.P12526637459839198195

/-! ## A054574.P13729608154372885713

`A016837(A182986(n+2))`
-/

namespace A054574.P13729608154372885713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016837 (A182986 (n + 2)).toNat

end

end A054574.P13729608154372885713

/-! ## A054574.P15782374483266088282

`A016837(record[A006530(n+2)])`
-/

namespace A054574.P15782374483266088282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016837 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054574.P15782374483266088282

/-! ## A054574.P16864180737180123285

`A016837(record[A014963(n+2)])`
-/

namespace A054574.P16864180737180123285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016837 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054574.P16864180737180123285

/-! ## A054574.P12599317727653276507

`A016837(record[A020639(n+2)])`
-/

namespace A054574.P12599317727653276507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016837 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054574.P12599317727653276507

/-! ## A054574.P18314232396827627536

`A016837(A100484(n+1)/2)`
-/

namespace A054574.P18314232396827627536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016837 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A054574.P18314232396827627536

/-! ## A054574.P5696364615097008196

`A016837(A001747(n+2)/2)`
-/

namespace A054574.P5696364615097008196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016837 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A054574.P5696364615097008196

/-! ## A054574.P4977507505393825153

`A016837(A100484(n+1))`
-/

namespace A054574.P4977507505393825153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016837 (A100484 (n + 1)).toNat

end

end A054574.P4977507505393825153

/-! ## A054574.P7759288833597457096

`A016837(A001747(n+2))`
-/

namespace A054574.P7759288833597457096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016837 (A001747 (n + 2)).toNat

end

end A054574.P7759288833597457096

/-! ## A054574.P6590767297672400239

`A016837(A077017(n+2))`
-/

namespace A054574.P6590767297672400239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016837 (A077017 (n + 2)).toNat

end

end A054574.P6590767297672400239

/-!
# A054575: Number of iterations to reach new prime in A054574.

The programs for A054575, there is no canonical definition to state claims against.
-/

/-! ## A054575.P2348180488306136451

`A018845(A000040(n+1))`
-/

namespace A054575.P2348180488306136451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018845 (A000040 (n + 1)).toNat

end

end A054575.P2348180488306136451

/-! ## A054575.P14592280106218186166

`A018845(A063884(n+1))`
-/

namespace A054575.P14592280106218186166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018845 (A063884 (n + 1)).toNat

end

end A054575.P14592280106218186166

/-! ## A054575.P7027343375200750129

`A018845(A063904(n+1))`
-/

namespace A054575.P7027343375200750129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018845 (A063904 (n + 1)).toNat

end

end A054575.P7027343375200750129

/-! ## A054575.P7372001569781107458

`A018845(A008578(n+2))`
-/

namespace A054575.P7372001569781107458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018845 (A008578 (n + 2)).toNat

end

end A054575.P7372001569781107458

/-! ## A054575.P309420221356441468

`A018845(A182986(n+2))`
-/

namespace A054575.P309420221356441468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018845 (A182986 (n + 2)).toNat

end

end A054575.P309420221356441468

/-! ## A054575.P17969693097462711946

`A018845(record[A006530(n+2)])`
-/

namespace A054575.P17969693097462711946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018845 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054575.P17969693097462711946

/-! ## A054575.P18196893343541486834

`A018845(record[A008472(n+2)])`
-/

namespace A054575.P18196893343541486834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018845 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054575.P18196893343541486834

/-! ## A054575.P12488047795732804914

`A018845(record[A014963(n+2)])`
-/

namespace A054575.P12488047795732804914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018845 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054575.P12488047795732804914

/-! ## A054575.P10832869679922202259

`A018845(record[A020639(n+2)])`
-/

namespace A054575.P10832869679922202259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018845 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054575.P10832869679922202259

/-!
# A054576: Largest proper factor of the largest proper factor of n.

The programs for A054576, there is no canonical definition to state claims against.
-/

/-! ## A054576.P10557376743388480079

`A032742(A032742(n+1))`
-/

namespace A054576.P10557376743388480079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A032742 (n + 1)).toNat

end

end A054576.P10557376743388480079

/-! ## A054576.P16425494554970632926

`A117358(2*(n+1))`
-/

namespace A054576.P16425494554970632926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * (n + 1))

end

end A054576.P16425494554970632926

/-! ## A054576.P525278708743221487

`A117818(A063928(n+1))`
-/

namespace A054576.P525278708743221487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (A063928 (n + 1)).toNat

end

end A054576.P525278708743221487

/-! ## A054576.P5996659250809597890

`A322982(A063928(2*n+1-n))`
-/

namespace A054576.P5996659250809597890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (A063928 (2 * n + 1 - n)).toNat

end

end A054576.P5996659250809597890

/-! ## A054576.P13896742733318980288

`∑{d}[∑{d}[n+1, A300236(#)], A300236(#)]`
-/

namespace A054576.P13896742733318980288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A300236 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300236 d

end

end A054576.P13896742733318980288

/-! ## A054576.P8876392501144169283

`(n+1)/(A014673(n+1)*A020639(n+1))`
-/

namespace A054576.P8876392501144169283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A014673 (n + 1) * A020639 (n + 1) : ℚ)

end

end A054576.P8876392501144169283

/-! ## A054576.P8508915881893648840

`gcd(n+1, A233570(gcd(n+1, A233570(n+1))))`
-/

namespace A054576.P8508915881893648840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A233570 (Int.gcd (n + 1 : ℤ) (A233570 (n + 1))))

end

end A054576.P8508915881893648840

/-! ## A054576.P11592670213294137592

`A117818(n+1)-A060681(A117818(n+1))`
-/

namespace A054576.P11592670213294137592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (n + 1) - A060681 (A117818 (n + 1)).toNat

end

end A054576.P11592670213294137592

/-! ## A054576.P13435348780019723602

`n+1-A060681(n+1)-A060681(n+1-A060681(n+1))`
-/

namespace A054576.P13435348780019723602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A060681 (n + 1) - A060681 ((n + 1 : ℤ) - A060681 (n + 1)).toNat

end

end A054576.P13435348780019723602

/-! ## A054576.P15855980399291930205

`gcd((n+1)/A020639(n+1), A220096((n+1)/A020639(n+1)))`
-/

namespace A054576.P15855980399291930205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))) (A220096 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat)

end

end A054576.P15855980399291930205

/-! ## A054576.P11571723941893823737

`gcd((n+1)/A020639(n+1), A060681(A322982(n+1)))`
-/

namespace A054576.P11571723941893823737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))) (A060681 (A322982 (n + 1)).toNat)

end

end A054576.P11571723941893823737

/-! ## A054576.P2979645197834831053

`A256578(A255833(A256578(A255833(n+1))))`
-/

namespace A054576.P2979645197834831053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256578 (A255833 (A256578 (A255833 (n + 1)).toNat).toNat).toNat

end

end A054576.P2979645197834831053

/-! ## A054576.P6396078249804207927

`A283464(A266645((n+1)/A020639(n+1)))`
-/

namespace A054576.P6396078249804207927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283464 (A266645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat).toNat

end

end A054576.P6396078249804207927

/-! ## A054576.P12851664778695023429

`A283463(A266646((n+1)/A020639(n+1)))`
-/

namespace A054576.P12851664778695023429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A266646 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat).toNat

end

end A054576.P12851664778695023429

/-! ## A054576.P12736830940770456576

`A283464(A266645(A283464(A266645(n+1))))`
-/

namespace A054576.P12736830940770456576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283464 (A266645 (A283464 (A266645 (n + 1)).toNat).toNat).toNat

end

end A054576.P12736830940770456576

/-! ## A054576.P17785215059383647384

`A283463(A266646(A283463(A266646(n+1))))`
-/

namespace A054576.P17785215059383647384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A266646 (A283463 (A266646 (n + 1)).toNat).toNat).toNat

end

end A054576.P17785215059383647384

/-! ## A054576.P1181715473323742635

`A280495(A250246((n+1)/A020639(n+1)))`
-/

namespace A054576.P1181715473323742635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280495 (A250246 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat).toNat

end

end A054576.P1181715473323742635

/-! ## A054576.P6650672910058491015

`A073752(A285639(n+1))`
-/

namespace A054576.P6650672910058491015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073752 (A285639 (n + 1)).toNat

end

end A054576.P6650672910058491015

/-! ## A054576.P17890030240553819818

`gcd(A103517(n), A285639(A285639(n+1)))`
-/

namespace A054576.P17890030240553819818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103517 n) (A285639 (A285639 (n + 1)).toNat)

end

end A054576.P17890030240553819818

/-! ## A054576.P6695191424899904406

`A052126(A130064(A052126(A130064(n+1))))`
-/

namespace A054576.P6695191424899904406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A130064 (A052126 (A130064 (n + 1)).toNat).toNat).toNat

end

end A054576.P6695191424899904406

/-!
# A054577: A Catalan-like sequence.

The programs for A054577, the canonical program `A054577.P4836937161418299404` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054577 has offset 1).

The definition of A054577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054577.P4836937161418299404

`floor((n+2)*A000108(n+1)/(n+3))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054577

/-- `floor((n+2)*A000108(n+1)/(n+3))` -/
def P4836937161418299404.Spec : Prop :=
  ∀ n, P4836937161418299404.a n = A054577 (n + 1)

theorem P4836937161418299404.correct : P4836937161418299404.Spec := by
  intro n
  simp only [A054577, Nat.add_sub_cancel]

end A054577

/-! ## A054577.P17874656102089269209

`floor(A038629(n+1)/6)`
-/

namespace A054577.P17874656102089269209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038629 (n + 1) : ℚ) / 6⌋

end

end A054577.P17874656102089269209

namespace A054577

/-- `floor(A038629(n+1)/6)` -/
def P17874656102089269209.Spec : Prop :=
  ∀ n, P17874656102089269209.a n = A054577 (n + 1)

end A054577

/-! ## A054577.P17571721261849642766

`floor(Δ[A006134(n)]/(n+3))`
-/

namespace A054577.P17571721261849642766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (n + 3 : ℚ)⌋

end

end A054577.P17571721261849642766

namespace A054577

/-- `floor(Δ[A006134(n)]/(n+3))` -/
def P17571721261849642766.Spec : Prop :=
  ∀ n, P17571721261849642766.a n = A054577 (n + 1)

end A054577

/-! ## A054577.P6204676295894801354

`floor(A000984(n+1)/(n+3))`
-/

namespace A054577.P6204676295894801354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000984 (n + 1) : ℚ) / (n + 3 : ℚ)⌋

end

end A054577.P6204676295894801354

namespace A054577

/-- `floor(A000984(n+1)/(n+3))` -/
def P6204676295894801354.Spec : Prop :=
  ∀ n, P6204676295894801354.a n = A054577 (n + 1)

end A054577

/-! ## A054577.P15888246198454995034

`floor(2*A001700(n)/(n+3))`
-/

namespace A054577.P15888246198454995034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A001700 n : ℚ) / (n + 3 : ℚ))⌋

end

end A054577.P15888246198454995034

namespace A054577

/-- `floor(2*A001700(n)/(n+3))` -/
def P15888246198454995034.Spec : Prop :=
  ∀ n, P15888246198454995034.a n = A054577 (n + 1)

end A054577

/-! ## A054577.P1243596598139880784

`floor(record[A081668(n+1)]/(n+3))`
-/

namespace A054577.P1243596598139880784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 3 : ℚ)⌋

end

end A054577.P1243596598139880784

namespace A054577

/-- `floor(record[A081668(n+1)]/(n+3))` -/
def P1243596598139880784.Spec : Prop :=
  ∀ n, P1243596598139880784.a n = A054577 (n + 1)

end A054577

/-! ## A054577.P1620687136587063303

`floor(A001405(2*(n+1))/(n+3))`
-/

namespace A054577.P1620687136587063303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001405 (2 * (n + 1)) : ℚ) / (n + 3 : ℚ)⌋

end

end A054577.P1620687136587063303

namespace A054577

/-- `floor(A001405(2*(n+1))/(n+3))` -/
def P1620687136587063303.Spec : Prop :=
  ∀ n, P1620687136587063303.a n = A054577 (n + 1)

end A054577

/-! ## A054577.P9437608072262211349

`floor(2*C(2*n+1, n)/(n+3))`
-/

namespace A054577.P9437608072262211349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((Nat.choose (2 * n + 1) n : ℚ) / (n + 3 : ℚ))⌋

end

end A054577.P9437608072262211349

namespace A054577

/-- `floor(2*C(2*n+1, n)/(n+3))` -/
def P9437608072262211349.Spec : Prop :=
  ∀ n, P9437608072262211349.a n = A054577 (n + 1)

end A054577

/-! ## A054577.P3357254924870642602

`floor(A007318(∑[4*(n+1)])/(n+3))`
-/

namespace A054577.P3357254924870642602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 3 : ℚ)⌋

end

end A054577.P3357254924870642602

namespace A054577

/-- `floor(A007318(∑[4*(n+1)])/(n+3))` -/
def P3357254924870642602.Spec : Prop :=
  ∀ n, P3357254924870642602.a n = A054577 (n + 1)

end A054577

/-!
# A054578: Number of subsequences of {1..n} such that all differences of pairs of terms are distinct (i.e., number of Golomb rulers on {1..n}).

The programs for A054578, there is no canonical definition to state claims against.
-/

/-! ## A054578.P12277279285904099966

`A143823(n+1)-1`
-/

namespace A054578.P12277279285904099966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 (n + 1) - 1

end

end A054578.P12277279285904099966

/-! ## A054578.P12534168560003418752

`∑[A308251(n)]`
-/

namespace A054578.P12534168560003418752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054578.P12534168560003418752

/-! ## A054578.P16818958396342000427

`∑[abs(Δ[A143823(n)])]`
-/

namespace A054578.P16818958396342000427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054578.P16818958396342000427

/-! ## A054578.P12003143575213327350

`∑[∑[A169942(round(acot(n)+n))]]`
-/

namespace A054578.P12003143575213327350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169942 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054578.P12003143575213327350

/-! ## A054578.P1457608701976167169

`∑[A169942(n)+a(n-1)]` with `a(0)=1`
-/

namespace A054578.P1457608701976167169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A169942 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054578.P1457608701976167169

/-! ## A054578.P6036104405246960787

`∑[∑[A169942(abs(1-n)+1)]]`
-/

namespace A054578.P6036104405246960787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169942 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054578.P6036104405246960787

/-! ## A054578.P11998036388220210669

`a(n-1)+A169952(n)+1` with `a(0)=1`
-/

namespace A054578.P11998036388220210669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A169952 n + 1)

end

end A054578.P11998036388220210669

/-! ## A054578.P5840960111022202590

`record[A143823(ceil(xor(1, n)/2))-1]`
-/

namespace A054578.P5840960111022202590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054578.P5840960111022202590

/-! ## A054578.P5764769477709214000

`record[A143823(A123108(n))-1]`
-/

namespace A054578.P5764769477709214000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 (A123108 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054578.P5764769477709214000

/-! ## A054578.P4639186343864909312

`A308251(n)-(1-A143823(n))`
-/

namespace A054578.P4639186343864909312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308251 n - (1 - A143823 n)

end

end A054578.P4639186343864909312

/-! ## A054578.P301327255147226431

`∑[A000007(n+1)+Δ[A143823(n)]]`
-/

namespace A054578.P301327255147226431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054578.P301327255147226431

/-!
# A054579: n^2+n modulo 17.

The programs for A054579, the canonical program `A054579.P15111421546949878408` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054579 has offset 1).

The definition of A054579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054579.P15111421546949878408

`∑[2*n]%17`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054579

/-- `∑[2*n]%17` -/
def P15111421546949878408.Spec : Prop :=
  ∀ n, (P15111421546949878408.a n : ℤ) = A054579 (n + 1)

theorem P15111421546949878408.correct : P15111421546949878408.Spec := by
  intro n
  simp only [A054579, Nat.add_sub_cancel]

end A054579

/-!
# A054580: n^2 modulo 17.

The programs for A054580, the canonical program `A054580.P2185764295308918481` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054580 has offset 0).

The definition of A054580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054580.P2185764295308918481

`n²%17`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054580

/-- `n²%17` -/
def P2185764295308918481.Spec : Prop :=
  ∀ n, (P2185764295308918481.a n : ℤ) = A054580 n

theorem P2185764295308918481.correct : P2185764295308918481.Spec := by
  intro n
  simp only [A054580]

end A054580

/-!
# A054581: Number of unlabeled 2-trees with n nodes.

The programs for A054581, there is no canonical definition to state claims against.
-/

/-! ## A054581.P733252412933895082

`A179046(C(A047967(n+3), A025162(n+1)))`
-/

namespace A054581.P733252412933895082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179046 (Nat.choose (A047967 (n + 3)).toNat (A025162 (n + 1)).toNat)

end

end A054581.P733252412933895082

/-!
# A054582: Array read by antidiagonals upwards: A(m,k) = 2^m * (2k+1), m,k >= 0.

The programs for A054582, the canonical program `A054582.P5354780868819048885` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054582 has offset 0).

The definition of A054582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054582.P15856127469030564580

`A075300(n)+1`
-/

namespace A054582.P15856127469030564580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075300 n + 1

end

end A054582.P15856127469030564580

namespace A054582

/-- `A075300(n)+1` -/
def P15856127469030564580.Spec : Prop :=
  ∀ n, P15856127469030564580.a n = A054582 n

end A054582

/-! ## A054582.P4913633877229008268

`A288870(n)-1`
-/

namespace A054582.P4913633877229008268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288870 n - 1

end

end A054582.P4913633877229008268

namespace A054582

/-- `A288870(n)-1` -/
def P4913633877229008268.Spec : Prop :=
  ∀ n, P4913633877229008268.a n = A054582 n

end A054582

/-! ## A054582.P9532296854801591603

`A257791(n+1)/4`
-/

namespace A054582.P9532296854801591603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257791 (n + 1) : ℚ) / 4

end

end A054582.P9532296854801591603

namespace A054582

/-- `A257791(n+1)/4` -/
def P9532296854801591603.Spec : Prop :=
  ∀ n, P9532296854801591603.a n = (A054582 n : ℚ)

end A054582

/-! ## A054582.P15341519691228168792

`ceil(A241957(n+1)/2)`
-/

namespace A054582.P15341519691228168792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A241957 (n + 1) : ℚ) / 2⌉

end

end A054582.P15341519691228168792

namespace A054582

/-- `ceil(A241957(n+1)/2)` -/
def P15341519691228168792.Spec : Prop :=
  ∀ n, P15341519691228168792.a n = A054582 n

end A054582

/-! ## A054582.P6538274542427532079

`A135764(A038722(n+1))`
-/

namespace A054582.P6538274542427532079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (A038722 (n + 1)).toNat

end

end A054582.P6538274542427532079

namespace A054582

/-- `A135764(A038722(n+1))` -/
def P6538274542427532079.Spec : Prop :=
  ∀ n, P6538274542427532079.a n = A054582 n

end A054582

/-! ## A054582.P3918633580647179526

`A135764(A061579(n)+1)`
-/

namespace A054582.P3918633580647179526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (A061579 n + 1).toNat

end

end A054582.P3918633580647179526

namespace A054582

/-- `A135764(A061579(n)+1)` -/
def P3918633580647179526.Spec : Prop :=
  ∀ n, P3918633580647179526.a n = A054582 n

end A054582

/-! ## A054582.P187996489943735834

`xor(A075300(n), A130330(n))`
-/

namespace A054582.P187996489943735834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A075300 n) (A130330 n)

end

end A054582.P187996489943735834

namespace A054582

/-- `xor(A075300(n), A130330(n))` -/
def P187996489943735834.Spec : Prop :=
  ∀ n, P187996489943735834.a n = A054582 n

end A054582

/-! ## A054582.P7475782809467596443

`A130321(n)+A376102(n)-1`
-/

namespace A054582.P7475782809467596443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + (A376102 n - 1)

end

end A054582.P7475782809467596443

namespace A054582

/-- `A130321(n)+A376102(n)-1` -/
def P7475782809467596443.Spec : Prop :=
  ∀ n, P7475782809467596443.a n = A054582 n

end A054582

/-! ## A054582.P10989100611194697700

`A130321(n)*A158405(n+1)`
-/

namespace A054582.P10989100611194697700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A158405 (n + 1)

end

end A054582.P10989100611194697700

namespace A054582

/-- `A130321(n)*A158405(n+1)` -/
def P10989100611194697700.Spec : Prop :=
  ∀ n, P10989100611194697700.a n = A054582 n

end A054582

/-! ## A054582.P14356765193541469726

`A118416(n+1)/A059268(n)`
-/

namespace A054582.P14356765193541469726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118416 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A054582.P14356765193541469726

namespace A054582

/-- `A118416(n+1)/A059268(n)` -/
def P14356765193541469726.Spec : Prop :=
  ∀ n, P14356765193541469726.a n = (A054582 n : ℚ)

end A054582

/-! ## A054582.P2565218208150808042

`sqrt(A262616(n))*A158405(n+1)`
-/

namespace A054582.P2565218208150808042
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A158405 (n + 1) : ℝ)

end

end A054582.P2565218208150808042

namespace A054582

/-- `sqrt(A262616(n))*A158405(n+1)` -/
def P2565218208150808042.Spec : Prop :=
  ∀ n, P2565218208150808042.a n = (A054582 n : ℝ)

end A054582

/-! ## A054582.P6797429457259139708

`2*A053219(n+1)-A130322(n)`
-/

namespace A054582.P6797429457259139708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053219 (n + 1) - A130322 n

end

end A054582.P6797429457259139708

namespace A054582

/-- `2*A053219(n+1)-A130322(n)` -/
def P6797429457259139708.Spec : Prop :=
  ∀ n, P6797429457259139708.a n = A054582 n

end A054582

/-! ## A054582.P16428673056540496284

`A000079(A025581(n))*A158405(n+1)`
-/

namespace A054582.P16428673056540496284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A158405 (n + 1)

end

end A054582.P16428673056540496284

namespace A054582

/-- `A000079(A025581(n))*A158405(n+1)` -/
def P16428673056540496284.Spec : Prop :=
  ∀ n, P16428673056540496284.a n = A054582 n

end A054582

/-! ## A054582.P1719106064347611715

`A011782(A025581(n)+1)*A158405(n+1)`
-/

namespace A054582.P1719106064347611715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A025581 n + 1).toNat * A158405 (n + 1)

end

end A054582.P1719106064347611715

namespace A054582

/-- `A011782(A025581(n)+1)*A158405(n+1)` -/
def P1719106064347611715.Spec : Prop :=
  ∀ n, P1719106064347611715.a n = A054582 n

end A054582

/-! ## A054582.P5942298815065565903

`(A002262(n)+A002260(n+1))*A130321(n)`
-/

namespace A054582.P5942298815065565903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + A002260 (n + 1)) * A130321 n

end

end A054582.P5942298815065565903

namespace A054582

/-- `(A002262(n)+A002260(n+1))*A130321(n)` -/
def P5942298815065565903.Spec : Prop :=
  ∀ n, P5942298815065565903.a n = A054582 n

end A054582

/-! ## A054582.P5354780868819048885

`(A094727(n+1)-A025581(n))*A000079(A025581(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A054582

/-- `(A094727(n+1)-A025581(n))*A000079(A025581(n))` -/
def P5354780868819048885.Spec : Prop :=
  ∀ n, P5354780868819048885.a n = A054582 n

theorem P5354780868819048885.correct : P5354780868819048885.Spec := by
  intro n
  simp only [A054582]

end A054582

/-! ## A054582.P5214163672191407791

`A191448(n+1)%A013620(n)+1`
-/

namespace A054582.P5214163672191407791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191448 (n + 1)) (A013620 n) + 1

end

end A054582.P5214163672191407791

namespace A054582

/-- `A191448(n+1)%A013620(n)+1` -/
def P5214163672191407791.Spec : Prop :=
  ∀ n, P5214163672191407791.a n = A054582 n

end A054582

/-! ## A054582.P18089027173303980388

`and(A089633(n), A191448(n+1))+1`
-/

namespace A054582.P18089027173303980388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089633 n) (A191448 (n + 1)) + 1

end

end A054582.P18089027173303980388

namespace A054582

/-- `and(A089633(n), A191448(n+1))+1` -/
def P18089027173303980388.Spec : Prop :=
  ∀ n, P18089027173303980388.a n = A054582 n

end A054582

/-! ## A054582.P16404155129392543736

`and(A164874(n+1), A191448(n+1))+1`
-/

namespace A054582.P16404155129392543736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164874 (n + 1)) (A191448 (n + 1)) + 1

end

end A054582.P16404155129392543736

namespace A054582

/-- `and(A164874(n+1), A191448(n+1))+1` -/
def P16404155129392543736.Spec : Prop :=
  ∀ n, P16404155129392543736.a n = A054582 n

end A054582

/-! ## A054582.P580827418031206956

`A135764(A250252(A249741(n+1)))`
-/

namespace A054582.P580827418031206956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (A250252 (A249741 (n + 1)).toNat).toNat

end

end A054582.P580827418031206956

namespace A054582

/-- `A135764(A250252(A249741(n+1)))` -/
def P580827418031206956.Spec : Prop :=
  ∀ n, P580827418031206956.a n = A054582 n

end A054582

/-!
# A054584: Number of subgroups of the group generated by a^n=1, b^3=1 and ab=ba.

The programs for A054584, the canonical program `A054584.P17696780770359147310` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054584 has offset 1).

The definition of A054584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054584.P17696780770359147310

`∑{d}[n+1, gcd(3, #)+1]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054584

/-- `∑{d}[n+1, gcd(3, #)+1]` -/
def P17696780770359147310.Spec : Prop :=
  ∀ n, (P17696780770359147310.a n : ℤ) = A054584 (n + 1)

theorem P17696780770359147310.correct : P17696780770359147310.Spec := by
  intro n
  simp only [A054584, Nat.add_sub_cancel]

end A054584

/-! ## A054584.P18210053570965648032

`∑{d}[n+1, 6-A005893(#)%6]`
-/

namespace A054584.P18210053570965648032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (6 - Int.tmod (A005893 d) 6)

end

end A054584.P18210053570965648032

namespace A054584

/-- `∑{d}[n+1, 6-A005893(#)%6]` -/
def P18210053570965648032.Spec : Prop :=
  ∀ n, P18210053570965648032.a n = A054584 (n + 1)

end A054584

/-! ## A054584.P2590224799881415725

`2*(A326395(n+1)+A326394(n+1))`
-/

namespace A054584.P2590224799881415725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A326395 (n + 1) + A326394 (n + 1))

end

end A054584.P2590224799881415725

namespace A054584

/-- `2*(A326395(n+1)+A326394(n+1))` -/
def P2590224799881415725.Spec : Prop :=
  ∀ n, P2590224799881415725.a n = A054584 (n + 1)

end A054584

/-! ## A054584.P2717858240058023805

`2*(A062011(n+1)-A035191(n+1))`
-/

namespace A054584.P2717858240058023805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A062011 (n + 1) - A035191 (n + 1))

end

end A054584.P2717858240058023805

namespace A054584

/-- `2*(A062011(n+1)-A035191(n+1))` -/
def P2717858240058023805.Spec : Prop :=
  ∀ n, P2717858240058023805.a n = A054584 (n + 1)

end A054584

/-! ## A054584.P9085468946087592915

`2*(A114003(n+1)-A035191(n+1)+1)`
-/

namespace A054584.P9085468946087592915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A114003 (n + 1) - A035191 (n + 1) + 1)

end

end A054584.P9085468946087592915

namespace A054584

/-- `2*(A114003(n+1)-A035191(n+1)+1)` -/
def P9085468946087592915.Spec : Prop :=
  ∀ n, P9085468946087592915.a n = A054584 (n + 1)

end A054584

/-! ## A054584.P2964722872805267910

`∑{d}[n+1, A062011(#)*A154272((n+1)/#)]`
-/

namespace A054584.P2964722872805267910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062011 d * A154272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054584.P2964722872805267910

namespace A054584

/-- `∑{d}[n+1, A062011(#)*A154272((n+1)/#)]` -/
def P2964722872805267910.Spec : Prop :=
  ∀ n, P2964722872805267910.a n = A054584 (n + 1)

end A054584

/-! ## A054584.P2056413122341893205

`∑{d}[n+1, floor(atan(A099837(#)))+3]`
-/

namespace A054584.P2056413122341893205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (⌊Real.arctan (A099837 d : ℝ)⌋ + 3)

end

end A054584.P2056413122341893205

namespace A054584

/-- `∑{d}[n+1, floor(atan(A099837(#)))+3]` -/
def P2056413122341893205.Spec : Prop :=
  ∀ n, P2056413122341893205.a n = A054584 (n + 1)

end A054584

/-! ## A054584.P18219558334254870051

`2*(A326933(n)+1)`
-/

namespace A054584.P18219558334254870051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A326933 n + 1)

end

end A054584.P18219558334254870051

namespace A054584

/-- `2*(A326933(n)+1)` -/
def P18219558334254870051.Spec : Prop :=
  ∀ n, P18219558334254870051.a n = A054584 (n + 1)

end A054584

/-! ## A054584.P16929890300646896940

`2*A000005((n+1)*A038500(n+1))`
-/

namespace A054584.P16929890300646896940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 ((n + 1 : ℤ) * A038500 (n + 1)).toNat

end

end A054584.P16929890300646896940

namespace A054584

/-- `2*A000005((n+1)*A038500(n+1))` -/
def P16929890300646896940.Spec : Prop :=
  ∀ n, P16929890300646896940.a n = A054584 (n + 1)

end A054584

/-! ## A054584.P7749785127792442835

`A000005(2*(n+1)*A065331(n+1))`
-/

namespace A054584.P7749785127792442835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * ((n + 1 : ℤ) * A065331 (n + 1))).toNat

end

end A054584.P7749785127792442835

namespace A054584

/-- `A000005(2*(n+1)*A065331(n+1))` -/
def P7749785127792442835.Spec : Prop :=
  ∀ n, P7749785127792442835.a n = A054584 (n + 1)

end A054584

/-! ## A054584.P14521515410092771031

`A216624(∑[n+3]+1)`
-/

namespace A054584.P14521515410092771031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216624 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A054584.P14521515410092771031

namespace A054584

/-- `A216624(∑[n+3]+1)` -/
def P14521515410092771031.Spec : Prop :=
  ∀ n, P14521515410092771031.a n = A054584 (n + 1)

end A054584

/-!
# A054585: Sum_{d=1..n} phi(d)*mu(d).

The programs for A054585, the canonical program `A054585.P5592267134017480872` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054585 has offset 0).

The definition of A054585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054585.P5592267134017480872

`∑[∑{d}[n, A341635(#)]]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054585

/-- `∑[∑{d}[n, A341635(#)]]` -/
def P5592267134017480872.Spec : Prop :=
  ∀ n, P5592267134017480872.a n = A054585 n

theorem P5592267134017480872.correct : P5592267134017480872.Spec := by
  intro n
  simp only [A054585]

end A054585

/-! ## A054585.P2337740864422175606

`A097945(n)+a(n-1)` with `a(0)=0`
-/

namespace A054585.P2337740864422175606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A097945 n + a (n - 1)

end

end A054585.P2337740864422175606

namespace A054585

/-- `A097945(n)+a(n-1)` -/
def P2337740864422175606.Spec : Prop :=
  ∀ n, P2337740864422175606.a n = A054585 n

end A054585

/-! ## A054585.P16302902783499733158

`∑[A097945(A028310(n))]-1`
-/

namespace A054585.P16302902783499733158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054585.P16302902783499733158

namespace A054585

/-- `∑[A097945(A028310(n))]-1` -/
def P16302902783499733158.Spec : Prop :=
  ∀ n, P16302902783499733158.a n = A054585 n

end A054585

/-! ## A054585.P16911728944975216889

`∑[A097945(n+1)]-A097945(n+1)`
-/

namespace A054585.P16911728944975216889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A097945 (n + 1)

end

end A054585.P16911728944975216889

namespace A054585

/-- `∑[A097945(n+1)]-A097945(n+1)` -/
def P16911728944975216889.Spec : Prop :=
  ∀ n, P16911728944975216889.a n = A054585 n

end A054585

/-! ## A054585.P6678445624466443135

`∑[∏{p}[n, A000010(#)*A008683(n)]]-1`
-/

namespace A054585.P6678445624466443135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000010 p * A008683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054585.P6678445624466443135

namespace A054585

/-- `∑[∏{p}[n, A000010(#)*A008683(n)]]-1` -/
def P6678445624466443135.Spec : Prop :=
  ∀ n, P6678445624466443135.a n = A054585 n

end A054585

/-! ## A054585.P7059473271385986303

`a(n-1)+A000010(n)*A008683(n)` with `a(0)=0`
-/

namespace A054585.P7059473271385986303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000010 n * A008683 n

end

end A054585.P7059473271385986303

namespace A054585

/-- `a(n-1)+A000010(n)*A008683(n)` -/
def P7059473271385986303.Spec : Prop :=
  ∀ n, P7059473271385986303.a n = A054585 n

end A054585

/-! ## A054585.P580307794308015203

`∑[A097945(A188134(A008574(n)))]`
-/

namespace A054585.P580307794308015203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 (A188134 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054585.P580307794308015203

namespace A054585

/-- `∑[A097945(A188134(A008574(n)))]` -/
def P580307794308015203.Spec : Prop :=
  ∀ n, P580307794308015203.a n = A054585 n

end A054585

/-!
# A054586: a(n) = Sum_{d|2n+1} phi(d)*mu(d).

The programs for A054586, the canonical program `A054586.P1879442179665945613` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054586 has offset 0).

The definition of A054586 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276833, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054586.P1879442179665945613

`A276833(2*n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054586

/-- `A276833(2*n+1)` -/
def P1879442179665945613.Spec : Prop :=
  ∀ n, P1879442179665945613.a n = A054586 n

theorem P1879442179665945613.correct : P1879442179665945613.Spec := by
  intro n
  simp only [A054586]

end A054586

/-! ## A054586.P6940884955943577107

`∏{p}[Δ[n²], 2-#]`
-/

namespace A054586.P6940884955943577107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - (p : ℤ))

end

end A054586.P6940884955943577107

namespace A054586

/-- `∏{p}[Δ[n²], 2-#]` -/
def P6940884955943577107.Spec : Prop :=
  ∀ n, P6940884955943577107.a n = A054586 n

end A054586

/-! ## A054586.P13524323744386004833

`or(1, ∏{p}[2*n+1, 2-#])`
-/

namespace A054586.P13524323744386004833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∏ p ∈ Nat.primeFactors (f1 n), (2 - (p : ℤ)))

end

end A054586.P13524323744386004833

namespace A054586

/-- `or(1, ∏{p}[2*n+1, 2-#])` -/
def P13524323744386004833.Spec : Prop :=
  ∀ n, P13524323744386004833.a n = A054586 n

end A054586

/-! ## A054586.P15915796704872199757

`floor(∏{p}[2*n+1, 4/2-#])`
-/

namespace A054586.P15915796704872199757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), ((4 : ℚ) / 2 - (p : ℚ))⌋

end

end A054586.P15915796704872199757

namespace A054586

/-- `floor(∏{p}[2*n+1, 4/2-#])` -/
def P15915796704872199757.Spec : Prop :=
  ∀ n, P15915796704872199757.a n = A054586 n

end A054586

/-! ## A054586.P16711224683010214295

`ceil(∏{p}[2*n+1, 4/2-#])`
-/

namespace A054586.P16711224683010214295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n), ((4 : ℚ) / 2 - (p : ℚ))⌉

end

end A054586.P16711224683010214295

namespace A054586

/-- `ceil(∏{p}[2*n+1, 4/2-#])` -/
def P16711224683010214295.Spec : Prop :=
  ∀ n, P16711224683010214295.a n = A054586 n

end A054586

/-! ## A054586.P11551811048864188660

`round(∏{p}[2*n+1, 4/2-#])`
-/

namespace A054586.P11551811048864188660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), ((4 : ℚ) / 2 - (p : ℚ)))

end

end A054586.P11551811048864188660

namespace A054586

/-- `round(∏{p}[2*n+1, 4/2-#])` -/
def P11551811048864188660.Spec : Prop :=
  ∀ n, P11551811048864188660.a n = A054586 n

end A054586

/-! ## A054586.P4352162991701062722

`∑{d}[A007947(2*n+1), A023900(#)]`
-/

namespace A054586.P4352162991701062722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A023900 d

end

end A054586.P4352162991701062722

namespace A054586

/-- `∑{d}[A007947(2*n+1), A023900(#)]` -/
def P4352162991701062722.Spec : Prop :=
  ∀ n, P4352162991701062722.a n = A054586 n

end A054586

/-! ## A054586.P8888655068340288241

`∑{d}[A007947(2*n+1), A323407(#)]`
-/

namespace A054586.P8888655068340288241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323407 d

end

end A054586.P8888655068340288241

namespace A054586

/-- `∑{d}[A007947(2*n+1), A323407(#)]` -/
def P8888655068340288241.Spec : Prop :=
  ∀ n, P8888655068340288241.a n = A054586 n

end A054586

/-! ## A054586.P9446754871171653056

`∑{d}[Δ[n²], A000010(#)*A008683(#)]`
-/

namespace A054586.P9446754871171653056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d * A008683 d

end

end A054586.P9446754871171653056

namespace A054586

/-- `∑{d}[Δ[n²], A000010(#)*A008683(#)]` -/
def P9446754871171653056.Spec : Prop :=
  ∀ n, P9446754871171653056.a n = A054586 n

end A054586

/-! ## A054586.P7640566448612710173

`A003966(2*n+1)/A349340(2*n+1)`
-/

namespace A054586.P7640566448612710173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003966 (2 * n + 1) : ℚ) / (A349340 (2 * n + 1) : ℚ)

end

end A054586.P7640566448612710173

namespace A054586

/-- `A003966(2*n+1)/A349340(2*n+1)` -/
def P7640566448612710173.Spec : Prop :=
  ∀ n, P7640566448612710173.a n = (A054586 n : ℚ)

end A054586

/-! ## A054586.P6928616698344509815

`∑{d}[2*n+1, A097945(#)]`
-/

namespace A054586.P6928616698344509815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A097945 d

end

end A054586.P6928616698344509815

namespace A054586

/-- `∑{d}[2*n+1, A097945(#)]` -/
def P6928616698344509815.Spec : Prop :=
  ∀ n, P6928616698344509815.a n = A054586 n

end A054586

/-! ## A054586.P17347195540277692610

`A130054(∏{p}[2*n+1, #])`
-/

namespace A054586.P17347195540277692610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130054 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A054586.P17347195540277692610

namespace A054586

/-- `A130054(∏{p}[2*n+1, #])` -/
def P17347195540277692610.Spec : Prop :=
  ∀ n, P17347195540277692610.a n = A054586 n

end A054586

/-! ## A054586.P1362463168286581389

`A130054(A099984(n+1))`
-/

namespace A054586.P1362463168286581389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130054 (A099984 (n + 1)).toNat

end

end A054586.P1362463168286581389

namespace A054586

/-- `A130054(A099984(n+1))` -/
def P1362463168286581389.Spec : Prop :=
  ∀ n, P1362463168286581389.a n = A054586 n

end A054586

/-! ## A054586.P655082981734506687

`A130054(A007947(2*n+1))`
-/

namespace A054586.P655082981734506687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130054 (A007947 (2 * n + 1)).toNat

end

end A054586.P655082981734506687

namespace A054586

/-- `A130054(A007947(2*n+1))` -/
def P655082981734506687.Spec : Prop :=
  ∀ n, P655082981734506687.a n = A054586 n

end A054586

/-! ## A054586.P16115213479724028586

`A130054(A204455(2*n+1))`
-/

namespace A054586.P16115213479724028586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130054 (A204455 (2 * n + 1)).toNat

end

end A054586.P16115213479724028586

namespace A054586

/-- `A130054(A204455(2*n+1))` -/
def P16115213479724028586.Spec : Prop :=
  ∀ n, P16115213479724028586.a n = A054586 n

end A054586

/-!
# A054587: n-th occurrence of gap of n between primes occurs at prime a(n), n even, n >= 2.

The programs for A054587, there is no canonical definition to state claims against.
-/

/-! ## A054587.P3064488027757741931

`A174350(∑[9*n+1]+1)`
-/

namespace A054587.P3064488027757741931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A054587.P3064488027757741931

/-! ## A054587.P14483492174588630415

`A231609(A064226(n))`
-/

namespace A054587.P14483492174588630415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (A064226 n).toNat

end

end A054587.P14483492174588630415

/-! ## A054587.P7623110666810052908

`A231609(A140064(n+1))`
-/

namespace A054587.P7623110666810052908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (A140064 (n + 1)).toNat

end

end A054587.P7623110666810052908

/-! ## A054587.P4226030399436240884

`A231609(A000217(3*n+2)-n)`
-/

namespace A054587.P4226030399436240884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (A000217 (3 * n + 2) - (n : ℤ)).toNat

end

end A054587.P4226030399436240884

/-!
# A054588: Length of gap between consecutive primes containing n!.

The programs for A054588, there is no canonical definition to state claims against.
-/

/-! ## A054588.P6486971956077132922

`A058054(n+3)`
-/

namespace A054588.P6486971956077132922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058054 (n + 3)

end

end A054588.P6486971956077132922

/-! ## A054588.P8690453576323824148

`A340802(n+3)+1`
-/

namespace A054588.P8690453576323824148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (n + 3) + 1

end

end A054588.P8690453576323824148

/-! ## A054588.P2592635113329369944

`2*A340013(n+3)`
-/

namespace A054588.P2592635113329369944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340013 (n + 3)

end

end A054588.P2592635113329369944

/-! ## A054588.P9205417890690351606

`A004277(A340013(n+3))`
-/

namespace A054588.P9205417890690351606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A340013 (n + 3)).toNat

end

end A054588.P9205417890690351606

/-! ## A054588.P12421314989747625181

`A014681(A340802(n+3))`
-/

namespace A054588.P12421314989747625181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A340802 (n + 3)).toNat

end

end A054588.P12421314989747625181

/-! ## A054588.P7820432424625483088

`A004275(A340013(n+3)+1)`
-/

namespace A054588.P7820432424625483088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A340013 (n + 3) + 1).toNat

end

end A054588.P7820432424625483088

/-! ## A054588.P8605815295499877260

`A033932(n+3)+A033933(n+3)`
-/

namespace A054588.P8605815295499877260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 (n + 3) + A033933 (n + 3)

end

end A054588.P8605815295499877260

/-! ## A054588.P17901760909443572976

`A037151(n+3)-A006990(n+3)`
-/

namespace A054588.P17901760909443572976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037151 (n + 3) - A006990 (n + 3)

end

end A054588.P17901760909443572976

/-! ## A054588.P4534225115159560250

`A087421(n+3)-A006990(n+3)`
-/

namespace A054588.P4534225115159560250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087421 (n + 3) - A006990 (n + 3)

end

end A054588.P4534225115159560250

/-!
# A054590: Number of disconnected digraphs with n unlabeled nodes.

The programs for A054590, there is no canonical definition to state claims against.
-/

/-! ## A054590.P15509884809527443278

`A000273(n+1)-A003085(n+1)`
-/

namespace A054590.P15509884809527443278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000273 (n + 1) - A003085 (n + 1)

end

end A054590.P15509884809527443278

/-! ## A054590.P16922188654058555502

`Δ[A173313(n)]-A003085(n+1)`
-/

namespace A054590.P16922188654058555502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003085 (n + 1)

end

end A054590.P16922188654058555502

/-! ## A054590.P15744867250672083397

`A003085(n+1)-A054918(n+1)`
-/

namespace A054590.P15744867250672083397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003085 (n + 1) - A054918 (n + 1)

end

end A054590.P15744867250672083397

/-! ## A054590.P9774377427791624508

`A054928(n+1)-A054932(n+1)`
-/

namespace A054590.P9774377427791624508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054928 (n + 1) - A054932 (n + 1)

end

end A054590.P9774377427791624508

/-! ## A054590.P495731025817080090

`∑[record[A053598(n)]]-A003085(n+1)`
-/

namespace A054590.P495731025817080090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053598 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003085 (n + 1)

end

end A054590.P495731025817080090

/-!
# A054592: Number of disconnected labeled graphs with n nodes.

The programs for A054592, there is no canonical definition to state claims against.
-/

/-! ## A054592.P3508872672310215640

`2^C(n, 2)-A001187(n)`
-/

namespace A054592.P3508872672310215640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A001187 n

end

end A054592.P3508872672310215640

/-! ## A054592.P12355616370821534442

`A006125(n)-A001187(n)`
-/

namespace A054592.P12355616370821534442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A001187 n

end

end A054592.P12355616370821534442

/-! ## A054592.P2556549413116121087

`∏[A011782(n)]-A001187(n)`
-/

namespace A054592.P2556549413116121087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A001187 n

end

end A054592.P2556549413116121087

/-! ## A054592.P16162628128034168922

`2^C(n, 2)-A223894(A028310(∑[n]))`
-/

namespace A054592.P16162628128034168922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A223894 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A054592.P16162628128034168922

/-! ## A054592.P1731006110458176635

`2^C(n, 2)-A223894(A179865(n+1))`
-/

namespace A054592.P1731006110458176635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A223894 (A179865 (n + 1)).toNat

end

end A054592.P1731006110458176635

/-!
# A054593: Number of disconnected labeled digraphs with n nodes.

The programs for A054593, there is no canonical definition to state claims against.
-/

/-! ## A054593.P1251769843483490975

`2^((n+1)*n)-A003027(n+1)`
-/

namespace A054593.P1251769843483490975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ ((n + 1) * n) : ℤ) - A003027 (n + 1)

end

end A054593.P1251769843483490975

/-! ## A054593.P4818060352564975500

`A003027(n+1)-A054914(n+1)`
-/

namespace A054593.P4818060352564975500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003027 (n + 1) - A054914 (n + 1)

end

end A054593.P4818060352564975500

/-! ## A054593.P211044260100124519

`record[A055248(n)]^(n+1)-record[A189898(n+1)]`
-/

namespace A054593.P211044260100124519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ (n + 1) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A054593.P211044260100124519

/-! ## A054593.P8528966480212913160

`A053763(A348553(n))%A003027(n+1)`
-/

namespace A054593.P8528966480212913160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053763 (A348553 n).toNat) (A003027 (n + 1))

end

end A054593.P8528966480212913160

/-!
# A054594: Number of labeled minimally 2-connected graphs by nodes.

The programs for A054594, there is no canonical definition to state claims against.
-/

/-! ## A054594.P4512448968340941181

`A108292(n)+A014601(A081140(n))`
-/

namespace A054594.P4512448968340941181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108292 n + A014601 (A081140 n).toNat

end

end A054594.P4512448968340941181

/-!
# A054595: Number of labeled 2-connected minimally 2-edge-connected graphs by nodes.

The programs for A054595, there is no canonical definition to state claims against.
-/

/-! ## A054595.P1686535281352879947

`or(A001791(n), A111094(A000888(n)))`
-/

namespace A054595.P1686535281352879947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001791 n) (A111094 (A000888 n).toNat)

end

end A054595.P1686535281352879947

/-!
# A054598: a(0)=0; for n>0, a(n) = Sum_{d|n} d*2^(n/d).

The programs for A054598, the canonical program `A054598.P6428814290403236277` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054598 has offset 0).

The definition of A054598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054598.P6428814290403236277

`∑{d}[n, n*2^#/#]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054598

/-- `∑{d}[n, n*2^#/#]` -/
def P6428814290403236277.Spec : Prop :=
  ∀ n, P6428814290403236277.a n = (A054598 n : ℚ)

end A054598

/-! ## A054598.P15904258475588853114

`n*∑{d}[n, 2^(#-log2(#))]`
-/

namespace A054598.P15904258475588853114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (∑ d ∈ Nat.divisors (f1 n), (2 : ℝ) ^ ((d : ℝ) - Real.logb 2 (d : ℝ)))

end

end A054598.P15904258475588853114

namespace A054598

/-- `n*∑{d}[n, 2^(#-log2(#))]` -/
def P15904258475588853114.Spec : Prop :=
  ∀ n, P15904258475588853114.a n = (A054598 n : ℝ)

end A054598

/-! ## A054598.P1564093853717336105

`2*A054599(n)`
-/

namespace A054598.P1564093853717336105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054599 n

end

end A054598.P1564093853717336105

namespace A054598

/-- `2*A054599(n)` -/
def P1564093853717336105.Spec : Prop :=
  ∀ n, P1564093853717336105.a n = A054598 n

end A054598

/-! ## A054598.P13753900097607855992

`A054599(A005843(n)/2)+A054599(n)`
-/

namespace A054598.P13753900097607855992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054599 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A054599 n

end

end A054598.P13753900097607855992

namespace A054598

/-- `A054599(A005843(n)/2)+A054599(n)` -/
def P13753900097607855992.Spec : Prop :=
  ∀ n, P13753900097607855992.a n = A054598 n

end A054598

/-! ## A054598.P17855673794374682014

`A054599(A005843(n)-n)+A054599(n)`
-/

namespace A054598.P17855673794374682014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054599 (A005843 n - (n : ℤ)).toNat + A054599 n

end

end A054598.P17855673794374682014

namespace A054598

/-- `A054599(A005843(n)-n)+A054599(n)` -/
def P17855673794374682014.Spec : Prop :=
  ∀ n, P17855673794374682014.a n = A054598 n

end A054598

/-! ## A054598.P18090163283796745307

`record[A054599(n)-A054601(n)]`
-/

namespace A054598.P18090163283796745307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054599 n - A054601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054598.P18090163283796745307

namespace A054598

/-- `record[A054599(n)-A054601(n)]` -/
def P18090163283796745307.Spec : Prop :=
  ∀ n, P18090163283796745307.a n = A054598 n

end A054598

/-!
# A054599: a(n) = Sum_{d|n} d*2^(n/d - 1).

The programs for A054599, the canonical program `A054599.P14601124656388953623` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054599 has offset 0).

The definition of A054599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054599.P14601124656388953623

`∑{d}[n, 2^(n/#-1)*#]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054599

/-- `∑{d}[n, 2^(n/#-1)*#]` -/
def P14601124656388953623.Spec : Prop :=
  ∀ n, P14601124656388953623.a n = (A054599 n : ℝ)

end A054599

/-! ## A054599.P11152781928576198512

`∑{d}[n, n*2^#/#]/2`
-/

namespace A054599.P11152781928576198512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n : ℚ) * ((2 ^ d : ℚ) / (d : ℚ))) / 2

end

end A054599.P11152781928576198512

namespace A054599

/-- `∑{d}[n, n*2^#/#]/2` -/
def P11152781928576198512.Spec : Prop :=
  ∀ n, P11152781928576198512.a n = (A054599 n : ℚ)

end A054599

/-! ## A054599.P1270565082148053126

`A054598(n)/2`
-/

namespace A054599.P1270565082148053126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054598 n : ℚ) / 2

end

end A054599.P1270565082148053126

namespace A054599

/-- `A054598(n)/2` -/
def P1270565082148053126.Spec : Prop :=
  ∀ n, P1270565082148053126.a n = (A054599 n : ℚ)

end A054599

/-! ## A054599.P45156669668161710

`A014682(A054598(n))`
-/

namespace A054599.P45156669668161710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A054598 n).toNat

end

end A054599.P45156669668161710

namespace A054599

/-- `A014682(A054598(n))` -/
def P45156669668161710.Spec : Prop :=
  ∀ n, P45156669668161710.a n = A054599 n

end A054599

/-! ## A054599.P22143831807208554

`A004526(A054598(n)+1)`
-/

namespace A054599.P22143831807208554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A054598 n + 1).toNat

end

end A054599.P22143831807208554

namespace A054599

/-- `A004526(A054598(n)+1)` -/
def P22143831807208554.Spec : Prop :=
  ∀ n, P22143831807208554.a n = A054599 n

end A054599

