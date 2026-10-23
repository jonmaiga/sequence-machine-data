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
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C014
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
# A289400: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 565", based on the 5-celled von Neumann neighborhood.

The programs for A289400, there is no canonical definition to state claims against.
-/

/-! ## A289400.P6927542379114171014

`A007088(A289402(n))`
-/

namespace A289400.P6927542379114171014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289402 n).toNat

end

end A289400.P6927542379114171014

/-! ## A289400.P12175304180031909021

`A185544(2*A289402(n))`
-/

namespace A289400.P12175304180031909021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289402 n).toNat

end

end A289400.P12175304180031909021

/-! ## A289400.P3261475915598539945

`A185544(A289402(n)+A289402(n)+A276570(n+1))`
-/

namespace A289400.P3261475915598539945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A289402 n + (A289402 n + A276570 (n + 1))).toNat

end

end A289400.P3261475915598539945

/-! ## A289400.P2077652854485287542

`A289456(n)-A276570(A289402(n+3))`
-/

namespace A289400.P2077652854485287542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289456 n - A276570 (A289402 (n + 3)).toNat

end

end A289400.P2077652854485287542

/-!
# A289401: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 565", based on the 5-celled von Neumann neighborhood.

The programs for A289401, there is no canonical definition to state claims against.
-/

/-! ## A289401.P3457687743320373200

`A007088(A289403(n))`
-/

namespace A289401.P3457687743320373200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289403 n).toNat

end

end A289401.P3457687743320373200

/-! ## A289401.P5604487154121055552

`A305989(A289402(n))`
-/

namespace A289401.P5604487154121055552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289402 n).toNat

end

end A289401.P5604487154121055552

/-! ## A289401.P13992624634646415723

`A185544(2*A289403(n))`
-/

namespace A289401.P13992624634646415723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289403 n).toNat

end

end A289401.P13992624634646415723

/-! ## A289401.P8064935118739909189

`A185544(lcm(2, A289403(n)))`
-/

namespace A289401.P8064935118739909189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A289403 n))

end

end A289401.P8064935118739909189

/-! ## A289401.P7696387296181155171

`A289457(A004892(n+1)-A038570(n))`
-/

namespace A289401.P7696387296181155171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289457 (A004892 (n + 1) - A038570 n).toNat

end

end A289401.P7696387296181155171

/-!
# A289402: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 565", based on the 5-celled von Neumann neighborhood.

The programs for A289402, there is no canonical definition to state claims against.
-/

/-! ## A289402.P1766915810891472526

`A289458(n)-A276570(A007051(n))`
-/

namespace A289402.P1766915810891472526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289458 n - A276570 (A007051 n).toNat

end

end A289402.P1766915810891472526

/-! ## A289402.P1207463135788359260

`xor(A073490(A349970(n)), A289102(n))`
-/

namespace A289402.P1207463135788359260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A073490 (A349970 n).toNat) (A289102 n)

end

end A289402.P1207463135788359260

/-! ## A289402.P13200846562111572557

`A007947(A289458(n)²)`
-/

namespace A289402.P13200846562111572557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A289458 n ^ 2).toNat

end

end A289402.P13200846562111572557

/-! ## A289402.P8778916509025628152

`A289458(A004891(n+1))`
-/

namespace A289402.P8778916509025628152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289458 (A004891 (n + 1)).toNat

end

end A289402.P8778916509025628152

/-!
# A289403: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 565", based on the 5-celled von Neumann neighborhood.

The programs for A289403, there is no canonical definition to state claims against.
-/

/-! ## A289403.P3970639006581350415

`A325401(A289402(n))`
-/

namespace A289403.P3970639006581350415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A289402 n).toNat

end

end A289403.P3970639006581350415

/-! ## A289403.P10828319365496287496

`A331856(lcm(2, A289402(n)))`
-/

namespace A289403.P10828319365496287496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (Int.lcm 2 (A289402 n))

end

end A289403.P10828319365496287496

/-! ## A289403.P17152670292592906473

`or(A175920(A289402(n)), A286865(n))`
-/

namespace A289403.P17152670292592906473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A175920 (A289402 n).toNat) (A286865 n)

end

end A289403.P17152670292592906473

/-! ## A289403.P1690939355988751712

`or(A042965(n+1), A175920(A289402(n)))`
-/

namespace A289403.P1690939355988751712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A042965 (n + 1)) (A175920 (A289402 n).toNat)

end

end A289403.P1690939355988751712

/-! ## A289403.P12607138631308266505

`A331856(2*A289402(n))`
-/

namespace A289403.P12607138631308266505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (2 * A289402 n).toNat

end

end A289403.P12607138631308266505

/-!
# A289404: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 566", based on the 5-celled von Neumann neighborhood.

The programs for A289404, the canonical program `A289404.P3228747663077277908` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289404 has offset 0).

The definition of A289404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289404.P3228747663077277908

`∑[ogf(1/(1-10x^2))]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289404

/-- `∑[ogf(1/(1-10x^2))]` -/
def P3228747663077277908.Spec : Prop :=
  ∀ n, P3228747663077277908.a n = A289404 n

theorem P3228747663077277908.correct : P3228747663077277908.Spec := by
  intro n
  simp only [A289404]

end A289404

/-! ## A289404.P14479024130264372158

`ogf(1/(1-x-10x^2+10x^3))`
-/

namespace A289404.P14479024130264372158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -10, 10] n

end

end A289404.P14479024130264372158

namespace A289404

/-- `ogf(1/(1-x-10x^2+10x^3))` -/
def P14479024130264372158.Spec : Prop :=
  ∀ n, P14479024130264372158.a n = A289404 n

end A289404

/-! ## A289404.P15529108895652849107

`∑[10*a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A289404.P15529108895652849107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  10 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289404.P15529108895652849107

namespace A289404

/-- `∑[10*a(n-2)]` -/
def P15529108895652849107.Spec : Prop :=
  ∀ n, (P15529108895652849107.a n : ℤ) = A289404 n

end A289404

/-! ## A289404.P15039204493264602162

`10*a(n-2)+1` with `a(0)=1, a(1)=1`
-/

namespace A289404.P15039204493264602162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  10 * a (n - 2) + 1

end

end A289404.P15039204493264602162

namespace A289404

/-- `10*a(n-2)+1` -/
def P15039204493264602162.Spec : Prop :=
  ∀ n, (P15039204493264602162.a n : ℤ) = A289404 n

end A289404

/-! ## A289404.P10464402916765645883

`lcm(10, a(n-2))+1` with `a(0)=1, a(1)=1`
-/

namespace A289404.P10464402916765645883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lcm 10 (a (n - 2)) + 1

end

end A289404.P10464402916765645883

namespace A289404

/-- `lcm(10, a(n-2))+1` -/
def P10464402916765645883.Spec : Prop :=
  ∀ n, (P10464402916765645883.a n : ℤ) = A289404 n

end A289404

/-! ## A289404.P16321008671385455304

`or(1, 10*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A289404.P16321008671385455304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lor 1 (10 * a (n - 2))

end

end A289404.P16321008671385455304

namespace A289404

/-- `or(1, 10*a(n-2))` -/
def P16321008671385455304.Spec : Prop :=
  ∀ n, (P16321008671385455304.a n : ℤ) = A289404 n

end A289404

/-! ## A289404.P9197265247297248805

`xor(1, 10*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A289404.P9197265247297248805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.xor 1 (10 * a (n - 2))

end

end A289404.P9197265247297248805

namespace A289404

/-- `xor(1, 10*a(n-2))` -/
def P9197265247297248805.Spec : Prop :=
  ∀ n, (P9197265247297248805.a n : ℤ) = A289404 n

end A289404

/-! ## A289404.P3361017743192439031

`(10^(1+floor(n/2))-1)/9`
-/

namespace A289404.P3361017743192439031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 : ℚ) ^ (1 + ⌊(n : ℚ) / 2⌋ : ℤ) - 1) / 9

end

end A289404.P3361017743192439031

namespace A289404

/-- `(10^(1+floor(n/2))-1)/9` -/
def P3361017743192439031.Spec : Prop :=
  ∀ n, P3361017743192439031.a n = (A289404 n : ℚ)

end A289404

/-! ## A289404.P201338162622927835

`A068995(or(1, n))`
-/

namespace A289404.P201338162622927835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068995 (Nat.lor 1 n)

end

end A289404.P201338162622927835

namespace A289404

/-- `A068995(or(1, n))` -/
def P201338162622927835.Spec : Prop :=
  ∀ n, P201338162622927835.a n = A289404 n

end A289404

/-! ## A289404.P5044037804114002709

`A094026(or(1, n))`
-/

namespace A289404.P5044037804114002709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (Nat.lor 1 n)

end

end A289404.P5044037804114002709

namespace A289404

/-- `A094026(or(1, n))` -/
def P5044037804114002709.Spec : Prop :=
  ∀ n, P5044037804114002709.a n = A289404 n

end A289404

/-! ## A289404.P3795302207257003033

`or(1, A285612(n))`
-/

namespace A289404.P3795302207257003033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A285612 n)

end

end A289404.P3795302207257003033

namespace A289404

/-- `or(1, A285612(n))` -/
def P3795302207257003033.Spec : Prop :=
  ∀ n, P3795302207257003033.a n = A289404 n

end A289404

/-! ## A289404.P1836492429853676158

`A305753(n+3)-1`
-/

namespace A289404.P1836492429853676158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305753 (n + 3) - 1

end

end A289404.P1836492429853676158

namespace A289404

/-- `A305753(n+3)-1` -/
def P1836492429853676158.Spec : Prop :=
  ∀ n, P1836492429853676158.a n = A289404 n

end A289404

/-! ## A289404.P12452662559941071884

`A287468(or(1, n)-1)`
-/

namespace A289404.P12452662559941071884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (Nat.lor 1 n - 1)

end

end A289404.P12452662559941071884

namespace A289404

/-- `A287468(or(1, n)-1)` -/
def P12452662559941071884.Spec : Prop :=
  ∀ n, P12452662559941071884.a n = A289404 n

end A289404

/-! ## A289404.P4581578163889299571

`A081857(gcd(2, n)+n)`
-/

namespace A289404.P4581578163889299571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 (Nat.gcd 2 n + n)

end

end A289404.P4581578163889299571

namespace A289404

/-- `A081857(gcd(2, n)+n)` -/
def P4581578163889299571.Spec : Prop :=
  ∀ n, P4581578163889299571.a n = A289404 n

end A289404

/-! ## A289404.P8369998322273436333

`A287468(n-and(1, n))`
-/

namespace A289404.P8369998322273436333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (n - Nat.land 1 n)

end

end A289404.P8369998322273436333

namespace A289404

/-- `A287468(n-and(1, n))` -/
def P8369998322273436333.Spec : Prop :=
  ∀ n, P8369998322273436333.a n = A289404 n

end A289404

/-! ## A289404.P18262793209563860328

`A290416(n-and(1, n))`
-/

namespace A289404.P18262793209563860328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (n - Nat.land 1 n)

end

end A289404.P18262793209563860328

namespace A289404

/-- `A290416(n-and(1, n))` -/
def P18262793209563860328.Spec : Prop :=
  ∀ n, P18262793209563860328.a n = A289404 n

end A289404

/-! ## A289404.P8934799006396395901

`A290420(n-and(1, n))`
-/

namespace A289404.P8934799006396395901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290420 (n - Nat.land 1 n)

end

end A289404.P8934799006396395901

namespace A289404

/-- `A290420(n-and(1, n))` -/
def P8934799006396395901.Spec : Prop :=
  ∀ n, P8934799006396395901.a n = A289404 n

end A289404

/-! ## A289404.P2954185841628699081

`A290671(n-and(1, n))`
-/

namespace A289404.P2954185841628699081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290671 (n - Nat.land 1 n)

end

end A289404.P2954185841628699081

namespace A289404

/-- `A290671(n-and(1, n))` -/
def P2954185841628699081.Spec : Prop :=
  ∀ n, P2954185841628699081.a n = A289404 n

end A289404

/-! ## A289404.P18287507231679210387

`A000042(∑[char[2*n]])`
-/

namespace A289404.P18287507231679210387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289404.P18287507231679210387

namespace A289404

/-- `A000042(∑[char[2*n]])` -/
def P18287507231679210387.Spec : Prop :=
  ∀ n, P18287507231679210387.a n = A289404 n

end A289404

/-! ## A289404.P2382154510718524078

`A002275(floor((n+2)/2))`
-/

namespace A289404.P2382154510718524078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 ⌊(n + 2 : ℚ) / 2⌋.toNat

end

end A289404.P2382154510718524078

namespace A289404

/-- `A002275(floor((n+2)/2))` -/
def P2382154510718524078.Spec : Prop :=
  ∀ n, P2382154510718524078.a n = A289404 n

end A289404

/-!
# A289405: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 566", based on the 5-celled von Neumann neighborhood.

The programs for A289405, the canonical program `A289405.P3264993500860179840` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289405 has offset 0).

The definition of A289405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289405.P3264993500860179840

`10^n+10*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289405

/-- `10^n+10*a(n-2)` -/
def P3264993500860179840.Spec : Prop :=
  ∀ n, (P3264993500860179840.a n : ℤ) = A289405 n

theorem P3264993500860179840.correct : P3264993500860179840.Spec := by
  intro n
  simp only [A289405]

end A289405

/-! ## A289405.P14376314586875267233

`A309761(A000982(n+1))`
-/

namespace A289405.P14376314586875267233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A000982 (n + 1)).toNat

end

end A289405.P14376314586875267233

namespace A289405

/-- `A309761(A000982(n+1))` -/
def P14376314586875267233.Spec : Prop :=
  ∀ n, P14376314586875267233.a n = A289405 n

end A289405

/-! ## A289405.P11391377338130160097

`A286508(n)*A289404(n)`
-/

namespace A289405.P11391377338130160097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n * A289404 n

end

end A289405.P11391377338130160097

namespace A289405

/-- `A286508(n)*A289404(n)` -/
def P11391377338130160097.Spec : Prop :=
  ∀ n, P11391377338130160097.a n = A289405 n

end A289405

/-! ## A289405.P4620683493601437299

`lcm(A279877(n), A282416(n))`
-/

namespace A289405.P4620683493601437299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A279877 n) (A282416 n)

end

end A289405.P4620683493601437299

namespace A289405

/-- `lcm(A279877(n), A282416(n))` -/
def P4620683493601437299.Spec : Prop :=
  ∀ n, (P4620683493601437299.a n : ℤ) = A289405 n

end A289405

/-! ## A289405.P12338140036435568059

`lcm(A279878(n), A282415(n))`
-/

namespace A289405.P12338140036435568059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A279878 n) (A282415 n)

end

end A289405.P12338140036435568059

namespace A289405

/-- `lcm(A279878(n), A282415(n))` -/
def P12338140036435568059.Spec : Prop :=
  ∀ n, (P12338140036435568059.a n : ℤ) = A289405 n

end A289405

/-! ## A289405.P4084030099872225080

`A309761(A008619(n²)+n)`
-/

namespace A289405.P4084030099872225080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A008619 (n ^ 2) + (n : ℤ)).toNat

end

end A289405.P4084030099872225080

namespace A289405

/-- `A309761(A008619(n²)+n)` -/
def P4084030099872225080.Spec : Prop :=
  ∀ n, P4084030099872225080.a n = A289405 n

end A289405

/-! ## A289405.P16687234468038868244

`A309761(A007590(n)+1+n)`
-/

namespace A289405.P16687234468038868244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A007590 n + 1 + (n : ℤ)).toNat

end

end A289405.P16687234468038868244

namespace A289405

/-- `A309761(A007590(n)+1+n)` -/
def P16687234468038868244.Spec : Prop :=
  ∀ n, P16687234468038868244.a n = A289405 n

end A289405

/-! ## A289405.P12196095264016497556

`A094026(n+1)*A286507(n)`
-/

namespace A289405.P12196095264016497556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (n + 1) * A286507 n

end

end A289405.P12196095264016497556

namespace A289405

/-- `A094026(n+1)*A286507(n)` -/
def P12196095264016497556.Spec : Prop :=
  ∀ n, P12196095264016497556.a n = A289405 n

end A289405

/-! ## A289405.P13176450876046846425

`A286507(n+1)*A289404(n)`
-/

namespace A289405.P13176450876046846425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 (n + 1) * A289404 n

end

end A289405.P13176450876046846425

namespace A289405

/-- `A286507(n+1)*A289404(n)` -/
def P13176450876046846425.Spec : Prop :=
  ∀ n, P13176450876046846425.a n = A289405 n

end A289405

/-! ## A289405.P10486246175345536638

`A047855(n+1)-A305753(n+2)`
-/

namespace A289405.P10486246175345536638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 (n + 1) - A305753 (n + 2)

end

end A289405.P10486246175345536638

namespace A289405

/-- `A047855(n+1)-A305753(n+2)` -/
def P10486246175345536638.Spec : Prop :=
  ∀ n, P10486246175345536638.a n = A289405 n

end A289405

/-! ## A289405.P6664943070527775325

`A305753(2*(n+2))-A305753(n+2)`
-/

namespace A289405.P6664943070527775325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305753 (2 * (n + 2)) - A305753 (n + 2)

end

end A289405.P6664943070527775325

namespace A289405

/-- `A305753(2*(n+2))-A305753(n+2)` -/
def P6664943070527775325.Spec : Prop :=
  ∀ n, P6664943070527775325.a n = A289405 n

end A289405

/-! ## A289405.P7749705099574887556

`A002275(n+1)-A002275(A110654(n))`
-/

namespace A289405.P7749705099574887556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) - A002275 (A110654 n).toNat

end

end A289405.P7749705099574887556

namespace A289405

/-- `A002275(n+1)-A002275(A110654(n))` -/
def P7749705099574887556.Spec : Prop :=
  ∀ n, P7749705099574887556.a n = A289405 n

end A289405

/-! ## A289405.P11495701829041682767

`A000042(n+1)-A002275(∑[A000035(n)])`
-/

namespace A289405.P11495701829041682767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A002275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289405.P11495701829041682767

namespace A289405

/-- `A000042(n+1)-A002275(∑[A000035(n)])` -/
def P11495701829041682767.Spec : Prop :=
  ∀ n, P11495701829041682767.a n = A289405 n

end A289405

/-! ## A289405.P7794808563141785844

`A002275(n+1)-A002275(A004526(n+1))`
-/

namespace A289405.P7794808563141785844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) - A002275 (A004526 (n + 1)).toNat

end

end A289405.P7794808563141785844

namespace A289405

/-- `A002275(n+1)-A002275(A004526(n+1))` -/
def P7794808563141785844.Spec : Prop :=
  ∀ n, P7794808563141785844.a n = A289405 n

end A289405

/-!
# A289406: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 569", based on the 5-celled von Neumann neighborhood.

The programs for A289406, there is no canonical definition to state claims against.
-/

/-! ## A289406.P4345067399889447034

`A000042(n+1)-A288012(n)%(4^n)`
-/

namespace A289406.P4345067399889447034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A288012 n) (4 ^ n : ℤ)

end

end A289406.P4345067399889447034

/-! ## A289406.P13139914321824990255

`A288013(n)+A289407(n)-A288012(n)`
-/

namespace A289406.P13139914321824990255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288013 n + (A289407 n - A288012 n)

end

end A289406.P13139914321824990255

/-! ## A289406.P13453811521280296804

`A288013(n)+A289407(n)-A007088(A288014(n))`
-/

namespace A289406.P13453811521280296804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288013 n + (A289407 n - A007088 (A288014 n).toNat)

end

end A289406.P13453811521280296804

/-! ## A289406.P18061772636959513648

`A288013(n)+A289407(n)-A185544(2*A288014(n))`
-/

namespace A289406.P18061772636959513648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288013 n + (A289407 n - A185544 (2 * A288014 n).toNat)

end

end A289406.P18061772636959513648

/-! ## A289406.P3348622203892337352

`A007088(A288015(n))+A289407(n)-A288012(n)`
-/

namespace A289406.P3348622203892337352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288015 n).toNat + (A289407 n - A288012 n)

end

end A289406.P3348622203892337352

/-!
# A289407: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 569", based on the 5-celled von Neumann neighborhood.

The programs for A289407, there is no canonical definition to state claims against.
-/

/-! ## A289407.P8524929416347454615

`or(1, A000042(n+1)-A288013(n))`
-/

namespace A289407.P8524929416347454615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000042 (n + 1) - A288013 n)

end

end A289407.P8524929416347454615

/-! ## A289407.P5987576352309158231

`A288012(n)+A289406(n)-A288013(n)`
-/

namespace A289407.P5987576352309158231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288012 n + (A289406 n - A288013 n)

end

end A289407.P5987576352309158231

/-! ## A289407.P9962963406514809322

`A007088(A288014(n))+A289406(n)-A288013(n)`
-/

namespace A289407.P9962963406514809322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288014 n).toNat + (A289406 n - A288013 n)

end

end A289407.P9962963406514809322

/-! ## A289407.P15103511495814767319

`A185544(2*A288014(n))+A289406(n)-A288013(n)`
-/

namespace A289407.P15103511495814767319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288014 n).toNat + (A289406 n - A288013 n)

end

end A289407.P15103511495814767319

/-! ## A289407.P2397590381891530302

`A288012(n)+A289406(n)-A007088(A288015(n))`
-/

namespace A289407.P2397590381891530302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288012 n + (A289406 n - A007088 (A288015 n).toNat)

end

end A289407.P2397590381891530302

/-!
# A289408: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 569", based on the 5-celled von Neumann neighborhood.

The programs for A289408, there is no canonical definition to state claims against.
-/

/-! ## A289408.P5838839850552117939

`A052955(A004277(n))-A288014(n)`
-/

namespace A289408.P5838839850552117939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A288014 n

end

end A289408.P5838839850552117939

/-! ## A289408.P11160751957168496691

`A288015(n)+A289409(n)-A288014(n)`
-/

namespace A289408.P11160751957168496691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288015 n + (A289409 n - A288014 n)

end

end A289408.P11160751957168496691

/-! ## A289408.P9011309880060106769

`A126646(n)-A288014(n)%A052955(n)`
-/

namespace A289408.P9011309880060106769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A288014 n) (A052955 n)

end

end A289408.P9011309880060106769

/-! ## A289408.P17111134442404392829

`or(A126646(n)-A288014(n), A288015(n))`
-/

namespace A289408.P17111134442404392829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126646 n - A288014 n) (A288015 n)

end

end A289408.P17111134442404392829

/-! ## A289408.P7427869323286816124

`A126646(n)-and(A052955(n+1), A288014(n))`
-/

namespace A289408.P7427869323286816124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.land (A052955 (n + 1)) (A288014 n)

end

end A289408.P7427869323286816124

/-!
# A289409: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 569", based on the 5-celled von Neumann neighborhood.

The programs for A289409, there is no canonical definition to state claims against.
-/

/-! ## A289409.P7325348503662984441

`or(1, A126646(n)-A288015(n))`
-/

namespace A289409.P7325348503662984441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A288015 n)

end

end A289409.P7325348503662984441

/-! ## A289409.P14009936201757554262

`A052955(A004277(n))-A288015(n)`
-/

namespace A289409.P14009936201757554262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A288015 n

end

end A289409.P14009936201757554262

/-! ## A289409.P9721480933987220735

`A288014(n)+A289408(n)-A288015(n)`
-/

namespace A289409.P9721480933987220735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288014 n + (A289408 n - A288015 n)

end

end A289409.P9721480933987220735

/-! ## A289409.P10359829357448336870

`A126646(A028310(n))-A288015(A028310(n))`
-/

namespace A289409.P10359829357448336870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A028310 n).toNat - A288015 (A028310 n).toNat

end

end A289409.P10359829357448336870

/-! ## A289409.P9231894571392004235

`A126646(n)-and(A288015(n), A289408(n+1))`
-/

namespace A289409.P9231894571392004235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.land (A288015 n) (A289408 (n + 1))

end

end A289409.P9231894571392004235

/-! ## A289409.P14316682201340596433

`A126646(n)-and(A288015(n), A289458(n+1))`
-/

namespace A289409.P14316682201340596433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.land (A288015 n) (A289458 (n + 1))

end

end A289409.P14316682201340596433

/-! ## A289409.P11239917095163424119

`A126646(n)-A288015(n)%A289406(n)`
-/

namespace A289409.P11239917095163424119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A288015 n) (A289406 n)

end

end A289409.P11239917095163424119

/-!
# A289410: Irregular triangular array T(m,k) with m (row) >= 1 and k (column) >= 1 read by rows: number of m-digit numbers whose digit sum is k.

The programs for A289410, there is no canonical definition to state claims against.
-/

/-! ## A289410.P8937517490839001375

`A213651(lt[1, A209859(3*n+4)])`
-/

namespace A289410.P8937517490839001375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209859 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A289410.P8937517490839001375

/-!
# A289411: a(n) = Sum_{k=0..n} sign(A007953(5*k) - A007953(k)).

The programs for A289411, there is no canonical definition to state claims against.
-/

/-! ## A289411.P1636176555046125146

`∑[A305258(A000096(A265524(n)))]`
-/

namespace A289411.P1636176555046125146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305258 (A000096 (A265524 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289411.P1636176555046125146

/-! ## A289411.P12317543611839100847

`and(A004507(n), A092524(A027828(n)))`
-/

namespace A289411.P12317543611839100847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004507 n) (A092524 (A027828 n).toNat)

end

end A289411.P12317543611839100847

/-! ## A289411.P17277136124342162032

`and(A007953(n), A092524(A027828(n)))`
-/

namespace A289411.P17277136124342162032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007953 n) (A092524 (A027828 n).toNat)

end

end A289411.P17277136124342162032

/-! ## A289411.P15439670697790823100

`and(A053837(n), A092524(A027828(n)))`
-/

namespace A289411.P15439670697790823100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053837 n) (A092524 (A027828 n).toNat)

end

end A289411.P15439670697790823100

/-! ## A289411.P14978747407596384265

`A007953(n)%A045331(A122055(n))`
-/

namespace A289411.P14978747407596384265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 n) (A045331 (A122055 n).toNat)

end

end A289411.P14978747407596384265

/-!
# A289412: a(n) = denominator of (sigma(n) / phi(n)).

The programs for A289412, the canonical program `A289412.P16736095440430260150` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289412 has offset 1).

The definition of A289412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289412.P13288571420023366848

`A009286(n+1)/∑{d}[n+1, #]`
-/

namespace A289412.P13288571420023366848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009286 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)

end

end A289412.P13288571420023366848

namespace A289412

/-- `A009286(n+1)/∑{d}[n+1, #]` -/
def P13288571420023366848.Spec : Prop :=
  ∀ n, P13288571420023366848.a n = (A289412 (n + 1) : ℚ)

end A289412

/-! ## A289412.P11510703055335259454

`Δ[A002088(n)]/A009223(n+1)`
-/

namespace A289412.P11510703055335259454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A009223 (n + 1) : ℚ)

end

end A289412.P11510703055335259454

namespace A289412

/-- `Δ[A002088(n)]/A009223(n+1)` -/
def P11510703055335259454.Spec : Prop :=
  ∀ n, P11510703055335259454.a n = (A289412 (n + 1) : ℚ)

end A289412

/-! ## A289412.P8223440240247882529

`Δ[A005728(n)]/A009223(n+1)`
-/

namespace A289412.P8223440240247882529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A009223 (n + 1) : ℚ)

end

end A289412.P8223440240247882529

namespace A289412

/-- `Δ[A005728(n)]/A009223(n+1)` -/
def P8223440240247882529.Spec : Prop :=
  ∀ n, P8223440240247882529.a n = (A289412 (n + 1) : ℚ)

end A289412

/-! ## A289412.P13310491894432496193

`A009286(n+1)/Δ[A160664(n)]`
-/

namespace A289412.P13310491894432496193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009286 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A289412.P13310491894432496193

namespace A289412

/-- `A009286(n+1)/Δ[A160664(n)]` -/
def P13310491894432496193.Spec : Prop :=
  ∀ n, P13310491894432496193.a n = (A289412 (n + 1) : ℚ)

end A289412

/-! ## A289412.P4179771284736763616

`A000010(n+1)/A009223(n+1)`
-/

namespace A289412.P4179771284736763616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A009223 (n + 1) : ℚ)

end

end A289412.P4179771284736763616

namespace A289412

/-- `A000010(n+1)/A009223(n+1)` -/
def P4179771284736763616.Spec : Prop :=
  ∀ n, P4179771284736763616.a n = (A289412 (n + 1) : ℚ)

end A289412

/-! ## A289412.P12580669489248176685

`A009286(n+1)/A000203(n+1)`
-/

namespace A289412.P12580669489248176685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009286 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A289412.P12580669489248176685

namespace A289412

/-- `A009286(n+1)/A000203(n+1)` -/
def P12580669489248176685.Spec : Prop :=
  ∀ n, P12580669489248176685.a n = (A289412 (n + 1) : ℚ)

end A289412

/-! ## A289412.P9559702559405469259

`∑{d}[n+1, (n+1)/#*A008683(#)]/A009223(n+1)`
-/

namespace A289412.P9559702559405469259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)) / (A009223 (n + 1) : ℚ)

end

end A289412.P9559702559405469259

namespace A289412

/-- `∑{d}[n+1, (n+1)/#*A008683(#)]/A009223(n+1)` -/
def P9559702559405469259.Spec : Prop :=
  ∀ n, P9559702559405469259.a n = (A289412 (n + 1) : ℚ)

end A289412

/-! ## A289412.P1365891173072464199

`A000010(n+1)/(A066087(n+1)+A066086(n+1))`
-/

namespace A289412.P1365891173072464199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A066087 (n + 1) + A066086 (n + 1) : ℚ)

end

end A289412.P1365891173072464199

namespace A289412

/-- `A000010(n+1)/(A066087(n+1)+A066086(n+1))` -/
def P1365891173072464199.Spec : Prop :=
  ∀ n, P1365891173072464199.a n = (A289412 (n + 1) : ℚ)

end A289412

/-! ## A289412.P16736095440430260150

`A062354(n+1)/(A000203(n+1)*A009223(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A289412

/-- `A062354(n+1)/(A000203(n+1)*A009223(n+1))` -/
def P16736095440430260150.Spec : Prop :=
  ∀ n, P16736095440430260150.a n = (A289412 (n + 1) : ℚ)

end A289412

/-! ## A289412.P6164037785773600169

`A000010(n+1)/A000203(n+1)*A289336(n+1)`
-/

namespace A289412.P6164037785773600169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A289336 (n + 1) : ℚ)

end

end A289412.P6164037785773600169

namespace A289412

/-- `A000010(n+1)/A000203(n+1)*A289336(n+1)` -/
def P6164037785773600169.Spec : Prop :=
  ∀ n, P6164037785773600169.a n = (A289412 (n + 1) : ℚ)

end A289412

/-! ## A289412.P58443047420149659

`(A109606(n+1)+1)/gcd(A000203(n+1), A000010(n+1))`
-/

namespace A289412.P58443047420149659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) / (Int.gcd (A000203 (n + 1)) (A000010 (n + 1)) : ℚ)

end

end A289412.P58443047420149659

namespace A289412

/-- `(A109606(n+1)+1)/gcd(A000203(n+1), A000010(n+1))` -/
def P58443047420149659.Spec : Prop :=
  ∀ n, P58443047420149659.a n = (A289412 (n + 1) : ℚ)

end A289412

/-!
# A289413: Primes p such that (p,p+4) is a pair of cousin primes and p == 3 (mod 10).

The programs for A289413, the canonical program `A289413.P7876705002274697040` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289413 has offset 1).

The definition of A289413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2683 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289413.P11622903144835617650

`A076746(Δ[n²])`
-/

namespace A289413.P11622903144835617650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076746 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A289413.P11622903144835617650

namespace A289413

/-- `A076746(Δ[n²])` -/
def P11622903144835617650.Spec : Prop :=
  ∀ n, P11622903144835617650.a n = A289413 (n + 1)

end A289413

/-! ## A289413.P10332872263175148511

`∩[A030431(n+1), A076746(n+1)]`
-/

namespace A289413.P10332872263175148511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289413.P10332872263175148511

namespace A289413

/-- `∩[A030431(n+1), A076746(n+1)]` -/
def P10332872263175148511.Spec : Prop :=
  ∀ n, (P10332872263175148511.a n : ℤ) = A289413 (n + 1)

end A289413

/-! ## A289413.P14107257825895142634

`∩[A015913(n+1), A030431(n+1)]`
-/

namespace A289413.P14107257825895142634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289413.P14107257825895142634

namespace A289413

/-- `∩[A015913(n+1), A030431(n+1)]` -/
def P14107257825895142634.Spec : Prop :=
  ∀ n, (P14107257825895142634.a n : ℤ) = A289413 (n + 1)

end A289413

/-! ## A289413.P7340672734321972598

`∩[A030431(n+1), A172238(n+1)]`
-/

namespace A289413.P7340672734321972598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289413.P7340672734321972598

namespace A289413

/-- `∩[A030431(n+1), A172238(n+1)]` -/
def P7340672734321972598.Spec : Prop :=
  ∀ n, (P7340672734321972598.a n : ℤ) = A289413 (n + 1)

end A289413

/-! ## A289413.P10897082594743759992

`∩[A030431(n+1), A056772(n+1)]`
-/

namespace A289413.P10897082594743759992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289413.P10897082594743759992

namespace A289413

/-- `∩[A030431(n+1), A056772(n+1)]` -/
def P10897082594743759992.Spec : Prop :=
  ∀ n, (P10897082594743759992.a n : ℤ) = A289413 (n + 1)

end A289413

/-! ## A289413.P12602801227246358387

`p?[A076746(2*n+1)]`
-/

namespace A289413.P12602801227246358387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076746 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289413.P12602801227246358387

namespace A289413

/-- `p?[A076746(2*n+1)]` -/
def P12602801227246358387.Spec : Prop :=
  ∀ n, P12602801227246358387.a n = A289413 (n + 1)

end A289413

/-! ## A289413.P7876705002274697040

`p?[A030432(n+1)-4]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A289413

/-- `p?[A030432(n+1)-4]` -/
def P7876705002274697040.Spec : Prop :=
  ∀ n, P7876705002274697040.a n = A289413 (n + 1)

theorem P7876705002274697040.correct : P7876705002274697040.Spec := by
  intro n
  simp only [A289413, Nat.add_sub_cancel]

end A289413

/-! ## A289413.P13948713462362935627

`∩[A015913(n+1), A045414(n+1)]`
-/

namespace A289413.P13948713462362935627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289413.P13948713462362935627

namespace A289413

/-- `∩[A015913(n+1), A045414(n+1)]` -/
def P13948713462362935627.Spec : Prop :=
  ∀ n, (P13948713462362935627.a n : ℤ) = A289413 (n + 1)

end A289413

/-! ## A289413.P9589463546472813390

`∩[A045414(n+1), A056772(n+1)]`
-/

namespace A289413.P9589463546472813390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289413.P9589463546472813390

namespace A289413

/-- `∩[A045414(n+1), A056772(n+1)]` -/
def P9589463546472813390.Spec : Prop :=
  ∀ n, (P9589463546472813390.a n : ℤ) = A289413 (n + 1)

end A289413

/-! ## A289413.P16115280870723372852

`∩[A045414(n+1), A076746(n+1)]`
-/

namespace A289413.P16115280870723372852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289413.P16115280870723372852

namespace A289413

/-- `∩[A045414(n+1), A076746(n+1)]` -/
def P16115280870723372852.Spec : Prop :=
  ∀ n, (P16115280870723372852.a n : ℤ) = A289413 (n + 1)

end A289413

/-! ## A289413.P5187682299485373052

`∩[A045414(n+1), A172238(n+1)]`
-/

namespace A289413.P5187682299485373052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289413.P5187682299485373052

namespace A289413

/-- `∩[A045414(n+1), A172238(n+1)]` -/
def P5187682299485373052.Spec : Prop :=
  ∀ n, (P5187682299485373052.a n : ℤ) = A289413 (n + 1)

end A289413

/-! ## A289413.P13331717084932600408

`p?[p?[5*n+7]-4]`
-/

namespace A289413.P13331717084932600408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289413.P13331717084932600408

namespace A289413

/-- `p?[p?[5*n+7]-4]` -/
def P13331717084932600408.Spec : Prop :=
  ∀ n, P13331717084932600408.a n = A289413 (n + 1)

end A289413

/-! ## A289413.P18301932097100837923

`p?[A045380(n+1)-4]`
-/

namespace A289413.P18301932097100837923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289413.P18301932097100837923

namespace A289413

/-- `p?[A045380(n+1)-4]` -/
def P18301932097100837923.Spec : Prop :=
  ∀ n, P18301932097100837923.a n = A289413 (n + 1)

end A289413

/-! ## A289413.P13212822735769426598

`p?[A045357(n+1)-4]`
-/

namespace A289413.P13212822735769426598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289413.P13212822735769426598

namespace A289413

/-- `p?[A045357(n+1)-4]` -/
def P13212822735769426598.Spec : Prop :=
  ∀ n, P13212822735769426598.a n = A289413 (n + 1)

end A289413

/-! ## A289413.P15627967915693003339

`∩[A015913(n+1), A383679(n+1)]`
-/

namespace A289413.P15627967915693003339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289413.P15627967915693003339

namespace A289413

/-- `∩[A015913(n+1), A383679(n+1)]` -/
def P15627967915693003339.Spec : Prop :=
  ∀ n, (P15627967915693003339.a n : ℤ) = A289413 (n + 1)

end A289413

/-! ## A289413.P11244950882852499346

`∩[A056772(n+1), A383679(n+1)]`
-/

namespace A289413.P11244950882852499346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289413.P11244950882852499346

namespace A289413

/-- `∩[A056772(n+1), A383679(n+1)]` -/
def P11244950882852499346.Spec : Prop :=
  ∀ n, (P11244950882852499346.a n : ℤ) = A289413 (n + 1)

end A289413

/-! ## A289413.P17595417280792944909

`p?[A045356(n+1)-4]`
-/

namespace A289413.P17595417280792944909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289413.P17595417280792944909

namespace A289413

/-- `p?[A045356(n+1)-4]` -/
def P17595417280792944909.Spec : Prop :=
  ∀ n, P17595417280792944909.a n = A289413 (n + 1)

end A289413

/-! ## A289413.P1291139523183925019

`∩[A015913(n+1), A045407(n+1)]`
-/

namespace A289413.P1291139523183925019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289413.P1291139523183925019

namespace A289413

/-- `∩[A015913(n+1), A045407(n+1)]` -/
def P1291139523183925019.Spec : Prop :=
  ∀ n, (P1291139523183925019.a n : ℤ) = A289413 (n + 1)

end A289413

/-! ## A289413.P12310682323413743636

`∩[A015913(n+1), A045429(n+1)]`
-/

namespace A289413.P12310682323413743636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289413.P12310682323413743636

namespace A289413

/-- `∩[A015913(n+1), A045429(n+1)]` -/
def P12310682323413743636.Spec : Prop :=
  ∀ n, (P12310682323413743636.a n : ℤ) = A289413 (n + 1)

end A289413

/-!
# A289414: a(n) = ((10-sqrt(10))^n + (10+sqrt(10))^n) / 2.

The programs for A289414, the canonical program `A289414.P12523990465831911840` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289414 has offset 0).

The definition of A289414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289414.P12523990465831911840

`20*a(n-1)-90*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289414

/-- `20*a(n-1)-90*a(n-2)` -/
def P12523990465831911840.Spec : Prop :=
  ∀ n, P12523990465831911840.a n = A289414 n

theorem P12523990465831911840.correct : P12523990465831911840.Spec := by
  intro n
  simp only [A289414]

end A289414

/-! ## A289414.P8379020571479679067

`((10-sqrt(10))^n+(10+sqrt(10))^n)/2`
-/

namespace A289414.P8379020571479679067
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((10 - Real.sqrt (10 : ℝ)) ^ n + (10 + Real.sqrt (10 : ℝ)) ^ n) / 2

end

end A289414.P8379020571479679067

namespace A289414

/-- `((10-sqrt(10))^n+(10+sqrt(10))^n)/2` -/
def P8379020571479679067.Spec : Prop :=
  ∀ n, P8379020571479679067.a n = (A289414 n : ℝ)

end A289414

/-! ## A289414.P31457086217538281

`A361432(A034856(n+10)-9)`
-/

namespace A289414.P31457086217538281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361432 (A034856 (n + 10) - 9).toNat

end

end A289414.P31457086217538281

namespace A289414

/-- `A361432(A034856(n+10)-9)` -/
def P31457086217538281.Spec : Prop :=
  ∀ n, P31457086217538281.a n = A289414 n

end A289414

/-!
# A289415: a(n) = ((11-sqrt(11))^n + (11+sqrt(11))^n) / 2.

The programs for A289415, the canonical program `A289415.P8930500336262889892` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289415 has offset 0).

The definition of A289415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289415.P1775693318813392425

`((11-sqrt(11))^n+(11+sqrt(11))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289415.P1775693318813392425
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((11 - Real.sqrt (11 : ℝ)) ^ n + (11 + Real.sqrt (11 : ℝ)) ^ n) / 2

end

end A289415.P1775693318813392425

namespace A289415

/-- `((11-sqrt(11))^n+(11+sqrt(11))^n)/2` -/
def P1775693318813392425.Spec : Prop :=
  ∀ n, P1775693318813392425.a n = (A289415 n : ℝ)

end A289415

/-! ## A289415.P8930500336262889892

`22*a(n-1)-110*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289415

/-- `22*a(n-1)-110*a(n-2)` -/
def P8930500336262889892.Spec : Prop :=
  ∀ n, P8930500336262889892.a n = A289415 n

theorem P8930500336262889892.correct : P8930500336262889892.Spec := by
  intro n
  simp only [A289415]

end A289415

/-!
# A289417: Coefficients of 1/(q*(j(q)-1728)) where j(q) is the elliptic modular invariant.

The programs for A289417, there is no canonical definition to state claims against.
-/

/-! ## A289417.P11561590673890932113

`record[ratio[A289209(A050603(n))]]`
-/

namespace A289417.P11561590673890932113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289209 (A050603 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289417.P11561590673890932113

/-!
# A289418: Number of Dyck paths of semilength n and height exactly 5.

The programs for A289418, the canonical program `A289418.P16600378519191471792` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289418 has offset 5).

The definition of A289418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289418.P16600378519191471792

`A080937(n+5)-A007051(n+4)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289418

/-- `A080937(n+5)-A007051(n+4)` -/
def P16600378519191471792.Spec : Prop :=
  ∀ n, P16600378519191471792.a n = A289418 (n + 5)

theorem P16600378519191471792.correct : P16600378519191471792.Spec := by
  intro n
  simp only [A289418, Nat.add_sub_cancel]

end A289418

/-! ## A289418.P4844863322439994294

`∑[A006053(2*(n+4))-A000244(n+3)]`
-/

namespace A289418.P4844863322439994294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (2 * (n + 4)) - A000244 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289418.P4844863322439994294

namespace A289418

/-- `∑[A006053(2*(n+4))-A000244(n+3)]` -/
def P4844863322439994294.Spec : Prop :=
  ∀ n, P4844863322439994294.a n = A289418 (n + 5)

end A289418

/-! ## A289418.P3273262178818370159

`A080936(A133263(n+4)+3)`
-/

namespace A289418.P3273262178818370159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A133263 (n + 4) + 3).toNat

end

end A289418.P3273262178818370159

namespace A289418

/-- `A080936(A133263(n+4)+3)` -/
def P3273262178818370159.Spec : Prop :=
  ∀ n, P3273262178818370159.a n = A289418 (n + 5)

end A289418

/-! ## A289418.P9976301721557043738

`A080936(A000124(n+4)+4)`
-/

namespace A289418.P9976301721557043738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A000124 (n + 4) + 4).toNat

end

end A289418.P9976301721557043738

namespace A289418

/-- `A080936(A000124(n+4)+4)` -/
def P9976301721557043738.Spec : Prop :=
  ∀ n, P9976301721557043738.a n = A289418 (n + 5)

end A289418

/-! ## A289418.P16922732849677337175

`A080936(A008486(n+5)+A000096(n))`
-/

namespace A289418.P16922732849677337175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A008486 (n + 5) + A000096 n).toNat

end

end A289418.P16922732849677337175

namespace A289418

/-- `A080936(A008486(n+5)+A000096(n))` -/
def P16922732849677337175.Spec : Prop :=
  ∀ n, P16922732849677337175.a n = A289418 (n + 5)

end A289418

/-!
# A289419: Number of Dyck paths of semilength n and height exactly 6.

The programs for A289419, the canonical program `A289419.P5189639168704027076` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289419 has offset 6).

The definition of A289419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289419.P5189639168704027076

`A024175(n+6)-A080937(n+6)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289419

/-- `A024175(n+6)-A080937(n+6)` -/
def P5189639168704027076.Spec : Prop :=
  ∀ n, P5189639168704027076.a n = A289419 (n + 6)

theorem P5189639168704027076.correct : P5189639168704027076.Spec := by
  intro n
  simp only [A289419, Nat.add_sub_cancel]

end A289419

/-! ## A289419.P7378506783349566575

`A080936(A166136(n+4))`
-/

namespace A289419.P7378506783349566575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A166136 (n + 4)).toNat

end

end A289419.P7378506783349566575

namespace A289419

/-- `A080936(A166136(n+4))` -/
def P7378506783349566575.Spec : Prop :=
  ∀ n, P7378506783349566575.a n = A289419 (n + 6)

end A289419

/-! ## A289419.P1431834605795623915

`A080936(A167499(n+4)+1)`
-/

namespace A289419.P1431834605795623915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A167499 (n + 4) + 1).toNat

end

end A289419.P1431834605795623915

namespace A289419

/-- `A080936(A167499(n+4)+1)` -/
def P1431834605795623915.Spec : Prop :=
  ∀ n, P1431834605795623915.a n = A289419 (n + 6)

end A289419

/-! ## A289419.P2776446876818978338

`A080936(A253145(n+4)+6)`
-/

namespace A289419.P2776446876818978338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A253145 (n + 4) + 6).toNat

end

end A289419.P2776446876818978338

namespace A289419

/-- `A080936(A253145(n+4)+6)` -/
def P2776446876818978338.Spec : Prop :=
  ∀ n, P2776446876818978338.a n = A289419 (n + 6)

end A289419

/-! ## A289419.P4878126155475397249

`A080936(A000217(n+5)+6)`
-/

namespace A289419.P4878126155475397249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A000217 (n + 5) + 6).toNat

end

end A289419.P4878126155475397249

namespace A289419

/-- `A080936(A000217(n+5)+6)` -/
def P4878126155475397249.Spec : Prop :=
  ∀ n, P4878126155475397249.a n = A289419 (n + 6)

end A289419

/-! ## A289419.P1367046038606399410

`A080936(A000124(n+9)-A016813(n+6))`
-/

namespace A289419.P1367046038606399410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A000124 (n + 9) - A016813 (n + 6)).toNat

end

end A289419.P1367046038606399410

namespace A289419

/-- `A080936(A000124(n+9)-A016813(n+6))` -/
def P1367046038606399410.Spec : Prop :=
  ∀ n, P1367046038606399410.a n = A289419 (n + 6)

end A289419

/-!
# A289420: Number of Dyck paths of semilength n and height exactly 7.

The programs for A289420, the canonical program `A289420.P8260356485151865093` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289420 has offset 7).

The definition of A289420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289420.P8260356485151865093

`A080938(n+7)-A024175(n+7)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289420

/-- `A080938(n+7)-A024175(n+7)` -/
def P8260356485151865093.Spec : Prop :=
  ∀ n, P8260356485151865093.a n = A289420 (n + 7)

theorem P8260356485151865093.correct : P8260356485151865093.Spec := by
  intro n
  simp only [A289420, Nat.add_sub_cancel]

end A289420

/-! ## A289420.P8190241720332329572

`A080936(A253145(n+5)+7)`
-/

namespace A289420.P8190241720332329572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A253145 (n + 5) + 7).toNat

end

end A289420.P8190241720332329572

namespace A289420

/-- `A080936(A253145(n+5)+7)` -/
def P8190241720332329572.Spec : Prop :=
  ∀ n, P8190241720332329572.a n = A289420 (n + 7)

end A289420

/-! ## A289420.P12711959803826175492

`A080936(A000217(n+6)+7)`
-/

namespace A289420.P12711959803826175492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A000217 (n + 6) + 7).toNat

end

end A289420.P12711959803826175492

namespace A289420

/-- `A080936(A000217(n+6)+7)` -/
def P12711959803826175492.Spec : Prop :=
  ∀ n, P12711959803826175492.a n = A289420 (n + 7)

end A289420

/-! ## A289420.P14620133515327631995

`A080936(A166136(n+4)+n+7)`
-/

namespace A289420.P14620133515327631995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A166136 (n + 4) + (n + 7 : ℤ)).toNat

end

end A289420.P14620133515327631995

namespace A289420

/-- `A080936(A166136(n+4)+n+7)` -/
def P14620133515327631995.Spec : Prop :=
  ∀ n, P14620133515327631995.a n = A289420 (n + 7)

end A289420

/-! ## A289420.P6682743439336705356

`A080936(A008486(n+7)+A000124(n+3))`
-/

namespace A289420.P6682743439336705356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A008486 (n + 7) + A000124 (n + 3)).toNat

end

end A289420.P6682743439336705356

namespace A289420

/-- `A080936(A008486(n+7)+A000124(n+3))` -/
def P6682743439336705356.Spec : Prop :=
  ∀ n, P6682743439336705356.a n = A289420 (n + 7)

end A289420

/-! ## A289420.P996047533101531438

`A080936(A000124(n+10)-A059558(n+7))`
-/

namespace A289420.P996047533101531438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A000124 (n + 10) - A059558 (n + 7)).toNat

end

end A289420.P996047533101531438

namespace A289420

/-- `A080936(A000124(n+10)-A059558(n+7))` -/
def P996047533101531438.Spec : Prop :=
  ∀ n, P996047533101531438.a n = A289420 (n + 7)

end A289420

/-!
# A289421: Number of Dyck paths of semilength n and height exactly 8.

The programs for A289421, there is no canonical definition to state claims against.
-/

/-! ## A289421.P13666361171586148738

`A080936(A167487(n+6)+1)`
-/

namespace A289421.P13666361171586148738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A167487 (n + 6) + 1).toNat

end

end A289421.P13666361171586148738

/-! ## A289421.P4727321731913078934

`A080936(A000217(n+7)+8)`
-/

namespace A289421.P4727321731913078934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A000217 (n + 7) + 8).toNat

end

end A289421.P4727321731913078934

/-! ## A289421.P18085164928603171196

`A080936(A000124(n+8)-(n+1))`
-/

namespace A289421.P18085164928603171196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A289421.P18085164928603171196

/-! ## A289421.P13175321594180971540

`A080936(A016813(n+7)+A000124(n+3))`
-/

namespace A289421.P13175321594180971540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A016813 (n + 7) + A000124 (n + 3)).toNat

end

end A289421.P13175321594180971540

/-! ## A289421.P2033003389263642202

`A080936(A008486(n+9)+A000096(n+3))`
-/

namespace A289421.P2033003389263642202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A008486 (n + 9) + A000096 (n + 3)).toNat

end

end A289421.P2033003389263642202

/-!
# A289422: Number of Dyck paths of semilength n and height exactly 9.

The programs for A289422, the canonical program `A289422.P10486747953016827996` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289422 has offset 9).

The definition of A289422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289422.P10486747953016827996

`A211216(n+9)-A033191(n+9)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289422

/-- `A211216(n+9)-A033191(n+9)` -/
def P10486747953016827996.Spec : Prop :=
  ∀ n, P10486747953016827996.a n = A289422 (n + 9)

theorem P10486747953016827996.correct : P10486747953016827996.Spec := by
  intro n
  simp only [A289422, Nat.add_sub_cancel]

end A289422

/-! ## A289422.P7312820112451124956

`A080936(A167499(n+7)+4)`
-/

namespace A289422.P7312820112451124956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A167499 (n + 7) + 4).toNat

end

end A289422.P7312820112451124956

namespace A289422

/-- `A080936(A167499(n+7)+4)` -/
def P7312820112451124956.Spec : Prop :=
  ∀ n, P7312820112451124956.a n = A289422 (n + 9)

end A289422

/-! ## A289422.P8110446125016211106

`A080936(A000124(n+8)+8)`
-/

namespace A289422.P8110446125016211106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A000124 (n + 8) + 8).toNat

end

end A289422.P8110446125016211106

namespace A289422

/-- `A080936(A000124(n+8)+8)` -/
def P8110446125016211106.Spec : Prop :=
  ∀ n, P8110446125016211106.a n = A289422 (n + 9)

end A289422

/-! ## A289422.P9219551940329847018

`A080936(A000217(n+8)+9)`
-/

namespace A289422.P9219551940329847018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A000217 (n + 8) + 9).toNat

end

end A289422.P9219551940329847018

namespace A289422

/-- `A080936(A000217(n+8)+9)` -/
def P9219551940329847018.Spec : Prop :=
  ∀ n, P9219551940329847018.a n = A289422 (n + 9)

end A289422

/-! ## A289422.P8441153958236489428

`A080936(A000096(n+9)-9-A005843(n))`
-/

namespace A289422.P8441153958236489428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A000096 (n + 9) - 9 - A005843 n).toNat

end

end A289422.P8441153958236489428

namespace A289422

/-- `A080936(A000096(n+9)-9-A005843(n))` -/
def P8441153958236489428.Spec : Prop :=
  ∀ n, P8441153958236489428.a n = A289422 (n + 9)

end A289422

/-!
# A289423: Number of Dyck paths of semilength n and height exactly 10.

The programs for A289423, there is no canonical definition to state claims against.
-/

/-! ## A289423.P12866022173982530910

`A080936(A000096(n+8)+11)`
-/

namespace A289423.P12866022173982530910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A000096 (n + 8) + 11).toNat

end

end A289423.P12866022173982530910

/-! ## A289423.P3842032793465049711

`A080936(A000217(n+9)+10)`
-/

namespace A289423.P3842032793465049711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A000217 (n + 9) + 10).toNat

end

end A289423.P3842032793465049711

/-! ## A289423.P4859778729819637267

`A080936(A179865(n+10)+10)`
-/

namespace A289423.P4859778729819637267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (A179865 (n + 10) + 10).toNat

end

end A289423.P4859778729819637267

/-! ## A289423.P72260284097281648

`A080936(eq[11, A131818(n+1)])`
-/

namespace A289423.P72260284097281648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289423.P72260284097281648

/-! ## A289423.P12808737847674817186

`A080936(eq[10, A256910(n)])`
-/

namespace A289423.P12808737847674817186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289423.P12808737847674817186

/-!
# A289425: a(n) = length of longest circuit code K(n,4).

The programs for A289425, there is no canonical definition to state claims against.
-/

/-! ## A289425.P16114437848166129296

`lt[A126006(n), A126103(n+2)]`
-/

namespace A289425.P16114437848166129296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126103 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A289425.P16114437848166129296

/-! ## A289425.P17009393161042117355

`record[Δ[A047994(A267983(n+1))]]`
-/

namespace A289425.P17009393161042117355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A267983 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289425.P17009393161042117355

/-! ## A289425.P1345664271376371111

`eq[Δ[A340030(n)], A103270(n+2)]`
-/

namespace A289425.P1345664271376371111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340030 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103270 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A289425.P1345664271376371111

/-! ## A289425.P11186021866004007035

`eq[Δ[A340030(n)], A015161(n+4)]`
-/

namespace A289425.P11186021866004007035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340030 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A289425.P11186021866004007035

/-! ## A289425.P15929425997190992189

`record[A056239(A049988(2*n+1)²)]`
-/

namespace A289425.P15929425997190992189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A049988 (2 * n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289425.P15929425997190992189

/-!
# A289426: a(n) = length of longest circuit code K(n,5).

The programs for A289426, there is no canonical definition to state claims against.
-/

/-! ## A289426.P8514073229287388494

`record[A287655(A178731(n))]`
-/

namespace A289426.P8514073229287388494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287655 (A178731 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289426.P8514073229287388494

/-! ## A289426.P4181997494829527949

`record[A226447(n)%A133310(n)]`
-/

namespace A289426.P4181997494829527949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226447 n) (A133310 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289426.P4181997494829527949

/-! ## A289426.P10786375276400427232

`eq[A143025(n), A335438(n+1)]`
-/

namespace A289426.P10786375276400427232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143025 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289426.P10786375276400427232

/-! ## A289426.P8376064522681935404

`eq[A266614(n), A335438(n+1)]`
-/

namespace A289426.P8376064522681935404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289426.P8376064522681935404

/-! ## A289426.P15687623706407567049

`record[A023900(n+1)-A122275(n)]`
-/

namespace A289426.P15687623706407567049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) - A122275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289426.P15687623706407567049

/-!
# A289427: Sum of factorial-Catalan numbers over a certain family of decorations.

The programs for A289427, there is no canonical definition to state claims against.
-/

/-! ## A289427.P17944998746042830567

`2^n*A195119(A062992(n))`
-/

namespace A289427.P17944998746042830567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A195119 (A062992 n).toNat

end

end A289427.P17944998746042830567

/-! ## A289427.P2810063877213100396

`2^n*A194920(2*A062992(n))`
-/

namespace A289427.P2810063877213100396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A194920 (2 * A062992 n).toNat

end

end A289427.P2810063877213100396

/-!
# A289428: Sum of factorial-Catalan numbers over a certain family of decorations.

The programs for A289428, there is no canonical definition to state claims against.
-/

/-! ## A289428.P4977930354595455426

`A109681(A224992(n))`
-/

namespace A289428.P4977930354595455426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109681 (A224992 n).toNat

end

end A289428.P4977930354595455426

/-!
# A289429: Sum of factorial-Catalan numbers over a certain family of decorations.

The programs for A289429, there is no canonical definition to state claims against.
-/

/-! ## A289429.P2181340143434772390

`(n*(n*(n-5)+5)²)!*A029494(n+1)`
-/

namespace A289429.P2181340143434772390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat : ℤ) * A029494 (n + 1)

end

end A289429.P2181340143434772390

/-!
# A289430: Sum of factorial-Catalan numbers over a certain family of decorations.

The programs for A289430, there is no canonical definition to state claims against.
-/

/-! ## A289430.P11216396699157842869

`A005159(n)+A005068(A005118(n))`
-/

namespace A289430.P11216396699157842869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005159 n + A005068 (A005118 n).toNat

end

end A289430.P11216396699157842869

/-! ## A289430.P12507229052339623593

`A324088(A019565(n))+A005159(n)`
-/

namespace A289430.P12507229052339623593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324088 (A019565 n).toNat + A005159 n

end

end A289430.P12507229052339623593

/-!
# A289431: Sum of factorial-Catalan numbers over a certain family of decorations.

The programs for A289431, there is no canonical definition to state claims against.
-/

/-! ## A289431.P11201220997108451600

`A079411(A078938(∑[n]))`
-/

namespace A289431.P11201220997108451600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079411 (A078938 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A289431.P11201220997108451600

/-! ## A289431.P2605288325231306766

`A125225(∑[A263823(n)])`
-/

namespace A289431.P2605288325231306766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289431.P2605288325231306766

/-!
# A289432: Numbers b_n of Fibonacci-quilt legal decompositions of n.

The programs for A289432, there is no canonical definition to state claims against.
-/

/-! ## A289432.P8493563453731801879

`A339183(A032162(n+2))`
-/

namespace A289432.P8493563453731801879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A032162 (n + 2)).toNat

end

end A289432.P8493563453731801879

/-! ## A289432.P11169866010274496614

`A135660(or(A000009(n), A000073(n)))`
-/

namespace A289432.P11169866010274496614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (Int.lor (A000009 n) (A000073 n)).toNat

end

end A289432.P11169866010274496614

/-! ## A289432.P5791254721667175254

`A121902(A164140(n))`
-/

namespace A289432.P5791254721667175254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A164140 n).toNat

end

end A289432.P5791254721667175254

/-! ## A289432.P14115056703310970235

`floor(A003056(A054162(n)+3)/3)`
-/

namespace A289432.P14115056703310970235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003056 (A054162 n + 3).toNat : ℚ) / 3⌋

end

end A289432.P14115056703310970235

/-! ## A289432.P1712563462810094850

`A000196(∑[A008615(A050253(n))])`
-/

namespace A289432.P1712563462810094850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A050253 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289432.P1712563462810094850

/-!
# A289433: Numbers c_n of Fibonacci-quilt legal decompositions of n.

The programs for A289433, there is no canonical definition to state claims against.
-/

/-! ## A289433.P15185837488933186719

`Δ[A289432(n+7)]`
-/

namespace A289433.P15185837488933186719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289432 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289433.P15185837488933186719

/-! ## A289433.P4359891417959003779

`A289432(n+8)-A289432(n+7)`
-/

namespace A289433.P4359891417959003779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289432 (n + 8) - A289432 (n + 7)

end

end A289433.P4359891417959003779

/-! ## A289433.P13436256681943523207

`A257639(floor(sqrt(A077587(n))))`
-/

namespace A289433.P13436256681943523207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (Int.sqrt (A077587 n)).toNat

end

end A289433.P13436256681943523207

/-! ## A289433.P14458432905965972828

`A257639(ceil(sqrt(A106183(n))))`
-/

namespace A289433.P14458432905965972828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 ⌈Real.sqrt (A106183 n : ℝ)⌉.toNat

end

end A289433.P14458432905965972828

/-! ## A289433.P15239772993899525200

`A257639(round(sqrt(A106183(n))))`
-/

namespace A289433.P15239772993899525200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (SequenceMachineLib.roundAway (Real.sqrt (A106183 n : ℝ))).toNat

end

end A289433.P15239772993899525200

/-!
# A289434: Related to study of restricted sumsets.

The programs for A289434, there is no canonical definition to state claims against.
-/

/-! ## A289434.P10683408197425174602

`A124973(n)+record[A332085(n+1)]`
-/

namespace A289434.P10683408197425174602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124973 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289434.P10683408197425174602

/-!
# A289435: The arithmetic function v_3(n,3).

The programs for A289435, there is no canonical definition to state claims against.
-/

/-! ## A289435.P10561774032447784035

`(n%2+1)*A290980(n+2)`
-/

namespace A289435.P10561774032447784035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A290980 (n + 2)

end

end A289435.P10561774032447784035

/-! ## A289435.P4228675099349556226

`A000034(n)*A290980(n+2)`
-/

namespace A289435.P4228675099349556226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A290980 (n + 2)

end

end A289435.P4228675099349556226

/-! ## A289435.P12595793941073277684

`A084642(n)*A290980(n+2)`
-/

namespace A289435.P12595793941073277684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n * A290980 (n + 2)

end

end A289435.P12595793941073277684

/-! ## A289435.P11722289296193224738

`∑[A165326(n)]*A290980(n+2)`
-/

namespace A289435.P11722289296193224738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A290980 (n + 2)

end

end A289435.P11722289296193224738

/-! ## A289435.P12535837389714962569

`A014963(A135517(n))*A290980(n+2)`
-/

namespace A289435.P12535837389714962569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A135517 n).toNat * A290980 (n + 2)

end

end A289435.P12535837389714962569

/-! ## A289435.P6354645191091339878

`A135517(A135517(n)+1)*A290980(n+2)`
-/

namespace A289435.P6354645191091339878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (A135517 n + 1).toNat * A290980 (n + 2)

end

end A289435.P6354645191091339878

/-! ## A289435.P9917307852968397599

`and(-A000034(n), A211316(n+2))`
-/

namespace A289435.P9917307852968397599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000034 n) (A211316 (n + 2))

end

end A289435.P9917307852968397599

/-! ## A289435.P8521658551551510536

`Δ[A001651(n+1)]*A290980(n+2)`
-/

namespace A289435.P8521658551551510536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A290980 (n + 2)

end

end A289435.P8521658551551510536

/-! ## A289435.P9526694338125902796

`floor(A211316(n+2)/A084642(n))*A084642(n)`
-/

namespace A289435.P9526694338125902796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A211316 (n + 2) : ℚ) / (A084642 n : ℚ)⌋ * A084642 n

end

end A289435.P9526694338125902796

/-! ## A289435.P1049302361658630282

`A290983(2*(n+2))`
-/

namespace A289435.P1049302361658630282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290983 (2 * (n + 2))

end

end A289435.P1049302361658630282

/-! ## A289435.P9391732989282503439

`and(A075427(n), A211316(n+2))`
-/

namespace A289435.P9391732989282503439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075427 n) (A211316 (n + 2))

end

end A289435.P9391732989282503439

/-! ## A289435.P787151911898103707

`and(∑[A094024(n)], A211316(n+2))`
-/

namespace A289435.P787151911898103707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A211316 (n + 2))

end

end A289435.P787151911898103707

/-! ## A289435.P5340876605428047144

`and(A211316(n+2), A288770(n))`
-/

namespace A289435.P5340876605428047144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211316 (n + 2)) (A288770 n)

end

end A289435.P5340876605428047144

/-! ## A289435.P1911483175075157825

`A135517(n²)*A290980(n+2)`
-/

namespace A289435.P1911483175075157825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (n ^ 2) * A290980 (n + 2)

end

end A289435.P1911483175075157825

/-! ## A289435.P10507512970202568693

`A006519(n²+1)*A290980(n+2)`
-/

namespace A289435.P10507512970202568693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A290980 (n + 2)

end

end A289435.P10507512970202568693

/-!
# A289436: The arithmetic function v_1(n,4).

The programs for A289436, there is no canonical definition to state claims against.
-/

/-! ## A289436.P14764066718818216624

`A027656(n)+A000035(n)*A289437(n+2)`
-/

namespace A289436.P14764066718818216624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A000035 n * A289437 (n + 2)

end

end A289436.P14764066718818216624

/-! ## A289436.P6655276876139220822

`A027656(n)+A000035(n)*A289438(n+2)`
-/

namespace A289436.P6655276876139220822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A000035 n * A289438 (n + 2)

end

end A289436.P6655276876139220822

/-! ## A289436.P17530708823694308511

`A289437(A080512(n+2))`
-/

namespace A289436.P17530708823694308511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (A080512 (n + 2)).toNat

end

end A289436.P17530708823694308511

/-! ## A289436.P592070927435810412

`A289437(A027656(n)+2+n)`
-/

namespace A289436.P592070927435810412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (A027656 n + 2 + (n : ℤ)).toNat

end

end A289436.P592070927435810412

/-! ## A289436.P810575559971680954

`A289438(A027656(n)+2+n)`
-/

namespace A289436.P810575559971680954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (A027656 n + 2 + (n : ℤ)).toNat

end

end A289436.P810575559971680954

/-! ## A289436.P2530234546804250014

`A289437(A289439(3*(n+2)))`
-/

namespace A289436.P2530234546804250014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (A289439 (3 * (n + 2))).toNat

end

end A289436.P2530234546804250014

/-! ## A289436.P15467686468737023841

`A291272(n+2)+A010054(A028781(n+1)²)`
-/

namespace A289436.P15467686468737023841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291272 (n + 2) + A010054 (A028781 (n + 1) ^ 2).toNat

end

end A289436.P15467686468737023841

/-!
# A289437: The arithmetic function v_2(n,4).

The programs for A289437, there is no canonical definition to state claims against.
-/

/-! ## A289437.P14091931958736398710

`ceil(A289438(2*(n+2))/2)`
-/

namespace A289437.P14091931958736398710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289438 (2 * (n + 2)) : ℚ) / 2⌉

end

end A289437.P14091931958736398710

/-! ## A289437.P1210196991588069060

`round(A289438(2*n+4)/2)`
-/

namespace A289437.P1210196991588069060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A289438 (2 * n + 4) : ℚ) / 2)

end

end A289437.P1210196991588069060

/-! ## A289437.P1742456214603654468

`A110654(A289438(2*(n+2)))`
-/

namespace A289437.P1742456214603654468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A289438 (2 * (n + 2))).toNat

end

end A289437.P1742456214603654468

/-! ## A289437.P10632062310896794642

`A028242(xor(1, A289438(2*(n+2))))`
-/

namespace A289437.P10632062310896794642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A289438 (2 * (n + 2)))).toNat

end

end A289437.P10632062310896794642

/-! ## A289437.P17374238654215762830

`A289438(2*(n+2))-A289438(n+2)`
-/

namespace A289437.P17374238654215762830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (2 * (n + 2)) - A289438 (n + 2)

end

end A289437.P17374238654215762830

/-! ## A289437.P3544881068726647051

`A065033(A289438(2*(n+2)))-A000007(n)`
-/

namespace A289437.P3544881068726647051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A289438 (2 * (n + 2))).toNat - A000007 n

end

end A289437.P3544881068726647051

/-!
# A289438: The arithmetic function v_4(n,4).

The programs for A289438, there is no canonical definition to state claims against.
-/

/-! ## A289438.P3198545117038208585

`A289186(n+2)-A133944(A088813(n))`
-/

namespace A289438.P3198545117038208585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289186 (n + 2) - A133944 (A088813 n).toNat

end

end A289438.P3198545117038208585

/-! ## A289438.P283305262783295878

`A289186(n+2)+A122840(∑[A037095(n)])`
-/

namespace A289438.P283305262783295878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289186 (n + 2) + A122840 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289438.P283305262783295878

/-! ## A289438.P14323557707019505057

`A289186(n+2)+A001222(Δ[A055569(n)])`
-/

namespace A289438.P14323557707019505057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289186 (n + 2) + A001222 (f1 (n + 1) - f1 n).toNat

end

end A289438.P14323557707019505057

/-! ## A289438.P11091529081527105035

`A339183(Δ[A055569(n)])+A289186(n+2)`
-/

namespace A289438.P11091529081527105035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (f1 (n + 1) - f1 n).toNat + A289186 (n + 2)

end

end A289438.P11091529081527105035

/-! ## A289438.P13493787810796212480

`A289186(n+2)-A133944(A219038(n+1))`
-/

namespace A289438.P13493787810796212480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289186 (n + 2) - A133944 (A219038 (n + 1)).toNat

end

end A289438.P13493787810796212480

/-!
# A289439: The arithmetic function v_1(n,5).

The programs for A289439, there is no canonical definition to state claims against.
-/

/-! ## A289439.P2252639113360761008

`or(A000035(A289440(n+2)), A289441(n+2))`
-/

namespace A289439.P2252639113360761008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A289440 (n + 2)).toNat) (A289441 (n + 2))

end

end A289439.P2252639113360761008

/-! ## A289439.P3532418216110162446

`A027656(n)+A000035(n)*A289186(n+2)`
-/

namespace A289439.P3532418216110162446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A000035 n * A289186 (n + 2)

end

end A289439.P3532418216110162446

/-! ## A289439.P16966028151527851844

`A027656(n)+A000035(n)*A290978(n+2)`
-/

namespace A289439.P16966028151527851844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A000035 n * A290978 (n + 2)

end

end A289439.P16966028151527851844

/-! ## A289439.P16915873484305370656

`or(A000035(n)*A289186(n+2), A289441(n+2))`
-/

namespace A289439.P16915873484305370656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n * A289186 (n + 2)) (A289441 (n + 2))

end

end A289439.P16915873484305370656

/-! ## A289439.P5331165041641805859

`or(A000035(n)*A290978(n+2), A289441(n+2))`
-/

namespace A289439.P5331165041641805859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n * A290978 (n + 2)) (A289441 (n + 2))

end

end A289439.P5331165041641805859

/-! ## A289439.P6871970781884752707

`A289186(A080512(n+2))`
-/

namespace A289439.P6871970781884752707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289186 (A080512 (n + 2)).toNat

end

end A289439.P6871970781884752707

/-! ## A289439.P17225246462086654085

`A289186(A027656(n)+2+n)`
-/

namespace A289439.P17225246462086654085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289186 (A027656 n + 2 + (n : ℤ)).toNat

end

end A289439.P17225246462086654085

/-! ## A289439.P12610597937707774881

`A290978(A027656(n)+2+n)`
-/

namespace A289439.P12610597937707774881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290978 (A027656 n + 2 + (n : ℤ)).toNat

end

end A289439.P12610597937707774881

/-! ## A289439.P65249687190166886

`A289441(n+2)+A010054(A028781(n+1)²)`
-/

namespace A289439.P65249687190166886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (n + 2) + A010054 (A028781 (n + 1) ^ 2).toNat

end

end A289439.P65249687190166886

/-!
# A289440: The arithmetic function v_3(n,5).

The programs for A289440, there is no canonical definition to state claims against.
-/

/-! ## A289440.P4918952858944506347

`A290636(n+2)-A122840(A006498(n))`
-/

namespace A289440.P4918952858944506347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290636 (n + 2) - A122840 (A006498 n).toNat

end

end A289440.P4918952858944506347

/-! ## A289440.P10227476499412785503

`A290636(n+2)+A133944(A088813(n))`
-/

namespace A289440.P10227476499412785503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290636 (n + 2) + A133944 (A088813 n).toNat

end

end A289440.P10227476499412785503

/-! ## A289440.P17666177908039571117

`A290636(n+2)-A339183(Δ[A055569(n)])`
-/

namespace A289440.P17666177908039571117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290636 (n + 2) - A339183 (f1 (n + 1) - f1 n).toNat

end

end A289440.P17666177908039571117

/-! ## A289440.P7208842748960691998

`round((n+1)/2)-A055640(A138364(n))`
-/

namespace A289440.P7208842748960691998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2) - A055640 (A138364 n).toNat

end

end A289440.P7208842748960691998

/-! ## A289440.P6724935454462434651

`A290636(n+2)+A133944(A219038(n+1))`
-/

namespace A289440.P6724935454462434651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290636 (n + 2) + A133944 (A219038 (n + 1)).toNat

end

end A289440.P6724935454462434651

/-!
# A289441: The arithmetic function v_5(n,5).

The programs for A289441, there is no canonical definition to state claims against.
-/

/-! ## A289441.P17349838445816493848

`A289439(n+2)-A010054(A028781(n+1)²)`
-/

namespace A289441.P17349838445816493848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (n + 2) - A010054 (A028781 (n + 1) ^ 2).toNat

end

end A289441.P17349838445816493848

/-! ## A289441.P14710156374508785096

`A289439(n+2)-A112765(A185943(2*(n+2)))`
-/

namespace A289441.P14710156374508785096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (n + 2) - A112765 (A185943 (2 * (n + 2))).toNat

end

end A289441.P14710156374508785096

/-! ## A289441.P4277610969097842781

`A289439(n+2)-A151667(A047968(n+5))`
-/

namespace A289441.P4277610969097842781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (n + 2) - A151667 (A047968 (n + 5)).toNat

end

end A289441.P4277610969097842781

/-! ## A289441.P6294287703842961931

`A289439(n+2)-A189476(A022166(n+1))`
-/

namespace A289441.P6294287703842961931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (n + 2) - A189476 (A022166 (n + 1)).toNat

end

end A289441.P6294287703842961931

/-! ## A289441.P4587538502687610277

`A289439(n+2)%A330405(A003586(3*(n+1)))`
-/

namespace A289441.P4587538502687610277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289439 (n + 2)) (A330405 (A003586 (3 * (n + 1))).toNat)

end

end A289441.P4587538502687610277

/-!
# A289443: a(0) = 2, a(1) = 6; thereafter a(n) = 3*n^2.

The programs for A289443, the canonical program `A289443.P6015662050192196833` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289443 has offset 0).

The definition of A289443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289443.P6015662050192196833

`n²*3%a(n-1)` with `a(0)=2, a(1)=6`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289443

/-- `n²*3%a(n-1)` -/
def P6015662050192196833.Spec : Prop :=
  ∀ n, (P6015662050192196833.a n : ℤ) = A289443 n

theorem P6015662050192196833.correct : P6015662050192196833.Spec := by
  intro n
  simp only [A289443]

end A289443

/-! ## A289443.P547694456817550571

`n²*gcd(3, a(n-1))` with `a(0)=2, a(1)=6`
-/

namespace A289443.P547694456817550571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n a =>
  n ^ 2 * Nat.gcd 3 (a (n - 1))

end

end A289443.P547694456817550571

namespace A289443

/-- `n²*gcd(3, a(n-1))` -/
def P547694456817550571.Spec : Prop :=
  ∀ n, (P547694456817550571.a n : ℤ) = A289443 n

end A289443

/-! ## A289443.P10060526124238203149

`3*n^(2%a(n-1))` with `a(0)=2, a(1)=6`
-/

namespace A289443.P10060526124238203149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n a =>
  3 * n ^ (2 % a (n - 1))

end

end A289443.P10060526124238203149

namespace A289443

/-- `3*n^(2%a(n-1))` -/
def P10060526124238203149.Spec : Prop :=
  ∀ n, (P10060526124238203149.a n : ℤ) = A289443 n

end A289443

/-! ## A289443.P2644954708280175636

`3*floor((1/a(n-1)+n)²)` with `a(0)=2`
-/

namespace A289443.P2644954708280175636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * ⌊(1 / (a (n - 1) : ℚ) + (n : ℚ)) ^ 2⌋

end

end A289443.P2644954708280175636

namespace A289443

/-- `3*floor((1/a(n-1)+n)²)` -/
def P2644954708280175636.Spec : Prop :=
  ∀ n, P2644954708280175636.a n = A289443 n

end A289443

/-! ## A289443.P16305986396011211889

`3*floor((a(n-1)^(-1)+n)²)` with `a(0)=2`
-/

namespace A289443.P16305986396011211889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * ⌊((a (n - 1) : ℚ) ^ (-1 : ℤ) + (n : ℚ)) ^ 2⌋

end

end A289443.P16305986396011211889

namespace A289443

/-- `3*floor((a(n-1)^(-1)+n)²)` -/
def P16305986396011211889.Spec : Prop :=
  ∀ n, P16305986396011211889.a n = A289443 n

end A289443

/-! ## A289443.P17923478371927389679

`(floor(2/a(n-1))+n)*3*n` with `a(0)=2`
-/

namespace A289443.P17923478371927389679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (⌊2 / (a (n - 1) : ℚ)⌋ + (n : ℤ)) * (3 * n : ℤ)

end

end A289443.P17923478371927389679

namespace A289443

/-- `(floor(2/a(n-1))+n)*3*n` -/
def P17923478371927389679.Spec : Prop :=
  ∀ n, P17923478371927389679.a n = A289443 n

end A289443

/-! ## A289443.P17642450977427298836

`n²*A028882(C(2, a(n-1))+1)` with `a(0)=2`
-/

namespace A289443.P17642450977427298836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n ^ 2 : ℤ) * A028882 (Nat.choose 2 (a (n - 1)).toNat + 1)

end

end A289443.P17642450977427298836

namespace A289443

/-- `n²*A028882(C(2, a(n-1))+1)` -/
def P17642450977427298836.Spec : Prop :=
  ∀ n, P17642450977427298836.a n = A289443 n

end A289443

/-! ## A289443.P17096371271726320762

`n²*A075703(C(2, a(n-1))+1)` with `a(0)=2`
-/

namespace A289443.P17096371271726320762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n ^ 2 : ℤ) * A075703 (Nat.choose 2 (a (n - 1)).toNat + 1)

end

end A289443.P17096371271726320762

namespace A289443

/-- `n²*A075703(C(2, a(n-1))+1)` -/
def P17096371271726320762.Spec : Prop :=
  ∀ n, P17096371271726320762.a n = A289443 n

end A289443

/-! ## A289443.P10878652569335940776

`n²*A125521(C(2, a(n-1))+1)` with `a(0)=2`
-/

namespace A289443.P10878652569335940776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n ^ 2 : ℤ) * A125521 (Nat.choose 2 (a (n - 1)).toNat + 1)

end

end A289443.P10878652569335940776

namespace A289443

/-- `n²*A125521(C(2, a(n-1))+1)` -/
def P10878652569335940776.Spec : Prop :=
  ∀ n, P10878652569335940776.a n = A289443 n

end A289443

/-! ## A289443.P13944715972660632893

`n²*A197442(C(2, a(n-1))+1)` with `a(0)=2`
-/

namespace A289443.P13944715972660632893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n ^ 2 : ℤ) * A197442 (Nat.choose 2 (a (n - 1)).toNat + 1)

end

end A289443.P13944715972660632893

namespace A289443

/-- `n²*A197442(C(2, a(n-1))+1)` -/
def P13944715972660632893.Spec : Prop :=
  ∀ n, P13944715972660632893.a n = A289443 n

end A289443

/-! ## A289443.P17921343639021830837

`n²*A063259(C(3, a(n-1))+1)` with `a(0)=2`
-/

namespace A289443.P17921343639021830837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n ^ 2 : ℤ) * A063259 (Nat.choose 3 (a (n - 1)).toNat + 1)

end

end A289443.P17921343639021830837

namespace A289443

/-- `n²*A063259(C(3, a(n-1))+1)` -/
def P17921343639021830837.Spec : Prop :=
  ∀ n, P17921343639021830837.a n = A289443 n

end A289443

/-! ## A289443.P209577561591985282

`C(A000122(n)+1, n+1)+3*n²`
-/

namespace A289443.P209577561591985282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000122 n + 1).toNat (n + 1) + 3 * n ^ 2

end

end A289443.P209577561591985282

namespace A289443

/-- `C(A000122(n)+1, n+1)+3*n²` -/
def P209577561591985282.Spec : Prop :=
  ∀ n, (P209577561591985282.a n : ℤ) = A289443 n

end A289443

/-! ## A289443.P16109508017621794926

`(A289207(n)+2)*A008486(n)`
-/

namespace A289443.P16109508017621794926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A289207 n + 2) * A008486 n

end

end A289443.P16109508017621794926

namespace A289443

/-- `(A289207(n)+2)*A008486(n)` -/
def P16109508017621794926.Spec : Prop :=
  ∀ n, P16109508017621794926.a n = A289443 n

end A289443

/-! ## A289443.P10165976291480517779

`A004280(n+1)+A077043(A004280(n+1))+n`
-/

namespace A289443.P10165976291480517779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1) + (A077043 (A004280 (n + 1)).toNat + (n : ℤ))

end

end A289443.P10165976291480517779

namespace A289443

/-- `A004280(n+1)+A077043(A004280(n+1))+n` -/
def P10165976291480517779.Spec : Prop :=
  ∀ n, P10165976291480517779.a n = A289443 n

end A289443

/-! ## A289443.P17457383979971232177

`A032765(comp[2*n+3]+n+1)+1`
-/

namespace A289443.P17457383979971232177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1)) + 1

end

end A289443.P17457383979971232177

namespace A289443

/-- `A032765(comp[2*n+3]+n+1)+1` -/
def P17457383979971232177.Spec : Prop :=
  ∀ n, P17457383979971232177.a n = A289443 n

end A289443

/-! ## A289443.P5464263883469961045

`A008486(n)*A233583(n+1)`
-/

namespace A289443.P5464263883469961045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n * A233583 (n + 1)

end

end A289443.P5464263883469961045

namespace A289443

/-- `A008486(n)*A233583(n+1)` -/
def P5464263883469961045.Spec : Prop :=
  ∀ n, P5464263883469961045.a n = A289443 n

end A289443

/-! ## A289443.P14385486762595208386

`A233583(n+1)*A301729(2*n)`
-/

namespace A289443.P14385486762595208386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) * A301729 (2 * n)

end

end A289443.P14385486762595208386

namespace A289443

/-- `A233583(n+1)*A301729(2*n)` -/
def P14385486762595208386.Spec : Prop :=
  ∀ n, P14385486762595208386.a n = A289443 n

end A289443

/-! ## A289443.P3784471790429291963

`(A004277(n)+n)*A233583(n+1)`
-/

namespace A289443.P3784471790429291963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n + (n : ℤ)) * A233583 (n + 1)

end

end A289443.P3784471790429291963

namespace A289443

/-- `(A004277(n)+n)*A233583(n+1)` -/
def P3784471790429291963.Spec : Prop :=
  ∀ n, P3784471790429291963.a n = A289443 n

end A289443

/-! ## A289443.P5180142884997797463

`(A008574(n)-n)*A233583(n+1)`
-/

namespace A289443.P5180142884997797463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008574 n - (n : ℤ)) * A233583 (n + 1)

end

end A289443.P5180142884997797463

namespace A289443

/-- `(A008574(n)-n)*A233583(n+1)` -/
def P5180142884997797463.Spec : Prop :=
  ∀ n, P5180142884997797463.a n = A289443 n

end A289443

/-! ## A289443.P1188590468886199422

`A233583(n+1)*A294732(2*(n+1))`
-/

namespace A289443.P1188590468886199422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) * A294732 (2 * (n + 1))

end

end A289443.P1188590468886199422

namespace A289443

/-- `A233583(n+1)*A294732(2*(n+1))` -/
def P1188590468886199422.Spec : Prop :=
  ∀ n, P1188590468886199422.a n = A289443 n

end A289443

/-!
# A289445: a(n) = number of similarity classes of groups G with exactly n subgroups and such that G = G-tilde, where G-tilde is the unique subgroup of G left after factoring out the cyclic, central Sylow subgroups.

The programs for A289445, there is no canonical definition to state claims against.
-/

/-! ## A289445.P13315997734910718431

`and(A300153(n+1), A331884(n))`
-/

namespace A289445.P13315997734910718431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A300153 (n + 1)) (A331884 n)

end

end A289445.P13315997734910718431

/-! ## A289445.P6053347984175298856

`A128537(n+1)%A333450(n+1)`
-/

namespace A289445.P6053347984175298856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128537 (n + 1)) (A333450 (n + 1))

end

end A289445.P6053347984175298856

/-! ## A289445.P7983685770840329761

`and(A086892(n+1), A300153(n+1))`
-/

namespace A289445.P7983685770840329761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086892 (n + 1)) (A300153 (n + 1))

end

end A289445.P7983685770840329761

/-! ## A289445.P4259544359686860489

`and(A107222(n+1), A300153(n+1))`
-/

namespace A289445.P4259544359686860489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107222 (n + 1)) (A300153 (n + 1))

end

end A289445.P4259544359686860489

/-! ## A289445.P11846217257525166833

`and(A260594(n+1), A300153(n+1))`
-/

namespace A289445.P11846217257525166833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260594 (n + 1)) (A300153 (n + 1))

end

end A289445.P11846217257525166833

/-!
# A289446: a(n) is the number of permutations of length n that avoid the pattern 231 and the mesh pattern (21, 204) or the same sequence for the mesh patterns (21, 206), (21, 236), (21, 238).

The programs for A289446, there is no canonical definition to state claims against.
-/

/-! ## A289446.P7962871725297562536

`A156562(A289600(n))`
-/

namespace A289446.P7962871725297562536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A289600 n).toNat

end

end A289446.P7962871725297562536

/-!
# A289447: a(n) is the number of permutations of length n that avoid the pattern 231 and the mesh pattern (12, 174) or the same sequence for the mesh pattern (12, 238).

The programs for A289447, there is no canonical definition to state claims against.
-/

/-! ## A289447.P8281685376520048532

`A065601(n)-A126983(n+1)`
-/

namespace A289447.P8281685376520048532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065601 n - A126983 (n + 1)

end

end A289447.P8281685376520048532

/-! ## A289447.P8477659507577743957

`A065601(n)+A000957(n+1)`
-/

namespace A289447.P8477659507577743957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065601 n + A000957 (n + 1)

end

end A289447.P8477659507577743957

/-! ## A289447.P8796769872156718860

`A065601(n)+A065600(A000217(n))`
-/

namespace A289447.P8796769872156718860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065601 n + A065600 (A000217 n).toNat

end

end A289447.P8796769872156718860

/-! ## A289447.P8175790627246786794

`A321622(∑[n+1]+1)`
-/

namespace A289447.P8175790627246786794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321622 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A289447.P8175790627246786794

/-!
# A289448: a(n) is the number of permutations of length n that avoid the pattern 231 and the mesh pattern (21, 337) or the same sequence for the mesh patterns (21, 339), (21, 369), (21, 371).

The programs for A289448, the canonical program `A289448.P5757188125060123569` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289448 has offset 0).

The definition of A289448 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135336, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289448.P5757188125060123569

`2*(A000108(n)-A135336(n))+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A289448

/-- `2*(A000108(n)-A135336(n))+1` -/
def P5757188125060123569.Spec : Prop :=
  ∀ n, P5757188125060123569.a n = A289448 n

theorem P5757188125060123569.correct : P5757188125060123569.Spec := by
  intro n
  simp only [A289448]

end A289448

/-! ## A289448.P12075017156446699757

`2*A289589(n)-1`
-/

namespace A289448.P12075017156446699757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A289589 n - 1

end

end A289448.P12075017156446699757

namespace A289448

/-- `2*A289589(n)-1` -/
def P12075017156446699757.Spec : Prop :=
  ∀ n, P12075017156446699757.a n = A289448 n

end A289448

/-! ## A289448.P16345126689705644542

`A000108(n)+A289589(n)-A135336(n)`
-/

namespace A289448.P16345126689705644542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A289589 n - A135336 n)

end

end A289448.P16345126689705644542

namespace A289448

/-- `A000108(n)+A289589(n)-A135336(n)` -/
def P16345126689705644542.Spec : Prop :=
  ∀ n, P16345126689705644542.a n = A289448 n

end A289448

/-! ## A289448.P9231749232392551030

`a(n-1)+2*A167769(n²+1+n)` with `a(0)=1`
-/

namespace A289448.P9231749232392551030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A167769 (n ^ 2 + 1 + n)

end

end A289448.P9231749232392551030

namespace A289448

/-- `a(n-1)+2*A167769(n²+1+n)` -/
def P9231749232392551030.Spec : Prop :=
  ∀ n, P9231749232392551030.a n = A289448 n

end A289448

/-! ## A289448.P15417871345989027022

`A004273(A289589(n))`
-/

namespace A289448.P15417871345989027022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A289589 n).toNat

end

end A289448.P15417871345989027022

namespace A289448

/-- `A004273(A289589(n))` -/
def P15417871345989027022.Spec : Prop :=
  ∀ n, P15417871345989027022.a n = A289448 n

end A289448

/-!
# A289449: a(n) is the number of permutations of length n that avoid the pattern 231 and the mesh pattern (12, 281) or the same sequence for the mesh patterns (12, 313), (12, 345), (12, 377), (12, 401), (12, 403), (12, 465), (12, 467).

The programs for A289449, there is no canonical definition to state claims against.
-/

/-! ## A289449.P3532913622229080160

`∑[abs(A104496(n))]`
-/

namespace A289449.P3532913622229080160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104496 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289449.P3532913622229080160

/-! ## A289449.P9493284883349041972

`∑[A279557(abs(1-n))]-n`
-/

namespace A289449.P9493284883349041972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A289449.P9493284883349041972

/-! ## A289449.P11923003880871080758

`∑[A014138(n)+∑[(4-6/n)*a(n-1)]]` with `a(0)=1`
-/

namespace A289449.P11923003880871080758
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (4 - 6 / (n : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014138 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289449.P11923003880871080758

/-! ## A289449.P6186982739178205846

`∑[A106191(n)+A014138(n)]`
-/

namespace A289449.P6186982739178205846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106191 n + A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289449.P6186982739178205846

/-! ## A289449.P13604209553437712374

`A014137(n)+A014137(n)-A014140(n)`
-/

namespace A289449.P13604209553437712374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n + (A014137 n - A014140 n)

end

end A289449.P13604209553437712374

/-!
# A289450: Related to number of mesh patterns of length 2 that avoid the pattern 231 or 321. For details see the comment section.

The programs for A289450, the canonical program `A289450.P12865695419556516410` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289450 has offset 0).

The definition of A289450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289450.P12865695419556516410

`A120588(n)+A141351(n)-A155587(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A289450

/-- `A120588(n)+A141351(n)-A155587(n)` -/
def P12865695419556516410.Spec : Prop :=
  ∀ n, P12865695419556516410.a n = A289450 n

theorem P12865695419556516410.correct : P12865695419556516410.Spec := by
  intro n
  simp only [A289450]

end A289450

/-! ## A289450.P337965945409869916

`A068875(n)+A120588(n)-A014137(n)`
-/

namespace A289450.P337965945409869916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n + (A120588 n - A014137 n)

end

end A289450.P337965945409869916

namespace A289450

/-- `A068875(n)+A120588(n)-A014137(n)` -/
def P337965945409869916.Spec : Prop :=
  ∀ n, P337965945409869916.a n = A289450 n

end A289450

/-! ## A289450.P3998254319156063155

`A120588(n)+A014138(n)%A106191(n)`
-/

namespace A289450.P3998254319156063155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n + Int.tmod (A014138 n) (A106191 n)

end

end A289450.P3998254319156063155

namespace A289450

/-- `A120588(n)+A014138(n)%A106191(n)` -/
def P3998254319156063155.Spec : Prop :=
  ∀ n, P3998254319156063155.a n = A289450 n

end A289450

/-! ## A289450.P6266112696838318250

`A081753(A291337(n))`
-/

namespace A289450.P6266112696838318250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A291337 n).toNat

end

end A289450.P6266112696838318250

namespace A289450

/-- `A081753(A291337(n))` -/
def P6266112696838318250.Spec : Prop :=
  ∀ n, P6266112696838318250.a n = A289450 n

end A289450

/-!
# A289451: a(n) is the number of permutations of length n that avoid the pattern 231 and the mesh pattern (12, 409) or the same sequence for the mesh pattern (12, 473).

The programs for A289451, the canonical program `A289451.P712863873076719454` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289451 has offset 0).

The definition of A289451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289451.P712863873076719454

`C(2*n, n)/(n+1)-(n-1)*n/2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289451

/-- `C(2*n, n)/(n+1)-(n-1)*n/2` -/
def P712863873076719454.Spec : Prop :=
  ∀ n, P712863873076719454.a n = (A289451 n : ℚ)

end A289451

/-! ## A289451.P1052509051171584326

`∑[A289598(n)]-n`
-/

namespace A289451.P1052509051171584326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A289451.P1052509051171584326

namespace A289451

/-- `∑[A289598(n)]-n` -/
def P1052509051171584326.Spec : Prop :=
  ∀ n, P1052509051171584326.a n = A289451 n

end A289451

/-! ## A289451.P13689180630085308287

`A000108(n)-C(n, 2)`
-/

namespace A289451.P13689180630085308287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - (Nat.choose n 2 : ℤ)

end

end A289451.P13689180630085308287

namespace A289451

/-- `A000108(n)-C(n, 2)` -/
def P13689180630085308287.Spec : Prop :=
  ∀ n, P13689180630085308287.a n = A289451 n

end A289451

/-! ## A289451.P1785905345021712969

`abs(A168491(n))-C(n, 2)`
-/

namespace A289451.P1785905345021712969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| - (Nat.choose n 2 : ℤ)

end

end A289451.P1785905345021712969

namespace A289451

/-- `abs(A168491(n))-C(n, 2)` -/
def P1785905345021712969.Spec : Prop :=
  ∀ n, P1785905345021712969.a n = A289451 n

end A289451

/-! ## A289451.P3037449194718100331

`A000108(n)-A161680(n)`
-/

namespace A289451.P3037449194718100331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A161680 n

end

end A289451.P3037449194718100331

namespace A289451

/-- `A000108(n)-A161680(n)` -/
def P3037449194718100331.Spec : Prop :=
  ∀ n, P3037449194718100331.a n = A289451 n

end A289451

/-! ## A289451.P18262173980704198224

`A004303(n+1)+A002662(n)`
-/

namespace A289451.P18262173980704198224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004303 (n + 1) + A002662 n

end

end A289451.P18262173980704198224

namespace A289451

/-- `A004303(n+1)+A002662(n)` -/
def P18262173980704198224.Spec : Prop :=
  ∀ n, P18262173980704198224.a n = A289451 n

end A289451

/-! ## A289451.P6536409857506832247

`A000108(n)-A130519(2*n)`
-/

namespace A289451.P6536409857506832247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A130519 (2 * n)

end

end A289451.P6536409857506832247

namespace A289451

/-- `A000108(n)-A130519(2*n)` -/
def P6536409857506832247.Spec : Prop :=
  ∀ n, P6536409857506832247.a n = A289451 n

end A289451

/-! ## A289451.P3623818613270486245

`A028303(2*n)-A130519(2*n)`
-/

namespace A289451.P3623818613270486245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n) - A130519 (2 * n)

end

end A289451.P3623818613270486245

namespace A289451

/-- `A028303(2*n)-A130519(2*n)` -/
def P3623818613270486245.Spec : Prop :=
  ∀ n, P3623818613270486245.a n = A289451 n

end A289451

/-! ## A289451.P15608802798359713220

`A028304(2*n)-A130519(2*n)`
-/

namespace A289451.P15608802798359713220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n) - A130519 (2 * n)

end

end A289451.P15608802798359713220

namespace A289451

/-- `A028304(2*n)-A130519(2*n)` -/
def P15608802798359713220.Spec : Prop :=
  ∀ n, P15608802798359713220.a n = A289451 n

end A289451

/-! ## A289451.P3024631977475156681

`A000108(n)+A117662(n)-A002415(n)`
-/

namespace A289451.P3024631977475156681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A117662 n - A002415 n)

end

end A289451.P3024631977475156681

namespace A289451

/-- `A000108(n)+A117662(n)-A002415(n)` -/
def P3024631977475156681.Spec : Prop :=
  ∀ n, P3024631977475156681.a n = A289451 n

end A289451

/-! ## A289451.P13528434939794994183

`A000217(n+1)+A000108(n)-A002061(n+1)`
-/

namespace A289451.P13528434939794994183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000108 n - A002061 (n + 1))

end

end A289451.P13528434939794994183

namespace A289451

/-- `A000217(n+1)+A000108(n)-A002061(n+1)` -/
def P13528434939794994183.Spec : Prop :=
  ∀ n, P13528434939794994183.a n = A289451 n

end A289451

/-! ## A289451.P14560564128982217765

`A060747(n+1)+A000108(n)-A000217(n+1)`
-/

namespace A289451.P14560564128982217765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (n + 1) + (A000108 n - A000217 (n + 1))

end

end A289451.P14560564128982217765

namespace A289451

/-- `A060747(n+1)+A000108(n)-A000217(n+1)` -/
def P14560564128982217765.Spec : Prop :=
  ∀ n, P14560564128982217765.a n = A289451 n

end A289451

/-! ## A289451.P17011523471170494719

`A000108(n)-A002740(n+1)/A000108(n)`
-/

namespace A289451.P17011523471170494719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) - (A002740 (n + 1) : ℚ) / (A000108 n : ℚ)

end

end A289451.P17011523471170494719

namespace A289451

/-- `A000108(n)-A002740(n+1)/A000108(n)` -/
def P17011523471170494719.Spec : Prop :=
  ∀ n, P17011523471170494719.a n = (A289451 n : ℚ)

end A289451

/-!
# A289452: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 170).

The programs for A289452, there is no canonical definition to state claims against.
-/

/-! ## A289452.P6467027858676887158

`A259357(A124763(n)+A003192(n+1))`
-/

namespace A289452.P6467027858676887158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259357 (A124763 n + A003192 (n + 1)).toNat

end

end A289452.P6467027858676887158

/-! ## A289452.P11295858563552956199

`A001462(A005162(n+1))-A000045(n)`
-/

namespace A289452.P11295858563552956199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A005162 (n + 1)).toNat - A000045 n

end

end A289452.P11295858563552956199

/-! ## A289452.P12870664893927627567

`A001462(A005162(n+1))-abs(A236191(n))`
-/

namespace A289452.P12870664893927627567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A005162 (n + 1)).toNat - |A236191 n|

end

end A289452.P12870664893927627567

/-! ## A289452.P7773117497799210499

`A001462(A005162(n+1))+1-A001611(n)`
-/

namespace A289452.P7773117497799210499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A005162 (n + 1)).toNat + (1 - A001611 n)

end

end A289452.P7773117497799210499

/-!
# A289453: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 106) or the same sequence for the mesh patterns (12, 122), (12, 142), (12, 158), (12, 172), (12, 188), (12, 226), (12, 242).

The programs for A289453, there is no canonical definition to state claims against.
-/

/-! ## A289453.P2932892902036601309

`ceil(A102407(n)/2)`
-/

namespace A289453.P2932892902036601309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A102407 n : ℚ) / 2⌉

end

end A289453.P2932892902036601309

/-! ## A289453.P15872757737116697665

`A102407(round(acot(n)+n))/2`
-/

namespace A289453.P15872757737116697665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102407 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ) / 2

end

end A289453.P15872757737116697665

/-! ## A289453.P4107227485596051596

`A102407(n)/A124766(A025510(n+1))`
-/

namespace A289453.P4107227485596051596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102407 n : ℚ) / (A124766 (A025510 (n + 1)).toNat : ℚ)

end

end A289453.P4107227485596051596

/-! ## A289453.P9756515130031631775

`A273943(A102407(n))`
-/

namespace A289453.P9756515130031631775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A102407 n).toNat

end

end A289453.P9756515130031631775

/-! ## A289453.P16091316728981008154

`A004526(A102407(n)+1)`
-/

namespace A289453.P16091316728981008154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A102407 n + 1).toNat

end

end A289453.P16091316728981008154

/-!
# A289456: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 573", based on the 5-celled von Neumann neighborhood.

The programs for A289456, there is no canonical definition to state claims against.
-/

/-! ## A289456.P17723675401707313093

`A007088(A289458(n))`
-/

namespace A289456.P17723675401707313093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289458 n).toNat

end

end A289456.P17723675401707313093

/-! ## A289456.P5951444829964648861

`A185544(2*A289458(n))`
-/

namespace A289456.P5951444829964648861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289458 n).toNat

end

end A289456.P5951444829964648861

/-! ## A289456.P11195280688767243706

`A289400(n)+A276570(A289402(n+3))`
-/

namespace A289456.P11195280688767243706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289400 n + A276570 (A289402 (n + 3)).toNat

end

end A289456.P11195280688767243706

/-! ## A289456.P3758834089912927097

`A276570(A289402(n+3))+A007088(A289402(n))`
-/

namespace A289456.P3758834089912927097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276570 (A289402 (n + 3)).toNat + A007088 (A289402 n).toNat

end

end A289456.P3758834089912927097

/-! ## A289456.P10750187933481379109

`A276570(A289402(n+3))+A185544(2*A289402(n))`
-/

namespace A289456.P10750187933481379109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276570 (A289402 (n + 3)).toNat + A185544 (2 * A289402 n).toNat

end

end A289456.P10750187933481379109

/-!
# A289457: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 573", based on the 5-celled von Neumann neighborhood.

The programs for A289457, there is no canonical definition to state claims against.
-/

/-! ## A289457.P2753949287323011510

`A007088(A289459(n))`
-/

namespace A289457.P2753949287323011510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289459 n).toNat

end

end A289457.P2753949287323011510

/-! ## A289457.P9598852325085656068

`A305989(A289458(n))`
-/

namespace A289457.P9598852325085656068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289458 n).toNat

end

end A289457.P9598852325085656068

/-! ## A289457.P10683448912365216524

`A185544(2*A289459(n))`
-/

namespace A289457.P10683448912365216524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289459 n).toNat

end

end A289457.P10683448912365216524

/-! ## A289457.P16129801007171208853

`A185544(lcm(2, A289459(n)))`
-/

namespace A289457.P16129801007171208853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A289459 n))

end

end A289457.P16129801007171208853

/-! ## A289457.P18276722781186405206

`A185544(A289459(n)+A289459(n))`
-/

namespace A289457.P18276722781186405206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A289459 n + A289459 n).toNat

end

end A289457.P18276722781186405206

/-!
# A289458: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 573", based on the 5-celled von Neumann neighborhood.

The programs for A289458, there is no canonical definition to state claims against.
-/

/-! ## A289458.P1355754675867816887

`or(A002187(A332863(n)), A289373(n))`
-/

namespace A289458.P1355754675867816887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002187 (A332863 n).toNat) (A289373 n)

end

end A289458.P1355754675867816887

/-! ## A289458.P17095913537622477954

`or(A007376(A004080(n+3)), A289373(n))`
-/

namespace A289458.P17095913537622477954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007376 (A004080 (n + 3)).toNat) (A289373 n)

end

end A289458.P17095913537622477954

/-! ## A289458.P12274351581274138364

`or(A186748(floor((4^n+1)^(1/3))), A289402(n))`
-/

namespace A289458.P12274351581274138364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A186748 ⌊(4 ^ n + 1 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋.toNat) (A289402 n)

end

end A289458.P12274351581274138364

/-! ## A289458.P1148125158248306316

`A101661(A006389(n))+A101622(n)`
-/

namespace A289458.P1148125158248306316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101661 (A006389 n).toNat + A101622 n

end

end A289458.P1148125158248306316

/-! ## A289458.P12691496508557048735

`A333382(A023425(n))+A289373(n)`
-/

namespace A289458.P12691496508557048735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A023425 n).toNat + A289373 n

end

end A289458.P12691496508557048735

/-!
# A289459: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 573", based on the 5-celled von Neumann neighborhood.

The programs for A289459, there is no canonical definition to state claims against.
-/

/-! ## A289459.P8586876827770614077

`A325401(A289458(n))`
-/

namespace A289459.P8586876827770614077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A289458 n).toNat

end

end A289459.P8586876827770614077

/-! ## A289459.P12042330879708806202

`or(A175920(A289458(n)), A286865(n))`
-/

namespace A289459.P12042330879708806202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A175920 (A289458 n).toNat) (A286865 n)

end

end A289459.P12042330879708806202

/-! ## A289459.P7640300442673002799

`or(A042965(n+1), A175920(A289458(n)))`
-/

namespace A289459.P7640300442673002799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A042965 (n + 1)) (A175920 (A289458 n).toNat)

end

end A289459.P7640300442673002799

/-! ## A289459.P11261857543944192501

`A030101(A289458(A000007(n)+n))`
-/

namespace A289459.P11261857543944192501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A289458 (A000007 n + (n : ℤ)).toNat).toNat

end

end A289459.P11261857543944192501

/-! ## A289459.P5414921771730782644

`A030101(A289458(n)+A010893(n))`
-/

namespace A289459.P5414921771730782644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A289458 n + A010893 (n + 13)).toNat

end

end A289459.P5414921771730782644

/-!
# A289461: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 577", based on the 5-celled von Neumann neighborhood.

The programs for A289461, there is no canonical definition to state claims against.
-/

/-! ## A289461.P4576843724152170737

`A000042(n+1)+A057428(n)*A288764(n)`
-/

namespace A289461.P4576843724152170737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A057428 n * A288764 n

end

end A289461.P4576843724152170737

/-! ## A289461.P4255518101699307263

`A000042(n+1)+A007088(A288766(n))*A057428(n)`
-/

namespace A289461.P4255518101699307263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A007088 (A288766 n).toNat * A057428 n

end

end A289461.P4255518101699307263

/-! ## A289461.P7777004912033252505

`A000042(n+1)+A057428(n)*A185544(2*A288766(n))`
-/

namespace A289461.P7777004912033252505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A057428 n * A185544 (2 * A288766 n).toNat

end

end A289461.P7777004912033252505

/-! ## A289461.P3744223143676858968

`A007088(A289463(n))`
-/

namespace A289461.P3744223143676858968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289463 n).toNat

end

end A289461.P3744223143676858968

/-! ## A289461.P7780201426357414329

`A007088(A288807(n)+A288811(n)-A288766(n))`
-/

namespace A289461.P7780201426357414329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288807 n + (A288811 n - A288766 n)).toNat

end

end A289461.P7780201426357414329

/-!
# A289462: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 577", based on the 5-celled von Neumann neighborhood.

The programs for A289462, there is no canonical definition to state claims against.
-/

/-! ## A289462.P5446436891406400424

`A007088(A289464(n))`
-/

namespace A289462.P5446436891406400424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289464 n).toNat

end

end A289462.P5446436891406400424

/-! ## A289462.P7655132647231368163

`A007088(A288807(n)+A288811(n)-A288767(n))`
-/

namespace A289462.P7655132647231368163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288807 n + (A288811 n - A288767 n)).toNat

end

end A289462.P7655132647231368163

/-! ## A289462.P14772441053686989039

`A007088(A288808(n)+A288812(n)-A288767(n))`
-/

namespace A289462.P14772441053686989039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288808 n + (A288812 n - A288767 n)).toNat

end

end A289462.P14772441053686989039

/-! ## A289462.P13700306065092553592

`A007088(A288766(n)+A289463(n)-A288767(n))`
-/

namespace A289462.P13700306065092553592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288766 n + (A289463 n - A288767 n)).toNat

end

end A289462.P13700306065092553592

/-! ## A289462.P2139147666674899521

`A007088(A288807(n)-(A288767(n)-A288811(n)))`
-/

namespace A289462.P2139147666674899521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288807 n - (A288767 n - A288811 n)).toNat

end

end A289462.P2139147666674899521

/-!
# A289463: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 577", based on the 5-celled von Neumann neighborhood.

The programs for A289463, there is no canonical definition to state claims against.
-/

/-! ## A289463.P6032784108724072435

`xor(record[A324821(n+1)], A288766(n))`
-/

namespace A289463.P6032784108724072435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A288766 n)

end

end A289463.P6032784108724072435

/-! ## A289463.P449287263013755889

`A052955(A004277(n))-A288766(n)`
-/

namespace A289463.P449287263013755889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A288766 n

end

end A289463.P449287263013755889

/-! ## A289463.P12279068791260244528

`A288807(n)+A288811(n)-A288766(n)`
-/

namespace A289463.P12279068791260244528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 n + (A288811 n - A288766 n)

end

end A289463.P12279068791260244528

/-! ## A289463.P11236667541507710486

`A288808(n)+A288812(n)-A288766(n)`
-/

namespace A289463.P11236667541507710486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288808 n + (A288812 n - A288766 n)

end

end A289463.P11236667541507710486

/-! ## A289463.P17679968087643920417

`A288767(n)+A289464(n)-A288766(n)`
-/

namespace A289463.P17679968087643920417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288767 n + (A289464 n - A288766 n)

end

end A289463.P17679968087643920417

/-!
# A289464: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 577", based on the 5-celled von Neumann neighborhood.

The programs for A289464, there is no canonical definition to state claims against.
-/

/-! ## A289464.P12963711118161646198

`A052955(A004277(n))-A288767(n)`
-/

namespace A289464.P12963711118161646198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A288767 n

end

end A289464.P12963711118161646198

/-! ## A289464.P11028487697455134321

`A288807(n)+A288811(n)-A288767(n)`
-/

namespace A289464.P11028487697455134321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 n + (A288811 n - A288767 n)

end

end A289464.P11028487697455134321

/-! ## A289464.P17065963691418821264

`A288808(n)+A288812(n)-A288767(n)`
-/

namespace A289464.P17065963691418821264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288808 n + (A288812 n - A288767 n)

end

end A289464.P17065963691418821264

/-! ## A289464.P12594577941813055832

`A288766(n)+A289463(n)-A288767(n)`
-/

namespace A289464.P12594577941813055832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288766 n + (A289463 n - A288767 n)

end

end A289464.P12594577941813055832

/-! ## A289464.P12840833398292535461

`A052955(2*n)+A000007(n)-A288767(n)`
-/

namespace A289464.P12840833398292535461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * n) + (A000007 n - A288767 n)

end

end A289464.P12840833398292535461

/-!
# A289465: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 579", based on the 5-celled von Neumann neighborhood.

The programs for A289465, there is no canonical definition to state claims against.
-/

/-! ## A289465.P8439462206602732040

`A007088(A289467(n))`
-/

namespace A289465.P8439462206602732040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289467 n).toNat

end

end A289465.P8439462206602732040

/-! ## A289465.P16352615832045900390

`A305989(A289468(n))`
-/

namespace A289465.P16352615832045900390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289468 n).toNat

end

end A289465.P16352615832045900390

/-! ## A289465.P2854492088893353713

`A169965(A289467(n)+1)/2`
-/

namespace A289465.P2854492088893353713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (A289467 n + 1).toNat : ℚ) / 2

end

end A289465.P2854492088893353713

/-! ## A289465.P5182365896174575720

`A185544(2*A289467(n))`
-/

namespace A289465.P5182365896174575720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289467 n).toNat

end

end A289465.P5182365896174575720

/-! ## A289465.P8261173932667709215

`A185544(lcm(2, A289467(n)))`
-/

namespace A289465.P8261173932667709215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A289467 n))

end

end A289465.P8261173932667709215

/-!
# A289466: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 579", based on the 5-celled von Neumann neighborhood.

The programs for A289466, there is no canonical definition to state claims against.
-/

/-! ## A289466.P3389113279107852619

`A007088(A289468(n))`
-/

namespace A289466.P3389113279107852619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289468 n).toNat

end

end A289466.P3389113279107852619

/-! ## A289466.P12724418137544861296

`A305989(A289467(n))`
-/

namespace A289466.P12724418137544861296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289467 n).toNat

end

end A289466.P12724418137544861296

/-! ## A289466.P13616714575419876539

`A185544(2*A289468(n))`
-/

namespace A289466.P13616714575419876539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289468 n).toNat

end

end A289466.P13616714575419876539

/-! ## A289466.P12103132349148844413

`A185544(lcm(2, A289468(n)))`
-/

namespace A289466.P12103132349148844413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A289468 n))

end

end A289466.P12103132349148844413

/-! ## A289466.P1583817529879828914

`or(A010060(A083374(n+5)), A289532(n))`
-/

namespace A289466.P1583817529879828914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A083374 (n + 5)).toNat) (A289532 n)

end

end A289466.P1583817529879828914

/-!
# A289467: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 579", based on the 5-celled von Neumann neighborhood.

The programs for A289467, there is no canonical definition to state claims against.
-/

/-! ## A289467.P4077575238247054576

`A057889(A289468(n))`
-/

namespace A289467.P4077575238247054576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A289468 n).toNat

end

end A289467.P4077575238247054576

/-! ## A289467.P441871723391281942

`A030101(2*A289468(n))`
-/

namespace A289467.P441871723391281942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * A289468 n).toNat

end

end A289467.P441871723391281942

/-! ## A289467.P14712728171561631485

`A325401(2*A289468(n))`
-/

namespace A289467.P14712728171561631485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A289468 n).toNat

end

end A289467.P14712728171561631485

/-! ## A289467.P13343585760781686197

`A030101(lcm(2, A289468(n)))`
-/

namespace A289467.P13343585760781686197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lcm 2 (A289468 n))

end

end A289467.P13343585760781686197

/-! ## A289467.P773272566968103502

`A030101(or(1, A289468(n)))`
-/

namespace A289467.P773272566968103502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor 1 (A289468 n)).toNat

end

end A289467.P773272566968103502

/-!
# A289468: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 579", based on the 5-celled von Neumann neighborhood.

The programs for A289468, there is no canonical definition to state claims against.
-/

/-! ## A289468.P14827968923631269525

`A057889(A289467(n))`
-/

namespace A289468.P14827968923631269525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A289467 n).toNat

end

end A289468.P14827968923631269525

/-! ## A289468.P14826516596635927192

`A325401(or(1, A289467(n)))`
-/

namespace A289468.P14826516596635927192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lor 1 (A289467 n)).toNat

end

end A289468.P14826516596635927192

/-! ## A289468.P1206557369253439049

`A325401(lcm(floor(1/(γ-n)), A289467(n)))`
-/

namespace A289468.P1206557369253439049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋ (A289467 n))

end

end A289468.P1206557369253439049

/-! ## A289468.P13056690908840744709

`A325401(A289467(n)+A000007(n))`
-/

namespace A289468.P13056690908840744709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A289467 n + A000007 n).toNat

end

end A289468.P13056690908840744709

/-! ## A289468.P13929606610322111939

`A325401(A289467(n)+A185255(n))`
-/

namespace A289468.P13929606610322111939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A289467 n + A185255 n).toNat

end

end A289468.P13929606610322111939

/-!
# A289470: Number of strictly 2-connected graphs with n edges.

The programs for A289470, there is no canonical definition to state claims against.
-/

/-! ## A289470.P12330012939834956706

`A289471(A216556(n))+A011817(n)`
-/

namespace A289470.P12330012939834956706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289471 (A216556 n).toNat + A011817 n

end

end A289470.P12330012939834956706

/-! ## A289470.P7588308579675118395

`A289471(n+1)+A011817(A002998(n))`
-/

namespace A289470.P7588308579675118395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289471 (n + 1) + A011817 (A002998 n).toNat

end

end A289470.P7588308579675118395

/-! ## A289470.P3716522299454837941

`A289471(n+1)+A003462(A011817(n))`
-/

namespace A289470.P3716522299454837941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289471 (n + 1) + A003462 (A011817 n).toNat

end

end A289470.P3716522299454837941

/-! ## A289470.P16221598068825939745

`A289471(n+1)+A011731(A007463(n))`
-/

namespace A289470.P16221598068825939745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289471 (n + 1) + A011731 (A007463 n).toNat

end

end A289470.P16221598068825939745

/-! ## A289470.P488534158951285440

`A289471(n+1)+A049336(A027423(n))`
-/

namespace A289470.P488534158951285440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289471 (n + 1) + A049336 (A027423 n).toNat

end

end A289470.P488534158951285440

/-!
# A289471: Number of planar strictly 2-connected graphs on n edges.

The programs for A289471, there is no canonical definition to state claims against.
-/

/-! ## A289471.P16356472111108792663

`A289470(n+1)-A011817(A002998(n))`
-/

namespace A289471.P16356472111108792663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289470 (n + 1) - A011817 (A002998 n).toNat

end

end A289471.P16356472111108792663

/-! ## A289471.P13066722825260375578

`A289470(n+1)-A003462(A011817(n))`
-/

namespace A289471.P13066722825260375578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289470 (n + 1) - A003462 (A011817 n).toNat

end

end A289471.P13066722825260375578

/-! ## A289471.P6548211870906604449

`A289470(n+1)-A011731(A007463(n))`
-/

namespace A289471.P6548211870906604449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289470 (n + 1) - A011731 (A007463 n).toNat

end

end A289471.P6548211870906604449

/-! ## A289471.P7191290895983681336

`A289470(n+1)-A049336(A027423(n))`
-/

namespace A289471.P7191290895983681336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289470 (n + 1) - A049336 (A027423 n).toNat

end

end A289471.P7191290895983681336

/-! ## A289471.P7379060092711194522

`A289470(A085908(n+1))-A011817(n)`
-/

namespace A289471.P7379060092711194522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289470 (A085908 (n + 1)).toNat - A011817 n

end

end A289471.P7379060092711194522

/-!
# A289472: Number of gcds-sortable two-rooted graphs on n vertices.

The programs for A289472, there is no canonical definition to state claims against.
-/

/-! ## A289472.P17964116378501461226

`round(p?[a(n-2)²+1]/6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A289472.P17964116378501461226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2, 3] fun n f1 =>
  f1 (n - 2) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 6)

end

end A289472.P17964116378501461226

/-!
# A289473: Number of Dyck paths of semilength 3*n and height n.

The programs for A289473, there is no canonical definition to state claims against.
-/

/-! ## A289473.P6987074360156945919

`A289481(∑[n+3]+n+3)`
-/

namespace A289473.P6987074360156945919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A289473.P6987074360156945919

/-! ## A289473.P2011893880583719552

`A119335(n)*A289481(A046691(n+2))`
-/

namespace A289473.P2011893880583719552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A289481 (A046691 (n + 2)).toNat

end

end A289473.P2011893880583719552

/-! ## A289473.P4243645985688255313

`gcd(A000038(n), A289481(A046691(n+2)))`
-/

namespace A289473.P4243645985688255313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A289481 (A046691 (n + 2)).toNat)

end

end A289473.P4243645985688255313

/-! ## A289473.P6681039358670956398

`C(A289481(A046691(n+2)), A178334(n))`
-/

namespace A289473.P6681039358670956398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A289481 (A046691 (n + 2)).toNat).toNat (A178334 n).toNat

end

end A289473.P6681039358670956398

/-! ## A289473.P13548992443365081684

`A289481(eq[3, A025581(n)])%A352147(2*(n+1))`
-/

namespace A289473.P13548992443365081684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A352147 (2 * (n + 1)))

end

end A289473.P13548992443365081684

/-!
# A289474: Number of Dyck paths of semilength 4*n and height n.

The programs for A289474, there is no canonical definition to state claims against.
-/

/-! ## A289474.P17015732445371362836

`A289481(A052905(n+2))`
-/

namespace A289474.P17015732445371362836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (A052905 (n + 2)).toNat

end

end A289474.P17015732445371362836

/-! ## A289474.P17857343771945641220

`A289481(eq[4, A025581(n)])`
-/

namespace A289474.P17857343771945641220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289474.P17857343771945641220

/-! ## A289474.P4017983142740680196

`A289481(A141214(n+2)-2)`
-/

namespace A289474.P4017983142740680196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (A141214 (n + 2) - 2).toNat

end

end A289474.P4017983142740680196

/-! ## A289474.P14990067137423410132

`A289481(A055998(n+3)-2)`
-/

namespace A289474.P14990067137423410132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (A055998 (n + 3) - 2).toNat

end

end A289474.P14990067137423410132

/-! ## A289474.P5812555676632680802

`A289481(eq[5, A004736(n+1)])`
-/

namespace A289474.P5812555676632680802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289474.P5812555676632680802

/-!
# A289475: Number of Dyck paths of semilength 5*n and height n.

The programs for A289475, there is no canonical definition to state claims against.
-/

/-! ## A289475.P7816928381258569439

`A289481(A055999(n+3))`
-/

namespace A289475.P7816928381258569439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (A055999 (n + 3)).toNat

end

end A289475.P7816928381258569439

/-! ## A289475.P16149352931659085655

`A289481(eq[5, A025581(n)])`
-/

namespace A289475.P16149352931659085655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289475.P16149352931659085655

/-! ## A289475.P3010762993992442183

`A289481(A027379(n+4)-3)`
-/

namespace A289475.P3010762993992442183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (A027379 (n + 4) - 3).toNat

end

end A289475.P3010762993992442183

/-! ## A289475.P17150137338465342683

`A289481(A000217(n+6)-6)`
-/

namespace A289475.P17150137338465342683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (A000217 (n + 6) - 6).toNat

end

end A289475.P17150137338465342683

/-! ## A289475.P16717651390091042245

`A289481(eq[6, A004736(n+1)])`
-/

namespace A289475.P16717651390091042245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289475.P16717651390091042245

/-!
# A289476: Number of Dyck paths of semilength 6*n and height n.

The programs for A289476, there is no canonical definition to state claims against.
-/

/-! ## A289476.P10771539838141239793

`A289481(A056121(n)+21)`
-/

namespace A289476.P10771539838141239793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (A056121 n + 21).toNat

end

end A289476.P10771539838141239793

/-! ## A289476.P14237001885602704874

`A289481(eq[6, A025581(n)])`
-/

namespace A289476.P14237001885602704874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289476.P14237001885602704874

/-! ## A289476.P15060433710804470591

`A289481(eq[7, A195663(n)])`
-/

namespace A289476.P15060433710804470591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289476.P15060433710804470591

/-! ## A289476.P11137759119448980237

`A289481(A000124(n+7)-8)`
-/

namespace A289476.P11137759119448980237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (A000124 (n + 7) - 8).toNat

end

end A289476.P11137759119448980237

/-! ## A289476.P13390754982413946716

`A289481(eq[7, A004736(n+1)])`
-/

namespace A289476.P13390754982413946716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289476.P13390754982413946716

/-!
# A289477: Number of Dyck paths of semilength 7*n and height n.

The programs for A289477, there is no canonical definition to state claims against.
-/

/-! ## A289477.P2387937163978588331

`A289481(eq[7, A025581(n)])`
-/

namespace A289477.P2387937163978588331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289477.P2387937163978588331

/-! ## A289477.P15962219278508311717

`A289481(A052905(n+5)-3)`
-/

namespace A289477.P15962219278508311717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (A052905 (n + 5) - 3).toNat

end

end A289477.P15962219278508311717

/-!
# A289478: Number of Dyck paths of semilength 8*n and height n.

The programs for A289478, there is no canonical definition to state claims against.
-/

/-! ## A289478.P12086749972805075965

`A289481(eq[8, A025581(n)])`
-/

namespace A289478.P12086749972805075965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289478.P12086749972805075965

/-! ## A289478.P7924122521220482847

`A289481(eq[9, A193739(n)])`
-/

namespace A289478.P7924122521220482847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289478.P7924122521220482847

/-! ## A289478.P7795844816455812812

`A289481(eq[9, A004736(n+1)])`
-/

namespace A289478.P7795844816455812812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289478.P7795844816455812812

/-!
# A289479: 

The programs for A289479, there is no canonical definition to state claims against.
-/

/-! ## A289479.P7512255948913820463

`A289481(eq[10, A193739(n)])`
-/

namespace A289479.P7512255948913820463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289479.P7512255948913820463

/-! ## A289479.P3674108799588672990

`A289481(eq[10, A195663(n)])`
-/

namespace A289479.P3674108799588672990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289479.P3674108799588672990

/-! ## A289479.P17574692707220975259

`A289481(eq[10, A004736(n+1)])`
-/

namespace A289479.P17574692707220975259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289479.P17574692707220975259

/-!
# A289480: 

The programs for A289480, there is no canonical definition to state claims against.
-/

/-! ## A289480.P2747383078864686745

`A289481(eq[10, A025581(n)])`
-/

namespace A289480.P2747383078864686745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289480.P2747383078864686745

/-!
# A289481: Number A(n,k) of Dyck paths of semilength k*n and height n; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A289481, there is no canonical definition to state claims against.
-/

/-! ## A289481.P8517144200848864784

`A130696(2^A183134(n))`
-/

namespace A289481.P8517144200848864784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A183134 n : ℤ))).toNat

end

end A289481.P8517144200848864784

/-! ## A289481.P15431549785549433372

`A130734(2^A183134(n))`
-/

namespace A289481.P15431549785549433372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A183134 n : ℤ))).toNat

end

end A289481.P15431549785549433372

/-! ## A289481.P5115404069241657153

`A161359(2^A183134(n))`
-/

namespace A289481.P5115404069241657153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161359 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A183134 n : ℤ))).toNat

end

end A289481.P5115404069241657153

/-! ## A289481.P12056024500319256152

`A165520(2^A183134(n))`
-/

namespace A289481.P12056024500319256152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165520 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A183134 n : ℤ))).toNat

end

end A289481.P12056024500319256152

/-! ## A289481.P10124458398207843060

`A003987(A240608(n)^A370507(n))`
-/

namespace A289481.P10124458398207843060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (SequenceMachineLib.roundAway ((A240608 n : ℚ) ^ (A370507 n : ℤ))).toNat

end

end A289481.P10124458398207843060

/-!
# A289482: Number of Dyck paths of semilength n^2 and height n.

The programs for A289482, there is no canonical definition to state claims against.
-/

/-! ## A289482.P13906689230002853968

`A289481(∑[4*n])`
-/

namespace A289482.P13906689230002853968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289481 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289482.P13906689230002853968

/-! ## A289482.P4772444419568710215

`or(1, A289481(A046092(n)))`
-/

namespace A289482.P4772444419568710215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A289481 (A046092 n).toNat)

end

end A289482.P4772444419568710215

/-! ## A289482.P8331366097102177328

`A289481(A046092(n))^A178489(n)`
-/

namespace A289482.P8331366097102177328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289481 (A046092 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A289482.P8331366097102177328

/-! ## A289482.P6074674249431550597

`A178489(3*n+4)*A289481(A046092(n))`
-/

namespace A289482.P6074674249431550597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (3 * n + 4) * A289481 (A046092 n).toNat

end

end A289482.P6074674249431550597

/-!
# A289483: Number of gcds-sortable two-rooted graphs on n vertices such that all vertices have even degree.

The programs for A289483, there is no canonical definition to state claims against.
-/

/-! ## A289483.P12540286645837530848

`A351012(abs(2-2^n))`
-/

namespace A289483.P12540286645837530848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351012 |2 - (2 ^ n : ℤ)|.toNat

end

end A289483.P12540286645837530848

/-! ## A289483.P15281864600418583148

`A069841(A365103(n))`
-/

namespace A289483.P15281864600418583148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069841 (A365103 n).toNat

end

end A289483.P15281864600418583148

/-!
# A289484: Semigroup of numbers under multiplication, distinct from mutinous sequence.

The programs for A289484, there is no canonical definition to state claims against.
-/

/-! ## A289484.P12406087320748387895

`lt[A235875(n+1), A001222(n+1)]+1`
-/

namespace A289484.P12406087320748387895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A289484.P12406087320748387895

/-! ## A289484.P13903985166314415324

`A020725(lt[A235875(n+1), A001222(n+1)])`
-/

namespace A289484.P13903985166314415324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A289484.P13903985166314415324

/-! ## A289484.P12502676239677512871

`A061767(lt[A235875(n+1), A001222(n+1)])`
-/

namespace A289484.P12502676239677512871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A289484.P12502676239677512871

/-! ## A289484.P3205281126006298925

`A065475(lt[A235875(n+1), A001222(n+1)])`
-/

namespace A289484.P3205281126006298925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A289484.P3205281126006298925

/-! ## A289484.P6633929585030104455

`A153152(lt[A235875(n+1), A001222(n+1)])`
-/

namespace A289484.P6633929585030104455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A289484.P6633929585030104455

/-!
# A289485: G.f.: Product_{m>0} (1 + x^m + 2!*x^(2*m) + 3!*x^(3*m)).

The programs for A289485, there is no canonical definition to state claims against.
-/

/-! ## A289485.P16691482610725941882

`A293202(∑[n+4]+2)`
-/

namespace A289485.P16691482610725941882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A289485.P16691482610725941882

/-! ## A289485.P5321641615008321596

`abs(1-A293202(A000217(n+4)-4))+1`
-/

namespace A289485.P5321641615008321596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A293202 (A000217 (n + 4) - 4).toNat| + 1

end

end A289485.P5321641615008321596

/-! ## A289485.P2555868760631916478

`A293202(A000217(n+4)-4)%A000051(n)`
-/

namespace A289485.P2555868760631916478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293202 (A000217 (n + 4) - 4).toNat) (A000051 n)

end

end A289485.P2555868760631916478

/-! ## A289485.P9572693423566601944

`or(A000007(n), A293202(A000217(n+4)-4))`
-/

namespace A289485.P9572693423566601944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293202 (A000217 (n + 4) - 4).toNat)

end

end A289485.P9572693423566601944

/-! ## A289485.P11088952666651264915

`A293202(A000217(n+3)+n)+A000007(n+1)`
-/

namespace A289485.P11088952666651264915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 (A000217 (n + 3) + (n : ℤ)).toNat + A000007 (n + 1)

end

end A289485.P11088952666651264915

/-! ## A289485.P5387411251056252642

`and(1, A290781(n))*A293202(A000217(n+3)+n)`
-/

namespace A289485.P5387411251056252642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A290781 n) * A293202 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A289485.P5387411251056252642

/-! ## A289485.P15971302976889556230

`A293202(A000217(n+3)+n)+and(1, A003478(n)+1)`
-/

namespace A289485.P15971302976889556230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 (A000217 (n + 3) + (n : ℤ)).toNat + Int.land 1 (A003478 n + 1)

end

end A289485.P15971302976889556230

/-! ## A289485.P5666603192853633002

`or(A010054((2*(n+1))²), A293202(A000217(n+4)-4))`
-/

namespace A289485.P5666603192853633002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 ((2 * (n + 1)) ^ 2)) (A293202 (A000217 (n + 4) - 4).toNat)

end

end A289485.P5666603192853633002

/-!
# A289486: G.f.: Product_{m>0} (1 + x^m + 2!*x^(2*m) + 3!*x^(3*m) + 4!*x^(4*m)).

The programs for A289486, there is no canonical definition to state claims against.
-/

/-! ## A289486.P17332997437214194012

`A293202(A052905(n+2))`
-/

namespace A289486.P17332997437214194012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 (A052905 (n + 2)).toNat

end

end A289486.P17332997437214194012

/-! ## A289486.P9048821077120963780

`A293202(A056115(n)+10)`
-/

namespace A289486.P9048821077120963780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 (A056115 n + 10).toNat

end

end A289486.P9048821077120963780

/-! ## A289486.P8743089456585591301

`A293202(A055999(n+2)+1)`
-/

namespace A289486.P8743089456585591301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 (A055999 (n + 2) + 1).toNat

end

end A289486.P8743089456585591301

/-! ## A289486.P245713805179608152

`A293202(A000217(n+5)-5)`
-/

namespace A289486.P245713805179608152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 (A000217 (n + 5) - 5).toNat

end

end A289486.P245713805179608152

/-! ## A289486.P4653595006764314108

`A293202(eq[5, A004736(n+1)])`
-/

namespace A289486.P4653595006764314108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289486.P4653595006764314108

/-! ## A289486.P12089723119123307357

`A293202(2*n+Δ[A005286(n)]+5)`
-/

namespace A289486.P12089723119123307357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 ((2 * n : ℤ) + (f1 (n + 1) - f1 n + 5)).toNat

end

end A289486.P12089723119123307357

/-! ## A289486.P18219147893209759862

`A293202(2*n+A167614(n+2)+1)`
-/

namespace A289486.P18219147893209759862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 ((2 * n : ℤ) + (A167614 (n + 2) + 1)).toNat

end

end A289486.P18219147893209759862

/-! ## A289486.P11407388156755414490

`A293202(2*n+A034856(n+1)+A020723(n))`
-/

namespace A289486.P11407388156755414490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 ((2 * n : ℤ) + (A034856 (n + 1) + A020723 n)).toNat

end

end A289486.P11407388156755414490

/-!
# A289488: a(n) = denominator of Sum_{k=1..n} 1/(2*k-1)!!.

The programs for A289488, there is no canonical definition to state claims against.
-/

/-! ## A289488.P9236063993946108592

`record[A321964(n)]/3^val(n+1, 3)`
-/

namespace A289488.P9236063993946108592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321964 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

end

end A289488.P9236063993946108592

/-! ## A289488.P5035534888005816138

`record[A144269(n+1)]/C(3, val(n+1, 3))`
-/

namespace A289488.P5035534888005816138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144269 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (Nat.choose 3 (SequenceMachineLib.valuation (n + 1) 3) : ℚ)

end

end A289488.P5035534888005816138

/-! ## A289488.P10953261067234421358

`A006882(2*n+1)/A342671(A033453(n))`
-/

namespace A289488.P10953261067234421358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (2 * n + 1) : ℚ) / (A342671 (A033453 n).toNat : ℚ)

end

end A289488.P10953261067234421358

/-!
# A289489: Number of permutations p of [n] such that in 0p the sum of all jumps equals 2n.

The programs for A289489, there is no canonical definition to state claims against.
-/

/-! ## A289489.P15719554940329382322

`A075464(a(n-1)+1)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A289489.P15719554940329382322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A075464 (a (n - 1) + 1).toNat

end

end A289489.P15719554940329382322

/-! ## A289489.P18152993317680694766

`A352131(A192760(n))`
-/

namespace A289489.P18152993317680694766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 (A192760 n).toNat

end

end A289489.P18152993317680694766

/-! ## A289489.P3979473552248000605

`A059253(lcm(2, A116508(n)))`
-/

namespace A289489.P3979473552248000605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (Int.lcm 2 (A116508 n))

end

end A289489.P3979473552248000605

/-!
# A289490: Primes of the form k!4+8, where k!4 is the quadruple factorial number (A007662).

The programs for A289490, there is no canonical definition to state claims against.
-/

/-! ## A289490.P6635352121070078295

`A007662(A291343(n+1))+8`
-/

namespace A289490.P6635352121070078295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (A291343 (n + 1)).toNat + 8

end

end A289490.P6635352121070078295

/-! ## A289490.P1926790724894573245

`A007662(eq[A065718(n), A226156(n)])+8`
-/

namespace A289490.P1926790724894573245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 8

end

end A289490.P1926790724894573245

/-! ## A289490.P15323320601450365748

`A007662(eq[A065718(n), A227570(n)])+8`
-/

namespace A289490.P15323320601450365748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 8

end

end A289490.P15323320601450365748

/-! ## A289490.P6431525612438573999

`A007662(eq[A065718(n), A227573(n)])+8`
-/

namespace A289490.P6431525612438573999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 8

end

end A289490.P6431525612438573999

/-!
# A289491: a(n) = denominator of 1/(1 + 1/(1 + 2/(1 + ... (1 + n)))).

The programs for A289491, there is no canonical definition to state claims against.
-/

/-! ## A289491.P2907062736647971330

`A225435(n+1)+A225436(n+1)`
-/

namespace A289491.P2907062736647971330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225435 (n + 1) + A225436 (n + 1)

end

end A289491.P2907062736647971330

/-! ## A289491.P8266596537203191000

`A229243(n+3)*A354933(A000085(n+2))`
-/

namespace A289491.P8266596537203191000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229243 (n + 3) * A354933 (A000085 (n + 2)).toNat

end

end A289491.P8266596537203191000

/-! ## A289491.P3219319544066385849

`A069943(n+3)*A071222(A029542(n+4))`
-/

namespace A289491.P3219319544066385849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069943 (n + 3) * A071222 (A029542 (n + 4)).toNat

end

end A289491.P3219319544066385849

/-!
# A289492: Primes of the form k!4+16, where k!4 is the quadruple factorial number (A007662).

The programs for A289492, there is no canonical definition to state claims against.
-/

/-! ## A289492.P15902539854893224569

`p?[Δ[A108895(n)]+16]`
-/

namespace A289492.P15902539854893224569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108895 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289492.P15902539854893224569

/-! ## A289492.P10947831200075561439

`p?[A007662(n+1)+16]`
-/

namespace A289492.P10947831200075561439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289492.P10947831200075561439

/-!
# A289493: Number of primes in the interval [2n, 3n].

The programs for A289493, the canonical program `A289493.P4700301683383788014` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289493 has offset 1).

The definition of A289493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289493.P4700301683383788014

`A100637(n)-A099801(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A289493

/-- `A100637(n)-A099801(n)` -/
def P4700301683383788014.Spec : Prop :=
  ∀ n, P4700301683383788014.a n = A289493 (n + 1)

theorem P4700301683383788014.correct : P4700301683383788014.Spec := by
  intro n
  simp only [A289493, Nat.add_sub_cancel]

end A289493

/-! ## A289493.P9809209286959675156

`A099801(comp[3*n])-A099801(n)`
-/

namespace A289493.P9809209286959675156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A099801 n

end

end A289493.P9809209286959675156

namespace A289493

/-- `A099801(comp[3*n])-A099801(n)` -/
def P9809209286959675156.Spec : Prop :=
  ∀ n, P9809209286959675156.a n = A289493 (n + 1)

end A289493

/-! ## A289493.P1862538719033363425

`A074990(n+1)-A060715(n+1)`
-/

namespace A289493.P1862538719033363425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074990 (n + 1) - A060715 (n + 1)

end

end A289493.P1862538719033363425

namespace A289493

/-- `A074990(n+1)-A060715(n+1)` -/
def P1862538719033363425.Spec : Prop :=
  ∀ n, P1862538719033363425.a n = A289493 (n + 1)

end A289493

/-! ## A289493.P3889176720208833450

`A100637(n)-A000720(2*n+1)`
-/

namespace A289493.P3889176720208833450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - A000720 (2 * n + 1)

end

end A289493.P3889176720208833450

namespace A289493

/-- `A100637(n)-A000720(2*n+1)` -/
def P3889176720208833450.Spec : Prop :=
  ∀ n, P3889176720208833450.a n = A289493 (n + 1)

end A289493

/-! ## A289493.P143440116468635340

`A000720(3*(n+1))-A000720(Δ[n²])`
-/

namespace A289493.P143440116468635340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * (n + 1)) - A000720 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A289493.P143440116468635340

namespace A289493

/-- `A000720(3*(n+1))-A000720(Δ[n²])` -/
def P143440116468635340.Spec : Prop :=
  ∀ n, P143440116468635340.a n = A289493 (n + 1)

end A289493

/-! ## A289493.P1500512272874758468

`A099802(A294732(n+3))-A000720(2*n+1)`
-/

namespace A289493.P1500512272874758468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A294732 (n + 3)).toNat - A000720 (2 * n + 1)

end

end A289493.P1500512272874758468

namespace A289493

/-- `A099802(A294732(n+3))-A000720(2*n+1)` -/
def P1500512272874758468.Spec : Prop :=
  ∀ n, P1500512272874758468.a n = A289493 (n + 1)

end A289493

/-! ## A289493.P3270502075051764337

`A100637(n)-A230980(2*n+1)`
-/

namespace A289493.P3270502075051764337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - A230980 (2 * n + 1)

end

end A289493.P3270502075051764337

namespace A289493

/-- `A100637(n)-A230980(2*n+1)` -/
def P3270502075051764337.Spec : Prop :=
  ∀ n, P3270502075051764337.a n = A289493 (n + 1)

end A289493

/-! ## A289493.P1632754502512797327

`A099802(A007494(n+1))-A230980(2*n+1)`
-/

namespace A289493.P1632754502512797327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A007494 (n + 1)).toNat - A230980 (2 * n + 1)

end

end A289493.P1632754502512797327

namespace A289493

/-- `A099802(A007494(n+1))-A230980(2*n+1)` -/
def P1632754502512797327.Spec : Prop :=
  ∀ n, P1632754502512797327.a n = A289493 (n + 1)

end A289493

/-! ## A289493.P40904078188403298

`A230772(2*(n+1))+A010051(2*(n+1))`
-/

namespace A289493.P40904078188403298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230772 (2 * (n + 1)) + A010051 (2 * (n + 1))

end

end A289493.P40904078188403298

namespace A289493

/-- `A230772(2*(n+1))+A010051(2*(n+1))` -/
def P40904078188403298.Spec : Prop :=
  ∀ n, P40904078188403298.a n = A289493 (n + 1)

end A289493

/-! ## A289493.P16770744006280031753

`A230980(A004767(n)-n)-A099801(n)`
-/

namespace A289493.P16770744006280031753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A004767 n - (n : ℤ)).toNat - A099801 n

end

end A289493.P16770744006280031753

namespace A289493

/-- `A230980(A004767(n)-n)-A099801(n)` -/
def P16770744006280031753.Spec : Prop :=
  ∀ n, P16770744006280031753.a n = A289493 (n + 1)

end A289493

/-! ## A289493.P15177176259531621230

`A036234(A008486(n+1))-A036234(2*n+1)`
-/

namespace A289493.P15177176259531621230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A008486 (n + 1)).toNat - A036234 (2 * n + 1)

end

end A289493.P15177176259531621230

namespace A289493

/-- `A036234(A008486(n+1))-A036234(2*n+1)` -/
def P15177176259531621230.Spec : Prop :=
  ∀ n, P15177176259531621230.a n = A289493 (n + 1)

end A289493

/-! ## A289493.P7020520271108503442

`A036234(A038179(n+2))-A036234(2*n+1)`
-/

namespace A289493.P7020520271108503442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A038179 (n + 2)).toNat - A036234 (2 * n + 1)

end

end A289493.P7020520271108503442

namespace A289493

/-- `A036234(A038179(n+2))-A036234(2*n+1)` -/
def P7020520271108503442.Spec : Prop :=
  ∀ n, P7020520271108503442.a n = A289493 (n + 1)

end A289493

/-! ## A289493.P5929099572285825871

`A100637(n)-A056172(A103517(2*n))`
-/

namespace A289493.P5929099572285825871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - A056172 (A103517 (2 * n)).toNat

end

end A289493.P5929099572285825871

namespace A289493

/-- `A100637(n)-A056172(A103517(2*n))` -/
def P5929099572285825871.Spec : Prop :=
  ∀ n, P5929099572285825871.a n = A289493 (n + 1)

end A289493

/-!
# A289494: Number of primes in the interval [3n, 4n].

The programs for A289494, the canonical program `A289494.P5014918227577049287` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289494 has offset 1).

The definition of A289494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289494.P5014918227577049287

`abs(A101909(n+1)-A289493(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A289494

/-- `abs(A101909(n+1)-A289493(n+1))` -/
def P5014918227577049287.Spec : Prop :=
  ∀ n, P5014918227577049287.a n = A289494 (n + 1)

theorem P5014918227577049287.correct : P5014918227577049287.Spec := by
  intro n
  simp only [A289494, Nat.add_sub_cancel]

end A289494

/-! ## A289494.P18102039295997687468

`A000720(record[xor(3, n)])-A000720(3*n+2)`
-/

namespace A289494.P18102039295997687468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - A000720 (3 * n + 2)

end

end A289494.P18102039295997687468

namespace A289494

/-- `A000720(record[xor(3, n)])-A000720(3*n+2)` -/
def P18102039295997687468.Spec : Prop :=
  ∀ n, P18102039295997687468.a n = A289494 (n + 1)

end A289494

/-! ## A289494.P15102710259415722660

`A000720(4*(n+1))-A000720(3*n+2)`
-/

namespace A289494.P15102710259415722660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (4 * (n + 1)) - A000720 (3 * n + 2)

end

end A289494.P15102710259415722660

namespace A289494

/-- `A000720(4*(n+1))-A000720(3*n+2)` -/
def P15102710259415722660.Spec : Prop :=
  ∀ n, P15102710259415722660.a n = A289494 (n + 1)

end A289494

/-! ## A289494.P17152296825943028706

`A101909(n+1)-A289493(n+1)%A101947(n+1)`
-/

namespace A289494.P17152296825943028706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101909 (n + 1) - Int.tmod (A289493 (n + 1)) (A101947 (n + 1))

end

end A289494.P17152296825943028706

namespace A289494

/-- `A101909(n+1)-A289493(n+1)%A101947(n+1)` -/
def P17152296825943028706.Spec : Prop :=
  ∀ n, P17152296825943028706.a n = A289494 (n + 1)

end A289494

/-! ## A289494.P9431647913835977896

`A035250(2*(n+1))-A230772(2*(n+1))`
-/

namespace A289494.P9431647913835977896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (2 * (n + 1)) - A230772 (2 * (n + 1))

end

end A289494.P9431647913835977896

namespace A289494

/-- `A035250(2*(n+1))-A230772(2*(n+1))` -/
def P9431647913835977896.Spec : Prop :=
  ∀ n, P9431647913835977896.a n = A289494 (n + 1)

end A289494

/-! ## A289494.P16165983648560784424

`A099802(2*(n+1))-A230980(3*n+2)`
-/

namespace A289494.P16165983648560784424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (2 * (n + 1)) - A230980 (3 * n + 2)

end

end A289494.P16165983648560784424

namespace A289494

/-- `A099802(2*(n+1))-A230980(3*n+2)` -/
def P16165983648560784424.Spec : Prop :=
  ∀ n, P16165983648560784424.a n = A289494 (n + 1)

end A289494

/-! ## A289494.P5378919085666058688

`A099801(2*n+1)-A230980(3*n+2)`
-/

namespace A289494.P5378919085666058688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (2 * n + 1) - A230980 (3 * n + 2)

end

end A289494.P5378919085666058688

namespace A289494

/-- `A099801(2*n+1)-A230980(3*n+2)` -/
def P5378919085666058688.Spec : Prop :=
  ∀ n, P5378919085666058688.a n = A289494 (n + 1)

end A289494

/-! ## A289494.P378991376844750007

`A101909(n+1)-A230772(A103517(n))`
-/

namespace A289494.P378991376844750007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101909 (n + 1) - A230772 (A103517 n).toNat

end

end A289494.P378991376844750007

namespace A289494

/-- `A101909(n+1)-A230772(A103517(n))` -/
def P378991376844750007.Spec : Prop :=
  ∀ n, P378991376844750007.a n = A289494 (n + 1)

end A289494

/-! ## A289494.P12965108672007908057

`A099802(2*(n+1))-A055679(6*n+4)`
-/

namespace A289494.P12965108672007908057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (2 * (n + 1)) - A055679 (6 * n + 4)

end

end A289494.P12965108672007908057

namespace A289494

/-- `A099802(2*(n+1))-A055679(6*n+4)` -/
def P12965108672007908057.Spec : Prop :=
  ∀ n, P12965108672007908057.a n = A289494 (n + 1)

end A289494

/-! ## A289494.P17365704874152109203

`A101909(n+1)-A289493(n+1)%A000051(n)`
-/

namespace A289494.P17365704874152109203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101909 (n + 1) - Int.tmod (A289493 (n + 1)) (A000051 n)

end

end A289494.P17365704874152109203

namespace A289494

/-- `A101909(n+1)-A289493(n+1)%A000051(n)` -/
def P17365704874152109203.Spec : Prop :=
  ∀ n, P17365704874152109203.a n = A289494 (n + 1)

end A289494

/-! ## A289494.P12076077334874516688

`A083415(A076095(n+2))`
-/

namespace A289494.P12076077334874516688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083415 (A076095 (n + 2)).toNat

end

end A289494.P12076077334874516688

namespace A289494

/-- `A083415(A076095(n+2))` -/
def P12076077334874516688.Spec : Prop :=
  ∀ n, P12076077334874516688.a n = A289494 (n + 1)

end A289494

/-!
# A289495: Number of primes in the interval [4n, 5n].

The programs for A289495, the canonical program `A289495.P8621251357975722322` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289495 has offset 1).

The definition of A289495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289495.P8621251357975722322

`A000720(A008706(n+1))-A000720(A008706(n+1)-(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289495

/-- `A000720(A008706(n+1))-A000720(A008706(n+1)-(n+1))` -/
def P8621251357975722322.Spec : Prop :=
  ∀ n, P8621251357975722322.a n = A289495 (n + 1)

theorem P8621251357975722322.correct : P8621251357975722322.Spec := by
  intro n
  simp only [A289495, Nat.add_sub_cancel]

end A289495

/-! ## A289495.P17456881281657435891

`A000720(5*(n+1))-A000720(A008574(n+1))`
-/

namespace A289495.P17456881281657435891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (5 * (n + 1)) - A000720 (A008574 (n + 1)).toNat

end

end A289495.P17456881281657435891

namespace A289495

/-- `A000720(5*(n+1))-A000720(A008574(n+1))` -/
def P17456881281657435891.Spec : Prop :=
  ∀ n, P17456881281657435891.a n = A289495 (n + 1)

end A289495

/-! ## A289495.P14124364173611317465

`A000720(A008706(n+1))-A000720(A008586(n+1))`
-/

namespace A289495.P14124364173611317465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008706 (n + 1)).toNat - A000720 (A008586 (n + 1)).toNat

end

end A289495.P14124364173611317465

namespace A289495

/-- `A000720(A008706(n+1))-A000720(A008586(n+1))` -/
def P14124364173611317465.Spec : Prop :=
  ∀ n, P14124364173611317465.a n = A289495 (n + 1)

end A289495

/-! ## A289495.P16419067077005293415

`A289493(A103517(n))-A289496(n+1)`
-/

namespace A289495.P16419067077005293415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (A103517 n).toNat - A289496 (n + 1)

end

end A289495.P16419067077005293415

namespace A289495

/-- `A289493(A103517(n))-A289496(n+1)` -/
def P16419067077005293415.Spec : Prop :=
  ∀ n, P16419067077005293415.a n = A289495 (n + 1)

end A289495

/-! ## A289495.P9324599219242972596

`A033270(5*(n+1))-A033270(A008574(n+1))`
-/

namespace A289495.P9324599219242972596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (5 * (n + 1)) - A033270 (A008574 (n + 1)).toNat

end

end A289495.P9324599219242972596

namespace A289495

/-- `A033270(5*(n+1))-A033270(A008574(n+1))` -/
def P9324599219242972596.Spec : Prop :=
  ∀ n, P9324599219242972596.a n = A289495 (n + 1)

end A289495

/-! ## A289495.P14475171862411922723

`A230980(A008586(n+1)+n+1)-A230980(A008586(n+1))`
-/

namespace A289495.P14475171862411922723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A008586 (n + 1) + (n + 1 : ℤ)).toNat - A230980 (A008586 (n + 1)).toNat

end

end A289495.P14475171862411922723

namespace A289495

/-- `A230980(A008586(n+1)+n+1)-A230980(A008586(n+1))` -/
def P14475171862411922723.Spec : Prop :=
  ∀ n, P14475171862411922723.a n = A289495 (n + 1)

end A289495

/-!
# A289496: Number of primes in the interval [5n, 6n].

The programs for A289496, the canonical program `A289496.P2094922246552871225` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289496 has offset 1).

The definition of A289496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289496.P17074060876542185218

`A000720(6*(n+1))-A000720(5*n+4)`
-/

namespace A289496.P17074060876542185218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (6 * (n + 1)) - A000720 (5 * n + 4)

end

end A289496.P17074060876542185218

namespace A289496

/-- `A000720(6*(n+1))-A000720(5*n+4)` -/
def P17074060876542185218.Spec : Prop :=
  ∀ n, P17074060876542185218.a n = A289496 (n + 1)

end A289496

/-! ## A289496.P160953924885672170

`A000720(A016969(n))%A000720(A016897(n))`
-/

namespace A289496.P160953924885672170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A016969 n).toNat) (A000720 (A016897 n).toNat)

end

end A289496.P160953924885672170

namespace A289496

/-- `A000720(A016969(n))%A000720(A016897(n))` -/
def P160953924885672170.Spec : Prop :=
  ∀ n, P160953924885672170.a n = A289496 (n + 1)

end A289496

/-! ## A289496.P2094922246552871225

`A289493(A103517(n))-A289495(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A289496

/-- `A289493(A103517(n))-A289495(n+1)` -/
def P2094922246552871225.Spec : Prop :=
  ∀ n, P2094922246552871225.a n = A289496 (n + 1)

theorem P2094922246552871225.correct : P2094922246552871225.Spec := by
  intro n
  simp only [A289496, Nat.add_sub_cancel]

end A289496

/-! ## A289496.P6298666712480181223

`A230980(6*(n+1))-A230980(5*n+4)`
-/

namespace A289496.P6298666712480181223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (6 * (n + 1)) - A230980 (5 * n + 4)

end

end A289496.P6298666712480181223

namespace A289496

/-- `A230980(6*(n+1))-A230980(5*n+4)` -/
def P6298666712480181223.Spec : Prop :=
  ∀ n, P6298666712480181223.a n = A289496 (n + 1)

end A289496

/-! ## A289496.P11761623513468751803

`A036234(Δ[A056109(n)])-A036234(5*n+4)`
-/

namespace A289496.P11761623513468751803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (n + 1) - f1 n).toNat - A036234 (5 * n + 4)

end

end A289496.P11761623513468751803

namespace A289496

/-- `A036234(Δ[A056109(n)])-A036234(5*n+4)` -/
def P11761623513468751803.Spec : Prop :=
  ∀ n, P11761623513468751803.a n = A289496 (n + 1)

end A289496

/-!
# A289497: Number of primes in the interval [6n, 7n].

The programs for A289497, there is no canonical definition to state claims against.
-/

/-! ## A289497.P6252984719847853942

`A143537(∑[50*n+27]-∑[n])`
-/

namespace A289497.P6252984719847853942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50 * n + 27

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143537 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A289497.P6252984719847853942

/-!
# A289498: Number of primes in the interval [7n, 8n].

The programs for A289498, the canonical program `A289498.P17823275358435890981` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289498 has offset 1).

The definition of A289498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289498.P17823275358435890981

`A000720(8*(n+1))-A000720(7*n+6)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289498

/-- `A000720(8*(n+1))-A000720(7*n+6)` -/
def P17823275358435890981.Spec : Prop :=
  ∀ n, P17823275358435890981.a n = A289498 (n + 1)

theorem P17823275358435890981.correct : P17823275358435890981.Spec := by
  intro n
  simp only [A289498, Nat.add_sub_cancel]

end A289498

/-! ## A289498.P3770210445942411970

`A099801(A004767(n))-A230980(A017053(n))`
-/

namespace A289498.P3770210445942411970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A004767 n).toNat - A230980 (A017053 n).toNat

end

end A289498.P3770210445942411970

namespace A289498

/-- `A099801(A004767(n))-A230980(A017053(n))` -/
def P3770210445942411970.Spec : Prop :=
  ∀ n, P3770210445942411970.a n = A289498 (n + 1)

end A289498

/-! ## A289498.P12126601059811184215

`A162642(A294540(n)+A278222(n))`
-/

namespace A289498.P12126601059811184215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (A294540 n + A278222 n).toNat

end

end A289498.P12126601059811184215

namespace A289498

/-- `A162642(A294540(n)+A278222(n))` -/
def P12126601059811184215.Spec : Prop :=
  ∀ n, P12126601059811184215.a n = A289498 (n + 1)

end A289498

/-! ## A289498.P10216047234059049956

`A055640(A187500(n+3)*A187502(n+7))`
-/

namespace A289498.P10216047234059049956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A187500 (n + 3) * A187502 (n + 7)).toNat

end

end A289498.P10216047234059049956

namespace A289498

/-- `A055640(A187500(n+3)*A187502(n+7))` -/
def P10216047234059049956.Spec : Prop :=
  ∀ n, P10216047234059049956.a n = A289498 (n + 1)

end A289498

/-! ## A289498.P1564973667668101977

`A102669(A305702(n+1)+A086572(3*n+2))`
-/

namespace A289498.P1564973667668101977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A305702 (n + 1) + A086572 (3 * n + 2)).toNat

end

end A289498.P1564973667668101977

namespace A289498

/-- `A102669(A305702(n+1)+A086572(3*n+2))` -/
def P1564973667668101977.Spec : Prop :=
  ∀ n, P1564973667668101977.a n = A289498 (n + 1)

end A289498

/-!
# A289499: Number of primes in the interval [8n, 9n].

The programs for A289499, the canonical program `A289499.P16333506063555151706` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289499 has offset 1).

The definition of A289499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289499.P10449477295210155898

`A000720(9*(n+1))-A000720(8*(n+1))`
-/

namespace A289499.P10449477295210155898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (9 * (n + 1)) - A000720 (8 * (n + 1))

end

end A289499.P10449477295210155898

namespace A289499

/-- `A000720(9*(n+1))-A000720(8*(n+1))` -/
def P10449477295210155898.Spec : Prop :=
  ∀ n, P10449477295210155898.a n = A289499 (n + 1)

end A289499

/-! ## A289499.P16333506063555151706

`A289495(2*(n+1))-A289500(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A289499

/-- `A289495(2*(n+1))-A289500(n+1)` -/
def P16333506063555151706.Spec : Prop :=
  ∀ n, P16333506063555151706.a n = A289499 (n + 1)

theorem P16333506063555151706.correct : P16333506063555151706.Spec := by
  intro n
  simp only [A289499, Nat.add_sub_cancel]

end A289499

/-! ## A289499.P7776878899552655851

`A327802(8*(n+1))`
-/

namespace A289499.P7776878899552655851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327802 (8 * (n + 1))

end

end A289499.P7776878899552655851

namespace A289499

/-- `A327802(8*(n+1))` -/
def P7776878899552655851.Spec : Prop :=
  ∀ n, P7776878899552655851.a n = A289499 (n + 1)

end A289499

/-! ## A289499.P5217557832789536026

`A327802(A273315(n))%A016792(n)`
-/

namespace A289499.P5217557832789536026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327802 (A273315 n).toNat) (A016792 n)

end

end A289499.P5217557832789536026

namespace A289499

/-- `A327802(A273315(n))%A016792(n)` -/
def P5217557832789536026.Spec : Prop :=
  ∀ n, P5217557832789536026.a n = A289499 (n + 1)

end A289499

/-! ## A289499.P14845368662334136012

`lcm(A062157(n), A327802(A273315(n)))`
-/

namespace A289499.P14845368662334136012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 n) (A327802 (A273315 n).toNat)

end

end A289499.P14845368662334136012

namespace A289499

/-- `lcm(A062157(n), A327802(A273315(n)))` -/
def P14845368662334136012.Spec : Prop :=
  ∀ n, (P14845368662334136012.a n : ℤ) = A289499 (n + 1)

end A289499

/-! ## A289499.P14267077865732647656

`and(A288906(n), A327802(A273315(n)))`
-/

namespace A289499.P14267077865732647656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A288906 n) (A327802 (A273315 n).toNat)

end

end A289499.P14267077865732647656

namespace A289499

/-- `and(A288906(n), A327802(A273315(n)))` -/
def P14267077865732647656.Spec : Prop :=
  ∀ n, P14267077865732647656.a n = A289499 (n + 1)

end A289499

