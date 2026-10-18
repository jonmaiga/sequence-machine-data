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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A343000: Discriminants of cyclic cubic fields.

The programs for A343000, there is no canonical definition to state claims against.
-/

/-! ## A343000.P6825067941272967147

`A343001(n+1)²`
-/

namespace A343000.P6825067941272967147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1) ^ 2

end

end A343000.P6825067941272967147

/-! ## A343000.P7393882863204631325

`A343001(n+1)^A020639(2*(n+1))`
-/

namespace A343000.P7393882863204631325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343001 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A343000.P7393882863204631325

/-! ## A343000.P12867261024809140743

`A343001(A000027(n+1))*A343001(n+1)`
-/

namespace A343000.P12867261024809140743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (A000027 (n + 1)).toNat * A343001 (n + 1)

end

end A343000.P12867261024809140743

/-! ## A343000.P15253612064297427191

`A343001(n+1)^A000005(A000040(n+1))`
-/

namespace A343000.P15253612064297427191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343001 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A343000.P15253612064297427191

/-! ## A343000.P15064904675359734

`A343001(n+1)^A000005(A002476(n+1))`
-/

namespace A343000.P15064904675359734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343001 (n + 1) : ℚ) ^ (A000005 (A002476 (n + 1)).toNat : ℤ)

end

end A343000.P15064904675359734

/-! ## A343000.P3988798678947616357

`A343001(n+1)^A001221(A343003(n+1))`
-/

namespace A343000.P3988798678947616357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343001 (n + 1) : ℚ) ^ (A001221 (A343003 (n + 1)).toNat : ℤ)

end

end A343000.P3988798678947616357

/-! ## A343000.P9787624092935388660

`A343001(n+1)^A269735(A017077(2*(n+1)))`
-/

namespace A343000.P9787624092935388660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343001 (n + 1) : ℚ) ^ (A269735 (A017077 (2 * (n + 1))).toNat : ℤ)

end

end A343000.P9787624092935388660

/-! ## A343000.P10685112620818495673

`A343001(n+1)^A269735(A047522(2*n+3))`
-/

namespace A343000.P10685112620818495673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343001 (n + 1) : ℚ) ^ (A269735 (A047522 (2 * n + 3)).toNat : ℤ)

end

end A343000.P10685112620818495673

/-! ## A343000.P276557303160260909

`A343001(lcm(n+1, A006530(n+1)))*A343001(n+1)`
-/

namespace A343000.P276557303160260909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (Int.lcm (n + 1 : ℤ) (A006530 (n + 1))) * A343001 (n + 1)

end

end A343000.P276557303160260909

/-! ## A343000.P1334569231762497063

`A343001(n+1)%A343001(n+2)*A343001(n+1)`
-/

namespace A343000.P1334569231762497063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343001 (n + 1)) (A343001 (n + 2)) * A343001 (n + 1)

end

end A343000.P1334569231762497063

/-! ## A343000.P17908420363780089500

`(lt[1, A160498(n+1)]+1)²`
-/

namespace A343000.P17908420363780089500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A343000.P17908420363780089500

/-! ## A343000.P13520183175781028911

`A343001(n+1)^A160498(A002476(n+3))`
-/

namespace A343000.P13520183175781028911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343001 (n + 1) : ℚ) ^ (A160498 (A002476 (n + 3)).toNat : ℤ)

end

end A343000.P13520183175781028911

/-! ## A343000.P15766037376658002463

`A000463(2*A343001(n+1))`
-/

namespace A343000.P15766037376658002463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A343001 (n + 1)).toNat

end

end A343000.P15766037376658002463

/-!
# A343001: Square roots of discriminants of cyclic cubic fields.

The programs for A343001, there is no canonical definition to state claims against.
-/

/-! ## A343001.P15203080902267839775

`sqrt(A343000(n+1))`
-/

namespace A343001.P15203080902267839775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A343000 (n + 1) : ℝ)

end

end A343001.P15203080902267839775

/-! ## A343001.P93811352125897470

`char[A043484(n+1)]+root(A343000(n+1), 2)`
-/

namespace A343001.P93811352125897470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043484 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ) + (A343000 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A343001.P93811352125897470

/-! ## A343001.P2141103903764575008

`A008683(4*(n+1))+root(A343000(n+1), 2)`
-/

namespace A343001.P2141103903764575008
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008683 (4 * (n + 1)) : ℝ) + (A343000 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A343001.P2141103903764575008

/-! ## A343001.P2089736524028435242

`lt[1, A160498(n+1)]+1`
-/

namespace A343001.P2089736524028435242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A343001.P2089736524028435242

/-! ## A343001.P15055390704059516647

`A026741(root(A343000(n+1), 2))`
-/

namespace A343001.P15055390704059516647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A343000 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A343001.P15055390704059516647

/-! ## A343001.P9016750704685511193

`A109613(root(A343000(n+1), 2))`
-/

namespace A343001.P9016750704685511193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.roundAway ((A343000 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A343001.P9016750704685511193

/-! ## A343001.P16889012866795744702

`A254667(root(A343000(n+1), 2))`
-/

namespace A343001.P16889012866795744702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.roundAway ((A343000 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A343001.P16889012866795744702

/-! ## A343001.P12221460043145282695

`A008615(6*root(A343000(n+1), 2))`
-/

namespace A343001.P12221460043145282695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.roundAway (6 * (A343000 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A343001.P12221460043145282695

/-!
# A343002: Discriminants with exactly 2 associated cyclic cubic fields.

The programs for A343002, there is no canonical definition to state claims against.
-/

/-! ## A343002.P11080154497982599544

`A343003(n+1)²`
-/

namespace A343002.P11080154497982599544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343003 (n + 1) ^ 2

end

end A343002.P11080154497982599544

/-! ## A343002.P3729345702482974100

`A343003(n+1)^A020639(2*(n+1))`
-/

namespace A343002.P3729345702482974100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343003 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A343002.P3729345702482974100

/-! ## A343002.P17224094923535253067

`A343003(n+1)^A000005(A007918(n))`
-/

namespace A343002.P17224094923535253067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343003 (n + 1) : ℚ) ^ (A000005 (A007918 n).toNat : ℤ)

end

end A343002.P17224094923535253067

/-! ## A343002.P16140035033628587474

`A343003(A000027(n+1))*A343003(n+1)`
-/

namespace A343002.P16140035033628587474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343003 (A000027 (n + 1)).toNat * A343003 (n + 1)

end

end A343002.P16140035033628587474

/-! ## A343002.P10678582483494124442

`A343003(lcm(n+1, A006530(n+1)))*A343003(n+1)`
-/

namespace A343002.P10678582483494124442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343003 (Int.lcm (n + 1 : ℤ) (A006530 (n + 1))) * A343003 (n + 1)

end

end A343002.P10678582483494124442

/-! ## A343002.P16613790684837046592

`A343003(n+1)*A343003((n+1)%A133263(n+1))`
-/

namespace A343002.P16613790684837046592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343003 (n + 1) * A343003 (Int.tmod (n + 1 : ℤ) (A133263 (n + 1))).toNat

end

end A343002.P16613790684837046592

/-! ## A343002.P17116419740711955422

`A343003(n+1)^A036453(A020742(n))`
-/

namespace A343002.P17116419740711955422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343003 (n + 1) : ℚ) ^ (A036453 (A020742 n).toNat : ℤ)

end

end A343002.P17116419740711955422

/-! ## A343002.P7729029232478620295

`A343003(n+1)^A000005(A007528(n+1))`
-/

namespace A343002.P7729029232478620295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343003 (n + 1) : ℚ) ^ (A000005 (A007528 (n + 1)).toNat : ℤ)

end

end A343002.P7729029232478620295

/-! ## A343002.P9818447598673918583

`A343003(n+1)^A000005(A002476(n+1))`
-/

namespace A343002.P9818447598673918583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343003 (n + 1) : ℚ) ^ (A000005 (A002476 (n + 1)).toNat : ℤ)

end

end A343002.P9818447598673918583

/-! ## A343002.P9468243324609311897

`A343003(n+1)^A001221(A343003(n+2))`
-/

namespace A343002.P9468243324609311897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343003 (n + 1) : ℚ) ^ (A001221 (A343003 (n + 2)).toNat : ℤ)

end

end A343002.P9468243324609311897

/-! ## A343002.P8397857506236661388

`(eq[2, A343023(n+1)]+1)²`
-/

namespace A343002.P8397857506236661388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A343002.P8397857506236661388

/-! ## A343002.P9883416906582499483

`A343003(n+1)^A160498(A002476(n+3))`
-/

namespace A343002.P9883416906582499483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343003 (n + 1) : ℚ) ^ (A160498 (A002476 (n + 3)).toNat : ℤ)

end

end A343002.P9883416906582499483

/-! ## A343002.P3740893612263997475

`A343003(n+1)^A036453(A343025(n+1))`
-/

namespace A343002.P3740893612263997475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343003 (n + 1) : ℚ) ^ (A036453 (A343025 (n + 1)).toNat : ℤ)

end

end A343002.P3740893612263997475

/-! ## A343002.P2034343302072053473

`A079097(eq[2, A343023(n+1)])²`
-/

namespace A343002.P2034343302072053473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A343002.P2034343302072053473

/-! ## A343002.P11272568540619913159

`∩[A296205(n+1), A343001(n+1)]²`
-/

namespace A343002.P11272568540619913159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A343002.P11272568540619913159

/-! ## A343002.P11158291308343509866

`∩[A065985(n+1), A343001(n+1)]²`
-/

namespace A343002.P11158291308343509866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A343002.P11158291308343509866

/-! ## A343002.P6984958820238347023

`∩[A176525(n+1), A343001(n+1)]²`
-/

namespace A343002.P6984958820238347023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A343002.P6984958820238347023

/-! ## A343002.P4175115346730705254

`∩[A033872(n+1), A343001(n+1)]²`
-/

namespace A343002.P4175115346730705254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A343002.P4175115346730705254

/-! ## A343002.P4539468303141023139

`∩[A007774(n+1), A343001(n+1)]²`
-/

namespace A343002.P4539468303141023139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A343002.P4539468303141023139

/-!
# A343003: Numbers k such that there are exactly 2 cyclic cubic fields with discriminant k^2.

The programs for A343003, there is no canonical definition to state claims against.
-/

/-! ## A343003.P849110237159785721

`sqrt(A343002(n+1))`
-/

namespace A343003.P849110237159785721
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A343002 (n + 1) : ℝ)

end

end A343003.P849110237159785721

/-! ## A343003.P12453410894707963058

`A000027(root(A343002(n+1), 2))`
-/

namespace A343003.P12453410894707963058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A343002 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A343003.P12453410894707963058

/-! ## A343003.P16270131795888652878

`root(A343002(n+1), gcd(2, A103604(n)))`
-/

namespace A343003.P16270131795888652878
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A343002 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A103604 n) : ℝ))

end

end A343003.P16270131795888652878

/-! ## A343003.P2527275544657494770

`filter[A343025(n+1), A353676(#)]`
-/

namespace A343003.P2527275544657494770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A343003.P2527275544657494770

/-! ## A343003.P5624360038733239177

`filter[A343001(n+1), A353676(#)]`
-/

namespace A343003.P5624360038733239177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A343003.P5624360038733239177

/-! ## A343003.P9599539306356663141

`eq[2, A343023(n+1)]+1`
-/

namespace A343003.P9599539306356663141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343003.P9599539306356663141

/-! ## A343003.P15094811558844112361

`A026741(root(A343002(n+1), 2))`
-/

namespace A343003.P15094811558844112361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A343002 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A343003.P15094811558844112361

/-! ## A343003.P13442290101692934843

`A109613(root(A343002(n+1), 2))`
-/

namespace A343003.P13442290101692934843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.roundAway ((A343002 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A343003.P13442290101692934843

/-! ## A343003.P15006827508012268445

`A079097(eq[2, A343023(n+1)])`
-/

namespace A343003.P15006827508012268445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343003.P15006827508012268445

/-! ## A343003.P17160476635424310436

`filter[A343001(n+1), A215480(#)]`
-/

namespace A343003.P17160476635424310436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A343003.P17160476635424310436

/-! ## A343003.P4563511185867264151

`filter[A343025(n+1), A215480(#)]`
-/

namespace A343003.P4563511185867264151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A343003.P4563511185867264151

/-! ## A343003.P2244270505796549702

`∩[A296205(n+1), A343001(n+1)]`
-/

namespace A343003.P2244270505796549702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343003.P2244270505796549702

/-! ## A343003.P10096287802129245418

`∩[A065985(n+1), A343001(n+1)]`
-/

namespace A343003.P10096287802129245418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343003.P10096287802129245418

/-! ## A343003.P12926043563656694121

`∩[A176525(n+1), A343001(n+1)]`
-/

namespace A343003.P12926043563656694121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343003.P12926043563656694121

/-! ## A343003.P10161123396098581298

`∩[A033872(n+1), A343001(n+1)]`
-/

namespace A343003.P10161123396098581298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343003.P10161123396098581298

/-! ## A343003.P17842692754596351501

`∩[A007774(n+1), A343001(n+1)]`
-/

namespace A343003.P17842692754596351501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343003.P17842692754596351501

/-! ## A343003.P8514581195911199230

`∩[A267114(n+1), A343001(n+1)]`
-/

namespace A343003.P8514581195911199230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343003.P8514581195911199230

/-! ## A343003.P7667398350143021093

`∩[A000379(n+1), A343001(n+1)]`
-/

namespace A343003.P7667398350143021093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343003.P7667398350143021093

/-! ## A343003.P3821088187863706029

`∩[A030231(n+1), A343001(n+1)]`
-/

namespace A343003.P3821088187863706029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343003.P3821088187863706029

/-! ## A343003.P5332301317680527134

`∩[A296205(n+1), A343025(n+1)]`
-/

namespace A343003.P5332301317680527134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343003.P5332301317680527134

/-!
# A343004: Pairwise listing of the prime factors of the squarefree semiprimes (smaller, larger).

The programs for A343004, there is no canonical definition to state claims against.
-/

/-! ## A343004.P13319713044085434530

`A000040(A338899(n+1))`
-/

namespace A343004.P13319713044085434530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A338899 (n + 1)).toNat

end

end A343004.P13319713044085434530

/-! ## A343004.P16783783945638331712

`A008578(A338899(n+1)+1)`
-/

namespace A343004.P16783783945638331712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A338899 (n + 1) + 1).toNat

end

end A343004.P16783783945638331712

/-! ## A343004.P14474169255875194704

`A182986(A338899(n+1)+1)`
-/

namespace A343004.P14474169255875194704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A338899 (n + 1) + 1).toNat

end

end A343004.P14474169255875194704

/-! ## A343004.P10425952811875255427

`A171057(A338899(n+1)%A177510(2*n+3))`
-/

namespace A343004.P10425952811875255427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171057 (Int.tmod (A338899 (n + 1)) (A177510 (2 * n + 3))).toNat

end

end A343004.P10425952811875255427

/-!
# A343005: a(n) is the number of dihedral symmetries D_{2m} (m >= 3) that configurations of n non-overlapping equal circles can possess.

The programs for A343005, the canonical program `A343005.P12079463249334117776` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343005 has offset 2).

The definition of A343005 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A274010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343005.P12079463249334117776

`A274010(n+2)-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A343005

/-- `A274010(n+2)-1` -/
def P12079463249334117776.Spec : Prop :=
  ∀ n, P12079463249334117776.a n = A343005 (n + 2)

theorem P12079463249334117776.correct : P12079463249334117776.Spec := by
  intro n
  simp only [A343005, Nat.add_sub_cancel]

end A343005

/-! ## A343005.P12923355688326859798

`A023645(n+2)+A023645(n+1)`
-/

namespace A343005.P12923355688326859798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 2) + A023645 (n + 1)

end

end A343005.P12923355688326859798

namespace A343005

/-- `A023645(n+2)+A023645(n+1)` -/
def P12923355688326859798.Spec : Prop :=
  ∀ n, P12923355688326859798.a n = A343005 (n + 2)

end A343005

/-! ## A343005.P11979087789931412951

`A092405(n+1)-3`
-/

namespace A343005.P11979087789931412951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1) - 3

end

end A343005.P11979087789931412951

namespace A343005

/-- `A092405(n+1)-3` -/
def P11979087789931412951.Spec : Prop :=
  ∀ n, P11979087789931412951.a n = A343005 (n + 2)

end A343005

/-! ## A343005.P13716009426256203201

`n-A131187(n+1)`
-/

namespace A343005.P13716009426256203201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A131187 (n + 1)

end

end A343005.P13716009426256203201

namespace A343005

/-- `n-A131187(n+1)` -/
def P13716009426256203201.Spec : Prop :=
  ∀ n, P13716009426256203201.a n = A343005 (n + 2)

end A343005

/-! ## A343005.P13881565092187922848

`A006218(n+2)-(∑[∏{e}[n, #+1]-1]+n+3)`
-/

namespace A343005.P13881565092187922848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 2) - (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 3)

end

end A343005.P13881565092187922848

namespace A343005

/-- `A006218(n+2)-(∑[∏{e}[n, #+1]-1]+n+3)` -/
def P13881565092187922848.Spec : Prop :=
  ∀ n, P13881565092187922848.a n = A343005 (n + 2)

end A343005

/-! ## A343005.P8824954798821454023

`A023445(A092405(n+1))`
-/

namespace A343005.P8824954798821454023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A092405 (n + 1)).toNat

end

end A343005.P8824954798821454023

namespace A343005

/-- `A023445(A092405(n+1))` -/
def P8824954798821454023.Spec : Prop :=
  ∀ n, P8824954798821454023.a n = A343005 (n + 2)

end A343005

/-! ## A343005.P18298819156426096278

`A006218(n+2)-(A006218(n)+3)`
-/

namespace A343005.P18298819156426096278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 2) - (A006218 n + 3)

end

end A343005.P18298819156426096278

namespace A343005

/-- `A006218(n+2)-(A006218(n)+3)` -/
def P18298819156426096278.Spec : Prop :=
  ∀ n, P18298819156426096278.a n = A343005 (n + 2)

end A343005

/-! ## A343005.P17571824385488421287

`A000005(n+1)+A000005(n+2)-3`
-/

namespace A343005.P17571824385488421287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A000005 (n + 2) - 3)

end

end A343005.P17571824385488421287

namespace A343005

/-- `A000005(n+1)+A000005(n+2)-3` -/
def P17571824385488421287.Spec : Prop :=
  ∀ n, P17571824385488421287.a n = A343005 (n + 2)

end A343005

/-! ## A343005.P8441701342388446158

`A289207(A032741(n+1)+A000005(n+2))`
-/

namespace A343005.P8441701342388446158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A032741 (n + 1) + A000005 (n + 2)).toNat

end

end A343005.P8441701342388446158

namespace A343005

/-- `A289207(A032741(n+1)+A000005(n+2))` -/
def P8441701342388446158.Spec : Prop :=
  ∀ n, P8441701342388446158.a n = A343005 (n + 2)

end A343005

/-! ## A343005.P16395302058336701155

`A092338(n+2)-2`
-/

namespace A343005.P16395302058336701155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (n + 2) - 2

end

end A343005.P16395302058336701155

namespace A343005

/-- `A092338(n+2)-2` -/
def P16395302058336701155.Spec : Prop :=
  ∀ n, P16395302058336701155.a n = A343005 (n + 2)

end A343005

/-! ## A343005.P3641825761136396164

`∑{d}[n+1, ceil(acot(#))]-(1-A070824(n+2))`
-/

namespace A343005.P3641825761136396164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉ - (1 - A070824 (n + 2))

end

end A343005.P3641825761136396164

namespace A343005

/-- `∑{d}[n+1, ceil(acot(#))]-(1-A070824(n+2))` -/
def P3641825761136396164.Spec : Prop :=
  ∀ n, P3641825761136396164.a n = A343005 (n + 2)

end A343005

/-! ## A343005.P5087859540016859513

`∏{e}[n+1, #+1]-(A049820(n+2)+1)+n`
-/

namespace A343005.P5087859540016859513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - (A049820 (n + 2) + 1) + (n : ℤ)

end

end A343005.P5087859540016859513

namespace A343005

/-- `∏{e}[n+1, #+1]-(A049820(n+2)+1)+n` -/
def P5087859540016859513.Spec : Prop :=
  ∀ n, P5087859540016859513.a n = A343005 (n + 2)

end A343005

/-! ## A343005.P5826756368300835050

`A023444(A092338(n+2))`
-/

namespace A343005.P5826756368300835050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A092338 (n + 2)).toNat

end

end A343005.P5826756368300835050

namespace A343005

/-- `A023444(A092338(n+2))` -/
def P5826756368300835050.Spec : Prop :=
  ∀ n, P5826756368300835050.a n = A343005 (n + 2)

end A343005

/-! ## A343005.P1273787882599333431

`A070824(n+2)+A032741(n+1)`
-/

namespace A343005.P1273787882599333431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 2) + A032741 (n + 1)

end

end A343005.P1273787882599333431

namespace A343005

/-- `A070824(n+2)+A032741(n+1)` -/
def P1273787882599333431.Spec : Prop :=
  ∀ n, P1273787882599333431.a n = A343005 (n + 2)

end A343005

/-! ## A343005.P12130178487744440541

`A088922(n+1)-A003165(n+2)`
-/

namespace A343005.P12130178487744440541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088922 (n + 1) - A003165 (n + 2)

end

end A343005.P12130178487744440541

namespace A343005

/-- `A088922(n+1)-A003165(n+2)` -/
def P12130178487744440541.Spec : Prop :=
  ∀ n, P12130178487744440541.a n = A343005 (n + 2)

end A343005

/-! ## A343005.P360482984706591610

`A005843(n)-(A049820(n+1)+A049820(n+2))`
-/

namespace A343005.P360482984706591610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - (A049820 (n + 1) + A049820 (n + 2))

end

end A343005.P360482984706591610

namespace A343005

/-- `A005843(n)-(A049820(n+1)+A049820(n+2))` -/
def P360482984706591610.Spec : Prop :=
  ∀ n, P360482984706591610.a n = A343005 (n + 2)

end A343005

/-! ## A343005.P228415650426352471

`A032741(n+1)+A069930(n+2)-A001227(n+2)`
-/

namespace A343005.P228415650426352471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (A069930 (n + 2) - A001227 (n + 2))

end

end A343005.P228415650426352471

namespace A343005

/-- `A032741(n+1)+A069930(n+2)-A001227(n+2)` -/
def P228415650426352471.Spec : Prop :=
  ∀ n, P228415650426352471.a n = A343005 (n + 2)

end A343005

/-! ## A343005.P14933289247646152373

`A070824(n+2)+A141670(n+1)/A000041(n+1)`
-/

namespace A343005.P14933289247646152373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070824 (n + 2) : ℚ) + (A141670 (n + 1) : ℚ) / (A000041 (n + 1) : ℚ)

end

end A343005.P14933289247646152373

namespace A343005

/-- `A070824(n+2)+A141670(n+1)/A000041(n+1)` -/
def P14933289247646152373.Spec : Prop :=
  ∀ n, P14933289247646152373.a n = (A343005 (n + 2) : ℚ)

end A343005

/-! ## A343005.P9294813602983144197

`A338117(2*(n+1))+A338117(A100577(n+2))`
-/

namespace A343005.P9294813602983144197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (2 * (n + 1)) + A338117 (A100577 (n + 2)).toNat

end

end A343005.P9294813602983144197

namespace A343005

/-- `A338117(2*(n+1))+A338117(A100577(n+2))` -/
def P9294813602983144197.Spec : Prop :=
  ∀ n, P9294813602983144197.a n = A343005 (n + 2)

end A343005

/-! ## A343005.P571770743584167501

`A172520(∑[n]+2)-2`
-/

namespace A343005.P571770743584167501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172520 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - 2

end

end A343005.P571770743584167501

namespace A343005

/-- `A172520(∑[n]+2)-2` -/
def P571770743584167501.Spec : Prop :=
  ∀ n, P571770743584167501.a n = A343005 (n + 2)

end A343005

/-!
# A343006: Internal path length of the rooted tree with Matula-Goebel number n.

The programs for A343006, there is no canonical definition to state claims against.
-/

/-! ## A343006.P4041901890366024825

`A196047(n+1)-A196048(n+1)`
-/

namespace A343006.P4041901890366024825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (n + 1) - A196048 (n + 1)

end

end A343006.P4041901890366024825

/-! ## A343006.P17833978992094179917

`A196047(A198328(n+1))`
-/

namespace A343006.P17833978992094179917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (A198328 (n + 1)).toNat

end

end A343006.P17833978992094179917

/-! ## A343006.P8807581035806052116

`A366388(A324922(n+1)/A034444(n+1))`
-/

namespace A343006.P8807581035806052116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (SequenceMachineLib.roundAway ((A324922 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ))).toNat

end

end A343006.P8807581035806052116

/-! ## A343006.P1438892558548695789

`A196068(A198328(n+1))-A342507(2*(n+1))`
-/

namespace A343006.P1438892558548695789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (A198328 (n + 1)).toNat - A342507 (2 * (n + 1))

end

end A343006.P1438892558548695789

/-! ## A343006.P3491302252314543727

`A196047(n+1)+A057428(n)*A196048(n+1)`
-/

namespace A343006.P3491302252314543727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (n + 1) + A057428 n * A196048 (n + 1)

end

end A343006.P3491302252314543727

/-! ## A343006.P13462109574064665207

`A196068(n+1)-(A196048(n+1)+A061775(n+1))`
-/

namespace A343006.P13462109574064665207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (n + 1) - (A196048 (n + 1) + A061775 (n + 1))

end

end A343006.P13462109574064665207

/-! ## A343006.P12338056891473236905

`A196068(n+1)-(A196048(n+1)+A196050(n+1)+1)`
-/

namespace A343006.P12338056891473236905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (n + 1) - (A196048 (n + 1) + (A196050 (n + 1) + 1))

end

end A343006.P12338056891473236905

/-! ## A343006.P14577132539225667911

`A366388(A324922(n+1))`
-/

namespace A343006.P14577132539225667911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A324922 (n + 1)).toNat

end

end A343006.P14577132539225667911

/-!
# A343007: Relative position of the average value between two consecutive partial sums of the Leibniz formula for Pi.

The programs for A343007, the canonical program `A343007.P14785388150779029094` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343007 has offset 1).

The definition of A343007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343007.P14785388150779029094

`(3+(-1)^(n+2)+4*(n+1)+4*(n+1)²)/2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A343007

/-- `(3+(-1)^(n+2)+4*(n+1)+4*(n+1)²)/2` -/
def P14785388150779029094.Spec : Prop :=
  ∀ n, P14785388150779029094.a n = (A343007 (n + 1) : ℚ)

end A343007

/-! ## A343007.P242891483465253396

`∑[record[or(5, n)]]+1`
-/

namespace A343007.P242891483465253396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A343007.P242891483465253396

namespace A343007

/-- `∑[record[or(5, n)]]+1` -/
def P242891483465253396.Spec : Prop :=
  ∀ n, (P242891483465253396.a n : ℤ) = A343007 (n + 1)

end A343007

/-! ## A343007.P9260623686518035340

`∑[record[xor(5, n)]]+1`
-/

namespace A343007.P9260623686518035340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A343007.P9260623686518035340

namespace A343007

/-- `∑[record[xor(5, n)]]+1` -/
def P9260623686518035340.Spec : Prop :=
  ∀ n, (P9260623686518035340.a n : ℤ) = A343007 (n + 1)

end A343007

/-! ## A343007.P16670757337181313869

`∑[eq[n, or(5, n)]]+1`
-/

namespace A343007.P16670757337181313869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A343007.P16670757337181313869

namespace A343007

/-- `∑[eq[n, or(5, n)]]+1` -/
def P16670757337181313869.Spec : Prop :=
  ∀ n, (P16670757337181313869.a n : ℤ) = A343007 (n + 1)

end A343007

/-! ## A343007.P15912381243537891234

`∑[record[abs(xor(5, n-1))]]`
-/

namespace A343007.P15912381243537891234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 5 ((n : ℤ) - 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343007.P15912381243537891234

namespace A343007

/-- `∑[record[abs(xor(5, n-1))]]` -/
def P15912381243537891234.Spec : Prop :=
  ∀ n, P15912381243537891234.a n = A343007 (n + 1)

end A343007

/-! ## A343007.P6874354455342872610

`∑[a(n-2)+8]` with `a(0)=6, a(1)=7, a(2)=13`
-/

namespace A343007.P6874354455342872610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 7, 13] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343007.P6874354455342872610

namespace A343007

/-- `∑[a(n-2)+8]` -/
def P6874354455342872610.Spec : Prop :=
  ∀ n, (P6874354455342872610.a n : ℤ) = A343007 (n + 1)

end A343007

/-! ## A343007.P5545614284592217304

`gcd(2, n)+∑[4*(n+1)]`
-/

namespace A343007.P5545614284592217304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343007.P5545614284592217304

namespace A343007

/-- `gcd(2, n)+∑[4*(n+1)]` -/
def P5545614284592217304.Spec : Prop :=
  ∀ n, (P5545614284592217304.a n : ℤ) = A343007 (n + 1)

end A343007

/-! ## A343007.P5478167173860953451

`∑[∑[8-a(n-1)]]` with `a(0)=6, a(1)=1, a(2)=6`
-/

namespace A343007.P5478167173860953451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 1, 6] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343007.P5478167173860953451

namespace A343007

/-- `∑[∑[8-a(n-1)]]` -/
def P5478167173860953451.Spec : Prop :=
  ∀ n, P5478167173860953451.a n = A343007 (n + 1)

end A343007

/-! ## A343007.P6270273231902599703

`or(1, (n+2)²)+(n+1)²`
-/

namespace A343007.P6270273231902599703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 2) ^ 2) + (n + 1) ^ 2

end

end A343007.P6270273231902599703

namespace A343007

/-- `or(1, (n+2)²)+(n+1)²` -/
def P6270273231902599703.Spec : Prop :=
  ∀ n, (P6270273231902599703.a n : ℤ) = A343007 (n + 1)

end A343007

/-! ## A343007.P16194739453170098602

`xor(A199910(n+1), A260686(n))`
-/

namespace A343007.P16194739453170098602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A199910 (n + 1)) (A260686 n)

end

end A343007.P16194739453170098602

namespace A343007

/-- `xor(A199910(n+1), A260686(n))` -/
def P16194739453170098602.Spec : Prop :=
  ∀ n, P16194739453170098602.a n = A343007 (n + 1)

end A343007

/-! ## A343007.P10464252218163802898

`Δ[A111746(n)+n]`
-/

namespace A343007.P10464252218163802898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111746 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343007.P10464252218163802898

namespace A343007

/-- `Δ[A111746(n)+n]` -/
def P10464252218163802898.Spec : Prop :=
  ∀ n, P10464252218163802898.a n = A343007 (n + 1)

end A343007

/-! ## A343007.P17728347084911861860

`A173254(A004766(n+1))`
-/

namespace A343007.P17728347084911861860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173254 (A004766 (n + 1)).toNat

end

end A343007.P17728347084911861860

namespace A343007

/-- `A173254(A004766(n+1))` -/
def P17728347084911861860.Spec : Prop :=
  ∀ n, P17728347084911861860.a n = A343007 (n + 1)

end A343007

/-! ## A343007.P5714685303798973184

`A173254(A016813(n+1))`
-/

namespace A343007.P5714685303798973184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173254 (A016813 (n + 1)).toNat

end

end A343007.P5714685303798973184

namespace A343007

/-- `A173254(A016813(n+1))` -/
def P5714685303798973184.Spec : Prop :=
  ∀ n, P5714685303798973184.a n = A343007 (n + 1)

end A343007

/-! ## A343007.P4010169253966547797

`A185868(A080827(n+2))`
-/

namespace A343007.P4010169253966547797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185868 (A080827 (n + 2)).toNat

end

end A343007.P4010169253966547797

namespace A343007

/-- `A185868(A080827(n+2))` -/
def P4010169253966547797.Spec : Prop :=
  ∀ n, P4010169253966547797.a n = A343007 (n + 1)

end A343007

/-!
# A343008: a(n) = F(n+5) * F(n+2) - 12 * (-1)^n where F(n) = A000045(n) are the Fibonacci numbers.

The programs for A343008, the canonical program `A343008.P4630623842764349478` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343008 has offset 1).

The definition of A343008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343008.P4630623842764349478

`Δ[A341928(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A343008

/-- `Δ[A341928(n+1)]` -/
def P4630623842764349478.Spec : Prop :=
  ∀ n, P4630623842764349478.a n = A343008 (n + 1)

theorem P4630623842764349478.correct : P4630623842764349478.Spec := by
  intro n
  simp only [A343008, Nat.add_sub_cancel]

end A343008

/-! ## A343008.P3808939496032612598

`Δ[Δ[A341208(n+1)]]`
-/

namespace A343008.P3808939496032612598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341208 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343008.P3808939496032612598

namespace A343008

/-- `Δ[Δ[A341208(n+1)]]` -/
def P3808939496032612598.Spec : Prop :=
  ∀ n, P3808939496032612598.a n = A343008 (n + 1)

end A343008

/-! ## A343008.P10564751835777747965

`Δ[A000045(2*n+7)-a(n-1)]` with `a(0)=3`
-/

namespace A343008.P10564751835777747965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A000045 (2 * n + 7) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343008.P10564751835777747965

namespace A343008

/-- `Δ[A000045(2*n+7)-a(n-1)]` -/
def P10564751835777747965.Spec : Prop :=
  ∀ n, P10564751835777747965.a n = A343008 (n + 1)

end A343008

/-! ## A343008.P17477551494983488679

`A341928(n+2)-A341928(n+1)`
-/

namespace A343008.P17477551494983488679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341928 (n + 2) - A341928 (n + 1)

end

end A343008.P17477551494983488679

namespace A343008

/-- `A341928(n+2)-A341928(n+1)` -/
def P17477551494983488679.Spec : Prop :=
  ∀ n, P17477551494983488679.a n = A343008 (n + 1)

theorem P17477551494983488679.correct : P17477551494983488679.Spec := by
  intro n
  simp only [A343008, Nat.add_sub_cancel, A343008.P17477551494983488679.a, A343008.P4630623842764349478.f1, A343008.P4630623842764349478.a, SequenceMachineLib.memo_apply]

end A343008

/-! ## A343008.P13234070576182057370

`Δ[Δ[Δ[A338225(n+1)]]]`
-/

namespace A343008.P13234070576182057370
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343008.P13234070576182057370

namespace A343008

/-- `Δ[Δ[Δ[A338225(n+1)]]]` -/
def P13234070576182057370.Spec : Prop :=
  ∀ n, P13234070576182057370.a n = A343008 (n + 1)

end A343008

/-!
# A343009: a(n) = (n^(2n)-1)/(n^2-1) for n > 1, a(1) = 1.

The programs for A343009, there is no canonical definition to state claims against.
-/

/-! ## A343009.P2452022805664769593

`A059848(A000124(3*n+2)+2*n)`
-/

namespace A343009.P2452022805664769593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059848 (A000124 (3 * n + 2) + (2 * n : ℤ)).toNat

end

end A343009.P2452022805664769593

/-! ## A343009.P12913694039813322398

`A059848(A000217(3*n+2)+Δ[n²])`
-/

namespace A343009.P12913694039813322398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059848 (A000217 (3 * n + 2) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A343009.P12913694039813322398

/-! ## A343009.P16069251902897136807

`A174964(n+1)-record[A245910(n)]`
-/

namespace A343009.P16069251902897136807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174964 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343009.P16069251902897136807

/-!
# A343010: Integers k for which there exist three consecutive Fibonacci numbers a, b, and c such that a*b*c = k*(a+b+c).

The programs for A343010, the canonical program `A343010.P18443827266205599969` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343010 has offset 1).

The definition of A343010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343010.P18443827266205599969

`ceil(A077259(n)/sqrt(5))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A343010

/-- `ceil(A077259(n)/sqrt(5))` -/
def P18443827266205599969.Spec : Prop :=
  ∀ n, P18443827266205599969.a n = A343010 (n + 1)

theorem P18443827266205599969.correct : P18443827266205599969.Spec := by
  intro n
  simp only [A343010, Nat.add_sub_cancel]

end A343010

/-! ## A343010.P12531010998758416408

`A001654(ceil(3*n/2))/2`
-/

namespace A343010.P12531010998758416408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001654 ⌈3 * ((n : ℚ) / 2)⌉.toNat : ℚ) / 2

end

end A343010.P12531010998758416408

namespace A343010

/-- `A001654(ceil(3*n/2))/2` -/
def P12531010998758416408.Spec : Prop :=
  ∀ n, P12531010998758416408.a n = (A343010 (n + 1) : ℚ)

end A343010

/-! ## A343010.P3194914733065196625

`1/2*A001654(A007494(n))`
-/

namespace A343010.P3194914733065196625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A001654 (A007494 n).toNat : ℚ)

end

end A343010.P3194914733065196625

namespace A343010

/-- `1/2*A001654(A007494(n))` -/
def P3194914733065196625.Spec : Prop :=
  ∀ n, P3194914733065196625.a n = (A343010 (n + 1) : ℚ)

end A343010

/-! ## A343010.P17632682998957964430

`A014437(n)/2*Δ[A014437(n)]`
-/

namespace A343010.P17632682998957964430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014437 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014437 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A343010.P17632682998957964430

namespace A343010

/-- `A014437(n)/2*Δ[A014437(n)]` -/
def P17632682998957964430.Spec : Prop :=
  ∀ n, P17632682998957964430.a n = (A343010 (n + 1) : ℚ)

end A343010

/-! ## A343010.P15203462500890575737

`ceil(A077262(n)/5)`
-/

namespace A343010.P15203462500890575737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077262 n : ℚ) / 5⌉

end

end A343010.P15203462500890575737

namespace A343010

/-- `ceil(A077262(n)/5)` -/
def P15203462500890575737.Spec : Prop :=
  ∀ n, P15203462500890575737.a n = A343010 (n + 1)

end A343010

/-! ## A343010.P5797853453021579842

`A079472(∑[A000034(n)])/4`
-/

namespace A343010.P5797853453021579842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079472 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 4

end

end A343010.P5797853453021579842

namespace A343010

/-- `A079472(∑[A000034(n)])/4` -/
def P5797853453021579842.Spec : Prop :=
  ∀ n, P5797853453021579842.a n = (A343010 (n + 1) : ℚ)

end A343010

/-! ## A343010.P2708068735593339412

`record[A001655(n)%A001654(n+1)]`
-/

namespace A343010.P2708068735593339412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001655 n) (A001654 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343010.P2708068735593339412

namespace A343010

/-- `record[A001655(n)%A001654(n+1)]` -/
def P2708068735593339412.Spec : Prop :=
  ∀ n, P2708068735593339412.a n = A343010 (n + 1)

end A343010

/-!
# A343011: Integers whose variance of their divisors is also an integer.

The programs for A343011, there is no canonical definition to state claims against.
-/

/-! ## A343011.P1356786970636445989

`lt[A281141(n+3), A281131(A281118(n+1))]`
-/

namespace A343011.P1356786970636445989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281141 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281131 (A281118 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343011.P1356786970636445989

/-! ## A343011.P6889533769997881467

`eq[A067513(n+2), A329633(A028233(3*n+5))]`
-/

namespace A343011.P6889533769997881467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329633 (A028233 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343011.P6889533769997881467

/-! ## A343011.P12899449654652408733

`eq[A324468(2*n+3), A324516(A324504(3*n+5))]`
-/

namespace A343011.P12899449654652408733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324516 (A324504 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343011.P12899449654652408733

/-! ## A343011.P12055350492020933039

`lt[Δ[A354907(2*(n+2))], A304096(n+1)]`
-/

namespace A343011.P12055350492020933039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304096 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A343011.P12055350492020933039

/-! ## A343011.P15483355739179155591

`lt[A000607(A335125(2*(n+2))), A182665(3*n+5)]`
-/

namespace A343011.P15483355739179155591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A335125 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182665 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343011.P15483355739179155591

/-!
# A343012: Lexicographically earliest sequence of distinct numbers whose partial products have mutually distinct exponents in their prime factorization (A130091).

The programs for A343012, there is no canonical definition to state claims against.
-/

/-! ## A343012.P9530179842458785101

`A005940(A077168(-xor(n, C(n, n²)-2))-1)`
-/

namespace A343012.P9530179842458785101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A077168 (-Int.xor (n : ℤ) ((Nat.choose n (n ^ 2) : ℤ) - 2)).toNat - 1).toNat

end

end A343012.P9530179842458785101

/-! ## A343012.P3983131050054708125

`A163511(A092569(n)^A340366(n+3))`
-/

namespace A343012.P3983131050054708125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (SequenceMachineLib.roundAway ((A092569 n : ℚ) ^ (A340366 (n + 3) : ℤ))).toNat

end

end A343012.P3983131050054708125

/-! ## A343012.P1024842836568724635

`A005940(A114112(n+1)%A103744(n+1))`
-/

namespace A343012.P1024842836568724635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (Int.tmod (A114112 (n + 1)) (A103744 (n + 1))).toNat

end

end A343012.P1024842836568724635

/-! ## A343012.P1150716750271060821

`A269847(A073846(n+1)%A103744(n+1))`
-/

namespace A343012.P1150716750271060821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269847 (Int.tmod (A073846 (n + 1)) (A103744 (n + 1))).toNat

end

end A343012.P1150716750271060821

/-! ## A343012.P15791462508955528273

`A005940(A114112(n+1))%A187927(n+6)`
-/

namespace A343012.P15791462508955528273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005940 (A114112 (n + 1)).toNat) (A187927 (n + 6))

end

end A343012.P15791462508955528273

/-!
# A343013: Lexicographically earliest strictly increasing sequence of numbers whose partial products have mutually distinct exponents in their prime factorization (A130091).

The programs for A343013, there is no canonical definition to state claims against.
-/

/-! ## A343013.P6859851853588969052

`record[and(A127757(n+1), A240192(n+1))]`
-/

namespace A343013.P6859851853588969052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127757 (n + 1)) (A240192 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343013.P6859851853588969052

/-! ## A343013.P6288620083201273235

`lt[A118442(A118461(n+4)), A118438(2*(n+2))]`
-/

namespace A343013.P6288620083201273235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118442 (A118461 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118438 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343013.P6288620083201273235

/-!
# A343014: Number with a record number of divisors whose prime factorizations contain no repeated exponents.

The programs for A343014, there is no canonical definition to state claims against.
-/

/-! ## A343014.P18070939691961513670

`∩[A044960(n+1), A087980(n+1)]`
-/

namespace A343014.P18070939691961513670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343014.P18070939691961513670

/-! ## A343014.P9471028033465536323

`∩[A029956(n+1), A384659(n+1)]`
-/

namespace A343014.P9471028033465536323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343014.P9471028033465536323

/-! ## A343014.P10056627458041866769

`∩[A044960(n+1), A384659(n+1)]`
-/

namespace A343014.P10056627458041866769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343014.P10056627458041866769

/-! ## A343014.P7496099010572918478

`∩[A072618(n+1), A384659(n+1)]`
-/

namespace A343014.P7496099010572918478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343014.P7496099010572918478

/-! ## A343014.P18024194049309519658

`∩[A297274(n+1), A384659(n+1)]`
-/

namespace A343014.P18024194049309519658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343014.P18024194049309519658

/-!
# A343016: a(n) is the least nonnegative m such that m*n + A001414(n) is not prime.

The programs for A343016, there is no canonical definition to state claims against.
-/

/-! ## A343016.P10115686023808043689

`and(A083345(n+1), A133502(A019431(n)))`
-/

namespace A343016.P10115686023808043689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083345 (n + 1)) (A133502 (A019431 n).toNat)

end

end A343016.P10115686023808043689

/-! ## A343016.P8805872716148895075

`A364912(A392382(n+1)%A125199(n+1))`
-/

namespace A343016.P8805872716148895075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364912 (Int.tmod (A392382 (n + 1)) (A125199 (n + 1))).toNat

end

end A343016.P8805872716148895075

/-! ## A343016.P1361672411731895599

`A352741(A327963(n+1))%A238189(n+5)`
-/

namespace A343016.P1361672411731895599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352741 (A327963 (n + 1)).toNat) (A238189 (n + 5))

end

end A343016.P1361672411731895599

/-! ## A343016.P10156377043157007204

`A056962(A351245(n+1))%∏{p}[n+1, #]`
-/

namespace A343016.P10156377043157007204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056962 (A351245 (n + 1)).toNat) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A343016.P10156377043157007204

/-! ## A343016.P6598330696349987948

`A087097(n^4+n+1)%A336846(n+1)`
-/

namespace A343016.P6598330696349987948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087097 (n ^ 4 + (n + 1))) (A336846 (n + 1))

end

end A343016.P6598330696349987948

/-!
# A343017: a(1)=1. For n > 1, a(n) is the n-th positive integer after a(n-1) which cannot be written as a sum of distinct preceding terms in the sequence.

The programs for A343017, there is no canonical definition to state claims against.
-/

/-! ## A343017.P14702718709137560446

`A243174(n+1)+A002024(A000110(n+1))`
-/

namespace A343017.P14702718709137560446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1) + A002024 (A000110 (n + 1)).toNat

end

end A343017.P14702718709137560446

/-!
# A343018: a(n) is the smallest number m such that tau(m+1) = tau(m) + n.

The programs for A343018, there is no canonical definition to state claims against.
-/

/-! ## A343018.P13761883258773561441

`A086550(n)-1`
-/

namespace A343018.P13761883258773561441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086550 n - 1

end

end A343018.P13761883258773561441

/-! ## A343018.P6381359075204629467

`A134824(n+2)+A086550(n)`
-/

namespace A343018.P6381359075204629467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A086550 n

end

end A343018.P6381359075204629467

/-! ## A343018.P40394016579158717

`A153881(n+2)+A086550(n)`
-/

namespace A343018.P40394016579158717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A086550 n

end

end A343018.P40394016579158717

/-! ## A343018.P9708808233297667129

`abs(A086550(n)+A057428(n+1))`
-/

namespace A343018.P9708808233297667129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086550 n + A057428 (n + 1)|

end

end A343018.P9708808233297667129

/-! ## A343018.P10877282985025874781

`xor(-A086550(n), A057428(3*n+4))`
-/

namespace A343018.P10877282985025874781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A086550 n) (A057428 (3 * n + 4))

end

end A343018.P10877282985025874781

/-! ## A343018.P5299173130092019227

`A105812(A145046(n))+A086550(n)`
-/

namespace A343018.P5299173130092019227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A145046 n).toNat + A086550 n

end

end A343018.P5299173130092019227

/-!
# A343020: a(n) is the smallest prime p such that tau(p+1) = 2^n.

The programs for A343020, there is no canonical definition to state claims against.
-/

/-! ## A343020.P8995329329108973286

`A086550(∑[2^n]-1)-1`
-/

namespace A343020.P8995329329108973286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086550 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - 1

end

end A343020.P8995329329108973286

/-! ## A343020.P7197087201270580146

`A340799(2^n)`
-/

namespace A343020.P7197087201270580146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340799 (2 ^ n)

end

end A343020.P7197087201270580146

/-! ## A343020.P4345441965592921137

`record[A340799(A122111(n+1))]`
-/

namespace A343020.P4345441965592921137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340799 (A122111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343020.P4345441965592921137

/-! ## A343020.P17935195750223121095

`record[A340799(A393918(n+1))]`
-/

namespace A343020.P17935195750223121095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340799 (A393918 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343020.P17935195750223121095

/-!
# A343021: Positions of records in A343016.

The programs for A343021, there is no canonical definition to state claims against.
-/

/-! ## A343021.P3284734054093826681

`A342262(n*(a(n-1)+1))` with `a(0)=1`
-/

namespace A343021.P3284734054093826681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A342262 ((n : ℤ) * (a (n - 1) + 1)).toNat

end

end A343021.P3284734054093826681

/-!
# A343022: Discriminants with exactly 1 associated cyclic cubic field.

The programs for A343022, the canonical program `A343022.P16274586819737777029` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343022 has offset 1).

The definition of A343022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 922 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343022.P9432451913718078213

`record[A034699(A343001(n+1))²]`
-/

namespace A343022.P9432451913718078213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A343001 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343022.P9432451913718078213

namespace A343022

/-- `record[A034699(A343001(n+1))²]` -/
def P9432451913718078213.Spec : Prop :=
  ∀ n, P9432451913718078213.a n = A343022 (n + 1)

end A343022

/-! ## A343022.P10620531304167661519

`∩[A286095(n+1), A343000(n+1)]`
-/

namespace A343022.P10620531304167661519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343022.P10620531304167661519

namespace A343022

/-- `∩[A286095(n+1), A343000(n+1)]` -/
def P10620531304167661519.Spec : Prop :=
  ∀ n, (P10620531304167661519.a n : ℤ) = A343022 (n + 1)

end A343022

/-! ## A343022.P694078077985910176

`∩[A082522(n+1), A343000(n+1)]`
-/

namespace A343022.P694078077985910176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343022.P694078077985910176

namespace A343022

/-- `∩[A082522(n+1), A343000(n+1)]` -/
def P694078077985910176.Spec : Prop :=
  ∀ n, (P694078077985910176.a n : ℤ) = A343022 (n + 1)

end A343022

/-! ## A343022.P5351830540679269113

`∩[A056798(n+1), A343000(n+1)]`
-/

namespace A343022.P5351830540679269113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343022.P5351830540679269113

namespace A343022

/-- `∩[A056798(n+1), A343000(n+1)]` -/
def P5351830540679269113.Spec : Prop :=
  ∀ n, (P5351830540679269113.a n : ℤ) = A343022 (n + 1)

end A343022

/-! ## A343022.P9969747847478506305

`∩[A228004(n+1), A343000(n+1)]`
-/

namespace A343022.P9969747847478506305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343022.P9969747847478506305

namespace A343022

/-- `∩[A228004(n+1), A343000(n+1)]` -/
def P9969747847478506305.Spec : Prop :=
  ∀ n, (P9969747847478506305.a n : ℤ) = A343022 (n + 1)

end A343022

/-! ## A343022.P1918725422765041888

`∩[A244623(n+1), A343000(n+1)]`
-/

namespace A343022.P1918725422765041888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343022.P1918725422765041888

namespace A343022

/-- `∩[A244623(n+1), A343000(n+1)]` -/
def P1918725422765041888.Spec : Prop :=
  ∀ n, (P1918725422765041888.a n : ℤ) = A343022 (n + 1)

end A343022

/-! ## A343022.P3799096604475768520

`∩[A025475(n+1), A343000(n+1)]`
-/

namespace A343022.P3799096604475768520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343022.P3799096604475768520

namespace A343022

/-- `∩[A025475(n+1), A343000(n+1)]` -/
def P3799096604475768520.Spec : Prop :=
  ∀ n, (P3799096604475768520.a n : ℤ) = A343022 (n + 1)

end A343022

/-! ## A343022.P14088877518350322147

`∩[A073540(n+1), A343000(n+1)]`
-/

namespace A343022.P14088877518350322147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343022.P14088877518350322147

namespace A343022

/-- `∩[A073540(n+1), A343000(n+1)]` -/
def P14088877518350322147.Spec : Prop :=
  ∀ n, (P14088877518350322147.a n : ℤ) = A343022 (n + 1)

end A343022

/-! ## A343022.P6957242766726762263

`∩[A134612(n+1), A343000(n+1)]`
-/

namespace A343022.P6957242766726762263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343022.P6957242766726762263

namespace A343022

/-- `∩[A134612(n+1), A343000(n+1)]` -/
def P6957242766726762263.Spec : Prop :=
  ∀ n, (P6957242766726762263.a n : ℤ) = A343022 (n + 1)

end A343022

/-! ## A343022.P13851476212821991432

`∩[A249125(n+1), A343000(n+1)]`
-/

namespace A343022.P13851476212821991432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343022.P13851476212821991432

namespace A343022

/-- `∩[A249125(n+1), A343000(n+1)]` -/
def P13851476212821991432.Spec : Prop :=
  ∀ n, (P13851476212821991432.a n : ℤ) = A343022 (n + 1)

end A343022

/-! ## A343022.P6256121710008910103

`∩[A134611(n+1), A343000(n+1)]`
-/

namespace A343022.P6256121710008910103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343022.P6256121710008910103

namespace A343022

/-- `∩[A134611(n+1), A343000(n+1)]` -/
def P6256121710008910103.Spec : Prop :=
  ∀ n, (P6256121710008910103.a n : ℤ) = A343022 (n + 1)

end A343022

/-! ## A343022.P13548413008710495783

`∩[A306531(n+1), A343000(n+1)]`
-/

namespace A343022.P13548413008710495783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343022.P13548413008710495783

namespace A343022

/-- `∩[A306531(n+1), A343000(n+1)]` -/
def P13548413008710495783.Spec : Prop :=
  ∀ n, (P13548413008710495783.a n : ℤ) = A343022 (n + 1)

end A343022

/-! ## A343022.P16274586819737777029

`(eq[1, A343023(n+1)]+1)²`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A343022

/-- `(eq[1, A343023(n+1)]+1)²` -/
def P16274586819737777029.Spec : Prop :=
  ∀ n, (P16274586819737777029.a n : ℤ) = A343022 (n + 1)

theorem P16274586819737777029.correct : P16274586819737777029.Spec := by
  intro n
  simp only [A343022, Nat.add_sub_cancel]

end A343022

/-! ## A343022.P7188140601401960925

`record[A343000(n+1)/A343023(A343001(n+1))]`
-/

namespace A343022.P7188140601401960925
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343000 (n + 1) : ℚ) / (A343023 (A343001 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343022.P7188140601401960925

namespace A343022

/-- `record[A343000(n+1)/A343023(A343001(n+1))]` -/
def P7188140601401960925.Spec : Prop :=
  ∀ n, P7188140601401960925.a n = (A343022 (n + 1) : ℚ)

end A343022

/-! ## A343022.P11121392006012248752

`∩[A343000(n+1), A372724(n+1)]`
-/

namespace A343022.P11121392006012248752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343022.P11121392006012248752

namespace A343022

/-- `∩[A343000(n+1), A372724(n+1)]` -/
def P11121392006012248752.Spec : Prop :=
  ∀ n, (P11121392006012248752.a n : ℤ) = A343022 (n + 1)

end A343022

/-! ## A343022.P8304681474975777201

`(eq[2, A160498(n+1)]+1)²`
-/

namespace A343022.P8304681474975777201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A343022.P8304681474975777201

namespace A343022

/-- `(eq[2, A160498(n+1)]+1)²` -/
def P8304681474975777201.Spec : Prop :=
  ∀ n, (P8304681474975777201.a n : ℤ) = A343022 (n + 1)

end A343022

/-! ## A343022.P3586387910241109904

`A079097(eq[1, A343023(n+1)])²`
-/

namespace A343022.P3586387910241109904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A343022.P3586387910241109904

namespace A343022

/-- `A079097(eq[1, A343023(n+1)])²` -/
def P3586387910241109904.Spec : Prop :=
  ∀ n, P3586387910241109904.a n = A343022 (n + 1)

end A343022

/-! ## A343022.P5223324445899839653

`eq[A018783(n)+2, A110551(n)]²`
-/

namespace A343022.P5223324445899839653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110551 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A343022.P5223324445899839653

namespace A343022

/-- `eq[A018783(n)+2, A110551(n)]²` -/
def P5223324445899839653.Spec : Prop :=
  ∀ n, (P5223324445899839653.a n : ℤ) = A343022 (n + 1)

end A343022

/-! ## A343022.P9990498226701106514

`eq[A010160(2*n+1), A032741(n)]²`
-/

namespace A343022.P9990498226701106514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010160 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A343022.P9990498226701106514

namespace A343022

/-- `eq[A010160(2*n+1), A032741(n)]²` -/
def P9990498226701106514.Spec : Prop :=
  ∀ n, (P9990498226701106514.a n : ℤ) = A343022 (n + 1)

end A343022

/-!
# A343023: Number of cyclic cubic fields with discriminant n^2.

The programs for A343023, the canonical program `A343023.P3905545394748964052` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343023 has offset 1).

The definition of A343023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343023.P3905545394748964052

`floor(A160498(n+1)/2)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A343023

/-- `floor(A160498(n+1)/2)` -/
def P3905545394748964052.Spec : Prop :=
  ∀ n, P3905545394748964052.a n = A343023 (n + 1)

theorem P3905545394748964052.correct : P3905545394748964052.Spec := by
  intro n
  simp only [A343023, Nat.add_sub_cancel]

end A343023

/-! ## A343023.P17644981422512245787

`A019426(n)*A160498(n+1)/2`
-/

namespace A343023.P17644981422512245787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019426 n * A160498 (n + 1) : ℚ) / 2

end

end A343023.P17644981422512245787

namespace A343023

/-- `A019426(n)*A160498(n+1)/2` -/
def P17644981422512245787.Spec : Prop :=
  ∀ n, P17644981422512245787.a n = (A343023 (n + 1) : ℚ)

end A343023

/-! ## A343023.P3567109209730490757

`A004526(A019426(n)*A160498(n+1))`
-/

namespace A343023.P3567109209730490757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A019426 n * A160498 (n + 1)).toNat

end

end A343023.P3567109209730490757

namespace A343023

/-- `A004526(A019426(n)*A160498(n+1))` -/
def P3567109209730490757.Spec : Prop :=
  ∀ n, P3567109209730490757.a n = A343023 (n + 1)

end A343023

/-! ## A343023.P13232579344038145722

`A014682(A019426(n)*A160498(n+1))`
-/

namespace A343023.P13232579344038145722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A019426 n * A160498 (n + 1)).toNat

end

end A343023.P13232579344038145722

namespace A343023

/-- `A014682(A019426(n)*A160498(n+1))` -/
def P13232579344038145722.Spec : Prop :=
  ∀ n, P13232579344038145722.a n = A343023 (n + 1)

end A343023

/-! ## A343023.P12871502453789479777

`A026741(A019426(n)*A160498(n+1))`
-/

namespace A343023.P12871502453789479777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A019426 n * A160498 (n + 1)).toNat

end

end A343023.P12871502453789479777

namespace A343023

/-- `A026741(A019426(n)*A160498(n+1))` -/
def P12871502453789479777.Spec : Prop :=
  ∀ n, P12871502453789479777.a n = A343023 (n + 1)

end A343023

/-! ## A343023.P12767833136590846172

`A004526(A057979(n)*A160498(n+1))`
-/

namespace A343023.P12767833136590846172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057979 n * A160498 (n + 1)).toNat

end

end A343023.P12767833136590846172

namespace A343023

/-- `A004526(A057979(n)*A160498(n+1))` -/
def P12767833136590846172.Spec : Prop :=
  ∀ n, P12767833136590846172.a n = A343023 (n + 1)

end A343023

/-! ## A343023.P6979970342910623102

`A004526(A160498(n+1)^A019426(n))`
-/

namespace A343023.P6979970342910623102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A160498 (n + 1) : ℚ) ^ (A019426 n : ℤ))).toNat

end

end A343023.P6979970342910623102

namespace A343023

/-- `A004526(A160498(n+1)^A019426(n))` -/
def P6979970342910623102.Spec : Prop :=
  ∀ n, P6979970342910623102.a n = A343023 (n + 1)

end A343023

/-! ## A343023.P16372031869872607178

`A066882((n+1)^A160498(n+1))`
-/

namespace A343023.P16372031869872607178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A160498 (n + 1) : ℤ))).toNat

end

end A343023.P16372031869872607178

namespace A343023

/-- `A066882((n+1)^A160498(n+1))` -/
def P16372031869872607178.Spec : Prop :=
  ∀ n, P16372031869872607178.a n = A343023 (n + 1)

end A343023

/-! ## A343023.P4698237738013030224

`A057979(A060632(n)^A160498(n+1))`
-/

namespace A343023.P4698237738013030224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (SequenceMachineLib.roundAway ((A060632 n : ℚ) ^ (A160498 (n + 1) : ℤ))).toNat

end

end A343023.P4698237738013030224

namespace A343023

/-- `A057979(A060632(n)^A160498(n+1))` -/
def P4698237738013030224.Spec : Prop :=
  ∀ n, P4698237738013030224.a n = A343023 (n + 1)

end A343023

/-! ## A343023.P15909234672972436300

`A057979(A046523(n+1)^A160498(n+1))`
-/

namespace A343023.P15909234672972436300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (SequenceMachineLib.roundAway ((A046523 (n + 1) : ℚ) ^ (A160498 (n + 1) : ℤ))).toNat

end

end A343023.P15909234672972436300

namespace A343023

/-- `A057979(A046523(n+1)^A160498(n+1))` -/
def P15909234672972436300.Spec : Prop :=
  ∀ n, P15909234672972436300.a n = A343023 (n + 1)

end A343023

/-!
# A343024: Discriminants with at least 2 associated cyclic cubic fields.

The programs for A343024, there is no canonical definition to state claims against.
-/

/-! ## A343024.P17053511942246666075

`A343025(n+1)²`
-/

namespace A343024.P17053511942246666075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343025 (n + 1) ^ 2

end

end A343024.P17053511942246666075

/-! ## A343024.P7528701686957124745

`A343025(n+1)^A020639(2*(n+1))`
-/

namespace A343024.P7528701686957124745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343025 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A343024.P7528701686957124745

/-! ## A343024.P4764789768869650578

`A343025(A000027(n+1))*A343025(n+1)`
-/

namespace A343024.P4764789768869650578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343025 (A000027 (n + 1)).toNat * A343025 (n + 1)

end

end A343024.P4764789768869650578

/-! ## A343024.P17145120156046453664

`A343025(n+1)^A000005(A002476(n+1))`
-/

namespace A343024.P17145120156046453664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343025 (n + 1) : ℚ) ^ (A000005 (A002476 (n + 1)).toNat : ℤ)

end

end A343024.P17145120156046453664

/-! ## A343024.P10113781053432565879

`A343025(n+1)^A000005(A003627(n+1))`
-/

namespace A343024.P10113781053432565879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343025 (n + 1) : ℚ) ^ (A000005 (A003627 (n + 1)).toNat : ℤ)

end

end A343024.P10113781053432565879

/-! ## A343024.P15248306187911893328

`A343025(n+1)^A000005(A155555(n+1))`
-/

namespace A343024.P15248306187911893328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343025 (n + 1) : ℚ) ^ (A000005 (A155555 (n + 1)).toNat : ℤ)

end

end A343024.P15248306187911893328

/-! ## A343024.P4980000625887768126

`A343025(n+1)^A001221(A343003(n+1))`
-/

namespace A343024.P4980000625887768126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343025 (n + 1) : ℚ) ^ (A001221 (A343003 (n + 1)).toNat : ℤ)

end

end A343024.P4980000625887768126

/-! ## A343024.P9881327575985571562

`A343025(n+1)*A343025((n+1)%A103604(n))`
-/

namespace A343024.P9881327575985571562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343025 (n + 1) * A343025 (Int.tmod (n + 1 : ℤ) (A103604 n)).toNat

end

end A343024.P9881327575985571562

/-! ## A343024.P12690991635884601559

`or(A267776(n), A343025(n+1))*A343025(n+1)`
-/

namespace A343024.P12690991635884601559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267776 n) (A343025 (n + 1)) * A343025 (n + 1)

end

end A343024.P12690991635884601559

/-! ## A343024.P17572733294460259552

`A343025(n+1)^A000124(A000124(C(n, n+1)))`
-/

namespace A343024.P17572733294460259552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343025 (n + 1) : ℚ) ^ (A000124 (A000124 (Nat.choose n (n + 1))).toNat : ℤ)

end

end A343024.P17572733294460259552

/-! ## A343024.P1440913384135562996

`A343025(n+1)^A006530(A005843(A060632(n)))`
-/

namespace A343024.P1440913384135562996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343025 (n + 1) : ℚ) ^ (A006530 (A005843 (A060632 n).toNat).toNat : ℤ)

end

end A343024.P1440913384135562996

/-! ## A343024.P14944480728550978060

`A249740(A249740(n+1))*A343025(n+1)*A343025(n+1)`
-/

namespace A343024.P14944480728550978060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (A249740 (n + 1)).toNat * A343025 (n + 1) * A343025 (n + 1)

end

end A343024.P14944480728550978060

/-! ## A343024.P13031610177610248406

`A343025(n+1)%A343025(n+2)*A343025(n+1)`
-/

namespace A343024.P13031610177610248406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343025 (n + 1)) (A343025 (n + 2)) * A343025 (n + 1)

end

end A343024.P13031610177610248406

/-! ## A343024.P7147103673058129276

`∩[A193417(n+1), A343001(n+1)]²`
-/

namespace A343024.P7147103673058129276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A343024.P7147103673058129276

/-! ## A343024.P18245931298492768418

`A343025(n+1)^A160498(A002476(n+3))`
-/

namespace A343024.P18245931298492768418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343025 (n + 1) : ℚ) ^ (A160498 (A002476 (n + 3)).toNat : ℤ)

end

end A343024.P18245931298492768418

/-! ## A343024.P15586664228668801453

`(lt[2, A160498(n+1)]+1)²`
-/

namespace A343024.P15586664228668801453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A343024.P15586664228668801453

/-! ## A343024.P1689500993595709579

`∩[A061346(n+1), A343001(n+1)]²`
-/

namespace A343024.P1689500993595709579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A343024.P1689500993595709579

/-! ## A343024.P9105687233738614894

`∩[∩[A216419(n+1), n²], A343000(n+1)]`
-/

namespace A343024.P9105687233738614894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216419 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = x) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A343024.P9105687233738614894

/-! ## A343024.P315465745279984763

`∩[A226025(n+1), A343001(n+1)]²`
-/

namespace A343024.P315465745279984763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A343024.P315465745279984763

/-! ## A343024.P2355599002916816432

`∩[A343001(n+1), A374476(n+1)]²`
-/

namespace A343024.P2355599002916816432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A343024.P2355599002916816432

/-!
# A343025: Numbers k such that there are at least 2 cyclic cubic fields with discriminant k^2.

The programs for A343025, there is no canonical definition to state claims against.
-/

/-! ## A343025.P9600892905515074332

`sqrt(A343024(n+1))`
-/

namespace A343025.P9600892905515074332
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A343024 (n + 1) : ℝ)

end

end A343025.P9600892905515074332

/-! ## A343025.P7422685115278632363

`A000027(root(A343024(n+1), 2))`
-/

namespace A343025.P7422685115278632363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A343024 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A343025.P7422685115278632363

/-! ## A343025.P7924447335730583010

`filter[A343001(n+1), A354108(#)]`
-/

namespace A343025.P7924447335730583010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A343025.P7924447335730583010

/-! ## A343025.P11444028007042898196

`filter[A343001(n+3), A005171(#)]`
-/

namespace A343025.P11444028007042898196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A343025.P11444028007042898196

/-! ## A343025.P12701942911056501867

`filter[A343001(n+3), A066247(#)]`
-/

namespace A343025.P12701942911056501867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A343025.P12701942911056501867

/-! ## A343025.P2340159627584521827

`filter[A343001(n+3), A202238(#)]`
-/

namespace A343025.P2340159627584521827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A343025.P2340159627584521827

/-! ## A343025.P3381930681875015022

`filter[A343001(n+3), A292438(#)]`
-/

namespace A343025.P3381930681875015022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A343025.P3381930681875015022

/-! ## A343025.P7036974255540812779

`filter[A343001(n+3), A323162(#)]`
-/

namespace A343025.P7036974255540812779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A343025.P7036974255540812779

/-! ## A343025.P15934058306188509411

`filter[A343001(n+3), A174898(#)]`
-/

namespace A343025.P15934058306188509411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A343025.P15934058306188509411

/-! ## A343025.P12340289409608650770

`∩[A193417(n+1), A343001(n+1)]`
-/

namespace A343025.P12340289409608650770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343025.P12340289409608650770

/-! ## A343025.P8151939118725524956

`lt[2, A160498(n+1)]+1`
-/

namespace A343025.P8151939118725524956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A343025.P8151939118725524956

/-! ## A343025.P17475233178600946844

`A026741(root(A343024(n+1), 2))`
-/

namespace A343025.P17475233178600946844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A343024 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A343025.P17475233178600946844

/-! ## A343025.P14486035970174239754

`A109613(root(A343024(n+1), 2))`
-/

namespace A343025.P14486035970174239754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.roundAway ((A343024 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A343025.P14486035970174239754

/-! ## A343025.P1472797811816640793

`A254667(root(A343024(n+1), 2))`
-/

namespace A343025.P1472797811816640793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.roundAway ((A343024 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A343025.P1472797811816640793

/-! ## A343025.P18362637355874260039

`filter[A343001(n+1), A143731(#)]`
-/

namespace A343025.P18362637355874260039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A343025.P18362637355874260039

/-! ## A343025.P8351933788386587096

`∩[A061346(n+1), A343001(n+1)]`
-/

namespace A343025.P8351933788386587096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343025.P8351933788386587096

/-! ## A343025.P13303651773491204737

`∩[A082686(n+1), A343001(n+1)]`
-/

namespace A343025.P13303651773491204737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343025.P13303651773491204737

/-! ## A343025.P1722505351479582238

`∩[A226025(n+1), A343001(n+1)]`
-/

namespace A343025.P1722505351479582238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343025.P1722505351479582238

/-! ## A343025.P4612851136067313663

`∩[A343001(n+1), A374476(n+1)]`
-/

namespace A343025.P4612851136067313663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343025.P4612851136067313663

/-!
# A343026: a(n) is the smallest positive integer such that there exists no positive integer k with 2k < n where a(n-2k)*a(n-k)=a(n).

The programs for A343026, there is no canonical definition to state claims against.
-/

/-! ## A343026.P4033754191707396775

`A302255(A276204(n))+1`
-/

namespace A343026.P4033754191707396775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302255 (A276204 n).toNat + 1

end

end A343026.P4033754191707396775

/-! ## A343026.P16003822022719914244

`∑{e}[∏{p}[A000984(A276204(n)+1)/2, #], #]+1`
-/

namespace A343026.P16003822022719914244
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (A276204 n + 1).toNat : ℚ) / 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1

end

end A343026.P16003822022719914244

/-! ## A343026.P3315517423226496294

`A218800(A300222(n))`
-/

namespace A343026.P3315517423226496294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218800 (A300222 n).toNat

end

end A343026.P3315517423226496294

/-! ## A343026.P6434380307148349571

`A218800(2*A374362(n))`
-/

namespace A343026.P6434380307148349571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218800 (2 * A374362 n).toNat

end

end A343026.P6434380307148349571

/-! ## A343026.P3294144057292472626

`A235224(3^A276204(n))`
-/

namespace A343026.P3294144057292472626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A276204 n : ℤ))).toNat

end

end A343026.P3294144057292472626

/-! ## A343026.P2423806792129926628

`A267263(3^A276204(n))`
-/

namespace A343026.P2423806792129926628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A276204 n : ℤ))).toNat

end

end A343026.P2423806792129926628

/-! ## A343026.P9954527705274576221

`A097849((A276204(n)+1)²)`
-/

namespace A343026.P9954527705274576221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097849 ((A276204 n + 1) ^ 2).toNat

end

end A343026.P9954527705274576221

/-! ## A343026.P515442172102255328

`A235963(A033715(A300222(n)²))`
-/

namespace A343026.P515442172102255328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A033715 (A300222 n ^ 2).toNat).toNat

end

end A343026.P515442172102255328

/-! ## A343026.P998946498599433279

`A001511(10^A003002(A276204(n)))`
-/

namespace A343026.P998946498599433279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A003002 (A276204 n).toNat : ℤ))).toNat

end

end A343026.P998946498599433279

/-! ## A343026.P17992361898881215446

`A279060(A137688(n))+A126302(A276204(n))`
-/

namespace A343026.P17992361898881215446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A137688 n).toNat + A126302 (A276204 n).toNat

end

end A343026.P17992361898881215446

/-! ## A343026.P6668500927130724770

`A003002(A276204(n)%A003003(n+1))+1`
-/

namespace A343026.P6668500927130724770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (Int.tmod (A276204 n) (A003003 (n + 1))).toNat + 1

end

end A343026.P6668500927130724770

/-! ## A343026.P6971272956400591163

`A218800(A060373(n))`
-/

namespace A343026.P6971272956400591163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218800 (A060373 n).toNat

end

end A343026.P6971272956400591163

/-!
# A343027: Numbers whose concatenation of prime factors in increasing order is a prime number.

The programs for A343027, there is no canonical definition to state claims against.
-/

/-! ## A343027.P14228750013454865113

`∪[A000040(n+1), A046411(n+1)]`
-/

namespace A343027.P14228750013454865113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343027.P14228750013454865113

/-! ## A343027.P6494611058690601161

`∪[A046411(n+1), A116974(n+1)]`
-/

namespace A343027.P6494611058690601161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343027.P6494611058690601161

/-! ## A343027.P2814767814576878169

`∪[A046411(n+1), record[A006530(n+2)]]`
-/

namespace A343027.P2814767814576878169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343027.P2814767814576878169

/-! ## A343027.P8391099189105590065

`∪[record[A000010(n+1)+1], A046411(n+1)]`
-/

namespace A343027.P8391099189105590065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A343027.P8391099189105590065

/-!
# A343028: a(n) = floor(11*n / 3).

The programs for A343028, the canonical program `A343028.P12351070040027246788` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343028 has offset 0).

The definition of A343028 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11*n/3)` (program `A343028.P12351070040027246788`, by `A343028.P12351070040027246788.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A343028.P12351070040027246788

`floor(11*n/3)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A343028

/-- `floor(11*n/3)` -/
def P12351070040027246788.Spec : Prop :=
  ∀ n, P12351070040027246788.a n = A343028 n

theorem P12351070040027246788.correct : P12351070040027246788.Spec := by
  intro n
  simp only [A343028]

end A343028

/-! ## A343028.P3464208731572526769

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=7, a(3)=11`
-/

namespace A343028.P3464208731572526769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 7, 11] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A343028.P3464208731572526769

namespace A343028

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P3464208731572526769.Spec : Prop :=
  ∀ n, P3464208731572526769.a n = A343028 n

end A343028

/-! ## A343028.P16144328998712971434

`A002264(A008593(n))`
-/

namespace A343028.P16144328998712971434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008593 n).toNat

end

end A343028.P16144328998712971434

namespace A343028

/-- `A002264(A008593(n))` -/
def P16144328998712971434.Spec : Prop :=
  ∀ n, P16144328998712971434.a n = A343028 n

end A343028

/-! ## A343028.P16947435277547579938

`record[n-(7*n)%11]`
-/

namespace A343028.P16947435277547579938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((7 * n % 11 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343028.P16947435277547579938

namespace A343028

/-- `record[n-(7*n)%11]` -/
def P16947435277547579938.Spec : Prop :=
  ∀ n, P16947435277547579938.a n = A343028 n

end A343028

/-! ## A343028.P14622142076263133965

`a(n-3)+11` with `a(0)=0, a(1)=3, a(2)=7`
-/

namespace A343028.P14622142076263133965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 7] fun n a =>
  a (n - 3) + 11

end

end A343028.P14622142076263133965

namespace A343028

/-- `a(n-3)+11` -/
def P14622142076263133965.Spec : Prop :=
  ∀ n, (P14622142076263133965.a n : ℤ) = A343028 n

end A343028

/-! ## A343028.P6906598429697266015

`∑[4-∑[n]%3]-4`
-/

namespace A343028.P6906598429697266015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A343028.P6906598429697266015

namespace A343028

/-- `∑[4-∑[n]%3]-4` -/
def P6906598429697266015.Spec : Prop :=
  ∀ n, P6906598429697266015.a n = A343028 n

end A343028

/-! ## A343028.P6369051534435517110

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=4`
-/

namespace A343028.P6369051534435517110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343028.P6369051534435517110

namespace A343028

/-- `∑[abs(a(n-3))]` -/
def P6369051534435517110.Spec : Prop :=
  ∀ n, (P6369051534435517110.a n : ℤ) = A343028 n

end A343028

/-! ## A343028.P6741366957897927740

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A343028.P6741366957897927740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343028.P6741366957897927740

namespace A343028

/-- `∑[floor(a(n-3))]` -/
def P6741366957897927740.Spec : Prop :=
  ∀ n, (P6741366957897927740.a n : ℤ) = A343028 n

end A343028

/-! ## A343028.P5367922254292923519

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A343028.P5367922254292923519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343028.P5367922254292923519

namespace A343028

/-- `∑[ceil(a(n-3))]` -/
def P5367922254292923519.Spec : Prop :=
  ∀ n, (P5367922254292923519.a n : ℤ) = A343028 n

end A343028

/-! ## A343028.P13173094384914117396

`ogf((3x+4x^2+4x^3)/(1-x-x^3+x^4))`
-/

namespace A343028.P13173094384914117396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 4, 4] [1, -1, 0, -1, 1] n

end

end A343028.P13173094384914117396

namespace A343028

/-- `ogf((3x+4x^2+4x^3)/(1-x-x^3+x^4))` -/
def P13173094384914117396.Spec : Prop :=
  ∀ n, P13173094384914117396.a n = A343028 n

end A343028

/-! ## A343028.P12641654508256822712

`∑[7-a(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=4`
-/

namespace A343028.P12641654508256822712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4, 4] fun n f1 =>
  7 - f1 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343028.P12641654508256822712

namespace A343028

/-- `∑[7-a(a(n-3))]` -/
def P12641654508256822712.Spec : Prop :=
  ∀ n, P12641654508256822712.a n = A343028 n

end A343028

/-! ## A343028.P14184051288665924913

`4-((n%3)%2-a(n-1))` with `a(0)=0`
-/

namespace A343028.P14184051288665924913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 - (((n % 3 % 2 : ℕ) : ℤ) - a (n - 1))

end

end A343028.P14184051288665924913

namespace A343028

/-- `4-((n%3)%2-a(n-1))` -/
def P14184051288665924913.Spec : Prop :=
  ∀ n, P14184051288665924913.a n = A343028 n

end A343028

/-! ## A343028.P6188502236047178303

`ceil(lcm(4, 2*n+1)/3+n-2)`
-/

namespace A343028.P6188502236047178303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 4 (2 * n + 1) : ℚ) / 3 + ((n : ℤ) - 2 : ℚ)⌉

end

end A343028.P6188502236047178303

namespace A343028

/-- `ceil(lcm(4, 2*n+1)/3+n-2)` -/
def P6188502236047178303.Spec : Prop :=
  ∀ n, P6188502236047178303.a n = A343028 n

end A343028

/-! ## A343028.P1213859093183307427

`record[and(3, n-1)+2*n]+n-3`
-/

namespace A343028.P1213859093183307427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((n : ℤ) - 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n : ℤ) - 3)

end

end A343028.P1213859093183307427

namespace A343028

/-- `record[and(3, n-1)+2*n]+n-3` -/
def P1213859093183307427.Spec : Prop :=
  ∀ n, P1213859093183307427.a n = A343028 n

end A343028

/-! ## A343028.P16720346362474334288

`A047618(n+1)+n`
-/

namespace A343028.P16720346362474334288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047618 (n + 1) + (n : ℤ)

end

end A343028.P16720346362474334288

namespace A343028

/-- `A047618(n+1)+n` -/
def P16720346362474334288.Spec : Prop :=
  ∀ n, P16720346362474334288.a n = A343028 n

end A343028

/-! ## A343028.P12483123296694852639

`A004523(n)+3*n`
-/

namespace A343028.P12483123296694852639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n + (3 * n : ℤ)

end

end A343028.P12483123296694852639

namespace A343028

/-- `A004523(n)+3*n` -/
def P12483123296694852639.Spec : Prop :=
  ∀ n, P12483123296694852639.a n = A343028 n

end A343028

/-! ## A343028.P2076881303287268444

`A047400(n+1)-1+n`
-/

namespace A343028.P2076881303287268444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047400 (n + 1) - 1 + (n : ℤ)

end

end A343028.P2076881303287268444

namespace A343028

/-- `A047400(n+1)-1+n` -/
def P2076881303287268444.Spec : Prop :=
  ∀ n, P2076881303287268444.a n = A343028 n

end A343028

/-!
# A343029: Number of 1-bits in the binary expansion of n which have an even number of 0-bits at less significant bit positions.

The programs for A343029, the canonical program `A343029.P9025480771425565583` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343029 has offset 0).

The definition of A343029 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004718, A343030, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343029.P9025480771425565583

`A004718(n)+A343030(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A343029

/-- `A004718(n)+A343030(n)` -/
def P9025480771425565583.Spec : Prop :=
  ∀ n, P9025480771425565583.a n = A343029 n

theorem P9025480771425565583.correct : P9025480771425565583.Spec := by
  intro n
  simp only [A343029]

end A343029

/-! ## A343029.P2736239921032436347

`A000120(n)-A343030(n)`
-/

namespace A343029.P2736239921032436347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A343030 n

end

end A343029.P2736239921032436347

namespace A343029

/-- `A000120(n)-A343030(n)` -/
def P2736239921032436347.Spec : Prop :=
  ∀ n, P2736239921032436347.a n = A343029 n

end A343029

/-! ## A343029.P4640459870466076820

`(A004718(n)+A000120(n))/2`
-/

namespace A343029.P4640459870466076820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004718 n + A000120 n : ℚ) / 2

end

end A343029.P4640459870466076820

namespace A343029

/-- `(A004718(n)+A000120(n))/2` -/
def P4640459870466076820.Spec : Prop :=
  ∀ n, P4640459870466076820.a n = (A343029 n : ℚ)

end A343029

/-! ## A343029.P9861272702143720676

`A004526(A004718(n)+A000120(n))`
-/

namespace A343029.P9861272702143720676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004718 n + A000120 n).toNat

end

end A343029.P9861272702143720676

namespace A343029

/-- `A004526(A004718(n)+A000120(n))` -/
def P9861272702143720676.Spec : Prop :=
  ∀ n, P9861272702143720676.a n = A343029 n

end A343029

/-! ## A343029.P10537957474652912242

`A006370(A004718(n)+A000120(n))`
-/

namespace A343029.P10537957474652912242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A004718 n + A000120 n).toNat

end

end A343029.P10537957474652912242

namespace A343029

/-- `A006370(A004718(n)+A000120(n))` -/
def P10537957474652912242.Spec : Prop :=
  ∀ n, P10537957474652912242.a n = A343029 n

end A343029

/-! ## A343029.P3566908764858339391

`A343030(A064680(n))`
-/

namespace A343029.P3566908764858339391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A064680 n).toNat

end

end A343029.P3566908764858339391

namespace A343029

/-- `A343030(A064680(n))` -/
def P3566908764858339391.Spec : Prop :=
  ∀ n, P3566908764858339391.a n = A343029 n

end A343029

/-! ## A343029.P12902659798676133324

`A343030(A043547(n+1))`
-/

namespace A343029.P12902659798676133324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A043547 (n + 1)).toNat

end

end A343029.P12902659798676133324

namespace A343029

/-- `A343030(A043547(n+1))` -/
def P12902659798676133324.Spec : Prop :=
  ∀ n, P12902659798676133324.a n = A343029 n

end A343029

/-! ## A343029.P4029910504747396160

`A343030(n)-A004718(2*n)`
-/

namespace A343029.P4029910504747396160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 n - A004718 (2 * n)

end

end A343029.P4029910504747396160

namespace A343029

/-- `A343030(n)-A004718(2*n)` -/
def P4029910504747396160.Spec : Prop :=
  ∀ n, P4029910504747396160.a n = A343029 n

end A343029

/-! ## A343029.P15306552519362815003

`(A000120(n)-A004718(2*n))/2`
-/

namespace A343029.P15306552519362815003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 n - A004718 (2 * n) : ℚ) / 2

end

end A343029.P15306552519362815003

namespace A343029

/-- `(A000120(n)-A004718(2*n))/2` -/
def P15306552519362815003.Spec : Prop :=
  ∀ n, P15306552519362815003.a n = (A343029 n : ℚ)

end A343029

/-! ## A343029.P7565166249710848177

`A004526(A000120(n)-A004718(2*n))`
-/

namespace A343029.P7565166249710848177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000120 n - A004718 (2 * n)).toNat

end

end A343029.P7565166249710848177

namespace A343029

/-- `A004526(A000120(n)-A004718(2*n))` -/
def P7565166249710848177.Spec : Prop :=
  ∀ n, P7565166249710848177.a n = A343029 n

end A343029

/-! ## A343029.P1828770656824252610

`A343030(2*n)`
-/

namespace A343029.P1828770656824252610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (2 * n)

end

end A343029.P1828770656824252610

namespace A343029

/-- `A343030(2*n)` -/
def P1828770656824252610.Spec : Prop :=
  ∀ n, P1828770656824252610.a n = A343029 n

end A343029

/-! ## A343029.P13159603199793151575

`A000120(A000225(A343030(n+n)))`
-/

namespace A343029.P13159603199793151575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000225 (A343030 (n + n)).toNat).toNat

end

end A343029.P13159603199793151575

namespace A343029

/-- `A000120(A000225(A343030(n+n)))` -/
def P13159603199793151575.Spec : Prop :=
  ∀ n, P13159603199793151575.a n = A343029 n

end A343029

/-! ## A343029.P12249684996631503793

`A014081(A154437(2*n))`
-/

namespace A343029.P12249684996631503793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A154437 (2 * n)).toNat

end

end A343029.P12249684996631503793

namespace A343029

/-- `A014081(A154437(2*n))` -/
def P12249684996631503793.Spec : Prop :=
  ∀ n, P12249684996631503793.a n = A343029 n

end A343029

/-! ## A343029.P17071035209124055776

`A257991(A005940(n+1))`
-/

namespace A343029.P17071035209124055776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A005940 (n + 1)).toNat

end

end A343029.P17071035209124055776

namespace A343029

/-- `A257991(A005940(n+1))` -/
def P17071035209124055776.Spec : Prop :=
  ∀ n, P17071035209124055776.a n = A343029 n

end A343029

/-! ## A343029.P7232023189153510568

`A344616(A253563(n))`
-/

namespace A343029.P7232023189153510568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A253563 n).toNat

end

end A343029.P7232023189153510568

namespace A343029

/-- `A344616(A253563(n))` -/
def P7232023189153510568.Spec : Prop :=
  ∀ n, P7232023189153510568.a n = A343029 n

end A343029

/-! ## A343029.P13764417579802689530

`A139351(A048678(n))`
-/

namespace A343029.P13764417579802689530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A048678 n).toNat

end

end A343029.P13764417579802689530

namespace A343029

/-- `A139351(A048678(n))` -/
def P13764417579802689530.Spec : Prop :=
  ∀ n, P13764417579802689530.a n = A343029 n

end A343029

/-! ## A343029.P2579518537209296159

`A139351(A124108(n)/2)`
-/

namespace A343029.P2579518537209296159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.roundAway ((A124108 n : ℚ) / 2)).toNat

end

end A343029.P2579518537209296159

namespace A343029

/-- `A139351(A124108(n)/2)` -/
def P2579518537209296159.Spec : Prop :=
  ∀ n, P2579518537209296159.a n = A343029 n

end A343029

/-! ## A343029.P15021063461628119066

`A257992(A005940(2*n+1))`
-/

namespace A343029.P15021063461628119066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A005940 (2 * n + 1)).toNat

end

end A343029.P15021063461628119066

namespace A343029

/-- `A257992(A005940(2*n+1))` -/
def P15021063461628119066.Spec : Prop :=
  ∀ n, P15021063461628119066.a n = A343029 n

end A343029

/-! ## A343029.P11711710693306864589

`A139352(A124108(n))`
-/

namespace A343029.P11711710693306864589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A124108 n).toNat

end

end A343029.P11711710693306864589

namespace A343029

/-- `A139352(A124108(n))` -/
def P11711710693306864589.Spec : Prop :=
  ∀ n, P11711710693306864589.a n = A343029 n

end A343029

/-! ## A343029.P7561001717262635024

`A160382(A196168(n))`
-/

namespace A343029.P7561001717262635024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A196168 n).toNat

end

end A343029.P7561001717262635024

namespace A343029

/-- `A160382(A196168(n))` -/
def P7561001717262635024.Spec : Prop :=
  ∀ n, P7561001717262635024.a n = A343029 n

end A343029

/-!
# A343030: Number of 1-bits in the binary expansion of n which have an odd number of 0-bits at less significant bit positions.

The programs for A343030, the canonical program `A343030.P6588649687182581724` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343030 has offset 0).

The definition of A343030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343030.P12325772104868374372

`A000120(n)-A343029(n)`
-/

namespace A343030.P12325772104868374372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A343029 n

end

end A343030.P12325772104868374372

namespace A343030

/-- `A000120(n)-A343029(n)` -/
def P12325772104868374372.Spec : Prop :=
  ∀ n, P12325772104868374372.a n = A343030 n

end A343030

/-! ## A343030.P10929459800464117575

`A343029(n)-A004718(n)`
-/

namespace A343030.P10929459800464117575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 n - A004718 n

end

end A343030.P10929459800464117575

namespace A343030

/-- `A343029(n)-A004718(n)` -/
def P10929459800464117575.Spec : Prop :=
  ∀ n, P10929459800464117575.a n = A343030 n

end A343030

/-! ## A343030.P5243194101840521843

`A343029(A025480(n))`
-/

namespace A343030.P5243194101840521843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (A025480 n).toNat

end

end A343030.P5243194101840521843

namespace A343030

/-- `A343029(A025480(n))` -/
def P5243194101840521843.Spec : Prop :=
  ∀ n, P5243194101840521843.a n = A343030 n

end A343030

/-! ## A343030.P10794402233671487330

`A343029(A029578(n))`
-/

namespace A343030.P10794402233671487330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (A029578 n).toNat

end

end A343030.P10794402233671487330

namespace A343030

/-- `A343029(A029578(n))` -/
def P10794402233671487330.Spec : Prop :=
  ∀ n, P10794402233671487330.a n = A343030 n

end A343030

/-! ## A343030.P5925801686827746684

`A343029(A000265(n+1))-1`
-/

namespace A343030.P5925801686827746684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (A000265 (n + 1)).toNat - 1

end

end A343030.P5925801686827746684

namespace A343030

/-- `A343029(A000265(n+1))-1` -/
def P5925801686827746684.Spec : Prop :=
  ∀ n, P5925801686827746684.a n = A343030 n

end A343030

/-! ## A343030.P11410186094243506345

`(A000120(n)-A004718(n))/2`
-/

namespace A343030.P11410186094243506345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 n - A004718 n : ℚ) / 2

end

end A343030.P11410186094243506345

namespace A343030

/-- `(A000120(n)-A004718(n))/2` -/
def P11410186094243506345.Spec : Prop :=
  ∀ n, P11410186094243506345.a n = (A343030 n : ℚ)

end A343030

/-! ## A343030.P3972388013529537990

`A004526(A000120(n)-A004718(n))`
-/

namespace A343030.P3972388013529537990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000120 n - A004718 n).toNat

end

end A343030.P3972388013529537990

namespace A343030

/-- `A004526(A000120(n)-A004718(n))` -/
def P3972388013529537990.Spec : Prop :=
  ∀ n, P3972388013529537990.a n = A343030 n

end A343030

/-! ## A343030.P6588649687182581724

`A014081(A154437(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A343030

/-- `A014081(A154437(n))` -/
def P6588649687182581724.Spec : Prop :=
  ∀ n, P6588649687182581724.a n = A343030 n

theorem P6588649687182581724.correct : P6588649687182581724.Spec := by
  intro n
  simp only [A343030]

end A343030

/-! ## A343030.P1851544574301369316

`A343029(A064680(n))`
-/

namespace A343030.P1851544574301369316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (A064680 n).toNat

end

end A343030.P1851544574301369316

namespace A343030

/-- `A343029(A064680(n))` -/
def P1851544574301369316.Spec : Prop :=
  ∀ n, P1851544574301369316.a n = A343030 n

end A343030

/-! ## A343030.P7150955201226948942

`(A004718(2*n)+A000120(n))/2`
-/

namespace A343030.P7150955201226948942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004718 (2 * n) + A000120 n : ℚ) / 2

end

end A343030.P7150955201226948942

namespace A343030

/-- `(A004718(2*n)+A000120(n))/2` -/
def P7150955201226948942.Spec : Prop :=
  ∀ n, P7150955201226948942.a n = (A343030 n : ℚ)

end A343030

/-! ## A343030.P18145215941501737606

`A343029(2*n)`
-/

namespace A343030.P18145215941501737606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (2 * n)

end

end A343030.P18145215941501737606

namespace A343030

/-- `A343029(2*n)` -/
def P18145215941501737606.Spec : Prop :=
  ∀ n, P18145215941501737606.a n = A343030 n

end A343030

/-! ## A343030.P10659431157258343860

`A000120(A000225(A343029(n+n)))`
-/

namespace A343030.P10659431157258343860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000225 (A343029 (n + n)).toNat).toNat

end

end A343030.P10659431157258343860

namespace A343030

/-- `A000120(A000225(A343029(n+n)))` -/
def P10659431157258343860.Spec : Prop :=
  ∀ n, P10659431157258343860.a n = A343030 n

end A343030

/-! ## A343030.P4734575390476814232

`A257992(A005940(n+1))`
-/

namespace A343030.P4734575390476814232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A005940 (n + 1)).toNat

end

end A343030.P4734575390476814232

namespace A343030

/-- `A257992(A005940(n+1))` -/
def P4734575390476814232.Spec : Prop :=
  ∀ n, P4734575390476814232.a n = A343030 n

end A343030

/-! ## A343030.P11554778516574055222

`A065339(A332815(n))`
-/

namespace A343030.P11554778516574055222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A332815 n).toNat

end

end A343030.P11554778516574055222

namespace A343030

/-- `A065339(A332815(n))` -/
def P11554778516574055222.Spec : Prop :=
  ∀ n, P11554778516574055222.a n = A343030 n

end A343030

/-! ## A343030.P13243177993369955856

`A139352(A048678(n))`
-/

namespace A343030.P13243177993369955856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A048678 n).toNat

end

end A343030.P13243177993369955856

namespace A343030

/-- `A139352(A048678(n))` -/
def P13243177993369955856.Spec : Prop :=
  ∀ n, P13243177993369955856.a n = A343030 n

end A343030

/-! ## A343030.P14870629629662027714

`A139352(A124108(n)/2)`
-/

namespace A343030.P14870629629662027714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (SequenceMachineLib.roundAway ((A124108 n : ℚ) / 2)).toNat

end

end A343030.P14870629629662027714

namespace A343030

/-- `A139352(A124108(n)/2)` -/
def P14870629629662027714.Spec : Prop :=
  ∀ n, P14870629629662027714.a n = A343030 n

end A343030

/-! ## A343030.P18366939055669460348

`A257991(A005940(2*n+1))`
-/

namespace A343030.P18366939055669460348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A005940 (2 * n + 1)).toNat

end

end A343030.P18366939055669460348

namespace A343030

/-- `A257991(A005940(2*n+1))` -/
def P18366939055669460348.Spec : Prop :=
  ∀ n, P18366939055669460348.a n = A343030 n

end A343030

/-! ## A343030.P10579455678572625011

`A139351(A124108(n))`
-/

namespace A343030.P10579455678572625011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A124108 n).toNat

end

end A343030.P10579455678572625011

namespace A343030

/-- `A139351(A124108(n))` -/
def P10579455678572625011.Spec : Prop :=
  ∀ n, P10579455678572625011.a n = A343030 n

end A343030

/-! ## A343030.P7092329143337178887

`A139352(A124108(2*n))`
-/

namespace A343030.P7092329143337178887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A124108 (2 * n)).toNat

end

end A343030.P7092329143337178887

namespace A343030

/-- `A139352(A124108(2*n))` -/
def P7092329143337178887.Spec : Prop :=
  ∀ n, P7092329143337178887.a n = A343030 n

end A343030

/-!
# A343032: Row sums of triangle A073165.

The programs for A343032, there is no canonical definition to state claims against.
-/

/-! ## A343032.P5444508140510984071

`∑[A051295(A073788(n))]`
-/

namespace A343032.P5444508140510984071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051295 (A073788 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343032.P5444508140510984071

/-! ## A343032.P17009772721021520584

`∑[A052410(A051295(n)²)]`
-/

namespace A343032.P17009772721021520584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A051295 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343032.P17009772721021520584

/-! ## A343032.P8926510858653977169

`∑[A262689(A051295(n)²)]`
-/

namespace A343032.P8926510858653977169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A051295 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343032.P8926510858653977169

/-!
# A343033: Array T(n, k), n, k > 0, read by antidiagonals; a variant of lunar multiplication (A087062) based on prime exponents of numbers (see Comments section for precise definition).

The programs for A343033, there is no canonical definition to state claims against.
-/

/-! ## A343033.P9698371961107130338

`A019555(A297845(n+1))+A000038(C(n+5, 2)-5)`
-/

namespace A343033.P9698371961107130338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A297845 (n + 1)).toNat + A000038 (Nat.choose (n + 5) 2 - 5)

end

end A343033.P9698371961107130338

/-! ## A343033.P18361241850240817978

`A019555(A297845(n+1))+A000007(A155212(n))`
-/

namespace A343033.P18361241850240817978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A297845 (n + 1)).toNat + A000007 (A155212 n).toNat

end

end A343033.P18361241850240817978

/-! ## A343033.P3834212587320964580

`A010054(A000217(n+4))*A019555(A297845(n+1))`
-/

namespace A343033.P3834212587320964580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000217 (n + 4)).toNat * A019555 (A297845 (n + 1)).toNat

end

end A343033.P3834212587320964580

/-! ## A343033.P48436541598613242

`A019555(A297845(n+1))+A000007(A000217(n+4)-3)`
-/

namespace A343033.P48436541598613242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A297845 (n + 1)).toNat + A000007 (A000217 (n + 4) - 3).toNat

end

end A343033.P48436541598613242

/-! ## A343033.P3662518102819388563

`A019555(A297845(n+1))+A000038(A000217(n+4)+5)`
-/

namespace A343033.P3662518102819388563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A297845 (n + 1)).toNat + A000038 (A000217 (n + 4) + 5).toNat

end

end A343033.P3662518102819388563

/-! ## A343033.P8820747820578735628

`A019555(A297845(n+1))+A000038(A167499(n+4))`
-/

namespace A343033.P8820747820578735628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A297845 (n + 1)).toNat + A000038 (A167499 (n + 4)).toNat

end

end A343033.P8820747820578735628

/-! ## A343033.P16773402353722777736

`A019555(A297845(n+1))+A000038(A000124(n+5))`
-/

namespace A343033.P16773402353722777736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A297845 (n + 1)).toNat + A000038 (A000124 (n + 5)).toNat

end

end A343033.P16773402353722777736

/-! ## A343033.P4554096278167386711

`A019555(A297845(n+1))*A333925(A000217(n+5))`
-/

namespace A343033.P4554096278167386711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A297845 (n + 1)).toNat * A333925 (A000217 (n + 5)).toNat

end

end A343033.P4554096278167386711

/-! ## A343033.P5477917198984619951

`A019555(A297845(n+1))%A000040(A115060(n+1))`
-/

namespace A343033.P5477917198984619951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019555 (A297845 (n + 1)).toNat) (A000040 (A115060 (n + 1)).toNat)

end

end A343033.P5477917198984619951

/-! ## A343033.P2589173733293944333

`A019555(A297845(n+1))*A051953(A098415(n+1))`
-/

namespace A343033.P2589173733293944333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A297845 (n + 1)).toNat * A051953 (A098415 (n + 1)).toNat

end

end A343033.P2589173733293944333

/-! ## A343033.P10019515862106250079

`A019555(A297845(n+1))+A000007(n)*A163351(n)`
-/

namespace A343033.P10019515862106250079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A297845 (n + 1)).toNat + A000007 n * A163351 n

end

end A343033.P10019515862106250079

/-! ## A343033.P12509169678418735373

`A019555(A297845(n+1))+A000038(A019555(n+1)²)`
-/

namespace A343033.P12509169678418735373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A297845 (n + 1)).toNat + A000038 (A019555 (n + 1) ^ 2).toNat

end

end A343033.P12509169678418735373

/-!
# A343034: Positive numbers m such that m^2 with last digit z deleted is still a perfect square k^2, and z divides m-k.

The programs for A343034, there is no canonical definition to state claims against.
-/

/-! ## A343034.P2280086002049194217

`A031149(A047352(n+2))`
-/

namespace A343034.P2280086002049194217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031149 (A047352 (n + 2)).toNat

end

end A343034.P2280086002049194217

/-! ## A343034.P15836114905927534042

`A031149(A047336(n+1)+1)`
-/

namespace A343034.P15836114905927534042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031149 (A047336 (n + 1) + 1).toNat

end

end A343034.P15836114905927534042

/-! ## A343034.P15600715353424167321

`A031149(∑[A328579(A328579(n))])`
-/

namespace A343034.P15600715353424167321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 (A328579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031149 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343034.P15600715353424167321

/-! ## A343034.P9665885828313731892

`A031149(A052938(n)+A016777(n))`
-/

namespace A343034.P9665885828313731892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031149 (A052938 n + A016777 n).toNat

end

end A343034.P9665885828313731892

/-! ## A343034.P16135930830868563187

`A031149(A004767(n)-A028242(n))`
-/

namespace A343034.P16135930830868563187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031149 (A004767 n - A028242 n).toNat

end

end A343034.P16135930830868563187

/-!
# A343035: a(n) = A343033(n, n).

The programs for A343035, there is no canonical definition to state claims against.
-/

/-! ## A343035.P11841340656715105951

`A343033(∑[4*n]+1)`
-/

namespace A343035.P11841340656715105951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343033 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A343035.P11841340656715105951

/-! ## A343035.P4047887774067390616

`and(-1, A343033(A001844(n)))`
-/

namespace A343035.P4047887774067390616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A343033 (A001844 n).toNat)

end

end A343035.P4047887774067390616

/-! ## A343035.P4825663535470393583

`A343033(A001844(n-char[3]))-char[3]`
-/

namespace A343035.P4825663535470393583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343033 (A001844 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A343035.P4825663535470393583

/-! ## A343035.P8374185567326356651

`or(char[2], A343033(A000982(2*n+1)))`
-/

namespace A343035.P8374185567326356651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A343033 (A000982 (2 * n + 1)).toNat)

end

end A343035.P8374185567326356651

/-! ## A343035.P17451478915326697372

`gcd(A000038(n), A343033(A001844(n)))`
-/

namespace A343035.P17451478915326697372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A343033 (A001844 n).toNat)

end

end A343035.P17451478915326697372

/-! ## A343035.P15074634803118671316

`A343033(A001844(n))%Δ[A022523(n)]`
-/

namespace A343035.P15074634803118671316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343033 (A001844 n).toNat) (f1 (n + 1) - f1 n)

end

end A343035.P15074634803118671316

/-! ## A343035.P7128491605793660633

`A343033(A001844(n))^(A000007(n)+1)`
-/

namespace A343035.P7128491605793660633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343033 (A001844 n).toNat : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A343035.P7128491605793660633

/-! ## A343035.P16828138203168703956

`A014963(4*n+6)*A343033(A001844(n))`
-/

namespace A343035.P16828138203168703956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A343033 (A001844 n).toNat

end

end A343035.P16828138203168703956

/-! ## A343035.P9751933685041723034

`A000041(C(2, 2*n))*A343033(A001844(n))`
-/

namespace A343035.P9751933685041723034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A343033 (A001844 n).toNat

end

end A343035.P9751933685041723034

/-! ## A343035.P8102116623535976264

`A343033(A000982(2*n+1))%A000041(n+5)`
-/

namespace A343035.P8102116623535976264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343033 (A000982 (2 * n + 1)).toNat) (A000041 (n + 5))

end

end A343035.P8102116623535976264

/-!
# A343036: Positions of Zuckerman numbers within A342978, the ordered list of zeroless numbers according to k/A007954(k).

The programs for A343036, there is no canonical definition to state claims against.
-/

/-! ## A343036.P13714654415408903294

`n*A146391(a(n-1))+1` with `a(0)=1`
-/

namespace A343036.P13714654415408903294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A146391 (a (n - 1)).toNat + 1

end

end A343036.P13714654415408903294

/-! ## A343036.P3913282214662203893

`n*A146399(a(n-1))+1` with `a(0)=1`
-/

namespace A343036.P3913282214662203893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A146399 (a (n - 1)).toNat + 1

end

end A343036.P3913282214662203893

/-! ## A343036.P4981780328642867341

`n*A146407(a(n-1))+1` with `a(0)=1`
-/

namespace A343036.P4981780328642867341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A146407 (a (n - 1)).toNat + 1

end

end A343036.P4981780328642867341

/-! ## A343036.P2663686843259258183

`n*A146439(a(n-1))+1` with `a(0)=1`
-/

namespace A343036.P2663686843259258183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A146439 (a (n - 1)).toNat + 1

end

end A343036.P2663686843259258183

/-! ## A343036.P5888940402931184540

`n*A146455(a(n-1))+1` with `a(0)=1`
-/

namespace A343036.P5888940402931184540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A146455 (a (n - 1)).toNat + 1

end

end A343036.P5888940402931184540

/-!
# A343037: Triangle T(n,k), n >= 2, 1 <= k <= n-1, read by rows, where T(n,k) is the difference between smallest square >= binomial(n,k) and binomial(n,k).

The programs for A343037, the canonical program `A343037.P13066724117359512998` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343037 has offset 2).

The definition of A343037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343037.P13066724117359512998

`ceil(sqrt(A014410(n+2)))²-A014410(n+2)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A343037

/-- `ceil(sqrt(A014410(n+2)))²-A014410(n+2)` -/
def P13066724117359512998.Spec : Prop :=
  ∀ n, P13066724117359512998.a n = A343037 (n + 2)

theorem P13066724117359512998.correct : P13066724117359512998.Spec := by
  intro n
  simp only [A343037, Nat.add_sub_cancel]

end A343037

/-! ## A343037.P3610683177385336797

`A068527(C(comp[∑[n]]-n, C(comp[∑[n]]-n, 2)-n))`
-/

namespace A343037.P3610683177385336797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat)

end

end A343037.P3610683177385336797

namespace A343037

/-- `A068527(C(comp[∑[n]]-n, C(comp[∑[n]]-n, 2)-n))` -/
def P3610683177385336797.Spec : Prop :=
  ∀ n, P3610683177385336797.a n = A343037 (n + 2)

end A343037

/-! ## A343037.P8170791368585581940

`A068527(A014430(n)+1)`
-/

namespace A343037.P8170791368585581940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A014430 n + 1).toNat

end

end A343037.P8170791368585581940

namespace A343037

/-- `A068527(A014430(n)+1)` -/
def P8170791368585581940.Spec : Prop :=
  ∀ n, P8170791368585581940.a n = A343037 (n + 2)

end A343037

/-! ## A343037.P13200713884688705951

`A068527(A014410(n+2))`
-/

namespace A343037.P13200713884688705951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A014410 (n + 2)).toNat

end

end A343037.P13200713884688705951

namespace A343037

/-- `A068527(A014410(n+2))` -/
def P13200713884688705951.Spec : Prop :=
  ∀ n, P13200713884688705951.a n = A343037 (n + 2)

end A343037

/-! ## A343037.P191616742492867496

`A068527(A074909(comp[∑[n]]))`
-/

namespace A343037.P191616742492867496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A074909 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A343037.P191616742492867496

namespace A343037

/-- `A068527(A074909(comp[∑[n]]))` -/
def P191616742492867496.Spec : Prop :=
  ∀ n, P191616742492867496.a n = A343037 (n + 2)

end A343037

/-! ## A343037.P2045540458642501162

`A068527(sqrt(A014719(n+2)))`
-/

namespace A343037.P2045540458642501162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (SequenceMachineLib.roundAway (Real.sqrt (A014719 (n + 2) : ℝ))).toNat

end

end A343037.P2045540458642501162

namespace A343037

/-- `A068527(sqrt(A014719(n+2)))` -/
def P2045540458642501162.Spec : Prop :=
  ∀ n, P2045540458642501162.a n = A343037 (n + 2)

end A343037

/-! ## A343037.P13716459948614193324

`A068527(A051597(n)+A007318(n))`
-/

namespace A343037.P13716459948614193324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A051597 n + A007318 n).toNat

end

end A343037.P13716459948614193324

namespace A343037

/-- `A068527(A051597(n)+A007318(n))` -/
def P13716459948614193324.Spec : Prop :=
  ∀ n, P13716459948614193324.a n = A343037 (n + 2)

end A343037

/-! ## A343037.P6855446495133157375

`A068527(A028263(n)-A007318(n))`
-/

namespace A343037.P6855446495133157375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A028263 n - A007318 n).toNat

end

end A343037.P6855446495133157375

namespace A343037

/-- `A068527(A028263(n)-A007318(n))` -/
def P6855446495133157375.Spec : Prop :=
  ∀ n, P6855446495133157375.a n = A343037 (n + 2)

end A343037

/-! ## A343037.P5214118185844735735

`A068527(A074909(n+1)+A074909(n))`
-/

namespace A343037.P5214118185844735735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A074909 (n + 1) + A074909 n).toNat

end

end A343037.P5214118185844735735

namespace A343037

/-- `A068527(A074909(n+1)+A074909(n))` -/
def P5214118185844735735.Spec : Prop :=
  ∀ n, P5214118185844735735.a n = A343037 (n + 2)

end A343037

/-!
# A343038: First differences in A085109.

The programs for A343038, there is no canonical definition to state claims against.
-/

/-! ## A343038.P15041771257034034193

`Δ[A085109(n+1)]`
-/

namespace A343038.P15041771257034034193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343038.P15041771257034034193

/-! ## A343038.P10069335787454535706

`Δ[record[A085109(A102885(n))]]`
-/

namespace A343038.P10069335787454535706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085109 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343038.P10069335787454535706

/-! ## A343038.P7179938576569690857

`Δ[record[A085109(A117910(n))]]`
-/

namespace A343038.P7179938576569690857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085109 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343038.P7179938576569690857

/-! ## A343038.P5936814016860394915

`Δ[record[A085109(A126759(n))]]`
-/

namespace A343038.P5936814016860394915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085109 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343038.P5936814016860394915

/-! ## A343038.P8431533532128774841

`Δ[record[A085109(A133310(n))]]`
-/

namespace A343038.P8431533532128774841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085109 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343038.P8431533532128774841

/-!
# A343039: a(1) = 1, for n > 1, a(n) is the smallest positive integer for which a(n-1) + n + a(n) is a square.

The programs for A343039, there is no canonical definition to state claims against.
-/

/-! ## A343039.P15585718262279882494

`A080883(a(n-1)+1+n)` with `a(0)=1`
-/

namespace A343039.P15585718262279882494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080883 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A343039.P15585718262279882494

/-! ## A343039.P3073015589490287507

`A068527(a(n-1)+n+2)+1` with `a(0)=1`
-/

namespace A343039.P3073015589490287507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A068527 (a (n - 1) + (n + 2 : ℤ)).toNat + 1

end

end A343039.P3073015589490287507

/-! ## A343039.P12412213411819294305

`dr(A033431(A011782(n))-A052938(n))`
-/

namespace A343039.P12412213411819294305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033431 (A011782 n).toNat - A052938 n)

end

end A343039.P12412213411819294305

/-! ## A343039.P16699527375614269498

`dr(A284260(A002445(n))-A079599(n))`
-/

namespace A343039.P16699527375614269498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A284260 (A002445 n).toNat - A079599 n)

end

end A343039.P16699527375614269498

/-!
# A343041: a(0) = 0 and for any n > 0, a(n) = A343040(a(n-1), n).

The programs for A343041, the canonical program `A343041.P18075580334422087876` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343041 has offset 0).

The definition of A343041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343041.P18075580334422087876

`A200748(∑[char[A162608(n)]])`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A343041

/-- `A200748(∑[char[A162608(n)]])` -/
def P18075580334422087876.Spec : Prop :=
  ∀ n, P18075580334422087876.a n = A343041 n

theorem P18075580334422087876.correct : P18075580334422087876.Spec := by
  intro n
  simp only [A343041]

end A343041

/-! ## A343041.P3398875077136973768

`A200748(∑[char[A051683(n+1)]])`
-/

namespace A343041.P3398875077136973768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343041.P3398875077136973768

namespace A343041

/-- `A200748(∑[char[A051683(n+1)]])` -/
def P3398875077136973768.Spec : Prop :=
  ∀ n, P3398875077136973768.a n = A343041 n

end A343041

/-! ## A343041.P2461604894158194307

`A200748(∑[char[A200748(n)+1]])`
-/

namespace A343041.P2461604894158194307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343041.P2461604894158194307

namespace A343041

/-- `A200748(∑[char[A200748(n)+1]])` -/
def P2461604894158194307.Spec : Prop :=
  ∀ n, P2461604894158194307.a n = A343041 n

end A343041

/-! ## A343041.P18110693626437824682

`∑[A276008(n*char[A257686(n)])]`
-/

namespace A343041.P18110693626437824682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257686 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 (n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343041.P18110693626437824682

namespace A343041

/-- `∑[A276008(n*char[A257686(n)])]` -/
def P18110693626437824682.Spec : Prop :=
  ∀ n, P18110693626437824682.a n = A343041 n

end A343041

/-! ## A343041.P17912905935041313401

`A051683(∑[char[A051683(n+1)]]+1)-1`
-/

namespace A343041.P17912905935041313401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A343041.P17912905935041313401

namespace A343041

/-- `A051683(∑[char[A051683(n+1)]]+1)-1` -/
def P17912905935041313401.Spec : Prop :=
  ∀ n, P17912905935041313401.a n = A343041 n

end A343041

/-! ## A343041.P11647160768147429889

`A200748(∑[A316341(A348138(n))])`
-/

namespace A343041.P11647160768147429889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (A348138 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343041.P11647160768147429889

namespace A343041

/-- `A200748(∑[A316341(A348138(n))])` -/
def P11647160768147429889.Spec : Prop :=
  ∀ n, P11647160768147429889.a n = A343041 n

end A343041

/-! ## A343041.P18213768649593748713

`A257686(n)+A033312(∑[A316341(n)])`
-/

namespace A343041.P18213768649593748713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257686 n + A033312 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343041.P18213768649593748713

namespace A343041

/-- `A257686(n)+A033312(∑[A316341(n)])` -/
def P18213768649593748713.Spec : Prop :=
  ∀ n, P18213768649593748713.a n = A343041 n

end A343041

/-! ## A343041.P2597129851785969375

`∑[A276008(n*A010051(A275735(n)))]`
-/

namespace A343041.P2597129851785969375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 ((n : ℤ) * A010051 (A275735 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343041.P2597129851785969375

namespace A343041

/-- `∑[A276008(n*A010051(A275735(n)))]` -/
def P2597129851785969375.Spec : Prop :=
  ∀ n, P2597129851785969375.a n = A343041 n

end A343041

/-!
# A343042: Array T(n, k), n, k >= 0, read by antidiagonals; lunar multiplication table for the factorial base.

The programs for A343042, there is no canonical definition to state claims against.
-/

/-! ## A343042.P16767669392468409366

`∑{e}[2^A343046(n), #]`
-/

namespace A343042.P16767669392468409366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A343046 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A343042.P16767669392468409366

/-! ## A343042.P14386959515648561543

`A055570(A343046(n))`
-/

namespace A343042.P14386959515648561543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A343046 n).toNat

end

end A343042.P14386959515648561543

/-! ## A343042.P2708565205425756247

`A201064(A343046(n)+1)`
-/

namespace A343042.P2708565205425756247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201064 (A343046 n + 1).toNat

end

end A343042.P2708565205425756247

/-! ## A343042.P17505523698341586251

`A001222(2^A343046(n))`
-/

namespace A343042.P17505523698341586251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A343046 n : ℤ))).toNat

end

end A343042.P17505523698341586251

/-! ## A343042.P900191499475400474

`A007814(2^A343046(n))`
-/

namespace A343042.P900191499475400474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A343046 n : ℤ))).toNat

end

end A343042.P900191499475400474

/-!
# A343043: a(n) = A343042(n, n).

The programs for A343043, there is no canonical definition to state claims against.
-/

/-! ## A343043.P5346130108250952751

`A343042(∑[4*n])`
-/

namespace A343043.P5346130108250952751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343042 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343043.P5346130108250952751

/-! ## A343043.P18073113110579710202

`or(char[1], A343042(2*(n²+n)))`
-/

namespace A343043.P18073113110579710202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A343042 (2 * (n ^ 2 + n)))

end

end A343043.P18073113110579710202

/-! ## A343043.P14918291650277307294

`and(-1, A343042(A046092(n)))`
-/

namespace A343043.P14918291650277307294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A343042 (A046092 n).toNat)

end

end A343043.P14918291650277307294

/-! ## A343043.P14935776855675570722

`∑{d}[A343042(2*(n²+n)), A000010(#)]`
-/

namespace A343043.P14935776855675570722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343042 (2 * (n ^ 2 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A343043.P14935776855675570722

/-! ## A343043.P965343853787203581

`A033999(n)²*A343042(2*(n²+n))`
-/

namespace A343043.P965343853787203581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A343042 (2 * (n ^ 2 + n))

end

end A343043.P965343853787203581

/-! ## A343043.P12770772989901035546

`A343042(2*(n²+n))+A000007(n+1)`
-/

namespace A343043.P12770772989901035546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343042 (2 * (n ^ 2 + n)) + A000007 (n + 1)

end

end A343043.P12770772989901035546

/-! ## A343043.P12701510019646308840

`A000034(2*n)*A343042(2*(n²+n))`
-/

namespace A343043.P12701510019646308840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A343042 (2 * (n ^ 2 + n))

end

end A343043.P12701510019646308840

/-! ## A343043.P11565348270927967997

`A343042(2*(n²+n))%A000041(3*n)`
-/

namespace A343043.P11565348270927967997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343042 (2 * (n ^ 2 + n))) (A000041 (3 * n))

end

end A343043.P11565348270927967997

/-! ## A343043.P18064013808541347859

`A007318(C(2, n))*A343042(2*(n²+n))`
-/

namespace A343043.P18064013808541347859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A343042 (2 * (n ^ 2 + n))

end

end A343043.P18064013808541347859

/-! ## A343043.P2725803074797410311

`ceil(n/A000041(n))*A343042(2*(n²+n))`
-/

namespace A343043.P2725803074797410311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A000041 n : ℚ)⌉ * A343042 (2 * (n ^ 2 + n))

end

end A343043.P2725803074797410311

/-!
# A343044: 

The programs for A343044, there is no canonical definition to state claims against.
-/

/-! ## A343044.P16101528898870144590

`comp[∑[n]]-n-(A324351(n)+2)`
-/

namespace A343044.P16101528898870144590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - (A324351 n + 2)

end

end A343044.P16101528898870144590

/-! ## A343044.P4310487452255823772

`A003056(n)-A324351(n)`
-/

namespace A343044.P4310487452255823772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - A324351 n

end

end A343044.P4310487452255823772

/-! ## A343044.P5990149857503558233

`A025581(A324351(n)+A057944(n))`
-/

namespace A343044.P5990149857503558233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A324351 n + A057944 n).toNat

end

end A343044.P5990149857503558233

/-!
# A343045: a(0) = 0 and for any n > 0, a(n) = A343044(a(n-1), n).

The programs for A343045, there is no canonical definition to state claims against.
-/

/-! ## A343045.P12551922503893661666

`A343048(∑[char[A060735(n+1)]])`
-/

namespace A343045.P12551922503893661666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060735 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343048 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343045.P12551922503893661666

/-! ## A343045.P15099980697172035348

`A343048(∑[char[A343048(n)+1]])`
-/

namespace A343045.P15099980697172035348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343048 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343048 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343045.P15099980697172035348

/-! ## A343045.P7191018028578514428

`∑[char[A060735(n+1)]*A276157(n+1)]`
-/

namespace A343045.P7191018028578514428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060735 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A276157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343045.P7191018028578514428

/-! ## A343045.P15951132648042997200

`A343048(∑[char[1-A057428(n)*A343048(n)]])`
-/

namespace A343045.P15951132648042997200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A343048 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343048 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343045.P15951132648042997200

/-! ## A343045.P1244509434656544052

`∑[A276085(A014963(A328571(n)))]`
-/

namespace A343045.P1244509434656544052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A014963 (A328571 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343045.P1244509434656544052

/-!
# A343047: a(n) = A343046(n, n).

The programs for A343047, there is no canonical definition to state claims against.
-/

/-! ## A343047.P1034349138107760767

`A343046(∑[4*n])`
-/

namespace A343047.P1034349138107760767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343046 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343047.P1034349138107760767

/-! ## A343047.P14884966644465787456

`and(-1, A343046(A046092(n)))`
-/

namespace A343047.P14884966644465787456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A343046 (A046092 n).toNat)

end

end A343047.P14884966644465787456

/-! ## A343047.P5994808146715467347

`∑{d}[A343046(A046092(n)), A000010(#)]`
-/

namespace A343047.P5994808146715467347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343046 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A343047.P5994808146715467347

/-! ## A343047.P10810892514092145112

`A343046(A046092(n))+A000007(n+1)`
-/

namespace A343047.P10810892514092145112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343046 (A046092 n).toNat + A000007 (n + 1)

end

end A343047.P10810892514092145112

/-! ## A343047.P17090757212687948500

`A343046(A046092(n))+A000038(n+1)`
-/

namespace A343047.P17090757212687948500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343046 (A046092 n).toNat + A000038 (n + 1)

end

end A343047.P17090757212687948500

/-! ## A343047.P4441937976736876643

`A000010(C(2, n)!)*A343046(A046092(n))`
-/

namespace A343047.P4441937976736876643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A343046 (A046092 n).toNat

end

end A343047.P4441937976736876643

/-! ## A343047.P12721826919907537812

`∏{e}[A006530(n+2), A343046(A046092(n))/#]`
-/

namespace A343047.P12721826919907537812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A343046 (A046092 n).toNat : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A343047.P12721826919907537812

/-! ## A343047.P2641854148287253991

`ceil(A001221(n+1)/3)*A343046(A046092(n))`
-/

namespace A343047.P2641854148287253991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001221 (n + 1) : ℚ) / 3⌉ * A343046 (A046092 n).toNat

end

end A343047.P2641854148287253991

/-! ## A343047.P3426116519367052358

`A000040(2*n+1)%2*A343046(A046092(n))`
-/

namespace A343047.P3426116519367052358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (2 * n + 1)) 2 * A343046 (A046092 n).toNat

end

end A343047.P3426116519367052358

/-!
# A343048: a(n) is the least number whose sum of digits in primorial base equals n.

The programs for A343048, there is no canonical definition to state claims against.
-/

/-! ## A343048.P14684247122874373269

`A060735(n+1)-1`
-/

namespace A343048.P14684247122874373269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060735 (n + 1) - 1

end

end A343048.P14684247122874373269

/-! ## A343048.P4572280384009682967

`abs(A060735(n+1)+A057428(n+1))`
-/

namespace A343048.P4572280384009682967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060735 (n + 1) + A057428 (n + 1)|

end

end A343048.P4572280384009682967

/-! ## A343048.P17636569025820814902

`A316441(A073751(n+1))+A060735(n+1)`
-/

namespace A343048.P17636569025820814902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A073751 (n + 1)).toNat + A060735 (n + 1)

end

end A343048.P17636569025820814902

/-! ## A343048.P12473085806716240377

`A089263(A008458(n+1)+1)+A060735(n+1)`
-/

namespace A343048.P12473085806716240377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A008458 (n + 1) + 1).toNat + A060735 (n + 1)

end

end A343048.P12473085806716240377

/-! ## A343048.P3879540177445842599

`A094267(A000041(gcd(n, n+1)))+A060735(n+1)`
-/

namespace A343048.P3879540177445842599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A000041 (Nat.gcd n (n + 1))).toNat + A060735 (n + 1)

end

end A343048.P3879540177445842599

/-! ## A343048.P13211929458196334258

`A087960(A042963(n+1))+A060735(n+1)`
-/

namespace A343048.P13211929458196334258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A042963 (n + 1)).toNat + A060735 (n + 1)

end

end A343048.P13211929458196334258

/-! ## A343048.P8519560961788667729

`A115513(A006519(2*n+1))+A060735(n+1)`
-/

namespace A343048.P8519560961788667729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115513 (A006519 (2 * n + 1)).toNat + A060735 (n + 1)

end

end A343048.P8519560961788667729

/-! ## A343048.P11946332437456352919

`A117569(A017557(n))+A060735(n+1)`
-/

namespace A343048.P11946332437456352919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (A017557 n).toNat + A060735 (n + 1)

end

end A343048.P11946332437456352919

/-! ## A343048.P4459351792261971372

`(A060735(n+1)+A000079(n))%A000051(n)`
-/

namespace A343048.P4459351792261971372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060735 (n + 1) + A000079 n) (A000051 n)

end

end A343048.P4459351792261971372

/-! ## A343048.P4380459957535039705

`A325970(A176870(n+1))+A060735(n+1)`
-/

namespace A343048.P4380459957535039705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A176870 (n + 1)).toNat + A060735 (n + 1)

end

end A343048.P4380459957535039705

/-! ## A343048.P8679339374198551098

`A067856(A106819(n+1))+A060735(n+1)`
-/

namespace A343048.P8679339374198551098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A106819 (n + 1)).toNat + A060735 (n + 1)

end

end A343048.P8679339374198551098

/-! ## A343048.P9220921414744743479

`A325970(A061068(n+1))+A060735(n+1)`
-/

namespace A343048.P9220921414744743479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A061068 (n + 1)).toNat + A060735 (n + 1)

end

end A343048.P9220921414744743479

/-! ## A343048.P7257024766619405373

`A325970(A031928(n+1))+A060735(n+1)`
-/

namespace A343048.P7257024766619405373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A031928 (n + 1)).toNat + A060735 (n + 1)

end

end A343048.P7257024766619405373

/-! ## A343048.P10909888952731654756

`A125202(A007318(∑[n]))+A060735(n+1)`
-/

namespace A343048.P10909888952731654756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125202 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A060735 (n + 1)

end

end A343048.P10909888952731654756

/-! ## A343048.P15808519310158938973

`∩[A055932(n+1), A288784(n)]-1`
-/

namespace A343048.P15808519310158938973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288784 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A343048.P15808519310158938973

/-! ## A343048.P10192184248684235259

`∩[A055932(n+1), A116998(n+1)]-1`
-/

namespace A343048.P10192184248684235259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116998 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A343048.P10192184248684235259

/-!
# A343050: Zuckerman numbers (A007602) ordered by increasing value of k/A007954(k) where A007954(k) is the product of the decimal digits of k.

The programs for A343050, there is no canonical definition to state claims against.
-/

/-! ## A343050.P15067375396253436620

`A342978(A343036(n+1))`
-/

namespace A343050.P15067375396253436620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342978 (A343036 (n + 1)).toNat

end

end A343050.P15067375396253436620

/-!
# A343051: A triangle T(n,k) read by rows which can be used to calculate the area of a regular polygon with sides having length 1, provided that the polygon has an odd number of sides.

The programs for A343051, there is no canonical definition to state claims against.
-/

/-! ## A343051.P9827982737950816491

`A002329(A052713(n)+A000265(n+4))`
-/

namespace A343051.P9827982737950816491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002329 (A052713 n + A000265 (n + 4)).toNat

end

end A343051.P9827982737950816491

/-!
# A343064: Side a of primitive integer-sided triangles (a, b, c) whose angle B = 2*C.

The programs for A343064, there is no canonical definition to state claims against.
-/

/-! ## A343064.P6527789370415604451

`A343067(n+1)-(A343066(n+1)+A343065(n+1))`
-/

namespace A343064.P6527789370415604451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343067 (n + 1) - (A343066 (n + 1) + A343065 (n + 1))

end

end A343064.P6527789370415604451

/-! ## A343064.P11633169545801105073

`A343063(3*n+1)`
-/

namespace A343064.P11633169545801105073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343063 (3 * n + 1)

end

end A343064.P11633169545801105073

/-! ## A343064.P2417839033318304163

`A343063(A016777(n))%44`
-/

namespace A343064.P2417839033318304163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343063 (A016777 n).toNat) 44

end

end A343064.P2417839033318304163

/-! ## A343064.P14233286791698994026

`A036225(n)*A343063(A016777(n))`
-/

namespace A343064.P14233286791698994026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A343063 (A016777 n).toNat

end

end A343064.P14233286791698994026

/-! ## A343064.P925705892159427274

`or(A000007(n), A343063(A016777(n)))`
-/

namespace A343064.P925705892159427274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A343063 (A016777 n).toNat)

end

end A343064.P925705892159427274

/-!
# A343065: Side b of integer-sided primitive triangles (a, b, c) whose angle B = 2*C.

The programs for A343065, there is no canonical definition to state claims against.
-/

/-! ## A343065.P16252429648340807947

`A343067(n+1)-(A343066(n+1)+A343064(n+1))`
-/

namespace A343065.P16252429648340807947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343067 (n + 1) - (A343066 (n + 1) + A343064 (n + 1))

end

end A343065.P16252429648340807947

/-! ## A343065.P8623268057817950393

`A343063(3*n+2)`
-/

namespace A343065.P8623268057817950393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343063 (3 * n + 2)

end

end A343065.P8623268057817950393

/-! ## A343065.P10084908218719301123

`and(-1, A343063(A016789(n)))`
-/

namespace A343065.P10084908218719301123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A343063 (A016789 n).toNat)

end

end A343065.P10084908218719301123

/-! ## A343065.P9340005661960454452

`or(char[6], A343063(A016777(n)+1))`
-/

namespace A343065.P9340005661960454452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A343063 (A016777 n + 1).toNat)

end

end A343065.P9340005661960454452

/-! ## A343065.P18146469597231261259

`A036225(n)*A343063(A016789(n))`
-/

namespace A343065.P18146469597231261259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A343063 (A016789 n).toNat

end

end A343065.P18146469597231261259

/-!
# A343066: Side c of integer-sided primitive triangles (a, b, c) whose angle B = 2*C.

The programs for A343066, there is no canonical definition to state claims against.
-/

/-! ## A343066.P5362835893866941702

`A033676(A343065(n+1))²`
-/

namespace A343066.P5362835893866941702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A343065 (n + 1)).toNat ^ 2

end

end A343066.P5362835893866941702

/-! ## A343066.P4699132868413786247

`∑{d}[A033676(A343065(n+1)), A007434(#)]`
-/

namespace A343066.P4699132868413786247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A343065 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007434 d

end

end A343066.P4699132868413786247

/-! ## A343066.P9215766602119996332

`A000196(A343065(n+1)-A008611(n))²`
-/

namespace A343066.P9215766602119996332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A343065 (n + 1) - A008611 n).toNat ^ 2

end

end A343066.P9215766602119996332

/-! ## A343066.P10274002392790432273

`A000196(A343065(n+1)-A008619(n))²`
-/

namespace A343066.P10274002392790432273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A343065 (n + 1) - A008619 n).toNat ^ 2

end

end A343066.P10274002392790432273

/-! ## A343066.P14818080881852297585

`A048760(A343065(n+1)-A162897(n+1))`
-/

namespace A343066.P14818080881852297585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A343065 (n + 1) - A162897 (n + 1)).toNat

end

end A343066.P14818080881852297585

/-! ## A343066.P5059834374995161023

`A033676(A343065(n+1))^A020639(2*(n+1))`
-/

namespace A343066.P5059834374995161023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033676 (A343065 (n + 1)).toNat : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A343066.P5059834374995161023

/-! ## A343066.P8917162940993956822

`A033676(A343065(n+1))^A000040(gcd(n, n+1))`
-/

namespace A343066.P8917162940993956822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033676 (A343065 (n + 1)).toNat : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A343066.P8917162940993956822

/-! ## A343066.P5178543664948679988

`A033676(A343065(n+1))^A000005(A001097(n+1))`
-/

namespace A343066.P5178543664948679988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033676 (A343065 (n + 1)).toNat : ℚ) ^ (A000005 (A001097 (n + 1)).toNat : ℤ)

end

end A343066.P5178543664948679988

/-! ## A343066.P9837328995323156483

`A033676(A343065(n+1))^A000005(A001134(n+1))`
-/

namespace A343066.P9837328995323156483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033676 (A343065 (n + 1)).toNat : ℚ) ^ (A000005 (A001134 (n + 1)).toNat : ℤ)

end

end A343066.P9837328995323156483

/-! ## A343066.P4274500455668914660

`A033676(A343065(n+1))^A000005(A002476(n+1))`
-/

namespace A343066.P4274500455668914660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033676 (A343065 (n + 1)).toNat : ℚ) ^ (A000005 (A002476 (n + 1)).toNat : ℤ)

end

end A343066.P4274500455668914660

/-!
# A343067: Perimeter of integer-sided primitive triangles (a, b, c) whose angle B = 2*C.

The programs for A343067, there is no canonical definition to state claims against.
-/

/-! ## A343067.P13073484761282498014

`A343064(n+1)+A343065(n+1)+A343066(n+1)`
-/

namespace A343067.P13073484761282498014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343064 (n + 1) + A343065 (n + 1) + A343066 (n + 1)

end

end A343067.P13073484761282498014

/-! ## A343067.P7093095342631074061

`A343063(3*(n+1))+A343065(n+1)+A343064(n+1)`
-/

namespace A343067.P7093095342631074061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343063 (3 * (n + 1)) + (A343065 (n + 1) + A343064 (n + 1))

end

end A343067.P7093095342631074061

/-! ## A343067.P5351628364595692076

`A343063(3*n+1)+A343066(n+1)+A343065(n+1)`
-/

namespace A343067.P5351628364595692076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343063 (3 * n + 1) + (A343066 (n + 1) + A343065 (n + 1))

end

end A343067.P5351628364595692076

/-! ## A343067.P8035184819504798077

`A343065(n+1)+A343066(n+1)+A343063(A016777(n))`
-/

namespace A343067.P8035184819504798077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343065 (n + 1) + (A343066 (n + 1) + A343063 (A016777 n).toNat)

end

end A343067.P8035184819504798077

/-!
# A343070: a(1) = 1, for n > 1, a(n) is the smallest positive integer for which a(n-1) + n + a(n) is a prime.

The programs for A343070, the canonical program `A343070.P18243399081581127892` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343070 has offset 1).

The definition of A343070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343070.P18243399081581127892

`A013632(a(n-1)+1+n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A343070

/-- `A013632(a(n-1)+1+n)` -/
def P18243399081581127892.Spec : Prop :=
  ∀ n, P18243399081581127892.a n = A343070 (n + 1)

theorem P18243399081581127892.correct : P18243399081581127892.Spec := by
  intro n
  simp only [A343070, Nat.add_sub_cancel]

end A343070

/-! ## A343070.P7549783718797262938

`A013632(a(n-1)-xor(n, -1))` with `a(0)=1`
-/

namespace A343070.P7549783718797262938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013632 (a (n - 1) - Int.xor (n : ℤ) (-1)).toNat

end

end A343070.P7549783718797262938

namespace A343070

/-- `A013632(a(n-1)-xor(n, -1))` -/
def P7549783718797262938.Spec : Prop :=
  ∀ n, P7549783718797262938.a n = A343070 (n + 1)

end A343070

/-! ## A343070.P13252849253560443450

`A013632(a(xor(-1, -n))+n+1)` with `a(0)=1`
-/

namespace A343070.P13252849253560443450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013632 (a (Int.xor (-1) (-(n : ℤ))).toNat + (n + 1 : ℤ)).toNat

end

end A343070.P13252849253560443450

namespace A343070

/-- `A013632(a(xor(-1, -n))+n+1)` -/
def P13252849253560443450.Spec : Prop :=
  ∀ n, P13252849253560443450.a n = A343070 (n + 1)

end A343070

/-! ## A343070.P18442062251042027369

`A013632(a(n-1)-(n-Δ[n²]))` with `a(0)=1`
-/

namespace A343070.P18442062251042027369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013632 (a (n - 1) - ((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))).toNat

end

end A343070.P18442062251042027369

namespace A343070

/-- `A013632(a(n-1)-(n-Δ[n²]))` -/
def P18442062251042027369.Spec : Prop :=
  ∀ n, P18442062251042027369.a n = A343070 (n + 1)

theorem P18442062251042027369.correct : P18442062251042027369.Spec := by
  intro n
  simp only [A343070, Nat.add_sub_cancel, A343070.P18442062251042027369.f1, A343070.P18442062251042027369.a, A343070.P18243399081581127892.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A343070

/-! ## A343070.P12051126839031408469

`A330248(n+3)+1`
-/

namespace A343070.P12051126839031408469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330248 (n + 3) + 1

end

end A343070.P12051126839031408469

namespace A343070

/-- `A330248(n+3)+1` -/
def P12051126839031408469.Spec : Prop :=
  ∀ n, P12051126839031408469.a n = A343070 (n + 1)

end A343070

/-!
# A343071: Irregular triangle read by rows: T(n,k) = 2^(2n+1) * L(n,k), where L(n,k) is the k-th left endpoint after the n-th step of removal in the construction of the Smith-Volterra-Cantor set (SVC), 0 <= k <= 2^n - 1.

The programs for A343071, there is no canonical definition to state claims against.
-/

/-! ## A343071.P3404502713123061247

`A008619(A343072(Δ[n²]))-A343072(n)`
-/

namespace A343071.P3404502713123061247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A343072 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - A343072 n

end

end A343071.P3404502713123061247

/-! ## A343071.P12495147263151796343

`A008619(A343072(2*n+1))%A343072(n)`
-/

namespace A343071.P12495147263151796343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A343072 (2 * n + 1)).toNat) (A343072 n)

end

end A343071.P12495147263151796343

/-!
# A343072: Irregular triangle read by rows: T(n,k) = 2^(2n+1) * R(n,k), where R(n,k) is the k-th right endpoint after the n-th step of removal in the construction of the Smith-Volterra-Cantor set (SVC).

The programs for A343072, there is no canonical definition to state claims against.
-/

/-! ## A343072.P7930304594072786574

`A004754(n+1)+A343071(n)-n`
-/

namespace A343072.P7930304594072786574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1) + (A343071 n - (n : ℤ))

end

end A343072.P7930304594072786574

/-!
# A343073: a(n) is the number of integers 0 < b < n such that b^^x == 1 (mod n) has a solution; ^^ denotes the tetration operation (cf. A321312).

The programs for A343073, there is no canonical definition to state claims against.
-/

/-! ## A343073.P12916763965517581826

`A220482(A237269(n+1)+1)`
-/

namespace A343073.P12916763965517581826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220482 (A237269 (n + 1) + 1).toNat

end

end A343073.P12916763965517581826

/-! ## A343073.P401931052286617565

`A334541(A286969(n+1)+1)`
-/

namespace A343073.P401931052286617565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334541 (A286969 (n + 1) + 1).toNat

end

end A343073.P401931052286617565

/-! ## A343073.P2300323894063478445

`A051903(A077035(n+1)-4)`
-/

namespace A343073.P2300323894063478445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A077035 (n + 1) - 4).toNat

end

end A343073.P2300323894063478445

/-! ## A343073.P13270276686303894139

`A228527(∑{e}[A228501(n+2), #])`
-/

namespace A343073.P13270276686303894139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228501 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228527 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A343073.P13270276686303894139

/-! ## A343073.P5905517708148038289

`A112798(A300913(n)+A047201(n+1))`
-/

namespace A343073.P5905517708148038289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (A300913 n + A047201 (n + 1)).toNat

end

end A343073.P5905517708148038289

/-!
# A343075: Digitally delicate square numbers (changing any one decimal digit always produces a nonsquare).

The programs for A343075, there is no canonical definition to state claims against.
-/

/-! ## A343075.P7995828309469392152

`record[A088135(6*n+9)²]`
-/

namespace A343075.P7995828309469392152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088135 (6 * n + 9) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343075.P7995828309469392152

/-! ## A343075.P4329972234538126012

`A014132(A039696(Δ[3^n]))²`
-/

namespace A343075.P4329972234538126012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (A039696 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat ^ 2

end

end A343075.P4329972234538126012

/-! ## A343075.P7327322016696024987

`lt[A193790(n), A193797(A193790(n))]²`
-/

namespace A343075.P7327322016696024987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193790 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193797 (A193790 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A343075.P7327322016696024987

/-! ## A343075.P8137771875991087421

`A000290(lt[A256598(3*(n+1)), A000961(n+1)])`
-/

namespace A343075.P8137771875991087421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256598 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343075.P8137771875991087421

/-!
# A343087: a(n) is the smallest prime p such that tau(p-1) = 2^n.

The programs for A343087, there is no canonical definition to state claims against.
-/

/-! ## A343087.P8811290637551247231

`A396489(2^(n+1))`
-/

namespace A343087.P8811290637551247231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396489 (2 ^ (n + 1))

end

end A343087.P8811290637551247231

/-! ## A343087.P7721694131025825122

`A340870(2^n)`
-/

namespace A343087.P7721694131025825122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340870 (2 ^ n)

end

end A343087.P7721694131025825122

/-!
# A343089: Number of nonseparable rooted toroidal maps with n edges.

The programs for A343089, there is no canonical definition to state claims against.
-/

/-! ## A343089.P10704862820674655182

`A119797(A086092(n)+1)+n`
-/

namespace A343089.P10704862820674655182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119797 (A086092 n + 1).toNat + (n : ℤ)

end

end A343089.P10704862820674655182

/-!
# A343091: Number of rooted toroidal maps with n edges and no separating cycles or isthmuses.

The programs for A343091, there is no canonical definition to state claims against.
-/

/-! ## A343091.P17789794250468441837

`A059539(A082145(n))+A058681(n+1)`
-/

namespace A343091.P17789794250468441837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059539 (A082145 n).toNat + A058681 (n + 1)

end

end A343091.P17789794250468441837

/-!
# A343093: Number of rooted toroidal maps with n edges and no isthmuses.

The programs for A343093, there is no canonical definition to state claims against.
-/

/-! ## A343093.P17528390881096998144

`A386565(n+2)-A308523(n+2)`
-/

namespace A343093.P17528390881096998144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386565 (n + 2) - A308523 (n + 2)

end

end A343093.P17528390881096998144

/-!
# A343094: Number of connected loopless labeled multigraphs with n edges.

The programs for A343094, there is no canonical definition to state claims against.
-/

/-! ## A343094.P7809645124954090979

`floor(A007417(A006677(n+1))/log(10))+1`
-/

namespace A343094.P7809645124954090979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007417 (A006677 (n + 1)).toNat : ℝ) / Real.log (10 : ℝ)⌋ + 1

end

end A343094.P7809645124954090979

/-! ## A343094.P14567947545282874401

`A042965(A347020(n)+A038503(n))`
-/

namespace A343094.P14567947545282874401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A347020 n + A038503 n).toNat

end

end A343094.P14567947545282874401

/-!
# A343095: Array read by antidiagonals: T(n,k) is the number of k-colorings of an n X n grid, up to rotational symmetry.

The programs for A343095, there is no canonical definition to state claims against.
-/

/-! ## A343095.P12439487911669750542

`A055570(A343097(n))`
-/

namespace A343095.P12439487911669750542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A343097 n).toNat

end

end A343095.P12439487911669750542

/-! ## A343095.P3847512726095821995

`A227568(A343097(n)²)`
-/

namespace A343095.P3847512726095821995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A343097 n ^ 2).toNat

end

end A343095.P3847512726095821995

/-! ## A343095.P18296965465222469616

`A055571(A343097(n)+1)`
-/

namespace A343095.P18296965465222469616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (A343097 n + 1).toNat

end

end A343095.P18296965465222469616

/-! ## A343095.P5995497881366069308

`A239016(A343097(n)+1)`
-/

namespace A343095.P5995497881366069308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239016 (A343097 n + 1).toNat

end

end A343095.P5995497881366069308

/-! ## A343095.P18154345476362447963

`A335513(A343097(n)+1)`
-/

namespace A343095.P18154345476362447963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335513 (A343097 n + 1).toNat

end

end A343095.P18154345476362447963

/-!
# A343096: Number of n-colorings of an n X n grid, up to rotational symmetry.

The programs for A343096, the canonical program `A343096.P4511518594237206735` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343096 has offset 0).

The definition of A343096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343096.P4511518594237206735

`(n^n²+2*n^((n²+3*n%2)/4)+n^((n²+n%2)/2))/4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A343096

/-- `(n^n²+2*n^((n²+3*n%2)/4)+n^((n²+n%2)/2))/4` -/
def P4511518594237206735.Spec : Prop :=
  ∀ n, P4511518594237206735.a n = (A343096 n : ℝ)

end A343096

/-! ## A343096.P11811908800818252131

`A343095(∑[4*n])`
-/

namespace A343096.P11811908800818252131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343096.P11811908800818252131

namespace A343096

/-- `A343095(∑[4*n])` -/
def P11811908800818252131.Spec : Prop :=
  ∀ n, P11811908800818252131.a n = A343096 n

end A343096

/-! ## A343096.P11451059155712630186

`A343095(A046092(n))+A281155(n)`
-/

namespace A343096.P11451059155712630186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (A046092 n).toNat + A281155 n

end

end A343096.P11451059155712630186

namespace A343096

/-- `A343095(A046092(n))+A281155(n)` -/
def P11451059155712630186.Spec : Prop :=
  ∀ n, P11451059155712630186.a n = A343096 n

end A343096

/-! ## A343096.P13550849587588326666

`A343095(A046092(n))^A119326(n)`
-/

namespace A343096.P13550849587588326666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343095 (A046092 n).toNat : ℚ) ^ (A119326 n : ℤ)

end

end A343096.P13550849587588326666

namespace A343096

/-- `A343095(A046092(n))^A119326(n)` -/
def P13550849587588326666.Spec : Prop :=
  ∀ n, P13550849587588326666.a n = (A343096 n : ℚ)

end A343096

/-! ## A343096.P4861891026511079357

`A343095(A046092(n))^A178334(n)`
-/

namespace A343096.P4861891026511079357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343095 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A343096.P4861891026511079357

namespace A343096

/-- `A343095(A046092(n))^A178334(n)` -/
def P4861891026511079357.Spec : Prop :=
  ∀ n, P4861891026511079357.a n = (A343096 n : ℚ)

end A343096

/-!
# A343097: Array read by antidiagonals: T(n,k) is the number of k-colorings of an n X n grid, up to rotations and reflections.

The programs for A343097, there is no canonical definition to state claims against.
-/

/-! ## A343097.P10520758779580937513

`A331436(n)^gcd(n², a(∑[n]%n))` with `a(0)=1`
-/

namespace A343097.P10520758779580937513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A331436 n ^ Int.gcd (n ^ 2 : ℤ) (a ((∑ j ∈ Finset.range (n + 1), f1 j) % n))

end

end A343097.P10520758779580937513

/-! ## A343097.P8863209483922756449

`A309589(A343095(n))`
-/

namespace A343097.P8863209483922756449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309589 (A343095 n).toNat

end

end A343097.P8863209483922756449

/-! ## A343097.P5084356656141868283

`A331436(C(n, A362490(n)))`
-/

namespace A343097.P5084356656141868283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (Nat.choose n (A362490 n).toNat)

end

end A343097.P5084356656141868283

/-! ## A343097.P15322679464753608177

`A331436(n)%A054905(n+1)`
-/

namespace A343097.P15322679464753608177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331436 n) (A054905 (n + 1))

end

end A343097.P15322679464753608177

/-! ## A343097.P17563543487963290514

`A331436(A334332(n+1)%2+n)`
-/

namespace A343097.P17563543487963290514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331436 (Int.tmod (A334332 (n + 1)) 2 + (n : ℤ)).toNat

end

end A343097.P17563543487963290514

/-!
# A343098: Number of palindromes < 10^n whose squares are also palindromes.

The programs for A343098, there is no canonical definition to state claims against.
-/

/-! ## A343098.P970241837814610566

`A122632(A100449(n))+A049696(n)`
-/

namespace A343098.P970241837814610566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122632 (A100449 n).toNat + A049696 n

end

end A343098.P970241837814610566

/-! ## A343098.P15704881120739829417

`A080681(lt[A280180(3*(n+1)), A007504(n)])`
-/

namespace A343098.P15704881120739829417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343098.P15704881120739829417

/-! ## A343098.P16091839036376580860

`A080681(lt[A280180(3*(n+1)), A045943(n)])`
-/

namespace A343098.P16091839036376580860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280180 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343098.P16091839036376580860

/-! ## A343098.P7401797268199551301

`∑[A260999(A214826(n))]+n/A000034(n+1)`
-/

namespace A343098.P7401797268199551301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A214826 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A343098.P7401797268199551301

/-!
# A343099: Sums of 3 distinct odd squares.

The programs for A343099, there is no canonical definition to state claims against.
-/

/-! ## A343099.P1457425525219516808

`∩[A224771(n+1), A004014(n)]`
-/

namespace A343099.P1457425525219516808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343099.P1457425525219516808

