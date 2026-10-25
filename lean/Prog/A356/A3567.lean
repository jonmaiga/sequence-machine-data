import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B002.C002
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
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
# A356700: Numbers k such that Mordell's equation y^2 = x^3 - k has a record number of integral solutions.

The programs for A356700, there is no canonical definition to state claims against.
-/

/-! ## A356700.P5283708885364555505

`A179175(record[A075526(n)])`
-/

namespace A356700.P5283708885364555505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179175 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A356700.P5283708885364555505

/-! ## A356700.P14744345194638401049

`A179175(A261089(n)+1)`
-/

namespace A356700.P14744345194638401049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179175 (A261089 n + 1).toNat

end

end A356700.P14744345194638401049

/-!
# A356703: Numbers k such that Mordell elliptic curve y^2 = x^3 + k has a number of integral points that is both odd and > 1.

The programs for A356703, there is no canonical definition to state claims against.
-/

/-! ## A356703.P4090246536779716800

`A356720(n+1)^3`
-/

namespace A356703.P4090246536779716800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (n + 1) ^ 3

end

end A356703.P4090246536779716800

/-! ## A356703.P1527032018888465811

`A000578(A356720(n+1))`
-/

namespace A356703.P1527032018888465811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A356720 (n + 1)).toNat

end

end A356703.P1527032018888465811

/-! ## A356703.P368017073794277269

`A034828(2*A356720(n+1))`
-/

namespace A356703.P368017073794277269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A356720 (n + 1)).toNat

end

end A356703.P368017073794277269

/-! ## A356703.P7625463995628670180

`A000578(∪[A094906(n+1), A103254(n+1)])`
-/

namespace A356703.P7625463995628670180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103254 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A356703.P7625463995628670180

/-! ## A356703.P14385719596243585415

`A000578(∪[A103254(n+1), A228946(n+1)])`
-/

namespace A356703.P14385719596243585415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228946 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A356703.P14385719596243585415

/-! ## A356703.P4908705513678449424

`A356720(n+1)²*and(A083420(n), A356720(n+1))`
-/

namespace A356703.P4908705513678449424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (n + 1) ^ 2 * Int.land (A083420 n) (A356720 (n + 1))

end

end A356703.P4908705513678449424

/-! ## A356703.P2801812188340185093

`A356720(n+1)²*and(A103454(n), A356720(n+1))`
-/

namespace A356703.P2801812188340185093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (n + 1) ^ 2 * Int.land (A103454 n) (A356720 (n + 1))

end

end A356703.P2801812188340185093

/-! ## A356703.P9245248419662619701

`(comp[A356709(n+1)-1]+1)^3`
-/

namespace A356703.P9245248419662619701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356709 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 3

end

end A356703.P9245248419662619701

/-! ## A356703.P1641466706981887832

`A000578(comp[A356709(n+1)-1]+1)`
-/

namespace A356703.P1641466706981887832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356709 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A356703.P1641466706981887832

/-!
# A356704: a(n) is the least k such that Mordell's equation y^2 = x^3 + k^3 has exactly 2*n+1 integral solutions.

The programs for A356704, there is no canonical definition to state claims against.
-/

/-! ## A356704.P10786912054665948937

`A179162(2*n+1)^(1/3)`
-/

namespace A356704.P10786912054665948937
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179162 (2 * n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A356704.P10786912054665948937

/-! ## A356704.P7519986236668312355

`root(A179162(2*n+1), 3)`
-/

namespace A356704.P7519986236668312355
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179162 (2 * n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A356704.P7519986236668312355

/-!
# A356705: a(n) is the least k such that Mordell's equation y^2 = x^3 - k^3 has exactly 2*n+1 integral solutions.

The programs for A356705, there is no canonical definition to state claims against.
-/

/-! ## A356705.P14543330142274327707

`A179175(2*n+1)^(1/3)`
-/

namespace A356705.P14543330142274327707
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179175 (2 * n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A356705.P14543330142274327707

/-! ## A356705.P13284828055655213782

`root(A179175(Δ[n²]), 3)`
-/

namespace A356705.P13284828055655213782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179175 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ) ^ (1 / (3 : ℝ))

end

end A356705.P13284828055655213782

/-!
# A356706: Number of integral solutions to Mordell's equation y^2 = x^3 + n^3.

The programs for A356706, there is no canonical definition to state claims against.
-/

/-! ## A356706.P6627739900969043817

`A081119((n+1)^3)`
-/

namespace A356706.P6627739900969043817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 ((n + 1) ^ 3)

end

end A356706.P6627739900969043817

/-! ## A356706.P1142762453971035120

`2*A356707(n+1)+1`
-/

namespace A356706.P1142762453971035120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A356707 (n + 1) + 1

end

end A356706.P1142762453971035120

/-! ## A356706.P2138172539899301508

`2*A356708(n+1)-1`
-/

namespace A356706.P2138172539899301508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A356708 (n + 1) - 1

end

end A356706.P2138172539899301508

/-! ## A356706.P10033073925490538654

`A356708(n+1)+A356707(n+1)`
-/

namespace A356706.P10033073925490538654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356708 (n + 1) + A356707 (n + 1)

end

end A356706.P10033073925490538654

/-! ## A356706.P16255571219910197392

`2*A198277(n)%A356708(n+1)+1`
-/

namespace A356706.P16255571219910197392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A198277 n) (A356708 (n + 1)) + 1

end

end A356706.P16255571219910197392

/-! ## A356706.P7069292173323189748

`A010815(gcd(n, n+1))+2*A356708(n+1)`
-/

namespace A356706.P7069292173323189748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (Nat.gcd n (n + 1)) + 2 * A356708 (n + 1)

end

end A356706.P7069292173323189748

/-! ## A356706.P48032874269259808

`A008683(A020483(n))+2*A356708(n+1)`
-/

namespace A356706.P48032874269259808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020483 n).toNat + 2 * A356708 (n + 1)

end

end A356706.P48032874269259808

/-! ## A356706.P8035905424619253706

`A008683(A000040(n+1))+2*A356708(n+1)`
-/

namespace A356706.P8035905424619253706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000040 (n + 1)).toNat + 2 * A356708 (n + 1)

end

end A356706.P8035905424619253706

/-! ## A356706.P15307551056851289645

`A008683(A006450(n+1))+2*A356708(n+1)`
-/

namespace A356706.P15307551056851289645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006450 (n + 1)).toNat + 2 * A356708 (n + 1)

end

end A356706.P15307551056851289645

/-! ## A356706.P17797180890068378475

`A008683(A065091(n+1))+2*A356708(n+1)`
-/

namespace A356706.P17797180890068378475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A065091 (n + 1)).toNat + 2 * A356708 (n + 1)

end

end A356706.P17797180890068378475

/-! ## A356706.P2369020298478277286

`A008683(A142542(n+1))+2*A356708(n+1)`
-/

namespace A356706.P2369020298478277286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A142542 (n + 1)).toNat + 2 * A356708 (n + 1)

end

end A356706.P2369020298478277286

/-! ## A356706.P15848301139737185024

`A008683(A239058(2*(n+1)))+2*A356708(n+1)`
-/

namespace A356706.P15848301139737185024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A239058 (2 * (n + 1))).toNat + 2 * A356708 (n + 1)

end

end A356706.P15848301139737185024

/-! ## A356706.P9013185796154479065

`A356708(n+1)+A356708(n+1)-A057427(n+1)`
-/

namespace A356706.P9013185796154479065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356708 (n + 1) + (A356708 (n + 1) - A057427 (n + 1))

end

end A356706.P9013185796154479065

/-!
# A356707: Number of integral solutions to Mordell's equation y^2 = x^3 + n^3 with y positive.

The programs for A356707, there is no canonical definition to state claims against.
-/

/-! ## A356707.P15456506245406551516

`(A356706(n+1)-1)/2`
-/

namespace A356707.P15456506245406551516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356706 (n + 1) - 1 : ℚ) / 2

end

end A356707.P15456506245406551516

/-! ## A356707.P628673026218975922

`A356706(n+1)-A356708(n+1)`
-/

namespace A356707.P628673026218975922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356706 (n + 1) - A356708 (n + 1)

end

end A356707.P628673026218975922

/-! ## A356707.P14975305300557928837

`(A081119((n+1)^3)-1)/2`
-/

namespace A356707.P14975305300557928837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081119 ((n + 1) ^ 3) - 1 : ℚ) / 2

end

end A356707.P14975305300557928837

/-! ## A356707.P2038800366937609004

`A356708(n+1)-1`
-/

namespace A356707.P2038800366937609004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356708 (n + 1) - 1

end

end A356707.P2038800366937609004

/-! ## A356707.P7865165537821056815

`floor(A356706(n+1)/2)`
-/

namespace A356707.P7865165537821056815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A356706 (n + 1) : ℚ) / 2⌋

end

end A356707.P7865165537821056815

/-! ## A356707.P15998486858542318017

`A004526(A356706(n+1))`
-/

namespace A356707.P15998486858542318017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A356706 (n + 1)).toNat

end

end A356707.P15998486858542318017

/-! ## A356707.P2102666628216585373

`A174344(A356706(n+1)²)`
-/

namespace A356707.P2102666628216585373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A356706 (n + 1) ^ 2).toNat

end

end A356707.P2102666628216585373

/-! ## A356707.P4295636599592646975

`A189638(A356706(n+1)+1)`
-/

namespace A356707.P4295636599592646975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189638 (A356706 (n + 1) + 1).toNat

end

end A356707.P4295636599592646975

/-! ## A356707.P18032042116237102697

`A004525(A356706(n+1)-1)`
-/

namespace A356707.P18032042116237102697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A356706 (n + 1) - 1).toNat

end

end A356707.P18032042116237102697

/-! ## A356707.P10432705122082870880

`A006370(A356706(n+1)-1)`
-/

namespace A356707.P10432705122082870880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A356706 (n + 1) - 1).toNat

end

end A356707.P10432705122082870880

/-! ## A356707.P6097572422716678711

`A110654(A356706(n+1)-1)`
-/

namespace A356707.P6097572422716678711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A356706 (n + 1) - 1).toNat

end

end A356707.P6097572422716678711

/-! ## A356707.P900737092982027909

`A198277(n)%A356708(n+1)`
-/

namespace A356707.P900737092982027909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A356708 (n + 1))

end

end A356707.P900737092982027909

/-! ## A356707.P5566842144607368110

`A123108(A356706(n+1)-char[1])`
-/

namespace A356707.P5566842144607368110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A356706 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A356707.P5566842144607368110

/-! ## A356707.P4606153201388087898

`A083685(n+1)%A356708(n+1)`
-/

namespace A356707.P4606153201388087898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A356708 (n + 1))

end

end A356707.P4606153201388087898

/-! ## A356707.P9410425964718166595

`A091291(n+1)%A356706(n+1)`
-/

namespace A356707.P9410425964718166595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091291 (n + 1)) (A356706 (n + 1))

end

end A356707.P9410425964718166595

/-! ## A356707.P12363544348688127092

`A127229(n+5)%A356708(n+1)`
-/

namespace A356707.P12363544348688127092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A356708 (n + 1))

end

end A356707.P12363544348688127092

/-!
# A356708: Number of integral solutions to Mordell's equation y^2 = x^3 + n^3 with y nonnegative.

The programs for A356708, there is no canonical definition to state claims against.
-/

/-! ## A356708.P4404764881036799257

`A356707(n+1)+1`
-/

namespace A356708.P4404764881036799257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356707 (n + 1) + 1

end

end A356708.P4404764881036799257

/-! ## A356708.P7763989753071071526

`(A356706(n+1)+1)/2`
-/

namespace A356708.P7763989753071071526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356706 (n + 1) + 1 : ℚ) / 2

end

end A356708.P7763989753071071526

/-! ## A356708.P9796297738210390243

`A134108((n+1)^3)`
-/

namespace A356708.P9796297738210390243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 ((n + 1) ^ 3)

end

end A356708.P9796297738210390243

/-! ## A356708.P11711693049832311355

`(A081119((n+1)^3)+1)/2`
-/

namespace A356708.P11711693049832311355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081119 ((n + 1) ^ 3) + 1 : ℚ) / 2

end

end A356708.P11711693049832311355

/-! ## A356708.P6045062937163424277

`ceil(A356706(n+1)/2)`
-/

namespace A356708.P6045062937163424277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A356706 (n + 1) : ℚ) / 2⌉

end

end A356708.P6045062937163424277

/-! ## A356708.P5116364090512025359

`A000463(A356706(n+1))`
-/

namespace A356708.P5116364090512025359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A356706 (n + 1)).toNat

end

end A356708.P5116364090512025359

/-! ## A356708.P14290776218940088831

`A004525(A356706(n+1)+1)`
-/

namespace A356708.P14290776218940088831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A356706 (n + 1) + 1).toNat

end

end A356708.P14290776218940088831

/-! ## A356708.P1366410073811524606

`A004526(A356706(n+1)+1)`
-/

namespace A356708.P1366410073811524606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A356706 (n + 1) + 1).toNat

end

end A356708.P1366410073811524606

/-! ## A356708.P2363636050384772145

`A006370(A356706(n+1)+1)`
-/

namespace A356708.P2363636050384772145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A356706 (n + 1) + 1).toNat

end

end A356708.P2363636050384772145

/-! ## A356708.P4084277568950638066

`A110654(A356706(n+1)+1)`
-/

namespace A356708.P4084277568950638066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A356706 (n + 1) + 1).toNat

end

end A356708.P4084277568950638066

/-! ## A356708.P5241884154445284319

`A123108(A356706(n+1)+1)`
-/

namespace A356708.P5241884154445284319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A356706 (n + 1) + 1).toNat

end

end A356708.P5241884154445284319

/-! ## A356708.P6851480195490885117

`A336936(2*A356706(n+1))`
-/

namespace A356708.P6851480195490885117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336936 (2 * A356706 (n + 1)).toNat

end

end A356708.P6851480195490885117

/-! ## A356708.P15880805093494341820

`A336936(A356706(C(n+1, n)))`
-/

namespace A356708.P15880805093494341820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336936 (A356706 (Nat.choose (n + 1) n)).toNat

end

end A356708.P15880805093494341820

/-! ## A356708.P16018287685394241677

`A174344(A356706(n+1)²+1)`
-/

namespace A356708.P16018287685394241677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A356706 (n + 1) ^ 2 + 1).toNat

end

end A356708.P16018287685394241677

/-! ## A356708.P6570461967060566375

`A034888(A356706(n+1)+C(n, n²))`
-/

namespace A356708.P6570461967060566375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A356706 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)).toNat

end

end A356708.P6570461967060566375

/-!
# A356709: Numbers k such that Mordell's equation y^2 = x^3 + k^3 has exactly 1 integral solution.

The programs for A356709, there is no canonical definition to state claims against.
-/

/-! ## A356709.P2487112897180597947

`root(A179145(n+1), 3)`
-/

namespace A356709.P2487112897180597947
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179145 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A356709.P2487112897180597947

/-! ## A356709.P4253225817153191380

`comp[∪[A356720(n+1), n²]]`
-/

namespace A356709.P4253225817153191380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A356709.P4253225817153191380

/-! ## A356709.P1315433859092890497

`comp[A356720(floor(n/2)+1)-1]+1`
-/

namespace A356709.P1315433859092890497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (⌊(n : ℚ) / 2⌋ + 1).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356709.P1315433859092890497

/-! ## A356709.P3839228475624955318

`comp[∪[A001014(n), A356720(n+1)]]`
-/

namespace A356709.P3839228475624955318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A356709.P3839228475624955318

/-! ## A356709.P11883904148072533267

`comp[∪[A001105(n), A356720(n+1)]]`
-/

namespace A356709.P11883904148072533267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A356709.P11883904148072533267

/-! ## A356709.P13823450725496162014

`eq[1, A356706(n+1)]+1`
-/

namespace A356709.P13823450725496162014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356709.P13823450725496162014

/-! ## A356709.P5525029741529283798

`eq[1, A356708(n+1)]+1`
-/

namespace A356709.P5525029741529283798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356709.P5525029741529283798

/-! ## A356709.P9011525277742965318

`eq[1, A356708(A028310(n))]`
-/

namespace A356709.P9011525277742965318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356708 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356709.P9011525277742965318

/-! ## A356709.P13543400015322789057

`A020725(eq[1, A356706(n+1)])`
-/

namespace A356709.P13543400015322789057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A356709.P13543400015322789057

/-!
# A356710: Numbers k such that Mordell's equation y^2 = x^3 + k^3 has exactly 3 integral solutions.

The programs for A356710, there is no canonical definition to state claims against.
-/

/-! ## A356710.P11198106682917080410

`root(A179147(n+1), 3)`
-/

namespace A356710.P11198106682917080410
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179147 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A356710.P11198106682917080410

/-! ## A356710.P2099422251954767864

`eq[1, A356707(n+1)]+1`
-/

namespace A356710.P2099422251954767864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356710.P2099422251954767864

/-! ## A356710.P4683267998347495221

`eq[2, A356708(n+1)]+1`
-/

namespace A356710.P4683267998347495221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356710.P4683267998347495221

/-! ## A356710.P13299222932225413567

`eq[3, A356706(n+1)]+1`
-/

namespace A356710.P13299222932225413567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356710.P13299222932225413567

/-! ## A356710.P18410515368650744457

`eq[1, A356707(A028310(n))]`
-/

namespace A356710.P18410515368650744457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356707 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356710.P18410515368650744457

/-!
# A356711: Numbers k such that Mordell's equation y^2 = x^3 + k^3 has exactly 5 integral solutions.

The programs for A356711, there is no canonical definition to state claims against.
-/

/-! ## A356711.P13845441641946216787

`root(A179149(n+1), 3)`
-/

namespace A356711.P13845441641946216787
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179149 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A356711.P13845441641946216787

/-! ## A356711.P2407746044424091181

`eq[2, A356707(n+1)]+1`
-/

namespace A356711.P2407746044424091181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356711.P2407746044424091181

/-! ## A356711.P6084640966413074194

`eq[3, A356708(n+1)]+1`
-/

namespace A356711.P6084640966413074194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356711.P6084640966413074194

/-! ## A356711.P7845502691873943994

`eq[5, A356706(n+1)]+1`
-/

namespace A356711.P7845502691873943994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356711.P7845502691873943994

/-! ## A356711.P2905217000854963168

`lt[A259029(A356706(n+1)+1), 1]+1`
-/

namespace A356711.P2905217000854963168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259029 (A356706 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A356711.P2905217000854963168

/-!
# A356712: Numbers k such that Mordell's equation y^2 = x^3 + k^3 has exactly 7 integral solutions.

The programs for A356712, there is no canonical definition to state claims against.
-/

/-! ## A356712.P3278840085467193016

`root(A179151(n+1), 3)`
-/

namespace A356712.P3278840085467193016
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179151 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A356712.P3278840085467193016

/-!
# A356713: Numbers k such that Mordell's equation y^2 = x^3 - k^3 has exactly 1 integral solution.

The programs for A356713, there is no canonical definition to state claims against.
-/

/-! ## A356713.P14426981002094362676

`root(A179163(n+1), 3)`
-/

namespace A356713.P14426981002094362676
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179163 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A356713.P14426981002094362676

/-! ## A356713.P16053711713845122395

`comp[A228948(n+1)-1]+1`
-/

namespace A356713.P16053711713845122395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228948 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356713.P16053711713845122395

/-!
# A356714: Cardinality of the set{a_1+a_2+a_3+a_4: -floor((n-1)/2) <= a_1,a_2,a_3,a_4 <= floor(n/2), and a_1^2,a_2^2,a_3^2,a_4^2 are pairwise distinct}.

The programs for A356714, the canonical program `A356714.P4744887449490214454` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356714 has offset 1).

The definition of A356714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356714.P4744887449490214454

`2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=4, a(6)=7, a(7)=15, a(8)=21, a(9)=25`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A356714

/-- `2*a(n-1)-a(n-2)` -/
def P4744887449490214454.Spec : Prop :=
  ∀ n, P4744887449490214454.a n = A356714 (n + 1)

theorem P4744887449490214454.correct : P4744887449490214454.Spec := by
  intro n
  simp only [A356714, Nat.add_sub_cancel]

end A356714

/-!
# A356715: Total number of distinct numbers that can be obtained by starting with 1 and applying the "Choix de Bruxelles", version 2 operation at most n times in ternary (base 3).

The programs for A356715, there is no canonical definition to state claims against.
-/

/-! ## A356715.P3824141494930740316

`∑[A162229(A155020(n))]`
-/

namespace A356715.P3824141494930740316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162229 (A155020 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356715.P3824141494930740316

/-! ## A356715.P7826165633747215024

`A276008(n)+A005041(n!-1)`
-/

namespace A356715.P7826165633747215024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 n + A005041 (Nat.factorial n - 1)

end

end A356715.P7826165633747215024

/-! ## A356715.P5422210067560449840

`A276008(n)+A005041(xor(-n!, -1))`
-/

namespace A356715.P5422210067560449840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 n + A005041 (Int.xor (-(Nat.factorial n : ℤ)) (-1)).toNat

end

end A356715.P5422210067560449840

/-! ## A356715.P7828381054868573855

`A276008(n)+A005041(atan(-tan(1))+n!)`
-/

namespace A356715.P7828381054868573855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 n + A005041 (SequenceMachineLib.roundAway (Real.arctan (-Real.tan (1 : ℝ)) + (Nat.factorial n : ℝ))).toNat

end

end A356715.P7828381054868573855

/-!
# A356716: a(n) is the integer w such that (c(n)^2, -d(n)^2, -w) is a primitive solution to the Diophantine equation 2*x^3 + 2*y^3 + z^3 = 11^3, where c(n) = F(n+2) + (-1)^n * F(n-3), d(n) = F(n+1) + (-1)^n * F(n-4) and F(n) is the n-th Fibonacci number (A000045).

The programs for A356716, the canonical program `A356716.P11171103755935343877` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356716 has offset 1).

The definition of A356716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356716.P11171103755935343877

`a(n-1)+7*a(n-2)-7*a(n-3)-a(n-4)+a(n-5)` with `a(0)=5, a(1)=19, a(2)=31, a(3)=101, a(4)=179`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A356716

/-- `a(n-1)+7*a(n-2)-7*a(n-3)-a(n-4)+a(n-5)` -/
def P11171103755935343877.Spec : Prop :=
  ∀ n, P11171103755935343877.a n = A356716 (n + 1)

theorem P11171103755935343877.correct : P11171103755935343877.Spec := by
  intro n
  simp only [A356716, Nat.add_sub_cancel]

end A356716

/-!
# A356717: a(n) is the integer w such that (c(n)^2, -d(n)^2, w) is a primitive solution to the Diophantine equation 2*x^3 + 2*y^3 + z^3 = 11^3, where c(n) = F(n+2) + (-1)^n * F(n-3), d(n) = F(n+3) + (-1)^n * F(n-2) and F(n) is the n-th Fibonacci number (A000045).

The programs for A356717, the canonical program `A356717.P9566418642918276526` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356717 has offset 1).

The definition of A356717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356717.P9566418642918276526

`a(n-1)+7*a(n-2)-7*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=29, a(2)=59, a(3)=241, a(4)=445`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A356717

/-- `a(n-1)+7*a(n-2)-7*a(n-3)-a(n-4)+a(n-5)` -/
def P9566418642918276526.Spec : Prop :=
  ∀ n, P9566418642918276526.a n = A356717 (n + 1)

theorem P9566418642918276526.correct : P9566418642918276526.Spec := by
  intro n
  simp only [A356717, Nat.add_sub_cancel]

end A356717

/-!
# A356718: T(n,k) is the total number of prime factors, counted with multiplicity, of k!*(n-k)!, for 0 <= k <= n. Triangle read by rows.

The programs for A356718, the canonical program `A356718.P14080570996686417227` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356718 has offset 0).

The definition of A356718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356718.P2125032670734564125

`A022559(A003056(n))-∑{e}[A278218(n), #]`
-/

namespace A356718.P2125032670734564125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A003056 n).toNat - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A356718.P2125032670734564125

namespace A356718

/-- `A022559(A003056(n))-∑{e}[A278218(n), #]` -/
def P2125032670734564125.Spec : Prop :=
  ∀ n, P2125032670734564125.a n = A356718 n

end A356718

/-! ## A356718.P14080570996686417227

`A022559(A003056(n))-∑{e}[A007318(n), #]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A356718

/-- `A022559(A003056(n))-∑{e}[A007318(n), #]` -/
def P14080570996686417227.Spec : Prop :=
  ∀ n, P14080570996686417227.a n = A356718 n

theorem P14080570996686417227.correct : P14080570996686417227.Spec := by
  intro n
  simp only [A356718]

end A356718

/-! ## A356718.P15510876113696138684

`A022559(A003056(n))-∑{e}[A108086(n), #]`
-/

namespace A356718.P15510876113696138684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A003056 n).toNat - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A356718.P15510876113696138684

namespace A356718

/-- `A022559(A003056(n))-∑{e}[A108086(n), #]` -/
def P15510876113696138684.Spec : Prop :=
  ∀ n, P15510876113696138684.a n = A356718 n

end A356718

/-! ## A356718.P8319843361487187460

`A022559(A003056(n))-∑{e}[A206735(n), #]`
-/

namespace A356718.P8319843361487187460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A003056 n).toNat - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A356718.P8319843361487187460

namespace A356718

/-- `A022559(A003056(n))-∑{e}[A206735(n), #]` -/
def P8319843361487187460.Spec : Prop :=
  ∀ n, P8319843361487187460.a n = A356718 n

end A356718

/-! ## A356718.P15397837776316422661

`A022559(A003056(n))-∑{e}[A014473(n)+1, #]`
-/

namespace A356718.P15397837776316422661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A003056 n).toNat - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A356718.P15397837776316422661

namespace A356718

/-- `A022559(A003056(n))-∑{e}[A014473(n)+1, #]` -/
def P15397837776316422661.Spec : Prop :=
  ∀ n, P15397837776316422661.a n = A356718 n

theorem P15397837776316422661.correct : P15397837776316422661.Spec := by
  intro n
  simp only [A356718, Nat.add_sub_cancel, A356718.P15397837776316422661.f1, A356718.P15397837776316422661.a, A356718.P14080570996686417227.f1, A356718.P14080570996686417227.a, A003056, A003056.P5318256527314048597.a, A007318, A007318.P302227728145965961.a, A014473, A014473.P9301799580602651200.a, A022559, A022559.P10554250414511796107.a, A001222, A001222.P11318177267732088261.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A061395, A061395.P8431317036300486107.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A122111, A122111.P18124015185857335041.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A356718

/-! ## A356718.P18036514407351665788

`∑{e}[A098361(n), #]`
-/

namespace A356718.P18036514407351665788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A356718.P18036514407351665788

namespace A356718

/-- `∑{e}[A098361(n), #]` -/
def P18036514407351665788.Spec : Prop :=
  ∀ n, (P18036514407351665788.a n : ℤ) = A356718 n

end A356718

/-! ## A356718.P18101381137158184402

`∑{e}[A246660(A089633(n)), #]`
-/

namespace A356718.P18101381137158184402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 (A089633 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A356718.P18101381137158184402

namespace A356718

/-- `∑{e}[A246660(A089633(n)), #]` -/
def P18101381137158184402.Spec : Prop :=
  ∀ n, (P18101381137158184402.a n : ℤ) = A356718 n

end A356718

/-! ## A356718.P4420513706119744507

`∑{e}[A112624(A036561(n)), #]`
-/

namespace A356718.P4420513706119744507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A036561 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A356718.P4420513706119744507

namespace A356718

/-- `∑{e}[A112624(A036561(n)), #]` -/
def P4420513706119744507.Spec : Prop :=
  ∀ n, (P4420513706119744507.a n : ℤ) = A356718 n

end A356718

/-!
# A356719: a(n) = Sum_{k=0..n} k^binomial(n,k).

The programs for A356719, there is no canonical definition to state claims against.
-/

/-! ## A356719.P9117317683346213509

`∑[n]*A265436(n!)`
-/

namespace A356719.P9117317683346213509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A265436 (Nat.factorial n)

end

end A356719.P9117317683346213509

/-!
# A356720: Numbers k such that Mordell's equation y^2 = x^3 + k^3 has more than 1 integral solution.

The programs for A356720, there is no canonical definition to state claims against.
-/

/-! ## A356720.P1648338739758805842

`root(A356703(n+1), 3)`
-/

namespace A356720.P1648338739758805842
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A356703 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A356720.P1648338739758805842

/-! ## A356720.P16506351798670208951

`∪[A094906(n+1), A103254(n+1)]`
-/

namespace A356720.P16506351798670208951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356720.P16506351798670208951

/-! ## A356720.P15931283526708614652

`∪[A103254(n+1), A228946(n+1)]`
-/

namespace A356720.P15931283526708614652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356720.P15931283526708614652

/-! ## A356720.P4008495994897869725

`∪[A103254(n+1), A356710(n+1)]`
-/

namespace A356720.P4008495994897869725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356720.P4008495994897869725

/-! ## A356720.P15552214633240099329

`comp[A356709(n+1)-1]+1`
-/

namespace A356720.P15552214633240099329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356709 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356720.P15552214633240099329

/-! ## A356720.P4345924833537054689

`lt[1, A356706(n+1)]+1`
-/

namespace A356720.P4345924833537054689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A356720.P4345924833537054689

/-!
# A356721: Numbers written using exactly two distinct Roman numerals.

The programs for A356721, there is no canonical definition to state claims against.
-/

/-! ## A356721.P14959015360701384342

`eq[2, A057226(A233583(n+1))]`
-/

namespace A356721.P14959015360701384342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057226 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356721.P14959015360701384342

/-!
# A356722: Number of n X n tables where each row represents a permutation of { 1, 2, ..., n } and the column sums are equal.

The programs for A356722, there is no canonical definition to state claims against.
-/

/-! ## A356722.P315466385331809957

`A356723(n+1)*(n+1)!`
-/

namespace A356722.P315466385331809957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356723 (n + 1) * (Nat.factorial (n + 1) : ℤ)

end

end A356722.P315466385331809957

/-!
# A356723: Number of n X n tables where each row represents a permutation of { 1, 2, ..., n } and the column sums are equal, with the first row being the identity permutation.

The programs for A356723, there is no canonical definition to state claims against.
-/

/-! ## A356723.P9836518184138612732

`A356722(n+1)/(n+1)!`
-/

namespace A356723.P9836518184138612732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356722 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A356723.P9836518184138612732

/-! ## A356723.P11335017204280592407

`A356722(n+1)/record[A084938(n)]`
-/

namespace A356723.P11335017204280592407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356722 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A356723.P11335017204280592407

/-! ## A356723.P7650624266891357566

`A356722(n+1)/A000142(n+1)`
-/

namespace A356723.P7650624266891357566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356722 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A356723.P7650624266891357566

/-! ## A356723.P16122413616944850216

`A356722(n+1)/∏[A000027(n+1)]`
-/

namespace A356723.P16122413616944850216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356722 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A356723.P16122413616944850216

/-!
# A356725: Number of n X n tables where each row represents a permutation of { 1, 2, ..., n } and the column sums are equal, up to permutation of rows and columns.

The programs for A356725, there is no canonical definition to state claims against.
-/

/-! ## A356725.P14084069877111784761

`A390641(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A356725.P14084069877111784761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A390641 (a (n - 1) ^ 2).toNat

end

end A356725.P14084069877111784761

/-!
# A356726: Integers which have in Roman numerals more distinct symbols than any smaller number.

The programs for A356726, there is no canonical definition to state claims against.
-/

/-! ## A356726.P2835315383606760098

`∑[ogf((1+3x)/(1-10x^2))]`
-/

namespace A356726.P2835315383606760098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 0, -10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356726.P2835315383606760098

/-! ## A356726.P12762952710781760844

`ogf((1+3x)/(1-x-10x^2+10x^3))`
-/

namespace A356726.P12762952710781760844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -1, -10, 10] n

end

end A356726.P12762952710781760844

/-! ## A356726.P14265894831454296244

`∑[10*a(n-2)]` with `a(0)=1, a(1)=3`
-/

namespace A356726.P14265894831454296244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  10 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356726.P14265894831454296244

/-!
# A356727: Primes of the form 4*k^2 + 84*k + 43.

The programs for A356727, the canonical program `A356727.P16365836359497930272` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356727 has offset 1).

The definition of A356727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356727.P16365836359497930272

`p?[(n+41)*(n+1)+2]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A356727

/-- `p?[(n+41)*(n+1)+2]` -/
def P16365836359497930272.Spec : Prop :=
  ∀ n, (P16365836359497930272.a n : ℤ) = A356727 (n + 1)

theorem P16365836359497930272.correct : P16365836359497930272.Spec := by
  intro n
  simp only [A356727, Nat.add_sub_cancel]

end A356727

/-! ## A356727.P1234292480086811770

`record[A006530((n+41)*(n+1)+2)]`
-/

namespace A356727.P1234292480086811770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 41) * (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356727.P1234292480086811770

namespace A356727

/-- `record[A006530((n+41)*(n+1)+2)]` -/
def P1234292480086811770.Spec : Prop :=
  ∀ n, P1234292480086811770.a n = A356727 (n + 1)

end A356727

/-!
# A356728: The number of 3-permutations that avoid the patterns 132 and 213.

The programs for A356728, the canonical program `A356728.P11203820675646910882` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356728 has offset 1).

The definition of A356728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356728.P11203820675646910882

`3*2^n+(n+1)²-3*(n+1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A356728

/-- `3*2^n+(n+1)²-3*(n+1)` -/
def P11203820675646910882.Spec : Prop :=
  ∀ n, P11203820675646910882.a n = A356728 (n + 1)

theorem P11203820675646910882.correct : P11203820675646910882.Spec := by
  intro n
  simp only [A356728, Nat.add_sub_cancel]

end A356728

/-! ## A356728.P9641123238668772449

`∑[∑[2*(a(n-1)-1)]]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A356728.P9641123238668772449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n f2 =>
  2 * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356728.P9641123238668772449

namespace A356728

/-- `∑[∑[2*(a(n-1)-1)]]` -/
def P9641123238668772449.Spec : Prop :=
  ∀ n, P9641123238668772449.a n = A356728 (n + 1)

end A356728

/-! ## A356728.P12191782459870295816

`abs(2-or(n²-n, 3*2^n))`
-/

namespace A356728.P12191782459870295816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - Int.lor ((n ^ 2 : ℤ) - (n : ℤ)) (3 * 2 ^ n : ℤ)|

end

end A356728.P12191782459870295816

namespace A356728

/-- `abs(2-or(n²-n, 3*2^n))` -/
def P12191782459870295816.Spec : Prop :=
  ∀ n, P12191782459870295816.a n = A356728 (n + 1)

end A356728

/-! ## A356728.P11992264838245771317

`abs(2-xor(n²-n, 3*2^n))`
-/

namespace A356728.P11992264838245771317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - Int.xor ((n ^ 2 : ℤ) - (n : ℤ)) (3 * 2 ^ n : ℤ)|

end

end A356728.P11992264838245771317

namespace A356728

/-- `abs(2-xor(n²-n, 3*2^n))` -/
def P11992264838245771317.Spec : Prop :=
  ∀ n, P11992264838245771317.a n = A356728 (n + 1)

end A356728

/-! ## A356728.P11027813227968793408

`∑[∑[a(n-1)+a(n-1)-2]]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A356728.P11027813227968793408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356728.P11027813227968793408

namespace A356728

/-- `∑[∑[a(n-1)+a(n-1)-2]]` -/
def P11027813227968793408.Spec : Prop :=
  ∀ n, P11027813227968793408.a n = A356728 (n + 1)

end A356728

/-! ## A356728.P1707856789005345367

`∑[∑[a(n-1)-(2-a(n-1))]]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A356728.P1707856789005345367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n f2 =>
  f2 (n - 1) - (2 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356728.P1707856789005345367

namespace A356728

/-- `∑[∑[a(n-1)-(2-a(n-1))]]` -/
def P1707856789005345367.Spec : Prop :=
  ∀ n, P1707856789005345367.a n = A356728 (n + 1)

end A356728

/-! ## A356728.P16457914157543778744

`∑[record[A072946(n)+n]]`
-/

namespace A356728.P16457914157543778744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072946 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356728.P16457914157543778744

namespace A356728

/-- `∑[record[A072946(n)+n]]` -/
def P16457914157543778744.Spec : Prop :=
  ∀ n, P16457914157543778744.a n = A356728 (n + 1)

end A356728

/-!
# A356729: Numbers having at least 4 distinct partitions into exactly 3 parts with the same product.

The programs for A356729, there is no canonical definition to state claims against.
-/

/-! ## A356729.P1079170849008297663

`A002024(A345187(3*n+5)+A287400(2*(n+2)))`
-/

namespace A356729.P1079170849008297663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A345187 (3 * n + 5) + A287400 (2 * (n + 2))).toNat

end

end A356729.P1079170849008297663

/-!
# A356730: Conductor of the elliptic curve y^2 = x^3 + n.

The programs for A356730, there is no canonical definition to state claims against.
-/

/-! ## A356730.P2507760079687593127

`A356731(A305548(n+1))`
-/

namespace A356730.P2507760079687593127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356731 (A305548 (n + 1)).toNat

end

end A356730.P2507760079687593127

/-!
# A356731: Conductor of the elliptic curve y^2 = x^3 - n.

The programs for A356731, there is no canonical definition to state claims against.
-/

/-! ## A356731.P4727092776744728107

`A356730(A305548(n+1))`
-/

namespace A356731.P4727092776744728107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356730 (A305548 (n + 1)).toNat

end

end A356731.P4727092776744728107

/-!
# A356733: Number of neighborless parts in the integer partition with Heinz number n.

The programs for A356733, the canonical program `A356733.P2832013835477743224` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356733 has offset 1).

The definition of A356733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356733.P7484498446147208610

`A001221(n+1)-A356735(n+1)`
-/

namespace A356733.P7484498446147208610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A356735 (n + 1)

end

end A356733.P7484498446147208610

namespace A356733

/-- `A001221(n+1)-A356735(n+1)` -/
def P7484498446147208610.Spec : Prop :=
  ∀ n, P7484498446147208610.a n = A356733 (n + 1)

end A356733

/-! ## A356733.P18196638472405068736

`A287170(n+1)-A287170(A322361(n+1))`
-/

namespace A356733.P18196638472405068736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1) - A287170 (A322361 (n + 1)).toNat

end

end A356733.P18196638472405068736

namespace A356733

/-- `A287170(n+1)-A287170(A322361(n+1))` -/
def P18196638472405068736.Spec : Prop :=
  ∀ n, P18196638472405068736.a n = A356733 (n + 1)

end A356733

/-! ## A356733.P2832013835477743224

`A287170(n+1)-A287170(A330749(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A356733

/-- `A287170(n+1)-A287170(A330749(n+1))` -/
def P2832013835477743224.Spec : Prop :=
  ∀ n, P2832013835477743224.a n = A356733 (n + 1)

theorem P2832013835477743224.correct : P2832013835477743224.Spec := by
  intro n
  simp only [A356733, Nat.add_sub_cancel]

end A356733

/-! ## A356733.P2446877625926038488

`∑{e}[∏{p}[n+1, #], #]-A061498(A322361(n+1)²)`
-/

namespace A356733.P2446877625926038488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A061498 (A322361 (n + 1) ^ 2).toNat

end

end A356733.P2446877625926038488

namespace A356733

/-- `∑{e}[∏{p}[n+1, #], #]-A061498(A322361(n+1)²)` -/
def P2446877625926038488.Spec : Prop :=
  ∀ n, P2446877625926038488.a n = A356733 (n + 1)

end A356733

/-! ## A356733.P144885448815678203

`A000523(A034444(n+1))-A323014(A322361((n+1)²)²)`
-/

namespace A356733.P144885448815678203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A034444 (n + 1)).toNat - A323014 (A322361 ((n + 1) ^ 2) ^ 2).toNat

end

end A356733.P144885448815678203

namespace A356733

/-- `A000523(A034444(n+1))-A323014(A322361((n+1)²)²)` -/
def P144885448815678203.Spec : Prop :=
  ∀ n, P144885448815678203.a n = A356733 (n + 1)

end A356733

/-! ## A356733.P15974201403681373302

`val(A356231(∏{p}[n+1, #]), 2)`
-/

namespace A356733.P15974201403681373302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A356231 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat 2

end

end A356733.P15974201403681373302

namespace A356733

/-- `val(A356231(∏{p}[n+1, #]), 2)` -/
def P15974201403681373302.Spec : Prop :=
  ∀ n, (P15974201403681373302.a n : ℤ) = A356733 (n + 1)

end A356733

/-! ## A356733.P7924334572319166170

`val(A356231(A007947(n+1)), 2)`
-/

namespace A356733.P7924334572319166170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A356231 (A007947 (n + 1)).toNat).toNat 2

end

end A356733.P7924334572319166170

namespace A356733

/-- `val(A356231(A007947(n+1)), 2)` -/
def P7924334572319166170.Spec : Prop :=
  ∀ n, (P7924334572319166170.a n : ℤ) = A356733 (n + 1)

end A356733

/-!
# A356734: Heinz numbers of integer partitions with at least one neighborless part.

The programs for A356734, there is no canonical definition to state claims against.
-/

/-! ## A356734.P9360910196983582470

`lt[0, A356733(n+2)]+2`
-/

namespace A356734.P9360910196983582470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356733 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A356734.P9360910196983582470

/-! ## A356734.P2396885080680284500

`comp[A356736(n+1)-1]+1`
-/

namespace A356734.P2396885080680284500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356736 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356734.P2396885080680284500

/-! ## A356734.P14047994236440386354

`comp[A066312(n+1)-2]+2`
-/

namespace A356734.P14047994236440386354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A356734.P14047994236440386354

/-! ## A356734.P5754804397136693688

`lt[42, A008725(a(A356733(n)))]` with `a(0)=13, a(1)=22`
-/

namespace A356734.P5754804397136693688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

def f2 : ℕ → ℤ := SequenceMachineLib.rec [13, 22] fun n f2 =>
  A008725 (f2 (A356733 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A356734.P5754804397136693688

/-! ## A356734.P5172315751815836291

`lt[42, A018900(a(A356733(n)))]` with `a(0)=13, a(1)=22`
-/

namespace A356734.P5172315751815836291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

def f2 : ℕ → ℤ := SequenceMachineLib.rec [13, 22] fun n f2 =>
  A018900 (f2 (A356733 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A356734.P5172315751815836291

/-! ## A356734.P14913955664328241755

`comp[A023443(A356736(n+1))]+1`
-/

namespace A356734.P14913955664328241755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A356736 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356734.P14913955664328241755

/-! ## A356734.P14913488773937006565

`comp[A356736(n+1)%A356690(n)]`
-/

namespace A356734.P14913488773937006565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356736 (n + 1)) (A356690 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A356734.P14913488773937006565

/-! ## A356734.P5662353178294309536

`comp[∪[A356736(n+1), A356768(n)]]`
-/

namespace A356734.P5662353178294309536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356736 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356768 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A356734.P5662353178294309536

/-! ## A356734.P11467998152771349788

`∪[A073492(n+1), A128603(n+1)]`
-/

namespace A356734.P11467998152771349788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356734.P11467998152771349788

/-! ## A356734.P12807902386569617151

`∪[A073493(n+1), A128603(n+1)]`
-/

namespace A356734.P12807902386569617151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356734.P12807902386569617151

/-!
# A356735: Number of distinct parts that have neighbors in the integer partition with Heinz number n.

The programs for A356735, the canonical program `A356735.P13560131192145601515` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356735 has offset 1).

The definition of A356735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356735.P13560131192145601515

`∑{p}[n+1, gcd(n, #)]-A356733(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A356735

/-- `∑{p}[n+1, gcd(n, #)]-A356733(n+1)` -/
def P13560131192145601515.Spec : Prop :=
  ∀ n, P13560131192145601515.a n = A356735 (n + 1)

theorem P13560131192145601515.correct : P13560131192145601515.Spec := by
  intro n
  simp only [A356735, Nat.add_sub_cancel]

end A356735

/-! ## A356735.P7687815608249478241

`A001221(n+1)-A356733(n+1)`
-/

namespace A356735.P7687815608249478241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A356733 (n + 1)

end

end A356735.P7687815608249478241

namespace A356735

/-- `A001221(n+1)-A356733(n+1)` -/
def P7687815608249478241.Spec : Prop :=
  ∀ n, P7687815608249478241.a n = A356735 (n + 1)

end A356735

/-! ## A356735.P15496154569409859764

`A001222(A007947(n+1))-A356733(n+1)`
-/

namespace A356735.P15496154569409859764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat - A356733 (n + 1)

end

end A356735.P15496154569409859764

namespace A356735

/-- `A001222(A007947(n+1))-A356733(n+1)` -/
def P15496154569409859764.Spec : Prop :=
  ∀ n, P15496154569409859764.a n = A356735 (n + 1)

end A356735

/-! ## A356735.P1209560028688462299

`A356227(A034444(n+1))-A356733(n+1)`
-/

namespace A356735.P1209560028688462299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356227 (A034444 (n + 1)).toNat - A356733 (n + 1)

end

end A356735.P1209560028688462299

namespace A356735

/-- `A356227(A034444(n+1))-A356733(n+1)` -/
def P1209560028688462299.Spec : Prop :=
  ∀ n, P1209560028688462299.a n = A356735 (n + 1)

end A356735

/-! ## A356735.P6624949094692176740

`A049298(A322361(n+1)²)`
-/

namespace A356735.P6624949094692176740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049298 (A322361 (n + 1) ^ 2).toNat

end

end A356735.P6624949094692176740

namespace A356735

/-- `A049298(A322361(n+1)²)` -/
def P6624949094692176740.Spec : Prop :=
  ∀ n, P6624949094692176740.a n = A356735 (n + 1)

end A356735

/-! ## A356735.P10351436775853621321

`A061498(A322361(n+1)²)`
-/

namespace A356735.P10351436775853621321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061498 (A322361 (n + 1) ^ 2).toNat

end

end A356735.P10351436775853621321

namespace A356735

/-- `A061498(A322361(n+1)²)` -/
def P10351436775853621321.Spec : Prop :=
  ∀ n, P10351436775853621321.a n = A356735 (n + 1)

end A356735

/-! ## A356735.P14550256956808338752

`A384890(A087207(n+1)*A296210(n+1))`
-/

namespace A356735.P14550256956808338752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384890 (A087207 (n + 1) * A296210 (n + 1)).toNat

end

end A356735.P14550256956808338752

namespace A356735

/-- `A384890(A087207(n+1)*A296210(n+1))` -/
def P14550256956808338752.Spec : Prop :=
  ∀ n, P14550256956808338752.a n = A356735 (n + 1)

end A356735

/-! ## A356735.P13533351425067950815

`A323014(A322361((n+1)²)²)`
-/

namespace A356735.P13533351425067950815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A322361 ((n + 1) ^ 2) ^ 2).toNat

end

end A356735.P13533351425067950815

namespace A356735

/-- `A323014(A322361((n+1)²)²)` -/
def P13533351425067950815.Spec : Prop :=
  ∀ n, P13533351425067950815.a n = A356735 (n + 1)

end A356735

/-! ## A356735.P4169822683636522980

`8%A356231(A007947(n+1))`
-/

namespace A356735.P4169822683636522980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 8 (A356231 (A007947 (n + 1)).toNat)

end

end A356735.P4169822683636522980

namespace A356735

/-- `8%A356231(A007947(n+1))` -/
def P4169822683636522980.Spec : Prop :=
  ∀ n, P4169822683636522980.a n = A356735 (n + 1)

end A356735

/-! ## A356735.P989130298740966075

`A087624(A208644(n+1))`
-/

namespace A356735.P989130298740966075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (A208644 (n + 1)).toNat

end

end A356735.P989130298740966075

namespace A356735

/-- `A087624(A208644(n+1))` -/
def P989130298740966075.Spec : Prop :=
  ∀ n, P989130298740966075.a n = A356735 (n + 1)

end A356735

/-!
# A356736: Heinz numbers of integer partitions with no neighborless parts.

The programs for A356736, there is no canonical definition to state claims against.
-/

/-! ## A356736.P13091400728271266991

`eq[0, A356733(n+1)]+1`
-/

namespace A356736.P13091400728271266991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356733 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356736.P13091400728271266991

/-! ## A356736.P2013410124640707686

`eq[8, 8*a(A356733(n))]` with `a(0)=1`
-/

namespace A356736.P2013410124640707686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  8 * f2 (A356733 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356736.P2013410124640707686

/-! ## A356736.P17714019087967912052

`eq[A001221(n+1), A356735(n+1)]+1`
-/

namespace A356736.P17714019087967912052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A356736.P17714019087967912052

/-! ## A356736.P3756255986284418101

`filter[A318981(n+1), A137794(#)]`
-/

namespace A356736.P3756255986284418101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A356736.P3756255986284418101

/-! ## A356736.P18305401900579585330

`∩[A073491(n+1), A318981(n+1)]`
-/

namespace A356736.P18305401900579585330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356736.P18305401900579585330

/-!
# A356737: Number of integer partitions of n into odd parts covering an interval of odd numbers.

The programs for A356737, there is no canonical definition to state claims against.
-/

/-! ## A356737.P4817091459913492272

`A309683(n)+A245656(A200935(n+1))`
-/

namespace A356737.P4817091459913492272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 n + A245656 (A200935 (n + 1)).toNat

end

end A356737.P4817091459913492272

/-! ## A356737.P11527687995998911013

`A309683(n)+A249351(A228754(n+1))`
-/

namespace A356737.P11527687995998911013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 n + A249351 (A228754 (n + 1)).toNat

end

end A356737.P11527687995998911013

/-! ## A356737.P8802278581214529850

`A065033(lt[A302680(n+1), A001462(2*n+3)])`
-/

namespace A356737.P8802278581214529850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356737.P8802278581214529850

/-!
# A356741: a(n) is the least prime(m) such that prime(n) + prime(m)# is prime, where prime(m)# denotes the product of the first m primes, or -1 if no such prime(m) exists.

The programs for A356741, there is no canonical definition to state claims against.
-/

/-! ## A356741.P12577305689177083681

`A000040(A100380(n+2))`
-/

namespace A356741.P12577305689177083681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A100380 (n + 2)).toNat

end

end A356741.P12577305689177083681

/-! ## A356741.P7198119226599154516

`A158388(n+1)+A006093(A100380(n+2))`
-/

namespace A356741.P7198119226599154516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (n + 1) + A006093 (A100380 (n + 2)).toNat

end

end A356741.P7198119226599154516

/-! ## A356741.P12956019763239773898

`A006093(A100380(n+2))^(1-A000007(n))+1`
-/

namespace A356741.P12956019763239773898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (A100380 (n + 2)).toNat : ℚ) ^ (1 - A000007 n : ℤ) + 1

end

end A356741.P12956019763239773898

/-! ## A356741.P15663252157120303231

`A006093(A100380(n+2))+A084468(n+1)%2`
-/

namespace A356741.P15663252157120303231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A100380 (n + 2)).toNat + Int.tmod (A084468 (n + 1)) 2

end

end A356741.P15663252157120303231

/-! ## A356741.P1281745733772485552

`A100484(A100380(n+2))%(A046315(n+1)+2)/2`
-/

namespace A356741.P1281745733772485552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A100484 (A100380 (n + 2)).toNat) (A046315 (n + 1) + 2) : ℚ) / 2

end

end A356741.P1281745733772485552

/-! ## A356741.P16829801225538501196

`(A100484(A100380(n+2))+A000045(C(n, n+1)))/2`
-/

namespace A356741.P16829801225538501196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (A100380 (n + 2)).toNat + A000045 (Nat.choose n (n + 1)) : ℚ) / 2

end

end A356741.P16829801225538501196

/-! ## A356741.P9168340703562181240

`A100370(A100380(n+2)%A100348(n+1))`
-/

namespace A356741.P9168340703562181240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100370 (Int.tmod (A100380 (n + 2)) (A100348 (n + 1))).toNat

end

end A356741.P9168340703562181240

/-! ## A356741.P7518104428545067011

`A100370(A100380(n+2))%A100372(n+5)`
-/

namespace A356741.P7518104428545067011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100370 (A100380 (n + 2)).toNat) (A100372 (n + 5))

end

end A356741.P7518104428545067011

/-!
# A356742: Numbers k such that k and k+2 both have exactly 4 divisors.

The programs for A356742, there is no canonical definition to state claims against.
-/

/-! ## A356742.P6689146349976336759

`A189974(n+1)-1`
-/

namespace A356742.P6689146349976336759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189974 (n + 1) - 1

end

end A356742.P6689146349976336759

/-! ## A356742.P11221576450741323186

`filter[A062832(n+1), A354927(#)]`
-/

namespace A356742.P11221576450741323186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A356742.P11221576450741323186

/-! ## A356742.P17687649980622274398

`∩[A007422(n+1), A062832(n+1)]`
-/

namespace A356742.P17687649980622274398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356742.P17687649980622274398

/-! ## A356742.P4102818299821740664

`∩[A030513(n+1), A062832(n+1)]`
-/

namespace A356742.P4102818299821740664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356742.P4102818299821740664

/-! ## A356742.P2468480599027069459

`∩[A007422(n+2)-2, A007422(n+2)]`
-/

namespace A356742.P2468480599027069459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356742.P2468480599027069459

/-! ## A356742.P4600032489974505073

`∩[A062832(n+1), A332269(n+1)]`
-/

namespace A356742.P4600032489974505073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356742.P4600032489974505073

/-! ## A356742.P2864419318709047252

`∩[A062832(n+1), A323644(n+1)]`
-/

namespace A356742.P2864419318709047252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356742.P2864419318709047252

/-! ## A356742.P11794128479407444458

`∩[A067888(n+1)-1, A323644(n+1)]`
-/

namespace A356742.P11794128479407444458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356742.P11794128479407444458

/-! ## A356742.P9798667509553017201

`A023443(A189974(n+1))`
-/

namespace A356742.P9798667509553017201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189974 (n + 1)).toNat

end

end A356742.P9798667509553017201

/-! ## A356742.P11216920308464690902

`eq[A100577(n+1), A189827(n+2)]+1`
-/

namespace A356742.P11216920308464690902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A356742.P11216920308464690902

/-! ## A356742.P2576637500814726520

`eq[A000108(A032741(n)), A334954(n+2)]`
-/

namespace A356742.P2576637500814726520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356742.P2576637500814726520

/-! ## A356742.P7564871263405450155

`eq[A286002(n+2)², A034714(A059292(n+2))]`
-/

namespace A356742.P7564871263405450155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286002 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034714 (A059292 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356742.P7564871263405450155

/-! ## A356742.P16998959033747098087

`∩[A062832(n+1), A130763(n+1)]`
-/

namespace A356742.P16998959033747098087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356742.P16998959033747098087

/-!
# A356743: Numbers k such that k and k+2 both have exactly 6 divisors.

The programs for A356743, there is no canonical definition to state claims against.
-/

/-! ## A356743.P15787978335642303188

`A190267(n+1)-1`
-/

namespace A356743.P15787978335642303188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190267 (n + 1) - 1

end

end A356743.P15787978335642303188

/-! ## A356743.P4908439744920635042

`abs(A190267(n+1)+A057428(3*(n+1)))`
-/

namespace A356743.P4908439744920635042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190267 (n + 1) + A057428 (3 * (n + 1))|

end

end A356743.P4908439744920635042

/-! ## A356743.P5152040770201619195

`A289741(A045798(n+1))+A190267(n+1)`
-/

namespace A356743.P5152040770201619195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289741 (A045798 (n + 1)).toNat + A190267 (n + 1)

end

end A356743.P5152040770201619195

/-! ## A356743.P8829820556133056698

`A000027(A190267(n+1)+A057428(3*(n+1)))`
-/

namespace A356743.P8829820556133056698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A190267 (n + 1) + A057428 (3 * (n + 1))).toNat

end

end A356743.P8829820556133056698

/-! ## A356743.P9138749230932179897

`∩[A030515(n+1)-2, A030515(n+1)]`
-/

namespace A356743.P9138749230932179897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356743.P9138749230932179897

/-! ## A356743.P1048918977497782013

`∩[A030515(n+1), A062832(n+1)]`
-/

namespace A356743.P1048918977497782013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356743.P1048918977497782013

/-! ## A356743.P16630330312864162803

`∩[A062832(n+1), A253388(n+1)]`
-/

namespace A356743.P16630330312864162803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356743.P16630330312864162803

/-! ## A356743.P6342629297538973153

`A066182(A190267(n+1))`
-/

namespace A356743.P6342629297538973153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A190267 (n + 1)).toNat

end

end A356743.P6342629297538973153

/-!
# A356744: Numbers k such that both k and k+2 have exactly 8 divisors.

The programs for A356744, the canonical program `A356744.P10025507909788214387` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356744 has offset 1).

The definition of A356744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1489 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356744.P10025507909788214387

`∩[A030626(n+1), A062832(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A356744

/-- `∩[A030626(n+1), A062832(n+1)]` -/
def P10025507909788214387.Spec : Prop :=
  ∀ n, (P10025507909788214387.a n : ℤ) = A356744 (n + 1)

theorem P10025507909788214387.correct : P10025507909788214387.Spec := by
  intro n
  simp only [A356744, Nat.add_sub_cancel]

end A356744

/-! ## A356744.P5072741277600524598

`∩[A062832(n+1), A111398(n+1)]`
-/

namespace A356744.P5072741277600524598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356744.P5072741277600524598

namespace A356744

/-- `∩[A062832(n+1), A111398(n+1)]` -/
def P5072741277600524598.Spec : Prop :=
  ∀ n, (P5072741277600524598.a n : ℤ) = A356744 (n + 1)

end A356744

/-! ## A356744.P9349173498961823624

`∩[A030626(n+2)-2, A030626(n+2)]`
-/

namespace A356744.P9349173498961823624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356744.P9349173498961823624

namespace A356744

/-- `∩[A030626(n+2)-2, A030626(n+2)]` -/
def P9349173498961823624.Spec : Prop :=
  ∀ n, (P9349173498961823624.a n : ℤ) = A356744 (n + 1)

end A356744

/-! ## A356744.P10425528178271360051

`∩[A111398(n+2)-2, A111398(n+2)]`
-/

namespace A356744.P10425528178271360051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356744.P10425528178271360051

namespace A356744

/-- `∩[A111398(n+2)-2, A111398(n+2)]` -/
def P10425528178271360051.Spec : Prop :=
  ∀ n, (P10425528178271360051.a n : ℤ) = A356744 (n + 1)

end A356744

/-! ## A356744.P7220482470969011219

`∩[A030626(n+2), A171950(A030626(n+2))]`
-/

namespace A356744.P7220482470969011219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (A030626 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356744.P7220482470969011219

namespace A356744

/-- `∩[A030626(n+2), A171950(A030626(n+2))]` -/
def P7220482470969011219.Spec : Prop :=
  ∀ n, (P7220482470969011219.a n : ℤ) = A356744 (n + 1)

end A356744

/-! ## A356744.P16985145982587362348

`∩[A111398(n+2), A171950(A111398(n+2))]`
-/

namespace A356744.P16985145982587362348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (A111398 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356744.P16985145982587362348

namespace A356744

/-- `∩[A111398(n+2), A171950(A111398(n+2))]` -/
def P16985145982587362348.Spec : Prop :=
  ∀ n, (P16985145982587362348.a n : ℤ) = A356744 (n + 1)

end A356744

/-! ## A356744.P15188409025072990738

`∩[A062832(n+1), A139588(n+1)]`
-/

namespace A356744.P15188409025072990738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356744.P15188409025072990738

namespace A356744

/-- `∩[A062832(n+1), A139588(n+1)]` -/
def P15188409025072990738.Spec : Prop :=
  ∀ n, (P15188409025072990738.a n : ℤ) = A356744 (n + 1)

end A356744

/-!
# A356746: Number of 2-colored labeled directed acyclic graphs on n nodes such that all black nodes are sources.

The programs for A356746, there is no canonical definition to state claims against.
-/

/-! ## A356746.P9465676866003340597

`A000720(A007018(n))+A000364(n)`
-/

namespace A356746.P9465676866003340597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007018 n).toNat + A000364 n

end

end A356746.P9465676866003340597

/-!
# A356748: Numbers k such that k and k+1 are both products of 2 triangular numbers.

The programs for A356748, there is no canonical definition to state claims against.
-/

/-! ## A356748.P4751917929373573027

`∩[A085780(n+1), A023443(A085780(n+1))]`
-/

namespace A356748.P4751917929373573027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A085780 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356748.P4751917929373573027

/-! ## A356748.P1838986280267466971

`(A226389(n+1)-1)%A226404(n+5)`
-/

namespace A356748.P1838986280267466971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226389 (n + 1) - 1) (A226404 (n + 5))

end

end A356748.P1838986280267466971

/-! ## A356748.P4318895075749412573

`A226389(n+1)-A112030(A059231(n))`
-/

namespace A356748.P4318895075749412573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226389 (n + 1) - A112030 (A059231 n).toNat

end

end A356748.P4318895075749412573

/-!
# A356749: a(n) is the number of trailing 1's in the dual Zeckendorf representation of n (A104326).

The programs for A356749, the canonical program `A356749.P7001661797573302836` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356749 has offset 0).

The definition of A356749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356749.P12025394089159112424

`Δ[a(floor(n/ϕ))+n]-1` with `a(0)=0`
-/

namespace A356749.P12025394089159112424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A356749.P12025394089159112424

namespace A356749

/-- `Δ[a(floor(n/ϕ))+n]-1` -/
def P12025394089159112424.Spec : Prop :=
  ∀ n, P12025394089159112424.a n = A356749 n

end A356749

/-! ## A356749.P15642928079356560734

`val(A052499(n), 2)`
-/

namespace A356749.P15642928079356560734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A052499 n).toNat 2

end

end A356749.P15642928079356560734

namespace A356749

/-- `val(A052499(n), 2)` -/
def P15642928079356560734.Spec : Prop :=
  ∀ n, (P15642928079356560734.a n : ℤ) = A356749 n

end A356749

/-! ## A356749.P3019081742891692422

`A083368(n+1)-1`
-/

namespace A356749.P3019081742891692422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083368 (n + 1) - 1

end

end A356749.P3019081742891692422

namespace A356749

/-- `A083368(n+1)-1` -/
def P3019081742891692422.Spec : Prop :=
  ∀ n, P3019081742891692422.a n = A356749 n

theorem P3019081742891692422.correct : P3019081742891692422.Spec := by
  intro n
  simp only [A356749, Nat.add_sub_cancel, A356749.P3019081742891692422.a, A356749.P7001661797573302836.a, A035614, A035614.P1531182426394583162.a, A083368, A083368.P5965228121584232260.a, A361989, A361989.P2689510740431827614.a, A035612, A035612.P7106491847305260424.a, A130312, A130312.P4153789337100935269.a, A194029, A194029.P3923932250120237143.a, A000045, A000045.P11838749114346432762.a, A022340, A022340.P3334581410869230776.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A072649, A072649.P9617326913925617377.a, A003714, A003714.P565032106299634425.a, A003849, A003849.P15070805603138295355.a, A022342, A022342.P1190268710273068250.a, A108852, A108852.P14747039251510576692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A356749

/-! ## A356749.P5564374329883645724

`val(A232559(n+1), 2)`
-/

namespace A356749.P5564374329883645724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A232559 (n + 1)).toNat 2

end

end A356749.P5564374329883645724

namespace A356749

/-- `val(A232559(n+1), 2)` -/
def P5564374329883645724.Spec : Prop :=
  ∀ n, (P5564374329883645724.a n : ℤ) = A356749 n

end A356749

/-! ## A356749.P13126010914462831526

`val(A003754(n+1)+1, 2)`
-/

namespace A356749.P13126010914462831526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003754 (n + 1) + 1).toNat 2

end

end A356749.P13126010914462831526

namespace A356749

/-- `val(A003754(n+1)+1, 2)` -/
def P13126010914462831526.Spec : Prop :=
  ∀ n, (P13126010914462831526.a n : ℤ) = A356749 n

end A356749

/-! ## A356749.P7001661797573302836

`A035614(A361989(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A356749

/-- `A035614(A361989(n+1))` -/
def P7001661797573302836.Spec : Prop :=
  ∀ n, P7001661797573302836.a n = A356749 n

theorem P7001661797573302836.correct : P7001661797573302836.Spec := by
  intro n
  simp only [A356749]

end A356749

/-! ## A356749.P11362558481991403264

`val(A336231(n+2), 2)`
-/

namespace A356749.P11362558481991403264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336231 (n + 2)).toNat 2

end

end A356749.P11362558481991403264

namespace A356749

/-- `val(A336231(n+2), 2)` -/
def P11362558481991403264.Spec : Prop :=
  ∀ n, (P11362558481991403264.a n : ℤ) = A356749 n

end A356749

/-! ## A356749.P7118316454048686720

`A200748(n)%A083368(n+1)`
-/

namespace A356749.P7118316454048686720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A083368 (n + 1))

end

end A356749.P7118316454048686720

namespace A356749

/-- `A200748(n)%A083368(n+1)` -/
def P7118316454048686720.Spec : Prop :=
  ∀ n, P7118316454048686720.a n = A356749 n

end A356749

/-! ## A356749.P13752564915756602916

`A058197(n+1)%A083368(n+1)`
-/

namespace A356749.P13752564915756602916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A083368 (n + 1))

end

end A356749.P13752564915756602916

namespace A356749

/-- `A058197(n+1)%A083368(n+1)` -/
def P13752564915756602916.Spec : Prop :=
  ∀ n, P13752564915756602916.a n = A356749 n

end A356749

/-! ## A356749.P1090163954358380278

`A290255(A385818(n+1))`
-/

namespace A356749.P1090163954358380278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (A385818 (n + 1)).toNat

end

end A356749.P1090163954358380278

namespace A356749

/-- `A290255(A385818(n+1))` -/
def P1090163954358380278.Spec : Prop :=
  ∀ n, P1090163954358380278.a n = A356749 n

end A356749

/-! ## A356749.P7212880121685416214

`A007814(A232559(n+1))`
-/

namespace A356749.P7212880121685416214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A232559 (n + 1)).toNat

end

end A356749.P7212880121685416214

namespace A356749

/-- `A007814(A232559(n+1))` -/
def P7212880121685416214.Spec : Prop :=
  ∀ n, P7212880121685416214.a n = A356749 n

end A356749

/-! ## A356749.P16219113642302870825

`A007814(A336231(n+2))`
-/

namespace A356749.P16219113642302870825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A336231 (n + 2)).toNat

end

end A356749.P16219113642302870825

namespace A356749

/-- `A007814(A336231(n+2))` -/
def P16219113642302870825.Spec : Prop :=
  ∀ n, P16219113642302870825.a n = A356749 n

end A356749

/-! ## A356749.P3557406771020869070

`A035612(A280514(n+1))-1`
-/

namespace A356749.P3557406771020869070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A280514 (n + 1)).toNat - 1

end

end A356749.P3557406771020869070

namespace A356749

/-- `A035612(A280514(n+1))-1` -/
def P3557406771020869070.Spec : Prop :=
  ∀ n, P3557406771020869070.a n = A356749 n

end A356749

/-! ## A356749.P12237002340318716696

`A007814(A052499(n))`
-/

namespace A356749.P12237002340318716696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A052499 n).toNat

end

end A356749.P12237002340318716696

namespace A356749

/-- `A007814(A052499(n))` -/
def P12237002340318716696.Spec : Prop :=
  ∀ n, P12237002340318716696.a n = A356749 n

end A356749

/-! ## A356749.P7184692598273530970

`A007814(A003754(n+1)+1)`
-/

namespace A356749.P7184692598273530970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003754 (n + 1) + 1).toNat

end

end A356749.P7184692598273530970

namespace A356749

/-- `A007814(A003754(n+1)+1)` -/
def P7184692598273530970.Spec : Prop :=
  ∀ n, P7184692598273530970.a n = A356749 n

end A356749

/-! ## A356749.P5498567160014201602

`A007814(lt[A087117(n), 2]+1)`
-/

namespace A356749.P5498567160014201602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A356749.P5498567160014201602

namespace A356749

/-- `A007814(lt[A087117(n), 2]+1)` -/
def P5498567160014201602.Spec : Prop :=
  ∀ n, P5498567160014201602.a n = A356749 n

end A356749

/-! ## A356749.P14542939959424843306

`A001511(A003754(n+1)+1)-1`
-/

namespace A356749.P14542939959424843306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A003754 (n + 1) + 1).toNat - 1

end

end A356749.P14542939959424843306

namespace A356749

/-- `A001511(A003754(n+1)+1)-1` -/
def P14542939959424843306.Spec : Prop :=
  ∀ n, P14542939959424843306.a n = A356749 n

end A356749

/-! ## A356749.P2748632801455768688

`A007814((A247648(n+1)+1)/2)`
-/

namespace A356749.P2748632801455768688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A247648 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A356749.P2748632801455768688

namespace A356749

/-- `A007814((A247648(n+1)+1)/2)` -/
def P2748632801455768688.Spec : Prop :=
  ∀ n, P2748632801455768688.a n = A356749 n

end A356749

/-! ## A356749.P13704775972235015442

`A091090(A358654(n+1))-1`
-/

namespace A356749.P13704775972235015442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A358654 (n + 1)).toNat - 1

end

end A356749.P13704775972235015442

namespace A356749

/-- `A091090(A358654(n+1))-1` -/
def P13704775972235015442.Spec : Prop :=
  ∀ n, P13704775972235015442.a n = A356749 n

end A356749

/-! ## A356749.P9080831808194234164

`A022290(A003754(A083368(A022290(A003714(n+1)))))`
-/

namespace A356749.P9080831808194234164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A003754 (A083368 (A022290 (A003714 (n + 1)).toNat).toNat).toNat).toNat

end

end A356749.P9080831808194234164

namespace A356749

/-- `A022290(A003754(A083368(A022290(A003714(n+1)))))` -/
def P9080831808194234164.Spec : Prop :=
  ∀ n, P9080831808194234164.a n = A356749 n

end A356749

/-!
# A356750: Palindromic odd numbers with an odd number of distinct prime factors.

The programs for A356750, there is no canonical definition to state claims against.
-/

/-! ## A356750.P18416013753871340204

`filter[A029950(n+1), A353673(#)]`
-/

namespace A356750.P18416013753871340204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A356750.P18416013753871340204

/-! ## A356750.P6631675715163227396

`filter[A092361(n+1), A353673(#)]`
-/

namespace A356750.P6631675715163227396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A356750.P6631675715163227396

/-! ## A356750.P4133516206431597129

`filter[A169824(n+1), A353673(#)]`
-/

namespace A356750.P4133516206431597129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A356750.P4133516206431597129

/-! ## A356750.P5394538100154018140

`filter[A002113(n+2), A353673(#)]`
-/

namespace A356750.P5394538100154018140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A356750.P5394538100154018140

/-! ## A356750.P16386222019599980723

`filter[A061917(n+2), A353673(#)]`
-/

namespace A356750.P16386222019599980723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A356750.P16386222019599980723

/-! ## A356750.P5919506524559539730

`∩[A002113(n+1), A098903(n+1)]`
-/

namespace A356750.P5919506524559539730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356750.P5919506524559539730

/-! ## A356750.P16282194370421893861

`∩[A029950(n+1), A098903(n+1)]`
-/

namespace A356750.P16282194370421893861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356750.P16282194370421893861

/-! ## A356750.P9296456745707390590

`∩[A061917(n+1), A098903(n+1)]`
-/

namespace A356750.P9296456745707390590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356750.P9296456745707390590

/-! ## A356750.P4038975246333945320

`∩[A092361(n+1), A098903(n+1)]`
-/

namespace A356750.P4038975246333945320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356750.P4038975246333945320

/-! ## A356750.P10599240484636103165

`∩[A098897(n+1), A098903(n+1)]`
-/

namespace A356750.P10599240484636103165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356750.P10599240484636103165

/-! ## A356750.P16062305029521986783

`∩[A098903(n+1), A169824(n+1)]`
-/

namespace A356750.P16062305029521986783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356750.P16062305029521986783

/-! ## A356750.P6067618164114929799

`∩[A029950(n+1), A030230(n+1)]`
-/

namespace A356750.P6067618164114929799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356750.P6067618164114929799

/-!
# A356751: Positive integers m such that x^2 - x + m contains more than m/2 prime numbers for x = 1, 2, ..., m.

The programs for A356751, there is no canonical definition to state claims against.
-/

/-! ## A356751.P8246065516259388476

`p?[A004736(A352874(n+1))+n]`
-/

namespace A356751.P8246065516259388476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A352874 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A356751.P8246065516259388476

/-! ## A356751.P17138935343766420961

`p?[A010766(3*n+4)*A086962(2*n+1)]`
-/

namespace A356751.P17138935343766420961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (3 * n + 4) * A086962 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A356751.P17138935343766420961

/-! ## A356751.P4448686725138451060

`A151800(eq[1, A139462(n+2)]+2-A139460(n+1))`
-/

namespace A356751.P4448686725138451060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139462 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 : ℤ) - A139460 (n + 1)).toNat

end

end A356751.P4448686725138451060

/-!
# A356752: E.g.f. satisfies A(x) = 1/(1 - x)^(x^2/2 * A(x)).

The programs for A356752, there is no canonical definition to state claims against.
-/

/-! ## A356752.P6044127001415365193

`A014682(2*A375698(n))`
-/

namespace A356752.P6044127001415365193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A375698 n).toNat

end

end A356752.P6044127001415365193

/-! ## A356752.P13698995506194674917

`filter[A375698(n), A127254(#)]`
-/

namespace A356752.P13698995506194674917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A356752.P13698995506194674917

/-! ## A356752.P938460506850413611

`A375698(n)+A000007(A000110(n))`
-/

namespace A356752.P938460506850413611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375698 n + A000007 (A000110 n).toNat

end

end A356752.P938460506850413611

/-! ## A356752.P15451357216105884349

`A375698(n)+A010815(A001550(n))`
-/

namespace A356752.P15451357216105884349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375698 n + A010815 (A001550 n).toNat

end

end A356752.P15451357216105884349

/-! ## A356752.P16066332521017240058

`A375698(n)+A000038(A056835(n))`
-/

namespace A356752.P16066332521017240058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375698 n + A000038 (A056835 n).toNat

end

end A356752.P16066332521017240058

/-!
# A356753: E.g.f. satisfies A(x) = 1/(1 - x)^(x^3/6 * A(x)).

The programs for A356753, there is no canonical definition to state claims against.
-/

/-! ## A356753.P16867499252440948488

`A026741(A356968(n)+A351493(n))`
-/

namespace A356753.P16867499252440948488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A356968 n + A351493 n).toNat

end

end A356753.P16867499252440948488

/-!
# A356754: Triangle read by rows: T(n,k) = ((n-1)*(n+2))/2 + 2*k.

The programs for A356754, there is no canonical definition to state claims against.
-/

/-! ## A356754.P1847063062884669973

`2*(n+1)-C(∑[char[∑[n+1]]], 2)`
-/

namespace A356754.P1847063062884669973
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A356754.P1847063062884669973

/-! ## A356754.P9486180970545638373

`2-C(∑[char[∑[n+1]]], 2)+n+n`
-/

namespace A356754.P9486180970545638373
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) + (n : ℤ)

end

end A356754.P9486180970545638373

/-! ## A356754.P5417337214640144214

`3*n-eq[0, floor(2*sqrt(n))%2]+2`
-/

namespace A356754.P5417337214640144214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + 2

end

end A356754.P5417337214640144214

/-! ## A356754.P17535995510451674933

`2-(C(comp[∑[n]]-(n+2), 2)-n)+n`
-/

namespace A356754.P17535995510451674933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 2 : ℤ)).toNat 2 : ℤ) - (n : ℤ)) + (n : ℤ)

end

end A356754.P17535995510451674933

/-! ## A356754.P1268210929623337389

`2-(C(comp[∑[n]]-n-2, 2)-n-n)`
-/

namespace A356754.P1268210929623337389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - 2).toNat 2 : ℤ) - (n : ℤ) - (n : ℤ))

end

end A356754.P1268210929623337389

/-! ## A356754.P11518198109896018591

`A132118(comp[∑[n]])`
-/

namespace A356754.P11518198109896018591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A356754.P11518198109896018591

/-! ## A356754.P6888018326103063324

`A108872(n+1)+n`
-/

namespace A356754.P6888018326103063324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) + (n : ℤ)

end

end A356754.P6888018326103063324

/-! ## A356754.P18347417410478723482

`A051162(n)+2+n`
-/

namespace A356754.P18347417410478723482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + 2 + (n : ℤ)

end

end A356754.P18347417410478723482

/-! ## A356754.P6701341727727963946

`A002262(n)+comp[∑[n]]`
-/

namespace A356754.P6701341727727963946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A356754.P6701341727727963946

/-! ## A356754.P1630303402220484013

`A094727(comp[∑[n]])+n`
-/

namespace A356754.P1630303402220484013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + (n : ℤ)

end

end A356754.P1630303402220484013

/-!
# A356755: Semiprimes k such that k is congruent to 2 modulo k's index in the sequence of semiprimes.

The programs for A356755, there is no canonical definition to state claims against.
-/

/-! ## A356755.P17708536079570804192

`A001358(A106127(n+1))`
-/

namespace A356755.P17708536079570804192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A106127 (n + 1)).toNat

end

end A356755.P17708536079570804192

/-! ## A356755.P10454142108318612600

`A213939(n+1)+A186621(A106127(n+1))`
-/

namespace A356755.P10454142108318612600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213939 (n + 1) + A186621 (A106127 (n + 1)).toNat

end

end A356755.P10454142108318612600

/-!
# A356756: Positive integers m such that x^2 + x + m contains at least m/2 prime numbers for x = 1, 2, ..., m.

The programs for A356756, there is no canonical definition to state claims against.
-/

/-! ## A356756.P12580245820135540778

`A356751(n+2)%(12*a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A356756.P12580245820135540778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  Int.tmod (A356751 (n + 2)) (12 * a (n - 2))

end

end A356756.P12580245820135540778

/-! ## A356756.P14673780385071892143

`∪[A128678(A303739(n+1)), A356751(n+4)]`
-/

namespace A356756.P14673780385071892143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128678 (A303739 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356751 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356756.P14673780385071892143

/-! ## A356756.P3439850597987478487

`lt[A136404(A321443(n)), n+1]`
-/

namespace A356756.P3439850597987478487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136404 (A321443 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356756.P3439850597987478487

/-! ## A356756.P7320562369147976214

`A356751(A061375(3*(n+1)))%A055547(n+1)`
-/

namespace A356756.P7320562369147976214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356751 (A061375 (3 * (n + 1))).toNat) (A055547 (n + 1))

end

end A356756.P7320562369147976214

/-!
# A356758: a(n) is the number of nonzero digits in n!.

The programs for A356758, there is no canonical definition to state claims against.
-/

/-! ## A356758.P4352211139323502200

`A034886(n)-A027869(n)`
-/

namespace A356758.P4352211139323502200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - A027869 n

end

end A356758.P4352211139323502200

/-! ## A356758.P14542463537218743400

`A034886(n)-(A191610(n+1)+A137581(n)-n)`
-/

namespace A356758.P14542463537218743400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - (A191610 (n + 1) + (A137581 n - (n : ℤ)))

end

end A356758.P14542463537218743400

/-! ## A356758.P17871012064732594765

`A079680(n)+A079714(n)+A079684(n)+A079688(n)+A079690(n)+A079691(n)+A079692(n)+A079693(n)+A079694(n)`
-/

namespace A356758.P17871012064732594765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079680 n + A079714 n + A079684 n + A079688 n + A079690 n + A079691 n + A079692 n + A079693 n + A079694 n

end

end A356758.P17871012064732594765

/-! ## A356758.P11304865829288007666

`A008906(n)-A137581(n)`
-/

namespace A356758.P11304865829288007666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008906 n - A137581 n

end

end A356758.P11304865829288007666

/-! ## A356758.P16047824110205444063

`A008906(n)+A027868(n)-A027869(n)`
-/

namespace A356758.P16047824110205444063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008906 n + (A027868 n - A027869 n)

end

end A356758.P16047824110205444063

/-! ## A356758.P17613785684798594846

`A034886(n)-(A137581(n)+val(A243757(n), 5))`
-/

namespace A356758.P17613785684798594846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - (A137581 n + (SequenceMachineLib.valuation (A243757 n).toNat 5 : ℤ))

end

end A356758.P17613785684798594846

/-! ## A356758.P6543668527301914217

`∑{digits}[A181952(n), A181952(A047753(#))]`
-/

namespace A356758.P6543668527301914217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A181952 (A047753 x).toNat).sum

end

end A356758.P6543668527301914217

/-! ## A356758.P10369575287210931042

`∑{digits}[A181952(n), A181952(A079692(#))]`
-/

namespace A356758.P10369575287210931042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A181952 (A079692 x).toNat).sum

end

end A356758.P10369575287210931042

/-! ## A356758.P7404741882718981073

`∑{digits}[n!, round(atan(#))]`
-/

namespace A356758.P7404741882718981073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.roundAway (Real.arctan (x : ℝ))).sum

end

end A356758.P7404741882718981073

/-! ## A356758.P13659335609334526937

`∑{digits}[n!, ceil(tanh(#))]`
-/

namespace A356758.P13659335609334526937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌈Real.tanh (x : ℝ)⌉).sum

end

end A356758.P13659335609334526937

/-!
# A356759: Bit-reverse the odd part of the dual Zeckendorf representation of n: a(n) = A022290(A057889(A003754(n+1))).

The programs for A356759, the canonical program `A356759.P17403706661082396773` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356759 has offset 0).

The definition of A356759 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003754, A022290, A057889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356759.P17403706661082396773

`A022290(A057889(A003754(n+1)))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A356759

/-- `A022290(A057889(A003754(n+1)))` -/
def P17403706661082396773.Spec : Prop :=
  ∀ n, P17403706661082396773.a n = A356759 n

theorem P17403706661082396773.correct : P17403706661082396773.Spec := by
  intro n
  simp only [A356759]

end A356759

/-!
# A356760: a(n) = L(2*F(n)) + L(2*F(n+1)), where L(n) is the n-th Lucas number (A000032), and F(n) is the n-th Fibonacci number (A000045).

The programs for A356760, the canonical program `A356760.P8308903421901114083` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356760 has offset 0).

The definition of A356760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356760.P8308903421901114083

`A316275(n)+A316275(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A356760

/-- `A316275(n)+A316275(n+1)` -/
def P8308903421901114083.Spec : Prop :=
  ∀ n, P8308903421901114083.a n = A356760 n

theorem P8308903421901114083.correct : P8308903421901114083.Spec := by
  intro n
  simp only [A356760]

end A356760

/-! ## A356760.P11232303784181330948

`A000032(2*A000045(n))+A000032(2*A000045(n+1))`
-/

namespace A356760.P11232303784181330948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * A000045 n).toNat + A000032 (2 * A000045 (n + 1)).toNat

end

end A356760.P11232303784181330948

namespace A356760

/-- `A000032(2*A000045(n))+A000032(2*A000045(n+1))` -/
def P11232303784181330948.Spec : Prop :=
  ∀ n, P11232303784181330948.a n = A356760 n

end A356760

/-! ## A356760.P618112476567883911

`A005248(A000045(n+1))+A005248(A000045(n))`
-/

namespace A356760.P618112476567883911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (A000045 (n + 1)).toNat + A005248 (A000045 n).toNat

end

end A356760.P618112476567883911

namespace A356760

/-- `A005248(A000045(n+1))+A005248(A000045(n))` -/
def P618112476567883911.Spec : Prop :=
  ∀ n, P618112476567883911.a n = A356760 n

end A356760

/-! ## A356760.P4643967019913651546

`A169985(A055389(n))+A005248(A303427(2*n+3))`
-/

namespace A356760.P4643967019913651546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (A055389 n).toNat + A005248 (A303427 (2 * n + 3)).toNat

end

end A356760.P4643967019913651546

namespace A356760

/-- `A169985(A055389(n))+A005248(A303427(2*n+3))` -/
def P4643967019913651546.Spec : Prop :=
  ∀ n, P4643967019913651546.a n = A356760 n

end A356760

/-! ## A356760.P11459271631797339624

`A005248(A303427(2*n+3))+A005248(A103609(2*n))`
-/

namespace A356760.P11459271631797339624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (A303427 (2 * n + 3)).toNat + A005248 (A103609 (2 * n)).toNat

end

end A356760.P11459271631797339624

namespace A356760

/-- `A005248(A303427(2*n+3))+A005248(A103609(2*n))` -/
def P11459271631797339624.Spec : Prop :=
  ∀ n, P11459271631797339624.a n = A356760 n

end A356760

/-!
# A356761: a(n) = L(2*L(n)) + L(2*L(n+1)), where L(n) is the n-th Lucas number (A000032).

The programs for A356761, the canonical program `A356761.P11169387101489840448` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356761 has offset 0).

The definition of A356761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356761.P11169387101489840448

`A000032(2*A000032(n))+A000032(2*A000032(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A356761

/-- `A000032(2*A000032(n))+A000032(2*A000032(n+1))` -/
def P11169387101489840448.Spec : Prop :=
  ∀ n, P11169387101489840448.a n = A356761 n

theorem P11169387101489840448.correct : P11169387101489840448.Spec := by
  intro n
  simp only [A356761]

end A356761

/-! ## A356761.P14777030651919861679

`A005248(A000032(n+1))+A005248(A000032(n))`
-/

namespace A356761.P14777030651919861679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (A000032 (n + 1)).toNat + A005248 (A000032 n).toNat

end

end A356761.P14777030651919861679

namespace A356761

/-- `A005248(A000032(n+1))+A005248(A000032(n))` -/
def P14777030651919861679.Spec : Prop :=
  ∀ n, P14777030651919861679.a n = A356761 n

end A356761

/-!
# A356763: Triprime gaps (A114403) in the order of first occurrence.

The programs for A356763, there is no canonical definition to state claims against.
-/

/-! ## A356763.P9226325789289258653

`A114403(lt[0, char[A131939(n+1)]])`
-/

namespace A356763.P9226325789289258653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131939 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114403 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356763.P9226325789289258653

/-! ## A356763.P1790724451847797586

`A114403(eq[1, char[A131939(n+1)]])`
-/

namespace A356763.P1790724451847797586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131939 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114403 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A356763.P1790724451847797586

/-!
# A356766: Least number k such that k and k+2 both have exactly 2n divisors, or -1 if no such number exists.

The programs for A356766, there is no canonical definition to state claims against.
-/

/-! ## A356766.P15290834657408943709

`A190646(n+1)-1`
-/

namespace A356766.P15290834657408943709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190646 (n + 1) - 1

end

end A356766.P15290834657408943709

/-! ## A356766.P7567886957935243860

`A316441(A000040(n+1))+A190646(n+1)`
-/

namespace A356766.P7567886957935243860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A190646 (n + 1)

end

end A356766.P7567886957935243860

/-! ## A356766.P10616330567120281788

`A316441(A073751(n+1))+A190646(n+1)`
-/

namespace A356766.P10616330567120281788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A073751 (n + 1)).toNat + A190646 (n + 1)

end

end A356766.P10616330567120281788

/-! ## A356766.P8293525998933364470

`A324114(A285771(2*n+1))+A190646(n+1)`
-/

namespace A356766.P8293525998933364470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324114 (A285771 (2 * n + 1)).toNat + A190646 (n + 1)

end

end A356766.P8293525998933364470

/-! ## A356766.P16255110410690316143

`A190647(A190608(2*(n+2)))+A190646(n+1)`
-/

namespace A356766.P16255110410690316143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190647 (A190608 (2 * (n + 2))).toNat + A190646 (n + 1)

end

end A356766.P16255110410690316143

/-!
# A356768: a(n) = (n^2+n+1)*(n^2+n)*n^2.

The programs for A356768, the canonical program `A356768.P16275254064346373558` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356768 has offset 0).

The definition of A356768 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²+n+1)*(n²+n)*n²` (program `A356768.P16275254064346373558`, by `A356768.P16275254064346373558.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A356768.P16275254064346373558

`(n²+n+1)*(n²+n)*n²`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A356768

/-- `(n²+n+1)*(n²+n)*n²` -/
def P16275254064346373558.Spec : Prop :=
  ∀ n, (P16275254064346373558.a n : ℤ) = A356768 n

theorem P16275254064346373558.correct : P16275254064346373558.Spec := by
  intro n
  simp only [A356768]

end A356768

/-! ## A356768.P12300137171337245355

`lcm(n^3, Δ[(n^5-n)/5])`
-/

namespace A356768.P12300137171337245355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 5 : ℤ) - (n : ℤ) : ℚ) / 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ 3 : ℤ) (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A356768.P12300137171337245355

namespace A356768

/-- `lcm(n^3, Δ[(n^5-n)/5])` -/
def P12300137171337245355.Spec : Prop :=
  ∀ n, (P12300137171337245355.a n : ℤ) = A356768 n

end A356768

/-! ## A356768.P3311040746063016897

`abs(n^3*floor((n+1)/Δ[atan(n)]))`
-/

namespace A356768.P3311040746063016897
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 3 : ℤ) * ⌊(n + 1 : ℝ) / (f1 (n + 1) - f1 n)⌋|

end

end A356768.P3311040746063016897

namespace A356768

/-- `abs(n^3*floor((n+1)/Δ[atan(n)]))` -/
def P3311040746063016897.Spec : Prop :=
  ∀ n, P3311040746063016897.a n = A356768 n

end A356768

/-! ## A356768.P11719937493911685346

`abs(n^3*round((n+1)/Δ[atan(n)]))`
-/

namespace A356768.P11719937493911685346
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 3 : ℤ) * SequenceMachineLib.roundAway ((n + 1 : ℝ) / (f1 (n + 1) - f1 n))|

end

end A356768.P11719937493911685346

namespace A356768

/-- `abs(n^3*round((n+1)/Δ[atan(n)]))` -/
def P11719937493911685346.Spec : Prop :=
  ∀ n, P11719937493911685346.a n = A356768 n

end A356768

/-! ## A356768.P14173147209473279710

`A060459(n)-A101362(n)`
-/

namespace A356768.P14173147209473279710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060459 n - A101362 n

end

end A356768.P14173147209473279710

namespace A356768

/-- `A060459(n)-A101362(n)` -/
def P14173147209473279710.Spec : Prop :=
  ∀ n, P14173147209473279710.a n = A356768 n

theorem P14173147209473279710.correct : P14173147209473279710.Spec := by
  intro n
  simp only [A356768, Nat.add_sub_cancel, A356768.P14173147209473279710.a, A356768.P16275254064346373558.a, A060459, A060459.P13091624147768298715.a, A101362, A101362.P467268516433551878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356768

/-! ## A356768.P18303762574625237282

`A027444(n)²-A100019(n)`
-/

namespace A356768.P18303762574625237282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n ^ 2 - A100019 n

end

end A356768.P18303762574625237282

namespace A356768

/-- `A027444(n)²-A100019(n)` -/
def P18303762574625237282.Spec : Prop :=
  ∀ n, P18303762574625237282.a n = A356768 n

theorem P18303762574625237282.correct : P18303762574625237282.Spec := by
  intro n
  simp only [A356768, Nat.add_sub_cancel, A356768.P18303762574625237282.a, A356768.P16275254064346373558.a, A027444, A027444.P13486811862535796769.a, A100019, A100019.P10475415265072854522.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356768

/-! ## A356768.P1951887883403282444

`A027444(n)*A098547(n)-A027444(n)`
-/

namespace A356768.P1951887883403282444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n * A098547 n - A027444 n

end

end A356768.P1951887883403282444

namespace A356768

/-- `A027444(n)*A098547(n)-A027444(n)` -/
def P1951887883403282444.Spec : Prop :=
  ∀ n, P1951887883403282444.a n = A356768 n

theorem P1951887883403282444.correct : P1951887883403282444.Spec := by
  intro n
  simp only [A356768, Nat.add_sub_cancel, A356768.P1951887883403282444.a, A356768.P16275254064346373558.a, A027444, A027444.P13486811862535796769.a, A098547, A098547.P2884746087904860817.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356768

/-! ## A356768.P9225108849891993864

`A002061(n+1)*A100019(n)-A100019(n)`
-/

namespace A356768.P9225108849891993864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) * A100019 n - A100019 n

end

end A356768.P9225108849891993864

namespace A356768

/-- `A002061(n+1)*A100019(n)-A100019(n)` -/
def P9225108849891993864.Spec : Prop :=
  ∀ n, P9225108849891993864.a n = A356768 n

theorem P9225108849891993864.correct : P9225108849891993864.Spec := by
  intro n
  simp only [A356768, Nat.add_sub_cancel, A356768.P9225108849891993864.a, A356768.P16275254064346373558.a, A002061, A002061.P13016590216674735232.a, A100019, A100019.P10475415265072854522.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A356768

/-! ## A356768.P156728657482516944

`(A102909(n)-A002061(n+1))/A002061(n)`
-/

namespace A356768.P156728657482516944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102909 n - A002061 (n + 1) : ℚ) / (A002061 n : ℚ)

end

end A356768.P156728657482516944

namespace A356768

/-- `(A102909(n)-A002061(n+1))/A002061(n)` -/
def P156728657482516944.Spec : Prop :=
  ∀ n, P156728657482516944.a n = (A356768 n : ℚ)

end A356768

/-!
# A356770: a(n) is the number of equations in the set {x+2y=n, 2x+3y=n, ..., k*x+(k+1)*y=n, ..., n*x+(n+1)*y=n} which admit at least one nonnegative integer solution.

The programs for A356770, there is no canonical definition to state claims against.
-/

/-! ## A356770.P1891742227090547997

`ceil(∏{e}[n+1, #+1]/2)+ceil(2*sqrt(n+1))-2`
-/

namespace A356770.P1891742227090547997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉ + (⌈2 * Real.sqrt (n + 1 : ℝ)⌉ - 2)

end

end A356770.P1891742227090547997

/-! ## A356770.P1129812328695937700

`A072670(n)+floor(1/Δ[sqrt(n)])`
-/

namespace A356770.P1129812328695937700
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n + ⌊1 / (f1 (n + 1) - f1 n)⌋

end

end A356770.P1129812328695937700

/-! ## A356770.P4342992223937401092

`A317243(n+1)+∏{e}[n+1, #+1]`
-/

namespace A356770.P4342992223937401092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317243 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A356770.P4342992223937401092

/-! ## A356770.P10350139611606691586

`floor(1/Δ[sqrt(n)])+A038548(n+1)-1`
-/

namespace A356770.P10350139611606691586
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (f1 (n + 1) - f1 n)⌋ + (A038548 (n + 1) - 1)

end

end A356770.P10350139611606691586

/-! ## A356770.P2046836535766901952

`A055086(n)+ceil(∏{e}[n+1, #+1]/2)`
-/

namespace A356770.P2046836535766901952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n + ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉

end

end A356770.P2046836535766901952

/-! ## A356770.P16159934599823854800

`floor(sqrt(4*(n+1))+A000005(n+1)/2)-1`
-/

namespace A356770.P16159934599823854800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (4 * (n + 1) : ℝ) + ((A000005 (n + 1) : ℚ) / 2 : ℝ)⌋ - 1

end

end A356770.P16159934599823854800

/-! ## A356770.P9483055506518269264

`∏{e}[n+1, #+1]+A236627(n+1)+round(sqrt(n+1))-1`
-/

namespace A356770.P9483055506518269264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (A236627 (n + 1) + (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1))

end

end A356770.P9483055506518269264

/-! ## A356770.P1405964464921837086

`∏{e}[n+1, #+1]+ceil(2*(sqrt(n+1)-1))-A211263(2*(n+1))`
-/

namespace A356770.P1405964464921837086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (⌈2 * (Real.sqrt (n + 1 : ℝ) - 1)⌉ - A211263 (2 * (n + 1)))

end

end A356770.P1405964464921837086

/-! ## A356770.P9301383151622723011

`A055086(n)+A038548(n+1)`
-/

namespace A356770.P9301383151622723011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n + A038548 (n + 1)

end

end A356770.P9301383151622723011

/-! ## A356770.P2860292856987141752

`A317243(n+1)+A000005(n+1)`
-/

namespace A356770.P2860292856987141752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317243 (n + 1) + A000005 (n + 1)

end

end A356770.P2860292856987141752

/-!
# A356771: a(n) is the sum of the Fibonacci numbers in common in the Zeckendorf and dual Zeckendorf representations of n.

The programs for A356771, the canonical program `A356771.P9439761422347141107` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356771 has offset 0).

The definition of A356771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 986 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356771.P9439761422347141107

`A022290(and(A003714(n), A003754(n+1)))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A356771

/-- `A022290(and(A003714(n), A003754(n+1)))` -/
def P9439761422347141107.Spec : Prop :=
  ∀ n, P9439761422347141107.a n = A356771 n

theorem P9439761422347141107.correct : P9439761422347141107.Spec := by
  intro n
  simp only [A356771]

end A356771

/-! ## A356771.P5077177299981099043

`A022290(and(A052499(n)-1, (A048297(n)-1)/3))`
-/

namespace A356771.P5077177299981099043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (Int.land (A052499 n - 1) (SequenceMachineLib.roundAway ((A048297 n - 1 : ℚ) / 3))).toNat

end

end A356771.P5077177299981099043

namespace A356771

/-- `A022290(and(A052499(n)-1, (A048297(n)-1)/3))` -/
def P5077177299981099043.Spec : Prop :=
  ∀ n, P5077177299981099043.a n = A356771 n

end A356771

/-! ## A356771.P9654580139694619037

`n%A087172(n+1)*A266227(A005578(n))`
-/

namespace A356771.P9654580139694619037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A087172 (n + 1)) * A266227 (A005578 n).toNat

end

end A356771.P9654580139694619037

namespace A356771

/-- `n%A087172(n+1)*A266227(A005578(n))` -/
def P9654580139694619037.Spec : Prop :=
  ∀ n, P9654580139694619037.a n = A356771 n

end A356771

/-! ## A356771.P4256340160619315554

`n%A087172(A187829(n+1))`
-/

namespace A356771.P4256340160619315554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A087172 (A187829 (n + 1)).toNat)

end

end A356771.P4256340160619315554

namespace A356771

/-- `n%A087172(A187829(n+1))` -/
def P4256340160619315554.Spec : Prop :=
  ∀ n, P4256340160619315554.a n = A356771 n

end A356771

/-! ## A356771.P13787076108929557937

`A087179(A000079(n))%A087172(n+1)`
-/

namespace A356771.P13787076108929557937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087179 (A000079 n).toNat) (A087172 (n + 1))

end

end A356771.P13787076108929557937

namespace A356771

/-- `A087179(A000079(n))%A087172(n+1)` -/
def P13787076108929557937.Spec : Prop :=
  ∀ n, P13787076108929557937.a n = A356771 n

end A356771

/-!
# A356772: E.g.f. A(x) satisfies: A(x) = Sum_{n>=0} ( x^n + x*A(x) )^n / n!.

The programs for A356772, there is no canonical definition to state claims against.
-/

/-! ## A356772.P1409228743700204886

`A275531(a(n-1))+n` with `a(0)=1`
-/

namespace A356772.P1409228743700204886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A275531 (a (n - 1)).toNat + (n : ℤ)

end

end A356772.P1409228743700204886

/-!
# A356773: E.g.f. A(x) satisfies: A(x) = Sum_{n>=0} ( x^n + A(x) )^n * x^n / n!.

The programs for A356773, there is no canonical definition to state claims against.
-/

/-! ## A356773.P15697105349935465708

`A280387(a(n-1))+1` with `a(0)=1, a(1)=1`
-/

namespace A356773.P15697105349935465708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A280387 (a (n - 1)).toNat + 1

end

end A356773.P15697105349935465708

/-!
# A356780: Coefficients in the odd function A(x) such that: A(x) = A( x^2 + 2*x^2*A(x)^2 )^(1/2), with A(0)=0, A'(0)=1.

The programs for A356780, there is no canonical definition to state claims against.
-/

/-! ## A356780.P2191739709454443817

`A060384(A148866(n+1))`
-/

namespace A356780.P2191739709454443817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A148866 (n + 1)).toNat

end

end A356780.P2191739709454443817

/-! ## A356780.P18188441150399677298

`A088462(A224708(n+1)+A007317(n+1))`
-/

namespace A356780.P18188441150399677298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A224708 (n + 1) + A007317 (n + 1)).toNat

end

end A356780.P18188441150399677298

/-! ## A356780.P10032132605289128762

`A279562(n)+A106801(A054361(n+1)+A001419(n+1))`
-/

namespace A356780.P10032132605289128762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279562 n + A106801 (A054361 (n + 1) + A001419 (n + 1)).toNat

end

end A356780.P10032132605289128762

/-!
# A356781: Expansion of g.f. A(x) satisfying A(x) = A( x^2 + 2*x^2*A(x) )^(1/2), with A(0)=0, A'(0)=1.

The programs for A356781, there is no canonical definition to state claims against.
-/

/-! ## A356781.P12303102297327809936

`A023193(A244886(n))`
-/

namespace A356781.P12303102297327809936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A244886 n).toNat

end

end A356781.P12303102297327809936

/-! ## A356781.P8242505365272266069

`(A330107(A298204(n+1))+1)/2`
-/

namespace A356781.P8242505365272266069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330107 (A298204 (n + 1)).toNat + 1 : ℚ) / 2

end

end A356781.P8242505365272266069

/-! ## A356781.P15758888784974994029

`A241953(A093607(n))`
-/

namespace A356781.P15758888784974994029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241953 (A093607 n).toNat

end

end A356781.P15758888784974994029

/-! ## A356781.P7285413279272154357

`A359415(A157133(n))`
-/

namespace A356781.P7285413279272154357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359415 (A157133 n).toNat

end

end A356781.P7285413279272154357

/-! ## A356781.P17151899120658830540

`A325400(A364589(n))`
-/

namespace A356781.P17151899120658830540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (A364589 n).toNat

end

end A356781.P17151899120658830540

/-!
# A356782: Expansion of g.f. A(x) satisfies A(x) = x * Product_{n>=0} (1 + 2*A(x)^(2^n)).

The programs for A356782, there is no canonical definition to state claims against.
-/

/-! ## A356782.P2160315437137799304

`A276798(A150863(n+1))`
-/

namespace A356782.P2160315437137799304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A150863 (n + 1)).toNat

end

end A356782.P2160315437137799304

/-! ## A356782.P2680895633289240961

`A103221(A383092(∑[n+3]))`
-/

namespace A356782.P2680895633289240961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A383092 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A356782.P2680895633289240961

/-!
# A356783: Coefficients in the power series A(x) such that: 1 = Sum_{n=-oo..+oo} x^(2*n+1) * (1 - x^n)^(n+1) * A(x)^n.

The programs for A356783, there is no canonical definition to state claims against.
-/

/-! ## A356783.P14854354506490262410

`A024417(A371837(n))`
-/

namespace A356783.P14854354506490262410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A371837 n).toNat

end

end A356783.P14854354506490262410

/-! ## A356783.P1335746120273671076

`A100196(A189843(n+1))`
-/

namespace A356783.P1335746120273671076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A189843 (n + 1)).toNat

end

end A356783.P1335746120273671076

/-! ## A356783.P1121111845220971532

`A157271(A148195(n+1))`
-/

namespace A356783.P1121111845220971532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148195 (n + 1)).toNat

end

end A356783.P1121111845220971532

/-!
# A356784: Inventory of positions as an irregular table; row 0 contains 0, subsequent rows contain the 0-based positions of 0's, followed by the position of 1's, of 2's, etc. in prior rows flattened.

The programs for A356784, there is no canonical definition to state claims against.
-/

/-! ## A356784.P12903818212614831963

`A357492(n)-A053644(n)`
-/

namespace A356784.P12903818212614831963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357492 n - A053644 n

end

end A356784.P12903818212614831963

/-! ## A356784.P7349487947489932498

`A357492(n)%A053644(A028310(n))`
-/

namespace A356784.P7349487947489932498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357492 n) (A053644 (A028310 n).toNat)

end

end A356784.P7349487947489932498

/-! ## A356784.P1728007561911845461

`xor(A053644(A357491(n)), A357492(n))`
-/

namespace A356784.P1728007561911845461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053644 (A357491 n).toNat) (A357492 n)

end

end A356784.P1728007561911845461

/-! ## A356784.P12514113319481614508

`xor(A053644(n)%A357492(n+1), A357492(n))`
-/

namespace A356784.P12514113319481614508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A053644 n) (A357492 (n + 1))) (A357492 n)

end

end A356784.P12514113319481614508

/-! ## A356784.P14646495939001952625

`A357443(n+1)-1`
-/

namespace A356784.P14646495939001952625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357443 (n + 1) - 1

end

end A356784.P14646495939001952625

/-! ## A356784.P13244895254519976520

`A002837(A357443(n+1))`
-/

namespace A356784.P13244895254519976520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A357443 (n + 1)).toNat

end

end A356784.P13244895254519976520

/-! ## A356784.P710434097187608380

`A070198(n)%A357443(n+1)`
-/

namespace A356784.P710434097187608380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A357443 (n + 1))

end

end A356784.P710434097187608380

/-! ## A356784.P933373716763408155

`A030494(n+1)%A357443(n+1)`
-/

namespace A356784.P933373716763408155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A357443 (n + 1))

end

end A356784.P933373716763408155

/-! ## A356784.P4765987436531514210

`A072828(n+1)%A357443(n+1)`
-/

namespace A356784.P4765987436531514210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A357443 (n + 1))

end

end A356784.P4765987436531514210

/-! ## A356784.P13463902110903834303

`A079782(n+1)%A357443(n+1)`
-/

namespace A356784.P13463902110903834303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A357443 (n + 1))

end

end A356784.P13463902110903834303

/-!
# A356785: E.g.f. satisfies log(A(x)) = x * (exp(x*A(x)) - 1) * A(x).

The programs for A356785, there is no canonical definition to state claims against.
-/

/-! ## A356785.P1634382428759508892

`A097174(n+1)/(n+1)`
-/

namespace A356785.P1634382428759508892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097174 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A356785.P1634382428759508892

/-! ## A356785.P7245277185198193610

`A081596(A371271(n))`
-/

namespace A356785.P7245277185198193610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081596 (A371271 n).toNat

end

end A356785.P7245277185198193610

/-!
# A356786: E.g.f. satisfies A(x) = 1/(1 - x * A(x))^(x * A(x)^2).

The programs for A356786, there is no canonical definition to state claims against.
-/

/-! ## A356786.P10076971614286497732

`A026741(A356787(n)+A184949(n))`
-/

namespace A356786.P10076971614286497732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A356787 n + A184949 n).toNat

end

end A356786.P10076971614286497732

/-!
# A356787: E.g.f. satisfies A(x) = 1/(1 - x * A(x))^(x * A(x)^3).

The programs for A356787, there is no canonical definition to state claims against.
-/

/-! ## A356787.P13510114645602656362

`A348553(A356789(n))-1`
-/

namespace A356787.P13510114645602656362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A356789 n).toNat - 1

end

end A356787.P13510114645602656362

/-! ## A356787.P14590541098646117113

`A005843(A356786(n))-A184949(n)`
-/

namespace A356787.P14590541098646117113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A356786 n).toNat - A184949 n

end

end A356787.P14590541098646117113

/-!
# A356788: E.g.f. satisfies log(A(x)) = x * (exp(x*A(x)) - 1) * A(x)^2.

The programs for A356788, there is no canonical definition to state claims against.
-/

/-! ## A356788.P69762415552703311

`A001281(A356789(n)+A356785(n))`
-/

namespace A356788.P69762415552703311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A356789 n + A356785 n).toNat

end

end A356788.P69762415552703311

/-! ## A356788.P16641575291156481134

`A004525(A356789(n)+A356785(n))`
-/

namespace A356788.P16641575291156481134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A356789 n + A356785 n).toNat

end

end A356788.P16641575291156481134

/-!
# A356789: E.g.f. satisfies log(A(x)) = x * (exp(x*A(x)) - 1) * A(x)^3.

The programs for A356789, there is no canonical definition to state claims against.
-/

/-! ## A356789.P3811807824716298525

`A002620(n)+A001065(A114303(n))`
-/

namespace A356789.P3811807824716298525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + A001065 (A114303 n).toNat

end

end A356789.P3811807824716298525

/-! ## A356789.P8980094749742147517

`A179051(A322157(n))-A000045(n)`
-/

namespace A356789.P8980094749742147517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179051 (A322157 n).toNat - A000045 n

end

end A356789.P8980094749742147517

/-!
# A356791: Emirps p such that R(p) > p and R(p) mod p is prime, where R(p) is the reversal of p.

The programs for A356791, there is no canonical definition to state claims against.
-/

/-! ## A356791.P3512381556927148438

`A263241(A041793(n))`
-/

namespace A356791.P3512381556927148438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263241 (A041793 n).toNat

end

end A356791.P3512381556927148438

/-!
# A356792: Smallest number k with A355915(k) = n.

The programs for A356792, there is no canonical definition to state claims against.
-/

/-! ## A356792.P3847770471295013254

`A192628(A334198(n)+A059851(n))`
-/

namespace A356792.P3847770471295013254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192628 (A334198 n + A059851 n).toNat

end

end A356792.P3847770471295013254

/-!
# A356794: Odd numbers that have at least one prime factor congruent to 1 (mod 4) and at least one prime factor congruent to 3 (mod 4).

The programs for A356794, there is no canonical definition to state claims against.
-/

/-! ## A356794.P1585350432689704146

`∩[A137409(n+1), A309812(n+1)]`
-/

namespace A356794.P1585350432689704146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356794.P1585350432689704146

/-! ## A356794.P15684107086468295379

`∩[A177733(n+1), A309812(n+1)]`
-/

namespace A356794.P15684107086468295379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356794.P15684107086468295379

/-! ## A356794.P15084238446262014331

`∩[A187811(n+1), A309812(n+1)]`
-/

namespace A356794.P15084238446262014331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356794.P15084238446262014331

/-! ## A356794.P15243521583057653757

`∩[A192450(n+1), A309812(n+1)]`
-/

namespace A356794.P15243521583057653757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356794.P15243521583057653757

/-! ## A356794.P3643435402709080263

`∩[A137409(n+1), A329589(n+1)]`
-/

namespace A356794.P3643435402709080263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356794.P3643435402709080263

/-! ## A356794.P4270349585314115074

`∩[A177733(n+1), A329589(n+1)]`
-/

namespace A356794.P4270349585314115074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356794.P4270349585314115074

/-! ## A356794.P4269299029923232921

`∩[A187811(n+1), A329589(n+1)]`
-/

namespace A356794.P4269299029923232921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356794.P4269299029923232921

/-! ## A356794.P12891329234413571547

`∩[A192450(n+1), A329589(n+1)]`
-/

namespace A356794.P12891329234413571547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356794.P12891329234413571547

/-!
# A356795: E.g.f. satisfies A(x) = 1/(1 - x)^(x * A(x)^2).

The programs for A356795, there is no canonical definition to state claims against.
-/

/-! ## A356795.P2802475903283199077

`A026741(A377438(n))`
-/

namespace A356795.P2802475903283199077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A377438 n).toNat

end

end A356795.P2802475903283199077

/-! ## A356795.P13618583347780743281

`A078898(A375689(n))`
-/

namespace A356795.P13618583347780743281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A375689 n).toNat

end

end A356795.P13618583347780743281

/-!
# A356796: E.g.f. satisfies A(x) = 1/(1 - x)^(x * A(x)^3).

The programs for A356796, there is no canonical definition to state claims against.
-/

/-! ## A356796.P12541190006086355503

`A380284(A000142(n))+A370993(n)`
-/

namespace A356796.P12541190006086355503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380284 (A000142 n).toNat + A370993 n

end

end A356796.P12541190006086355503

/-! ## A356796.P16919957906441609840

`A053489(n)-A356906(A298671(n))`
-/

namespace A356796.P16919957906441609840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053489 n - A356906 (A298671 n).toNat

end

end A356796.P16919957906441609840

/-!
# A356797: E.g.f. satisfies log(A(x)) = x * (exp(x) - 1) * A(x)^2.

The programs for A356797, there is no canonical definition to state claims against.
-/

/-! ## A356797.P11704556289910675156

`A004526(A375697(n)+1)`
-/

namespace A356797.P11704556289910675156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A375697 n + 1).toNat

end

end A356797.P11704556289910675156

/-! ## A356797.P16743119870093062933

`A004526(A377719(n)+1)`
-/

namespace A356797.P16743119870093062933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A377719 n + 1).toNat

end

end A356797.P16743119870093062933

/-!
# A356798: E.g.f. satisfies log(A(x)) = x * (exp(x) - 1) * A(x)^3.

The programs for A356798, there is no canonical definition to state claims against.
-/

/-! ## A356798.P17392399280518035886

`A338840(A356788(n)+A240021(3*n+2))`
-/

namespace A356798.P17392399280518035886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338840 (A356788 n + A240021 (3 * n + 2)).toNat

end

end A356798.P17392399280518035886

