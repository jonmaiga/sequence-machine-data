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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A391600: a(n) = Sum_{k=0..floor((2*n+1)/3)} binomial(2*k+1,2*n-3*k+1).

The programs for A391600, the canonical program `A391600.P14785743664459121274` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391600 has offset 0).

The definition of A391600 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor((2*n+1)/3), C(2*#+1, 2*n-3*#+1)]` (program `A391600.P14785743664459121274`, by `A391600.P14785743664459121274.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391600.P17841272865965403025

`ogf((1+x-x^2)/(1-4x^2-x^3+2x^4-x^5))`
-/

namespace A391600.P17841272865965403025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, -4, -1, 2, -1] n

end

end A391600.P17841272865965403025

namespace A391600

/-- `ogf((1+x-x^2)/(1-4x^2-x^3+2x^4-x^5))` -/
def P17841272865965403025.Spec : Prop :=
  ∀ n, P17841272865965403025.a n = A391600 n

end A391600

/-! ## A391600.P4214696590702494719

`4*a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=11`
-/

namespace A391600.P4214696590702494719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 5, 11] fun n a =>
  4 * a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A391600.P4214696590702494719

namespace A391600

/-- `4*a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P4214696590702494719.Spec : Prop :=
  ∀ n, P4214696590702494719.a n = A391600 n

end A391600

/-! ## A391600.P14785743664459121274

`∑{#}[floor((2*n+1)/3), C(2*#+1, 2*n-3*#+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391600

/-- `∑{#}[floor((2*n+1)/3), C(2*#+1, 2*n-3*#+1)]` -/
def P14785743664459121274.Spec : Prop :=
  ∀ n, (P14785743664459121274.a n : ℤ) = A391600 n

theorem P14785743664459121274.correct : P14785743664459121274.Spec := by
  intro n
  simp only [A391600]

end A391600

/-! ## A391600.P5282256944978519034

`A052920(A004766(n+1))`
-/

namespace A391600.P5282256944978519034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (A004766 (n + 1)).toNat

end

end A391600.P5282256944978519034

namespace A391600

/-- `A052920(A004766(n+1))` -/
def P5282256944978519034.Spec : Prop :=
  ∀ n, P5282256944978519034.a n = A391600 n

end A391600

/-! ## A391600.P14391959516981015394

`A052920(A016813(n+1))`
-/

namespace A391600.P14391959516981015394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (A016813 (n + 1)).toNat

end

end A391600.P14391959516981015394

namespace A391600

/-- `A052920(A016813(n+1))` -/
def P14391959516981015394.Spec : Prop :=
  ∀ n, P14391959516981015394.a n = A391600 n

end A391600

/-! ## A391600.P14249028889410692055

`A052920(A000027(3*n+4)+n+1)`
-/

namespace A391600.P14249028889410692055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (A000027 (3 * n + 4) + (n + 1 : ℤ)).toNat

end

end A391600.P14249028889410692055

namespace A391600

/-- `A052920(A000027(3*n+4)+n+1)` -/
def P14249028889410692055.Spec : Prop :=
  ∀ n, P14249028889410692055.a n = A391600 n

end A391600

/-! ## A391600.P16078864800712862007

`A392428(n+2)-A392454(n)`
-/

namespace A391600.P16078864800712862007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392428 (n + 2) - A392454 n

end

end A391600.P16078864800712862007

namespace A391600

/-- `A392428(n+2)-A392454(n)` -/
def P16078864800712862007.Spec : Prop :=
  ∀ n, P16078864800712862007.a n = A391600 n

end A391600

/-!
# A391601: Smallest prime > n^10.

The programs for A391601, there is no canonical definition to state claims against.
-/

/-! ## A391601.P9887178809881845639

`A053788(A253909(n))`
-/

namespace A391601.P9887178809881845639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053788 (A253909 n).toNat

end

end A391601.P9887178809881845639

/-! ## A391601.P4267183925028232212

`A053788(A028310(n²))`
-/

namespace A391601.P4267183925028232212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053788 (A028310 (n ^ 2)).toNat

end

end A391601.P4267183925028232212

/-! ## A391601.P2737842998691669930

`A053788(A028310(n)*A028310(n))`
-/

namespace A391601.P2737842998691669930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053788 (A028310 n * A028310 n).toNat

end

end A391601.P2737842998691669930

/-!
# A391603: Smallest k for which the number of divisors d of k such that A000005(d) = A000005(k/d) is equal to n.

The programs for A391603, there is no canonical definition to state claims against.
-/

/-! ## A391603.P4612798924320564098

`A070306(6^n)`
-/

namespace A391603.P4612798924320564098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070306 (6 ^ n)

end

end A391603.P4612798924320564098

/-! ## A391603.P11783192070209459752

`A173732(8*a(n-1))` with `a(0)=2, a(1)=1`
-/

namespace A391603.P11783192070209459752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A173732 (8 * a (n - 1)).toNat

end

end A391603.P11783192070209459752

/-!
# A391604: Expansion of (g/(1 + x*g))^2, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391604, there is no canonical definition to state claims against.
-/

/-! ## A391604.P9695704419977076096

`∑{#}[n, A387982(#)*A387982(n-#)]`
-/

namespace A391604.P9695704419977076096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A387982 k * A387982 (n - k)

end

end A391604.P9695704419977076096

/-!
# A391605: Expansion of g^3/(1 + x*g), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391605, there is no canonical definition to state claims against.
-/

/-! ## A391605.P15655821541933436913

`A138194(A001019(n)+1)`
-/

namespace A391605.P15655821541933436913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A001019 n + 1).toNat

end

end A391605.P15655821541933436913

/-!
# A391606: Expansion of g^3/(1 + x*g)^2, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391606, there is no canonical definition to state claims against.
-/

/-! ## A391606.P16678219813809099354

`A023978(A336951(n))-A000041(n)`
-/

namespace A391606.P16678219813809099354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023978 (A336951 n).toNat - A000041 n

end

end A391606.P16678219813809099354

/-!
# A391607: Expansion of (g/(1 + x*g))^3, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391607, there is no canonical definition to state claims against.
-/

/-! ## A391607.P7024180023311092874

`A068463(A094253(n+1))`
-/

namespace A391607.P7024180023311092874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068463 (A094253 (n + 1)).toNat

end

end A391607.P7024180023311092874

/-!
# A391608: Expansion of (g/(1 + x*g^2))^2, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391608, there is no canonical definition to state claims against.
-/

/-! ## A391608.P1960373537787981557

`∑{#}[n, A390740(#)*A390740(n-#)]`
-/

namespace A391608.P1960373537787981557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A390740 k * A390740 (n - k)

end

end A391608.P1960373537787981557

/-!
# A391609: Expansion of (g/(1 + x*g^2))^3, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A391609, there is no canonical definition to state claims against.
-/

/-! ## A391609.P4440598082237861837

`A298486(A251862(n+2))`
-/

namespace A391609.P4440598082237861837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298486 (A251862 (n + 2)).toNat

end

end A391609.P4440598082237861837

/-!
# A391613: Number of ways to write n as x^2 + y + z with x >= 1 and y >= z >= 1 such that lcm(x^2,y,z) is a square.

The programs for A391613, there is no canonical definition to state claims against.
-/

/-! ## A391613.P10785240252664175128

`A063962(record[A304533(n)+1])`
-/

namespace A391613.P10785240252664175128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304533 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A391613.P10785240252664175128

/-! ## A391613.P11416905101536820881

`A062756(A293185(n+1)%A014597(n+1))`
-/

namespace A391613.P11416905101536820881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (Int.tmod (A293185 (n + 1)) (A014597 (n + 1))).toNat

end

end A391613.P11416905101536820881

/-! ## A391613.P12937854273527405599

`A295664(A249560(n))`
-/

namespace A391613.P12937854273527405599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (A249560 n).toNat

end

end A391613.P12937854273527405599

/-! ## A391613.P8354849211833584217

`A118682(A238426(n+1))`
-/

namespace A391613.P8354849211833584217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118682 (A238426 (n + 1)).toNat

end

end A391613.P8354849211833584217

/-! ## A391613.P9120445186202859897

`A337930(A245381(n+1))`
-/

namespace A391613.P9120445186202859897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337930 (A245381 (n + 1)).toNat

end

end A391613.P9120445186202859897

/-!
# A391614: a(4n) = a(2n+a(n)), a(4n+2) = a(2n+1-a(n)) and a(2n+1) = 1-a(2n), with a(0) = 0.

The programs for A391614, the canonical program `A391614.P9333302647466192623` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391614 has offset 0).

The definition of A391614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391614.P7273748536652461642

`char[xor(2*n+1, xor(n, floor(n/2)))]`
-/

namespace A391614.P7273748536652461642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n + 1 : ℤ) (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A391614.P7273748536652461642

namespace A391614

/-- `char[xor(2*n+1, xor(n, floor(n/2)))]` -/
def P7273748536652461642.Spec : Prop :=
  ∀ n, (P7273748536652461642.a n : ℤ) = A391614 n

end A391614

/-! ## A391614.P12951084795576423411

`(a(floor(n/2))+a(floor(n/4))+n%2)%2` with `a(0)=0`
-/

namespace A391614.P12951084795576423411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat + (a ⌊(n : ℚ) / 4⌋.toNat + n % 2)) % 2

end

end A391614.P12951084795576423411

namespace A391614

/-- `(a(floor(n/2))+a(floor(n/4))+n%2)%2` -/
def P12951084795576423411.Spec : Prop :=
  ∀ n, (P12951084795576423411.a n : ℤ) = A391614 n

end A391614

/-! ## A391614.P9333302647466192623

`A356874(n)%2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A391614

/-- `A356874(n)%2` -/
def P9333302647466192623.Spec : Prop :=
  ∀ n, P9333302647466192623.a n = A391614 n

theorem P9333302647466192623.correct : P9333302647466192623.Spec := by
  intro n
  simp only [A391614]

end A391614

/-! ## A391614.P4570797066340018079

`A171587(A022290(n))`
-/

namespace A391614.P4570797066340018079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171587 (A022290 n).toNat

end

end A391614.P4570797066340018079

namespace A391614

/-- `A171587(A022290(n))` -/
def P4570797066340018079.Spec : Prop :=
  ∀ n, P4570797066340018079.a n = A391614 n

end A391614

/-! ## A391614.P9696387817758867584

`A000035(A356874(n))`
-/

namespace A391614.P9696387817758867584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A356874 n).toNat

end

end A391614.P9696387817758867584

namespace A391614

/-- `A000035(A356874(n))` -/
def P9696387817758867584.Spec : Prop :=
  ∀ n, P9696387817758867584.a n = A391614 n

end A391614

/-! ## A391614.P16596855196442897817

`A100280(n)%2`
-/

namespace A391614.P16596855196442897817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100280 n) 2

end

end A391614.P16596855196442897817

namespace A391614

/-- `A100280(n)%2` -/
def P16596855196442897817.Spec : Prop :=
  ∀ n, P16596855196442897817.a n = A391614 n

end A391614

/-! ## A391614.P17510689461977195660

`and(1, A356327(n))`
-/

namespace A391614.P17510689461977195660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A356327 n)

end

end A391614.P17510689461977195660

namespace A391614

/-- `and(1, A356327(n))` -/
def P17510689461977195660.Spec : Prop :=
  ∀ n, P17510689461977195660.a n = A391614 n

end A391614

/-! ## A391614.P6777057690380043543

`A010060(A004518(n))`
-/

namespace A391614.P6777057690380043543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A004518 n).toNat

end

end A391614.P6777057690380043543

namespace A391614

/-- `A010060(A004518(n))` -/
def P6777057690380043543.Spec : Prop :=
  ∀ n, P6777057690380043543.a n = A391614 n

end A391614

/-! ## A391614.P13292822012799189796

`A000035(A100280(n))`
-/

namespace A391614.P13292822012799189796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A100280 n).toNat

end

end A391614.P13292822012799189796

namespace A391614

/-- `A000035(A100280(n))` -/
def P13292822012799189796.Spec : Prop :=
  ∀ n, P13292822012799189796.a n = A391614 n

end A391614

/-! ## A391614.P15000916598561424058

`A165211(A371976(n))`
-/

namespace A391614.P15000916598561424058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165211 (A371976 n).toNat

end

end A391614.P15000916598561424058

namespace A391614

/-- `A165211(A371976(n))` -/
def P15000916598561424058.Spec : Prop :=
  ∀ n, P15000916598561424058.a n = A391614 n

end A391614

/-! ## A391614.P6301226356712511989

`and(A054977(n), A100280(n))`
-/

namespace A391614.P6301226356712511989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A100280 n)

end

end A391614.P6301226356712511989

namespace A391614

/-- `and(A054977(n), A100280(n))` -/
def P6301226356712511989.Spec : Prop :=
  ∀ n, P6301226356712511989.a n = A391614 n

end A391614

/-! ## A391614.P3791135130098142030

`and(A057427(n), A100280(n))`
-/

namespace A391614.P3791135130098142030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A100280 n)

end

end A391614.P3791135130098142030

namespace A391614

/-- `and(A057427(n), A100280(n))` -/
def P3791135130098142030.Spec : Prop :=
  ∀ n, P3791135130098142030.a n = A391614 n

end A391614

/-! ## A391614.P4203078417560863655

`A062879(2*n+1)%2`
-/

namespace A391614.P4203078417560863655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062879 (2 * n + 1)) 2

end

end A391614.P4203078417560863655

namespace A391614

/-- `A062879(2*n+1)%2` -/
def P4203078417560863655.Spec : Prop :=
  ∀ n, P4203078417560863655.a n = A391614 n

end A391614

/-! ## A391614.P7173560079701267172

`char[A099896(2*n+1)]`
-/

namespace A391614.P7173560079701267172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099896 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A391614.P7173560079701267172

namespace A391614

/-- `char[A099896(2*n+1)]` -/
def P7173560079701267172.Spec : Prop :=
  ∀ n, (P7173560079701267172.a n : ℤ) = A391614 n

end A391614

/-! ## A391614.P12208435157495278159

`1-A133872(A100280(2*n))`
-/

namespace A391614.P12208435157495278159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A133872 (A100280 (2 * n)).toNat

end

end A391614.P12208435157495278159

namespace A391614

/-- `1-A133872(A100280(2*n))` -/
def P12208435157495278159.Spec : Prop :=
  ∀ n, P12208435157495278159.a n = A391614 n

end A391614

/-! ## A391614.P8617383412920810889

`A133872(A100280(2*n)+2)`
-/

namespace A391614.P8617383412920810889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A100280 (2 * n) + 2).toNat

end

end A391614.P8617383412920810889

namespace A391614

/-- `A133872(A100280(2*n)+2)` -/
def P8617383412920810889.Spec : Prop :=
  ∀ n, P8617383412920810889.a n = A391614 n

end A391614

/-! ## A391614.P3346428714883009494

`A059841(A036795(n))`
-/

namespace A391614.P3346428714883009494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A036795 n).toNat

end

end A391614.P3346428714883009494

namespace A391614

/-- `A059841(A036795(n))` -/
def P3346428714883009494.Spec : Prop :=
  ∀ n, P3346428714883009494.a n = A391614 n

end A391614

/-! ## A391614.P15811664873904173078

`and(A077860(n), A100280(n))`
-/

namespace A391614.P15811664873904173078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077860 n) (A100280 n)

end

end A391614.P15811664873904173078

namespace A391614

/-- `and(A077860(n), A100280(n))` -/
def P15811664873904173078.Spec : Prop :=
  ∀ n, P15811664873904173078.a n = A391614 n

end A391614

/-! ## A391614.P8615178646706533613

`A059841(A171070(n+1))`
-/

namespace A391614.P8615178646706533613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A171070 (n + 1)).toNat

end

end A391614.P8615178646706533613

namespace A391614

/-- `A059841(A171070(n+1))` -/
def P8615178646706533613.Spec : Prop :=
  ∀ n, P8615178646706533613.a n = A391614 n

end A391614

/-! ## A391614.P17836783993551274272

`A171587(A062879(n+1))`
-/

namespace A391614.P17836783993551274272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171587 (A062879 (n + 1)).toNat

end

end A391614.P17836783993551274272

namespace A391614

/-- `A171587(A062879(n+1))` -/
def P17836783993551274272.Spec : Prop :=
  ∀ n, P17836783993551274272.a n = A391614 n

end A391614

/-!
# A391616: a(n) = a(n-1) + prime(a(n-1)) + 1 for n > 1, with a(1) = 1.

The programs for A391616, the canonical program `A391616.P3679485652184830836` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391616 has offset 1).

The definition of A391616 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000040(a(n-1))+1` (program `A391616.P3679485652184830836`, by `A391616.P3679485652184830836.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391616.P3679485652184830836

`a(n-1)+A000040(a(n-1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A391616

/-- `a(n-1)+A000040(a(n-1))+1` -/
def P3679485652184830836.Spec : Prop :=
  ∀ n, P3679485652184830836.a n = A391616 (n + 1)

theorem P3679485652184830836.correct : P3679485652184830836.Spec := by
  intro n
  simp only [A391616, Nat.add_sub_cancel]

end A391616

/-! ## A391616.P15368282147297327577

`A014688(a(n-1))+1` with `a(0)=1`
-/

namespace A391616.P15368282147297327577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014688 (a (n - 1)).toNat + 1

end

end A391616.P15368282147297327577

namespace A391616

/-- `A014688(a(n-1))+1` -/
def P15368282147297327577.Spec : Prop :=
  ∀ n, P15368282147297327577.a n = A391616 (n + 1)

end A391616

/-! ## A391616.P12672213952028898163

`A090178(1+a(n-1))` with `a(0)=1`
-/

namespace A391616.P12672213952028898163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090178 (1 + a (n - 1)).toNat

end

end A391616.P12672213952028898163

namespace A391616

/-- `A090178(1+a(n-1))` -/
def P12672213952028898163.Spec : Prop :=
  ∀ n, P12672213952028898163.a n = A391616 (n + 1)

end A391616

/-!
# A391618: Chebyshev distance from n to the origin in a square spiral of positive integers and 1 at the origin.

The programs for A391618, the canonical program `A391618.P8243255841012535230` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391618 has offset 1).

The definition of A391618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391618.P8243255841012535230

`floor((sqrt(n)+1)/2)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391618

/-- `floor((sqrt(n)+1)/2)` -/
def P8243255841012535230.Spec : Prop :=
  ∀ n, P8243255841012535230.a n = A391618 (n + 1)

theorem P8243255841012535230.correct : P8243255841012535230.Spec := by
  intro n
  simp only [A391618, Nat.add_sub_cancel]

end A391618

/-! ## A391618.P1001427884305478330

`∑[char[or(1, n)²]]`
-/

namespace A391618.P1001427884305478330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P1001427884305478330

namespace A391618

/-- `∑[char[or(1, n)²]]` -/
def P1001427884305478330.Spec : Prop :=
  ∀ n, (P1001427884305478330.a n : ℤ) = A391618 (n + 1)

end A391618

/-! ## A391618.P8099208202212699803

`∑[and(n, char[n²])]`
-/

namespace A391618.P8099208202212699803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P8099208202212699803

namespace A391618

/-- `∑[and(n, char[n²])]` -/
def P8099208202212699803.Spec : Prop :=
  ∀ n, (P8099208202212699803.a n : ℤ) = A391618 (n + 1)

end A391618

/-! ## A391618.P6673955486742289364

`∑[char[(lcm(2, n)+1)²]]`
-/

namespace A391618.P6673955486742289364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P6673955486742289364

namespace A391618

/-- `∑[char[(lcm(2, n)+1)²]]` -/
def P6673955486742289364.Spec : Prop :=
  ∀ n, (P6673955486742289364.a n : ℤ) = A391618 (n + 1)

end A391618

/-! ## A391618.P10533196534784481779

`∑[char[xor(1, 2*n)²]]`
-/

namespace A391618.P10533196534784481779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P10533196534784481779

namespace A391618

/-- `∑[char[xor(1, 2*n)²]]` -/
def P10533196534784481779.Spec : Prop :=
  ∀ n, (P10533196534784481779.a n : ℤ) = A391618 (n + 1)

end A391618

/-! ## A391618.P4086731744408716764

`∑[n%(char[n²]+1)]`
-/

namespace A391618.P4086731744408716764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P4086731744408716764

namespace A391618

/-- `∑[n%(char[n²]+1)]` -/
def P4086731744408716764.Spec : Prop :=
  ∀ n, (P4086731744408716764.a n : ℤ) = A391618 (n + 1)

end A391618

/-! ## A391618.P4236598298046140476

`abs(round(sinh(log(sqrt(n+2)))))`
-/

namespace A391618.P4236598298046140476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (Real.sinh (Real.log (Real.sqrt (n + 2 : ℝ))))|

end

end A391618.P4236598298046140476

namespace A391618

/-- `abs(round(sinh(log(sqrt(n+2)))))` -/
def P4236598298046140476.Spec : Prop :=
  ∀ n, P4236598298046140476.a n = A391618 (n + 1)

end A391618

/-! ## A391618.P12702052167683112982

`∑[char[runs[∑[char[n²]]]²]]`
-/

namespace A391618.P12702052167683112982
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P12702052167683112982

namespace A391618

/-- `∑[char[runs[∑[char[n²]]]²]]` -/
def P12702052167683112982.Spec : Prop :=
  ∀ n, (P12702052167683112982.a n : ℤ) = A391618 (n + 1)

end A391618

/-! ## A391618.P3560962154102645645

`∑[char[Δ[C(2*n+1, 3)]]]`
-/

namespace A391618.P3560962154102645645
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P3560962154102645645

namespace A391618

/-- `∑[char[Δ[C(2*n+1, 3)]]]` -/
def P3560962154102645645.Spec : Prop :=
  ∀ n, (P3560962154102645645.a n : ℤ) = A391618 (n + 1)

end A391618

/-! ## A391618.P2391031208445594750

`∑[char[(gcd(2, n+1)+n)²]]`
-/

namespace A391618.P2391031208445594750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) + n) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P2391031208445594750

namespace A391618

/-- `∑[char[(gcd(2, n+1)+n)²]]` -/
def P2391031208445594750.Spec : Prop :=
  ∀ n, (P2391031208445594750.a n : ℤ) = A391618 (n + 1)

end A391618

/-! ## A391618.P17499664240209487565

`∑[val(n+1, 2)*char[n²]]`
-/

namespace A391618.P17499664240209487565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P17499664240209487565

namespace A391618

/-- `∑[val(n+1, 2)*char[n²]]` -/
def P17499664240209487565.Spec : Prop :=
  ∀ n, (P17499664240209487565.a n : ℤ) = A391618 (n + 1)

end A391618

/-! ## A391618.P3101659164379913979

`∑[char[∩[2*n+1, n²]]]`
-/

namespace A391618.P3101659164379913979
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∧ ∃ j, f4 j = x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P3101659164379913979

namespace A391618

/-- `∑[char[∩[2*n+1, n²]]]` -/
def P3101659164379913979.Spec : Prop :=
  ∀ n, (P3101659164379913979.a n : ℤ) = A391618 (n + 1)

end A391618

/-! ## A391618.P18422533353297165957

`∑[ceil(sin(char[(2*n+1)²]))]`
-/

namespace A391618.P18422533353297165957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P18422533353297165957

namespace A391618

/-- `∑[ceil(sin(char[(2*n+1)²]))]` -/
def P18422533353297165957.Spec : Prop :=
  ∀ n, P18422533353297165957.a n = A391618 (n + 1)

end A391618

/-! ## A391618.P16899949440436406700

`∑[floor(tan(char[(2*n+1)²]))]`
-/

namespace A391618.P16899949440436406700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P16899949440436406700

namespace A391618

/-- `∑[floor(tan(char[(2*n+1)²]))]` -/
def P16899949440436406700.Spec : Prop :=
  ∀ n, P16899949440436406700.a n = A391618 (n + 1)

end A391618

/-! ## A391618.P9089333524814539255

`∑[round(sin(char[(2*n+1)²]))]`
-/

namespace A391618.P9089333524814539255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P9089333524814539255

namespace A391618

/-- `∑[round(sin(char[(2*n+1)²]))]` -/
def P9089333524814539255.Spec : Prop :=
  ∀ n, P9089333524814539255.a n = A391618 (n + 1)

end A391618

/-! ## A391618.P1343507367589451371

`∑[floor(asin(char[(2*n+1)²]))]`
-/

namespace A391618.P1343507367589451371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P1343507367589451371

namespace A391618

/-- `∑[floor(asin(char[(2*n+1)²]))]` -/
def P1343507367589451371.Spec : Prop :=
  ∀ n, P1343507367589451371.a n = A391618 (n + 1)

end A391618

/-! ## A391618.P4864193253994457763

`∑[ceil(atan(char[(2*n+1)²]))]`
-/

namespace A391618.P4864193253994457763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P4864193253994457763

namespace A391618

/-- `∑[ceil(atan(char[(2*n+1)²]))]` -/
def P4864193253994457763.Spec : Prop :=
  ∀ n, P4864193253994457763.a n = A391618 (n + 1)

end A391618

/-! ## A391618.P7466763412393025702

`∑[round(atan(char[(2*n+1)²]))]`
-/

namespace A391618.P7466763412393025702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P7466763412393025702

namespace A391618

/-- `∑[round(atan(char[(2*n+1)²]))]` -/
def P7466763412393025702.Spec : Prop :=
  ∀ n, P7466763412393025702.a n = A391618 (n + 1)

end A391618

/-! ## A391618.P2425339679356205667

`∑[floor(sinh(char[(2*n+1)²]))]`
-/

namespace A391618.P2425339679356205667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P2425339679356205667

namespace A391618

/-- `∑[floor(sinh(char[(2*n+1)²]))]` -/
def P2425339679356205667.Spec : Prop :=
  ∀ n, P2425339679356205667.a n = A391618 (n + 1)

end A391618

/-! ## A391618.P9727815654428042690

`∑[char[(C(n+1, n)+n)²]]`
-/

namespace A391618.P9727815654428042690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) n + n) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391618.P9727815654428042690

namespace A391618

/-- `∑[char[(C(n+1, n)+n)²]]` -/
def P9727815654428042690.Spec : Prop :=
  ∀ n, (P9727815654428042690.a n : ℤ) = A391618 (n + 1)

end A391618

/-!
# A391620: Number of integer partitions of n > 0 that are not the first sums of any composition with all parts > 1.

The programs for A391620, there is no canonical definition to state claims against.
-/

/-! ## A391620.P6830818094529419343

`A000041(n+1)-A008484(n+1)`
-/

namespace A391620.P6830818094529419343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A008484 (n + 1)

end

end A391620.P6830818094529419343

/-! ## A391620.P12479678448911376474

`A390429(n+1)+A157928(A391645(n+1))`
-/

namespace A391620.P12479678448911376474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390429 (n + 1) + A157928 (A391645 (n + 1)).toNat

end

end A391620.P12479678448911376474

/-! ## A391620.P3751031910965713761

`A000196(A171871(2*n+3)+A090984(n))`
-/

namespace A391620.P3751031910965713761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A171871 (2 * n + 3) + A090984 n).toNat

end

end A391620.P3751031910965713761

/-! ## A391620.P14905546040946949854

`A000196(A238876(3*n)+A000196(n+4))`
-/

namespace A391620.P14905546040946949854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A238876 (3 * n) + A000196 (n + 4)).toNat

end

end A391620.P14905546040946949854

/-! ## A391620.P12667002188665985793

`A356944(A394251(n+1))`
-/

namespace A391620.P12667002188665985793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A394251 (n + 1)).toNat

end

end A391620.P12667002188665985793

/-!
# A391621: Number of nonnegative integer sequences whose first sums are the k-th composition in standard order.

The programs for A391621, there is no canonical definition to state claims against.
-/

/-! ## A391621.P10333001120578513329

`A326674(n+1)+A000035(A157149(n))`
-/

namespace A391621.P10333001120578513329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326674 (n + 1) + A000035 (A157149 n).toNat

end

end A391621.P10333001120578513329

/-! ## A391621.P10220556598008892545

`A326674(n+1)+A242718(A094638(n+1))`
-/

namespace A391621.P10220556598008892545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326674 (n + 1) + A242718 (A094638 (n + 1)).toNat

end

end A391621.P10220556598008892545

/-! ## A391621.P2021207562402365178

`A328162(2*(n+1))-A076282(A329744(n+1))`
-/

namespace A391621.P2021207562402365178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328162 (2 * (n + 1)) - A076282 (A329744 (n + 1)).toNat

end

end A391621.P2021207562402365178

/-! ## A391621.P12049973420283713523

`A326674(n+1)+A326365(A327450(n+1))`
-/

namespace A391621.P12049973420283713523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326674 (n + 1) + A326365 (A327450 (n + 1)).toNat

end

end A391621.P12049973420283713523

/-! ## A391621.P1977201036442003861

`A326674(n+1)+A267479(A267479(2*n))`
-/

namespace A391621.P1977201036442003861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326674 (n + 1) + A267479 (A267479 (2 * n)).toNat

end

end A391621.P1977201036442003861

/-!
# A391622: Numbers k such that there is a unique nonnegative sequence whose first sums are the k-th composition in standard order.

The programs for A391622, there is no canonical definition to state claims against.
-/

/-! ## A391622.P1992944224136476500

`eq[1, A391621(n+1)]+1`
-/

namespace A391622.P1992944224136476500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A391622.P1992944224136476500

/-! ## A391622.P304390640888139117

`eq[1, A391621(A028310(n))]`
-/

namespace A391622.P304390640888139117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391621 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A391622.P304390640888139117

/-! ## A391622.P3818582147788202502

`eq[A392705(n+1), A392706(n+1)]+1`
-/

namespace A391622.P3818582147788202502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A391622.P3818582147788202502

/-!
# A391623: Positive integers k such that there is more than one nonnegative sequence whose first sums are the k-th composition in standard order.

The programs for A391623, there is no canonical definition to state claims against.
-/

/-! ## A391623.P2133766098590148741

`comp[A391624(n+1)-1]+1`
-/

namespace A391623.P2133766098590148741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391624 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A391623.P2133766098590148741

/-! ## A391623.P12561853455314602533

`lt[1, A391621(n+1)]+1`
-/

namespace A391623.P12561853455314602533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391623.P12561853455314602533

/-! ## A391623.P4021407364500241243

`lt[A392705(n+1), A392706(n+1)]+1`
-/

namespace A391623.P4021407364500241243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391623.P4021407364500241243

/-! ## A391623.P6792428225551589177

`lt[A329326(2*n+3), A066380(A363486(n+1))]`
-/

namespace A391623.P6792428225551589177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329326 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066380 (A363486 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391623.P6792428225551589177

/-! ## A391623.P1962640299471246344

`A335467(n+2)%A059752(n+1)`
-/

namespace A391623.P1962640299471246344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335467 (n + 2)) (A059752 (n + 1))

end

end A391623.P1962640299471246344

/-!
# A391624: Positive integers k such that there is at most one nonnegative sequence whose first sums are the k-th composition in standard order.

The programs for A391624, there is no canonical definition to state claims against.
-/

/-! ## A391624.P9439541497356976020

`comp[A391623(n+1)-1]+1`
-/

namespace A391624.P9439541497356976020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391623 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A391624.P9439541497356976020

/-! ## A391624.P10253803083859529362

`∪[A390747(n+1), A391622(n+1)]`
-/

namespace A391624.P10253803083859529362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391624.P10253803083859529362

/-! ## A391624.P4695108974698230928

`lt[A391621(n+1), 2]+1`
-/

namespace A391624.P4695108974698230928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391621 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A391624.P4695108974698230928

/-! ## A391624.P15882938411364398872

`lt[A391621(A028310(n)), 2]`
-/

namespace A391624.P15882938411364398872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391621 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A391624.P15882938411364398872

/-! ## A391624.P15493812613847858894

`∩[A335374(n+1), A389680(n+1)]`
-/

namespace A391624.P15493812613847858894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391624.P15493812613847858894

/-!
# A391625: Squarefree kernel of the sum of numbers k <= n such that the squarefree kernel of k equals the squarefree kernel of n.

The programs for A391625, there is no canonical definition to state claims against.
-/

/-! ## A391625.P8808855416071112255

`A007947(A381498(n+1))`
-/

namespace A391625.P8808855416071112255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A381498 (n + 1)).toNat

end

end A391625.P8808855416071112255

/-! ## A391625.P2439948355695025721

`∏{p}[A381498(n+1), #]`
-/

namespace A391625.P2439948355695025721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A391625.P2439948355695025721

/-! ## A391625.P10666300214961614212

`gcd(A068510(n+1), A381498(n+1))`
-/

namespace A391625.P10666300214961614212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068510 (n + 1)) (A381498 (n + 1))

end

end A391625.P10666300214961614212

/-! ## A391625.P3103806936177498280

`A015053(A015053(n+1)*A381498(n+1))`
-/

namespace A391625.P3103806936177498280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A015053 (n + 1) * A381498 (n + 1)).toNat

end

end A391625.P3103806936177498280

/-! ## A391625.P16234337851413960528

`∏{p}[A000583(A057723(n+1)), #]`
-/

namespace A391625.P16234337851413960528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A057723 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A391625.P16234337851413960528

/-!
# A391626: Numbers k such that the k-th composition in standard order is the first sums of some composition into parts > 1.

The programs for A391626, there is no canonical definition to state claims against.
-/

/-! ## A391626.P12499524904145980603

`lt[4, A391621(n+1)]+1`
-/

namespace A391626.P12499524904145980603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391626.P12499524904145980603

/-! ## A391626.P4473678485811684542

`∩[A285315(n+1), A333195(n+1)]`
-/

namespace A391626.P4473678485811684542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391626.P4473678485811684542

/-! ## A391626.P11333732646402255889

`∩[A285315(n+1), A364056(n+1)]`
-/

namespace A391626.P11333732646402255889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391626.P11333732646402255889

/-!
# A391627: Numbers k such that there is more than one composition whose first sums are the k-th composition in standard order.

The programs for A391627, there is no canonical definition to state claims against.
-/

/-! ## A391627.P9467242446736317392

`lt[1, A391642(n+1)]+1`
-/

namespace A391627.P9467242446736317392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391627.P9467242446736317392

/-! ## A391627.P11835372990007105700

`lt[3, A391621(n+1)]+1`
-/

namespace A391627.P11835372990007105700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391627.P11835372990007105700

/-! ## A391627.P9146168523602273028

`∩[A261811(n+1), A048715(n)]`
-/

namespace A391627.P9146168523602273028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391627.P9146168523602273028

/-! ## A391627.P2390732872596947389

`∩[A337080(n+1), A048715(n)]`
-/

namespace A391627.P2390732872596947389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391627.P2390732872596947389

/-! ## A391627.P12239547641252730242

`∩[A048715(n), A387180(n+1)]`
-/

namespace A391627.P12239547641252730242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391627.P12239547641252730242

/-!
# A391628: Number of integer compositions of n that are the first sums of more than one composition.

The programs for A391628, the canonical program `A391628.P1947827811361505830` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391628 has offset 1).

The definition of A391628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391628.P1947827811361505830

`ogf((x^2+x^3-x^4-x^5)/(1-2x^2-x^3+x^5+x^6+x^7))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391628

/-- `ogf((x^2+x^3-x^4-x^5)/(1-2x^2-x^3+x^5+x^6+x^7))` -/
def P1947827811361505830.Spec : Prop :=
  ∀ n, P1947827811361505830.a n = A391628 (n + 1)

theorem P1947827811361505830.correct : P1947827811361505830.Spec := by
  intro n
  simp only [A391628, Nat.add_sub_cancel]

end A391628

/-! ## A391628.P10533004785386274967

`A391683(n+1)-A391644(n+1)`
-/

namespace A391628.P10533004785386274967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391683 (n + 1) - A391644 (n + 1)

end

end A391628.P10533004785386274967

namespace A391628

/-- `A391683(n+1)-A391644(n+1)` -/
def P10533004785386274967.Spec : Prop :=
  ∀ n, P10533004785386274967.a n = A391628 (n + 1)

end A391628

/-! ## A391628.P12180124785475903279

`A000045(n)-A391681(n+1)-A391644(n+1)`
-/

namespace A391628.P12180124785475903279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A391681 (n + 1) - A391644 (n + 1)

end

end A391628.P12180124785475903279

namespace A391628

/-- `A000045(n)-A391681(n+1)-A391644(n+1)` -/
def P12180124785475903279.Spec : Prop :=
  ∀ n, P12180124785475903279.a n = A391628 (n + 1)

end A391628

/-! ## A391628.P16618619005996855926

`A212804(n+1)-A391681(n+1)-A391644(n+1)`
-/

namespace A391628.P16618619005996855926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A391681 (n + 1) - A391644 (n + 1)

end

end A391628.P16618619005996855926

namespace A391628

/-- `A212804(n+1)-A391681(n+1)-A391644(n+1)` -/
def P16618619005996855926.Spec : Prop :=
  ∀ n, P16618619005996855926.a n = A391628 (n + 1)

end A391628

/-! ## A391628.P12428012537837837253

`2^n-A391680(n+1)-A391644(n+1)`
-/

namespace A391628.P12428012537837837253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A391680 (n + 1) - A391644 (n + 1)

end

end A391628.P12428012537837837253

namespace A391628

/-- `2^n-A391680(n+1)-A391644(n+1)` -/
def P12428012537837837253.Spec : Prop :=
  ∀ n, P12428012537837837253.a n = A391628 (n + 1)

end A391628

/-! ## A391628.P14914150904442293776

`abs(A391680(n+1)-A000079(n))-A391644(n+1)`
-/

namespace A391628.P14914150904442293776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A391680 (n + 1) - A000079 n| - A391644 (n + 1)

end

end A391628.P14914150904442293776

namespace A391628

/-- `abs(A391680(n+1)-A000079(n))-A391644(n+1)` -/
def P14914150904442293776.Spec : Prop :=
  ∀ n, P14914150904442293776.a n = A391628 (n + 1)

end A391628

/-!
# A391629: Number of multisets summing to n (or reversed partitions of n) that are not the first sums of any integer partition.

The programs for A391629, there is no canonical definition to state claims against.
-/

/-! ## A391629.P5745705059059068988

`Δ[A000070(n)]-A368684(n+1)`
-/

namespace A391629.P5745705059059068988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A368684 (n + 1)

end

end A391629.P5745705059059068988

/-! ## A391629.P9464988594579755945

`A000041(n+1)-A368684(n+1)`
-/

namespace A391629.P9464988594579755945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A368684 (n + 1)

end

end A391629.P9464988594579755945

/-! ## A391629.P1152058698555881137

`A049988(n+1)+A389811(n+1)-A368684(n+1)`
-/

namespace A391629.P1152058698555881137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) + (A389811 (n + 1) - A368684 (n + 1))

end

end A391629.P1152058698555881137

/-! ## A391629.P16267333413178252641

`A390446(n+1)+A390447(n+1)-A368684(n+1)`
-/

namespace A391629.P16267333413178252641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390446 (n + 1) + (A390447 (n + 1) - A368684 (n + 1))

end

end A391629.P16267333413178252641

/-! ## A391629.P13666449430099094458

`A390447(n+2)-(A390431(n+2)+A368684(n+1))`
-/

namespace A391629.P13666449430099094458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390447 (n + 2) - (A390431 (n + 2) + A368684 (n + 1))

end

end A391629.P13666449430099094458

/-!
# A391632: Number of mutual-visibility sets in the n-Andrásfai graph.

The programs for A391632, there is no canonical definition to state claims against.
-/

/-! ## A391632.P15674762962237175012

`ogf((4-19x+33x^2-40x^3+8x^4)/(1-10x+29x^2-32x^3+8x^4))`
-/

namespace A391632.P15674762962237175012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -19, 33, -40, 8] [1, -10, 29, -32, 8] n

end

end A391632.P15674762962237175012

/-!
# A391633: Triangle read by rows: T(n,k) = Sum_{j=0..k} (-1)^(k-j) * binomial(k,j) * (4+j)^n.

The programs for A391633, there is no canonical definition to state claims against.
-/

/-! ## A391633.P14826658522859968481

`(T(n-1,k-1)+T(n-1,k))*col(n)+2*2*T(n-1,k)` with `a(0)=1`
-/

namespace A391633.P14826658522859968481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n) * SequenceMachineLib.triCol n + 2 * (2 * SequenceMachineLib.triUp a n)

end

end A391633.P14826658522859968481

/-! ## A391633.P8606561576617258008

`A143496(n+4)*A233543(n)`
-/

namespace A391633.P8606561576617258008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143496 (n + 4) * A233543 n

end

end A391633.P8606561576617258008

/-!
# A391635: Triangle read by rows: T(n,k) = Sum_{j=0..k} (-1)^(k-j) * binomial(k,j) * (5+j)^n.

The programs for A391635, there is no canonical definition to state claims against.
-/

/-! ## A391635.P14510574365872834490

`(n-C(round(sqrt(2*(n+1))), 2))!*A193685(n)`
-/

namespace A391635.P14510574365872834490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2 : ℤ)).toNat : ℤ) * A193685 n

end

end A391635.P14510574365872834490

/-! ## A391635.P3442427487195944840

`A193685(n)*A233543(n)`
-/

namespace A391635.P3442427487195944840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193685 n * A233543 n

end

end A391635.P3442427487195944840

/-! ## A391635.P13907613905556356382

`A101312(A273268(n))*A193685(n)`
-/

namespace A391635.P13907613905556356382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101312 ((A273268 n).toNat + 1901) * A193685 n

end

end A391635.P13907613905556356382

/-! ## A391635.P9639776369910258474

`A193685(n)*A344651(A099946(n+2))`
-/

namespace A391635.P9639776369910258474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193685 n * A344651 (A099946 (n + 2)).toNat

end

end A391635.P9639776369910258474

/-!
# A391637: Partial sums of A094345.

The programs for A391637, the canonical program `A391637.P2302561987821921609` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391637 has offset 0).

The definition of A391637 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094345, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391637.P2302561987821921609

`a(n-1)+A094345(n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A391637

/-- `a(n-1)+A094345(n)` -/
def P2302561987821921609.Spec : Prop :=
  ∀ n, P2302561987821921609.a n = A391637 n

theorem P2302561987821921609.correct : P2302561987821921609.Spec := by
  intro n
  simp only [A391637]

end A391637

/-! ## A391637.P7100526155561858500

`∑[∑[a(floor(n/3))+n%3]]` with `a(0)=0`
-/

namespace A391637.P7100526155561858500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 3⌋.toNat + n % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391637.P7100526155561858500

namespace A391637

/-- `∑[∑[a(floor(n/3))+n%3]]` -/
def P7100526155561858500.Spec : Prop :=
  ∀ n, (P7100526155561858500.a n : ℤ) = A391637 n

end A391637

/-! ## A391637.P8356520712332850401

`∑[∑[a(n-1)+1-val(n², 3)]]` with `a(0)=0`
-/

namespace A391637.P8356520712332850401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + (1 - (SequenceMachineLib.valuation (n ^ 2) 3 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391637.P8356520712332850401

namespace A391637

/-- `∑[∑[a(n-1)+1-val(n², 3)]]` -/
def P8356520712332850401.Spec : Prop :=
  ∀ n, P8356520712332850401.a n = A391637 n

end A391637

/-! ## A391637.P10275307466465898996

`∑[A094345(n)]`
-/

namespace A391637.P10275307466465898996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391637.P10275307466465898996

namespace A391637

/-- `∑[A094345(n)]` -/
def P10275307466465898996.Spec : Prop :=
  ∀ n, P10275307466465898996.a n = A391637 n

end A391637

/-! ## A391637.P12553461600329815506

`∑[∑[A053735(n)]]`
-/

namespace A391637.P12553461600329815506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391637.P12553461600329815506

namespace A391637

/-- `∑[∑[A053735(n)]]` -/
def P12553461600329815506.Spec : Prop :=
  ∀ n, P12553461600329815506.a n = A391637 n

end A391637

/-! ## A391637.P640834023457785310

`∑[∑[A365722(3*n)]]`
-/

namespace A391637.P640834023457785310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365722 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391637.P640834023457785310

namespace A391637

/-- `∑[∑[A365722(3*n)]]` -/
def P640834023457785310.Spec : Prop :=
  ∀ n, P640834023457785310.a n = A391637 n

end A391637

/-! ## A391637.P883500345993219871

`∑[∑[A230641(n)-n]]`
-/

namespace A391637.P883500345993219871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391637.P883500345993219871

namespace A391637

/-- `∑[∑[A230641(n)-n]]` -/
def P883500345993219871.Spec : Prop :=
  ∀ n, P883500345993219871.a n = A391637 n

end A391637

/-! ## A391637.P15878791834192067812

`∑[∑[n-2*A054861(n)]]`
-/

namespace A391637.P15878791834192067812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A054861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391637.P15878791834192067812

namespace A391637

/-- `∑[∑[n-2*A054861(n)]]` -/
def P15878791834192067812.Spec : Prop :=
  ∀ n, P15878791834192067812.a n = A391637 n

end A391637

/-! ## A391637.P10746433239990190398

`∑[∑[A056239(A331279(n))]]`
-/

namespace A391637.P10746433239990190398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A331279 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391637.P10746433239990190398

namespace A391637

/-- `∑[∑[A056239(A331279(n))]]` -/
def P10746433239990190398.Spec : Prop :=
  ∀ n, P10746433239990190398.a n = A391637 n

end A391637

/-! ## A391637.P2601739086539878641

`∑[∑[A007953(A007089(n))]]`
-/

namespace A391637.P2601739086539878641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007089 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391637.P2601739086539878641

namespace A391637

/-- `∑[∑[A007953(A007089(n))]]` -/
def P2601739086539878641.Spec : Prop :=
  ∀ n, P2601739086539878641.a n = A391637 n

end A391637

/-!
# A391638: Binary encoding of the disks missing from pin 1, after n moves, when moving infinitely many disks in the Tower of Hanoi starting from pin 1, via the optimal algorithm.

The programs for A391638, there is no canonical definition to state claims against.
-/

/-! ## A391638.P9668523497488147994

`A392654(n)+A392655(n)`
-/

namespace A391638.P9668523497488147994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392654 n + A392655 n

end

end A391638.P9668523497488147994

/-! ## A391638.P12230522506091134165

`A130482(xor(n, floor(n/3)))`
-/

namespace A391638.P12230522506091134165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130482 (Int.xor (n : ℤ) ⌊(n : ℚ) / 3⌋).toNat

end

end A391638.P12230522506091134165

/-! ## A391638.P8130029854293333908

`A289831(A055661(n))`
-/

namespace A391638.P8130029854293333908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A055661 n).toNat

end

end A391638.P8130029854293333908

/-! ## A391638.P15804289935191174860

`A060586(A005823(n+1))`
-/

namespace A391638.P15804289935191174860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060586 (A005823 (n + 1)).toNat

end

end A391638.P15804289935191174860

/-! ## A391638.P3312693587578801099

`A060586(A005836(n+1))`
-/

namespace A391638.P3312693587578801099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060586 (A005836 (n + 1)).toNat

end

end A391638.P3312693587578801099

/-! ## A391638.P3175847461785962116

`A032766(xor(n, A002264(n)))`
-/

namespace A391638.P3175847461785962116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (Int.xor (n : ℤ) (A002264 n)).toNat

end

end A391638.P3175847461785962116

/-! ## A391638.P7216774689758396674

`A289831(A128202(n+1))`
-/

namespace A391638.P7216774689758396674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A128202 (n + 1)).toNat

end

end A391638.P7216774689758396674

/-!
# A391641: Number of integer compositions of n that are not the first sums of any composition with no 1's.

The programs for A391641, the canonical program `A391641.P7948236120283063669` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391641 has offset 1).

The definition of A391641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391641.P7948236120283063669

`ogf((1-2x^2-x^3+x^4+2x^5-x^7+x^9)/(1-2x-2x^2+4x^3-x^5+3x^6-x^7-2x^8+x^9-2x^10))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391641

/-- `ogf((1-2x^2-x^3+x^4+2x^5-x^7+x^9)/(1-2x-2x^2+4x^3-x^5+3x^6-x^7-2x^8+x^9-2x^10))` -/
def P7948236120283063669.Spec : Prop :=
  ∀ n, P7948236120283063669.a n = A391641 (n + 1)

theorem P7948236120283063669.correct : P7948236120283063669.Spec := by
  intro n
  simp only [A391641, Nat.add_sub_cancel]

end A391641

/-! ## A391641.P13457777340835744997

`A011782(n+1)-A391235(n+1)`
-/

namespace A391641.P13457777340835744997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A391235 (n + 1)

end

end A391641.P13457777340835744997

namespace A391641

/-- `A011782(n+1)-A391235(n+1)` -/
def P13457777340835744997.Spec : Prop :=
  ∀ n, P13457777340835744997.a n = A391641 (n + 1)

end A391641

/-! ## A391641.P2409572183018914933

`2^n-A391235(n+1)`
-/

namespace A391641.P2409572183018914933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A391235 (n + 1)

end

end A391641.P2409572183018914933

namespace A391641

/-- `2^n-A391235(n+1)` -/
def P2409572183018914933.Spec : Prop :=
  ∀ n, P2409572183018914933.a n = A391641 (n + 1)

end A391641

/-! ## A391641.P13150279052110401290

`abs(A391235(n+1)-A000079(n))`
-/

namespace A391641.P13150279052110401290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A391235 (n + 1) - A000079 n|

end

end A391641.P13150279052110401290

namespace A391641

/-- `abs(A391235(n+1)-A000079(n))` -/
def P13150279052110401290.Spec : Prop :=
  ∀ n, P13150279052110401290.a n = A391641 (n + 1)

end A391641

/-! ## A391641.P633250740610400338

`A000225(n)+1-A391235(n+1)`
-/

namespace A391641.P633250740610400338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A391235 (n + 1))

end

end A391641.P633250740610400338

namespace A391641

/-- `A000225(n)+1-A391235(n+1)` -/
def P633250740610400338.Spec : Prop :=
  ∀ n, P633250740610400338.a n = A391641 (n + 1)

end A391641

/-!
# A391642: Number of integer compositions whose first sums are the n-th composition in standard order.

The programs for A391642, there is no canonical definition to state claims against.
-/

/-! ## A391642.P10178190408619683964

`and(n, A390675(A032742(n+1)))`
-/

namespace A391642.P10178190408619683964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A390675 (A032742 (n + 1)).toNat)

end

end A391642.P10178190408619683964

/-! ## A391642.P3453823452843788936

`and(n, A390675(A325641(n+1)))`
-/

namespace A391642.P3453823452843788936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A390675 (A325641 (n + 1)).toNat)

end

end A391642.P3453823452843788936

/-! ## A391642.P16629220477036715053

`A390675(A110654(n))-a(n-1)` with `a(0)=0`
-/

namespace A391642.P16629220477036715053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A390675 (A110654 n).toNat - a (n - 1)

end

end A391642.P16629220477036715053

/-! ## A391642.P13527181363512582917

`A390675(A065263(n+1))`
-/

namespace A391642.P13527181363512582917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390675 (A065263 (n + 1)).toNat

end

end A391642.P13527181363512582917

/-! ## A391642.P12586720711686227343

`A390675(A065275(n+1))`
-/

namespace A391642.P12586720711686227343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390675 (A065275 (n + 1)).toNat

end

end A391642.P12586720711686227343

/-! ## A391642.P15930717040948598546

`A390675(A065287(n+1))`
-/

namespace A391642.P15930717040948598546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390675 (A065287 (n + 1)).toNat

end

end A391642.P15930717040948598546

/-! ## A391642.P15064456454087966145

`A333767(A354926(2*n+3)+1+n)`
-/

namespace A391642.P15064456454087966145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333767 (A354926 (2 * n + 3) + 1 + (n : ℤ)).toNat

end

end A391642.P15064456454087966145

/-! ## A391642.P10778957751720009556

`A333767(or(n+1, A127241(3*n+4)))`
-/

namespace A391642.P10778957751720009556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333767 (Int.lor (n + 1 : ℤ) (A127241 (3 * n + 4))).toNat

end

end A391642.P10778957751720009556

/-! ## A391642.P4587655522442836990

`A030317(A066099(n+1))*A333767(n+1)`
-/

namespace A391642.P4587655522442836990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030317 (A066099 (n + 1)).toNat * A333767 (n + 1)

end

end A391642.P4587655522442836990

/-! ## A391642.P17850126730427747068

`C(A333767(n+1), A333751(A333782(2*n+3)))`
-/

namespace A391642.P17850126730427747068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A333767 (n + 1)).toNat (A333751 (A333782 (2 * n + 3)).toNat).toNat

end

end A391642.P17850126730427747068

/-!
# A391643: Number of integer compositions n that are the first sums of a unique nonnegative sequence.

The programs for A391643, the canonical program `A391643.P3714921261603892644` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391643 has offset 1).

The definition of A391643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391643.P3714921261603892644

`ogf((x^3+x^4-x^5)/(1-x-6x^2+5x^3+11x^4-6x^5-6x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391643

/-- `ogf((x^3+x^4-x^5)/(1-x-6x^2+5x^3+11x^4-6x^5-6x^6))` -/
def P3714921261603892644.Spec : Prop :=
  ∀ n, P3714921261603892644.a n = A391643 (n + 1)

theorem P3714921261603892644.correct : P3714921261603892644.Spec := by
  intro n
  simp only [A391643, Nat.add_sub_cancel]

end A391643

/-! ## A391643.P2046113562610935544

`A059973(n)-A367817(A059973(n))`
-/

namespace A391643.P2046113562610935544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059973 n - A367817 (A059973 n).toNat

end

end A391643.P2046113562610935544

namespace A391643

/-- `A059973(n)-A367817(A059973(n))` -/
def P2046113562610935544.Spec : Prop :=
  ∀ n, P2046113562610935544.a n = A391643 (n + 1)

end A391643

/-! ## A391643.P14105202640419034850

`A005674(n+1)-A352493(A373941(n+1))`
-/

namespace A391643.P14105202640419034850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005674 (n + 1) - A352493 (A373941 (n + 1)).toNat

end

end A391643.P14105202640419034850

namespace A391643

/-- `A005674(n+1)-A352493(A373941(n+1))` -/
def P14105202640419034850.Spec : Prop :=
  ∀ n, P14105202640419034850.a n = A391643 (n + 1)

end A391643

/-!
# A391644: Number of integer compositions of n that are the first sums of a unique composition.

The programs for A391644, the canonical program `A391644.P12739218713643874371` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391644 has offset 1).

The definition of A391644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391644.P12739218713643874371

`ogf((x-3x^3+x^4+3x^5-2x^6-x^7+x^8)/(1-4x^2-x^3+4x^4+3x^5+x^6-x^7-2x^8-2x^9))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391644

/-- `ogf((x-3x^3+x^4+3x^5-2x^6-x^7+x^8)/(1-4x^2-x^3+4x^4+3x^5+x^6-x^7-2x^8-2x^9))` -/
def P12739218713643874371.Spec : Prop :=
  ∀ n, P12739218713643874371.a n = A391644 (n + 1)

theorem P12739218713643874371.correct : P12739218713643874371.Spec := by
  intro n
  simp only [A391644, Nat.add_sub_cancel]

end A391644

/-! ## A391644.P2700810060947306687

`A391683(n+1)-A391628(n+1)`
-/

namespace A391644.P2700810060947306687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391683 (n + 1) - A391628 (n + 1)

end

end A391644.P2700810060947306687

namespace A391644

/-- `A391683(n+1)-A391628(n+1)` -/
def P2700810060947306687.Spec : Prop :=
  ∀ n, P2700810060947306687.a n = A391644 (n + 1)

end A391644

/-! ## A391644.P8425404323111184593

`A011782(n+1)-(A391680(n+1)+A391628(n+1))`
-/

namespace A391644.P8425404323111184593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - (A391680 (n + 1) + A391628 (n + 1))

end

end A391644.P8425404323111184593

namespace A391644

/-- `A011782(n+1)-(A391680(n+1)+A391628(n+1))` -/
def P8425404323111184593.Spec : Prop :=
  ∀ n, P8425404323111184593.a n = A391644 (n + 1)

end A391644

/-! ## A391644.P3065539102344366968

`A212804(n+1)-A391681(n+1)-A242736(A350837(n))`
-/

namespace A391644.P3065539102344366968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A391681 (n + 1) - A242736 (A350837 n).toNat

end

end A391644.P3065539102344366968

namespace A391644

/-- `A212804(n+1)-A391681(n+1)-A242736(A350837(n))` -/
def P3065539102344366968.Spec : Prop :=
  ∀ n, P3065539102344366968.a n = A391644 (n + 1)

end A391644

/-!
# A391645: Number of integer compositions of n that are not the first sums of any finite nonnegative sequence.

The programs for A391645, the canonical program `A391645.P4297265374755590702` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391645 has offset 1).

The definition of A391645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391645.P4297265374755590702

`ogf(x^4/(1-3x-2x^2+11x^3-3x^4-6x^5))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391645

/-- `ogf(x^4/(1-3x-2x^2+11x^3-3x^4-6x^5))` -/
def P4297265374755590702.Spec : Prop :=
  ∀ n, P4297265374755590702.a n = A391645 (n + 1)

theorem P4297265374755590702.correct : P4297265374755590702.Spec := by
  intro n
  simp only [A391645, Nat.add_sub_cancel]

end A391645

/-! ## A391645.P10710460427624240639

`A005674(n+1)-A391643(n+1)`
-/

namespace A391645.P10710460427624240639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005674 (n + 1) - A391643 (n + 1)

end

end A391645.P10710460427624240639

namespace A391645

/-- `A005674(n+1)-A391643(n+1)` -/
def P10710460427624240639.Spec : Prop :=
  ∀ n, P10710460427624240639.a n = A391645 (n + 1)

end A391645

/-! ## A391645.P14068961791253673084

`A027561(n+1)/2`
-/

namespace A391645.P14068961791253673084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027561 (n + 1) : ℚ) / 2

end

end A391645.P14068961791253673084

namespace A391645

/-- `A027561(n+1)/2` -/
def P14068961791253673084.Spec : Prop :=
  ∀ n, P14068961791253673084.a n = (A391645 (n + 1) : ℚ)

end A391645

/-! ## A391645.P5716050671486384083

`A014682(A027561(n+1))`
-/

namespace A391645.P5716050671486384083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A027561 (n + 1)).toNat

end

end A391645.P5716050671486384083

namespace A391645

/-- `A014682(A027561(n+1))` -/
def P5716050671486384083.Spec : Prop :=
  ∀ n, P5716050671486384083.a n = A391645 (n + 1)

end A391645

/-! ## A391645.P5075784753683081817

`A001281(A027561(n+1))`
-/

namespace A391645.P5075784753683081817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A027561 (n + 1)).toNat

end

end A391645.P5075784753683081817

namespace A391645

/-- `A001281(A027561(n+1))` -/
def P5075784753683081817.Spec : Prop :=
  ∀ n, P5075784753683081817.a n = A391645 (n + 1)

end A391645

/-!
# A391646: a(n) is the least integer k such that the sum of the prime divisors of k, each taken modulo its exponent in the prime factorization of k, equals n.

The programs for A391646, there is no canonical definition to state claims against.
-/

/-! ## A391646.P6639421682988443147

`A194459(A002699(n)*A003663(n+1))`
-/

namespace A391646.P6639421682988443147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194459 (A002699 n * A003663 (n + 1)).toNat

end

end A391646.P6639421682988443147

/-!
# A391648: G.f. A(x) satisfies A(x) = 1/(1 - x/(1 - x*A(x)^3)^4).

The programs for A391648, there is no canonical definition to state claims against.
-/

/-! ## A391648.P8875520107762982855

`A199877(n)+A182632(A077392(n+1))`
-/

namespace A391648.P8875520107762982855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199877 n + A182632 (A077392 (n + 1)).toNat

end

end A391648.P8875520107762982855

/-!
# A391649: G.f. A(x) satisfies A(x) = 1/(1 - x/(1 - x*A(x)^3)^2).

The programs for A391649, there is no canonical definition to state claims against.
-/

/-! ## A391649.P1371254260049698664

`A002266(A027277(n)+4)`
-/

namespace A391649.P1371254260049698664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A027277 n + 4).toNat

end

end A391649.P1371254260049698664

/-! ## A391649.P8341687063905299327

`A005465(n)+A000120(A391606(n))`
-/

namespace A391649.P8341687063905299327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005465 n + A000120 (A391606 n).toNat

end

end A391649.P8341687063905299327

/-!
# A391650: G.f. A(x) satisfies A(x) = 1/(1 - x/(1 - x*A(x)^4)^2).

The programs for A391650, there is no canonical definition to state claims against.
-/

/-! ## A391650.P12606678870768826769

`A117910(A051841(3*n+2))`
-/

namespace A391650.P12606678870768826769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A051841 (3 * n + 2)).toNat

end

end A391650.P12606678870768826769

/-! ## A391650.P3811564459530335237

`A295810(n)-A398302(A366453(n))`
-/

namespace A391650.P3811564459530335237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295810 n - A398302 (A366453 n).toNat

end

end A391650.P3811564459530335237

/-!
# A391651: G.f. A(x) satisfies A(x) = 1/(1 - x/(1 - x*A(x)^4)^3).

The programs for A391651, there is no canonical definition to state claims against.
-/

/-! ## A391651.P2860137551528028927

`A116550(A002294(n))+A087893(3*n+2)`
-/

namespace A391651.P2860137551528028927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116550 (A002294 n).toNat + A087893 (3 * n + 2)

end

end A391651.P2860137551528028927

/-!
# A391652: Number of Fibonacci words of length n.

The programs for A391652, there is no canonical definition to state claims against.
-/

/-! ## A391652.P10751786439899662145

`A035250(A015565(n)+A000330(n+1))`
-/

namespace A391652.P10751786439899662145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (A015565 n + A000330 (n + 1)).toNat

end

end A391652.P10751786439899662145

/-! ## A391652.P14575497853769909454

`A206369(n+2)+A162342(A000129(n))`
-/

namespace A391652.P14575497853769909454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (n + 2) + A162342 (A000129 n).toNat

end

end A391652.P14575497853769909454

/-!
# A391658: a(n) = A233671(n) - A046868(n).

The programs for A391658, the canonical program `A391658.P1593916310506347255` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391658 has offset 1).

The definition of A391658 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046868, A233671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391658.P1593916310506347255

`A233671(n+1)-A046868(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A391658

/-- `A233671(n+1)-A046868(n+1)` -/
def P1593916310506347255.Spec : Prop :=
  ∀ n, P1593916310506347255.a n = A391658 (n + 1)

theorem P1593916310506347255.correct : P1593916310506347255.Spec := by
  intro n
  simp only [A391658, Nat.add_sub_cancel]

end A391658

/-! ## A391658.P2533045538520858573

`A233671(n+1)-(A333231(n+1)+1)`
-/

namespace A391658.P2533045538520858573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1) - (A333231 (n + 1) + 1)

end

end A391658.P2533045538520858573

namespace A391658

/-- `A233671(n+1)-(A333231(n+1)+1)` -/
def P2533045538520858573.Spec : Prop :=
  ∀ n, P2533045538520858573.a n = A391658 (n + 1)

end A391658

/-! ## A391658.P8512993276351012194

`A233671(n+1)-1-lt[A001223(n+1), A076368(n+1)]`
-/

namespace A391658.P8512993276351012194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1) - 1 - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A391658.P8512993276351012194

namespace A391658

/-- `A233671(n+1)-1-lt[A001223(n+1), A076368(n+1)]` -/
def P8512993276351012194.Spec : Prop :=
  ∀ n, P8512993276351012194.a n = A391658 (n + 1)

end A391658

/-! ## A391658.P7910903634569863936

`eq[1, A228098(n+1)]+1-A333231(n+1)`
-/

namespace A391658.P7910903634569863936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A333231 (n + 1)

end

end A391658.P7910903634569863936

namespace A391658

/-- `eq[1, A228098(n+1)]+1-A333231(n+1)` -/
def P7910903634569863936.Spec : Prop :=
  ∀ n, P7910903634569863936.a n = A391658 (n + 1)

end A391658

/-! ## A391658.P10249734962829182226

`lt[A073274(n+1), 1]+1-A333231(n+1)`
-/

namespace A391658.P10249734962829182226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073274 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) - A333231 (n + 1)

end

end A391658.P10249734962829182226

namespace A391658

/-- `lt[A073274(n+1), 1]+1-A333231(n+1)` -/
def P10249734962829182226.Spec : Prop :=
  ∀ n, P10249734962829182226.a n = A391658 (n + 1)

end A391658

/-! ## A391658.P4820494225937141297

`lt[n, A320146(n+2)]+1-A333231(n+1)`
-/

namespace A391658.P4820494225937141297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320146 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) - A333231 (n + 1)

end

end A391658.P4820494225937141297

namespace A391658

/-- `lt[n, A320146(n+2)]+1-A333231(n+1)` -/
def P4820494225937141297.Spec : Prop :=
  ∀ n, P4820494225937141297.a n = A391658 (n + 1)

end A391658

/-! ## A391658.P12839599520782518140

`A023443(A233671(n+1))-(lt[1, A228098(n+1)]+1)`
-/

namespace A391658.P12839599520782518140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A233671 (n + 1)).toNat - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ)

end

end A391658.P12839599520782518140

namespace A391658

/-- `A023443(A233671(n+1))-(lt[1, A228098(n+1)]+1)` -/
def P12839599520782518140.Spec : Prop :=
  ∀ n, P12839599520782518140.a n = A391658 (n + 1)

end A391658

/-! ## A391658.P2428981940425779431

`A000720(A063535(n))-(lt[A320146(n+2), n]+1)`
-/

namespace A391658.P2428981940425779431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320146 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A063535 n).toNat - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ)

end

end A391658.P2428981940425779431

namespace A391658

/-- `A000720(A063535(n))-(lt[A320146(n+2), n]+1)` -/
def P2428981940425779431.Spec : Prop :=
  ∀ n, P2428981940425779431.a n = A391658 (n + 1)

end A391658

/-! ## A391658.P3407360989947072443

`A258025(n+1)-A333231(n+1)`
-/

namespace A391658.P3407360989947072443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (n + 1) - A333231 (n + 1)

end

end A391658.P3407360989947072443

namespace A391658

/-- `A258025(n+1)-A333231(n+1)` -/
def P3407360989947072443.Spec : Prop :=
  ∀ n, P3407360989947072443.a n = A391658 (n + 1)

end A391658

/-! ## A391658.P4686802032549448080

`A258025(n+1)-(A046868(n+1)-1)`
-/

namespace A391658.P4686802032549448080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (n + 1) - (A046868 (n + 1) - 1)

end

end A391658.P4686802032549448080

namespace A391658

/-- `A258025(n+1)-(A046868(n+1)-1)` -/
def P4686802032549448080.Spec : Prop :=
  ∀ n, P4686802032549448080.a n = A391658 (n + 1)

end A391658

/-! ## A391658.P18165342582320036235

`A258025(n+1)-(lt[0, A073272(n+1)]+1)`
-/

namespace A391658.P18165342582320036235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ)

end

end A391658.P18165342582320036235

namespace A391658

/-- `A258025(n+1)-(lt[0, A073272(n+1)]+1)` -/
def P18165342582320036235.Spec : Prop :=
  ∀ n, P18165342582320036235.a n = A391658 (n + 1)

end A391658

/-! ## A391658.P10004090175855580915

`A258025(n+1)-(lt[A036263(n+1), 1]+1)`
-/

namespace A391658.P10004090175855580915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ)

end

end A391658.P10004090175855580915

namespace A391658

/-- `A258025(n+1)-(lt[A036263(n+1), 1]+1)` -/
def P10004090175855580915.Spec : Prop :=
  ∀ n, P10004090175855580915.a n = A391658 (n + 1)

end A391658

/-! ## A391658.P15137216874765128413

`A258025(n+1)-(lt[1, A056221(n+1)]+1)`
-/

namespace A391658.P15137216874765128413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ)

end

end A391658.P15137216874765128413

namespace A391658

/-- `A258025(n+1)-(lt[1, A056221(n+1)]+1)` -/
def P15137216874765128413.Spec : Prop :=
  ∀ n, P15137216874765128413.a n = A391658 (n + 1)

end A391658

/-! ## A391658.P15978819706508014454

`A258025(n+1)-lt[A001223(n+1), A076368(n+1)]`
-/

namespace A391658.P15978819706508014454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A391658.P15978819706508014454

namespace A391658

/-- `A258025(n+1)-lt[A001223(n+1), A076368(n+1)]` -/
def P15978819706508014454.Spec : Prop :=
  ∀ n, P15978819706508014454.a n = A391658 (n + 1)

end A391658

/-! ## A391658.P4327824993908756636

`A258025(n+1)-A033270(A046869(n+1))`
-/

namespace A391658.P4327824993908756636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (n + 1) - A033270 (A046869 (n + 1)).toNat

end

end A391658.P4327824993908756636

namespace A391658

/-- `A258025(n+1)-A033270(A046869(n+1))` -/
def P4327824993908756636.Spec : Prop :=
  ∀ n, P4327824993908756636.a n = A391658 (n + 1)

end A391658

/-!
# A391659: Number of plane partitions of n with 5 parts.

The programs for A391659, there is no canonical definition to state claims against.
-/

/-! ## A391659.P12138688207458746222

`A091298(A167487(n+3)-2)`
-/

namespace A391659.P12138688207458746222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091298 (A167487 (n + 3) - 2).toNat

end

end A391659.P12138688207458746222

/-! ## A391659.P6811422808908916436

`A091298(A000096(n+3)+6)`
-/

namespace A391659.P6811422808908916436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091298 (A000096 (n + 3) + 6).toNat

end

end A391659.P6811422808908916436

/-! ## A391659.P14897817934662071195

`A091298(eq[5, A002260(n+1)]+1)`
-/

namespace A391659.P14897817934662071195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091298 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A391659.P14897817934662071195

/-!
# A391660: Square array read by antidiagonals: T(n,k) is the Kruskal-Macaulay function K_n of degree n evaluated at k.

The programs for A391660, there is no canonical definition to state claims against.
-/

/-! ## A391660.P10126374111641416319

`A283431(A086810(n+1))`
-/

namespace A391660.P10126374111641416319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (A086810 (n + 1)).toNat

end

end A391660.P10126374111641416319

/-! ## A391660.P16064872480681602108

`A048881(A334063(n+1))`
-/

namespace A391660.P16064872480681602108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A334063 (n + 1)).toNat

end

end A391660.P16064872480681602108

/-! ## A391660.P13167360869946521706

`A357186(A089949(n+1))`
-/

namespace A391660.P13167360869946521706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 (A089949 (n + 1)).toNat

end

end A391660.P13167360869946521706

/-! ## A391660.P15599888984021298394

`A329362(A131689(n+1))`
-/

namespace A391660.P15599888984021298394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (A131689 (n + 1)).toNat

end

end A391660.P15599888984021298394

/-! ## A391660.P12970640406147629215

`A106490(A249027(n+2))`
-/

namespace A391660.P12970640406147629215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106490 (A249027 (n + 2)).toNat

end

end A391660.P12970640406147629215

/-!
# A391661: Square array read by antidiagonals: T(n,k) is the Kruskal-Macaulay function L_n of degree n evaluated at k.

The programs for A391661, there is no canonical definition to state claims against.
-/

/-! ## A391661.P18247621371896345308

`C(A349391(A117260(n)), A034781(n+2))`
-/

namespace A391661.P18247621371896345308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A349391 (A117260 n).toNat).toNat (A034781 (n + 2)).toNat

end

end A391661.P18247621371896345308

/-! ## A391661.P15934674478246505152

`C(A109626(n+2), A132581(A265656(n+1)))`
-/

namespace A391661.P15934674478246505152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A109626 (n + 2)).toNat (A132581 (A265656 (n + 1)).toNat).toNat

end

end A391661.P15934674478246505152

/-! ## A391661.P5737109818983658125

`A278055(A097029(n+1))%A026807(n+1)`
-/

namespace A391661.P5737109818983658125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278055 (A097029 (n + 1)).toNat) (A026807 (n + 1))

end

end A391661.P5737109818983658125

/-!
# A391662: Square array read by antidiagonals: T(n,k) is the Kruskal-Macaulay function M_n of degree n evaluated at k.

The programs for A391662, there is no canonical definition to state claims against.
-/

/-! ## A391662.P18307248647771305106

`A138033(A227926(n+1))`
-/

namespace A391662.P18307248647771305106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138033 (A227926 (n + 1)).toNat

end

end A391662.P18307248647771305106

/-! ## A391662.P12798545331900522220

`A022290(A008284(n+1)%(A346081(n+1)+1))`
-/

namespace A391662.P12798545331900522220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (Int.tmod (A008284 (n + 1)) (A346081 (n + 1) + 1)).toNat

end

end A391662.P12798545331900522220

/-! ## A391662.P16090471177946169683

`A326702(A364285(n+1))`
-/

namespace A391662.P16090471177946169683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (A364285 (n + 1)).toNat

end

end A391662.P16090471177946169683

/-! ## A391662.P11858595955668979528

`A326702(A294219(n+1))`
-/

namespace A391662.P11858595955668979528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (A294219 (n + 1)).toNat

end

end A391662.P11858595955668979528

/-! ## A391662.P1093464680931434097

`A354907(A285824(n+1))`
-/

namespace A391662.P1093464680931434097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 (A285824 (n + 1)).toNat

end

end A391662.P1093464680931434097

/-!
# A391664: Number of permutations p of [2*n] satisfying Sum_{i=1..2*n} (p(i)-i)^2 = 2*n.

The programs for A391664, there is no canonical definition to state claims against.
-/

/-! ## A391664.P3615418684160274996

`A350799(A377883(n))`
-/

namespace A391664.P3615418684160274996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350799 (A377883 n).toNat

end

end A391664.P3615418684160274996

/-! ## A391664.P1795099438403475127

`A038566(or(A329369(n), A358953(n)))`
-/

namespace A391664.P1795099438403475127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (Int.lor (A329369 n) (A358953 n)).toNat

end

end A391664.P1795099438403475127

/-!
# A391667: Numbers j such that the average of the first j+1 partition numbers (beginning with p(0)) is an integer.

The programs for A391667, there is no canonical definition to state claims against.
-/

/-! ## A391667.P6838004850964604708

`A106683(A217137(3*n+2)-A065968(n+1))`
-/

namespace A391667.P6838004850964604708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (A217137 (3 * n + 2) - A065968 (n + 1)).toNat

end

end A391667.P6838004850964604708

/-!
# A391671: Number of different pawn structures on an n X n chessboard.

The programs for A391671, there is no canonical definition to state claims against.
-/

/-! ## A391671.P1482537267137810638

`A377091(A161699(n)^A185334(n))`
-/

namespace A391671.P1482537267137810638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (SequenceMachineLib.roundAway ((A161699 n : ℚ) ^ (A185334 n : ℤ))).toNat

end

end A391671.P1482537267137810638

/-!
# A391676: a(n) = Sum_{k=0..n} 2^k * binomial(k+2,2) * binomial(k,n-k)^2.

The programs for A391676, the canonical program `A391676.P5962065756315852375` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391676 has offset 0).

The definition of A391676 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 2^#*C(#+2, 2)*C(#, n-#)²]` (program `A391676.P5962065756315852375`, by `A391676.P5962065756315852375.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391676.P5962065756315852375

`∑{#}[n, 2^#*C(#+2, 2)*C(#, n-#)²]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391676

/-- `∑{#}[n, 2^#*C(#+2, 2)*C(#, n-#)²]` -/
def P5962065756315852375.Spec : Prop :=
  ∀ n, (P5962065756315852375.a n : ℤ) = A391676 n

theorem P5962065756315852375.correct : P5962065756315852375.Spec := by
  intro n
  simp only [A391676]

end A391676

/-!
# A391677: a(n) = Sum_{k=0..n} (k+1) * 2^k * 3^(n-k) * binomial(k,n-k)^2.

The programs for A391677, the canonical program `A391677.P484415713050533490` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391677 has offset 0).

The definition of A391677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391677.P484415713050533490

`∑{#}[n, (#+1)*2^#*3^(n-#)*C(#, n-#)²]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391677

/-- `∑{#}[n, (#+1)*2^#*3^(n-#)*C(#, n-#)²]` -/
def P484415713050533490.Spec : Prop :=
  ∀ n, P484415713050533490.a n = (A391677 n : ℚ)

end A391677

/-!
# A391678: a(n) = Sum_{k=0..n} 2^k * 3^(n-k) * binomial(k+2,2) * binomial(k,n-k)^2.

The programs for A391678, the canonical program `A391678.P11478053808086700239` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391678 has offset 0).

The definition of A391678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391678.P11478053808086700239

`∑{#}[n, 2^#*3^(n-#)*C(#+2, 2)*C(#, n-#)²]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391678

/-- `∑{#}[n, 2^#*3^(n-#)*C(#+2, 2)*C(#, n-#)²]` -/
def P11478053808086700239.Spec : Prop :=
  ∀ n, P11478053808086700239.a n = (A391678 n : ℚ)

end A391678

/-!
# A391679: Number of integer compositions of n that (1) have all parts > 1 and (2) are not the first sums of any finite nonnegative sequence.

The programs for A391679, the canonical program `A391679.P6060150375111237480` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391679 has offset 1).

The definition of A391679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391679.P6060150375111237480

`ogf(x^8/(1-x-4x^2+2x^3+4x^4+3x^5+2x^6-5x^7-5x^8-2x^9+2x^11+x^12))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391679

/-- `ogf(x^8/(1-x-4x^2+2x^3+4x^4+3x^5+2x^6-5x^7-5x^8-2x^9+2x^11+x^12))` -/
def P6060150375111237480.Spec : Prop :=
  ∀ n, P6060150375111237480.a n = A391679 (n + 1)

theorem P6060150375111237480.correct : P6060150375111237480.Spec := by
  intro n
  simp only [A391679, Nat.add_sub_cancel]

end A391679

/-!
# A391680: Number of integer compositions of n that are not the first sums of any composition.

The programs for A391680, the canonical program `A391680.P13601625954848121569` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391680 has offset 1).

The definition of A391680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391680.P13601625954848121569

`A011782(n+1)-A391683(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A391680

/-- `A011782(n+1)-A391683(n+1)` -/
def P13601625954848121569.Spec : Prop :=
  ∀ n, P13601625954848121569.a n = A391680 (n + 1)

theorem P13601625954848121569.correct : P13601625954848121569.Spec := by
  intro n
  simp only [A391680, Nat.add_sub_cancel]

end A391680

/-! ## A391680.P10492002653661476891

`ogf((1-x-2x^2+2x^3+x^4)/(1-2x-3x^2+5x^3+4x^4-2x^5-4x^6))`
-/

namespace A391680.P10492002653661476891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2, 2, 1] [1, -2, -3, 5, 4, -2, -4] n

end

end A391680.P10492002653661476891

namespace A391680

/-- `ogf((1-x-2x^2+2x^3+x^4)/(1-2x-3x^2+5x^3+4x^4-2x^5-4x^6))` -/
def P10492002653661476891.Spec : Prop :=
  ∀ n, P10492002653661476891.a n = A391680 (n + 1)

end A391680

/-! ## A391680.P18015121069295404029

`2^n-A391683(n+1)`
-/

namespace A391680.P18015121069295404029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A391683 (n + 1)

end

end A391680.P18015121069295404029

namespace A391680

/-- `2^n-A391683(n+1)` -/
def P18015121069295404029.Spec : Prop :=
  ∀ n, P18015121069295404029.a n = A391680 (n + 1)

end A391680

/-! ## A391680.P13371451946469080221

`A391681(n+1)+A099036(n)`
-/

namespace A391680.P13371451946469080221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391681 (n + 1) + A099036 n

end

end A391680.P13371451946469080221

namespace A391680

/-- `A391681(n+1)+A099036(n)` -/
def P13371451946469080221.Spec : Prop :=
  ∀ n, P13371451946469080221.a n = A391680 (n + 1)

end A391680

/-! ## A391680.P14724100582647361734

`abs(A391683(n+1)-A171449(n))`
-/

namespace A391680.P14724100582647361734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A391683 (n + 1) - A171449 n|

end

end A391680.P14724100582647361734

namespace A391680

/-- `abs(A391683(n+1)-A171449(n))` -/
def P14724100582647361734.Spec : Prop :=
  ∀ n, P14724100582647361734.a n = A391680 (n + 1)

end A391680

/-! ## A391680.P15005743466709285210

`A000051(n)-(A391683(n+1)+1)`
-/

namespace A391680.P15005743466709285210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A391683 (n + 1) + 1)

end

end A391680.P15005743466709285210

namespace A391680

/-- `A000051(n)-(A391683(n+1)+1)` -/
def P15005743466709285210.Spec : Prop :=
  ∀ n, P15005743466709285210.a n = A391680 (n + 1)

end A391680

/-! ## A391680.P7832317568989532546

`2^n-(A063759(n)-A164001(n+1))`
-/

namespace A391680.P7832317568989532546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A063759 n - A164001 (n + 1))

end

end A391680.P7832317568989532546

namespace A391680

/-- `2^n-(A063759(n)-A164001(n+1))` -/
def P7832317568989532546.Spec : Prop :=
  ∀ n, P7832317568989532546.a n = A391680 (n + 1)

end A391680

/-! ## A391680.P8758167262181621558

`2^n-(A212804(n+1)-A391681(n+1))`
-/

namespace A391680.P8758167262181621558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A212804 (n + 1) - A391681 (n + 1))

end

end A391680.P8758167262181621558

namespace A391680

/-- `2^n-(A212804(n+1)-A391681(n+1))` -/
def P8758167262181621558.Spec : Prop :=
  ∀ n, P8758167262181621558.a n = A391680 (n + 1)

end A391680

/-! ## A391680.P16657896582281968963

`A000079(n)-(A000045(n)-A391681(n+1))`
-/

namespace A391680.P16657896582281968963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A000045 n - A391681 (n + 1))

end

end A391680.P16657896582281968963

namespace A391680

/-- `A000079(n)-(A000045(n)-A391681(n+1))` -/
def P16657896582281968963.Spec : Prop :=
  ∀ n, P16657896582281968963.a n = A391680 (n + 1)

end A391680

/-! ## A391680.P13481497579257870746

`A000079(n)-(A391644(n+1)+A391628(n+1))`
-/

namespace A391680.P13481497579257870746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A391644 (n + 1) + A391628 (n + 1))

end

end A391680.P13481497579257870746

namespace A391680

/-- `A000079(n)-(A391644(n+1)+A391628(n+1))` -/
def P13481497579257870746.Spec : Prop :=
  ∀ n, P13481497579257870746.a n = A391680 (n + 1)

end A391680

/-! ## A391680.P4687445056926024949

`A011782(n+1)-(A391644(n+1)+A391628(n+1))`
-/

namespace A391680.P4687445056926024949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - (A391644 (n + 1) + A391628 (n + 1))

end

end A391680.P4687445056926024949

namespace A391680

/-- `A011782(n+1)-(A391644(n+1)+A391628(n+1))` -/
def P4687445056926024949.Spec : Prop :=
  ∀ n, P4687445056926024949.a n = A391680 (n + 1)

end A391680

/-!
# A391681: Number of integer compositions of n with all parts > 1 that are not the first sums of any composition.

The programs for A391681, the canonical program `A391681.P12481092097052240636` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391681 has offset 1).

The definition of A391681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391681.P12481092097052240636

`A212804(n+1)-A391683(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A391681

/-- `A212804(n+1)-A391683(n+1)` -/
def P12481092097052240636.Spec : Prop :=
  ∀ n, P12481092097052240636.a n = A391681 (n + 1)

theorem P12481092097052240636.correct : P12481092097052240636.Spec := by
  intro n
  simp only [A391681, Nat.add_sub_cancel]

end A391681

/-! ## A391681.P8421531044484875205

`ogf(x^6/(1-x-4x^2+2x^3+6x^4+x^5-4x^6-2x^7))`
-/

namespace A391681.P8421531044484875205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 0, 0, 1] [1, -1, -4, 2, 6, 1, -4, -2] n

end

end A391681.P8421531044484875205

namespace A391681

/-- `ogf(x^6/(1-x-4x^2+2x^3+6x^4+x^5-4x^6-2x^7))` -/
def P8421531044484875205.Spec : Prop :=
  ∀ n, P8421531044484875205.a n = A391681 (n + 1)

end A391681

/-! ## A391681.P12712730710108610621

`A000045(n)-A391683(n+1)`
-/

namespace A391681.P12712730710108610621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A391683 (n + 1)

end

end A391681.P12712730710108610621

namespace A391681

/-- `A000045(n)-A391683(n+1)` -/
def P12712730710108610621.Spec : Prop :=
  ∀ n, P12712730710108610621.a n = A391681 (n + 1)

end A391681

/-! ## A391681.P12419818773447807268

`Δ[A000071(n+1)]-A391683(n+1)`
-/

namespace A391681.P12419818773447807268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A391683 (n + 1)

end

end A391681.P12419818773447807268

namespace A391681

/-- `Δ[A000071(n+1)]-A391683(n+1)` -/
def P12419818773447807268.Spec : Prop :=
  ∀ n, P12419818773447807268.a n = A391681 (n + 1)

end A391681

/-! ## A391681.P14558712546183182054

`A391680(n+1)-A099036(n)`
-/

namespace A391681.P14558712546183182054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391680 (n + 1) - A099036 n

end

end A391681.P14558712546183182054

namespace A391681

/-- `A391680(n+1)-A099036(n)` -/
def P14558712546183182054.Spec : Prop :=
  ∀ n, P14558712546183182054.a n = A391681 (n + 1)

end A391681

/-! ## A391681.P10329345671816188286

`A000045(n)-(2^n-A391680(n+1))`
-/

namespace A391681.P10329345671816188286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - ((2 ^ n : ℤ) - A391680 (n + 1))

end

end A391681.P10329345671816188286

namespace A391681

/-- `A000045(n)-(2^n-A391680(n+1))` -/
def P10329345671816188286.Spec : Prop :=
  ∀ n, P10329345671816188286.a n = A391681 (n + 1)

end A391681

/-! ## A391681.P16913391200576686530

`2^n-A391683(n+1)-A099036(n)`
-/

namespace A391681.P16913391200576686530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A391683 (n + 1) - A099036 n

end

end A391681.P16913391200576686530

namespace A391681

/-- `2^n-A391683(n+1)-A099036(n)` -/
def P16913391200576686530.Spec : Prop :=
  ∀ n, P16913391200576686530.a n = A391681 (n + 1)

end A391681

/-! ## A391681.P11417222965561028502

`A212804(n+1)-abs(A391680(n+1)-A000079(n))`
-/

namespace A391681.P11417222965561028502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - |A391680 (n + 1) - A000079 n|

end

end A391681.P11417222965561028502

namespace A391681

/-- `A212804(n+1)-abs(A391680(n+1)-A000079(n))` -/
def P11417222965561028502.Spec : Prop :=
  ∀ n, P11417222965561028502.a n = A391681 (n + 1)

end A391681

/-! ## A391681.P7986769184834559100

`A011782(n+1)-(A391644(n+1)+A391628(n+1))-A099036(n)`
-/

namespace A391681.P7986769184834559100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - (A391644 (n + 1) + A391628 (n + 1)) - A099036 n

end

end A391681.P7986769184834559100

namespace A391681

/-- `A011782(n+1)-(A391644(n+1)+A391628(n+1))-A099036(n)` -/
def P7986769184834559100.Spec : Prop :=
  ∀ n, P7986769184834559100.a n = A391681 (n + 1)

end A391681

/-!
# A391682: Number of integer compositions of n that are the first sums of more than one nonnegative sequence.

The programs for A391682, the canonical program `A391682.P17425857161429332564` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391682 has offset 1).

The definition of A391682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391682.P17425857161429332564

`ogf((1+x-x^2-x^3)/(1-x-3x^2+2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391682

/-- `ogf((1+x-x^2-x^3)/(1-x-3x^2+2x^3+2x^4))` -/
def P17425857161429332564.Spec : Prop :=
  ∀ n, P17425857161429332564.a n = A391682 (n + 1)

theorem P17425857161429332564.correct : P17425857161429332564.Spec := by
  intro n
  simp only [A391682, Nat.add_sub_cancel]

end A391682

/-! ## A391682.P12413487597952990575

`∑[A079289(n)]`
-/

namespace A391682.P12413487597952990575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391682.P12413487597952990575

namespace A391682

/-- `∑[A079289(n)]` -/
def P12413487597952990575.Spec : Prop :=
  ∀ n, P12413487597952990575.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P13430938040837911539

`A295728(n)+A022086(n)`
-/

namespace A391682.P13430938040837911539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 n + A022086 n

end

end A391682.P13430938040837911539

namespace A391682

/-- `A295728(n)+A022086(n)` -/
def P13430938040837911539.Spec : Prop :=
  ∀ n, P13430938040837911539.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P12217394360973376880

`A295857(n)+A060546(n)`
-/

namespace A391682.P12217394360973376880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295857 n + A060546 n

end

end A391682.P12217394360973376880

namespace A391682

/-- `A295857(n)+A060546(n)` -/
def P12217394360973376880.Spec : Prop :=
  ∀ n, P12217394360973376880.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P1095807598320464482

`A295731(n)+A164090(n+1)`
-/

namespace A391682.P1095807598320464482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 n + A164090 (n + 1)

end

end A391682.P1095807598320464482

namespace A391682

/-- `A295731(n)+A164090(n+1)` -/
def P1095807598320464482.Spec : Prop :=
  ∀ n, P1095807598320464482.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P5376062218725318910

`A295851(n)+A164073(n+1)`
-/

namespace A391682.P5376062218725318910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295851 n + A164073 (n + 1)

end

end A391682.P5376062218725318910

namespace A391682

/-- `A295851(n)+A164073(n+1)` -/
def P5376062218725318910.Spec : Prop :=
  ∀ n, P5376062218725318910.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P7693451095414861578

`A020701(n)-A164090(n+1)`
-/

namespace A391682.P7693451095414861578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - A164090 (n + 1)

end

end A391682.P7693451095414861578

namespace A391682

/-- `A020701(n)-A164090(n+1)` -/
def P7693451095414861578.Spec : Prop :=
  ∀ n, P7693451095414861578.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P7575185990967731915

`A020706(n)-A209721(n+1)`
-/

namespace A391682.P7575185990967731915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n - A209721 (n + 1)

end

end A391682.P7575185990967731915

namespace A391682

/-- `A020706(n)-A209721(n+1)` -/
def P7575185990967731915.Spec : Prop :=
  ∀ n, P7575185990967731915.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P4515122571292137387

`A048584(n)-A209722(n+1)`
-/

namespace A391682.P4515122571292137387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 n - A209722 (n + 1)

end

end A391682.P4515122571292137387

namespace A391682

/-- `A048584(n)-A209722(n+1)` -/
def P4515122571292137387.Spec : Prop :=
  ∀ n, P4515122571292137387.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P9119103029434803548

`A295724(n)+A000045(n+2)`
-/

namespace A391682.P9119103029434803548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n + A000045 (n + 2)

end

end A391682.P9119103029434803548

namespace A391682

/-- `A295724(n)+A000045(n+2)` -/
def P9119103029434803548.Spec : Prop :=
  ∀ n, P9119103029434803548.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P18179909571703324067

`A079289(n+2)-A016116(n)`
-/

namespace A391682.P18179909571703324067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079289 (n + 2) - A016116 n

end

end A391682.P18179909571703324067

namespace A391682

/-- `A079289(n+2)-A016116(n)` -/
def P18179909571703324067.Spec : Prop :=
  ∀ n, P18179909571703324067.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P11460947779905140585

`A000045(n)+A079284(n)+A005672(n)`
-/

namespace A391682.P11460947779905140585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A079284 n + A005672 n)

end

end A391682.P11460947779905140585

namespace A391682

/-- `A000045(n)+A079284(n)+A005672(n)` -/
def P11460947779905140585.Spec : Prop :=
  ∀ n, P11460947779905140585.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P15223347354244579550

`A005672(n)+A295735(n)+A295718(n)`
-/

namespace A391682.P15223347354244579550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n + (A295735 n + A295718 n)

end

end A391682.P15223347354244579550

namespace A391682

/-- `A005672(n)+A295735(n)+A295718(n)` -/
def P15223347354244579550.Spec : Prop :=
  ∀ n, P15223347354244579550.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P2081241944742669350

`A000045(n+1)+A295723(n)+A005672(n)`
-/

namespace A391682.P2081241944742669350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A295723 n + A005672 n)

end

end A391682.P2081241944742669350

namespace A391682

/-- `A000045(n+1)+A295723(n)+A005672(n)` -/
def P2081241944742669350.Spec : Prop :=
  ∀ n, P2081241944742669350.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P2815883815029750456

`A005672(n+1)+A295733(n)+A295718(n)`
-/

namespace A391682.P2815883815029750456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295733 n + A295718 n)

end

end A391682.P2815883815029750456

namespace A391682

/-- `A005672(n+1)+A295733(n)+A295718(n)` -/
def P2815883815029750456.Spec : Prop :=
  ∀ n, P2815883815029750456.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P13517969698553709861

`A000045(n+1)+A295730(n)+A000045(n+1)`
-/

namespace A391682.P13517969698553709861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A295730 n + A000045 (n + 1))

end

end A391682.P13517969698553709861

namespace A391682

/-- `A000045(n+1)+A295730(n)+A000045(n+1)` -/
def P13517969698553709861.Spec : Prop :=
  ∀ n, P13517969698553709861.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P2406499479052512179

`A079284(n+1)+A079284(n)-A079289(n+1)`
-/

namespace A391682.P2406499479052512179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079284 (n + 1) + (A079284 n - A079289 (n + 1))

end

end A391682.P2406499479052512179

namespace A391682

/-- `A079284(n+1)+A079284(n)-A079289(n+1)` -/
def P2406499479052512179.Spec : Prop :=
  ∀ n, P2406499479052512179.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P15880801751520619656

`A005672(n+1)+A295723(n+1)-A005672(n)`
-/

namespace A391682.P15880801751520619656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295723 (n + 1) - A005672 n)

end

end A391682.P15880801751520619656

namespace A391682

/-- `A005672(n+1)+A295723(n+1)-A005672(n)` -/
def P15880801751520619656.Spec : Prop :=
  ∀ n, P15880801751520619656.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P9168321273144454899

`A027557(n)-A005672(n)`
-/

namespace A391682.P9168321273144454899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027557 n - A005672 n

end

end A391682.P9168321273144454899

namespace A391682

/-- `A027557(n)-A005672(n)` -/
def P9168321273144454899.Spec : Prop :=
  ∀ n, P9168321273144454899.a n = A391682 (n + 1)

end A391682

/-! ## A391682.P17071936204727409649

`A295719(n)-A295723(n)`
-/

namespace A391682.P17071936204727409649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295719 n - A295723 n

end

end A391682.P17071936204727409649

namespace A391682

/-- `A295719(n)-A295723(n)` -/
def P17071936204727409649.Spec : Prop :=
  ∀ n, P17071936204727409649.a n = A391682 (n + 1)

end A391682

/-!
# A391683: Number of integer compositions of n that are the first sums of some composition.

The programs for A391683, the canonical program `A391683.P16625068616890417378` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391683 has offset 1).

The definition of A391683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391683.P16625068616890417378

`ogf((x+x^2-x^3-x^4)/(1-3x^2-x^3+2x^4+2x^5))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391683

/-- `ogf((x+x^2-x^3-x^4)/(1-3x^2-x^3+2x^4+2x^5))` -/
def P16625068616890417378.Spec : Prop :=
  ∀ n, P16625068616890417378.a n = A391683 (n + 1)

theorem P16625068616890417378.correct : P16625068616890417378.Spec := by
  intro n
  simp only [A391683, Nat.add_sub_cancel]

end A391683

/-! ## A391683.P9562436176935939481

`A063759(n)-A164001(n+1)`
-/

namespace A391683.P9562436176935939481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n - A164001 (n + 1)

end

end A391683.P9562436176935939481

namespace A391683

/-- `A063759(n)-A164001(n+1)` -/
def P9562436176935939481.Spec : Prop :=
  ∀ n, P9562436176935939481.a n = A391683 (n + 1)

end A391683

/-! ## A391683.P1577644041479918814

`A391644(n+1)+A391628(n+1)`
-/

namespace A391683.P1577644041479918814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391644 (n + 1) + A391628 (n + 1)

end

end A391683.P1577644041479918814

namespace A391683

/-- `A391644(n+1)+A391628(n+1)` -/
def P1577644041479918814.Spec : Prop :=
  ∀ n, P1577644041479918814.a n = A391683 (n + 1)

end A391683

/-! ## A391683.P1404921650332035333

`A000045(n)-A391681(n+1)`
-/

namespace A391683.P1404921650332035333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A391681 (n + 1)

end

end A391683.P1404921650332035333

namespace A391683

/-- `A000045(n)-A391681(n+1)` -/
def P1404921650332035333.Spec : Prop :=
  ∀ n, P1404921650332035333.a n = A391683 (n + 1)

end A391683

/-! ## A391683.P5928869982788351384

`A212804(n+1)-A391681(n+1)`
-/

namespace A391683.P5928869982788351384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A391681 (n + 1)

end

end A391683.P5928869982788351384

namespace A391683

/-- `A212804(n+1)-A391681(n+1)` -/
def P5928869982788351384.Spec : Prop :=
  ∀ n, P5928869982788351384.a n = A391683 (n + 1)

theorem P5928869982788351384.correct : P5928869982788351384.Spec := by
  intro n
  simp only [A391683, Nat.add_sub_cancel, A391683.P5928869982788351384.a, A391683.P16625068616890417378.a, A212804, A212804.P11720252403142705008.a, A391681, A391681.P12481092097052240636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A391683

/-! ## A391683.P3308236720316583558

`2^n-A391680(n+1)`
-/

namespace A391683.P3308236720316583558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A391680 (n + 1)

end

end A391683.P3308236720316583558

namespace A391683

/-- `2^n-A391680(n+1)` -/
def P3308236720316583558.Spec : Prop :=
  ∀ n, P3308236720316583558.a n = A391683 (n + 1)

end A391683

/-!
# A391684: Number of divisors d of n which also divide (n/d)^2 - 1.

The programs for A391684, there is no canonical definition to state claims against.
-/

/-! ## A391684.P2327431947044656103

`A384237(A061537(n+1))`
-/

namespace A391684.P2327431947044656103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384237 (A061537 (n + 1)).toNat

end

end A391684.P2327431947044656103

/-! ## A391684.P5017356348774405013

`A384237(A062509(n+1))`
-/

namespace A391684.P5017356348774405013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384237 (A062509 (n + 1)).toNat

end

end A391684.P5017356348774405013

/-! ## A391684.P4173591450641826261

`A384237(A386436(A384237((n+1)²)))`
-/

namespace A391684.P4173591450641826261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384237 (A386436 (A384237 ((n + 1) ^ 2)).toNat).toNat

end

end A391684.P4173591450641826261

/-! ## A391684.P14364852800107749688

`A385731(A386436(A384237((n+1)*(n+1))))`
-/

namespace A391684.P14364852800107749688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385731 (A386436 (A384237 ((n + 1) * (n + 1))).toNat).toNat

end

end A391684.P14364852800107749688

/-! ## A391684.P11378109076716977006

`A384237(A385662(A386872(n+1))²)`
-/

namespace A391684.P11378109076716977006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384237 (A385662 (A386872 (n + 1)).toNat ^ 2).toNat

end

end A391684.P11378109076716977006

/-!
# A391685: Array read by ascending antidiagonals: A(n,k) = (2*n + 1)*2^(2*k+1) - 1 with k >= 0.

The programs for A391685, the canonical program `A391685.P10231373506518699045` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391685 has offset 0).

The definition of A391685 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(row(n)-col(n))+1)*2^(2*col(n)+1)-1` (program `A391685.P10231373506518699045`, by `A391685.P10231373506518699045.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391685.P10231373506518699045

`(2*(row(n)-col(n))+1)*2^(2*col(n)+1)-1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391685

/-- `(2*(row(n)-col(n))+1)*2^(2*col(n)+1)-1` -/
def P10231373506518699045.Spec : Prop :=
  ∀ n, P10231373506518699045.a n = A391685 n

theorem P10231373506518699045.correct : P10231373506518699045.Spec := by
  intro n
  simp only [A391685]

end A391685

/-! ## A391685.P13670452512186622858

`2*A141290(1+n)-1`
-/

namespace A391685.P13670452512186622858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141290 (1 + n) - 1

end

end A391685.P13670452512186622858

namespace A391685

/-- `2*A141290(1+n)-1` -/
def P13670452512186622858.Spec : Prop :=
  ∀ n, P13670452512186622858.a n = A391685 n

end A391685

/-! ## A391685.P11102450082459370925

`A004273(A141290(n+1))`
-/

namespace A391685.P11102450082459370925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A141290 (n + 1)).toNat

end

end A391685.P11102450082459370925

namespace A391685

/-- `A004273(A141290(n+1))` -/
def P11102450082459370925.Spec : Prop :=
  ∀ n, P11102450082459370925.a n = A391685 n

end A391685

/-! ## A391685.P2739086975414309534

`row(A042964(A141290(n+1)²))`
-/

namespace A391685.P2739086975414309534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A042964 (A141290 (n + 1) ^ 2).toNat).toNat

end

end A391685.P2739086975414309534

namespace A391685

/-- `row(A042964(A141290(n+1)²))` -/
def P2739086975414309534.Spec : Prop :=
  ∀ n, (P2739086975414309534.a n : ℤ) = A391685 n

end A391685

/-!
# A391686: Antidiagonal sums of the array A391685.

The programs for A391686, the canonical program `A391686.P6123578692271403931` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391686 has offset 0).

The definition of A391686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391686.P4422939731527107767

`ogf((1+6x)/(1-6x+9x^2-4x^3))`
-/

namespace A391686.P4422939731527107767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -6, 9, -4] n

end

end A391686.P4422939731527107767

namespace A391686

/-- `ogf((1+6x)/(1-6x+9x^2-4x^3))` -/
def P4422939731527107767.Spec : Prop :=
  ∀ n, P4422939731527107767.a n = A391686 n

end A391686

/-! ## A391686.P6123578692271403931

`(5*2^(2*n+3)-21*n-31)/9`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391686

/-- `(5*2^(2*n+3)-21*n-31)/9` -/
def P6123578692271403931.Spec : Prop :=
  ∀ n, P6123578692271403931.a n = (A391686 n : ℚ)

end A391686

/-! ## A391686.P17055022671380249262

`∑[ogf((1+6x)/(1-5x+4x^2))]`
-/

namespace A391686.P17055022671380249262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -5, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391686.P17055022671380249262

namespace A391686

/-- `∑[ogf((1+6x)/(1-5x+4x^2))]` -/
def P17055022671380249262.Spec : Prop :=
  ∀ n, P17055022671380249262.a n = A391686 n

end A391686

/-! ## A391686.P10963073001570939878

`∑[4*a(n-1)+7]` with `a(0)=1`
-/

namespace A391686.P10963073001570939878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391686.P10963073001570939878

namespace A391686

/-- `∑[4*a(n-1)+7]` -/
def P10963073001570939878.Spec : Prop :=
  ∀ n, (P10963073001570939878.a n : ℤ) = A391686 n

end A391686

/-! ## A391686.P10959868777458104235

`∑[∑[4*a(n-1)]]` with `a(0)=1, a(1)=10`
-/

namespace A391686.P10959868777458104235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391686.P10959868777458104235

namespace A391686

/-- `∑[∑[4*a(n-1)]]` -/
def P10959868777458104235.Spec : Prop :=
  ∀ n, (P10959868777458104235.a n : ℤ) = A391686 n

end A391686

/-! ## A391686.P15732338342562029594

`4*(a(n-1)+2*n)-(n-1)` with `a(0)=1`
-/

namespace A391686.P15732338342562029594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (a (n - 1) + (2 * n : ℤ)) - ((n : ℤ) - 1)

end

end A391686.P15732338342562029594

namespace A391686

/-- `4*(a(n-1)+2*n)-(n-1)` -/
def P15732338342562029594.Spec : Prop :=
  ∀ n, P15732338342562029594.a n = A391686 n

end A391686

/-! ## A391686.P5344341570005445772

`∑[A321421(n)]`
-/

namespace A391686.P5344341570005445772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391686.P5344341570005445772

namespace A391686

/-- `∑[A321421(n)]` -/
def P5344341570005445772.Spec : Prop :=
  ∀ n, P5344341570005445772.a n = A391686 n

end A391686

/-! ## A391686.P14373960957971442187

`∑[A072197(n)-2]`
-/

namespace A391686.P14373960957971442187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072197 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391686.P14373960957971442187

namespace A391686

/-- `∑[A072197(n)-2]` -/
def P14373960957971442187.Spec : Prop :=
  ∀ n, P14373960957971442187.a n = A391686 n

end A391686

/-! ## A391686.P7107616086181868664

`∑[A086462(n)]+n`
-/

namespace A391686.P7107616086181868664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A391686.P7107616086181868664

namespace A391686

/-- `∑[A086462(n)]+n` -/
def P7107616086181868664.Spec : Prop :=
  ∀ n, P7107616086181868664.a n = A391686 n

end A391686

/-! ## A391686.P9528281819095657812

`∑[∑[A146523(2*n)]]`
-/

namespace A391686.P9528281819095657812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146523 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391686.P9528281819095657812

namespace A391686

/-- `∑[∑[A146523(2*n)]]` -/
def P9528281819095657812.Spec : Prop :=
  ∀ n, P9528281819095657812.a n = A391686 n

end A391686

/-! ## A391686.P1017909299354524560

`∑[A080675(n+1)-1]`
-/

namespace A391686.P1017909299354524560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080675 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391686.P1017909299354524560

namespace A391686

/-- `∑[A080675(n+1)-1]` -/
def P1017909299354524560.Spec : Prop :=
  ∀ n, P1017909299354524560.a n = A391686 n

end A391686

/-! ## A391686.P15500546179877892367

`∑[A084640(2*n+1)]`
-/

namespace A391686.P15500546179877892367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084640 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391686.P15500546179877892367

namespace A391686

/-- `∑[A084640(2*n+1)]` -/
def P15500546179877892367.Spec : Prop :=
  ∀ n, P15500546179877892367.a n = A391686 n

end A391686

/-! ## A391686.P4983136444668153511

`∑[A140359(2*n+1)]`
-/

namespace A391686.P4983136444668153511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140359 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391686.P4983136444668153511

namespace A391686

/-- `∑[A140359(2*n+1)]` -/
def P4983136444668153511.Spec : Prop :=
  ∀ n, P4983136444668153511.a n = A391686 n

end A391686

/-! ## A391686.P8339864707321400978

`∑[A173078(2*n+1)]`
-/

namespace A391686.P8339864707321400978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173078 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391686.P8339864707321400978

namespace A391686

/-- `∑[A173078(2*n+1)]` -/
def P8339864707321400978.Spec : Prop :=
  ∀ n, P8339864707321400978.a n = A391686 n

end A391686

/-! ## A391686.P2023727847844891990

`∑[A344109(2*n+1)]`
-/

namespace A391686.P2023727847844891990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344109 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391686.P2023727847844891990

namespace A391686

/-- `∑[A344109(2*n+1)]` -/
def P2023727847844891990.Spec : Prop :=
  ∀ n, P2023727847844891990.a n = A391686 n

end A391686

/-! ## A391686.P12648994141082086985

`2*A141291(n+1)-(n+1)`
-/

namespace A391686.P12648994141082086985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141291 (n + 1) - (n + 1 : ℤ)

end

end A391686.P12648994141082086985

namespace A391686

/-- `2*A141291(n+1)-(n+1)` -/
def P12648994141082086985.Spec : Prop :=
  ∀ n, P12648994141082086985.a n = A391686 n

end A391686

/-! ## A391686.P6891549572541854372

`A172447(n+1)-(2*n+3)`
-/

namespace A391686.P6891549572541854372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172447 (n + 1) - (2 * n + 3 : ℤ)

end

end A391686.P6891549572541854372

namespace A391686

/-- `A172447(n+1)-(2*n+3)` -/
def P6891549572541854372.Spec : Prop :=
  ∀ n, P6891549572541854372.a n = A391686 n

end A391686

/-! ## A391686.P16371799129092217395

`A289254(n+1)+A073724(n)`
-/

namespace A391686.P16371799129092217395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289254 (n + 1) + A073724 n

end

end A391686.P16371799129092217395

namespace A391686

/-- `A289254(n+1)+A073724(n)` -/
def P16371799129092217395.Spec : Prop :=
  ∀ n, P16371799129092217395.a n = A391686 n

end A391686

/-! ## A391686.P16285935156895369016

`A078904(n)+A078904(n)+A014825(n+1)`
-/

namespace A391686.P16285935156895369016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078904 n + (A078904 n + A014825 (n + 1))

end

end A391686.P16285935156895369016

namespace A391686

/-- `A078904(n)+A078904(n)+A014825(n+1)` -/
def P16285935156895369016.Spec : Prop :=
  ∀ n, P16285935156895369016.a n = A391686 n

end A391686

/-! ## A391686.P7547413157104724148

`A011377(2*n+1)-A166753(2*n+1)`
-/

namespace A391686.P7547413157104724148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011377 (2 * n + 1) - A166753 (2 * n + 1)

end

end A391686.P7547413157104724148

namespace A391686

/-- `A011377(2*n+1)-A166753(2*n+1)` -/
def P7547413157104724148.Spec : Prop :=
  ∀ n, P7547413157104724148.a n = A391686 n

end A391686

/-!
# A391687: Number of bordered magic squares of order n composed of the numbers from 1 to n^2, counted up to rotations and reflections.

The programs for A391687, there is no canonical definition to state claims against.
-/

/-! ## A391687.P12645002791281630802

`A387641(a(n-1)+1)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A391687.P12645002791281630802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0] fun n a =>
  A387641 (a (n - 1) + 1).toNat

end

end A391687.P12645002791281630802

/-!
# A391688: a(n) = Sum_{k=0..n} (k+1) * 2^(n-k) * binomial(k,n-k)^2.

The programs for A391688, the canonical program `A391688.P2223188806446527830` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391688 has offset 0).

The definition of A391688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391688.P2223188806446527830

`∑{#}[n, (#+1)*2^(n-#)*C(#, n-#)²]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391688

/-- `∑{#}[n, (#+1)*2^(n-#)*C(#, n-#)²]` -/
def P2223188806446527830.Spec : Prop :=
  ∀ n, P2223188806446527830.a n = (A391688 n : ℚ)

end A391688

/-! ## A391688.P8949333738787967860

`A070548(xor(A050337(n+1), A298189(n+1)))`
-/

namespace A391688.P8949333738787967860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (Int.xor (A050337 (n + 1)) (A298189 (n + 1))).toNat

end

end A391688.P8949333738787967860

namespace A391688

/-- `A070548(xor(A050337(n+1), A298189(n+1)))` -/
def P8949333738787967860.Spec : Prop :=
  ∀ n, P8949333738787967860.a n = A391688 n

end A391688

/-!
# A391689: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(k+2,2) * binomial(k,n-k)^2.

The programs for A391689, the canonical program `A391689.P4722684161112977229` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391689 has offset 0).

The definition of A391689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391689.P4722684161112977229

`∑{#}[n, 2^(n-#)*C(#+2, 2)*C(#, n-#)²]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391689

/-- `∑{#}[n, 2^(n-#)*C(#+2, 2)*C(#, n-#)²]` -/
def P4722684161112977229.Spec : Prop :=
  ∀ n, P4722684161112977229.a n = (A391689 n : ℚ)

end A391689

/-!
# A391691: Number of congruences of the lattice of alternating sign matrices of size n such that minima and maxima of congruence classes are permutations.

The programs for A391691, there is no canonical definition to state claims against.
-/

/-! ## A391691.P10655300541467331933

`A001961(A197949(n+1))`
-/

namespace A391691.P10655300541467331933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (A197949 (n + 1)).toNat

end

end A391691.P10655300541467331933

/-!
# A391692: Number of distinct sets of the form J(P_s)\J(P_t) where s > t are two permutations of size n differing by a transposition and J(M) is the set of join-irreducible elements below M in the lattice of alternating sign matrices.

The programs for A391692, there is no canonical definition to state claims against.
-/

/-! ## A391692.P25025091009786053

`A253138(A176476(n+1))`
-/

namespace A391692.P25025091009786053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253138 (A176476 (n + 1)).toNat

end

end A391692.P25025091009786053

/-!
# A391693: Number of invertible n X n Hankel matrices with entries in {0,1}.

The programs for A391693, there is no canonical definition to state claims against.
-/

/-! ## A391693.P13220003569008888756

`∑[A296484(A374678(n)+A002697(n))]`
-/

namespace A391693.P13220003569008888756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296484 (A374678 n + A002697 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391693.P13220003569008888756

/-!
# A391696: Irregular triangular array read by rows: T(n,k) = position of 1st letter of 1st appearance of the k-th word of length n in the lexicographic ordering of all 01-words, as in A076478.

The programs for A391696, the canonical program `A391696.P5710632746105613203` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391696 has offset 1).

The definition of A391696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391696.P5710632746105613203

`∑[floor(log2(n+1))]+1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391696

/-- `∑[floor(log2(n+1))]+1` -/
def P5710632746105613203.Spec : Prop :=
  ∀ n, (P5710632746105613203.a n : ℤ) = A391696 (n + 1)

theorem P5710632746105613203.correct : P5710632746105613203.Spec := by
  intro n
  simp only [A391696, Nat.add_sub_cancel]

end A391696

/-! ## A391696.P4333645928249984261

`floor(a(n-1)+log2(n+1))` with `a(0)=1`
-/

namespace A391696.P4333645928249984261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.logb 2 (n + 1 : ℝ)⌋

end

end A391696.P4333645928249984261

namespace A391696

/-- `floor(a(n-1)+log2(n+1))` -/
def P4333645928249984261.Spec : Prop :=
  ∀ n, P4333645928249984261.a n = A391696 (n + 1)

end A391696

/-! ## A391696.P14842229897820483814

`∑[a(ceil(n/2)-1)+1]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A391696.P14842229897820483814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (⌈(n : ℚ) / 2⌉ - 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391696.P14842229897820483814

namespace A391696

/-- `∑[a(ceil(n/2)-1)+1]` -/
def P14842229897820483814.Spec : Prop :=
  ∀ n, (P14842229897820483814.a n : ℤ) = A391696 (n + 1)

end A391696

/-! ## A391696.P5850109912867085415

`∑[∑{e}[and(1+n, -a(n-1)), #]]` with `a(0)=-2`
-/

namespace A391696.P5850109912867085415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f2 =>
  Int.land (1 + n : ℤ) (-f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391696.P5850109912867085415

namespace A391696

/-- `∑[∑{e}[and(1+n, -a(n-1)), #]]` -/
def P5850109912867085415.Spec : Prop :=
  ∀ n, (P5850109912867085415.a n : ℤ) = A391696 (n + 1)

end A391696

/-! ## A391696.P15322588011236693228

`∑[A070939(ceil(n/2))]`
-/

namespace A391696.P15322588011236693228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391696.P15322588011236693228

namespace A391696

/-- `∑[A070939(ceil(n/2))]` -/
def P15322588011236693228.Spec : Prop :=
  ∀ n, P15322588011236693228.a n = A391696 (n + 1)

end A391696

/-! ## A391696.P9546345505155088221

`∑[floor(log2(1+A028310(n)))]`
-/

namespace A391696.P9546345505155088221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (1 + A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391696.P9546345505155088221

namespace A391696

/-- `∑[floor(log2(1+A028310(n)))]` -/
def P9546345505155088221.Spec : Prop :=
  ∀ n, (P9546345505155088221.a n : ℤ) = A391696 (n + 1)

end A391696

/-! ## A391696.P15949661249261152538

`∑[floor(log2(A348776(n+1)))]`
-/

namespace A391696.P15949661249261152538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A348776 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391696.P15949661249261152538

namespace A391696

/-- `∑[floor(log2(A348776(n+1)))]` -/
def P15949661249261152538.Spec : Prop :=
  ∀ n, (P15949661249261152538.a n : ℤ) = A391696 (n + 1)

end A391696

/-! ## A391696.P3729409601417434348

`∑[A000523(n+1)+floor(1/(n+1))]`
-/

namespace A391696.P3729409601417434348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + ⌊1 / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391696.P3729409601417434348

namespace A391696

/-- `∑[A000523(n+1)+floor(1/(n+1))]` -/
def P3729409601417434348.Spec : Prop :=
  ∀ n, P3729409601417434348.a n = A391696 (n + 1)

end A391696

/-! ## A391696.P7728924091236352395

`abs(A001855(n+2)-n)`
-/

namespace A391696.P7728924091236352395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001855 (n + 2) - (n : ℤ)|

end

end A391696.P7728924091236352395

namespace A391696

/-- `abs(A001855(n+2)-n)` -/
def P7728924091236352395.Spec : Prop :=
  ∀ n, P7728924091236352395.a n = A391696 (n + 1)

end A391696

/-! ## A391696.P13120304001822923639

`A120385(A296349(A083652(n+1)-(n+1)))`
-/

namespace A391696.P13120304001822923639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120385 (A296349 (A083652 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A391696.P13120304001822923639

namespace A391696

/-- `A120385(A296349(A083652(n+1)-(n+1)))` -/
def P13120304001822923639.Spec : Prop :=
  ∀ n, P13120304001822923639.a n = A391696 (n + 1)

end A391696

/-!
# A391697: Total number of 213 patterns in all heapable permutations of length n.

The programs for A391697, there is no canonical definition to state claims against.
-/

/-! ## A391697.P8102527965672600424

`A253015(C(2*n, 8))`
-/

namespace A391697.P8102527965672600424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253015 (Nat.choose (2 * n) 8)

end

end A391697.P8102527965672600424

/-! ## A391697.P10813235159115676699

`A161995(A011923(n))`
-/

namespace A391697.P10813235159115676699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161995 (A011923 n).toNat

end

end A391697.P10813235159115676699

/-! ## A391697.P2786418179976965299

`A112952(A086872(n))`
-/

namespace A391697.P2786418179976965299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112952 (A086872 n).toNat

end

end A391697.P2786418179976965299

/-!
# A391698: Primes expressible as a*b - (a+b) where a and b are composite numbers.

The programs for A391698, there is no canonical definition to state claims against.
-/

/-! ## A391698.P7409808722737505533

`A364962(A074286(2*(n+2))+A001358(n+1))`
-/

namespace A391698.P7409808722737505533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364962 (A074286 (2 * (n + 2)) + A001358 (n + 1)).toNat

end

end A391698.P7409808722737505533

/-! ## A391698.P6103395469936865998

`A067377(lt[A244120(3*n+1), A339586(n+4)])`
-/

namespace A391698.P6103395469936865998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244120 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339586 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067377 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A391698.P6103395469936865998

