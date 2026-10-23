import SequenceMachineLib
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B009.C000
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

/-!
# A284300: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 865", based on the 5-celled von Neumann neighborhood.

The programs for A284300, there is no canonical definition to state claims against.
-/

/-! ## A284300.P6749076344707099457

`A007088(A284302(n))`
-/

namespace A284300.P6749076344707099457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284302 n).toNat

end

end A284300.P6749076344707099457

/-! ## A284300.P3219596458229423569

`A185544(2*A284302(n))`
-/

namespace A284300.P3219596458229423569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284302 n).toNat

end

end A284300.P3219596458229423569

/-!
# A284303: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 870", based on the 5-celled von Neumann neighborhood.

The programs for A284303, there is no canonical definition to state claims against.
-/

/-! ## A284303.P3997350382611723509

`A007088(A284305(n))`
-/

namespace A284303.P3997350382611723509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284305 n).toNat

end

end A284303.P3997350382611723509

/-!
# A284304: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 870", based on the 5-celled von Neumann neighborhood.

The programs for A284304, there is no canonical definition to state claims against.
-/

/-! ## A284304.P12021259640344493548

`A007088(A284306(n))`
-/

namespace A284304.P12021259640344493548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284306 n).toNat

end

end A284304.P12021259640344493548

/-!
# A284306: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 870", based on the 5-celled von Neumann neighborhood.

The programs for A284306, there is no canonical definition to state claims against.
-/

/-! ## A284306.P11078621238212233905

`A057889(A284241(n))`
-/

namespace A284306.P11078621238212233905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284241 n).toNat

end

end A284306.P11078621238212233905

/-! ## A284306.P15884942119297824943

`A057889(A284305(n))`
-/

namespace A284306.P15884942119297824943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284305 n).toNat

end

end A284306.P15884942119297824943

/-! ## A284306.P2828742001695870063

`A082725(A284242(n))`
-/

namespace A284306.P2828742001695870063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082725 (A284242 n).toNat

end

end A284306.P2828742001695870063

/-! ## A284306.P11536162412191943229

`A284242(A089840(∑[n]))`
-/

namespace A284306.P11536162412191943229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284242 (A089840 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A284306.P11536162412191943229

/-! ## A284306.P2072606117314804519

`A284242(A122200(∑[n]))`
-/

namespace A284306.P2072606117314804519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284242 (A122200 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A284306.P2072606117314804519

/-!
# A284307: Permutation of the natural numbers partitioned into quadruples [4k-3, 4k, 4k-2, 4k-1], k > 0.

The programs for A284307, the canonical program `A284307.P10692022278285822144` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284307 has offset 1).

The definition of A284307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284307.P10692022278285822144

`a(n-4)+4` with `a(0)=1, a(1)=4, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A284307

/-- `a(n-4)+4` -/
def P10692022278285822144.Spec : Prop :=
  ∀ n, (P10692022278285822144.a n : ℤ) = A284307 (n + 1)

theorem P10692022278285822144.correct : P10692022278285822144.Spec := by
  intro n
  simp only [A284307, Nat.add_sub_cancel]

end A284307

/-! ## A284307.P6589538362656828828

`n+1+((-1)^(n+1)-(-1)^((n+1)*n/2)*(1+2*(-1)^(n+1)))/2`
-/

namespace A284307.P6589538362656828828
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) + (((-1) ^ (n + 1) : ℝ) - (-1 : ℝ) ^ (((n + 1) * n : ℚ) / 2 : ℝ) * (1 + 2 * (-1) ^ (n + 1) : ℝ)) / 2

end

end A284307.P6589538362656828828

namespace A284307

/-- `n+1+((-1)^(n+1)-(-1)^((n+1)*n/2)*(1+2*(-1)^(n+1)))/2` -/
def P6589538362656828828.Spec : Prop :=
  ∀ n, P6589538362656828828.a n = (A284307 (n + 1) : ℝ)

end A284307

/-! ## A284307.P7549733865818410803

`(2*(n+1)-3*cos((n+1)*π/2)+cos((n+1)*π)+sin((n+1)*π/2))/2`
-/

namespace A284307.P7549733865818410803
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℝ) - 3 * Real.cos ((n + 1 : ℝ) * Real.pi / 2) + Real.cos ((n + 1 : ℝ) * Real.pi) + Real.sin ((n + 1 : ℝ) * Real.pi / 2)) / 2

end

end A284307.P7549733865818410803

namespace A284307

/-- `(2*(n+1)-3*cos((n+1)*π/2)+cos((n+1)*π)+sin((n+1)*π/2))/2` -/
def P7549733865818410803.Spec : Prop :=
  ∀ n, P7549733865818410803.a n = (A284307 (n + 1) : ℝ)

end A284307

/-! ## A284307.P6028672065142001924

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=-2, a(3)=1, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A284307.P6028672065142001924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, -2, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284307.P6028672065142001924

namespace A284307

/-- `∑[floor(a(n-4))]` -/
def P6028672065142001924.Spec : Prop :=
  ∀ n, P6028672065142001924.a n = A284307 (n + 1)

end A284307

/-! ## A284307.P7099270730370964435

`floor(ϕ^and(3, n+2)+n-1)`
-/

namespace A284307.P7099270730370964435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ Nat.land 3 (n + 2) + ((n : ℤ) - 1 : ℝ)⌋

end

end A284307.P7099270730370964435

namespace A284307

/-- `floor(ϕ^and(3, n+2)+n-1)` -/
def P7099270730370964435.Spec : Prop :=
  ∀ n, P7099270730370964435.a n = A284307 (n + 1)

end A284307

/-! ## A284307.P9491997560392876486

`A133256(A116966(n))`
-/

namespace A284307.P9491997560392876486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A116966 n).toNat

end

end A284307.P9491997560392876486

namespace A284307

/-- `A133256(A116966(n))` -/
def P9491997560392876486.Spec : Prop :=
  ∀ n, P9491997560392876486.a n = A284307 (n + 1)

end A284307

/-! ## A284307.P18158563841853658949

`A116966(A159966(n))`
-/

namespace A284307.P18158563841853658949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (A159966 n).toNat

end

end A284307.P18158563841853658949

namespace A284307

/-- `A116966(A159966(n))` -/
def P18158563841853658949.Spec : Prop :=
  ∀ n, P18158563841853658949.a n = A284307 (n + 1)

end A284307

/-! ## A284307.P16672649443547821499

`A056699(A056699(n+1))`
-/

namespace A284307.P16672649443547821499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (A056699 (n + 1)).toNat

end

end A284307.P16672649443547821499

namespace A284307

/-- `A056699(A056699(n+1))` -/
def P16672649443547821499.Spec : Prop :=
  ∀ n, P16672649443547821499.a n = A284307 (n + 1)

end A284307

/-! ## A284307.P15208336108178276644

`A298364(A004443(n)+1)`
-/

namespace A284307.P15208336108178276644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298364 (A004443 n + 1).toNat

end

end A284307.P15208336108178276644

namespace A284307

/-- `A298364(A004443(n)+1)` -/
def P15208336108178276644.Spec : Prop :=
  ∀ n, P15208336108178276644.a n = A284307 (n + 1)

end A284307

/-! ## A284307.P11113854251539069803

`A014681(A298364(n+1))`
-/

namespace A284307.P11113854251539069803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A298364 (n + 1)).toNat

end

end A284307.P11113854251539069803

namespace A284307

/-- `A014681(A298364(n+1))` -/
def P11113854251539069803.Spec : Prop :=
  ∀ n, P11113854251539069803.a n = A284307 (n + 1)

end A284307

/-! ## A284307.P10842956494283860885

`A298364(A256008(n+1))`
-/

namespace A284307.P10842956494283860885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298364 (A256008 (n + 1)).toNat

end

end A284307.P10842956494283860885

namespace A284307

/-- `A298364(A256008(n+1))` -/
def P10842956494283860885.Spec : Prop :=
  ∀ n, P10842956494283860885.a n = A284307 (n + 1)

end A284307

/-! ## A284307.P103671726894954404

`A116966(A263449(n)-1)`
-/

namespace A284307.P103671726894954404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (A263449 n - 1).toNat

end

end A284307.P103671726894954404

namespace A284307

/-- `A116966(A263449(n)-1)` -/
def P103671726894954404.Spec : Prop :=
  ∀ n, P103671726894954404.a n = A284307 (n + 1)

end A284307

/-! ## A284307.P13456287636056094183

`A263449(xor(n, A021913(n)))`
-/

namespace A284307.P13456287636056094183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 (Int.xor (n : ℤ) (A021913 n)).toNat

end

end A284307.P13456287636056094183

namespace A284307

/-- `A263449(xor(n, A021913(n)))` -/
def P13456287636056094183.Spec : Prop :=
  ∀ n, P13456287636056094183.a n = A284307 (n + 1)

end A284307

/-! ## A284307.P14068008806624218423

`A103889(A298364(2*n+1-n))`
-/

namespace A284307.P14068008806624218423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A298364 (2 * n + 1 - n)).toNat

end

end A284307.P14068008806624218423

namespace A284307

/-- `A103889(A298364(2*n+1-n))` -/
def P14068008806624218423.Spec : Prop :=
  ∀ n, P14068008806624218423.a n = A284307 (n + 1)

end A284307

/-! ## A284307.P9266089368743930851

`A067060(A292576(A067060(n+1)))`
-/

namespace A284307.P9266089368743930851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067060 (A292576 (A067060 (n + 1)).toNat).toNat

end

end A284307.P9266089368743930851

namespace A284307

/-- `A067060(A292576(A067060(n+1)))` -/
def P9266089368743930851.Spec : Prop :=
  ∀ n, P9266089368743930851.a n = A284307 (n + 1)

end A284307

/-! ## A284307.P1718466670537792775

`A014681(A292576(A292576(n+1)))`
-/

namespace A284307.P1718466670537792775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A292576 (A292576 (n + 1)).toNat).toNat

end

end A284307.P1718466670537792775

namespace A284307

/-- `A014681(A292576(A292576(n+1)))` -/
def P1718466670537792775.Spec : Prop :=
  ∀ n, P1718466670537792775.a n = A284307 (n + 1)

end A284307

/-! ## A284307.P18415409758368823691

`A133256(A133256(n+2)-1)`
-/

namespace A284307.P18415409758368823691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A133256 (n + 2) - 1).toNat

end

end A284307.P18415409758368823691

namespace A284307

/-- `A133256(A133256(n+2)-1)` -/
def P18415409758368823691.Spec : Prop :=
  ∀ n, P18415409758368823691.a n = A284307 (n + 1)

end A284307

/-! ## A284307.P13092058452977182237

`A084964(A047499(n+1))`
-/

namespace A284307.P13092058452977182237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A047499 (n + 1)).toNat

end

end A284307.P13092058452977182237

namespace A284307

/-- `A084964(A047499(n+1))` -/
def P13092058452977182237.Spec : Prop :=
  ∀ n, P13092058452977182237.a n = A284307 (n + 1)

end A284307

/-! ## A284307.P17369235878259976738

`A267182(A047430(n+2))`
-/

namespace A284307.P17369235878259976738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (A047430 (n + 2)).toNat

end

end A284307.P17369235878259976738

namespace A284307

/-- `A267182(A047430(n+2))` -/
def P17369235878259976738.Spec : Prop :=
  ∀ n, P17369235878259976738.a n = A284307 (n + 1)

end A284307

/-! ## A284307.P10108607956437014484

`A097065(A047576(n+2))`
-/

namespace A284307.P10108607956437014484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A047576 (n + 2)).toNat

end

end A284307.P10108607956437014484

namespace A284307

/-- `A097065(A047576(n+2))` -/
def P10108607956437014484.Spec : Prop :=
  ∀ n, P10108607956437014484.a n = A284307 (n + 1)

end A284307

/-!
# A284308: Number A(n,k) of singular vector tuples for a general k-dimensional {n}^k tensor; square array A(n,k), n>=1, k>=1, read by antidiagonals.

The programs for A284308, there is no canonical definition to state claims against.
-/

/-! ## A284308.P4818638741960394801

`A142589(n)+A091408(A347811(n))`
-/

namespace A284308.P4818638741960394801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142589 n + A091408 (A347811 n).toNat

end

end A284308.P4818638741960394801

/-! ## A284308.P15163904266463121643

`A348520(A007318(n)*A089759(n))`
-/

namespace A284308.P15163904266463121643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348520 (A007318 n * A089759 n).toNat

end

end A284308.P15163904266463121643

/-! ## A284308.P9898445209867993561

`A276571(A136482(n)^A130580(n))`
-/

namespace A284308.P9898445209867993561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (SequenceMachineLib.roundAway ((A136482 n : ℚ) ^ (A130580 n : ℤ))).toNat

end

end A284308.P9898445209867993561

/-! ## A284308.P11490696249550342974

`A349294(or(A142589(n), A256041(n)))`
-/

namespace A284308.P11490696249550342974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (Int.lor (A142589 n) (A256041 n)).toNat

end

end A284308.P11490696249550342974

/-! ## A284308.P565216981239706661

`A112258(A308292(n))%A000040(n+1)`
-/

namespace A284308.P565216981239706661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112258 (A308292 n).toNat) (A000040 (n + 1))

end

end A284308.P565216981239706661

/-!
# A284309: Number of singular vector tuples for a general n-dimensional {n}^n tensor.

The programs for A284309, there is no canonical definition to state claims against.
-/

/-! ## A284309.P8648498249164267596

`A284308(∑[4*n]+1)`
-/

namespace A284309.P8648498249164267596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A284309.P8648498249164267596

/-!
# A284310: Numbers k such that k![14] + 2 is prime, where k![14] is the fourteen-fold multifactorial.

The programs for A284310, there is no canonical definition to state claims against.
-/

/-! ## A284310.P2269217411085127445

`∑[A100374(A005578(n))]-1`
-/

namespace A284310.P2269217411085127445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100374 (A005578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A284310.P2269217411085127445

/-! ## A284310.P11893081186842132180

`eq[(n%2)^n, A177994(A253286(n))]`
-/

namespace A284310.P11893081186842132180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177994 (A253286 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284310.P11893081186842132180

/-! ## A284310.P13771575121760108740

`record[A089654(n+1)%A029600(2*n)]`
-/

namespace A284310.P13771575121760108740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089654 (n + 1)) (A029600 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284310.P13771575121760108740

/-! ## A284310.P8073712871608203360

`record[A013636(2*n+1)%A098667(n+2)]`
-/

namespace A284310.P8073712871608203360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013636 (2 * n + 1)) (A098667 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284310.P8073712871608203360

/-! ## A284310.P4429057916327370824

`A004273(∑[A208576(A154222(n))])`
-/

namespace A284310.P4429057916327370824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208576 (A154222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284310.P4429057916327370824

/-!
# A284311: Array T(n,k) read by antidiagonals (downward): T(1,k) = A005117(k+1) (squarefree numbers > 1); for n > 1, columns are nonsquarefree numbers (in ascending order) with exactly the same prime factors as T(1,k).

The programs for A284311, there is no canonical definition to state claims against.
-/

/-! ## A284311.P12706667465691375981

`A284457(A038722(n+1))`
-/

namespace A284311.P12706667465691375981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284457 (A038722 (n + 1)).toNat

end

end A284311.P12706667465691375981

/-! ## A284311.P15359727552441593458

`A284457(A061579(n)+1)`
-/

namespace A284311.P15359727552441593458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284457 (A061579 n + 1).toNat

end

end A284311.P15359727552441593458

/-! ## A284311.P13176055275500635498

`A284457(A093995(n+1)-n)`
-/

namespace A284311.P13176055275500635498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284457 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A284311.P13176055275500635498

/-! ## A284311.P21065207215625390

`A284457(A002024(n+1)²-n)`
-/

namespace A284311.P21065207215625390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284457 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A284311.P21065207215625390

/-! ## A284311.P13744296907478466731

`A284457(A057944(n)+A004736(n+1))`
-/

namespace A284311.P13744296907478466731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284457 (A057944 n + A004736 (n + 1)).toNat

end

end A284311.P13744296907478466731

/-!
# A284312: Expansion of Product_{k>=0} (1 - x^(3*k+1)) in powers of x.

The programs for A284312, there is no canonical definition to state claims against.
-/

/-! ## A284312.P10648733774358640857

`A291957(∑[(n+1)²]-1)`
-/

namespace A284312.P10648733774358640857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291957 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A284312.P10648733774358640857

/-! ## A284312.P6727705074831772289

`A291957(A168559(n+1))%6`
-/

namespace A284312.P6727705074831772289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291957 (A168559 (n + 1)).toNat) 6

end

end A284312.P6727705074831772289

/-! ## A284312.P8249891290228390327

`A007318(∑[n])*A291957(A168559(n+1))`
-/

namespace A284312.P8249891290228390327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A291957 (A168559 (n + 1)).toNat

end

end A284312.P8249891290228390327

/-! ## A284312.P2181499649006461704

`A291957(A168559(n+1))/A007318(C(2, n))`
-/

namespace A284312.P2181499649006461704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291957 (A168559 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A284312.P2181499649006461704

/-! ## A284312.P7887091925766997745

`A291957(A168559(n+1))/A007318(∑[n+1])`
-/

namespace A284312.P7887091925766997745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291957 (A168559 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A284312.P7887091925766997745

/-!
# A284313: Expansion of Product_{k>=0} (1 - x^(4*k+1)) in powers of x.

The programs for A284313, there is no canonical definition to state claims against.
-/

/-! ## A284313.P3079274876662998941

`A033999(n)*A169975(n)`
-/

namespace A284313.P3079274876662998941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A169975 n

end

end A284313.P3079274876662998941

/-! ## A284313.P16332163462686163871

`(A004442(n)-n)*A169975(n)`
-/

namespace A284313.P16332163462686163871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A169975 n

end

end A284313.P16332163462686163871

/-! ## A284313.P10713354832979257673

`A006950(n)/A106507(n)*A169975(n)`
-/

namespace A284313.P10713354832979257673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006950 n : ℚ) / (A106507 n : ℚ) * (A169975 n : ℚ)

end

end A284313.P10713354832979257673

/-! ## A284313.P1791453659706814950

`(A042963(n+1)-A014601(n))*A169975(n)`
-/

namespace A284313.P1791453659706814950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A042963 (n + 1) - A014601 n) * A169975 n

end

end A284313.P1791453659706814950

/-! ## A284313.P16366825123465880978

`A057077(2*n)*A169975(n)`
-/

namespace A284313.P16366825123465880978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A169975 n

end

end A284313.P16366825123465880978

/-! ## A284313.P11579934936229370461

`A110522(∑[n])*A169975(n)`
-/

namespace A284313.P11579934936229370461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110522 (∑ j ∈ Finset.range (n + 1), f1 j) * A169975 n

end

end A284313.P11579934936229370461

/-! ## A284313.P3317743870737370207

`A260195(n+1)/A292511(n)*A169975(n)`
-/

namespace A284313.P3317743870737370207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260195 (n + 1) : ℚ) / (A292511 n : ℚ) * (A169975 n : ℚ)

end

end A284313.P3317743870737370207

/-!
# A284314: Expansion of Product_{k>=0} (1 - x^(5*k+1)) in powers of x.

The programs for A284314, there is no canonical definition to state claims against.
-/

/-! ## A284314.P4877401408207758252

`A284585(A047226(n+1))%A157140(n)`
-/

namespace A284314.P4877401408207758252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284585 (A047226 (n + 1)).toNat) (A157140 n)

end

end A284314.P4877401408207758252

/-! ## A284314.P16923748276370907224

`A284585(A047226(n+1))+A000007(A157140(n)+1)`
-/

namespace A284314.P16923748276370907224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284585 (A047226 (n + 1)).toNat + A000007 (A157140 n + 1).toNat

end

end A284314.P16923748276370907224

/-! ## A284314.P16693477394908120960

`A114536(A104272(n+2))*A284585(A047226(n+1))`
-/

namespace A284314.P16693477394908120960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114536 (A104272 (n + 2)).toNat * A284585 (A047226 (n + 1)).toNat

end

end A284314.P16693477394908120960

/-! ## A284314.P12189308134544506798

`A284585(A047226(n+1))+A010054(A336328(n+1))`
-/

namespace A284314.P12189308134544506798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284585 (A047226 (n + 1)).toNat + A010054 (A336328 (n + 1)).toNat

end

end A284314.P12189308134544506798

/-!
# A284315: Expansion of Product_{k>=0} (1 - x^(3*k+2)) in powers of x.

The programs for A284315, there is no canonical definition to state claims against.
-/

/-! ## A284315.P13455618660097019227

`A284320(A007067(n))%A096931(n+5)`
-/

namespace A284315.P13455618660097019227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284320 (A007067 n).toNat) (A096931 (n + 5))

end

end A284315.P13455618660097019227

/-! ## A284315.P1906506672769180035

`A284316(A033270(A187829(n+1))+n)`
-/

namespace A284315.P1906506672769180035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284316 (A033270 (A187829 (n + 1)).toNat + (n : ℤ)).toNat

end

end A284315.P1906506672769180035

/-! ## A284315.P15809588329253949128

`A209655(A176383(n+2))-A000002(n+1)`
-/

namespace A284315.P15809588329253949128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209655 (A176383 (n + 2)).toNat - A000002 (n + 1)

end

end A284315.P15809588329253949128

/-!
# A284316: Expansion of Product_{k>=0} (1 - x^(4*k+3)) in powers of x.

The programs for A284316, there is no canonical definition to state claims against.
-/

/-! ## A284316.P13292269420108208041

`A033999(n)*A147599(n)`
-/

namespace A284316.P13292269420108208041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A147599 n

end

end A284316.P13292269420108208041

/-! ## A284316.P6810797792543705047

`A009001(2*n)*A147599(n)`
-/

namespace A284316.P6810797792543705047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A147599 n

end

end A284316.P6810797792543705047

/-! ## A284316.P13965704790495756470

`(A004442(n)-n)*A147599(n)`
-/

namespace A284316.P13965704790495756470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A147599 n

end

end A284316.P13965704790495756470

/-! ## A284316.P4893176934500046891

`A147599(n)/A033999(n+2)`
-/

namespace A284316.P4893176934500046891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147599 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A284316.P4893176934500046891

/-! ## A284316.P5654727133967447894

`A009531(2*n+1)*A147599(n)`
-/

namespace A284316.P5654727133967447894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A147599 n

end

end A284316.P5654727133967447894

/-! ## A284316.P7942922159967835544

`A147599(n)*A197870(∑[n])`
-/

namespace A284316.P7942922159967835544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147599 n * A197870 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A284316.P7942922159967835544

/-! ## A284316.P12822873337406811900

`A008683(A116570(n))*A147599(n)`
-/

namespace A284316.P12822873337406811900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A116570 n).toNat * A147599 n

end

end A284316.P12822873337406811900

/-!
# A284317: Expansion of Product_{k>=0} (1 - x^(5*k+4)) in powers of x.

The programs for A284317, there is no canonical definition to state claims against.
-/

/-! ## A284317.P12232333961618624734

`(-A281243(n))^∑[ceil((n/2)²)]`
-/

namespace A284317.P12232333961618624734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A281243 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A284317.P12232333961618624734

/-! ## A284317.P15805386775736189760

`-(-A281243(n))^A107234(n)`
-/

namespace A284317.P15805386775736189760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((-A281243 n : ℚ) ^ (A107234 n : ℤ))

end

end A284317.P15805386775736189760

/-! ## A284317.P3904329220271266855

`A284504(comp[xor(1, 3*n)+3])^A100516(n)`
-/

namespace A284317.P3904329220271266855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n) + 3

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284504 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (A100516 n : ℤ)

end

end A284317.P3904329220271266855

/-! ## A284317.P2528792475863825269

`A284504(comp[xor(1, 3*n)+3])^A057912(n+1)`
-/

namespace A284317.P2528792475863825269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n) + 3

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284504 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (A057912 (n + 1) : ℤ)

end

end A284317.P2528792475863825269

/-! ## A284317.P13988268064468914519

`A284504(comp[xor(1, 3*n)+3])^A120366(n+1)`
-/

namespace A284317.P13988268064468914519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n) + 3

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284504 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (A120366 (n + 1) : ℤ)

end

end A284317.P13988268064468914519

/-!
# A284319: Expansion of Product_{k>=0} (1 - x^(5*k+2)) in powers of x.

The programs for A284319, there is no canonical definition to state claims against.
-/

/-! ## A284319.P10309126587721334266

`A284501(A022846(n)%A128169(n+1))`
-/

namespace A284319.P10309126587721334266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284501 (Int.tmod (A022846 n) (A128169 (n + 1))).toNat

end

end A284319.P10309126587721334266

/-! ## A284319.P4578801949709263118

`A284501(A022846(n))^(A293725(n+2)+1)^C(n, 64)²`
-/

namespace A284319.P4578801949709263118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284501 (A022846 n).toNat : ℚ) ^ ((A293725 (n + 2) + 1) ^ Nat.choose n 64 ^ 2 : ℤ)

end

end A284319.P4578801949709263118

/-! ## A284319.P17730647637079014927

`A284501(A022846(n))+A061397(A249819(n+1))`
-/

namespace A284319.P17730647637079014927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284501 (A022846 n).toNat + A061397 (A249819 (n + 1)).toNat

end

end A284319.P17730647637079014927

/-! ## A284319.P11251849656598318401

`A284501(A022846(n))+A257531(A249819(n+1)+1)`
-/

namespace A284319.P11251849656598318401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284501 (A022846 n).toNat + A257531 (A249819 (n + 1) + 1).toNat

end

end A284319.P11251849656598318401

/-! ## A284319.P10428634506753679545

`A284501(A022846(n))/A000034(A249819(n+1)+1)`
-/

namespace A284319.P10428634506753679545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284501 (A022846 n).toNat : ℚ) / (A000034 (A249819 (n + 1) + 1).toNat : ℚ)

end

end A284319.P10428634506753679545

/-! ## A284319.P6845641782164400623

`A071936(A071945(n))*A284501(A022846(n))`
-/

namespace A284319.P6845641782164400623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (A071945 n).toNat * A284501 (A022846 n).toNat

end

end A284319.P6845641782164400623

/-! ## A284319.P4280774911477189780

`A284501(A022846(n))+A000038(n)*A241651(n)`
-/

namespace A284319.P4280774911477189780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284501 (A022846 n).toNat + A000038 n * A241651 n

end

end A284319.P4280774911477189780

/-!
# A284320: Expansion of Product_{k>=0} (1 - x^(5*k+3)) in powers of x.

The programs for A284320, there is no canonical definition to state claims against.
-/

/-! ## A284320.P2382862391813962118

`A284502(A001951(n))%A014963(A057026(n))`
-/

namespace A284320.P2382862391813962118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284502 (A001951 n).toNat) (A014963 (A057026 n).toNat)

end

end A284320.P2382862391813962118

/-! ## A284320.P13367392921078742575

`A284502(A001951(n))+A000007(A319680(n+1))`
-/

namespace A284320.P13367392921078742575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284502 (A001951 n).toNat + A000007 (A319680 (n + 1)).toNat

end

end A284320.P13367392921078742575

/-! ## A284320.P8561504988715988910

`A284502(A001951(n))+A000007(A224728(n+1))`
-/

namespace A284320.P8561504988715988910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284502 (A001951 n).toNat + A000007 (A224728 (n + 1)).toNat

end

end A284320.P8561504988715988910

/-! ## A284320.P14203571464396018359

`A284502(round(log(A239073(n))))`
-/

namespace A284320.P14203571464396018359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284502 (SequenceMachineLib.roundAway (Real.log (A239073 n : ℝ))).toNat

end

end A284320.P14203571464396018359

/-! ## A284320.P6992892863365304566

`A014030(A114625(n+2))`
-/

namespace A284320.P6992892863365304566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014030 (A114625 (n + 2)).toNat

end

end A284320.P6992892863365304566

/-!
# A284321: Expansion of Product_{k>=0} (1 - x^(5*k+1))*(1 - x^(5*k+4)) in powers of x.

The programs for A284321, there is no canonical definition to state claims against.
-/

/-! ## A284321.P1024835757079769975

`A109389(A047263(n+1))-A185238(A096503(n+1))`
-/

namespace A284321.P1024835757079769975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109389 (A047263 (n + 1)).toNat - A185238 (A096503 (n + 1)).toNat

end

end A284321.P1024835757079769975

/-! ## A284321.P62021378600085195

`A109389(lt[A370415(n), A003459(n+4)])`
-/

namespace A284321.P62021378600085195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003459 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109389 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A284321.P62021378600085195

/-! ## A284321.P237434034459388798

`A109389(A047263(n+1))%p?[A071921(n)]`
-/

namespace A284321.P237434034459388798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109389 (A047263 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A284321.P237434034459388798

/-! ## A284321.P3370186526589402261

`A109389(A047263(n+1)%A157140(3*n+4))`
-/

namespace A284321.P3370186526589402261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109389 (Int.tmod (A047263 (n + 1)) (A157140 (3 * n + 4))).toNat

end

end A284321.P3370186526589402261

/-! ## A284321.P14299194861599759931

`A109389(A047263(n+1))^A001221(A000079(n))`
-/

namespace A284321.P14299194861599759931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109389 (A047263 (n + 1)).toNat : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A284321.P14299194861599759931

/-!
# A284323: Numbers k such that product of digits of k is a power of 4.

The programs for A284323, there is no canonical definition to state claims against.
-/

/-! ## A284323.P11043301518470794288

`eq[1, A027615(A007954(n))]`
-/

namespace A284323.P11043301518470794288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284323.P11043301518470794288

/-! ## A284323.P18032141481923537385

`eq[1, A027615(abs(A187844(n)))]`
-/

namespace A284323.P18032141481923537385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 |A187844 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284323.P18032141481923537385

/-! ## A284323.P7376911831872932295

`eq[6, A005875(n-A070565(n))]`
-/

namespace A284323.P7376911831872932295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 ((n : ℤ) - A070565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284323.P7376911831872932295

/-! ## A284323.P12777192468775765775

`∩[A028846(n+1), A050626(n+1)]`
-/

namespace A284323.P12777192468775765775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284323.P12777192468775765775

/-! ## A284323.P7131440896095205064

`∩[A028846(n+1), A062371(n+1)]`
-/

namespace A284323.P7131440896095205064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284323.P7131440896095205064

/-! ## A284323.P12138151491423589994

`∩[A050626(n+1), A381259(n+1)]`
-/

namespace A284323.P12138151491423589994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284323.P12138151491423589994

/-! ## A284323.P10699257143320713081

`∩[A062371(n+1), A381259(n+1)]`
-/

namespace A284323.P10699257143320713081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284323.P10699257143320713081

/-! ## A284323.P14467758384244199828

`eq[A030103(A051801(n)), A168046(n)]`
-/

namespace A284323.P14467758384244199828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284323.P14467758384244199828

/-! ## A284323.P1690082636641506695

`eq[A040001(2*n+1), A319652(A007954(n))]`
-/

namespace A284323.P1690082636641506695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284323.P1690082636641506695

/-!
# A284324: Numbers k such that product of digits of k is a power of 8.

The programs for A284324, the canonical program `A284324.P5958562104063105870` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284324 has offset 1).

The definition of A284324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1013 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284324.P5958562104063105870

`∩[A028846(n+1), A062372(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A284324

/-- `∩[A028846(n+1), A062372(n+1)]` -/
def P5958562104063105870.Spec : Prop :=
  ∀ n, (P5958562104063105870.a n : ℤ) = A284324 (n + 1)

theorem P5958562104063105870.correct : P5958562104063105870.Spec := by
  intro n
  simp only [A284324, Nat.add_sub_cancel]

end A284324

/-! ## A284324.P13912690962872801681

`∩[A028846(n+1), A237767(n+1)]`
-/

namespace A284324.P13912690962872801681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284324.P13912690962872801681

namespace A284324

/-- `∩[A028846(n+1), A237767(n+1)]` -/
def P13912690962872801681.Spec : Prop :=
  ∀ n, (P13912690962872801681.a n : ℤ) = A284324 (n + 1)

end A284324

/-! ## A284324.P11235616282688135282

`∩[A237767(n+1), A381259(n+1)]`
-/

namespace A284324.P11235616282688135282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284324.P11235616282688135282

namespace A284324

/-- `∩[A237767(n+1), A381259(n+1)]` -/
def P11235616282688135282.Spec : Prop :=
  ∀ n, (P11235616282688135282.a n : ℤ) = A284324 (n + 1)

end A284324

/-! ## A284324.P17701593603417370110

`∩[A062372(n+1), A261189(A308496(n+1))]`
-/

namespace A284324.P17701593603417370110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (A308496 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284324.P17701593603417370110

namespace A284324

/-- `∩[A062372(n+1), A261189(A308496(n+1))]` -/
def P17701593603417370110.Spec : Prop :=
  ∀ n, (P17701593603417370110.a n : ℤ) = A284324 (n + 1)

end A284324

/-! ## A284324.P2226139948784722586

`∩[A237767(n+1), A261189(A308496(n+1))]`
-/

namespace A284324.P2226139948784722586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (A308496 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284324.P2226139948784722586

namespace A284324

/-- `∩[A237767(n+1), A261189(A308496(n+1))]` -/
def P2226139948784722586.Spec : Prop :=
  ∀ n, (P2226139948784722586.a n : ℤ) = A284324 (n + 1)

end A284324

/-! ## A284324.P1202387860026578495

`eq[1, A030107(A007954(n))]`
-/

namespace A284324.P1202387860026578495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284324.P1202387860026578495

namespace A284324

/-- `eq[1, A030107(A007954(n))]` -/
def P1202387860026578495.Spec : Prop :=
  ∀ n, (P1202387860026578495.a n : ℤ) = A284324 (n + 1)

end A284324

/-! ## A284324.P3381997535486183004

`eq[A053829(A007954(n)), A054977(n)]`
-/

namespace A284324.P3381997535486183004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284324.P3381997535486183004

namespace A284324

/-- `eq[A053829(A007954(n)), A054977(n)]` -/
def P3381997535486183004.Spec : Prop :=
  ∀ n, (P3381997535486183004.a n : ℤ) = A284324 (n + 1)

end A284324

/-! ## A284324.P14050501598913137682

`eq[A053829(A051801(n)), A168046(n)]`
-/

namespace A284324.P14050501598913137682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284324.P14050501598913137682

namespace A284324

/-- `eq[A053829(A051801(n)), A168046(n)]` -/
def P14050501598913137682.Spec : Prop :=
  ∀ n, (P14050501598913137682.a n : ℤ) = A284324 (n + 1)

end A284324

/-!
# A284326: Sum of the divisors of n that are not divisible by 6.

The programs for A284326, the canonical program `A284326.P10440198563856416617` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284326 has offset 1).

The definition of A284326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284326.P10440198563856416617

`∑{d}[n+1, #%lcm(6, #)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A284326

/-- `∑{d}[n+1, #%lcm(6, #)]` -/
def P10440198563856416617.Spec : Prop :=
  ∀ n, (P10440198563856416617.a n : ℤ) = A284326 (n + 1)

theorem P10440198563856416617.correct : P10440198563856416617.Spec := by
  intro n
  simp only [A284326, Nat.add_sub_cancel]

end A284326

/-! ## A284326.P4033161104906807824

`∑{d}[n+1, #*A097325(#)]`
-/

namespace A284326.P4033161104906807824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A097325 d

end

end A284326.P4033161104906807824

namespace A284326

/-- `∑{d}[n+1, #*A097325(#)]` -/
def P4033161104906807824.Spec : Prop :=
  ∀ n, P4033161104906807824.a n = A284326 (n + 1)

end A284326

/-! ## A284326.P5801283916327952913

`∑{d}[n+1, #%A109047(#)]`
-/

namespace A284326.P5801283916327952913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) (A109047 d)

end

end A284326.P5801283916327952913

namespace A284326

/-- `∑{d}[n+1, #%A109047(#)]` -/
def P5801283916327952913.Spec : Prop :=
  ∀ n, P5801283916327952913.a n = A284326 (n + 1)

end A284326

/-! ## A284326.P10825959372997117517

`∑{d}[n+1, #*A017904(val(#, 6))]`
-/

namespace A284326.P10825959372997117517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A017904 (SequenceMachineLib.valuation d 6)

end

end A284326.P10825959372997117517

namespace A284326

/-- `∑{d}[n+1, #*A017904(val(#, 6))]` -/
def P10825959372997117517.Spec : Prop :=
  ∀ n, P10825959372997117517.a n = A284326 (n + 1)

end A284326

/-! ## A284326.P5076805892928491350

`A146076(A038502(n+1))+A000593(n+1)`
-/

namespace A284326.P5076805892928491350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A038502 (n + 1)).toNat + A000593 (n + 1)

end

end A284326.P5076805892928491350

namespace A284326

/-- `A146076(A038502(n+1))+A000593(n+1)` -/
def P5076805892928491350.Spec : Prop :=
  ∀ n, P5076805892928491350.a n = A284326 (n + 1)

end A284326

/-! ## A284326.P14886382424446488683

`A000593(n+1)+A046913(n+1)-A186099(n+1)`
-/

namespace A284326.P14886382424446488683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A046913 (n + 1) - A186099 (n + 1))

end

end A284326.P14886382424446488683

namespace A284326

/-- `A000593(n+1)+A046913(n+1)-A186099(n+1)` -/
def P14886382424446488683.Spec : Prop :=
  ∀ n, P14886382424446488683.a n = A284326 (n + 1)

end A284326

/-! ## A284326.P163409584885614386

`∑{d}[n+1, #*A088439(#)%2]`
-/

namespace A284326.P163409584885614386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A088439 d) 2

end

end A284326.P163409584885614386

namespace A284326

/-- `∑{d}[n+1, #*A088439(#)%2]` -/
def P163409584885614386.Spec : Prop :=
  ∀ n, P163409584885614386.a n = A284326 (n + 1)

end A284326

/-!
# A284328: Number of n X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284328, there is no canonical definition to state claims against.
-/

/-! ## A284328.P10848819339269630093

`A284334(∑[4*n]+1)`
-/

namespace A284328.P10848819339269630093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A284328.P10848819339269630093

/-! ## A284328.P17827535499212223717

`record[A284334(Δ[A235355(n)])]`
-/

namespace A284328.P17827535499212223717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284328.P17827535499212223717

/-! ## A284328.P11742880593880253899

`and(-1, A284334(A001844(n)))`
-/

namespace A284328.P11742880593880253899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A284334 (A001844 n).toNat)

end

end A284328.P11742880593880253899

/-! ## A284328.P14776908561704003430

`record[A284334(A330613(n+1))]`
-/

namespace A284328.P14776908561704003430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284328.P14776908561704003430

/-!
# A284329: Number of n X 3 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284329, there is no canonical definition to state claims against.
-/

/-! ## A284329.P10630309452222251303

`A284334(∑[n+3]+1)`
-/

namespace A284329.P10630309452222251303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A284329.P10630309452222251303

/-!
# A284330: Number of n X 4 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284330, there is no canonical definition to state claims against.
-/

/-! ## A284330.P8853647283649003828

`A284334(A141214(n+1))`
-/

namespace A284330.P8853647283649003828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A141214 (n + 1)).toNat

end

end A284330.P8853647283649003828

/-! ## A284330.P16904830608729064195

`A284334(A027379(n+2))`
-/

namespace A284330.P16904830608729064195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A027379 (n + 2)).toNat

end

end A284330.P16904830608729064195

/-! ## A284330.P4970721003338394598

`A284334(A155212(n)+5)`
-/

namespace A284330.P4970721003338394598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A155212 n + 5).toNat

end

end A284330.P4970721003338394598

/-! ## A284330.P2897540746231646242

`A284334(A056000(n)+7)`
-/

namespace A284330.P2897540746231646242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A056000 n + 7).toNat

end

end A284330.P2897540746231646242

/-! ## A284330.P4522922284547511709

`A284334(A052905(n+1)+2)`
-/

namespace A284330.P4522922284547511709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A052905 (n + 1) + 2).toNat

end

end A284330.P4522922284547511709

/-!
# A284331: Number of n X 5 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284331, there is no canonical definition to state claims against.
-/

/-! ## A284331.P10569119617200110787

`A284334(Δ[A264443(n)])`
-/

namespace A284331.P10569119617200110787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (f1 (n + 1) - f1 n).toNat

end

end A284331.P10569119617200110787

/-! ## A284331.P12125083756998410639

`A284334(eq[4, A193592(n)])`
-/

namespace A284331.P12125083756998410639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284331.P12125083756998410639

/-! ## A284331.P16394923522701823815

`A284334(Δ[A023545(n+1)])`
-/

namespace A284331.P16394923522701823815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (f1 (n + 1) - f1 n).toNat

end

end A284331.P16394923522701823815

/-! ## A284331.P1703158976087770405

`A284334(eq[5, A200370(n+1)])`
-/

namespace A284331.P1703158976087770405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284331.P1703158976087770405

/-! ## A284331.P32308060734596755

`A284334(eq[6, A185782(n+1)])`
-/

namespace A284331.P32308060734596755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284331.P32308060734596755

/-!
# A284332: Number of n X 6 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284332, there is no canonical definition to state claims against.
-/

/-! ## A284332.P5521193452196002054

`A284334(eq[3, A219347(n)])`
-/

namespace A284332.P5521193452196002054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284332.P5521193452196002054

/-! ## A284332.P10531736212750677835

`A284334(eq[5, A193592(n)])`
-/

namespace A284332.P10531736212750677835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284332.P10531736212750677835

/-! ## A284332.P11448003360454505242

`A284334(eq[6, A200370(n+1)])`
-/

namespace A284332.P11448003360454505242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284332.P11448003360454505242

/-! ## A284332.P9148374379605441396

`A284334(eq[8, A185782(n+1)])`
-/

namespace A284332.P9148374379605441396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284332.P9148374379605441396

/-! ## A284332.P6318198948559410813

`A284334(eq[16, A057728(n+1)])`
-/

namespace A284332.P6318198948559410813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284332.P6318198948559410813

/-!
# A284333: Number of n X 7 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284333, there is no canonical definition to state claims against.
-/

/-! ## A284333.P4521302332411638049

`A284334(A055999(n+4))`
-/

namespace A284333.P4521302332411638049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A055999 (n + 4)).toNat

end

end A284333.P4521302332411638049

/-! ## A284333.P7486468797437476304

`A284334(eq[4, A219347(n)])`
-/

namespace A284333.P7486468797437476304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284333.P7486468797437476304

/-! ## A284333.P11909804963443712439

`A284334(eq[6, A193592(n)])`
-/

namespace A284333.P11909804963443712439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284333.P11909804963443712439

/-! ## A284333.P9719148822721359372

`A284334(eq[7, A200370(n+1)])`
-/

namespace A284333.P9719148822721359372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284333.P9719148822721359372

/-! ## A284333.P6625360561856931782

`A284334(eq[10, A185782(n+1)])`
-/

namespace A284333.P6625360561856931782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284333.P6625360561856931782

/-!
# A284335: Number of 2 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284335, there is no canonical definition to state claims against.
-/

/-! ## A284335.P1827398859278873357

`A284334(∑[n+1]+2)`
-/

namespace A284335.P1827398859278873357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A284335.P1827398859278873357

/-! ## A284335.P396643267763151543

`record[A010054(n)*A284334(n+2)]`
-/

namespace A284335.P396643267763151543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A284334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284335.P396643267763151543

/-! ## A284335.P16231075575062954499

`A284334(A133263(n+1))%A284108(n+1)`
-/

namespace A284335.P16231075575062954499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284334 (A133263 (n + 1)).toNat) (A284108 (n + 1))

end

end A284335.P16231075575062954499

/-! ## A284335.P281924827220320102

`record[A284334(n+2)/A284367(n+1)]`
-/

namespace A284335.P281924827220320102
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284334 (n + 2) : ℚ) / (A284367 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284335.P281924827220320102

/-!
# A284336: Number of 3 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284336, there is no canonical definition to state claims against.
-/

/-! ## A284336.P15671545078021523725

`A284334(∑[n+2]+4)`
-/

namespace A284336.P15671545078021523725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A284336.P15671545078021523725

/-! ## A284336.P3670765889886765714

`A284334(A167614(n+1))+A025469(n)`
-/

namespace A284336.P3670765889886765714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A167614 (n + 1)).toNat + A025469 n

end

end A284336.P3670765889886765714

/-! ## A284336.P8886380490831342426

`A284334(A167614(n+1))+A185284(n)`
-/

namespace A284336.P8886380490831342426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A167614 (n + 1)).toNat + A185284 n

end

end A284336.P8886380490831342426

/-! ## A284336.P14012900074734461525

`A284334(A167614(n+1))%A041840(n)`
-/

namespace A284336.P14012900074734461525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284334 (A167614 (n + 1)).toNat) (A041840 n)

end

end A284336.P14012900074734461525

/-! ## A284336.P14919893372184666595

`lcm(A033999(n), A284334(A167614(n+1)))`
-/

namespace A284336.P14919893372184666595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A284334 (A167614 (n + 1)).toNat)

end

end A284336.P14919893372184666595

/-!
# A284337: Number of 4 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284337, there is no canonical definition to state claims against.
-/

/-! ## A284337.P14607880345375276679

`A284334(A141214(n)+7)`
-/

namespace A284337.P14607880345375276679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A141214 n + 7).toNat

end

end A284337.P14607880345375276679

/-! ## A284337.P8961316668946851475

`A284334(A052905(n)+9)`
-/

namespace A284337.P8961316668946851475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A052905 n + 9).toNat

end

end A284337.P8961316668946851475

/-! ## A284337.P10643839483345191223

`A284334(A055999(n)+10)`
-/

namespace A284337.P10643839483345191223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A055999 n + 10).toNat

end

end A284337.P10643839483345191223

/-! ## A284337.P12875068978199620322

`A284334(eq[5, A066657(n)])`
-/

namespace A284337.P12875068978199620322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284337.P12875068978199620322

/-! ## A284337.P12853129506363586951

`A284334(A167614(n+2)+1)`
-/

namespace A284337.P12853129506363586951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A167614 (n + 2) + 1).toNat

end

end A284337.P12853129506363586951

/-!
# A284338: Number of 5 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284338, there is no canonical definition to state claims against.
-/

/-! ## A284338.P2528324535153841434

`A284334(A167499(n+3))`
-/

namespace A284338.P2528324535153841434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A167499 (n + 3)).toNat

end

end A284338.P2528324535153841434

/-! ## A284338.P16814801906257346724

`A284334(A155212(n)+13)`
-/

namespace A284338.P16814801906257346724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A155212 n + 13).toNat

end

end A284338.P16814801906257346724

/-! ## A284338.P18245470370087667651

`A284334(A056000(n)+15)`
-/

namespace A284338.P18245470370087667651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A056000 n + 15).toNat

end

end A284338.P18245470370087667651

/-! ## A284338.P9451345635569237468

`A284334(A167614(n+3)+2)`
-/

namespace A284338.P9451345635569237468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A167614 (n + 3) + 2).toNat

end

end A284338.P9451345635569237468

/-! ## A284338.P16843575176917154413

`A284334(eq[6, A131818(n+1)])`
-/

namespace A284338.P16843575176917154413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284338.P16843575176917154413

/-!
# A284339: Number of 6 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284339, there is no canonical definition to state claims against.
-/

/-! ## A284339.P3619651884193958299

`A284334(A166136(n+4))`
-/

namespace A284339.P3619651884193958299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A166136 (n + 4)).toNat

end

end A284339.P3619651884193958299

/-! ## A284339.P12968732508470325700

`A284334(A056115(n)+21)`
-/

namespace A284339.P12968732508470325700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A056115 n + 21).toNat

end

end A284339.P12968732508470325700

/-! ## A284339.P12968607662369055412

`A284334(A246172(n+1)+20)`
-/

namespace A284339.P12968607662369055412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A246172 (n + 1) + 20).toNat

end

end A284339.P12968607662369055412

/-! ## A284339.P4963482653902968164

`A284334(eq[5, A002262(n)]+1)`
-/

namespace A284339.P4963482653902968164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A284339.P4963482653902968164

/-! ## A284339.P4216741937723130217

`A284334(eq[7, A131818(n+1)])`
-/

namespace A284339.P4216741937723130217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284339.P4216741937723130217

/-!
# A284340: Number of 7 X n 0..1 arrays with the number of 1's horizontally, diagonally or antidiagonally adjacent to some 0 equal to the number of 0's adjacent to some 1, with top left element zero.

The programs for A284340, there is no canonical definition to state claims against.
-/

/-! ## A284340.P7228298675264562539

`A284334(eq[11, A066657(n)])`
-/

namespace A284340.P7228298675264562539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284340.P7228298675264562539

/-! ## A284340.P6836060636697436825

`A284334(A046691(n+4)+11)`
-/

namespace A284340.P6836060636697436825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A046691 (n + 4) + 11).toNat

end

end A284340.P6836060636697436825

/-! ## A284340.P1853710703091977622

`A284334(A246172(n+2)+21)`
-/

namespace A284340.P1853710703091977622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (A246172 (n + 2) + 21).toNat

end

end A284340.P1853710703091977622

/-! ## A284340.P14457408073028835821

`A284334(eq[6, A002262(n)]+1)`
-/

namespace A284340.P14457408073028835821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A284340.P14457408073028835821

/-! ## A284340.P12804254632055311311

`A284334(eq[8, A131818(n+1)])`
-/

namespace A284340.P12804254632055311311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284340.P12804254632055311311

/-!
# A284341: Sum of the divisors of n that are not divisible by 8.

The programs for A284341, the canonical program `A284341.P12288057839906862256` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284341 has offset 1).

The definition of A284341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284341.P12288057839906862256

`∑{d}[n+1, #%lcm(8, #)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A284341

/-- `∑{d}[n+1, #%lcm(8, #)]` -/
def P12288057839906862256.Spec : Prop :=
  ∀ n, (P12288057839906862256.a n : ℤ) = A284341 (n + 1)

theorem P12288057839906862256.correct : P12288057839906862256.Spec := by
  intro n
  simp only [A284341, Nat.add_sub_cancel]

end A284341

/-! ## A284341.P10298227574715654820

`∑{d}[n+1, #*A168181(#)]`
-/

namespace A284341.P10298227574715654820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A168181 d

end

end A284341.P10298227574715654820

namespace A284341

/-- `∑{d}[n+1, #*A168181(#)]` -/
def P10298227574715654820.Spec : Prop :=
  ∀ n, P10298227574715654820.a n = A284341 (n + 1)

end A284341

/-! ## A284341.P284896890747332727

`∑{d}[n+1, #*A181318(#)%4]`
-/

namespace A284341.P284896890747332727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A181318 d) 4

end

end A284341.P284896890747332727

namespace A284341

/-- `∑{d}[n+1, #*A181318(#)%4]` -/
def P284896890747332727.Spec : Prop :=
  ∀ n, P284896890747332727.a n = A284341 (n + 1)

end A284341

/-! ## A284341.P18422737658027704535

`∑{d}[n+1, #]%A122858((n+1)/and(n+1, -(n+1)))`
-/

namespace A284341.P18422737658027704535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A122858 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat)

end

end A284341.P18422737658027704535

namespace A284341

/-- `∑{d}[n+1, #]%A122858((n+1)/and(n+1, -(n+1)))` -/
def P18422737658027704535.Spec : Prop :=
  ∀ n, P18422737658027704535.a n = A284341 (n + 1)

end A284341

/-! ## A284341.P9454976040766329043

`A000593(n+1)*A112132(n+1)`
-/

namespace A284341.P9454976040766329043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A112132 (n + 1)

end

end A284341.P9454976040766329043

namespace A284341

/-- `A000593(n+1)*A112132(n+1)` -/
def P9454976040766329043.Spec : Prop :=
  ∀ n, P9454976040766329043.a n = A284341 (n + 1)

end A284341

/-! ## A284341.P17326323064298762738

`A000203(n%(4*A000265(n+1))+1)`
-/

namespace A284341.P17326323064298762738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.tmod (n : ℤ) (4 * A000265 (n + 1)) + 1).toNat

end

end A284341.P17326323064298762738

namespace A284341

/-- `A000203(n%(4*A000265(n+1))+1)` -/
def P17326323064298762738.Spec : Prop :=
  ∀ n, P17326323064298762738.a n = A284341 (n + 1)

end A284341

/-! ## A284341.P2369014118587410941

`∑{d}[n+1, A002325(#)*A089002((n+1)/#)]`
-/

namespace A284341.P2369014118587410941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002325 d * A089002 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284341.P2369014118587410941

namespace A284341

/-- `∑{d}[n+1, A002325(#)*A089002((n+1)/#)]` -/
def P2369014118587410941.Spec : Prop :=
  ∀ n, P2369014118587410941.a n = A284341 (n + 1)

end A284341

/-! ## A284341.P17310949557474050866

`∑{d}[n+1, A112132(#)*A193356((n+1)/#)]`
-/

namespace A284341.P17310949557474050866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112132 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284341.P17310949557474050866

namespace A284341

/-- `∑{d}[n+1, A112132(#)*A193356((n+1)/#)]` -/
def P17310949557474050866.Spec : Prop :=
  ∀ n, P17310949557474050866.a n = A284341 (n + 1)

end A284341

/-! ## A284341.P4565823221530367436

`∑{d}[n+1, A085384(#)*A288417((n+1)/#)]`
-/

namespace A284341.P4565823221530367436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085384 d * A288417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284341.P4565823221530367436

namespace A284341

/-- `∑{d}[n+1, A085384(#)*A288417((n+1)/#)]` -/
def P4565823221530367436.Spec : Prop :=
  ∀ n, P4565823221530367436.a n = A284341 (n + 1)

end A284341

/-! ## A284341.P5225410754662251229

`A000203((n+1)/A160467(A160467(n+1)))`
-/

namespace A284341.P5225410754662251229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A160467 (A160467 (n + 1)).toNat : ℚ))).toNat

end

end A284341.P5225410754662251229

namespace A284341

/-- `A000203((n+1)/A160467(A160467(n+1)))` -/
def P5225410754662251229.Spec : Prop :=
  ∀ n, P5225410754662251229.a n = A284341 (n + 1)

end A284341

/-! ## A284341.P5872427307959105464

`A000203(n+1)%A000118(A000265(n+1))`
-/

namespace A284341.P5872427307959105464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000118 (A000265 (n + 1)).toNat)

end

end A284341.P5872427307959105464

namespace A284341

/-- `A000203(n+1)%A000118(A000265(n+1))` -/
def P5872427307959105464.Spec : Prop :=
  ∀ n, P5872427307959105464.a n = A284341 (n + 1)

end A284341

/-! ## A284341.P1484947270473529816

`∑{d}[A259445(A160467(n+1))*A259445(n+1), #]`
-/

namespace A284341.P1484947270473529816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259445 (A160467 (n + 1)).toNat * A259445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A284341.P1484947270473529816

namespace A284341

/-- `∑{d}[A259445(A160467(n+1))*A259445(n+1), #]` -/
def P1484947270473529816.Spec : Prop :=
  ∀ n, (P1484947270473529816.a n : ℤ) = A284341 (n + 1)

end A284341

/-!
# A284342: Numbers n such that A065642(n) < n*lpf(n), where lpf = least prime factor (A020639).

The programs for A284342, there is no canonical definition to state claims against.
-/

/-! ## A284342.P1258308413332327434

`∪[A126855(n+1), A360768(n+1)]`
-/

namespace A284342.P1258308413332327434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A284342.P1258308413332327434

/-! ## A284342.P3172017200133371877

`∪[A140831(n+1), A360768(n+1)]`
-/

namespace A284342.P3172017200133371877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A284342.P3172017200133371877

/-! ## A284342.P15314273440439572196

`∪[A126855(n+1), A375397(n+1)]`
-/

namespace A284342.P15314273440439572196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A284342.P15314273440439572196

/-! ## A284342.P13009354582569177131

`∪[A140831(n+1), A375397(n+1)]`
-/

namespace A284342.P13009354582569177131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A284342.P13009354582569177131

/-! ## A284342.P458190664226130994

`lt[1, A285337(n+1)]+1`
-/

namespace A284342.P458190664226130994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A284342.P458190664226130994

/-! ## A284342.P7270327516758574950

`lt[1, A285337(A028310(n))]`
-/

namespace A284342.P7270327516758574950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285337 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A284342.P7270327516758574950

/-! ## A284342.P17073508628426517879

`A020725(lt[1, A285337(n+1)])`
-/

namespace A284342.P17073508628426517879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A284342.P17073508628426517879

/-! ## A284342.P14003045381006629277

`lt[A034684(n+1), A274006(n+1)]+1`
-/

namespace A284342.P14003045381006629277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274006 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A284342.P14003045381006629277

/-! ## A284342.P10067765483994702185

`lt[A065642(n+1), A285109(n+1)]+1`
-/

namespace A284342.P10067765483994702185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A284342.P10067765483994702185

/-! ## A284342.P5593410320851682573

`A020725(lt[1, (n+1)/gcd(n+1, A065642(n+1))])`
-/

namespace A284342.P5593410320851682573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A065642 (n + 1)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A284342.P5593410320851682573

/-! ## A284342.P3247350114967772804

`A061767(lt[A034684(n+1), A274006(n+1)])`
-/

namespace A284342.P3247350114967772804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A284342.P3247350114967772804

/-! ## A284342.P4169191871900726368

`A020725(lt[A065642(n+1), A285109(n+1)])`
-/

namespace A284342.P4169191871900726368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A284342.P4169191871900726368

/-! ## A284342.P9513735975958622837

`lt[1, A285337(A233583(n+1))]`
-/

namespace A284342.P9513735975958622837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285337 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A284342.P9513735975958622837

/-!
# A284344: Sum of the divisors of n that are not divisible by 10.

The programs for A284344, the canonical program `A284344.P15815540346340235835` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284344 has offset 1).

The definition of A284344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284344.P15815540346340235835

`∑{d}[n+1, #%lcm(10, #)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A284344

/-- `∑{d}[n+1, #%lcm(10, #)]` -/
def P15815540346340235835.Spec : Prop :=
  ∀ n, (P15815540346340235835.a n : ℤ) = A284344 (n + 1)

theorem P15815540346340235835.correct : P15815540346340235835.Spec := by
  intro n
  simp only [A284344, Nat.add_sub_cancel]

end A284344

/-! ## A284344.P494090989928470803

`∑{d}[n+1, and(#, A160094(#)-2)]`
-/

namespace A284344.P494090989928470803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land (d : ℤ) (A160094 d - 2)

end

end A284344.P494090989928470803

namespace A284344

/-- `∑{d}[n+1, and(#, A160094(#)-2)]` -/
def P494090989928470803.Spec : Prop :=
  ∀ n, P494090989928470803.a n = A284344 (n + 1)

end A284344

/-! ## A284344.P16353368393317411702

`∑{d}[n+1, #*A000007(val(#, 10))]`
-/

namespace A284344.P16353368393317411702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000007 (SequenceMachineLib.valuation d 10)

end

end A284344.P16353368393317411702

namespace A284344

/-- `∑{d}[n+1, #*A000007(val(#, 10))]` -/
def P16353368393317411702.Spec : Prop :=
  ∀ n, P16353368393317411702.a n = A284344 (n + 1)

end A284344

/-! ## A284344.P5901484787533014287

`A146076(A132739(n+1))+A000593(n+1)`
-/

namespace A284344.P5901484787533014287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A132739 (n + 1)).toNat + A000593 (n + 1)

end

end A284344.P5901484787533014287

namespace A284344

/-- `A146076(A132739(n+1))+A000593(n+1)` -/
def P5901484787533014287.Spec : Prop :=
  ∀ n, P5901484787533014287.a n = A284344 (n + 1)

end A284344

/-! ## A284344.P8679577731512561550

`∑{d}[n+1, #*A168184(#)]`
-/

namespace A284344.P8679577731512561550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A168184 d

end

end A284344.P8679577731512561550

namespace A284344

/-- `∑{d}[n+1, #*A168184(#)]` -/
def P8679577731512561550.Spec : Prop :=
  ∀ n, P8679577731512561550.a n = A284344 (n + 1)

end A284344

/-! ## A284344.P9953557892140294719

`∑{d}[n+1, A050782(A050810(#))]`
-/

namespace A284344.P9953557892140294719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050782 (A050810 d).toNat

end

end A284344.P9953557892140294719

namespace A284344

/-- `∑{d}[n+1, A050782(A050810(#))]` -/
def P9953557892140294719.Spec : Prop :=
  ∀ n, P9953557892140294719.a n = A284344 (n + 1)

end A284344

/-!
# A284345: Number of partitions of n into squares dividing n.

The programs for A284345, there is no canonical definition to state claims against.
-/

/-! ## A284345.P10912703933490934313

`A175470(A294105(n)%A110927(n+1))`
-/

namespace A284345.P10912703933490934313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175470 (Int.tmod (A294105 n) (A110927 (n + 1))).toNat

end

end A284345.P10912703933490934313

/-! ## A284345.P1980851530441449707

`A175470(A294105(n))`
-/

namespace A284345.P1980851530441449707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175470 (A294105 n).toNat

end

end A284345.P1980851530441449707

/-! ## A284345.P9241506334015112804

`A152650(A320305(n))`
-/

namespace A284345.P9241506334015112804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152650 (A320305 n).toNat

end

end A284345.P9241506334015112804

/-!
# A284347: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 873", based on the 5-celled von Neumann neighborhood.

The programs for A284347, there is no canonical definition to state claims against.
-/

/-! ## A284347.P6889961675555494595

`A007088(A284349(n))`
-/

namespace A284347.P6889961675555494595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284349 n).toNat

end

end A284347.P6889961675555494595

/-! ## A284347.P16110878605739804898

`A185544(2*A284349(n))`
-/

namespace A284347.P16110878605739804898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284349 n).toNat

end

end A284347.P16110878605739804898

/-!
# A284348: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 873", based on the 5-celled von Neumann neighborhood.

The programs for A284348, there is no canonical definition to state claims against.
-/

/-! ## A284348.P3947393410570214246

`A007088(A284350(n))`
-/

namespace A284348.P3947393410570214246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284350 n).toNat

end

end A284348.P3947393410570214246

/-! ## A284348.P2786625136919132710

`A185544(2*A284350(n))`
-/

namespace A284348.P2786625136919132710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284350 n).toNat

end

end A284348.P2786625136919132710

/-!
# A284351: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 899", based on the 5-celled von Neumann neighborhood.

The programs for A284351, the canonical program `A284351.P9435597309098009049` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284351 has offset 0).

The definition of A284351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284351.P15336576889287471713

`∑[10^n]-10*and(1, n)`
-/

namespace A284351.P15336576889287471713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (10 * Nat.land 1 n : ℤ)

end

end A284351.P15336576889287471713

namespace A284351

/-- `∑[10^n]-10*and(1, n)` -/
def P15336576889287471713.Spec : Prop :=
  ∀ n, P15336576889287471713.a n = A284351 n

end A284351

/-! ## A284351.P9435597309098009049

`10*a(n-1)+a(n-2)-10*a(n-3)` with `a(0)=1, a(1)=1, a(2)=111`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A284351

/-- `10*a(n-1)+a(n-2)-10*a(n-3)` -/
def P9435597309098009049.Spec : Prop :=
  ∀ n, P9435597309098009049.a n = A284351 n

theorem P9435597309098009049.correct : P9435597309098009049.Spec := by
  intro n
  simp only [A284351]

end A284351

/-! ## A284351.P11131673027649360022

`or(1, A284483(n))`
-/

namespace A284351.P11131673027649360022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A284483 n)

end

end A284351.P11131673027649360022

namespace A284351

/-- `or(1, A284483(n))` -/
def P11131673027649360022.Spec : Prop :=
  ∀ n, P11131673027649360022.a n = A284351 n

end A284351

/-! ## A284351.P2522134135753956961

`A003953(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A284351.P2522134135753956961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A003953 n + a (n - 2)

end

end A284351.P2522134135753956961

namespace A284351

/-- `A003953(n)+a(n-2)` -/
def P2522134135753956961.Spec : Prop :=
  ∀ n, P2522134135753956961.a n = A284351 n

end A284351

/-! ## A284351.P14467415986298028066

`10*(A002275(n)-n%2)+1`
-/

namespace A284351.P14467415986298028066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A002275 n - ((n % 2 : ℕ) : ℤ)) + 1

end

end A284351.P14467415986298028066

namespace A284351

/-- `10*(A002275(n)-n%2)+1` -/
def P14467415986298028066.Spec : Prop :=
  ∀ n, P14467415986298028066.a n = A284351 n

end A284351

/-! ## A284351.P3540783478385062326

`∑[10^n]-and(10, A004442(n)-n)`
-/

namespace A284351.P3540783478385062326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.land 10 (A004442 n - (n : ℤ))

end

end A284351.P3540783478385062326

namespace A284351

/-- `∑[10^n]-and(10, A004442(n)-n)` -/
def P3540783478385062326.Spec : Prop :=
  ∀ n, P3540783478385062326.a n = A284351 n

end A284351

/-! ## A284351.P3511015392041342069

`A000042(n+1)+1-A266327(n)`
-/

namespace A284351.P3511015392041342069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (1 - A266327 n)

end

end A284351.P3511015392041342069

namespace A284351

/-- `A000042(n+1)+1-A266327(n)` -/
def P3511015392041342069.Spec : Prop :=
  ∀ n, P3511015392041342069.a n = A284351 n

end A284351

/-! ## A284351.P5422390225980314458

`A000042(n+1)-10*A000035(n)`
-/

namespace A284351.P5422390225980314458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - 10 * A000035 n

end

end A284351.P5422390225980314458

namespace A284351

/-- `A000042(n+1)-10*A000035(n)` -/
def P5422390225980314458.Spec : Prop :=
  ∀ n, P5422390225980314458.a n = A284351 n

end A284351

/-! ## A284351.P18051833696676188523

`A000042(n+1)-Δ[A161365(n+1)]`
-/

namespace A284351.P18051833696676188523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - (f1 (n + 1) - f1 n)

end

end A284351.P18051833696676188523

namespace A284351

/-- `A000042(n+1)-Δ[A161365(n+1)]` -/
def P18051833696676188523.Spec : Prop :=
  ∀ n, P18051833696676188523.a n = A284351 n

end A284351

/-! ## A284351.P5464232768754636972

`A000042(n+1)-A007088(Δ[A052928(n)])`
-/

namespace A284351.P5464232768754636972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A007088 (f1 (n + 1) - f1 n).toNat

end

end A284351.P5464232768754636972

namespace A284351

/-- `A000042(n+1)-A007088(Δ[A052928(n)])` -/
def P5464232768754636972.Spec : Prop :=
  ∀ n, P5464232768754636972.a n = A284351 n

end A284351

/-!
# A284352: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 899", based on the 5-celled von Neumann neighborhood.

The programs for A284352, the canonical program `A284352.P17202606651772724269` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284352 has offset 0).

The definition of A284352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284352.P17202606651772724269

`10*(10*a(n-2)+1)+1` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A284352

/-- `10*(10*a(n-2)+1)+1` -/
def P17202606651772724269.Spec : Prop :=
  ∀ n, (P17202606651772724269.a n : ℤ) = A284352 n

theorem P17202606651772724269.correct : P17202606651772724269.Spec := by
  intro n
  simp only [A284352]

end A284352

/-! ## A284352.P7840407084801968976

`A002275(n)+A004663(n)²`
-/

namespace A284352.P7840407084801968976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n + A004663 n ^ 2

end

end A284352.P7840407084801968976

namespace A284352

/-- `A002275(n)+A004663(n)²` -/
def P7840407084801968976.Spec : Prop :=
  ∀ n, P7840407084801968976.a n = A284352 n

end A284352

/-! ## A284352.P17312617472840379120

`A011557(n)+A002275(A052928(n))`
-/

namespace A284352.P17312617472840379120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + A002275 (A052928 n).toNat

end

end A284352.P17312617472840379120

namespace A284352

/-- `A011557(n)+A002275(A052928(n))` -/
def P17312617472840379120.Spec : Prop :=
  ∀ n, P17312617472840379120.a n = A284352 n

end A284352

/-! ## A284352.P17988386757432989429

`A047855(A052928(n))+A002283(n)`
-/

namespace A284352.P17988386757432989429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 (A052928 n).toNat + A002283 n

end

end A284352.P17988386757432989429

namespace A284352

/-- `A047855(A052928(n))+A002283(n)` -/
def P17988386757432989429.Spec : Prop :=
  ∀ n, P17988386757432989429.a n = A284352 n

end A284352

/-! ## A284352.P6457622647046815247

`A000042(n+1)-A277798(A124625(n))`
-/

namespace A284352.P6457622647046815247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A277798 (A124625 n).toNat

end

end A284352.P6457622647046815247

namespace A284352

/-- `A000042(n+1)-A277798(A124625(n))` -/
def P6457622647046815247.Spec : Prop :=
  ∀ n, P6457622647046815247.a n = A284352 n

end A284352

/-! ## A284352.P16465614038715886992

`A011557(n)+A002275(2*A004526(n))`
-/

namespace A284352.P16465614038715886992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + A002275 (2 * A004526 n).toNat

end

end A284352.P16465614038715886992

namespace A284352

/-- `A011557(n)+A002275(2*A004526(n))` -/
def P16465614038715886992.Spec : Prop :=
  ∀ n, P16465614038715886992.a n = A284352 n

end A284352

/-! ## A284352.P15925221686211220979

`A011557(n)+A002275(n-A000035(n))`
-/

namespace A284352.P15925221686211220979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + A002275 ((n : ℤ) - A000035 n).toNat

end

end A284352.P15925221686211220979

namespace A284352

/-- `A011557(n)+A002275(n-A000035(n))` -/
def P15925221686211220979.Spec : Prop :=
  ∀ n, P15925221686211220979.a n = A284352 n

end A284352

/-!
# A284353: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 899", based on the 5-celled von Neumann neighborhood.

The programs for A284353, the canonical program `A284353.P5715790127130941889` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284353 has offset 0).

The definition of A284353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284353.P5715790127130941889

`ogf((1-x+4x^2)/(1-2x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A284353

/-- `ogf((1-x+4x^2)/(1-2x-x^2+2x^3))` -/
def P5715790127130941889.Spec : Prop :=
  ∀ n, P5715790127130941889.a n = A284353 n

theorem P5715790127130941889.correct : P5715790127130941889.Spec := by
  intro n
  simp only [A284353]

end A284353

/-! ## A284353.P5246434730501848111

`∑[2^n]-2*and(1, n)`
-/

namespace A284353.P5246434730501848111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * Nat.land 1 n : ℤ)

end

end A284353.P5246434730501848111

namespace A284353

/-- `∑[2^n]-2*and(1, n)` -/
def P5246434730501848111.Spec : Prop :=
  ∀ n, P5246434730501848111.a n = A284353 n

end A284353

/-! ## A284353.P4815576431262815141

`∑[2^n]+(-1)^n-1`
-/

namespace A284353.P4815576431262815141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((-1) ^ n - 1)

end

end A284353.P4815576431262815141

namespace A284353

/-- `∑[2^n]+(-1)^n-1` -/
def P4815576431262815141.Spec : Prop :=
  ∀ n, P4815576431262815141.a n = A284353 n

end A284353

/-! ## A284353.P10396991504858121387

`xor(2, a(n-1)+2^n)` with `a(0)=1`
-/

namespace A284353.P10396991504858121387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 2 (a (n - 1) + 2 ^ n)

end

end A284353.P10396991504858121387

namespace A284353

/-- `xor(2, a(n-1)+2^n)` -/
def P10396991504858121387.Spec : Prop :=
  ∀ n, (P10396991504858121387.a n : ℤ) = A284353 n

end A284353

/-! ## A284353.P11252930509081407541

`xor(2, or(2^n, a(n-1)))` with `a(0)=1`
-/

namespace A284353.P11252930509081407541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 2 (Nat.lor (2 ^ n) (a (n - 1)))

end

end A284353.P11252930509081407541

namespace A284353

/-- `xor(2, or(2^n, a(n-1)))` -/
def P11252930509081407541.Spec : Prop :=
  ∀ n, (P11252930509081407541.a n : ℤ) = A284353 n

end A284353

/-! ## A284353.P11045490207616080367

`xor(2, xor(2^n, a(n-1)))` with `a(0)=1`
-/

namespace A284353.P11045490207616080367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 2 (Nat.xor (2 ^ n) (a (n - 1)))

end

end A284353.P11045490207616080367

namespace A284353

/-- `xor(2, xor(2^n, a(n-1)))` -/
def P11045490207616080367.Spec : Prop :=
  ∀ n, (P11045490207616080367.a n : ℤ) = A284353 n

end A284353

/-! ## A284353.P11812624021768217597

`abs(2^(n+1)-and(3, 2*n+1))`
-/

namespace A284353.P11812624021768217597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ (n + 1) : ℤ) - (Nat.land 3 (2 * n + 1) : ℤ)|

end

end A284353.P11812624021768217597

namespace A284353

/-- `abs(2^(n+1)-and(3, 2*n+1))` -/
def P11812624021768217597.Spec : Prop :=
  ∀ n, P11812624021768217597.a n = A284353 n

end A284353

/-! ## A284353.P9954368741242678125

`or(4, a(n-1)+2*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A284353.P9954368741242678125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lor 4 (a (n - 1) + 2 * a (n - 2))

end

end A284353.P9954368741242678125

namespace A284353

/-- `or(4, a(n-1)+2*a(n-2))` -/
def P9954368741242678125.Spec : Prop :=
  ∀ n, (P9954368741242678125.a n : ℤ) = A284353 n

end A284353

/-! ## A284353.P8264056347952332122

`∑[a(n-1)+2*a(n-2)]` with `a(0)=1, a(1)=0, a(2)=6`
-/

namespace A284353.P8264056347952332122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 6] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284353.P8264056347952332122

namespace A284353

/-- `∑[a(n-1)+2*a(n-2)]` -/
def P8264056347952332122.Spec : Prop :=
  ∀ n, (P8264056347952332122.a n : ℤ) = A284353 n

end A284353

/-! ## A284353.P6801675488717644029

`floor(a(n-1)+2*(a(n-2)+2))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A284353.P6801675488717644029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 2 * (a (n - 2) + 2)

end

end A284353.P6801675488717644029

namespace A284353

/-- `floor(a(n-1)+2*(a(n-2)+2))` -/
def P6801675488717644029.Spec : Prop :=
  ∀ n, (P6801675488717644029.a n : ℤ) = A284353 n

end A284353

/-! ## A284353.P3822283937725690268

`xor(4, abs(a(n-1)+2*a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A284353.P3822283937725690268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.xor 4 (a (n - 1) + 2 * a (n - 2))

end

end A284353.P3822283937725690268

namespace A284353

/-- `xor(4, abs(a(n-1)+2*a(n-2)))` -/
def P3822283937725690268.Spec : Prop :=
  ∀ n, (P3822283937725690268.a n : ℤ) = A284353 n

end A284353

/-! ## A284353.P6925669553039214255

`4*((a(n-1)+2*a(n-2))/4+1)` with `a(0)=1, a(1)=1`
-/

namespace A284353.P6925669553039214255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * ((a (n - 1) + 2 * a (n - 2)) / 4 + 1)

end

end A284353.P6925669553039214255

namespace A284353

/-- `4*((a(n-1)+2*a(n-2))/4+1)` -/
def P6925669553039214255.Spec : Prop :=
  ∀ n, P6925669553039214255.a n = (A284353 n : ℚ)

end A284353

/-! ## A284353.P3833724267345195864

`or(1, A101622(n))`
-/

namespace A284353.P3833724267345195864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101622 n)

end

end A284353.P3833724267345195864

namespace A284353

/-- `or(1, A101622(n))` -/
def P3833724267345195864.Spec : Prop :=
  ∀ n, P3833724267345195864.a n = A284353 n

end A284353

/-! ## A284353.P15284322155081503979

`abs(1-2*A225883(n))`
-/

namespace A284353.P15284322155081503979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A225883 n|

end

end A284353.P15284322155081503979

namespace A284353

/-- `abs(1-2*A225883(n))` -/
def P15284322155081503979.Spec : Prop :=
  ∀ n, P15284322155081503979.a n = A284353 n

end A284353

/-! ## A284353.P10504960238450055061

`or(1, A166920(n+1)-2)`
-/

namespace A284353.P10504960238450055061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A166920 (n + 1) - 2)

end

end A284353.P10504960238450055061

namespace A284353

/-- `or(1, A166920(n+1)-2)` -/
def P10504960238450055061.Spec : Prop :=
  ∀ n, P10504960238450055061.a n = A284353 n

end A284353

/-! ## A284353.P4509235819731552520

`abs(1-Δ[A167193(n+1)])`
-/

namespace A284353.P4509235819731552520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (n + 1) - f1 n)|

end

end A284353.P4509235819731552520

namespace A284353

/-- `abs(1-Δ[A167193(n+1)])` -/
def P4509235819731552520.Spec : Prop :=
  ∀ n, P4509235819731552520.a n = A284353 n

end A284353

/-! ## A284353.P1469399684893698254

`A084181(n)*A277866(n)`
-/

namespace A284353.P1469399684893698254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084181 n * A277866 n

end

end A284353.P1469399684893698254

namespace A284353

/-- `A084181(n)*A277866(n)` -/
def P1469399684893698254.Spec : Prop :=
  ∀ n, P1469399684893698254.a n = A284353 n

end A284353

/-! ## A284353.P11246448286611876732

`xor(A010673(n), A126646(n))`
-/

namespace A284353.P11246448286611876732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 n) (A126646 n)

end

end A284353.P11246448286611876732

namespace A284353

/-- `xor(A010673(n), A126646(n))` -/
def P11246448286611876732.Spec : Prop :=
  ∀ n, P11246448286611876732.a n = A284353 n

end A284353

/-! ## A284353.P6624136200318152262

`xor(A059841(n), A101622(n))`
-/

namespace A284353.P6624136200318152262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059841 n) (A101622 n)

end

end A284353.P6624136200318152262

namespace A284353

/-- `xor(A059841(n), A101622(n))` -/
def P6624136200318152262.Spec : Prop :=
  ∀ n, P6624136200318152262.a n = A284353 n

end A284353

/-! ## A284353.P17350327754841395050

`xor(A084639(n), A097072(n))`
-/

namespace A284353.P17350327754841395050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084639 n) (A097072 n)

end

end A284353.P17350327754841395050

namespace A284353

/-- `xor(A084639(n), A097072(n))` -/
def P17350327754841395050.Spec : Prop :=
  ∀ n, P17350327754841395050.a n = A284353 n

end A284353

/-!
# A284354: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 899", based on the 5-celled von Neumann neighborhood.

The programs for A284354, the canonical program `A284354.P15400615689942802853` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284354 has offset 0).

The definition of A284354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284354.P15400615689942802853

`∑[ogf((1+x+x^2)/(1-4x^2))]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A284354

/-- `∑[ogf((1+x+x^2)/(1-4x^2))]` -/
def P15400615689942802853.Spec : Prop :=
  ∀ n, P15400615689942802853.a n = A284354 n

theorem P15400615689942802853.correct : P15400615689942802853.Spec := by
  intro n
  simp only [A284354]

end A284354

/-! ## A284354.P17355830753739348203

`ogf((1+x+x^2)/(1-x-4x^2+4x^3))`
-/

namespace A284354.P17355830753739348203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -1, -4, 4] n

end

end A284354.P17355830753739348203

namespace A284354

/-- `ogf((1+x+x^2)/(1-x-4x^2+4x^3))` -/
def P17355830753739348203.Spec : Prop :=
  ∀ n, P17355830753739348203.a n = A284354 n

end A284354

/-! ## A284354.P12138319866976323056

`4*a(n-2)+3` with `a(0)=1, a(1)=2`
-/

namespace A284354.P12138319866976323056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 2) + 3

end

end A284354.P12138319866976323056

namespace A284354

/-- `4*a(n-2)+3` -/
def P12138319866976323056.Spec : Prop :=
  ∀ n, (P12138319866976323056.a n : ℤ) = A284354 n

end A284354

/-! ## A284354.P11014292971151491424

`or(3, 4*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A284354.P11014292971151491424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor 3 (4 * a (n - 2))

end

end A284354.P11014292971151491424

namespace A284354

/-- `or(3, 4*a(n-2))` -/
def P11014292971151491424.Spec : Prop :=
  ∀ n, (P11014292971151491424.a n : ℤ) = A284354 n

end A284354

/-! ## A284354.P8852599086173896161

`xor(3, 4*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A284354.P8852599086173896161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 3 (4 * a (n - 2))

end

end A284354.P8852599086173896161

namespace A284354

/-- `xor(3, 4*a(n-2))` -/
def P8852599086173896161.Spec : Prop :=
  ∀ n, (P8852599086173896161.a n : ℤ) = A284354 n

end A284354

/-! ## A284354.P17378760444073143261

`∑[4*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A284354.P17378760444073143261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284354.P17378760444073143261

namespace A284354

/-- `∑[4*a(n-2)]` -/
def P17378760444073143261.Spec : Prop :=
  ∀ n, (P17378760444073143261.a n : ℤ) = A284354 n

end A284354

/-! ## A284354.P3375760895735077587

`7-4*(1-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A284354.P3375760895735077587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  7 - 4 * (1 - a (n - 2))

end

end A284354.P3375760895735077587

namespace A284354

/-- `7-4*(1-a(n-2))` -/
def P3375760895735077587.Spec : Prop :=
  ∀ n, P3375760895735077587.a n = A284354 n

end A284354

/-! ## A284354.P12350710768398756216

`a(n-2)/(1/2)²+3` with `a(0)=1, a(1)=2`
-/

namespace A284354.P12350710768398756216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2 + 3

end

end A284354.P12350710768398756216

namespace A284354

/-- `a(n-2)/(1/2)²+3` -/
def P12350710768398756216.Spec : Prop :=
  ∀ n, P12350710768398756216.a n = (A284354 n : ℚ)

end A284354

/-! ## A284354.P9980469284226594004

`∑[a(n-2)/(1/2)²]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A284354.P9980469284226594004
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  f1 (n - 2) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284354.P9980469284226594004

namespace A284354

/-- `∑[a(n-2)/(1/2)²]` -/
def P9980469284226594004.Spec : Prop :=
  ∀ n, P9980469284226594004.a n = (A284354 n : ℚ)

end A284354

/-! ## A284354.P2525558009290342289

`3-a(n-2)/(3/4-1)` with `a(0)=1, a(1)=2`
-/

namespace A284354.P2525558009290342289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - a (n - 2) / ((3 : ℚ) / 4 - 1)

end

end A284354.P2525558009290342289

namespace A284354

/-- `3-a(n-2)/(3/4-1)` -/
def P2525558009290342289.Spec : Prop :=
  ∀ n, P2525558009290342289.a n = (A284354 n : ℚ)

end A284354

/-! ## A284354.P17682387279392460632

`a(n-2)+a(n-2)+a(n-2)+a(n-2)+3` with `a(0)=1, a(1)=2`
-/

namespace A284354.P17682387279392460632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + (a (n - 2) + 3)))

end

end A284354.P17682387279392460632

namespace A284354

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-2)+3` -/
def P17682387279392460632.Spec : Prop :=
  ∀ n, (P17682387279392460632.a n : ℤ) = A284354 n

end A284354

/-! ## A284354.P3508876079626758557

`∑[abs(Δ[A134683(n)])]`
-/

namespace A284354.P3508876079626758557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284354.P3508876079626758557

namespace A284354

/-- `∑[abs(Δ[A134683(n)])]` -/
def P3508876079626758557.Spec : Prop :=
  ∀ n, P3508876079626758557.a n = A284354 n

end A284354

/-! ## A284354.P13647628052240122114

`A134683(n+1)-1`
-/

namespace A284354.P13647628052240122114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 (n + 1) - 1

end

end A284354.P13647628052240122114

namespace A284354

/-- `A134683(n+1)-1` -/
def P13647628052240122114.Spec : Prop :=
  ∀ n, P13647628052240122114.a n = A284354 n

end A284354

/-! ## A284354.P7634614869119248572

`A098646(xor(1, n))-1`
-/

namespace A284354.P7634614869119248572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098646 (Nat.xor 1 n) - 1

end

end A284354.P7634614869119248572

namespace A284354

/-- `A098646(xor(1, n))-1` -/
def P7634614869119248572.Spec : Prop :=
  ∀ n, P7634614869119248572.a n = A284354 n

end A284354

/-! ## A284354.P10787658976533650666

`A303611(xor(1, n+2))`
-/

namespace A284354.P10787658976533650666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303611 (Nat.xor 1 (n + 2))

end

end A284354.P10787658976533650666

namespace A284354

/-- `A303611(xor(1, n+2))` -/
def P10787658976533650666.Spec : Prop :=
  ∀ n, P10787658976533650666.a n = A284354 n

end A284354

/-! ## A284354.P9002840329760723327

`abs(Δ[A138380(2*n)])-1`
-/

namespace A284354.P9002840329760723327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138380 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A284354.P9002840329760723327

namespace A284354

/-- `abs(Δ[A138380(2*n)])-1` -/
def P9002840329760723327.Spec : Prop :=
  ∀ n, P9002840329760723327.a n = A284354 n

end A284354

/-! ## A284354.P10857457491326462730

`or(a(n-1)+1, A266550(n+2))` with `a(0)=1`
-/

namespace A284354.P10857457491326462730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1) + 1) (A266550 (n + 2))

end

end A284354.P10857457491326462730

namespace A284354

/-- `or(a(n-1)+1, A266550(n+2))` -/
def P10857457491326462730.Spec : Prop :=
  ∀ n, P10857457491326462730.a n = A284354 n

end A284354

/-! ## A284354.P5305489809856559312

`A052955(A042948(n))`
-/

namespace A284354.P5305489809856559312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A042948 n).toNat

end

end A284354.P5305489809856559312

namespace A284354

/-- `A052955(A042948(n))` -/
def P5305489809856559312.Spec : Prop :=
  ∀ n, P5305489809856559312.a n = A284354 n

end A284354

/-! ## A284354.P12348079257705457678

`A180516(A007494(n+1))`
-/

namespace A284354.P12348079257705457678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180516 (A007494 (n + 1)).toNat

end

end A284354.P12348079257705457678

namespace A284354

/-- `A180516(A007494(n+1))` -/
def P12348079257705457678.Spec : Prop :=
  ∀ n, P12348079257705457678.a n = A284354 n

end A284354

/-! ## A284354.P3724915413017918262

`A303611(A065190(n+2))`
-/

namespace A284354.P3724915413017918262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303611 (A065190 (n + 2)).toNat

end

end A284354.P3724915413017918262

namespace A284354

/-- `A303611(A065190(n+2))` -/
def P3724915413017918262.Spec : Prop :=
  ∀ n, P3724915413017918262.a n = A284354 n

end A284354

/-!
# A284355: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 902", based on the 5-celled von Neumann neighborhood.

The programs for A284355, there is no canonical definition to state claims against.
-/

/-! ## A284355.P10989221745947673317

`A007088(A284357(n))`
-/

namespace A284355.P10989221745947673317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284357 n).toNat

end

end A284355.P10989221745947673317

/-! ## A284355.P13423505780090476331

`A305989(A284358(n))`
-/

namespace A284355.P13423505780090476331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284358 n).toNat

end

end A284355.P13423505780090476331

/-! ## A284355.P17701677085232761990

`A185544(2*A284357(n))`
-/

namespace A284355.P17701677085232761990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284357 n).toNat

end

end A284355.P17701677085232761990

/-! ## A284355.P7434735110697642185

`A185544(lcm(2, A284357(n)))`
-/

namespace A284355.P7434735110697642185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A284357 n))

end

end A284355.P7434735110697642185

/-! ## A284355.P11571841223323973148

`A185544(A284357(n)+A284357(n))`
-/

namespace A284355.P11571841223323973148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A284357 n + A284357 n).toNat

end

end A284355.P11571841223323973148

/-!
# A284356: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 902", based on the 5-celled von Neumann neighborhood.

The programs for A284356, there is no canonical definition to state claims against.
-/

/-! ## A284356.P12572829643153730463

`A007088(A284358(n))`
-/

namespace A284356.P12572829643153730463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284358 n).toNat

end

end A284356.P12572829643153730463

/-! ## A284356.P12599474659639560231

`A305989(A284357(n))`
-/

namespace A284356.P12599474659639560231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284357 n).toNat

end

end A284356.P12599474659639560231

/-! ## A284356.P4761346751502481075

`A185544(2*A284358(n))`
-/

namespace A284356.P4761346751502481075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284358 n).toNat

end

end A284356.P4761346751502481075

/-! ## A284356.P17197000158536200012

`A185544(lcm(2, A284358(n)))`
-/

namespace A284356.P17197000158536200012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A284358 n))

end

end A284356.P17197000158536200012

/-! ## A284356.P1630974044731996388

`A185544(A284358(n)+A284358(n))`
-/

namespace A284356.P1630974044731996388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A284358 n + A284358 n).toNat

end

end A284356.P1630974044731996388

/-!
# A284357: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 902", based on the 5-celled von Neumann neighborhood.

The programs for A284357, there is no canonical definition to state claims against.
-/

/-! ## A284357.P13257911506396914641

`and(A126646(n), A264618(A284358(n)))`
-/

namespace A284357.P13257911506396914641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A284358 n).toNat)

end

end A284357.P13257911506396914641

/-! ## A284357.P7334976588795161588

`A057889(A284358(n))`
-/

namespace A284357.P7334976588795161588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284358 n).toNat

end

end A284357.P7334976588795161588

/-! ## A284357.P12314427727310245078

`A281589(2*A284358(n))`
-/

namespace A284357.P12314427727310245078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A284358 n).toNat

end

end A284357.P12314427727310245078

/-! ## A284357.P2650586670717529455

`A325401(2*A284358(n))`
-/

namespace A284357.P2650586670717529455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A284358 n).toNat

end

end A284357.P2650586670717529455

/-! ## A284357.P8748110642559318311

`A281589(lcm(2, A284358(n)))`
-/

namespace A284357.P8748110642559318311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A284358 n))

end

end A284357.P8748110642559318311

/-!
# A284358: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 902", based on the 5-celled von Neumann neighborhood.

The programs for A284358, there is no canonical definition to state claims against.
-/

/-! ## A284358.P13772079222929963387

`and(A126646(n), A264618(A284357(n)))`
-/

namespace A284358.P13772079222929963387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A284357 n).toNat)

end

end A284358.P13772079222929963387

/-! ## A284358.P10875894352269455338

`A057889(A284357(n))`
-/

namespace A284358.P10875894352269455338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284357 n).toNat

end

end A284358.P10875894352269455338

/-! ## A284358.P16566641104256650343

`A325401(or(1, A284357(n)))`
-/

namespace A284358.P16566641104256650343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lor 1 (A284357 n)).toNat

end

end A284358.P16566641104256650343

/-! ## A284358.P10367093348828356980

`A325401(A284357(n)+A000007(n))`
-/

namespace A284358.P10367093348828356980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A284357 n + A000007 n).toNat

end

end A284358.P10367093348828356980

/-! ## A284358.P2759714932938100945

`A325401(A284357(n)+A010893(n))`
-/

namespace A284358.P2759714932938100945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A284357 n + A010893 (n + 13)).toNat

end

end A284358.P2759714932938100945

/-!
# A284359: Double triangle (2*n+2 terms by row). Every row is 2*n + 1 followed by 2*n + 1 times 2*n + 2.

The programs for A284359, the canonical program `A284359.P5139829988837708178` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284359 has offset 0).

The definition of A284359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284359.P6708244282926060339

`round(round(sqrt(n+1))+sqrt(n))`
-/

namespace A284359.P6708244282926060339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) : ℝ) + Real.sqrt (n : ℝ))

end

end A284359.P6708244282926060339

namespace A284359

/-- `round(round(sqrt(n+1))+sqrt(n))` -/
def P6708244282926060339.Spec : Prop :=
  ∀ n, P6708244282926060339.a n = A284359 n

end A284359

/-! ## A284359.P2592991683598907171

`∑[char[∑[or(n, (-1)^n)]]]`
-/

namespace A284359.P2592991683598907171
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((-1) ^ n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284359.P2592991683598907171

namespace A284359

/-- `∑[char[∑[or(n, (-1)^n)]]]` -/
def P2592991683598907171.Spec : Prop :=
  ∀ n, (P2592991683598907171.a n : ℤ) = A284359 n

end A284359

/-! ## A284359.P43340299884511521

`∑[char[∑[n^(n%2)]]]+1`
-/

namespace A284359.P43340299884511521
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A284359.P43340299884511521

namespace A284359

/-- `∑[char[∑[n^(n%2)]]]+1` -/
def P43340299884511521.Spec : Prop :=
  ∀ n, (P43340299884511521.a n : ℤ) = A284359 n

end A284359

/-! ## A284359.P1347346273796207301

`∑[char[n²-(∑[lcm(2, n)]-1)]]`
-/

namespace A284359.P1347346273796207301
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284359.P1347346273796207301

namespace A284359

/-- `∑[char[n²-(∑[lcm(2, n)]-1)]]` -/
def P1347346273796207301.Spec : Prop :=
  ∀ n, (P1347346273796207301.a n : ℤ) = A284359 n

end A284359

/-! ## A284359.P5139829988837708178

`a(n-a(n-2))+2` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A284359

/-- `a(n-a(n-2))+2` -/
def P5139829988837708178.Spec : Prop :=
  ∀ n, (P5139829988837708178.a n : ℤ) = A284359 n

theorem P5139829988837708178.correct : P5139829988837708178.Spec := by
  intro n
  simp only [A284359]

end A284359

/-! ## A284359.P16525539746419899989

`∑[char[∑[(n+1)*and(1, n)]-n]]`
-/

namespace A284359.P16525539746419899989
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284359.P16525539746419899989

namespace A284359

/-- `∑[char[∑[(n+1)*and(1, n)]-n]]` -/
def P16525539746419899989.Spec : Prop :=
  ∀ n, (P16525539746419899989.a n : ℤ) = A284359 n

end A284359

/-! ## A284359.P9676627804836314140

`2*n+1-∪[2*n+1, 2*n²]`
-/

namespace A284359.P9676627804836314140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ)

end

end A284359.P9676627804836314140

namespace A284359

/-- `2*n+1-∪[2*n+1, 2*n²]` -/
def P9676627804836314140.Spec : Prop :=
  ∀ n, P9676627804836314140.a n = A284359 n

end A284359

/-! ## A284359.P10768110914996815622

`abs(2*n+1-∪[2*n+1, n*2*n])`
-/

namespace A284359.P10768110914996815622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ)|

end

end A284359.P10768110914996815622

namespace A284359

/-- `abs(2*n+1-∪[2*n+1, n*2*n])` -/
def P10768110914996815622.Spec : Prop :=
  ∀ n, P10768110914996815622.a n = A284359 n

end A284359

/-! ## A284359.P6515462627273348929

`∑[char[abs(A226940(n))]]`
-/

namespace A284359.P6515462627273348929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226940 n|

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284359.P6515462627273348929

namespace A284359

/-- `∑[char[abs(A226940(n))]]` -/
def P6515462627273348929.Spec : Prop :=
  ∀ n, (P6515462627273348929.a n : ℤ) = A284359 n

end A284359

/-! ## A284359.P18135466010685201120

`∑[A010054(floor(n/2))]`
-/

namespace A284359.P18135466010685201120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284359.P18135466010685201120

namespace A284359

/-- `∑[A010054(floor(n/2))]` -/
def P18135466010685201120.Spec : Prop :=
  ∀ n, P18135466010685201120.a n = A284359 n

end A284359

/-! ## A284359.P14524043795394177964

`comp[2*lt[A124928(n), 4]]-n`
-/

namespace A284359.P14524043795394177964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124928 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A284359.P14524043795394177964

namespace A284359

/-- `comp[2*lt[A124928(n), 4]]-n` -/
def P14524043795394177964.Spec : Prop :=
  ∀ n, P14524043795394177964.a n = A284359 n

end A284359

/-! ## A284359.P12689599582647536456

`∑[floor((1/A057555(abs(1-n)+1))²)]`
-/

namespace A284359.P12689599582647536456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 / (A057555 (|1 - (n : ℤ)| + 1).toNat : ℚ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284359.P12689599582647536456

namespace A284359

/-- `∑[floor((1/A057555(abs(1-n)+1))²)]` -/
def P12689599582647536456.Spec : Prop :=
  ∀ n, P12689599582647536456.a n = A284359 n

end A284359

/-! ## A284359.P3212226450973449478

`A023969(n)+A000267(n)`
-/

namespace A284359.P3212226450973449478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 n + A000267 n

end

end A284359.P3212226450973449478

namespace A284359

/-- `A023969(n)+A000267(n)` -/
def P3212226450973449478.Spec : Prop :=
  ∀ n, P3212226450973449478.a n = A284359 n

end A284359

/-! ## A284359.P5194081538453350094

`A368941(n)+A259361(n)`
-/

namespace A284359.P5194081538453350094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368941 n + A259361 n

end

end A284359.P5194081538453350094

namespace A284359

/-- `A368941(n)+A259361(n)` -/
def P5194081538453350094.Spec : Prop :=
  ∀ n, P5194081538453350094.a n = A284359 n

end A284359

/-! ## A284359.P12215815286280693443

`A001670(n+1)-A005369(n)`
-/

namespace A284359.P12215815286280693443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001670 (n + 1) - A005369 n

end

end A284359.P12215815286280693443

namespace A284359

/-- `A001670(n+1)-A005369(n)` -/
def P12215815286280693443.Spec : Prop :=
  ∀ n, P12215815286280693443.a n = A284359 n

end A284359

/-! ## A284359.P6697890289123142933

`1-A028391(A056847(n))+n`
-/

namespace A284359.P6697890289123142933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A028391 (A056847 n).toNat + (n : ℤ)

end

end A284359.P6697890289123142933

namespace A284359

/-- `1-A028391(A056847(n))+n` -/
def P6697890289123142933.Spec : Prop :=
  ∀ n, P6697890289123142933.a n = A284359 n

end A284359

/-! ## A284359.P1295144515827364873

`A118175(n)+A060018(n+2)`
-/

namespace A284359.P1295144515827364873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n + A060018 (n + 2)

end

end A284359.P1295144515827364873

namespace A284359

/-- `A118175(n)+A060018(n+2)` -/
def P1295144515827364873.Spec : Prop :=
  ∀ n, P1295144515827364873.a n = A284359 n

end A284359

/-! ## A284359.P11840370706391603341

`A183299(n+1)-A056847(n)`
-/

namespace A284359.P11840370706391603341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183299 (n + 1) - A056847 n

end

end A284359.P11840370706391603341

namespace A284359

/-- `A183299(n+1)-A056847(n)` -/
def P11840370706391603341.Spec : Prop :=
  ∀ n, P11840370706391603341.a n = A284359 n

end A284359

/-! ## A284359.P15616911711885488153

`A027434(n+1)-A267708(n)`
-/

namespace A284359.P15616911711885488153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (n + 1) - A267708 n

end

end A284359.P15616911711885488153

namespace A284359

/-- `A027434(n+1)-A267708(n)` -/
def P15616911711885488153.Spec : Prop :=
  ∀ n, P15616911711885488153.a n = A284359 n

end A284359

/-! ## A284359.P9878929239713999645

`∑[A197870(A008619(n)-1)²]`
-/

namespace A284359.P9878929239713999645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (A008619 n - 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284359.P9878929239713999645

namespace A284359

/-- `∑[A197870(A008619(n)-1)²]` -/
def P9878929239713999645.Spec : Prop :=
  ∀ n, P9878929239713999645.a n = A284359 n

end A284359

/-!
# A284360: Smallest positive k such that exactly half of the first k positive integers have n or fewer divisors.

The programs for A284360, there is no canonical definition to state claims against.
-/

/-! ## A284360.P11300018303925302792

`A250120(2*n)+A002306(A323340(n))`
-/

namespace A284360.P11300018303925302792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (2 * n) + A002306 (A323340 n).toNat

end

end A284360.P11300018303925302792

/-!
# A284361: a(n) = Sum_{d|n, d = 0, 1, or 4 mod 5} d.

The programs for A284361, the canonical program `A284361.P16555063331181266176` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284361 has offset 1).

The definition of A284361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284361.P16555063331181266176

`∑{d}[n+1, #*A183865(#)%2]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284361

/-- `∑{d}[n+1, #*A183865(#)%2]` -/
def P16555063331181266176.Spec : Prop :=
  ∀ n, P16555063331181266176.a n = A284361 (n + 1)

theorem P16555063331181266176.correct : P16555063331181266176.Spec := by
  intro n
  simp only [A284361, Nat.add_sub_cancel]

end A284361

/-! ## A284361.P3984611933002464081

`∑{d}[n+1, #%(A001204(#)^2)]`
-/

namespace A284361.P3984611933002464081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) (A001204 d ^ 2)

end

end A284361.P3984611933002464081

namespace A284361

/-- `∑{d}[n+1, #%(A001204(#)^2)]` -/
def P3984611933002464081.Spec : Prop :=
  ∀ n, P3984611933002464081.a n = A284361 (n + 1)

end A284361

/-! ## A284361.P18227652706115991131

`A000203(n+1)-A284152(n+1)`
-/

namespace A284361.P18227652706115991131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A284152 (n + 1)

end

end A284361.P18227652706115991131

namespace A284361

/-- `A000203(n+1)-A284152(n+1)` -/
def P18227652706115991131.Spec : Prop :=
  ∀ n, P18227652706115991131.a n = A284361 (n + 1)

end A284361

/-! ## A284361.P2944177782196409882

`A074400(n+1)/2-A284152(n+1)`
-/

namespace A284361.P2944177782196409882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A284152 (n + 1) : ℚ)

end

end A284361.P2944177782196409882

namespace A284361

/-- `A074400(n+1)/2-A284152(n+1)` -/
def P2944177782196409882.Spec : Prop :=
  ∀ n, P2944177782196409882.a n = (A284361 (n + 1) : ℚ)

end A284361

/-! ## A284361.P8495282337020927037

`A000203(n+1)+A109091(n+1)-A284150(n+1)`
-/

namespace A284361.P8495282337020927037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A109091 (n + 1) - A284150 (n + 1))

end

end A284361.P8495282337020927037

namespace A284361

/-- `A000203(n+1)+A109091(n+1)-A284150(n+1)` -/
def P8495282337020927037.Spec : Prop :=
  ∀ n, P8495282337020927037.a n = A284361 (n + 1)

end A284361

/-! ## A284361.P1668104937720045635

`A000203(n+1)-(A284281(n+1)+A284280(n+1))`
-/

namespace A284361.P1668104937720045635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A284281 (n + 1) + A284280 (n + 1))

end

end A284361.P1668104937720045635

namespace A284361

/-- `A000203(n+1)-(A284281(n+1)+A284280(n+1))` -/
def P1668104937720045635.Spec : Prop :=
  ∀ n, P1668104937720045635.a n = A284361 (n + 1)

end A284361

/-! ## A284361.P13383986272214986180

`A026741(A074400(n+1)-2*A284152(n+1))`
-/

namespace A284361.P13383986272214986180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A074400 (n + 1) - 2 * A284152 (n + 1)).toNat

end

end A284361.P13383986272214986180

namespace A284361

/-- `A026741(A074400(n+1)-2*A284152(n+1))` -/
def P13383986272214986180.Spec : Prop :=
  ∀ n, P13383986272214986180.a n = A284361 (n + 1)

end A284361

/-! ## A284361.P1153131856102704748

`A026741(A074400(n+1)-A284152(n+1)-A284152(n+1))`
-/

namespace A284361.P1153131856102704748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A074400 (n + 1) - A284152 (n + 1) - A284152 (n + 1)).toNat

end

end A284361.P1153131856102704748

namespace A284361

/-- `A026741(A074400(n+1)-A284152(n+1)-A284152(n+1))` -/
def P1153131856102704748.Spec : Prop :=
  ∀ n, P1153131856102704748.a n = A284361 (n + 1)

end A284361

/-! ## A284361.P5354583431000660491

`A026741(A074400(n+1))-A284152(n+1)`
-/

namespace A284361.P5354583431000660491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A074400 (n + 1)).toNat - A284152 (n + 1)

end

end A284361.P5354583431000660491

namespace A284361

/-- `A026741(A074400(n+1))-A284152(n+1)` -/
def P5354583431000660491.Spec : Prop :=
  ∀ n, P5354583431000660491.a n = A284361 (n + 1)

end A284361

/-!
# A284362: a(n) = Sum_{d|n, d = 0, 1, or 5 mod 6} d.

The programs for A284362, the canonical program `A284362.P5653031429459134529` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284362 has offset 1).

The definition of A284362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284362.P5653031429459134529

`∑{d}[n+1, #*A047278(#)%2]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284362

/-- `∑{d}[n+1, #*A047278(#)%2]` -/
def P5653031429459134529.Spec : Prop :=
  ∀ n, P5653031429459134529.a n = A284362 (n + 1)

theorem P5653031429459134529.correct : P5653031429459134529.Spec := by
  intro n
  simp only [A284362, Nat.add_sub_cancel]

end A284362

/-! ## A284362.P5124583407537076191

`∑{d}[n+1, #*A047290(#)%2]`
-/

namespace A284362.P5124583407537076191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A047290 d) 2

end

end A284362.P5124583407537076191

namespace A284362

/-- `∑{d}[n+1, #*A047290(#)%2]` -/
def P5124583407537076191.Spec : Prop :=
  ∀ n, P5124583407537076191.a n = A284362 (n + 1)

end A284362

/-! ## A284362.P8699981717945978973

`A146076(n+1)+A131947(n+1)`
-/

namespace A284362.P8699981717945978973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + A131947 (n + 1)

end

end A284362.P8699981717945978973

namespace A284362

/-- `A146076(n+1)+A131947(n+1)` -/
def P8699981717945978973.Spec : Prop :=
  ∀ n, P8699981717945978973.a n = A284362 (n + 1)

end A284362

/-! ## A284362.P129854741989874521

`∑{d}[n+1, #*A171088(#)%2]`
-/

namespace A284362.P129854741989874521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A171088 d) 2

end

end A284362.P129854741989874521

namespace A284362

/-- `∑{d}[n+1, #*A171088(#)%2]` -/
def P129854741989874521.Spec : Prop :=
  ∀ n, P129854741989874521.a n = A284362 (n + 1)

end A284362

/-! ## A284362.P9008818110657043026

`∑{d}[n+1, #*A000035(A030118(#))]`
-/

namespace A284362.P9008818110657043026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000035 (A030118 d).toNat

end

end A284362.P9008818110657043026

namespace A284362

/-- `∑{d}[n+1, #*A000035(A030118(#))]` -/
def P9008818110657043026.Spec : Prop :=
  ∀ n, P9008818110657043026.a n = A284362 (n + 1)

end A284362

/-! ## A284362.P12906294448126508973

`∑{d}[n+1, #*and(1, A014217(#))]`
-/

namespace A284362.P12906294448126508973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.land 1 (A014217 d)

end

end A284362.P12906294448126508973

namespace A284362

/-- `∑{d}[n+1, #*and(1, A014217(#))]` -/
def P12906294448126508973.Spec : Prop :=
  ∀ n, P12906294448126508973.a n = A284362 (n + 1)

end A284362

/-!
# A284364: Fixed point of the morphism 0->1, 1->101010.

The programs for A284364, the canonical program `A284364.P18289447628931741723` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284364 has offset 1).

The definition of A284364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284364.P18289447628931741723

`char[A284366(n+1)-1]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284364

/-- `char[A284366(n+1)-1]` -/
def P18289447628931741723.Spec : Prop :=
  ∀ n, (P18289447628931741723.a n : ℤ) = A284364 (n + 1)

theorem P18289447628931741723.correct : P18289447628931741723.Spec := by
  intro n
  simp only [A284364, Nat.add_sub_cancel]

end A284364

/-! ## A284364.P17985503384712943136

`char[comp[A045749(n+1)+n]]`
-/

namespace A284364.P17985503384712943136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A284364.P17985503384712943136

namespace A284364

/-- `char[comp[A045749(n+1)+n]]` -/
def P17985503384712943136.Spec : Prop :=
  ∀ n, (P17985503384712943136.a n : ℤ) = A284364 (n + 1)

end A284364

/-! ## A284364.P9521221189309535640

`char[comp[A187570(n+1)+n]]`
-/

namespace A284364.P9521221189309535640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187570 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A284364.P9521221189309535640

namespace A284364

/-- `char[comp[A187570(n+1)+n]]` -/
def P9521221189309535640.Spec : Prop :=
  ∀ n, (P9521221189309535640.a n : ℤ) = A284364 (n + 1)

end A284364

/-! ## A284364.P8799168882659080234

`1-char[A284365(n+1)-1]`
-/

namespace A284364.P8799168882659080234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284365 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284364.P8799168882659080234

namespace A284364

/-- `1-char[A284365(n+1)-1]` -/
def P8799168882659080234.Spec : Prop :=
  ∀ n, P8799168882659080234.a n = A284364 (n + 1)

end A284364

/-! ## A284364.P1242959264116885033

`abs(char[A045749(n)-1+n]-1)`
-/

namespace A284364.P1242959264116885033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 n - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1|

end

end A284364.P1242959264116885033

namespace A284364

/-- `abs(char[A045749(n)-1+n]-1)` -/
def P1242959264116885033.Spec : Prop :=
  ∀ n, P1242959264116885033.a n = A284364 (n + 1)

end A284364

/-! ## A284364.P8528162069143811507

`char[A199969(A284366(n+1))]`
-/

namespace A284364.P8528162069143811507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A284366 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284364.P8528162069143811507

namespace A284364

/-- `char[A199969(A284366(n+1))]` -/
def P8528162069143811507.Spec : Prop :=
  ∀ n, (P8528162069143811507.a n : ℤ) = A284364 (n + 1)

end A284364

/-! ## A284364.P3476064784894501964

`char[comp[A284366(A045749(n+1))]]`
-/

namespace A284364.P3476064784894501964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284366 (A045749 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A284364.P3476064784894501964

namespace A284364

/-- `char[comp[A284366(A045749(n+1))]]` -/
def P3476064784894501964.Spec : Prop :=
  ∀ n, (P3476064784894501964.a n : ℤ) = A284364 (n + 1)

end A284364

/-! ## A284364.P618952056094137506

`A195062(A043451(n+2))`
-/

namespace A284364.P618952056094137506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195062 (A043451 (n + 2)).toNat

end

end A284364.P618952056094137506

namespace A284364

/-- `A195062(A043451(n+2))` -/
def P618952056094137506.Spec : Prop :=
  ∀ n, P618952056094137506.a n = A284364 (n + 1)

end A284364

/-!
# A284365: Positions of 0 in A284364; complement of A284366.

The programs for A284365, the canonical program `A284365.P11990704887653612876` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284365 has offset 1).

The definition of A284365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284365.P11990704887653612876

`A187570(n+1)+1+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284365

/-- `A187570(n+1)+1+n` -/
def P11990704887653612876.Spec : Prop :=
  ∀ n, P11990704887653612876.a n = A284365 (n + 1)

theorem P11990704887653612876.correct : P11990704887653612876.Spec := by
  intro n
  simp only [A284365, Nat.add_sub_cancel]

end A284365

/-! ## A284365.P18185209791445125696

`∑[Δ[A045749(n)]+1]`
-/

namespace A284365.P18185209791445125696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284365.P18185209791445125696

namespace A284365

/-- `∑[Δ[A045749(n)]+1]` -/
def P18185209791445125696.Spec : Prop :=
  ∀ n, P18185209791445125696.a n = A284365 (n + 1)

end A284365

/-! ## A284365.P7060108656113452212

`A045749(n+1)+1+n`
-/

namespace A284365.P7060108656113452212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 (n + 1) + 1 + (n : ℤ)

end

end A284365.P7060108656113452212

namespace A284365

/-- `A045749(n+1)+1+n` -/
def P7060108656113452212.Spec : Prop :=
  ∀ n, P7060108656113452212.a n = A284365 (n + 1)

end A284365

/-! ## A284365.P16129459943152564012

`A284366(A045749(n+1))+1`
-/

namespace A284365.P16129459943152564012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284366 (A045749 (n + 1)).toNat + 1

end

end A284365.P16129459943152564012

namespace A284365

/-- `A284366(A045749(n+1))+1` -/
def P16129459943152564012.Spec : Prop :=
  ∀ n, P16129459943152564012.a n = A284365 (n + 1)

end A284365

/-!
# A284366: Positions of 1 in A284364; complement of A284365.

The programs for A284366, the canonical program `A284366.P2946871292571761873` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284366 has offset 1).

The definition of A284366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284366.P1336741284671058132

`comp[A045749(n)+n]`
-/

namespace A284366.P1336741284671058132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A284366.P1336741284671058132

namespace A284366

/-- `comp[A045749(n)+n]` -/
def P1336741284671058132.Spec : Prop :=
  ∀ n, (P1336741284671058132.a n : ℤ) = A284366 (n + 1)

end A284366

/-! ## A284366.P2946871292571761873

`A366860(n)+1+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284366

/-- `A366860(n)+1+n` -/
def P2946871292571761873.Spec : Prop :=
  ∀ n, P2946871292571761873.a n = A284366 (n + 1)

theorem P2946871292571761873.correct : P2946871292571761873.Spec := by
  intro n
  simp only [A284366, Nat.add_sub_cancel]

end A284366

/-! ## A284366.P15514840286268582793

`∑[char[A187570(n+1)]+1]`
-/

namespace A284366.P15514840286268582793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187570 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284366.P15514840286268582793

namespace A284366

/-- `∑[char[A187570(n+1)]+1]` -/
def P15514840286268582793.Spec : Prop :=
  ∀ n, (P15514840286268582793.a n : ℤ) = A284366 (n + 1)

end A284366

/-! ## A284366.P3702845429412458034

`comp[comp[A045750(n+1)]+n]`
-/

namespace A284366.P3702845429412458034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045750 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A284366.P3702845429412458034

namespace A284366

/-- `comp[comp[A045750(n+1)]+n]` -/
def P3702845429412458034.Spec : Prop :=
  ∀ n, (P3702845429412458034.a n : ℤ) = A284366 (n + 1)

end A284366

/-! ## A284366.P6798207224099572165

`comp[comp[A187571(n+1)]+n]`
-/

namespace A284366.P6798207224099572165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187571 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A284366.P6798207224099572165

namespace A284366

/-- `comp[comp[A187571(n+1)]+n]` -/
def P6798207224099572165.Spec : Prop :=
  ∀ n, (P6798207224099572165.a n : ℤ) = A284366 (n + 1)

end A284366

/-! ## A284366.P9812619117550238328

`comp[A284365(n+1)-1]+1`
-/

namespace A284366.P9812619117550238328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284365 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284366.P9812619117550238328

namespace A284366

/-- `comp[A284365(n+1)-1]+1` -/
def P9812619117550238328.Spec : Prop :=
  ∀ n, (P9812619117550238328.a n : ℤ) = A284366 (n + 1)

end A284366

/-! ## A284366.P11625095998093607607

`filter[n+1, A284364(#)]`
-/

namespace A284366.P11625095998093607607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284364 (f1 j) = 1) n)

end

end A284366.P11625095998093607607

namespace A284366

/-- `filter[n+1, A284364(#)]` -/
def P11625095998093607607.Spec : Prop :=
  ∀ n, (P11625095998093607607.a n : ℤ) = A284366 (n + 1)

end A284366

/-! ## A284366.P12620227824733705727

`eq[1, A284364(n+1)]+1`
-/

namespace A284366.P12620227824733705727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284366.P12620227824733705727

namespace A284366

/-- `eq[1, A284364(n+1)]+1` -/
def P12620227824733705727.Spec : Prop :=
  ∀ n, (P12620227824733705727.a n : ℤ) = A284366 (n + 1)

end A284366

/-! ## A284366.P14477929645124240451

`A284365(3*n+1)-(5*n+1)`
-/

namespace A284366.P14477929645124240451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284365 (3 * n + 1) - (5 * n + 1 : ℤ)

end

end A284366.P14477929645124240451

namespace A284366

/-- `A284365(3*n+1)-(5*n+1)` -/
def P14477929645124240451.Spec : Prop :=
  ∀ n, P14477929645124240451.a n = A284366 (n + 1)

end A284366

/-! ## A284366.P2076276194020820559

`A187570(A016777(n))-2*n`
-/

namespace A284366.P2076276194020820559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187570 (A016777 n).toNat - (2 * n : ℤ)

end

end A284366.P2076276194020820559

namespace A284366

/-- `A187570(A016777(n))-2*n` -/
def P2076276194020820559.Spec : Prop :=
  ∀ n, P2076276194020820559.a n = A284366 (n + 1)

end A284366

/-! ## A284366.P4695714667184386901

`A187570(A008585(n+1))-2*(n+1)`
-/

namespace A284366.P4695714667184386901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187570 (A008585 (n + 1)).toNat - (2 * (n + 1) : ℤ)

end

end A284366.P4695714667184386901

namespace A284366

/-- `A187570(A008585(n+1))-2*(n+1)` -/
def P4695714667184386901.Spec : Prop :=
  ∀ n, P4695714667184386901.a n = A284366 (n + 1)

end A284366

/-! ## A284366.P17857254680287715075

`A045749(A016777(n))+A024000(2*n+1)`
-/

namespace A284366.P17857254680287715075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045749 (A016777 n).toNat + A024000 (2 * n + 1)

end

end A284366.P17857254680287715075

namespace A284366

/-- `A045749(A016777(n))+A024000(2*n+1)` -/
def P17857254680287715075.Spec : Prop :=
  ∀ n, P17857254680287715075.a n = A284366 (n + 1)

end A284366

/-!
# A284368: Fixed point of the morphism 0->1, 1->1011.

The programs for A284368, there is no canonical definition to state claims against.
-/

/-! ## A284368.P14455013517592471434

`char[A184484(n+1)-1]`
-/

namespace A284368.P14455013517592471434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184484 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284368.P14455013517592471434

/-! ## A284368.P17920590549310069064

`Δ[a(n-1)+n+1-A184484(a(n-1)+1)]` with `a(0)=0`
-/

namespace A284368.P17920590549310069064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (n + 1 : ℤ) - A184484 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284368.P17920590549310069064

/-! ## A284368.P17477885090962790064

`Δ[A002264(A081834(n+1)-n)]`
-/

namespace A284368.P17477885090962790064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A081834 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284368.P17477885090962790064

/-! ## A284368.P1493444400405092550

`Δ[A008620(A081834(n+1)-n)]`
-/

namespace A284368.P1493444400405092550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A081834 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284368.P1493444400405092550

/-! ## A284368.P3743083227354307249

`Δ[A093697(n+11)]`
-/

namespace A284368.P3743083227354307249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093697 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284368.P3743083227354307249

/-!
# A284369: Fixed point of the morphism 0->1, 1->1001.

The programs for A284369, the canonical program `A284369.P9335494032599712872` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284369 has offset 1).

The definition of A284369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284369.P9335494032599712872

`char[A284371(n+1)-1]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A284369

/-- `char[A284371(n+1)-1]` -/
def P9335494032599712872.Spec : Prop :=
  ∀ n, (P9335494032599712872.a n : ℤ) = A284369 (n + 1)

theorem P9335494032599712872.correct : P9335494032599712872.Spec := by
  intro n
  simp only [A284369, Nat.add_sub_cancel]

end A284369

/-! ## A284369.P7555719479899053264

`char[A086398(n+1)-(n+1)]`
-/

namespace A284369.P7555719479899053264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284369.P7555719479899053264

namespace A284369

/-- `char[A086398(n+1)-(n+1)]` -/
def P7555719479899053264.Spec : Prop :=
  ∀ n, (P7555719479899053264.a n : ℤ) = A284369 (n + 1)

end A284369

/-! ## A284369.P8654789218939428130

`char[A284753(n+1)-(n+2)]`
-/

namespace A284369.P8654789218939428130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284753 (n + 1) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284369.P8654789218939428130

namespace A284369

/-- `char[A284753(n+1)-(n+2)]` -/
def P8654789218939428130.Spec : Prop :=
  ∀ n, (P8654789218939428130.a n : ℤ) = A284369 (n + 1)

end A284369

/-! ## A284369.P12633534946618324720

`A285302(n+1)-A284752(n+1)`
-/

namespace A284369.P12633534946618324720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285302 (n + 1) - A284752 (n + 1)

end

end A284369.P12633534946618324720

namespace A284369

/-- `A285302(n+1)-A284752(n+1)` -/
def P12633534946618324720.Spec : Prop :=
  ∀ n, P12633534946618324720.a n = A284369 (n + 1)

end A284369

/-! ## A284369.P1029632502339585731

`log2(Δ[A284752(n+1)])`
-/

namespace A284369.P1029632502339585731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A284369.P1029632502339585731

namespace A284369

/-- `log2(Δ[A284752(n+1)])` -/
def P1029632502339585731.Spec : Prop :=
  ∀ n, P1029632502339585731.a n = (A284369 (n + 1) : ℝ)

end A284369

/-! ## A284369.P16075255779799347304

`log2(Δ[comp[A086398(n+1)]])`
-/

namespace A284369.P16075255779799347304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)

end

end A284369.P16075255779799347304

namespace A284369

/-- `log2(Δ[comp[A086398(n+1)]])` -/
def P16075255779799347304.Spec : Prop :=
  ∀ n, P16075255779799347304.a n = (A284369 (n + 1) : ℝ)

end A284369

/-! ## A284369.P4587406975745303351

`A001065(Δ[A284752(n+1)])`
-/

namespace A284369.P4587406975745303351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (f1 (n + 1) - f1 n).toNat

end

end A284369.P4587406975745303351

namespace A284369

/-- `A001065(Δ[A284752(n+1)])` -/
def P4587406975745303351.Spec : Prop :=
  ∀ n, P4587406975745303351.a n = A284369 (n + 1)

end A284369

/-! ## A284369.P1043918412913673506

`A001221(Δ[A284752(n+1)])`
-/

namespace A284369.P1043918412913673506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A284369.P1043918412913673506

namespace A284369

/-- `A001221(Δ[A284752(n+1)])` -/
def P1043918412913673506.Spec : Prop :=
  ∀ n, P1043918412913673506.a n = A284369 (n + 1)

end A284369

/-! ## A284369.P8193339323541023085

`A001222(Δ[A284752(n+1)])`
-/

namespace A284369.P8193339323541023085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A284369.P8193339323541023085

namespace A284369

/-- `A001222(Δ[A284752(n+1)])` -/
def P8193339323541023085.Spec : Prop :=
  ∀ n, P8193339323541023085.a n = A284369 (n + 1)

end A284369

/-! ## A284369.P8270816663456375174

`A033619(Δ[A284752(n+1)])`
-/

namespace A284369.P8270816663456375174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (f1 (n + 1) - f1 n).toNat

end

end A284369.P8270816663456375174

namespace A284369

/-- `A033619(Δ[A284752(n+1)])` -/
def P8270816663456375174.Spec : Prop :=
  ∀ n, P8270816663456375174.a n = A284369 (n + 1)

end A284369

/-! ## A284369.P6886225001600525880

`A035363(Δ[A284752(n+1)])`
-/

namespace A284369.P6886225001600525880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (f1 (n + 1) - f1 n).toNat

end

end A284369.P6886225001600525880

namespace A284369

/-- `A035363(Δ[A284752(n+1)])` -/
def P6886225001600525880.Spec : Prop :=
  ∀ n, P6886225001600525880.a n = A284369 (n + 1)

end A284369

/-! ## A284369.P11117395339037010619

`A284751(Δ[A284752(n+1)])`
-/

namespace A284369.P11117395339037010619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (f1 (n + 1) - f1 n).toNat

end

end A284369.P11117395339037010619

namespace A284369

/-- `A284751(Δ[A284752(n+1)])` -/
def P11117395339037010619.Spec : Prop :=
  ∀ n, P11117395339037010619.a n = A284369 (n + 1)

end A284369

/-! ## A284369.P13635414321075843567

`A001221(Δ[comp[A086398(n+1)]])`
-/

namespace A284369.P13635414321075843567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284369.P13635414321075843567

namespace A284369

/-- `A001221(Δ[comp[A086398(n+1)]])` -/
def P13635414321075843567.Spec : Prop :=
  ∀ n, P13635414321075843567.a n = A284369 (n + 1)

end A284369

/-! ## A284369.P9880194511882079877

`A086366(Δ[comp[A086398(n+1)]])`
-/

namespace A284369.P9880194511882079877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086366 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284369.P9880194511882079877

namespace A284369

/-- `A086366(Δ[comp[A086398(n+1)]])` -/
def P9880194511882079877.Spec : Prop :=
  ∀ n, P9880194511882079877.a n = A284369 (n + 1)

end A284369

/-! ## A284369.P15698621890605392257

`A004526(A284752(n+2)-A284752(n+1))`
-/

namespace A284369.P15698621890605392257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A284752 (n + 2) - A284752 (n + 1)).toNat

end

end A284369.P15698621890605392257

namespace A284369

/-- `A004526(A284752(n+2)-A284752(n+1))` -/
def P15698621890605392257.Spec : Prop :=
  ∀ n, P15698621890605392257.a n = A284369 (n + 1)

end A284369

/-! ## A284369.P8183778373360136243

`A285301(A285302(n+1)-1)`
-/

namespace A284369.P8183778373360136243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 (A285302 (n + 1) - 1).toNat

end

end A284369.P8183778373360136243

namespace A284369

/-- `A285301(A285302(n+1)-1)` -/
def P8183778373360136243.Spec : Prop :=
  ∀ n, P8183778373360136243.a n = A284369 (n + 1)

end A284369

/-! ## A284369.P13680051734343835191

`A285301(A284752(n+2)-2)`
-/

namespace A284369.P13680051734343835191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 (A284752 (n + 2) - 2).toNat

end

end A284369.P13680051734343835191

namespace A284369

/-- `A285301(A284752(n+2)-2)` -/
def P13680051734343835191.Spec : Prop :=
  ∀ n, P13680051734343835191.a n = A284369 (n + 1)

end A284369

/-! ## A284369.P17606079926866642435

`A285301(A284752(n+1))`
-/

namespace A284369.P17606079926866642435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 (A284752 (n + 1)).toNat

end

end A284369.P17606079926866642435

namespace A284369

/-- `A285301(A284752(n+1))` -/
def P17606079926866642435.Spec : Prop :=
  ∀ n, P17606079926866642435.a n = A284369 (n + 1)

end A284369

/-! ## A284369.P4846964964656760118

`A284751(A285302(n+1))`
-/

namespace A284369.P4846964964656760118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (A285302 (n + 1)).toNat

end

end A284369.P4846964964656760118

namespace A284369

/-- `A284751(A285302(n+1))` -/
def P4846964964656760118.Spec : Prop :=
  ∀ n, P4846964964656760118.a n = A284369 (n + 1)

end A284369

/-!
# A284370: Positions of 0 in A284369; complement of A284371.

The programs for A284370, the canonical program `A284370.P181059077873080180` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284370 has offset 1).

The definition of A284370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284370.P6313874228782906327

`eq[0, A284369(n+1)]+1`
-/

namespace A284370.P6313874228782906327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284370.P6313874228782906327

namespace A284370

/-- `eq[0, A284369(n+1)]+1` -/
def P6313874228782906327.Spec : Prop :=
  ∀ n, (P6313874228782906327.a n : ℤ) = A284370 (n + 1)

end A284370

/-! ## A284370.P13540952042107993271

`comp[A284371(n+1)-1]+1`
-/

namespace A284370.P13540952042107993271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284371 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284370.P13540952042107993271

namespace A284370

/-- `comp[A284371(n+1)-1]+1` -/
def P13540952042107993271.Spec : Prop :=
  ∀ n, (P13540952042107993271.a n : ℤ) = A284370 (n + 1)

end A284370

/-! ## A284370.P181059077873080180

`A284753(floor(n/2)+1)+n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284370

/-- `A284753(floor(n/2)+1)+n` -/
def P181059077873080180.Spec : Prop :=
  ∀ n, P181059077873080180.a n = A284370 (n + 1)

theorem P181059077873080180.correct : P181059077873080180.Spec := by
  intro n
  simp only [A284370, Nat.add_sub_cancel]

end A284370

/-! ## A284370.P14295615081653222230

`A026364(A004526(n)+1)+A004526(n+1)`
-/

namespace A284370.P14295615081653222230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026364 (A004526 n + 1).toNat + A004526 (n + 1)

end

end A284370.P14295615081653222230

namespace A284370

/-- `A026364(A004526(n)+1)+A004526(n+1)` -/
def P14295615081653222230.Spec : Prop :=
  ∀ n, P14295615081653222230.a n = A284370 (n + 1)

end A284370

/-! ## A284370.P4377146661797862879

`comp[A000027(n+1)*A284369(n+1)]`
-/

namespace A284370.P4377146661797862879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A284369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A284370.P4377146661797862879

namespace A284370

/-- `comp[A000027(n+1)*A284369(n+1)]` -/
def P4377146661797862879.Spec : Prop :=
  ∀ n, (P4377146661797862879.a n : ℤ) = A284370 (n + 1)

end A284370

/-! ## A284370.P1151046395393651601

`lt[char[A284371(n+1)], A057427(n)]`
-/

namespace A284370.P1151046395393651601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284371 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A284370.P1151046395393651601

namespace A284370

/-- `lt[char[A284371(n+1)], A057427(n)]` -/
def P1151046395393651601.Spec : Prop :=
  ∀ n, (P1151046395393651601.a n : ℤ) = A284370 (n + 1)

end A284370

/-!
# A284371: Positions of 1 in A284369; complement of A284370.

The programs for A284371, the canonical program `A284371.P12964631515090121639` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284371 has offset 1).

The definition of A284371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284371.P13580857797719338065

`A086398(n+1)-n`
-/

namespace A284371.P13580857797719338065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 1) - (n : ℤ)

end

end A284371.P13580857797719338065

namespace A284371

/-- `A086398(n+1)-n` -/
def P13580857797719338065.Spec : Prop :=
  ∀ n, P13580857797719338065.a n = A284371 (n + 1)

end A284371

/-! ## A284371.P8971290774835995521

`eq[1, A284369(n+1)]+1`
-/

namespace A284371.P8971290774835995521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284371.P8971290774835995521

namespace A284371

/-- `eq[1, A284369(n+1)]+1` -/
def P8971290774835995521.Spec : Prop :=
  ∀ n, (P8971290774835995521.a n : ℤ) = A284371 (n + 1)

end A284371

/-! ## A284371.P14762979539095999002

`A284753(n+1)-(n+1)`
-/

namespace A284371.P14762979539095999002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284753 (n + 1) - (n + 1 : ℤ)

end

end A284371.P14762979539095999002

namespace A284371

/-- `A284753(n+1)-(n+1)` -/
def P14762979539095999002.Spec : Prop :=
  ∀ n, P14762979539095999002.a n = A284371 (n + 1)

end A284371

/-! ## A284371.P12964631515090121639

`A026364(n+1)-Δ[n²]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284371

/-- `A026364(n+1)-Δ[n²]` -/
def P12964631515090121639.Spec : Prop :=
  ∀ n, P12964631515090121639.a n = A284371 (n + 1)

theorem P12964631515090121639.correct : P12964631515090121639.Spec := by
  intro n
  simp only [A284371, Nat.add_sub_cancel]

end A284371

/-! ## A284371.P8516285901997727932

`∑[2*A284751(n+1)+1]`
-/

namespace A284371.P8516285901997727932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284751 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284371.P8516285901997727932

namespace A284371

/-- `∑[2*A284751(n+1)+1]` -/
def P8516285901997727932.Spec : Prop :=
  ∀ n, P8516285901997727932.a n = A284371 (n + 1)

end A284371

/-! ## A284371.P10156713729371362044

`comp[A284370(n+1)-1]+1`
-/

namespace A284371.P10156713729371362044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284370 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284371.P10156713729371362044

namespace A284371

/-- `comp[A284370(n+1)-1]+1` -/
def P10156713729371362044.Spec : Prop :=
  ∀ n, (P10156713729371362044.a n : ℤ) = A284371 (n + 1)

end A284371

/-! ## A284371.P17697613273313608423

`2*A026363(n+1)-(n+1)`
-/

namespace A284371.P17697613273313608423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026363 (n + 1) - (n + 1 : ℤ)

end

end A284371.P17697613273313608423

namespace A284371

/-- `2*A026363(n+1)-(n+1)` -/
def P17697613273313608423.Spec : Prop :=
  ∀ n, P17697613273313608423.a n = A284371 (n + 1)

end A284371

/-! ## A284371.P15781498642054119093

`A004273(A026363(n+1)-n)+n`
-/

namespace A284371.P15781498642054119093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A026363 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A284371.P15781498642054119093

namespace A284371

/-- `A004273(A026363(n+1)-n)+n` -/
def P15781498642054119093.Spec : Prop :=
  ∀ n, P15781498642054119093.a n = A284371 (n + 1)

end A284371

/-! ## A284371.P4319117415755201679

`A001478(n+1)+A026364(n+1)-n`
-/

namespace A284371.P4319117415755201679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A026364 (n + 1) - (n : ℤ))

end

end A284371.P4319117415755201679

namespace A284371

/-- `A001478(n+1)+A026364(n+1)-n` -/
def P4319117415755201679.Spec : Prop :=
  ∀ n, P4319117415755201679.a n = A284371 (n + 1)

end A284371

/-! ## A284371.P7444446132723887497

`A080903(n+2)-(n+2)`
-/

namespace A284371.P7444446132723887497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080903 (n + 2) - (n + 2 : ℤ)

end

end A284371.P7444446132723887497

namespace A284371

/-- `A080903(n+2)-(n+2)` -/
def P7444446132723887497.Spec : Prop :=
  ∀ n, P7444446132723887497.a n = A284371 (n + 1)

end A284371

/-! ## A284371.P7525979776489239785

`∑[A000045(Δ[A080903(n+1)])]`
-/

namespace A284371.P7525979776489239785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080903 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284371.P7525979776489239785

namespace A284371

/-- `∑[A000045(Δ[A080903(n+1)])]` -/
def P7525979776489239785.Spec : Prop :=
  ∀ n, P7525979776489239785.a n = A284371 (n + 1)

end A284371

/-! ## A284371.P9031469435078260612

`comp[(1-A284369(n+1))*A000027(n+1)]`
-/

namespace A284371.P9031469435078260612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A284369 (n + 1)) * A000027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A284371.P9031469435078260612

namespace A284371

/-- `comp[(1-A284369(n+1))*A000027(n+1)]` -/
def P9031469435078260612.Spec : Prop :=
  ∀ n, (P9031469435078260612.a n : ℤ) = A284371 (n + 1)

end A284371

/-! ## A284371.P1556725416387016673

`A004273(A026363(n+1))-n`
-/

namespace A284371.P1556725416387016673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A026363 (n + 1)).toNat - (n : ℤ)

end

end A284371.P1556725416387016673

namespace A284371

/-- `A004273(A026363(n+1))-n` -/
def P1556725416387016673.Spec : Prop :=
  ∀ n, P1556725416387016673.a n = A284371 (n + 1)

end A284371

/-! ## A284371.P7993388427733297180

`A005408(A026363(n+1)-1)-n`
-/

namespace A284371.P7993388427733297180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A026363 (n + 1) - 1).toNat - (n : ℤ)

end

end A284371.P7993388427733297180

namespace A284371

/-- `A005408(A026363(n+1)-1)-n` -/
def P7993388427733297180.Spec : Prop :=
  ∀ n, P7993388427733297180.a n = A284371 (n + 1)

end A284371

/-! ## A284371.P4790020489184500620

`filter[n+1, A284369(#)]`
-/

namespace A284371.P4790020489184500620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284369 (f1 j) = 1) n)

end

end A284371.P4790020489184500620

namespace A284371

/-- `filter[n+1, A284369(#)]` -/
def P4790020489184500620.Spec : Prop :=
  ∀ n, (P4790020489184500620.a n : ℤ) = A284371 (n + 1)

end A284371

/-! ## A284371.P16917732727199218879

`A023444(A080903(n+2)-n)`
-/

namespace A284371.P16917732727199218879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A080903 (n + 2) - (n : ℤ)).toNat

end

end A284371.P16917732727199218879

namespace A284371

/-- `A023444(A080903(n+2)-n)` -/
def P16917732727199218879.Spec : Prop :=
  ∀ n, P16917732727199218879.a n = A284371 (n + 1)

end A284371

/-! ## A284371.P6051476220152731727

`lt[0, A284751(n+1)]-n`
-/

namespace A284371.P6051476220152731727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A284371.P6051476220152731727

namespace A284371

/-- `lt[0, A284751(n+1)]-n` -/
def P6051476220152731727.Spec : Prop :=
  ∀ n, P6051476220152731727.a n = A284371 (n + 1)

end A284371

/-! ## A284371.P2363046492432359940

`A014681(A284753(n+1))-n`
-/

namespace A284371.P2363046492432359940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A284753 (n + 1)).toNat - (n : ℤ)

end

end A284371.P2363046492432359940

namespace A284371

/-- `A014681(A284753(n+1))-n` -/
def P2363046492432359940.Spec : Prop :=
  ∀ n, P2363046492432359940.a n = A284371 (n + 1)

end A284371

/-!
# A284373: Number of distinct planar connected n-polyhexes having a minimal number of vertices.

The programs for A284373, there is no canonical definition to state claims against.
-/

/-! ## A284373.P6906711799555226148

`A144871(or(A001924(n), A288934(n+1)))`
-/

namespace A284373.P6906711799555226148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (Int.lor (A001924 n) (A288934 (n + 1))).toNat

end

end A284373.P6906711799555226148

/-! ## A284373.P4658750661674975100

`ceil(A176431(3*(n+2))/A023816(3*n+5))`
-/

namespace A284373.P4658750661674975100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176431 (3 * (n + 2)) : ℚ) / (A023816 (3 * n + 5) : ℚ)⌉

end

end A284373.P4658750661674975100

/-! ## A284373.P9246412533699138364

`gcd(A128979(A000793(n)), A348990(n+4))`
-/

namespace A284373.P9246412533699138364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128979 (A000793 n).toNat) (A348990 (n + 4))

end

end A284373.P9246412533699138364

/-! ## A284373.P6001977214299424665

`A362611(A378231(3*n+1)+A048767(n+1))`
-/

namespace A284373.P6001977214299424665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (A378231 (3 * n + 1) + A048767 (n + 1)).toNat

end

end A284373.P6001977214299424665

/-!
# A284374: a(1) = a(2) = 1; a(n) is the largest prime <= (a(n-a(n-1)) + a(n-a(n-2))) for n > 2.

The programs for A284374, the canonical program `A284374.P83058503211766454` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284374 has offset 1).

The definition of A284374 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284374.P83058503211766454

`A007917(a(n-a(n-1))+a(n-a(n-2)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284374

/-- `A007917(a(n-a(n-1))+a(n-a(n-2)))` -/
def P83058503211766454.Spec : Prop :=
  ∀ n, P83058503211766454.a n = A284374 (n + 1)

theorem P83058503211766454.correct : P83058503211766454.Spec := by
  intro n
  simp only [A284374, Nat.add_sub_cancel]

end A284374

/-!
# A284375: Numbers whose product of digits is a power of 0.

The programs for A284375, there is no canonical definition to state claims against.
-/

/-! ## A284375.P14281837299151306036

`lt[A004430(n), 2]`
-/

namespace A284375.P14281837299151306036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004430 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A284375.P14281837299151306036

/-! ## A284375.P2936625743709745168

`lt[A007954(n), 2]`
-/

namespace A284375.P2936625743709745168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A284375.P2936625743709745168

/-! ## A284375.P5434574063921616698

`lt[abs(A187844(n)), 2]`
-/

namespace A284375.P5434574063921616698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187844 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A284375.P5434574063921616698

/-! ## A284375.P8817683439584126830

`eq[n+1, A097385(n)]`
-/

namespace A284375.P8817683439584126830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097385 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284375.P8817683439584126830

/-! ## A284375.P17616961106572995917

`lt[A098736(n), n+1]`
-/

namespace A284375.P17616961106572995917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A284375.P17616961106572995917

/-! ## A284375.P17992344956424521982

`lt[n, A070565(n)+2]`
-/

namespace A284375.P17992344956424521982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A284375.P17992344956424521982

/-! ## A284375.P12721315710813417030

`lt[A230099(n), n+2]`
-/

namespace A284375.P12721315710813417030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A284375.P12721315710813417030

/-! ## A284375.P15100152676309008120

`lt[A355223(A227362(n)), 2]`
-/

namespace A284375.P15100152676309008120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 (A227362 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A284375.P15100152676309008120

/-! ## A284375.P18003569821232251362

`eq[A004430(n), A168046(n)]`
-/

namespace A284375.P18003569821232251362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284375.P18003569821232251362

/-! ## A284375.P14607338980192334093

`eq[A007954(n), A168046(n)]`
-/

namespace A284375.P14607338980192334093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284375.P14607338980192334093

/-!
# A284379: Numbers k with digits 3 and 5 only.

The programs for A284379, there is no canonical definition to state claims against.
-/

/-! ## A284379.P7754177331855340111

`A032810(n+1)+A007931(n+1)`
-/

namespace A284379.P7754177331855340111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1) + A007931 (n + 1)

end

end A284379.P7754177331855340111

/-! ## A284379.P15305971540185279999

`A284920(n+1)+A256077(n+1)`
-/

namespace A284379.P15305971540185279999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284920 (n + 1) + A256077 (n + 1)

end

end A284379.P15305971540185279999

/-! ## A284379.P15744778368738143431

`A284971(n+1)-A007931(n+1)`
-/

namespace A284379.P15744778368738143431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1) - A007931 (n + 1)

end

end A284379.P15744778368738143431

/-! ## A284379.P5251433265162251989

`A284381(n+1)-A032810(n+1)`
-/

namespace A284379.P5251433265162251989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284381 (n + 1) - A032810 (n + 1)

end

end A284379.P5251433265162251989

/-! ## A284379.P9685723632694901123

`A284636(n+1)-A032834(n+1)`
-/

namespace A284379.P9685723632694901123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284636 (n + 1) - A032834 (n + 1)

end

end A284379.P9685723632694901123

/-! ## A284379.P4234956212431327697

`A284973(n+1)-A032822(n+1)`
-/

namespace A284379.P4234956212431327697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1) - A032822 (n + 1)

end

end A284379.P4234956212431327697

/-! ## A284379.P3666211491589779815

`A284972(n+1)-A032917(n+1)`
-/

namespace A284379.P3666211491589779815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284972 (n + 1) - A032917 (n + 1)

end

end A284379.P3666211491589779815

/-! ## A284379.P8962380543224238117

`A284634(n+1)-A256077(n+1)`
-/

namespace A284379.P8962380543224238117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284634 (n + 1) - A256077 (n + 1)

end

end A284379.P8962380543224238117

/-! ## A284379.P12262363157692830663

`A284382(n+1)-A284920(n+1)`
-/

namespace A284379.P12262363157692830663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1) - A284920 (n + 1)

end

end A284379.P12262363157692830663

/-! ## A284379.P1814287622428301481

`A256077(n+1)+2*A007931(n+1)`
-/

namespace A284379.P1814287622428301481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (n + 1) + 2 * A007931 (n + 1)

end

end A284379.P1814287622428301481

/-! ## A284379.P10398621206527691992

`A032917(n+1)+2*A256077(n+1)`
-/

namespace A284379.P10398621206527691992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1) + 2 * A256077 (n + 1)

end

end A284379.P10398621206527691992

/-! ## A284379.P13093762132783585881

`2*A032810(n+1)-A256077(n+1)`
-/

namespace A284379.P13093762132783585881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032810 (n + 1) - A256077 (n + 1)

end

end A284379.P13093762132783585881

/-! ## A284379.P10384099407500617696

`(A284381(n+1)+A007931(n+1))/2`
-/

namespace A284379.P10384099407500617696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284381 (n + 1) + A007931 (n + 1) : ℚ) / 2

end

end A284379.P10384099407500617696

/-! ## A284379.P14662212359384081050

`A284382(n+1)-2*A007931(n+1)`
-/

namespace A284379.P14662212359384081050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1) - 2 * A007931 (n + 1)

end

end A284379.P14662212359384081050

/-! ## A284379.P9390168580721136610

`A007931(n+1)+A284634(n+1)/2`
-/

namespace A284379.P9390168580721136610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007931 (n + 1) : ℚ) + (A284634 (n + 1) : ℚ) / 2

end

end A284379.P9390168580721136610

/-! ## A284379.P13178865696780840048

`(A284633(n+1)+A032834(n+1))/2`
-/

namespace A284379.P13178865696780840048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284633 (n + 1) + A032834 (n + 1) : ℚ) / 2

end

end A284379.P13178865696780840048

/-! ## A284379.P12221737210693365507

`A032810(n+1)+A284920(n+1)/2`
-/

namespace A284379.P12221737210693365507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032810 (n + 1) : ℚ) + (A284920 (n + 1) : ℚ) / 2

end

end A284379.P12221737210693365507

/-! ## A284379.P2318809500344339399

`(A284971(n+1)+A032810(n+1))/2`
-/

namespace A284379.P2318809500344339399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284971 (n + 1) + A032810 (n + 1) : ℚ) / 2

end

end A284379.P2318809500344339399

/-! ## A284379.P3213170701890469094

`2*A284920(n+1)-A032917(n+1)`
-/

namespace A284379.P3213170701890469094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284920 (n + 1) - A032917 (n + 1)

end

end A284379.P3213170701890469094

/-! ## A284379.P13865946532729208148

`(A256290(n+1)+A072961(n+1))/2`
-/

namespace A284379.P13865946532729208148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256290 (n + 1) + A072961 (n + 1) : ℚ) / 2

end

end A284379.P13865946532729208148

/-!
# A284380: Numbers k with digits 5 and 7 only.

The programs for A284380, there is no canonical definition to state claims against.
-/

/-! ## A284380.P4624123986629621617

`A032834(n+1)+A032810(n+1)`
-/

namespace A284380.P4624123986629621617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + A032810 (n + 1)

end

end A284380.P4624123986629621617

/-! ## A284380.P385991166127745198

`A256290(n+1)+A007931(n+1)`
-/

namespace A284380.P385991166127745198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + A007931 (n + 1)

end

end A284380.P385991166127745198

/-! ## A284380.P13865131771657932730

`A284634(n+1)+A256077(n+1)`
-/

namespace A284380.P13865131771657932730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284634 (n + 1) + A256077 (n + 1)

end

end A284380.P13865131771657932730

/-! ## A284380.P14121686555045877314

`A284636(n+1)-A007931(n+1)`
-/

namespace A284380.P14121686555045877314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284636 (n + 1) - A007931 (n + 1)

end

end A284380.P14121686555045877314

/-! ## A284380.P9894911497423402298

`A284635(n+1)-A256077(n+1)`
-/

namespace A284380.P9894911497423402298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284635 (n + 1) - A256077 (n + 1)

end

end A284380.P9894911497423402298

/-! ## A284380.P5664883604811176790

`A256077(n+1)+2*A032810(n+1)`
-/

namespace A284380.P5664883604811176790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (n + 1) + 2 * A032810 (n + 1)

end

end A284380.P5664883604811176790

/-! ## A284380.P9860646562458829953

`A284379(n+1)+2*A256077(n+1)`
-/

namespace A284380.P9860646562458829953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1) + 2 * A256077 (n + 1)

end

end A284380.P9860646562458829953

/-! ## A284380.P16417004807266195372

`2*A032834(n+1)-A256077(n+1)`
-/

namespace A284380.P16417004807266195372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032834 (n + 1) - A256077 (n + 1)

end

end A284380.P16417004807266195372

/-! ## A284380.P1923372153910597974

`2*A284379(n+1)-A032917(n+1)`
-/

namespace A284380.P1923372153910597974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284379 (n + 1) - A032917 (n + 1)

end

end A284380.P1923372153910597974

/-! ## A284380.P1282276892538753060

`A032810(n+1)+A284635(n+1)/2`
-/

namespace A284380.P1282276892538753060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032810 (n + 1) : ℚ) + (A284635 (n + 1) : ℚ) / 2

end

end A284380.P1282276892538753060

/-! ## A284380.P1059252266631839404

`A032834(n+1)+A284634(n+1)/2`
-/

namespace A284380.P1059252266631839404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032834 (n + 1) : ℚ) + (A284634 (n + 1) : ℚ) / 2

end

end A284380.P1059252266631839404

/-! ## A284380.P10600185911690048435

`2*A143967(n+1)-A276039(n+1)`
-/

namespace A284380.P10600185911690048435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143967 (n + 1) - A276039 (n + 1)

end

end A284380.P10600185911690048435

/-! ## A284380.P4652828565755834681

`2*A284971(n+1)-A143967(n+1)`
-/

namespace A284380.P4652828565755834681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284971 (n + 1) - A143967 (n + 1)

end

end A284380.P4652828565755834681

/-! ## A284380.P10872590901748419248

`(A284381(n+1)+A256291(n+1))/2`
-/

namespace A284380.P10872590901748419248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284381 (n + 1) + A256291 (n + 1) : ℚ) / 2

end

end A284380.P10872590901748419248

/-! ## A284380.P15206932864651484471

`(A284636(n+1)+A256290(n+1))/2`
-/

namespace A284380.P15206932864651484471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284636 (n + 1) + A256290 (n + 1) : ℚ) / 2

end

end A284380.P15206932864651484471

/-! ## A284380.P16487227963043350585

`A285011(n+1)-2*A256077(n+1)`
-/

namespace A284380.P16487227963043350585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285011 (n + 1) - 2 * A256077 (n + 1)

end

end A284380.P16487227963043350585

/-! ## A284380.P477481369276501480

`A256290(n+1)+A284920(n+1)/2`
-/

namespace A284380.P477481369276501480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256290 (n + 1) : ℚ) + (A284920 (n + 1) : ℚ) / 2

end

end A284380.P477481369276501480

/-! ## A284380.P6368436763191165136

`2*A284381(n+1)-A284382(n+1)`
-/

namespace A284380.P6368436763191165136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284381 (n + 1) - A284382 (n + 1)

end

end A284380.P6368436763191165136

/-! ## A284380.P11769575370372513681

`2*A284634(n+1)-A284379(n+1)`
-/

namespace A284380.P11769575370372513681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284634 (n + 1) - A284379 (n + 1)

end

end A284380.P11769575370372513681

/-! ## A284380.P17159640902271498057

`(A284635(n+1)+A284634(n+1))/2`
-/

namespace A284380.P17159640902271498057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284635 (n + 1) + A284634 (n + 1) : ℚ) / 2

end

end A284380.P17159640902271498057

/-!
# A284381: Numbers k with digits 5 and 8 only.

The programs for A284381, there is no canonical definition to state claims against.
-/

/-! ## A284381.P840448895220915202

`(A284380(n+1)+A284382(n+1))/2`
-/

namespace A284381.P840448895220915202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284380 (n + 1) + A284382 (n + 1) : ℚ) / 2

end

end A284381.P840448895220915202

/-! ## A284381.P14047509335758698322

`A256290(n+1)+A032917(n+1)`
-/

namespace A284381.P14047509335758698322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + A032917 (n + 1)

end

end A284381.P14047509335758698322

/-! ## A284381.P1881405824092543422

`A284634(n+1)+A007931(n+1)`
-/

namespace A284381.P1881405824092543422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284634 (n + 1) + A007931 (n + 1)

end

end A284381.P1881405824092543422

/-! ## A284381.P5557889979802479206

`A284379(n+1)+A032810(n+1)`
-/

namespace A284381.P5557889979802479206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1) + A032810 (n + 1)

end

end A284381.P5557889979802479206

/-! ## A284381.P8961612190450295139

`A284920(n+1)+A032834(n+1)`
-/

namespace A284381.P8961612190450295139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284920 (n + 1) + A032834 (n + 1)

end

end A284381.P8961612190450295139

/-! ## A284381.P10551591219131177145

`A284971(n+1)+A256077(n+1)`
-/

namespace A284381.P10551591219131177145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1) + A256077 (n + 1)

end

end A284381.P10551591219131177145

/-! ## A284381.P610988272546720099

`A284636(n+1)-A256077(n+1)`
-/

namespace A284381.P610988272546720099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284636 (n + 1) - A256077 (n + 1)

end

end A284381.P610988272546720099

/-! ## A284381.P10679760098543945333

`A007931(n+1)+2*A032810(n+1)`
-/

namespace A284381.P10679760098543945333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + 2 * A032810 (n + 1)

end

end A284381.P10679760098543945333

/-! ## A284381.P16092397016843667019

`A032834(n+1)+2*A007931(n+1)`
-/

namespace A284381.P16092397016843667019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + 2 * A007931 (n + 1)

end

end A284381.P16092397016843667019

/-! ## A284381.P12423184305736051643

`A284633(n+1)+2*A256077(n+1)`
-/

namespace A284381.P12423184305736051643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284633 (n + 1) + 2 * A256077 (n + 1)

end

end A284381.P12423184305736051643

/-! ## A284381.P4456061561824102870

`2*A284379(n+1)-A007931(n+1)`
-/

namespace A284381.P4456061561824102870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284379 (n + 1) - A007931 (n + 1)

end

end A284381.P4456061561824102870

/-! ## A284381.P9828577165986288521

`2*A284634(n+1)-A032834(n+1)`
-/

namespace A284381.P9828577165986288521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284634 (n + 1) - A032834 (n + 1)

end

end A284381.P9828577165986288521

/-! ## A284381.P8771312940191773692

`A032834(n+1)+A284972(n+1)/2`
-/

namespace A284381.P8771312940191773692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032834 (n + 1) : ℚ) + (A284972 (n + 1) : ℚ) / 2

end

end A284381.P8771312940191773692

/-! ## A284381.P14046694486395143687

`(A285011(n+1)+A143967(n+1))/2`
-/

namespace A284381.P14046694486395143687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285011 (n + 1) + A143967 (n + 1) : ℚ) / 2

end

end A284381.P14046694486395143687

/-! ## A284381.P15793038352173950348

`2*A284380(n+1)-A256291(n+1)`
-/

namespace A284381.P15793038352173950348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284380 (n + 1) - A256291 (n + 1)

end

end A284381.P15793038352173950348

/-! ## A284381.P10726380250529793556

`(A284973(n+1)+A256292(n+1))/2`
-/

namespace A284381.P10726380250529793556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284973 (n + 1) + A256292 (n + 1) : ℚ) / 2

end

end A284381.P10726380250529793556

/-! ## A284381.P5955608579364764376

`A284379(n+1)+A284634(n+1)/2`
-/

namespace A284381.P5955608579364764376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284379 (n + 1) : ℚ) + (A284634 (n + 1) : ℚ) / 2

end

end A284381.P5955608579364764376

/-! ## A284381.P7170901702706005512

`A284634(n+1)+A284920(n+1)/2`
-/

namespace A284381.P7170901702706005512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284634 (n + 1) : ℚ) + (A284920 (n + 1) : ℚ) / 2

end

end A284381.P7170901702706005512

/-! ## A284381.P16069114291758875967

`A032834(n+1)+A143967(n+1)-A032917(n+1)`
-/

namespace A284381.P16069114291758875967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1) + (A143967 (n + 1) - A032917 (n + 1))

end

end A284381.P16069114291758875967

/-! ## A284381.P1319171821262272544

`A256290(n+1)+A284971(n+1)-A032834(n+1)`
-/

namespace A284381.P1319171821262272544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + (A284971 (n + 1) - A032834 (n + 1))

end

end A284381.P1319171821262272544

/-!
# A284382: Numbers k with digits 5 and 9 only.

The programs for A284382, there is no canonical definition to state claims against.
-/

/-! ## A284382.P2292393080625895572

`A072961(n+1)+A032834(n+1)`
-/

namespace A284382.P2292393080625895572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072961 (n + 1) + A032834 (n + 1)

end

end A284382.P2292393080625895572

/-! ## A284382.P15258268434978470281

`A256290(n+1)+A032822(n+1)`
-/

namespace A284382.P15258268434978470281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256290 (n + 1) + A032822 (n + 1)

end

end A284382.P15258268434978470281

/-! ## A284382.P14944073128964533795

`A284971(n+1)+A007931(n+1)`
-/

namespace A284382.P14944073128964533795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284971 (n + 1) + A007931 (n + 1)

end

end A284382.P14944073128964533795

/-! ## A284382.P5446408702708545593

`A284633(n+1)+A032810(n+1)`
-/

namespace A284382.P5446408702708545593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284633 (n + 1) + A032810 (n + 1)

end

end A284382.P5446408702708545593

/-! ## A284382.P1423035029523498671

`A284634(n+1)+A032917(n+1)`
-/

namespace A284382.P1423035029523498671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284634 (n + 1) + A032917 (n + 1)

end

end A284382.P1423035029523498671

/-! ## A284382.P9846664361026489823

`A284972(n+1)+A256077(n+1)`
-/

namespace A284382.P9846664361026489823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284972 (n + 1) + A256077 (n + 1)

end

end A284382.P9846664361026489823

/-! ## A284382.P9659791208574215619

`A284920(n+1)+A284379(n+1)`
-/

namespace A284382.P9659791208574215619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284920 (n + 1) + A284379 (n + 1)

end

end A284382.P9659791208574215619

/-! ## A284382.P650592216240150095

`A032917(n+1)+2*A032810(n+1)`
-/

namespace A284382.P650592216240150095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1) + 2 * A032810 (n + 1)

end

end A284382.P650592216240150095

/-! ## A284382.P11346756168465944654

`A284379(n+1)+2*A007931(n+1)`
-/

namespace A284382.P11346756168465944654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1) + 2 * A007931 (n + 1)

end

end A284382.P11346756168465944654

/-! ## A284382.P10297460396368985345

`A143967(n+1)+2*A256077(n+1)`
-/

namespace A284382.P10297460396368985345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1) + 2 * A256077 (n + 1)

end

end A284382.P10297460396368985345

/-! ## A284382.P16642288432485332099

`A256077(n+1)+2*A284920(n+1)`
-/

namespace A284382.P16642288432485332099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (n + 1) + 2 * A284920 (n + 1)

end

end A284382.P16642288432485332099

/-! ## A284382.P8520936433525347727

`2*A284633(n+1)-A032917(n+1)`
-/

namespace A284382.P8520936433525347727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284633 (n + 1) - A032917 (n + 1)

end

end A284382.P8520936433525347727

/-! ## A284382.P18110220915002533986

`2*A284972(n+1)-A143967(n+1)`
-/

namespace A284382.P18110220915002533986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284972 (n + 1) - A143967 (n + 1)

end

end A284382.P18110220915002533986

/-! ## A284382.P3518804411200735150

`2*A284379(n+1)-A256077(n+1)`
-/

namespace A284382.P3518804411200735150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284379 (n + 1) - A256077 (n + 1)

end

end A284382.P3518804411200735150

/-! ## A284382.P18336558962033762529

`2*A284381(n+1)-A284380(n+1)`
-/

namespace A284382.P18336558962033762529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284381 (n + 1) - A284380 (n + 1)

end

end A284382.P18336558962033762529

/-! ## A284382.P5849037070431973820

`A284633(n+1)+A284634(n+1)/2`
-/

namespace A284382.P5849037070431973820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284633 (n + 1) : ℚ) + (A284634 (n + 1) : ℚ) / 2

end

end A284382.P5849037070431973820

/-! ## A284382.P13708178564635446557

`A284634(n+1)+A284632(n+1)/2`
-/

namespace A284382.P13708178564635446557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284634 (n + 1) : ℚ) + (A284632 (n + 1) : ℚ) / 2

end

end A284382.P13708178564635446557

/-! ## A284382.P11789078530510874157

`2*A284971(n+1)-A284379(n+1)`
-/

namespace A284382.P11789078530510874157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284971 (n + 1) - A284379 (n + 1)

end

end A284382.P11789078530510874157

/-! ## A284382.P2827849733678507434

`A284379(n+1)+A284972(n+1)/2`
-/

namespace A284382.P2827849733678507434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284379 (n + 1) : ℚ) + (A284972 (n + 1) : ℚ) / 2

end

end A284382.P2827849733678507434

/-! ## A284382.P16462592612149369086

`A284971(n+1)+A284920(n+1)/2`
-/

namespace A284382.P16462592612149369086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284971 (n + 1) : ℚ) + (A284920 (n + 1) : ℚ) / 2

end

end A284382.P16462592612149369086

/-!
# A284383: a(1) = 1, a(2) = 2, a(3) = 3, a(4) = 2; a(n) is the largest composite number <= (a(n-a(n-1)) + a(n-a(n-2))) for n > 4.

The programs for A284383, there is no canonical definition to state claims against.
-/

/-! ## A284383.P8958163418889460976

`A265745((n+1)²*A373320(n+1))`
-/

namespace A284383.P8958163418889460976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (((n + 1) ^ 2 : ℤ) * A373320 (n + 1)).toNat

end

end A284383.P8958163418889460976

/-! ## A284383.P11011738572897683336

`A005812(lcm(A105739(n+1), A305561(n)))`
-/

namespace A284383.P11011738572897683336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (Int.lcm (A105739 (n + 1)) (A305561 n))

end

end A284383.P11011738572897683336

/-! ## A284383.P4185703399956088064

`A333355(floor(5^(n/2)))+2^(n-∑[val(n+1, 2)])`
-/

namespace A284383.P4185703399956088064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333355 ⌊(5 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋.toNat : ℚ) + (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A284383.P4185703399956088064

/-! ## A284383.P15752572787139063439

`A094528(A323041(n+1))`
-/

namespace A284383.P15752572787139063439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094528 (A323041 (n + 1)).toNat

end

end A284383.P15752572787139063439

/-!
# A284384: Alternate A167381(n), A167381(n) + 1.

The programs for A284384, there is no canonical definition to state claims against.
-/

/-! ## A284384.P10811942511700702064

`lt[A130403(2*n+3), 4]-floor(atan(n))`
-/

namespace A284384.P10811942511700702064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130403 (2 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - ⌊Real.arctan (n : ℝ)⌋

end

end A284384.P10811942511700702064

/-! ## A284384.P7542238466556108830

`∑[A023416(A027444(A035363(n)))]`
-/

namespace A284384.P7542238466556108830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A027444 (A035363 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284384.P7542238466556108830

/-! ## A284384.P10450307282309311167

`A120440(∑[A063435(A159287(n))])`
-/

namespace A284384.P10450307282309311167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 (A159287 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120440 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284384.P10450307282309311167

/-! ## A284384.P8488511864090875204

`val(∏[A353735(n+1)], 8)`
-/

namespace A284384.P8488511864090875204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat 8

end

end A284384.P8488511864090875204

/-!
# A284386: Fixed point of the morphism 0->1, 1->1101.

The programs for A284386, there is no canonical definition to state claims against.
-/

/-! ## A284386.P5746872795624776226

`char[A184482(n+1)-1]`
-/

namespace A284386.P5746872795624776226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184482 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284386.P5746872795624776226

/-! ## A284386.P13818603875249204479

`char[comp[A184483(n+1)-1]]`
-/

namespace A284386.P13818603875249204479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184483 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A284386.P13818603875249204479

/-! ## A284386.P15759494524470822037

`char[A081834(n+1)-(A005408(n)+1)]`
-/

namespace A284386.P15759494524470822037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1) - (A005408 n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284386.P15759494524470822037

/-! ## A284386.P16762447412585219752

`char[A081834(n+1)-A005843(n+1)]`
-/

namespace A284386.P16762447412585219752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1) - A005843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284386.P16762447412585219752

/-! ## A284386.P15607362749047603330

`char[A081834(n+1)-(A016789(n)-n)]`
-/

namespace A284386.P15607362749047603330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1) - (A016789 n - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284386.P15607362749047603330

/-! ## A284386.P14216726029224176516

`Δ[A002264(A184484(n+1)+n)]`
-/

namespace A284386.P14216726029224176516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A184484 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284386.P14216726029224176516

/-! ## A284386.P11460816474972131834

`Δ[A008620(A184484(n+1)+n)]`
-/

namespace A284386.P11460816474972131834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A184484 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284386.P11460816474972131834

/-!
# A284387: {010->2}-transform of the infinite Fibonacci word A003849.

The programs for A284387, the canonical program `A284387.P4206943026406952205` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284387 has offset 1).

The definition of A284387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284387.P4206943026406952205

`A001468(∑[A286746(n+1)])-A003849(a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284387

/-- `A001468(∑[A286746(n+1)])-A003849(a(n-1))` -/
def P4206943026406952205.Spec : Prop :=
  ∀ n, P4206943026406952205.a n = A284387 (n + 1)

theorem P4206943026406952205.correct : P4206943026406952205.Spec := by
  intro n
  simp only [A284387, Nat.add_sub_cancel]

end A284387

/-! ## A284387.P17639668892022005291

`A284749(A284749(n+2)+a(n-1)+a(n-1)+1)` with `a(0)=2`
-/

namespace A284387.P17639668892022005291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A284749 (A284749 (n + 2) + (a (n - 1) + a (n - 1)) + 1).toNat

end

end A284387.P17639668892022005291

namespace A284387

/-- `A284749(A284749(n+2)+a(n-1)+a(n-1)+1)` -/
def P17639668892022005291.Spec : Prop :=
  ∀ n, P17639668892022005291.a n = A284387 (n + 1)

end A284387

/-! ## A284387.P12805618601649401079

`A262028(Δ[A287770(n+1)]+1)-A059581(a(n-1)+1)` with `a(0)=2`
-/

namespace A284387.P12805618601649401079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A262028 (f1 (n + 1) - f1 n + 1).toNat - A059581 (a (n - 1) + 1).toNat

end

end A284387.P12805618601649401079

namespace A284387

/-- `A262028(Δ[A287770(n+1)]+1)-A059581(a(n-1)+1)` -/
def P12805618601649401079.Spec : Prop :=
  ∀ n, P12805618601649401079.a n = A284387 (n + 1)

end A284387

/-! ## A284387.P15231721701111505705

`A285677(A182760(n+1)+2)`
-/

namespace A284387.P15231721701111505705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285677 (A182760 (n + 1) + 2).toNat

end

end A284387.P15231721701111505705

namespace A284387

/-- `A285677(A182760(n+1)+2)` -/
def P15231721701111505705.Spec : Prop :=
  ∀ n, P15231721701111505705.a n = A284387 (n + 1)

end A284387

/-! ## A284387.P9308885052991433146

`A285677(A285681(n+3)-1)`
-/

namespace A284387.P9308885052991433146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285677 (A285681 (n + 3) - 1).toNat

end

end A284387.P9308885052991433146

namespace A284387

/-- `A285677(A285681(n+3)-1)` -/
def P9308885052991433146.Spec : Prop :=
  ∀ n, P9308885052991433146.a n = A284387 (n + 1)

end A284387

/-! ## A284387.P16410214928706444946

`A284749(3*3*(22*n+4))`
-/

namespace A284387.P16410214928706444946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (3 * (3 * (22 * n + 4)))

end

end A284387.P16410214928706444946

namespace A284387

/-- `A284749(3*3*(22*n+4))` -/
def P16410214928706444946.Spec : Prop :=
  ∀ n, P16410214928706444946.a n = A284387 (n + 1)

end A284387

/-!
# A284388: 0-limiting word of the morphism 0 -> 1, 1 -> 001.

The programs for A284388, the canonical program `A284388.P4360297033908615493` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284388 has offset 1).

The definition of A284388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284388.P13871590839982921873

`char[comp[n*and(n, -n)]-n]`
-/

namespace A284388.P13871590839982921873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284388.P13871590839982921873

namespace A284388

/-- `char[comp[n*and(n, -n)]-n]` -/
def P13871590839982921873.Spec : Prop :=
  ∀ n, (P13871590839982921873.a n : ℤ) = A284388 (n + 1)

end A284388

/-! ## A284388.P6659975993907192420

`char[eq[0, xor(n, n-1)%3]-n]`
-/

namespace A284388.P6659975993907192420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284388.P6659975993907192420

namespace A284388

/-- `char[eq[0, xor(n, n-1)%3]-n]` -/
def P6659975993907192420.Spec : Prop :=
  ∀ n, (P6659975993907192420.a n : ℤ) = A284388 (n + 1)

end A284388

/-! ## A284388.P7503984787046004303

`char[comp[or(n, val(n+2, 2))]+2-n]`
-/

namespace A284388.P7503984787046004303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 2 : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284388.P7503984787046004303

namespace A284388

/-- `char[comp[or(n, val(n+2, 2))]+2-n]` -/
def P7503984787046004303.Spec : Prop :=
  ∀ n, (P7503984787046004303.a n : ℤ) = A284388 (n + 1)

end A284388

/-! ## A284388.P13369114880307298162

`char[lt[0, val(n+1, 2)%2]-n+1]`
-/

namespace A284388.P13369114880307298162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < f3 j) n : ℤ) - (n : ℤ) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284388.P13369114880307298162

namespace A284388

/-- `char[lt[0, val(n+1, 2)%2]-n+1]` -/
def P13369114880307298162.Spec : Prop :=
  ∀ n, (P13369114880307298162.a n : ℤ) = A284388 (n + 1)

end A284388

/-! ## A284388.P10444437214558229001

`char[A284393(n+2)]`
-/

namespace A284388.P10444437214558229001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284393 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284388.P10444437214558229001

namespace A284388

/-- `char[A284393(n+2)]` -/
def P10444437214558229001.Spec : Prop :=
  ∀ n, (P10444437214558229001.a n : ℤ) = A284388 (n + 1)

end A284388

/-! ## A284388.P16496022248882050921

`char[A003156(n+1)+1]`
-/

namespace A284388.P16496022248882050921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284388.P16496022248882050921

namespace A284388

/-- `char[A003156(n+1)+1]` -/
def P16496022248882050921.Spec : Prop :=
  ∀ n, (P16496022248882050921.a n : ℤ) = A284388 (n + 1)

end A284388

/-! ## A284388.P11589761165853802620

`char[A036554(n+1)-n]`
-/

namespace A284388.P11589761165853802620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284388.P11589761165853802620

namespace A284388

/-- `char[A036554(n+1)-n]` -/
def P11589761165853802620.Spec : Prop :=
  ∀ n, (P11589761165853802620.a n : ℤ) = A284388 (n + 1)

end A284388

/-! ## A284388.P1752077000101442156

`char[∑[A080426(n+1)]+1]`
-/

namespace A284388.P1752077000101442156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080426 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284388.P1752077000101442156

namespace A284388

/-- `char[∑[A080426(n+1)]+1]` -/
def P1752077000101442156.Spec : Prop :=
  ∀ n, (P1752077000101442156.a n : ℤ) = A284388 (n + 1)

end A284388

/-! ## A284388.P12461201996417781518

`char[A079523(n+1)+1-n]`
-/

namespace A284388.P12461201996417781518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1) + (1 - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284388.P12461201996417781518

namespace A284388

/-- `char[A079523(n+1)+1-n]` -/
def P12461201996417781518.Spec : Prop :=
  ∀ n, (P12461201996417781518.a n : ℤ) = A284388 (n + 1)

end A284388

/-! ## A284388.P2501012077721688555

`char[A162648(n+1)+2-n]`
-/

namespace A284388.P2501012077721688555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1) + (2 - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284388.P2501012077721688555

namespace A284388

/-- `char[A162648(n+1)+2-n]` -/
def P2501012077721688555.Spec : Prop :=
  ∀ n, (P2501012077721688555.a n : ℤ) = A284388 (n + 1)

end A284388

/-! ## A284388.P6670893915078861477

`char[2*A003159(n+1)-n]`
-/

namespace A284388.P6670893915078861477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003159 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284388.P6670893915078861477

namespace A284388

/-- `char[2*A003159(n+1)-n]` -/
def P6670893915078861477.Spec : Prop :=
  ∀ n, (P6670893915078861477.a n : ℤ) = A284388 (n + 1)

end A284388

/-! ## A284388.P15773843837791816615

`char[A003158(n+1)-2*n]`
-/

namespace A284388.P15773843837791816615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (n + 1) - (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284388.P15773843837791816615

namespace A284388

/-- `char[A003158(n+1)-2*n]` -/
def P15773843837791816615.Spec : Prop :=
  ∀ n, (P15773843837791816615.a n : ℤ) = A284388 (n + 1)

end A284388

/-! ## A284388.P3615616234986461178

`char[A036552(2*(n+1))-n]`
-/

namespace A284388.P3615616234986461178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036552 (2 * (n + 1)) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284388.P3615616234986461178

namespace A284388

/-- `char[A036552(2*(n+1))-n]` -/
def P3615616234986461178.Spec : Prop :=
  ∀ n, (P3615616234986461178.a n : ℤ) = A284388 (n + 1)

end A284388

/-! ## A284388.P4360297033908615493

`A284391(a(a(n-1))+n)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284388

/-- `A284391(a(a(n-1))+n)` -/
def P4360297033908615493.Spec : Prop :=
  ∀ n, P4360297033908615493.a n = A284388 (n + 1)

theorem P4360297033908615493.correct : P4360297033908615493.Spec := by
  intro n
  simp only [A284388, Nat.add_sub_cancel]

end A284388

/-! ## A284388.P15914327438582890447

`A284391(n-a(a(n-1)))` with `a(0)=0, a(1)=0`
-/

namespace A284388.P15914327438582890447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A284391 ((n : ℤ) - a (a (n - 1)).toNat).toNat

end

end A284388.P15914327438582890447

namespace A284388

/-- `A284391(n-a(a(n-1)))` -/
def P15914327438582890447.Spec : Prop :=
  ∀ n, P15914327438582890447.a n = A284388 (n + 1)

end A284388

/-! ## A284388.P65581531121202851

`char[A286045(A285385(n+2))]`
-/

namespace A284388.P65581531121202851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286045 (A285385 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284388.P65581531121202851

namespace A284388

/-- `char[A286045(A285385(n+2))]` -/
def P65581531121202851.Spec : Prop :=
  ∀ n, (P65581531121202851.a n : ℤ) = A284388 (n + 1)

end A284388

/-! ## A284388.P10302989849623810913

`A284428(Δ[comp[A284392(n+1)]])`
-/

namespace A284388.P10302989849623810913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284392 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284428 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284388.P10302989849623810913

namespace A284388

/-- `A284428(Δ[comp[A284392(n+1)]])` -/
def P10302989849623810913.Spec : Prop :=
  ∀ n, P10302989849623810913.a n = A284388 (n + 1)

end A284388

/-! ## A284388.P5157945691377007345

`A284449(Δ[comp[A284392(n+1)]])`
-/

namespace A284388.P5157945691377007345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284392 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284449 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284388.P5157945691377007345

namespace A284388

/-- `A284449(Δ[comp[A284392(n+1)]])` -/
def P5157945691377007345.Spec : Prop :=
  ∀ n, P5157945691377007345.a n = A284388 (n + 1)

end A284388

/-!
# A284389: Positions of 0 in A284388; complement of A284390.

The programs for A284389, the canonical program `A284389.P815293320764787049` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284389 has offset 1).

The definition of A284389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284389.P17938375707369966621

`comp[lt[0, val(n+1, 2)%2]-n+1]+1`
-/

namespace A284389.P17938375707369966621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < f3 j) n : ℤ) - (n : ℤ) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284389.P17938375707369966621

namespace A284389

/-- `comp[lt[0, val(n+1, 2)%2]-n+1]+1` -/
def P17938375707369966621.Spec : Prop :=
  ∀ n, (P17938375707369966621.a n : ℤ) = A284389 (n + 1)

end A284389

/-! ## A284389.P6204810159209751336

`comp[A284393(n+2)]+1`
-/

namespace A284389.P6204810159209751336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284393 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284389.P6204810159209751336

namespace A284389

/-- `comp[A284393(n+2)]+1` -/
def P6204810159209751336.Spec : Prop :=
  ∀ n, (P6204810159209751336.a n : ℤ) = A284389 (n + 1)

end A284389

/-! ## A284389.P5741724344022601868

`A284393(∑[log2(gcd(2, n))])+n`
-/

namespace A284389.P5741724344022601868
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284393 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + (n : ℤ)

end

end A284389.P5741724344022601868

namespace A284389

/-- `A284393(∑[log2(gcd(2, n))])+n` -/
def P5741724344022601868.Spec : Prop :=
  ∀ n, P5741724344022601868.a n = A284389 (n + 1)

end A284389

/-! ## A284389.P17126613814937340234

`comp[A003156(n+1)+1]+1`
-/

namespace A284389.P17126613814937340234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284389.P17126613814937340234

namespace A284389

/-- `comp[A003156(n+1)+1]+1` -/
def P17126613814937340234.Spec : Prop :=
  ∀ n, (P17126613814937340234.a n : ℤ) = A284389 (n + 1)

end A284389

/-! ## A284389.P4759150778941431931

`comp[A284390(n+1)-1]+1`
-/

namespace A284389.P4759150778941431931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284390 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284389.P4759150778941431931

namespace A284389

/-- `comp[A284390(n+1)-1]+1` -/
def P4759150778941431931.Spec : Prop :=
  ∀ n, (P4759150778941431931.a n : ℤ) = A284389 (n + 1)

end A284389

/-! ## A284389.P12942855562841995863

`comp[A036554(n+1)-n]+1`
-/

namespace A284389.P12942855562841995863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284389.P12942855562841995863

namespace A284389

/-- `comp[A036554(n+1)-n]+1` -/
def P12942855562841995863.Spec : Prop :=
  ∀ n, (P12942855562841995863.a n : ℤ) = A284389 (n + 1)

end A284389

/-! ## A284389.P1527171143232516342

`comp[2*A171946(n+1)-n]`
-/

namespace A284389.P1527171143232516342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171946 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A284389.P1527171143232516342

namespace A284389

/-- `comp[2*A171946(n+1)-n]` -/
def P1527171143232516342.Spec : Prop :=
  ∀ n, (P1527171143232516342.a n : ℤ) = A284389 (n + 1)

end A284389

/-! ## A284389.P1431547645561682502

`A284393(∑[char[2*(n+1)]]+1)+n`
-/

namespace A284389.P1431547645561682502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284393 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (n : ℤ)

end

end A284389.P1431547645561682502

namespace A284389

/-- `A284393(∑[char[2*(n+1)]]+1)+n` -/
def P1431547645561682502.Spec : Prop :=
  ∀ n, P1431547645561682502.a n = A284389 (n + 1)

end A284389

/-! ## A284389.P10861224708685062857

`comp[A080426(n+1)+a(n-1)]+1` with `a(0)=2`
-/

namespace A284389.P10861224708685062857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A080426 (n + 1) + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284389.P10861224708685062857

namespace A284389

/-- `comp[A080426(n+1)+a(n-1)]+1` -/
def P10861224708685062857.Spec : Prop :=
  ∀ n, (P10861224708685062857.a n : ℤ) = A284389 (n + 1)

end A284389

/-! ## A284389.P815293320764787049

`abs(1-(A284393(floor(n/2)+1)+n))+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284389

/-- `abs(1-(A284393(floor(n/2)+1)+n))+1` -/
def P815293320764787049.Spec : Prop :=
  ∀ n, P815293320764787049.a n = A284389 (n + 1)

theorem P815293320764787049.correct : P815293320764787049.Spec := by
  intro n
  simp only [A284389, Nat.add_sub_cancel]

end A284389

/-! ## A284389.P14563424195765297255

`lt[A284388(n+1), 1]+1`
-/

namespace A284389.P14563424195765297255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A284389.P14563424195765297255

namespace A284389

/-- `lt[A284388(n+1), 1]+1` -/
def P14563424195765297255.Spec : Prop :=
  ∀ n, (P14563424195765297255.a n : ℤ) = A284389 (n + 1)

end A284389

/-! ## A284389.P8527844169191468698

`eq[Δ[A284388(n+1)], A284388(n+2)]+1`
-/

namespace A284389.P8527844169191468698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A284389.P8527844169191468698

namespace A284389

/-- `eq[Δ[A284388(n+1)], A284388(n+2)]+1` -/
def P8527844169191468698.Spec : Prop :=
  ∀ n, (P8527844169191468698.a n : ℤ) = A284389 (n + 1)

end A284389

/-! ## A284389.P44649536338693907

`record[n+1-A293610(n*A284388(n+1))]`
-/

namespace A284389.P44649536338693907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A293610 ((n : ℤ) * A284388 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284389.P44649536338693907

namespace A284389

/-- `record[n+1-A293610(n*A284388(n+1))]` -/
def P44649536338693907.Spec : Prop :=
  ∀ n, P44649536338693907.a n = A284389 (n + 1)

end A284389

/-! ## A284389.P9493764581027045414

`record[n+1-A249036(n+1)*A284388(n+1)]`
-/

namespace A284389.P9493764581027045414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A249036 (n + 1) * A284388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284389.P9493764581027045414

namespace A284389

/-- `record[n+1-A249036(n+1)*A284388(n+1)]` -/
def P9493764581027045414.Spec : Prop :=
  ∀ n, P9493764581027045414.a n = A284389 (n + 1)

end A284389

/-!
# A284390: Positions of 1 in A284388; complement of A284389.

The programs for A284390, the canonical program `A284390.P9301026201937159324` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284390 has offset 1).

The definition of A284390 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284393, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284390.P9301026201937159324

`1+A284393(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284390

/-- `1+A284393(n+2)` -/
def P9301026201937159324.Spec : Prop :=
  ∀ n, P9301026201937159324.a n = A284390 (n + 1)

theorem P9301026201937159324.correct : P9301026201937159324.Spec := by
  intro n
  simp only [A284390, Nat.add_sub_cancel]

end A284390

/-! ## A284390.P3145302259286109337

`eq[3, xor(n, n-3)%6]-n`
-/

namespace A284390.P3145302259286109337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 3)) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A284390.P3145302259286109337

namespace A284390

/-- `eq[3, xor(n, n-3)%6]-n` -/
def P3145302259286109337.Spec : Prop :=
  ∀ n, P3145302259286109337.a n = A284390 (n + 1)

end A284390

/-! ## A284390.P9746941757231358442

`comp[or(n, val(n+2, 2))]+3-n`
-/

namespace A284390.P9746941757231358442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (3 - (n : ℤ))

end

end A284390.P9746941757231358442

namespace A284390

/-- `comp[or(n, val(n+2, 2))]+3-n` -/
def P9746941757231358442.Spec : Prop :=
  ∀ n, P9746941757231358442.a n = A284390 (n + 1)

end A284390

/-! ## A284390.P14901814551339639708

`lt[0, val(n+1, 2)%2]-n+2`
-/

namespace A284390.P14901814551339639708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ) + 2

end

end A284390.P14901814551339639708

namespace A284390

/-- `lt[0, val(n+1, 2)%2]-n+2` -/
def P14901814551339639708.Spec : Prop :=
  ∀ n, P14901814551339639708.a n = A284390 (n + 1)

end A284390

/-! ## A284390.P6092761159712737483

`eq[1, and(1-2*n, 2*n)%3]+1+n-2*n`
-/

namespace A284390.P6092761159712737483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (1 - (2 * n : ℤ)) (2 * n : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 + n : ℤ) - (2 * n : ℤ)

end

end A284390.P6092761159712737483

namespace A284390

/-- `eq[1, and(1-2*n, 2*n)%3]+1+n-2*n` -/
def P6092761159712737483.Spec : Prop :=
  ∀ n, P6092761159712737483.a n = A284390 (n + 1)

end A284390

/-! ## A284390.P9380323314846501504

`A003156(n+1)+2`
-/

namespace A284390.P9380323314846501504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (n + 1) + 2

end

end A284390.P9380323314846501504

namespace A284390

/-- `A003156(n+1)+2` -/
def P9380323314846501504.Spec : Prop :=
  ∀ n, P9380323314846501504.a n = A284390 (n + 1)

end A284390

/-! ## A284390.P479064362015699059

`A072939(n+1)-n`
-/

namespace A284390.P479064362015699059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1) - (n : ℤ)

end

end A284390.P479064362015699059

namespace A284390

/-- `A072939(n+1)-n` -/
def P479064362015699059.Spec : Prop :=
  ∀ n, P479064362015699059.a n = A284390 (n + 1)

end A284390

/-! ## A284390.P5249425664735416995

`∑[A080426(n+1)]+2`
-/

namespace A284390.P5249425664735416995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A284390.P5249425664735416995

namespace A284390

/-- `∑[A080426(n+1)]+2` -/
def P5249425664735416995.Spec : Prop :=
  ∀ n, P5249425664735416995.a n = A284390 (n + 1)

end A284390

/-! ## A284390.P17720473446869214383

`A036554(n+1)+1-n`
-/

namespace A284390.P17720473446869214383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) + (1 - (n : ℤ))

end

end A284390.P17720473446869214383

namespace A284390

/-- `A036554(n+1)+1-n` -/
def P17720473446869214383.Spec : Prop :=
  ∀ n, P17720473446869214383.a n = A284390 (n + 1)

end A284390

/-! ## A284390.P8606472295344892687

`A079523(n+1)+2-n`
-/

namespace A284390.P8606472295344892687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1) + (2 - (n : ℤ))

end

end A284390.P8606472295344892687

namespace A284390

/-- `A079523(n+1)+2-n` -/
def P8606472295344892687.Spec : Prop :=
  ∀ n, P8606472295344892687.a n = A284390 (n + 1)

end A284390

/-! ## A284390.P7679230199116372957

`A162648(n+1)+3-n`
-/

namespace A284390.P7679230199116372957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1) + (3 - (n : ℤ))

end

end A284390.P7679230199116372957

namespace A284390

/-- `A162648(n+1)+3-n` -/
def P7679230199116372957.Spec : Prop :=
  ∀ n, P7679230199116372957.a n = A284390 (n + 1)

end A284390

/-! ## A284390.P11446047755972900442

`A003157(n+1)-2*n`
-/

namespace A284390.P11446047755972900442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003157 (n + 1) - (2 * n : ℤ)

end

end A284390.P11446047755972900442

namespace A284390

/-- `A003157(n+1)-2*n` -/
def P11446047755972900442.Spec : Prop :=
  ∀ n, P11446047755972900442.a n = A284390 (n + 1)

end A284390

/-! ## A284390.P5735347829860447562

`∑[2*A284391(n+1)+1]`
-/

namespace A284390.P5735347829860447562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284391 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284390.P5735347829860447562

namespace A284390

/-- `∑[2*A284391(n+1)+1]` -/
def P5735347829860447562.Spec : Prop :=
  ∀ n, P5735347829860447562.a n = A284390 (n + 1)

end A284390

/-! ## A284390.P12105401934203628583

`A003158(n+1)+1-2*n`
-/

namespace A284390.P12105401934203628583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (n + 1) + (1 - (2 * n : ℤ))

end

end A284390.P12105401934203628583

namespace A284390

/-- `A003158(n+1)+1-2*n` -/
def P12105401934203628583.Spec : Prop :=
  ∀ n, P12105401934203628583.a n = A284390 (n + 1)

end A284390

/-! ## A284390.P12669410126848174551

`2*A003159(n+1)-(n-1)`
-/

namespace A284390.P12669410126848174551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003159 (n + 1) - ((n : ℤ) - 1)

end

end A284390.P12669410126848174551

namespace A284390

/-- `2*A003159(n+1)-(n-1)` -/
def P12669410126848174551.Spec : Prop :=
  ∀ n, P12669410126848174551.a n = A284390 (n + 1)

end A284390

/-! ## A284390.P14903417582095919899

`2*(n+2)-A071993(n+1)`
-/

namespace A284390.P14903417582095919899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A071993 (n + 1)

end

end A284390.P14903417582095919899

namespace A284390

/-- `2*(n+2)-A071993(n+1)` -/
def P14903417582095919899.Spec : Prop :=
  ∀ n, P14903417582095919899.a n = A284390 (n + 1)

end A284390

/-!
# A284391: 1-limiting word of the morphism 0 -> 1, 1 -> 001.

The programs for A284391, the canonical program `A284391.P1470686768297422428` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284391 has offset 1).

The definition of A284391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284391.P8559760750296523030

`char[lt[xor(n-1, n-2)%3, 1]-n-1]`
-/

namespace A284391.P8559760750296523030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor ((n : ℤ) - 1) ((n : ℤ) - 2)) 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - (n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284391.P8559760750296523030

namespace A284391

/-- `char[lt[xor(n-1, n-2)%3, 1]-n-1]` -/
def P8559760750296523030.Spec : Prop :=
  ∀ n, (P8559760750296523030.a n : ℤ) = A284391 (n + 1)

end A284391

/-! ## A284391.P17153632314276856264

`char[A284393(n+1)-1]`
-/

namespace A284391.P17153632314276856264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284393 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284391.P17153632314276856264

namespace A284391

/-- `char[A284393(n+1)-1]` -/
def P17153632314276856264.Spec : Prop :=
  ∀ n, (P17153632314276856264.a n : ℤ) = A284391 (n + 1)

end A284391

/-! ## A284391.P14862451304596616131

`log2(A026465(n+1))^n`
-/

namespace A284391.P14862451304596616131
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A026465 (n + 1) : ℝ) ^ n

end

end A284391.P14862451304596616131

namespace A284391

/-- `log2(A026465(n+1))^n` -/
def P14862451304596616131.Spec : Prop :=
  ∀ n, P14862451304596616131.a n = (A284391 (n + 1) : ℝ)

end A284391

/-! ## A284391.P11208214442364183201

`A395089((n-1)%(n+1))`
-/

namespace A284391.P11208214442364183201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395089 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A284391.P11208214442364183201

namespace A284391

/-- `A395089((n-1)%(n+1))` -/
def P11208214442364183201.Spec : Prop :=
  ∀ n, P11208214442364183201.a n = A284391 (n + 1)

end A284391

/-! ## A284391.P1470686768297422428

`(4%A080426(n+1))^n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A284391

/-- `(4%A080426(n+1))^n` -/
def P1470686768297422428.Spec : Prop :=
  ∀ n, P1470686768297422428.a n = A284391 (n + 1)

theorem P1470686768297422428.correct : P1470686768297422428.Spec := by
  intro n
  simp only [A284391, Nat.add_sub_cancel]

end A284391

/-! ## A284391.P1816683949779530829

`char[A171947(n+1)-(n+1)]`
-/

namespace A284391.P1816683949779530829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171947 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284391.P1816683949779530829

namespace A284391

/-- `char[A171947(n+1)-(n+1)]` -/
def P1816683949779530829.Spec : Prop :=
  ∀ n, (P1816683949779530829.a n : ℤ) = A284391 (n + 1)

end A284391

/-! ## A284391.P10212217496363091244

`1-A286044(a(n-1)+n)` with `a(0)=1`
-/

namespace A284391.P10212217496363091244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - A286044 (a (n - 1) + (n : ℤ)).toNat

end

end A284391.P10212217496363091244

namespace A284391

/-- `1-A286044(a(n-1)+n)` -/
def P10212217496363091244.Spec : Prop :=
  ∀ n, P10212217496363091244.a n = A284391 (n + 1)

end A284391

/-! ## A284391.P18040170157460083683

`A057428(n)+A026465(n+1)`
-/

namespace A284391.P18040170157460083683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A026465 (n + 1)

end

end A284391.P18040170157460083683

namespace A284391

/-- `A057428(n)+A026465(n+1)` -/
def P18040170157460083683.Spec : Prop :=
  ∀ n, P18040170157460083683.a n = A284391 (n + 1)

end A284391

/-! ## A284391.P8915604542277553055

`A026465(n+1)-A057427(n)`
-/

namespace A284391.P8915604542277553055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (n + 1) - A057427 n

end

end A284391.P8915604542277553055

namespace A284391

/-- `A026465(n+1)-A057427(n)` -/
def P8915604542277553055.Spec : Prop :=
  ∀ n, P8915604542277553055.a n = A284391 (n + 1)

end A284391

/-! ## A284391.P10981514862275340016

`char[A286045(A285385(n+1))-1]`
-/

namespace A284391.P10981514862275340016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286045 (A285385 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284391.P10981514862275340016

namespace A284391

/-- `char[A286045(A285385(n+1))-1]` -/
def P10981514862275340016.Spec : Prop :=
  ∀ n, (P10981514862275340016.a n : ℤ) = A284391 (n + 1)

end A284391

/-! ## A284391.P18022063753078267456

`A003159(n+1)-A171946(n+1)`
-/

namespace A284391.P18022063753078267456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1) - A171946 (n + 1)

end

end A284391.P18022063753078267456

namespace A284391

/-- `A003159(n+1)-A171946(n+1)` -/
def P18022063753078267456.Spec : Prop :=
  ∀ n, P18022063753078267456.a n = A284391 (n + 1)

end A284391

/-! ## A284391.P15858579231494679641

`(ceil(sqrt(A080426(n+1)))-1)^A000120(n)`
-/

namespace A284391.P15858579231494679641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (A080426 (n + 1) : ℝ)⌉ - 1 : ℚ) ^ (A000120 n : ℤ)

end

end A284391.P15858579231494679641

namespace A284391

/-- `(ceil(sqrt(A080426(n+1)))-1)^A000120(n)` -/
def P15858579231494679641.Spec : Prop :=
  ∀ n, P15858579231494679641.a n = (A284391 (n + 1) : ℚ)

end A284391

/-! ## A284391.P11164388660391193003

`(ceil(sqrt(A080426(n+1)))-1)^A008592(n)`
-/

namespace A284391.P11164388660391193003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (A080426 (n + 1) : ℝ)⌉ - 1 : ℚ) ^ (A008592 n : ℤ)

end

end A284391.P11164388660391193003

namespace A284391

/-- `(ceil(sqrt(A080426(n+1)))-1)^A008592(n)` -/
def P11164388660391193003.Spec : Prop :=
  ∀ n, P11164388660391193003.a n = (A284391 (n + 1) : ℚ)

end A284391

/-! ## A284391.P10509698374174693178

`(ceil(sqrt(A080426(n+1)))-1)^A001221(n+1)`
-/

namespace A284391.P10509698374174693178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (A080426 (n + 1) : ℝ)⌉ - 1 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A284391.P10509698374174693178

namespace A284391

/-- `(ceil(sqrt(A080426(n+1)))-1)^A001221(n+1)` -/
def P10509698374174693178.Spec : Prop :=
  ∀ n, P10509698374174693178.a n = (A284391 (n + 1) : ℚ)

end A284391

/-! ## A284391.P15713719911957304462

`A078112((ceil(sqrt(A080426(n+1)))-1)^n+1)`
-/

namespace A284391.P15713719911957304462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078112 ((⌈Real.sqrt (A080426 (n + 1) : ℝ)⌉ - 1) ^ n + 1).toNat

end

end A284391.P15713719911957304462

namespace A284391

/-- `A078112((ceil(sqrt(A080426(n+1)))-1)^n+1)` -/
def P15713719911957304462.Spec : Prop :=
  ∀ n, P15713719911957304462.a n = A284391 (n + 1)

end A284391

/-! ## A284391.P2654691413996839151

`(ceil(sqrt(A080426(n+1)))-1)^(4*A046092(n))`
-/

namespace A284391.P2654691413996839151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (A080426 (n + 1) : ℝ)⌉ - 1 : ℚ) ^ (4 * A046092 n : ℤ)

end

end A284391.P2654691413996839151

namespace A284391

/-- `(ceil(sqrt(A080426(n+1)))-1)^(4*A046092(n))` -/
def P2654691413996839151.Spec : Prop :=
  ∀ n, P2654691413996839151.a n = (A284391 (n + 1) : ℚ)

end A284391

/-! ## A284391.P1583401562410701579

`(char[A003156(n+1)]/gcd(n, 1-n))^A001222(n+1)`
-/

namespace A284391.P1583401562410701579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / (Int.gcd (n : ℤ) (1 - (n : ℤ)) : ℚ)) ^ (A001222 (n + 1) : ℤ)

end

end A284391.P1583401562410701579

namespace A284391

/-- `(char[A003156(n+1)]/gcd(n, 1-n))^A001222(n+1)` -/
def P1583401562410701579.Spec : Prop :=
  ∀ n, P1583401562410701579.a n = (A284391 (n + 1) : ℚ)

end A284391

/-! ## A284391.P13702642380185489607

`A035263(A171946(n+1)+A003159(n+1))`
-/

namespace A284391.P13702642380185489607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A171946 (n + 1) + A003159 (n + 1)).toNat

end

end A284391.P13702642380185489607

namespace A284391

/-- `A035263(A171946(n+1)+A003159(n+1))` -/
def P13702642380185489607.Spec : Prop :=
  ∀ n, P13702642380185489607.a n = A284391 (n + 1)

end A284391

/-!
# A284392: Positions of 0 in A284391; complement of A284393.

The programs for A284392, the canonical program `A284392.P11541041188866984198` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284392 has offset 1).

The definition of A284392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284392.P6075491308118779265

`comp[A284393(n+1)-1]+1`
-/

namespace A284392.P6075491308118779265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284393 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284392.P6075491308118779265

namespace A284392

/-- `comp[A284393(n+1)-1]+1` -/
def P6075491308118779265.Spec : Prop :=
  ∀ n, (P6075491308118779265.a n : ℤ) = A284392 (n + 1)

end A284392

/-! ## A284392.P6938459798929683450

`comp[A003156(n+1)-1]+2`
-/

namespace A284392.P6938459798929683450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A284392.P6938459798929683450

namespace A284392

/-- `comp[A003156(n+1)-1]+2` -/
def P6938459798929683450.Spec : Prop :=
  ∀ n, (P6938459798929683450.a n : ℤ) = A284392 (n + 1)

end A284392

/-! ## A284392.P5928433100592526763

`comp[A162648(n+1)-n]+2`
-/

namespace A284392.P5928433100592526763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A284392.P5928433100592526763

namespace A284392

/-- `comp[A162648(n+1)-n]+2` -/
def P5928433100592526763.Spec : Prop :=
  ∀ n, (P5928433100592526763.a n : ℤ) = A284392 (n + 1)

end A284392

/-! ## A284392.P1147939346788825794

`(A344346(n+1)+n+3)/2`
-/

namespace A284392.P1147939346788825794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344346 (n + 1) + (n + 3 : ℤ) : ℚ) / 2

end

end A284392.P1147939346788825794

namespace A284392

/-- `(A344346(n+1)+n+3)/2` -/
def P1147939346788825794.Spec : Prop :=
  ∀ n, P1147939346788825794.a n = (A284392 (n + 1) : ℚ)

end A284392

/-! ## A284392.P11541041188866984198

`A284393(A008619(n)+1)+1+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284392

/-- `A284393(A008619(n)+1)+1+n` -/
def P11541041188866984198.Spec : Prop :=
  ∀ n, P11541041188866984198.a n = A284392 (n + 1)

theorem P11541041188866984198.correct : P11541041188866984198.Spec := by
  intro n
  simp only [A284392, Nat.add_sub_cancel]

end A284392

/-! ## A284392.P15055550091241269356

`A003156(A004526(n)+1)+n+2`
-/

namespace A284392.P15055550091241269356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (A004526 n + 1).toNat + (n + 2 : ℤ)

end

end A284392.P15055550091241269356

namespace A284392

/-- `A003156(A004526(n)+1)+n+2` -/
def P15055550091241269356.Spec : Prop :=
  ∀ n, P15055550091241269356.a n = A284392 (n + 1)

end A284392

/-! ## A284392.P9257231788761441372

`(A000027(A081706(n+1)+3)+n+1)/2`
-/

namespace A284392.P9257231788761441372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A081706 (n + 1) + 3).toNat + (n : ℤ) + 1 : ℚ) / 2

end

end A284392.P9257231788761441372

namespace A284392

/-- `(A000027(A081706(n+1)+3)+n+1)/2` -/
def P9257231788761441372.Spec : Prop :=
  ∀ n, P9257231788761441372.a n = (A284392 (n + 1) : ℚ)

end A284392

/-! ## A284392.P9751519167001891407

`A284389(n+3)-1`
-/

namespace A284392.P9751519167001891407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284389 (n + 3) - 1

end

end A284392.P9751519167001891407

namespace A284392

/-- `A284389(n+3)-1` -/
def P9751519167001891407.Spec : Prop :=
  ∀ n, P9751519167001891407.a n = A284392 (n + 1)

end A284392

/-! ## A284392.P132471736501009207

`lt[A284391(n+1), 1]+1`
-/

namespace A284392.P132471736501009207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284391 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A284392.P132471736501009207

namespace A284392

/-- `lt[A284391(n+1), 1]+1` -/
def P132471736501009207.Spec : Prop :=
  ∀ n, (P132471736501009207.a n : ℤ) = A284392 (n + 1)

end A284392

/-! ## A284392.P14219488398144918076

`eq[1, A026465(n+2)]+2`
-/

namespace A284392.P14219488398144918076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284392.P14219488398144918076

namespace A284392

/-- `eq[1, A026465(n+2)]+2` -/
def P14219488398144918076.Spec : Prop :=
  ∀ n, (P14219488398144918076.a n : ℤ) = A284392 (n + 1)

end A284392

/-! ## A284392.P6712877377428791993

`eq[1, A080426(n+2)]+2`
-/

namespace A284392.P6712877377428791993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080426 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284392.P6712877377428791993

namespace A284392

/-- `eq[1, A080426(n+2)]+2` -/
def P6712877377428791993.Spec : Prop :=
  ∀ n, (P6712877377428791993.a n : ℤ) = A284392 (n + 1)

end A284392

/-! ## A284392.P13630444094048311721

`eq[2, A194688(n+1)]+2`
-/

namespace A284392.P13630444094048311721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284392.P13630444094048311721

namespace A284392

/-- `eq[2, A194688(n+1)]+2` -/
def P13630444094048311721.Spec : Prop :=
  ∀ n, (P13630444094048311721.a n : ℤ) = A284392 (n + 1)

end A284392

/-! ## A284392.P1539153533350391266

`eq[A130706(n), A284388(n+1)]`
-/

namespace A284392.P1539153533350391266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284392.P1539153533350391266

namespace A284392

/-- `eq[A130706(n), A284388(n+1)]` -/
def P1539153533350391266.Spec : Prop :=
  ∀ n, (P1539153533350391266.a n : ℤ) = A284392 (n + 1)

end A284392

/-! ## A284392.P3522312229818302939

`eq[A130779(n), A284388(n+1)]`
-/

namespace A284392.P3522312229818302939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284392.P3522312229818302939

namespace A284392

/-- `eq[A130779(n), A284388(n+1)]` -/
def P3522312229818302939.Spec : Prop :=
  ∀ n, (P3522312229818302939.a n : ℤ) = A284392 (n + 1)

end A284392

/-! ## A284392.P5367095921381674613

`eq[A166926(n), A284388(n+1)]`
-/

namespace A284392.P5367095921381674613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284392.P5367095921381674613

namespace A284392

/-- `eq[A166926(n), A284388(n+1)]` -/
def P5367095921381674613.Spec : Prop :=
  ∀ n, (P5367095921381674613.a n : ℤ) = A284392 (n + 1)

end A284392

/-! ## A284392.P9564732797720500074

`eq[A167891(n), A284388(n+1)]`
-/

namespace A284392.P9564732797720500074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284392.P9564732797720500074

namespace A284392

/-- `eq[A167891(n), A284388(n+1)]` -/
def P9564732797720500074.Spec : Prop :=
  ∀ n, (P9564732797720500074.a n : ℤ) = A284392 (n + 1)

end A284392

/-! ## A284392.P15757735853469885343

`eq[A169585(n), A284388(n+1)]`
-/

namespace A284392.P15757735853469885343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284392.P15757735853469885343

namespace A284392

/-- `eq[A169585(n), A284388(n+1)]` -/
def P15757735853469885343.Spec : Prop :=
  ∀ n, (P15757735853469885343.a n : ℤ) = A284392 (n + 1)

end A284392

/-! ## A284392.P14197678907535991331

`eq[A019590(n+1), A284388(n+1)]`
-/

namespace A284392.P14197678907535991331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284392.P14197678907535991331

namespace A284392

/-- `eq[A019590(n+1), A284388(n+1)]` -/
def P14197678907535991331.Spec : Prop :=
  ∀ n, (P14197678907535991331.a n : ℤ) = A284392 (n + 1)

end A284392

/-!
# A284393: Positions of 1 in A284391; complement of A284392.

The programs for A284393, the canonical program `A284393.P6879948023271449569` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284393 has offset 1).

The definition of A284393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284393.P6879948023271449569

`lt[xor(n-1, n-2)%3, 1]-n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A284393

/-- `lt[xor(n-1, n-2)%3, 1]-n` -/
def P6879948023271449569.Spec : Prop :=
  ∀ n, P6879948023271449569.a n = A284393 (n + 1)

theorem P6879948023271449569.correct : P6879948023271449569.Spec := by
  intro n
  simp only [A284393, Nat.add_sub_cancel]

end A284393

/-! ## A284393.P17549557927341290695

`2*comp[(xor(n, n+1)+1)*(n+1)]+1-n`
-/

namespace A284393.P17549557927341290695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) + 1) * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ) - (n : ℤ)

end

end A284393.P17549557927341290695

namespace A284393

/-- `2*comp[(xor(n, n+1)+1)*(n+1)]+1-n` -/
def P17549557927341290695.Spec : Prop :=
  ∀ n, P17549557927341290695.a n = A284393 (n + 1)

end A284393

/-! ## A284393.P5280452313215273943

`comp[(n+1)*(n+1-and(n, n+1))]+1-n`
-/

namespace A284393.P5280452313215273943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - (n : ℤ)

end

end A284393.P5280452313215273943

namespace A284393

/-- `comp[(n+1)*(n+1-and(n, n+1))]+1-n` -/
def P5280452313215273943.Spec : Prop :=
  ∀ n, P5280452313215273943.a n = A284393 (n + 1)

end A284393

/-! ## A284393.P11917698709691685734

`A171947(n+1)-n`
-/

namespace A284393.P11917698709691685734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171947 (n + 1) - (n : ℤ)

end

end A284393.P11917698709691685734

namespace A284393

/-- `A171947(n+1)-n` -/
def P11917698709691685734.Spec : Prop :=
  ∀ n, P11917698709691685734.a n = A284393 (n + 1)

end A284393

/-! ## A284393.P15561490895855102419

`A080426(n)+a(n-1)` with `a(0)=1`
-/

namespace A284393.P15561490895855102419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080426 n + a (n - 1)

end

end A284393.P15561490895855102419

namespace A284393

/-- `A080426(n)+a(n-1)` -/
def P15561490895855102419.Spec : Prop :=
  ∀ n, P15561490895855102419.a n = A284393 (n + 1)

end A284393

/-! ## A284393.P9330018761617751528

`∑[2*A284388(n+1)+1]`
-/

namespace A284393.P9330018761617751528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284388 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284393.P9330018761617751528

namespace A284393

/-- `∑[2*A284388(n+1)+1]` -/
def P9330018761617751528.Spec : Prop :=
  ∀ n, P9330018761617751528.a n = A284393 (n + 1)

end A284393

/-! ## A284393.P7970285214212548236

`∑[A080426(char[(8*n)²]+n)]`
-/

namespace A284393.P7970285214212548236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080426 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284393.P7970285214212548236

namespace A284393

/-- `∑[A080426(char[(8*n)²]+n)]` -/
def P7970285214212548236.Spec : Prop :=
  ∀ n, P7970285214212548236.a n = A284393 (n + 1)

end A284393

/-! ## A284393.P10911571895520260031

`2*A285385(n+1)-(n+1)`
-/

namespace A284393.P10911571895520260031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285385 (n + 1) - (n + 1 : ℤ)

end

end A284393.P10911571895520260031

namespace A284393

/-- `2*A285385(n+1)-(n+1)` -/
def P10911571895520260031.Spec : Prop :=
  ∀ n, P10911571895520260031.a n = A284393 (n + 1)

end A284393

/-! ## A284393.P14186392583940047407

`∑[A080426(abs(1-n)+1)]-2`
-/

namespace A284393.P14186392583940047407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080426 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A284393.P14186392583940047407

namespace A284393

/-- `∑[A080426(abs(1-n)+1)]-2` -/
def P14186392583940047407.Spec : Prop :=
  ∀ n, P14186392583940047407.a n = A284393 (n + 1)

end A284393

/-! ## A284393.P806311236728089566

`∪[A284390(n+1), A011820(n)]-1`
-/

namespace A284393.P806311236728089566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011820 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A284393.P806311236728089566

namespace A284393

/-- `∪[A284390(n+1), A011820(n)]-1` -/
def P806311236728089566.Spec : Prop :=
  ∀ n, P806311236728089566.a n = A284393 (n + 1)

end A284393

/-! ## A284393.P2419158256099879936

`∪[A072939(n+1), A008388(n)]-n`
-/

namespace A284393.P2419158256099879936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008388 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A284393.P2419158256099879936

namespace A284393

/-- `∪[A072939(n+1), A008388(n)]-n` -/
def P2419158256099879936.Spec : Prop :=
  ∀ n, P2419158256099879936.a n = A284393 (n + 1)

end A284393

/-! ## A284393.P10212405514984188448

`∪[A072939(n+1), A092899(n)]-n`
-/

namespace A284393.P10212405514984188448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A284393.P10212405514984188448

namespace A284393

/-- `∪[A072939(n+1), A092899(n)]-n` -/
def P10212405514984188448.Spec : Prop :=
  ∀ n, P10212405514984188448.a n = A284393 (n + 1)

end A284393

/-! ## A284393.P13890124023164419854

`A003156(n+1)+1-A080426(n+1)`
-/

namespace A284393.P13890124023164419854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (n + 1) + (1 - A080426 (n + 1))

end

end A284393.P13890124023164419854

namespace A284393

/-- `A003156(n+1)+1-A080426(n+1)` -/
def P13890124023164419854.Spec : Prop :=
  ∀ n, P13890124023164419854.a n = A284393 (n + 1)

end A284393

/-! ## A284393.P7423795778976084489

`A284390(n+1)-(A080426(n+1)+1)`
-/

namespace A284393.P7423795778976084489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284390 (n + 1) - (A080426 (n + 1) + 1)

end

end A284393.P7423795778976084489

namespace A284393

/-- `A284390(n+1)-(A080426(n+1)+1)` -/
def P7423795778976084489.Spec : Prop :=
  ∀ n, P7423795778976084489.a n = A284393 (n + 1)

end A284393

/-! ## A284393.P4953843059548279974

`A284390(n+1)-2*A026465(n+1)`
-/

namespace A284393.P4953843059548279974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284390 (n + 1) - 2 * A026465 (n + 1)

end

end A284393.P4953843059548279974

namespace A284393

/-- `A284390(n+1)-2*A026465(n+1)` -/
def P4953843059548279974.Spec : Prop :=
  ∀ n, P4953843059548279974.a n = A284393 (n + 1)

end A284393

/-! ## A284393.P1259977932895028541

`A036554(n+1)-(A080426(n+1)+n)`
-/

namespace A284393.P1259977932895028541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) - (A080426 (n + 1) + (n : ℤ))

end

end A284393.P1259977932895028541

namespace A284393

/-- `A036554(n+1)-(A080426(n+1)+n)` -/
def P1259977932895028541.Spec : Prop :=
  ∀ n, P1259977932895028541.a n = A284393 (n + 1)

end A284393

/-! ## A284393.P3648640145343283628

`A003156(n+1)+A026465(n+1)-A026465(n+1)²`
-/

namespace A284393.P3648640145343283628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (n + 1) + (A026465 (n + 1) - A026465 (n + 1) ^ 2)

end

end A284393.P3648640145343283628

namespace A284393

/-- `A003156(n+1)+A026465(n+1)-A026465(n+1)²` -/
def P3648640145343283628.Spec : Prop :=
  ∀ n, P3648640145343283628.a n = A284393 (n + 1)

end A284393

/-! ## A284393.P4539996943371732115

`comp[A284392(n+1)-1]+1`
-/

namespace A284393.P4539996943371732115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284392 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284393.P4539996943371732115

namespace A284393

/-- `comp[A284392(n+1)-1]+1` -/
def P4539996943371732115.Spec : Prop :=
  ∀ n, (P4539996943371732115.a n : ℤ) = A284393 (n + 1)

end A284393

/-!
# A284394: {101->2}-transform of the infinite Fibonacci word A003849.

The programs for A284394, the canonical program `A284394.P885342829682260951` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284394 has offset 1).

The definition of A284394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284394.P12990485162650411460

`Δ[floor(ϕ*floor((n+1)/3))]`
-/

namespace A284394.P12990485162650411460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (⌊(n + 1 : ℚ) / 3⌋ : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284394.P12990485162650411460

namespace A284394

/-- `Δ[floor(ϕ*floor((n+1)/3))]` -/
def P12990485162650411460.Spec : Prop :=
  ∀ n, P12990485162650411460.a n = A284394 (n + 1)

end A284394

/-! ## A284394.P885342829682260951

`abs(Δ[A026351(floor((n+1)/3))])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284394

/-- `abs(Δ[A026351(floor((n+1)/3))])` -/
def P885342829682260951.Spec : Prop :=
  ∀ n, P885342829682260951.a n = A284394 (n + 1)

theorem P885342829682260951.correct : P885342829682260951.Spec := by
  intro n
  simp only [A284394, Nat.add_sub_cancel]

end A284394

/-! ## A284394.P14004974404776876471

`A004086(Δ[A026351(floor((n+1)/3))])`
-/

namespace A284394.P14004974404776876471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 ⌊(n + 1 : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (n + 1) - f1 n).toNat

end

end A284394.P14004974404776876471

namespace A284394

/-- `A004086(Δ[A026351(floor((n+1)/3))])` -/
def P14004974404776876471.Spec : Prop :=
  ∀ n, P14004974404776876471.a n = A284394 (n + 1)

end A284394

/-! ## A284394.P16978746282372382273

`A375126(Δ[A026351(floor((n+1)/3))])`
-/

namespace A284394.P16978746282372382273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 ⌊(n + 1 : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375126 (f1 (n + 1) - f1 n).toNat

end

end A284394.P16978746282372382273

namespace A284394

/-- `A375126(Δ[A026351(floor((n+1)/3))])` -/
def P16978746282372382273.Spec : Prop :=
  ∀ n, P16978746282372382273.a n = A284394 (n + 1)

end A284394

/-! ## A284394.P2525167825174865212

`A377091(Δ[A026351(floor((n+1)/3))])`
-/

namespace A284394.P2525167825174865212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 ⌊(n + 1 : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (f1 (n + 1) - f1 n).toNat

end

end A284394.P2525167825174865212

namespace A284394

/-- `A377091(Δ[A026351(floor((n+1)/3))])` -/
def P2525167825174865212.Spec : Prop :=
  ∀ n, P2525167825174865212.a n = A284394 (n + 1)

end A284394

/-! ## A284394.P3336598298596141845

`A047263(Δ[A026351(floor((n+1)/3))]+1)`
-/

namespace A284394.P3336598298596141845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 ⌊(n + 1 : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (f1 (n + 1) - f1 n + 1).toNat

end

end A284394.P3336598298596141845

namespace A284394

/-- `A047263(Δ[A026351(floor((n+1)/3))]+1)` -/
def P3336598298596141845.Spec : Prop :=
  ∀ n, P3336598298596141845.a n = A284394 (n + 1)

end A284394

/-!
# A284395: Positions of 1 in A284394.

The programs for A284395, the canonical program `A284395.P7367287315047778442` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284395 has offset 1).

The definition of A284395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284395.P18136067047514708258

`3*floor(n*ϕ²)+2`
-/

namespace A284395.P18136067047514708258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 2

end

end A284395.P18136067047514708258

namespace A284395

/-- `3*floor(n*ϕ²)+2` -/
def P18136067047514708258.Spec : Prop :=
  ∀ n, P18136067047514708258.a n = A284395 (n + 1)

end A284395

/-! ## A284395.P7367287315047778442

`abs(3*A026352(n)-1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284395

/-- `abs(3*A026352(n)-1)` -/
def P7367287315047778442.Spec : Prop :=
  ∀ n, P7367287315047778442.a n = A284395 (n + 1)

theorem P7367287315047778442.correct : P7367287315047778442.Spec := by
  intro n
  simp only [A284395, Nat.add_sub_cancel]

end A284395

/-! ## A284395.P15728656480556902532

`A016789(floor(n*ϕ²))`
-/

namespace A284395.P15728656480556902532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋.toNat

end

end A284395.P15728656480556902532

namespace A284395

/-- `A016789(floor(n*ϕ²))` -/
def P15728656480556902532.Spec : Prop :=
  ∀ n, P15728656480556902532.a n = A284395 (n + 1)

end A284395

/-! ## A284395.P12636830122232540848

`record[A016789(A002251(n))]`
-/

namespace A284395.P12636830122232540848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A002251 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284395.P12636830122232540848

namespace A284395

/-- `record[A016789(A002251(n))]` -/
def P12636830122232540848.Spec : Prop :=
  ∀ n, P12636830122232540848.a n = A284395 (n + 1)

end A284395

/-! ## A284395.P12043854284620719123

`A287777(A284624(n+1)-1)`
-/

namespace A284395.P12043854284620719123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287777 (A284624 (n + 1) - 1).toNat

end

end A284395.P12043854284620719123

namespace A284395

/-- `A287777(A284624(n+1)-1)` -/
def P12043854284620719123.Spec : Prop :=
  ∀ n, P12043854284620719123.a n = A284395 (n + 1)

end A284395

/-! ## A284395.P11230217910223911834

`A287791(A188434(n+1))`
-/

namespace A284395.P11230217910223911834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287791 (A188434 (n + 1)).toNat

end

end A284395.P11230217910223911834

namespace A284395

/-- `A287791(A188434(n+1))` -/
def P11230217910223911834.Spec : Prop :=
  ∀ n, P11230217910223911834.a n = A284395 (n + 1)

end A284395

/-! ## A284395.P14666015255193988202

`floor((6*(A214971(n+1)-n-1)+5)/2)`
-/

namespace A284395.P14666015255193988202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 * (A214971 (n + 1) - (n : ℤ) - 1) + 5 : ℚ) / 2⌋

end

end A284395.P14666015255193988202

namespace A284395

/-- `floor((6*(A214971(n+1)-n-1)+5)/2)` -/
def P14666015255193988202.Spec : Prop :=
  ∀ n, P14666015255193988202.a n = A284395 (n + 1)

end A284395

/-! ## A284395.P15723299358617262047

`A287777(A214971(n+1))`
-/

namespace A284395.P15723299358617262047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287777 (A214971 (n + 1)).toNat

end

end A284395.P15723299358617262047

namespace A284395

/-- `A287777(A214971(n+1))` -/
def P15723299358617262047.Spec : Prop :=
  ∀ n, P15723299358617262047.a n = A284395 (n + 1)

end A284395

/-! ## A284395.P3073661963180806578

`A007494(A284621(n+1))`
-/

namespace A284395.P3073661963180806578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A284621 (n + 1)).toNat

end

end A284395.P3073661963180806578

namespace A284395

/-- `A007494(A284621(n+1))` -/
def P3073661963180806578.Spec : Prop :=
  ∀ n, P3073661963180806578.a n = A284395 (n + 1)

end A284395

/-! ## A284395.P12226451952969574866

`A294732(A288709(n+1))`
-/

namespace A284395.P12226451952969574866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294732 (A288709 (n + 1)).toNat

end

end A284395.P12226451952969574866

namespace A284395

/-- `A294732(A288709(n+1))` -/
def P12226451952969574866.Spec : Prop :=
  ∀ n, P12226451952969574866.a n = A284395 (n + 1)

end A284395

/-! ## A284395.P8304834456264811776

`A023443(A188012(n+1)+n)`
-/

namespace A284395.P8304834456264811776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A188012 (n + 1) + (n : ℤ)).toNat

end

end A284395.P8304834456264811776

namespace A284395

/-- `A023443(A188012(n+1)+n)` -/
def P8304834456264811776.Spec : Prop :=
  ∀ n, P8304834456264811776.a n = A284395 (n + 1)

end A284395

/-!
# A284396: Positions of 2 in A284394.

The programs for A284396, the canonical program `A284396.P12542191544531326745` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284396 has offset 1).

The definition of A284396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284396.P12542191544531326745

`3*floor((n+1)*ϕ)+2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A284396

/-- `3*floor((n+1)*ϕ)+2` -/
def P12542191544531326745.Spec : Prop :=
  ∀ n, P12542191544531326745.a n = A284396 (n + 1)

theorem P12542191544531326745.correct : P12542191544531326745.Spec := by
  intro n
  simp only [A284396, Nat.add_sub_cancel]

end A284396

/-! ## A284396.P11041930620206500139

`abs(2*n-(A035337(n)+2))`
-/

namespace A284396.P11041930620206500139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (A035337 n + 2)|

end

end A284396.P11041930620206500139

namespace A284396

/-- `abs(2*n-(A035337(n)+2))` -/
def P11041930620206500139.Spec : Prop :=
  ∀ n, P11041930620206500139.a n = A284396 (n + 1)

end A284396

/-! ## A284396.P3843857280260808899

`abs(3*(A000201(n+1)+1)-1)`
-/

namespace A284396.P3843857280260808899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * (A000201 (n + 1) + 1) - 1|

end

end A284396.P3843857280260808899

namespace A284396

/-- `abs(3*(A000201(n+1)+1)-1)` -/
def P3843857280260808899.Spec : Prop :=
  ∀ n, P3843857280260808899.a n = A284396 (n + 1)

end A284396

/-! ## A284396.P13370612171868422789

`abs(3*(n-A001950(n+1))+1)`
-/

namespace A284396.P13370612171868422789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * ((n : ℤ) - A001950 (n + 1)) + 1|

end

end A284396.P13370612171868422789

namespace A284396

/-- `abs(3*(n-A001950(n+1))+1)` -/
def P13370612171868422789.Spec : Prop :=
  ∀ n, P13370612171868422789.a n = A284396 (n + 1)

end A284396

/-! ## A284396.P17506502865803676644

`A014682(floor(ϕ*comp[floor(ϕ*n)])-n)`
-/

namespace A284396.P17506502865803676644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (⌊Real.goldenRatio * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ)⌋ - (n : ℤ)).toNat

end

end A284396.P17506502865803676644

namespace A284396

/-- `A014682(floor(ϕ*comp[floor(ϕ*n)])-n)` -/
def P17506502865803676644.Spec : Prop :=
  ∀ n, P17506502865803676644.a n = A284396 (n + 1)

end A284396

/-! ## A284396.P17296108457973162065

`A000027(A285683(n+1)+n)`
-/

namespace A284396.P17296108457973162065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A285683 (n + 1) + (n : ℤ)).toNat

end

end A284396.P17296108457973162065

namespace A284396

/-- `A000027(A285683(n+1)+n)` -/
def P17296108457973162065.Spec : Prop :=
  ∀ n, P17296108457973162065.a n = A284396 (n + 1)

end A284396

/-! ## A284396.P16378635630167018486

`A000027(A284625(n+1)+A001950(n+1))`
-/

namespace A284396.P16378635630167018486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A284625 (n + 1) + A001950 (n + 1)).toNat

end

end A284396.P16378635630167018486

namespace A284396

/-- `A000027(A284625(n+1)+A001950(n+1))` -/
def P16378635630167018486.Spec : Prop :=
  ∀ n, P16378635630167018486.a n = A284396 (n + 1)

end A284396

/-! ## A284396.P3749709466816780284

`A016789(A000201(n+1))`
-/

namespace A284396.P3749709466816780284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A000201 (n + 1)).toNat

end

end A284396.P3749709466816780284

namespace A284396

/-- `A016789(A000201(n+1))` -/
def P3749709466816780284.Spec : Prop :=
  ∀ n, P3749709466816780284.a n = A284396 (n + 1)

end A284396

/-! ## A284396.P10882876110582450816

`A016789(A066096(n+1))`
-/

namespace A284396.P10882876110582450816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A066096 (n + 1)).toNat

end

end A284396.P10882876110582450816

namespace A284396

/-- `A016789(A066096(n+1))` -/
def P10882876110582450816.Spec : Prop :=
  ∀ n, P10882876110582450816.a n = A284396 (n + 1)

end A284396

/-! ## A284396.P1347510394111226529

`A016789(A022342(n+1)+1)`
-/

namespace A284396.P1347510394111226529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A022342 (n + 1) + 1).toNat

end

end A284396.P1347510394111226529

namespace A284396

/-- `A016789(A022342(n+1)+1)` -/
def P1347510394111226529.Spec : Prop :=
  ∀ n, P1347510394111226529.a n = A284396 (n + 1)

end A284396

/-! ## A284396.P7671828088591167642

`A016789(A099267(n+2)-2)`
-/

namespace A284396.P7671828088591167642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A099267 (n + 2) - 2).toNat

end

end A284396.P7671828088591167642

namespace A284396

/-- `A016789(A099267(n+2)-2)` -/
def P7671828088591167642.Spec : Prop :=
  ∀ n, P7671828088591167642.a n = A284396 (n + 1)

end A284396

/-! ## A284396.P11416361170833775746

`A016789(A005206(n)+1+n)`
-/

namespace A284396.P11416361170833775746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A005206 n + 1 + (n : ℤ)).toNat

end

end A284396.P11416361170833775746

namespace A284396

/-- `A016789(A005206(n)+1+n)` -/
def P11416361170833775746.Spec : Prop :=
  ∀ n, P11416361170833775746.a n = A284396 (n + 1)

end A284396

/-! ## A284396.P16290529353010404516

`∩[A180486(n+1), A187578(n+1)]`
-/

namespace A284396.P16290529353010404516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284396.P16290529353010404516

namespace A284396

/-- `∩[A180486(n+1), A187578(n+1)]` -/
def P16290529353010404516.Spec : Prop :=
  ∀ n, (P16290529353010404516.a n : ℤ) = A284396 (n + 1)

end A284396

/-! ## A284396.P4155209930662769957

`A049636(A075317(n+1))`
-/

namespace A284396.P4155209930662769957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 (A075317 (n + 1)).toNat

end

end A284396.P4155209930662769957

namespace A284396

/-- `A049636(A075317(n+1))` -/
def P4155209930662769957.Spec : Prop :=
  ∀ n, P4155209930662769957.a n = A284396 (n + 1)

end A284396

/-! ## A284396.P8393798310545328859

`A007494(A130568(n+1))`
-/

namespace A284396.P8393798310545328859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A130568 (n + 1)).toNat

end

end A284396.P8393798310545328859

namespace A284396

/-- `A007494(A130568(n+1))` -/
def P8393798310545328859.Spec : Prop :=
  ∀ n, P8393798310545328859.a n = A284396 (n + 1)

end A284396

/-! ## A284396.P18039820977839189747

`A168199(A186500(n+1))`
-/

namespace A284396.P18039820977839189747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168199 (A186500 (n + 1)).toNat

end

end A284396.P18039820977839189747

namespace A284396

/-- `A168199(A186500(n+1))` -/
def P18039820977839189747.Spec : Prop :=
  ∀ n, P18039820977839189747.a n = A284396 (n + 1)

end A284396

/-! ## A284396.P17417942841155487355

`A168199(A186516(n+1))`
-/

namespace A284396.P17417942841155487355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168199 (A186516 (n + 1)).toNat

end

end A284396.P17417942841155487355

namespace A284396

/-- `A168199(A186516(n+1))` -/
def P17417942841155487355.Spec : Prop :=
  ∀ n, P17417942841155487355.a n = A284396 (n + 1)

end A284396

/-! ## A284396.P9268844439987420966

`A168236(A191402(n+1))`
-/

namespace A284396.P9268844439987420966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168236 (A191402 (n + 1)).toNat

end

end A284396.P9268844439987420966

namespace A284396

/-- `A168236(A191402(n+1))` -/
def P9268844439987420966.Spec : Prop :=
  ∀ n, P9268844439987420966.a n = A284396 (n + 1)

end A284396

/-! ## A284396.P9561987869521731109

`A114119(A283233(n+1))`
-/

namespace A284396.P9561987869521731109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 (A283233 (n + 1)).toNat

end

end A284396.P9561987869521731109

namespace A284396

/-- `A114119(A283233(n+1))` -/
def P9561987869521731109.Spec : Prop :=
  ∀ n, P9561987869521731109.a n = A284396 (n + 1)

end A284396

/-! ## A284396.P1959683554685595892

`A168199(A276854(n+1))`
-/

namespace A284396.P1959683554685595892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168199 (A276854 (n + 1)).toNat

end

end A284396.P1959683554685595892

namespace A284396

/-- `A168199(A276854(n+1))` -/
def P1959683554685595892.Spec : Prop :=
  ∀ n, P1959683554685595892.a n = A284396 (n + 1)

end A284396

/-!
# A284397: a(1) = 1, a(2) = 2; a(n) is the largest prime <= (a(a(n-1)) + a(n-a(n-2)-1)) for n > 2.

The programs for A284397, the canonical program `A284397.P2967028521939954678` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284397 has offset 1).

The definition of A284397 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284397.P2967028521939954678

`A007917(a(a(n-1)-1)+a(n-a(n-2)-1))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284397

/-- `A007917(a(a(n-1)-1)+a(n-a(n-2)-1))` -/
def P2967028521939954678.Spec : Prop :=
  ∀ n, P2967028521939954678.a n = A284397 (n + 1)

theorem P2967028521939954678.correct : P2967028521939954678.Spec := by
  intro n
  simp only [A284397, Nat.add_sub_cancel]

end A284397

/-!
# A284399: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 910", based on the 5-celled von Neumann neighborhood.

The programs for A284399, there is no canonical definition to state claims against.
-/

/-! ## A284399.P17802184377275671455

`A007088(A284401(n))`
-/

namespace A284399.P17802184377275671455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284401 n).toNat

end

end A284399.P17802184377275671455

/-! ## A284399.P4808471046799826571

`A305989(A284402(n))`
-/

namespace A284399.P4808471046799826571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284402 n).toNat

end

end A284399.P4808471046799826571

/-! ## A284399.P873212024195016484

`A185544(2*A284401(n))`
-/

namespace A284399.P873212024195016484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284401 n).toNat

end

end A284399.P873212024195016484

/-! ## A284399.P8547058247676387114

`A185544(lcm(2, A284401(n)))`
-/

namespace A284399.P8547058247676387114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A284401 n))

end

end A284399.P8547058247676387114

/-! ## A284399.P15567150224037467564

`A284540(A129394(n²))`
-/

namespace A284399.P15567150224037467564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284540 (A129394 (n ^ 2)).toNat

end

end A284399.P15567150224037467564

