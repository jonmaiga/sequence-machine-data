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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import SequenceMachineLib.Triangle

/-!
# A197702: Smallest positive integer k such that n = +-1 +-3 +-... +-(2k-1) for some choice of +'s and -'s.

The programs for A197702, there is no canonical definition to state claims against.
-/

/-! ## A197702.P13261897637672318232

`A000120(2*lcm(A079523(n+1), A305423(n+1)))`
-/

namespace A197702.P13261897637672318232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * Int.lcm (A079523 (n + 1)) (A305423 (n + 1)))

end

end A197702.P13261897637672318232

/-!
# A197703: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,3,0,1,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A197703, there is no canonical definition to state claims against.
-/

/-! ## A197703.P16549947119883462946

`A255938(A234509(n))`
-/

namespace A197703.P16549947119883462946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 (A234509 n).toNat

end

end A197703.P16549947119883462946

/-!
# A197705: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,3,1,1,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A197705, there is no canonical definition to state claims against.
-/

/-! ## A197705.P4157680912457293195

`A325039(A106074(n+1))`
-/

namespace A197705.P4157680912457293195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325039 (A106074 (n + 1)).toNat

end

end A197705.P4157680912457293195

/-!
# A197706: Number of n X n X n 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,6,2,4,2,2,1 for x=0,1,2,3,4,5,6.

The programs for A197706, there is no canonical definition to state claims against.
-/

/-! ## A197706.P1828146053512754453

`A289498(A342629(n+1))+n`
-/

namespace A197706.P1828146053512754453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289498 (A342629 (n + 1)).toNat + (n : ℤ)

end

end A197706.P1828146053512754453

/-! ## A197706.P2041113678574641896

`A277478(n)+A204694(A115415(n))`
-/

namespace A197706.P2041113678574641896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277478 n + A204694 (A115415 n).toNat

end

end A197706.P2041113678574641896

/-!
# A197708: a(n) = floor((n + 1/n)^7).

The programs for A197708, the canonical program `A197708.P12616618483678903884` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197708 has offset 1).

The definition of A197708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197708.P12616618483678903884

`floor((ratio[n+1]+n)^7)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197708

/-- `floor((ratio[n+1]+n)^7)` -/
def P12616618483678903884.Spec : Prop :=
  ∀ n, P12616618483678903884.a n = A197708 (n + 1)

theorem P12616618483678903884.correct : P12616618483678903884.Spec := by
  intro n
  simp only [A197708, Nat.add_sub_cancel]

end A197708

/-! ## A197708.P4192258469259459205

`A197906(n+1)+A057428(n)`
-/

namespace A197708.P4192258469259459205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197906 (n + 1) + A057428 n

end

end A197708.P4192258469259459205

namespace A197708

/-- `A197906(n+1)+A057428(n)` -/
def P4192258469259459205.Spec : Prop :=
  ∀ n, P4192258469259459205.a n = A197708 (n + 1)

end A197708

/-! ## A197708.P1817128571230471218

`A197906(n+1)-A057427(n)`
-/

namespace A197708.P1817128571230471218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197906 (n + 1) - A057427 n

end

end A197708.P1817128571230471218

namespace A197708

/-- `A197906(n+1)-A057427(n)` -/
def P1817128571230471218.Spec : Prop :=
  ∀ n, P1817128571230471218.a n = A197708 (n + 1)

end A197708

/-! ## A197708.P3605177081075886459

`A197906(n+1)-A000040(n+1)%2`
-/

namespace A197708.P3605177081075886459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197906 (n + 1) - Int.tmod (A000040 (n + 1)) 2

end

end A197708.P3605177081075886459

namespace A197708

/-- `A197906(n+1)-A000040(n+1)%2` -/
def P3605177081075886459.Spec : Prop :=
  ∀ n, P3605177081075886459.a n = A197708 (n + 1)

end A197708

/-! ## A197708.P1418149400015728803

`A197906(n+1)-A000583(n)%(n+1)`
-/

namespace A197708.P1418149400015728803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197906 (n + 1) - Int.tmod (A000583 n) (n + 1 : ℤ)

end

end A197708.P1418149400015728803

namespace A197708

/-- `A197906(n+1)-A000583(n)%(n+1)` -/
def P1418149400015728803.Spec : Prop :=
  ∀ n, P1418149400015728803.a n = A197708 (n + 1)

end A197708

/-! ## A197708.P2486929240727049391

`A197906(n+1)-and(1, A046254(A011542(n)+1))`
-/

namespace A197708.P2486929240727049391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197906 (n + 1) - Int.land 1 (A046254 (A011542 n + 1).toNat)

end

end A197708.P2486929240727049391

namespace A197708

/-- `A197906(n+1)-and(1, A046254(A011542(n)+1))` -/
def P2486929240727049391.Spec : Prop :=
  ∀ n, P2486929240727049391.a n = A197708 (n + 1)

end A197708

/-! ## A197708.P10234350231167207006

`A197906(n+1)-and(1, A046254(A057979(n+1)+1))`
-/

namespace A197708.P10234350231167207006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197906 (n + 1) - Int.land 1 (A046254 (A057979 (n + 1) + 1).toNat)

end

end A197708.P10234350231167207006

namespace A197708

/-- `A197906(n+1)-and(1, A046254(A057979(n+1)+1))` -/
def P10234350231167207006.Spec : Prop :=
  ∀ n, P10234350231167207006.a n = A197708 (n + 1)

end A197708

/-! ## A197708.P17460275627154370220

`A197906(n+1)-and(1, A046254(n+1))`
-/

namespace A197708.P17460275627154370220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197906 (n + 1) - Int.land 1 (A046254 (n + 1))

end

end A197708.P17460275627154370220

namespace A197708

/-- `A197906(n+1)-and(1, A046254(n+1))` -/
def P17460275627154370220.Spec : Prop :=
  ∀ n, P17460275627154370220.a n = A197708 (n + 1)

end A197708

/-! ## A197708.P13688264495293938912

`A014052(n+1)+A197906(n+1)-A014058(n+1)`
-/

namespace A197708.P13688264495293938912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014052 (n + 1) + (A197906 (n + 1) - A014058 (n + 1))

end

end A197708.P13688264495293938912

namespace A197708

/-- `A014052(n+1)+A197906(n+1)-A014058(n+1)` -/
def P13688264495293938912.Spec : Prop :=
  ∀ n, P13688264495293938912.a n = A197708 (n + 1)

end A197708

/-!
# A197709: Floor((n+1/n)^8).

The programs for A197709, the canonical program `A197709.P1249782094848754323` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197709 has offset 1).

The definition of A197709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197709.P1249782094848754323

`floor((ratio[n+1]+n)^8)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197709

/-- `floor((ratio[n+1]+n)^8)` -/
def P1249782094848754323.Spec : Prop :=
  ∀ n, P1249782094848754323.a n = A197709 (n + 1)

theorem P1249782094848754323.correct : P1249782094848754323.Spec := by
  intro n
  simp only [A197709, Nat.add_sub_cancel]

end A197709

/-! ## A197709.P10318652809485122979

`A197907(n+1)-n²%(n+1)`
-/

namespace A197709.P10318652809485122979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197907 (n + 1) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A197709.P10318652809485122979

namespace A197709

/-- `A197907(n+1)-n²%(n+1)` -/
def P10318652809485122979.Spec : Prop :=
  ∀ n, P10318652809485122979.a n = A197709 (n + 1)

end A197709

/-! ## A197709.P11543074158086832919

`A197907(1+n)+A057428(n)`
-/

namespace A197709.P11543074158086832919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197907 (1 + n) + A057428 n

end

end A197709.P11543074158086832919

namespace A197709

/-- `A197907(1+n)+A057428(n)` -/
def P11543074158086832919.Spec : Prop :=
  ∀ n, P11543074158086832919.a n = A197709 (n + 1)

end A197709

/-! ## A197709.P8082625729186420302

`A197907(n+1)-A057427(n)`
-/

namespace A197709.P8082625729186420302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197907 (n + 1) - A057427 n

end

end A197709.P8082625729186420302

namespace A197709

/-- `A197907(n+1)-A057427(n)` -/
def P8082625729186420302.Spec : Prop :=
  ∀ n, P8082625729186420302.a n = A197709 (n + 1)

end A197709

/-! ## A197709.P6491567006522138742

`A197907(n+1)-A019433(2*n)`
-/

namespace A197709.P6491567006522138742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197907 (n + 1) - A019433 (2 * n)

end

end A197709.P6491567006522138742

namespace A197709

/-- `A197907(n+1)-A019433(2*n)` -/
def P6491567006522138742.Spec : Prop :=
  ∀ n, P6491567006522138742.a n = A197709 (n + 1)

end A197709

/-! ## A197709.P9076986868612915165

`A197907(n+1)-ceil(n/A197903(n+1))`
-/

namespace A197709.P9076986868612915165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197907 (n + 1) - ⌈(n : ℚ) / (A197903 (n + 1) : ℚ)⌉

end

end A197709.P9076986868612915165

namespace A197709

/-- `A197907(n+1)-ceil(n/A197903(n+1))` -/
def P9076986868612915165.Spec : Prop :=
  ∀ n, P9076986868612915165.a n = A197709 (n + 1)

end A197709

/-! ## A197709.P13205907764295166938

`A197907(n+1)-A019433(A005843(n))²`
-/

namespace A197709.P13205907764295166938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197907 (n + 1) - A019433 (A005843 n).toNat ^ 2

end

end A197709.P13205907764295166938

namespace A197709

/-- `A197907(n+1)-A019433(A005843(n))²` -/
def P13205907764295166938.Spec : Prop :=
  ∀ n, P13205907764295166938.a n = A197709 (n + 1)

end A197709

/-! ## A197709.P15253208100316247500

`A306671(A000040(n+1))+A197907(n+1)-2`
-/

namespace A197709.P15253208100316247500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306671 (A000040 (n + 1)).toNat + (A197907 (n + 1) - 2)

end

end A197709.P15253208100316247500

namespace A197709

/-- `A306671(A000040(n+1))+A197907(n+1)-2` -/
def P15253208100316247500.Spec : Prop :=
  ∀ n, P15253208100316247500.a n = A197709 (n + 1)

end A197709

/-! ## A197709.P12950265457758647998

`A111755((n+1)²+1)+A197907(n+1)-1`
-/

namespace A197709.P12950265457758647998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111755 ((n + 1) ^ 2 + 1) + (A197907 (n + 1) - 1)

end

end A197709.P12950265457758647998

namespace A197709

/-- `A111755((n+1)²+1)+A197907(n+1)-1` -/
def P12950265457758647998.Spec : Prop :=
  ∀ n, P12950265457758647998.a n = A197709 (n + 1)

end A197709

/-! ## A197709.P17058620477718517930

`A014052(n+1)+A197907(n+1)-A014058(n+1)`
-/

namespace A197709.P17058620477718517930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014052 (n + 1) + (A197907 (n + 1) - A014058 (n + 1))

end

end A197709.P17058620477718517930

namespace A197709

/-- `A014052(n+1)+A197907(n+1)-A014058(n+1)` -/
def P17058620477718517930.Spec : Prop :=
  ∀ n, P17058620477718517930.a n = A197709 (n + 1)

end A197709

/-!
# A197710: Floor((n+1/n)^9).

The programs for A197710, the canonical program `A197710.P8403547483662246711` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197710 has offset 1).

The definition of A197710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197710.P8403547483662246711

`floor((ratio[n+1]+n)^9)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197710

/-- `floor((ratio[n+1]+n)^9)` -/
def P8403547483662246711.Spec : Prop :=
  ∀ n, P8403547483662246711.a n = A197710 (n + 1)

theorem P8403547483662246711.correct : P8403547483662246711.Spec := by
  intro n
  simp only [A197710, Nat.add_sub_cancel]

end A197710

/-! ## A197710.P13689860304227458315

`A197908(n+1)+A057428(n)`
-/

namespace A197710.P13689860304227458315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197908 (n + 1) + A057428 n

end

end A197710.P13689860304227458315

namespace A197710

/-- `A197908(n+1)+A057428(n)` -/
def P13689860304227458315.Spec : Prop :=
  ∀ n, P13689860304227458315.a n = A197710 (n + 1)

end A197710

/-! ## A197710.P16950957478256930133

`A197908(n+1)-A057427(n)`
-/

namespace A197710.P16950957478256930133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197908 (n + 1) - A057427 n

end

end A197710.P16950957478256930133

namespace A197710

/-- `A197908(n+1)-A057427(n)` -/
def P16950957478256930133.Spec : Prop :=
  ∀ n, P16950957478256930133.a n = A197710 (n + 1)

end A197710

/-! ## A197710.P5774624276027140363

`A197908(n+1)-gcd(n, A004273(n))`
-/

namespace A197710.P5774624276027140363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197908 (n + 1) - (Int.gcd (n : ℤ) (A004273 n) : ℤ)

end

end A197710.P5774624276027140363

namespace A197710

/-- `A197908(n+1)-gcd(n, A004273(n))` -/
def P5774624276027140363.Spec : Prop :=
  ∀ n, P5774624276027140363.a n = A197710 (n + 1)

end A197710

/-! ## A197710.P11239372429363677279

`A197908(n+1)-A001222(A135679(n+1))`
-/

namespace A197710.P11239372429363677279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197908 (n + 1) - A001222 (A135679 (n + 1)).toNat

end

end A197710.P11239372429363677279

namespace A197710

/-- `A197908(n+1)-A001222(A135679(n+1))` -/
def P11239372429363677279.Spec : Prop :=
  ∀ n, P11239372429363677279.a n = A197710 (n + 1)

end A197710

/-! ## A197710.P7830891392633802184

`A079261(3*(n+1))+A197908(n+1)-1`
-/

namespace A197710.P7830891392633802184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079261 (3 * (n + 1)) + (A197908 (n + 1) - 1)

end

end A197710.P7830891392633802184

namespace A197710

/-- `A079261(3*(n+1))+A197908(n+1)-1` -/
def P7830891392633802184.Spec : Prop :=
  ∀ n, P7830891392633802184.a n = A197710 (n + 1)

end A197710

/-! ## A197710.P8723357462299983756

`A014052(n+1)+A197908(n+1)-A014058(n+1)`
-/

namespace A197710.P8723357462299983756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014052 (n + 1) + (A197908 (n + 1) - A014058 (n + 1))

end

end A197710.P8723357462299983756

namespace A197710

/-- `A014052(n+1)+A197908(n+1)-A014058(n+1)` -/
def P8723357462299983756.Spec : Prop :=
  ∀ n, P8723357462299983756.a n = A197710 (n + 1)

end A197710

/-!
# A197711: Floor((n+1/n)^10).

The programs for A197711, the canonical program `A197711.P9012593457498211010` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197711 has offset 1).

The definition of A197711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197711.P9012593457498211010

`floor((1/(n+1)+n+1)^10)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197711

/-- `floor((1/(n+1)+n+1)^10)` -/
def P9012593457498211010.Spec : Prop :=
  ∀ n, P9012593457498211010.a n = A197711 (n + 1)

theorem P9012593457498211010.correct : P9012593457498211010.Spec := by
  intro n
  simp only [A197711, Nat.add_sub_cancel]

end A197711

/-! ## A197711.P12812417831963118192

`A197909(n+1)+A057428(n)`
-/

namespace A197711.P12812417831963118192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197909 (n + 1) + A057428 n

end

end A197711.P12812417831963118192

namespace A197711

/-- `A197909(n+1)+A057428(n)` -/
def P12812417831963118192.Spec : Prop :=
  ∀ n, P12812417831963118192.a n = A197711 (n + 1)

end A197711

/-! ## A197711.P14358385804706133351

`A197909(n+1)-A057427(n)`
-/

namespace A197711.P14358385804706133351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197909 (n + 1) - A057427 n

end

end A197711.P14358385804706133351

namespace A197711

/-- `A197909(n+1)-A057427(n)` -/
def P14358385804706133351.Spec : Prop :=
  ∀ n, P14358385804706133351.a n = A197711 (n + 1)

end A197711

/-! ## A197711.P14135121041971320156

`A197909(n+1)-A152998(n)%2`
-/

namespace A197711.P14135121041971320156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197909 (n + 1) - Int.tmod (A152998 n) 2

end

end A197711.P14135121041971320156

namespace A197711

/-- `A197909(n+1)-A152998(n)%2` -/
def P14135121041971320156.Spec : Prop :=
  ∀ n, P14135121041971320156.a n = A197711 (n + 1)

end A197711

/-! ## A197711.P2787604594285898899

`A197909(n+1)-ceil(n/A197904(n+1))`
-/

namespace A197711.P2787604594285898899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197909 (n + 1) - ⌈(n : ℚ) / (A197904 (n + 1) : ℚ)⌉

end

end A197711.P2787604594285898899

namespace A197711

/-- `A197909(n+1)-ceil(n/A197904(n+1))` -/
def P2787604594285898899.Spec : Prop :=
  ∀ n, P2787604594285898899.a n = A197711 (n + 1)

end A197711

/-! ## A197711.P4973534772026567231

`A197909(n+1)-(A315713(n)+1)%2`
-/

namespace A197711.P4973534772026567231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197909 (n + 1) - Int.tmod (A315713 n + 1) 2

end

end A197711.P4973534772026567231

namespace A197711

/-- `A197909(n+1)-(A315713(n)+1)%2` -/
def P4973534772026567231.Spec : Prop :=
  ∀ n, P4973534772026567231.a n = A197711 (n + 1)

end A197711

/-! ## A197711.P1126500947190743401

`A197909(n+1)-∑[A001787(n)]%2`
-/

namespace A197711.P1126500947190743401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197909 (n + 1) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A197711.P1126500947190743401

namespace A197711

/-- `A197909(n+1)-∑[A001787(n)]%2` -/
def P1126500947190743401.Spec : Prop :=
  ∀ n, P1126500947190743401.a n = A197711 (n + 1)

end A197711

/-! ## A197711.P8427111177459802247

`A014052(n+1)+A197909(n+1)-A014058(n+1)`
-/

namespace A197711.P8427111177459802247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014052 (n + 1) + (A197909 (n + 1) - A014058 (n + 1))

end

end A197711.P8427111177459802247

namespace A197711

/-- `A014052(n+1)+A197909(n+1)-A014058(n+1)` -/
def P8427111177459802247.Spec : Prop :=
  ∀ n, P8427111177459802247.a n = A197711 (n + 1)

end A197711

/-!
# A197712: a(n) = floor((n+1/2)^n).

The programs for A197712, the canonical program `A197712.P17020902698898650135` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197712 has offset 1).

The definition of A197712 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1+1/2)^(n+1))` (program `A197712.P17020902698898650135`, by `A197712.P17020902698898650135.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197712.P17020902698898650135

`floor((n+1+1/2)^(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197712

/-- `floor((n+1+1/2)^(n+1))` -/
def P17020902698898650135.Spec : Prop :=
  ∀ n, P17020902698898650135.a n = A197712 (n + 1)

theorem P17020902698898650135.correct : P17020902698898650135.Spec := by
  intro n
  simp only [A197712, Nat.add_sub_cancel]

end A197712

/-! ## A197712.P10243520964739236938

`A197910(n+1)-1`
-/

namespace A197712.P10243520964739236938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197910 (n + 1) - 1

end

end A197712.P10243520964739236938

namespace A197712

/-- `A197910(n+1)-1` -/
def P10243520964739236938.Spec : Prop :=
  ∀ n, P10243520964739236938.a n = A197712 (n + 1)

end A197712

/-! ## A197712.P6625715394892803386

`A259506(A001055(n+1))+A197910(n+1)`
-/

namespace A197712.P6625715394892803386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259506 (A001055 (n + 1)).toNat + A197910 (n + 1)

end

end A197712.P6625715394892803386

namespace A197712

/-- `A259506(A001055(n+1))+A197910(n+1)` -/
def P6625715394892803386.Spec : Prop :=
  ∀ n, P6625715394892803386.a n = A197712 (n + 1)

end A197712

/-! ## A197712.P4589836930773587588

`A259506(A035100(n+1))+A197910(n+1)`
-/

namespace A197712.P4589836930773587588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259506 (A035100 (n + 1)).toNat + A197910 (n + 1)

end

end A197712.P4589836930773587588

namespace A197712

/-- `A259506(A035100(n+1))+A197910(n+1)` -/
def P4589836930773587588.Spec : Prop :=
  ∀ n, P4589836930773587588.a n = A197712 (n + 1)

end A197712

/-! ## A197712.P3025429759201883228

`A318657(A002144(n+1))+A197910(n+1)`
-/

namespace A197712.P3025429759201883228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A002144 (n + 1)).toNat + A197910 (n + 1)

end

end A197712.P3025429759201883228

namespace A197712

/-- `A318657(A002144(n+1))+A197910(n+1)` -/
def P3025429759201883228.Spec : Prop :=
  ∀ n, P3025429759201883228.a n = A197712 (n + 1)

end A197712

/-! ## A197712.P8476537776882382968

`A318657(A002145(n+1))+A197910(n+1)`
-/

namespace A197712.P8476537776882382968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A002145 (n + 1)).toNat + A197910 (n + 1)

end

end A197712.P8476537776882382968

namespace A197712

/-- `A318657(A002145(n+1))+A197910(n+1)` -/
def P8476537776882382968.Spec : Prop :=
  ∀ n, P8476537776882382968.a n = A197712 (n + 1)

end A197712

/-! ## A197712.P5182563025719761148

`A318657(A136800(n+1))+A197910(n+1)`
-/

namespace A197712.P5182563025719761148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A136800 (n + 1)).toNat + A197910 (n + 1)

end

end A197712.P5182563025719761148

namespace A197712

/-- `A318657(A136800(n+1))+A197910(n+1)` -/
def P5182563025719761148.Spec : Prop :=
  ∀ n, P5182563025719761148.a n = A197712 (n + 1)

end A197712

/-!
# A197713: Floor((n+1/3)^n).

The programs for A197713, the canonical program `A197713.P17153025432865740666` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197713 has offset 1).

The definition of A197713 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1+1/3)^(n+1))` (program `A197713.P17153025432865740666`, by `A197713.P17153025432865740666.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197713.P17153025432865740666

`floor((n+1+1/3)^(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197713

/-- `floor((n+1+1/3)^(n+1))` -/
def P17153025432865740666.Spec : Prop :=
  ∀ n, P17153025432865740666.a n = A197713 (n + 1)

theorem P17153025432865740666.correct : P17153025432865740666.Spec := by
  intro n
  simp only [A197713, Nat.add_sub_cancel]

end A197713

/-! ## A197713.P8250703221886096610

`ceil((4/3+n)^(n+1))-((-1)^val(n+1, 2))²`
-/

namespace A197713.P8250703221886096610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((4 : ℚ) / 3 + (n : ℚ)) ^ (n + 1)⌉ - ((-1) ^ SequenceMachineLib.valuation (n + 1) 2) ^ 2

end

end A197713.P8250703221886096610

namespace A197713

/-- `ceil((4/3+n)^(n+1))-((-1)^val(n+1, 2))²` -/
def P8250703221886096610.Spec : Prop :=
  ∀ n, P8250703221886096610.a n = A197713 (n + 1)

end A197713

/-! ## A197713.P1487665801603957

`ceil((4/3+n)^(n+1))-(and(2, comp[∑[n]]+n)-1)²`
-/

namespace A197713.P1487665801603957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((4 : ℚ) / 3 + (n : ℚ)) ^ (n + 1)⌉ - ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) ^ 2

end

end A197713.P1487665801603957

namespace A197713

/-- `ceil((4/3+n)^(n+1))-(and(2, comp[∑[n]]+n)-1)²` -/
def P1487665801603957.Spec : Prop :=
  ∀ n, P1487665801603957.a n = A197713 (n + 1)

end A197713

/-! ## A197713.P3137366541806647873

`A197972(n+1)-1`
-/

namespace A197713.P3137366541806647873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197972 (n + 1) - 1

end

end A197713.P3137366541806647873

namespace A197713

/-- `A197972(n+1)-1` -/
def P3137366541806647873.Spec : Prop :=
  ∀ n, P3137366541806647873.a n = A197713 (n + 1)

end A197713

/-! ## A197713.P17840756474971279578

`ceil((4/3+n)^(n+1))-A057427(∑{d}[n+1, #])`
-/

namespace A197713.P17840756474971279578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((4 : ℚ) / 3 + (n : ℚ)) ^ (n + 1)⌉ - A057427 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A197713.P17840756474971279578

namespace A197713

/-- `ceil((4/3+n)^(n+1))-A057427(∑{d}[n+1, #])` -/
def P17840756474971279578.Spec : Prop :=
  ∀ n, P17840756474971279578.a n = A197713 (n + 1)

end A197713

/-! ## A197713.P12695738953404054001

`ceil((4/3+n)^(n+1))-A279290(ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A197713.P12695738953404054001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((4 : ℚ) / 3 + (n : ℚ)) ^ (n + 1)⌉ - A279290 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat

end

end A197713.P12695738953404054001

namespace A197713

/-- `ceil((4/3+n)^(n+1))-A279290(ceil((n+1)/∏{p}[n+1, (n+1)/#]))` -/
def P12695738953404054001.Spec : Prop :=
  ∀ n, P12695738953404054001.a n = A197713 (n + 1)

end A197713

/-! ## A197713.P9033035909137528813

`A057428(A098098(n))+ceil((4/3+n)^(n+1))`
-/

namespace A197713.P9033035909137528813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A098098 n).toNat + ⌈((4 : ℚ) / 3 + (n : ℚ)) ^ (n + 1)⌉

end

end A197713.P9033035909137528813

namespace A197713

/-- `A057428(A098098(n))+ceil((4/3+n)^(n+1))` -/
def P9033035909137528813.Spec : Prop :=
  ∀ n, P9033035909137528813.a n = A197713 (n + 1)

end A197713

/-! ## A197713.P12388105169250653768

`ceil((4/3+n)^(n+1))-A007318(A001876(n))`
-/

namespace A197713.P12388105169250653768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((4 : ℚ) / 3 + (n : ℚ)) ^ (n + 1)⌉ - A007318 (A001876 n).toNat

end

end A197713.P12388105169250653768

namespace A197713

/-- `ceil((4/3+n)^(n+1))-A007318(A001876(n))` -/
def P12388105169250653768.Spec : Prop :=
  ∀ n, P12388105169250653768.a n = A197713 (n + 1)

end A197713

/-! ## A197713.P15507969687979261415

`A316441(A000040(n+1))+A197972(n+1)`
-/

namespace A197713.P15507969687979261415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A197972 (n + 1)

end

end A197713.P15507969687979261415

namespace A197713

/-- `A316441(A000040(n+1))+A197972(n+1)` -/
def P15507969687979261415.Spec : Prop :=
  ∀ n, P15507969687979261415.a n = A197713 (n + 1)

end A197713

/-! ## A197713.P142935169904381785

`ceil((4/3+n)^(n+1))-A001222(A098095(n+1))`
-/

namespace A197713.P142935169904381785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((4 : ℚ) / 3 + (n : ℚ)) ^ (n + 1)⌉ - A001222 (A098095 (n + 1)).toNat

end

end A197713.P142935169904381785

namespace A197713

/-- `ceil((4/3+n)^(n+1))-A001222(A098095(n+1))` -/
def P142935169904381785.Spec : Prop :=
  ∀ n, P142935169904381785.a n = A197713 (n + 1)

end A197713

/-!
# A197714: Floor((n+1/4)^n).

The programs for A197714, the canonical program `A197714.P4318560691911187045` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197714 has offset 1).

The definition of A197714 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1+1/4)^(n+1))` (program `A197714.P4318560691911187045`, by `A197714.P4318560691911187045.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197714.P4318560691911187045

`floor((n+1+1/4)^(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197714

/-- `floor((n+1+1/4)^(n+1))` -/
def P4318560691911187045.Spec : Prop :=
  ∀ n, P4318560691911187045.a n = A197714 (n + 1)

theorem P4318560691911187045.correct : P4318560691911187045.Spec := by
  intro n
  simp only [A197714, Nat.add_sub_cancel]

end A197714

/-! ## A197714.P8791177035371254533

`A197973(n+1)-1`
-/

namespace A197714.P8791177035371254533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197973 (n + 1) - 1

end

end A197714.P8791177035371254533

namespace A197714

/-- `A197973(n+1)-1` -/
def P8791177035371254533.Spec : Prop :=
  ∀ n, P8791177035371254533.a n = A197714 (n + 1)

end A197714

/-! ## A197714.P10490015123476514382

`ceil((5/4+n)^(n+1))-A158388(n)²`
-/

namespace A197714.P10490015123476514382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((5 : ℚ) / 4 + (n : ℚ)) ^ (n + 1)⌉ - A158388 n ^ 2

end

end A197714.P10490015123476514382

namespace A197714

/-- `ceil((5/4+n)^(n+1))-A158388(n)²` -/
def P10490015123476514382.Spec : Prop :=
  ∀ n, P10490015123476514382.a n = A197714 (n + 1)

end A197714

/-! ## A197714.P8649134115873423270

`ceil((5/4+n)^(n+1))-A157275(∑[n])`
-/

namespace A197714.P8649134115873423270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((5 : ℚ) / 4 + (n : ℚ)) ^ (n + 1)⌉ - A157275 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A197714.P8649134115873423270

namespace A197714

/-- `ceil((5/4+n)^(n+1))-A157275(∑[n])` -/
def P8649134115873423270.Spec : Prop :=
  ∀ n, P8649134115873423270.a n = A197714 (n + 1)

end A197714

/-! ## A197714.P12188688472436074379

`ceil((5/4+n)^(n+1))-A158387(n+1)²`
-/

namespace A197714.P12188688472436074379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((5 : ℚ) / 4 + (n : ℚ)) ^ (n + 1)⌉ - A158387 (n + 1) ^ 2

end

end A197714.P12188688472436074379

namespace A197714

/-- `ceil((5/4+n)^(n+1))-A158387(n+1)²` -/
def P12188688472436074379.Spec : Prop :=
  ∀ n, P12188688472436074379.a n = A197714 (n + 1)

end A197714

/-! ## A197714.P2661495179768585894

`abs(A197973(n+1)+A033999(2*n+1))`
-/

namespace A197714.P2661495179768585894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A197973 (n + 1) + A033999 (2 * n + 1)|

end

end A197714.P2661495179768585894

namespace A197714

/-- `abs(A197973(n+1)+A033999(2*n+1))` -/
def P2661495179768585894.Spec : Prop :=
  ∀ n, P2661495179768585894.a n = A197714 (n + 1)

end A197714

/-!
# A197715: Floor((n+1/5)^n).

The programs for A197715, the canonical program `A197715.P10265447061343910336` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197715 has offset 1).

The definition of A197715 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1+1/5)^(n+1))` (program `A197715.P10265447061343910336`, by `A197715.P10265447061343910336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197715.P10265447061343910336

`floor((n+1+1/5)^(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197715

/-- `floor((n+1+1/5)^(n+1))` -/
def P10265447061343910336.Spec : Prop :=
  ∀ n, P10265447061343910336.a n = A197715 (n + 1)

theorem P10265447061343910336.correct : P10265447061343910336.Spec := by
  intro n
  simp only [A197715, Nat.add_sub_cancel]

end A197715

/-! ## A197715.P9927804960042203433

`A197974(n+1)-1`
-/

namespace A197715.P9927804960042203433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197974 (n + 1) - 1

end

end A197715.P9927804960042203433

namespace A197715

/-- `A197974(n+1)-1` -/
def P9927804960042203433.Spec : Prop :=
  ∀ n, P9927804960042203433.a n = A197715 (n + 1)

end A197715

/-! ## A197715.P10582337817001638013

`abs(A197974(n+1)+A057428(n+1))`
-/

namespace A197715.P10582337817001638013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A197974 (n + 1) + A057428 (n + 1)|

end

end A197715.P10582337817001638013

namespace A197715

/-- `abs(A197974(n+1)+A057428(n+1))` -/
def P10582337817001638013.Spec : Prop :=
  ∀ n, P10582337817001638013.a n = A197715 (n + 1)

end A197715

/-! ## A197715.P810358602503719519

`A343785(A167499(n))+A197974(n+1)`
-/

namespace A197715.P810358602503719519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343785 (A167499 n).toNat + A197974 (n + 1)

end

end A197715.P810358602503719519

namespace A197715

/-- `A343785(A167499(n))+A197974(n+1)` -/
def P810358602503719519.Spec : Prop :=
  ∀ n, P810358602503719519.a n = A197715 (n + 1)

end A197715

/-! ## A197715.P8809260379209721277

`A212496(A014963(∑[n+1]))+A197974(n+1)`
-/

namespace A197715.P8809260379209721277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212496 (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A197974 (n + 1)

end

end A197715.P8809260379209721277

namespace A197715

/-- `A212496(A014963(∑[n+1]))+A197974(n+1)` -/
def P8809260379209721277.Spec : Prop :=
  ∀ n, P8809260379209721277.a n = A197715 (n + 1)

end A197715

/-!
# A197716: a(n) = ceiling((2n+1/n)^n).

The programs for A197716, the canonical program `A197716.P10707518555604231379` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197716 has offset 1).

The definition of A197716 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((2*(n+1)+1/(n+1))^(n+1))` (program `A197716.P10707518555604231379`, by `A197716.P10707518555604231379.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197716.P10707518555604231379

`ceil((2*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197716

/-- `ceil((2*(n+1)+1/(n+1))^(n+1))` -/
def P10707518555604231379.Spec : Prop :=
  ∀ n, P10707518555604231379.a n = A197716 (n + 1)

theorem P10707518555604231379.correct : P10707518555604231379.Spec := by
  intro n
  simp only [A197716, Nat.add_sub_cancel]

end A197716

/-! ## A197716.P11307899916150427709

`A197322(n+1)+A057427(n)`
-/

namespace A197716.P11307899916150427709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197322 (n + 1) + A057427 n

end

end A197716.P11307899916150427709

namespace A197716

/-- `A197322(n+1)+A057427(n)` -/
def P11307899916150427709.Spec : Prop :=
  ∀ n, P11307899916150427709.a n = A197716 (n + 1)

end A197716

/-! ## A197716.P5714576287818225468

`A197322(n+1)+A178334(n)`
-/

namespace A197716.P5714576287818225468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197322 (n + 1) + A178334 n

end

end A197716.P5714576287818225468

namespace A197716

/-- `A197322(n+1)+A178334(n)` -/
def P5714576287818225468.Spec : Prop :=
  ∀ n, P5714576287818225468.a n = A197716 (n + 1)

end A197716

/-! ## A197716.P6611616760596060988

`A197322(n+1)-A057428(n)`
-/

namespace A197716.P6611616760596060988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197322 (n + 1) - A057428 n

end

end A197716.P6611616760596060988

namespace A197716

/-- `A197322(n+1)-A057428(n)` -/
def P6611616760596060988.Spec : Prop :=
  ∀ n, P6611616760596060988.a n = A197716 (n + 1)

end A197716

/-! ## A197716.P799232643722950959

`A197322(n+1)+A001221(A062383(n))`
-/

namespace A197716.P799232643722950959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197322 (n + 1) + A001221 (A062383 n).toNat

end

end A197716.P799232643722950959

namespace A197716

/-- `A197322(n+1)+A001221(A062383(n))` -/
def P799232643722950959.Spec : Prop :=
  ∀ n, P799232643722950959.a n = A197716 (n + 1)

end A197716

/-!
# A197717: a(n) = ceiling((3n+1/n)^n).

The programs for A197717, the canonical program `A197717.P8374186698126553831` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197717 has offset 1).

The definition of A197717 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((3*(n+1)+1/(n+1))^(n+1))` (program `A197717.P8374186698126553831`, by `A197717.P8374186698126553831.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197717.P8374186698126553831

`ceil((3*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197717

/-- `ceil((3*(n+1)+1/(n+1))^(n+1))` -/
def P8374186698126553831.Spec : Prop :=
  ∀ n, P8374186698126553831.a n = A197717 (n + 1)

theorem P8374186698126553831.correct : P8374186698126553831.Spec := by
  intro n
  simp only [A197717, Nat.add_sub_cancel]

end A197717

/-! ## A197717.P6560913469210395552

`A197323(n+1)+A057427(n)`
-/

namespace A197717.P6560913469210395552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197323 (n + 1) + A057427 n

end

end A197717.P6560913469210395552

namespace A197717

/-- `A197323(n+1)+A057427(n)` -/
def P6560913469210395552.Spec : Prop :=
  ∀ n, P6560913469210395552.a n = A197717 (n + 1)

end A197717

/-! ## A197717.P12829137335252847675

`A197323(n+1)+A178334(n)`
-/

namespace A197717.P12829137335252847675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197323 (n + 1) + A178334 n

end

end A197717.P12829137335252847675

namespace A197717

/-- `A197323(n+1)+A178334(n)` -/
def P12829137335252847675.Spec : Prop :=
  ∀ n, P12829137335252847675.a n = A197717 (n + 1)

end A197717

/-! ## A197717.P6521029269949599500

`A197323(n+1)-A057428(n)`
-/

namespace A197717.P6521029269949599500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197323 (n + 1) - A057428 n

end

end A197717.P6521029269949599500

namespace A197717

/-- `A197323(n+1)-A057428(n)` -/
def P6521029269949599500.Spec : Prop :=
  ∀ n, P6521029269949599500.a n = A197717 (n + 1)

end A197717

/-! ## A197717.P11463532059218900895

`A197323(n+1)+char[A206561(n+1)]`
-/

namespace A197717.P11463532059218900895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206561 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197323 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197717.P11463532059218900895

namespace A197717

/-- `A197323(n+1)+char[A206561(n+1)]` -/
def P11463532059218900895.Spec : Prop :=
  ∀ n, P11463532059218900895.a n = A197717 (n + 1)

end A197717

/-!
# A197718: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,4,2,0,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A197718, there is no canonical definition to state claims against.
-/

/-! ## A197718.P6725009016912832610

`A015910(A060150(n))+1+n`
-/

namespace A197718.P6725009016912832610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (A060150 n).toNat + 1 + (n : ℤ)

end

end A197718.P6725009016912832610

/-!
# A197720: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,3,1,1,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A197720, there is no canonical definition to state claims against.
-/

/-! ## A197720.P10290934765962848039

`A284488(A050351(n)*A059268(n))`
-/

namespace A197720.P10290934765962848039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284488 (A050351 n * A059268 n).toNat

end

end A197720.P10290934765962848039

/-!
# A197722: Smallest number k such that k^2 begins with n^3.

The programs for A197722, there is no canonical definition to state claims against.
-/

/-! ## A197722.P1725985187897152754

`sqrt(A018796((n+1)^3))`
-/

namespace A197722.P1725985187897152754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A018796 ((n + 1) ^ 3) : ℝ)

end

end A197722.P1725985187897152754

/-! ## A197722.P11054985097020211548

`root(A018796((n+1)*(n+1)²), 2)`
-/

namespace A197722.P11054985097020211548
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018796 ((n + 1) * (n + 1) ^ 2) : ℝ) ^ (1 / (2 : ℝ))

end

end A197722.P11054985097020211548

/-! ## A197722.P3950921278553439499

`A018796(∑[3*(n²+n)+1])^(1/2)`
-/

namespace A197722.P3950921278553439499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n ^ 2 + n) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018796 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A197722.P3950921278553439499

/-! ## A197722.P3049999570142501419

`floor(root(A018796((n+1)^3), A178815(n+1)))`
-/

namespace A197722.P3049999570142501419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018796 ((n + 1) ^ 3) : ℝ) ^ (1 / (A178815 (n + 1) : ℝ))⌋

end

end A197722.P3049999570142501419

/-! ## A197722.P12711702116758104130

`A018851(Δ[∑[n]²])`
-/

namespace A197722.P12711702116758104130
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A197722.P12711702116758104130

/-!
# A197726: Decimal expansion of Pi/(1 + Pi).

The programs for A197726, there is no canonical definition to state claims against.
-/

/-! ## A197726.P8500723445801128635

`9-A201774(n)`
-/

namespace A197726.P8500723445801128635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A201774 n

end

end A197726.P8500723445801128635

/-!
# A197741: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,1,2,2,1,2,0 for x=0,1,2,3,4,5,6.

The programs for A197741, there is no canonical definition to state claims against.
-/

/-! ## A197741.P6076419441399469789

`A350415(n+2)+A253555(A350415(n+2))`
-/

namespace A197741.P6076419441399469789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350415 (n + 2) + A253555 (A350415 (n + 2)).toNat

end

end A197741.P6076419441399469789

/-!
# A197742: Number of n X n X n 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,3,1,0,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A197742, there is no canonical definition to state claims against.
-/

/-! ## A197742.P1212022702556078528

`A100463(A359400(n)+A161393(n+1))`
-/

namespace A197742.P1212022702556078528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100463 (A359400 n + A161393 (n + 1)).toNat

end

end A197742.P1212022702556078528

/-!
# A197744: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,3,0,1,0 for x=0,1,2,3,4.

The programs for A197744, there is no canonical definition to state claims against.
-/

/-! ## A197744.P17123043452486505567

`A197750(∑[4*n]+1)`
-/

namespace A197744.P17123043452486505567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197744.P17123043452486505567

/-! ## A197744.P5202533306353563769

`record[A003982(n)*A197750(n+1)]`
-/

namespace A197744.P5202533306353563769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A197750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197744.P5202533306353563769

/-! ## A197744.P10046843772125497799

`record[gcd(A008482(n), A197750(n+1))]`
-/

namespace A197744.P10046843772125497799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A197750 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197744.P10046843772125497799

/-! ## A197744.P4364607488295514499

`A197750(A001844(n))^A040790(n)`
-/

namespace A197744.P4364607488295514499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197750 (A001844 n).toNat : ℚ) ^ (A040790 n : ℤ)

end

end A197744.P4364607488295514499

/-! ## A197744.P11848763554127127064

`A197750(A001844(n))^A178489(n)`
-/

namespace A197744.P11848763554127127064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197750 (A001844 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A197744.P11848763554127127064

/-!
# A197745: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,1,0 for x=0,1,2,3,4.

The programs for A197745, there is no canonical definition to state claims against.
-/

/-! ## A197745.P6288907429700335907

`A197750(∑[n+2]+4)`
-/

namespace A197745.P6288907429700335907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197745.P6288907429700335907

/-! ## A197745.P17067757127808922391

`A197750(A167499(n)+n)+char[19]`
-/

namespace A197745.P17067757127808922391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197745.P17067757127808922391

/-! ## A197745.P6092544251238155618

`gcd(A000038(n), A197750(A167614(n+1)))`
-/

namespace A197745.P6092544251238155618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A197750 (A167614 (n + 1)).toNat)

end

end A197745.P6092544251238155618

/-! ## A197745.P2278919719744993287

`lcm(A033999(n), A197750(A167614(n+1)))`
-/

namespace A197745.P2278919719744993287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A197750 (A167614 (n + 1)).toNat)

end

end A197745.P2278919719744993287

/-! ## A197745.P6548933580757224248

`or(A000038(n), A197750(A167499(n)+n))`
-/

namespace A197745.P6548933580757224248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A197750 (A167499 n + (n : ℤ)).toNat)

end

end A197745.P6548933580757224248

/-!
# A197746: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,1,0 for x=0,1,2,3,4.

The programs for A197746, there is no canonical definition to state claims against.
-/

/-! ## A197746.P1104948623276094855

`A197750(A141214(n)+7)`
-/

namespace A197746.P1104948623276094855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (A141214 n + 7).toNat

end

end A197746.P1104948623276094855

/-! ## A197746.P149027215017498921

`A197750(A052905(n)+9)`
-/

namespace A197746.P149027215017498921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (A052905 n + 9).toNat

end

end A197746.P149027215017498921

/-! ## A197746.P1889965152734377348

`A197750(A055999(n)+10)`
-/

namespace A197746.P1889965152734377348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (A055999 n + 10).toNat

end

end A197746.P1889965152734377348

/-! ## A197746.P18284653227138047392

`A197750(A167614(n+2)+1)`
-/

namespace A197746.P18284653227138047392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (A167614 (n + 2) + 1).toNat

end

end A197746.P18284653227138047392

/-! ## A197746.P3947515033693442300

`A197750(A112355(n+1)+4)`
-/

namespace A197746.P3947515033693442300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (A112355 (n + 1) + 4).toNat

end

end A197746.P3947515033693442300

/-!
# A197747: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,1,0 for x=0,1,2,3,4.

The programs for A197747, there is no canonical definition to state claims against.
-/

/-! ## A197747.P15895167935508050089

`A197750(A167499(n+3))`
-/

namespace A197747.P15895167935508050089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (A167499 (n + 3)).toNat

end

end A197747.P15895167935508050089

/-! ## A197747.P11977959005889951517

`A197750(A056000(n)+15)`
-/

namespace A197747.P11977959005889951517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (A056000 n + 15).toNat

end

end A197747.P11977959005889951517

/-! ## A197747.P7690253179292195237

`A197750(eq[6, A131818(n+1)])`
-/

namespace A197747.P7690253179292195237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197747.P7690253179292195237

/-! ## A197747.P9173109511285010235

`A197750(Δ[A264443(n)])`
-/

namespace A197747.P9173109511285010235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (f1 (n + 1) - f1 n).toNat

end

end A197747.P9173109511285010235

/-! ## A197747.P11682802793672691209

`A197750(A374005(n+1))`
-/

namespace A197747.P11682802793672691209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (A374005 (n + 1)).toNat

end

end A197747.P11682802793672691209

/-!
# A197748: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,1,0 for x=0,1,2,3,4.

The programs for A197748, there is no canonical definition to state claims against.
-/

/-! ## A197748.P4225261593013084089

`A197750(A166136(n+4))`
-/

namespace A197748.P4225261593013084089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (A166136 (n + 4)).toNat

end

end A197748.P4225261593013084089

/-! ## A197748.P15302251916511426542

`A197750(A000217(n+5)+6)`
-/

namespace A197748.P15302251916511426542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (A000217 (n + 5) + 6).toNat

end

end A197748.P15302251916511426542

/-! ## A197748.P15313698396839680987

`A197750(eq[7, A131818(n+1)])`
-/

namespace A197748.P15313698396839680987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197748.P15313698396839680987

/-! ## A197748.P13485498262514696010

`A197750(A374007(n+1))`
-/

namespace A197748.P13485498262514696010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (A374007 (n + 1)).toNat

end

end A197748.P13485498262514696010

/-! ## A197748.P15799239320528552228

`A197750(A052905(n+3))`
-/

namespace A197748.P15799239320528552228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (A052905 (n + 3)).toNat

end

end A197748.P15799239320528552228

/-!
# A197749: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,3,0,1,0 for x=0,1,2,3,4.

The programs for A197749, there is no canonical definition to state claims against.
-/

/-! ## A197749.P16802416656606301121

`A197750(A000217(n+6)+7)`
-/

namespace A197749.P16802416656606301121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (A000217 (n + 6) + 7).toNat

end

end A197749.P16802416656606301121

/-! ## A197749.P5228166217169446914

`A197750(eq[8, A131818(n+1)])`
-/

namespace A197749.P5228166217169446914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197749.P5228166217169446914

/-! ## A197749.P7113416515505022924

`A197750(A374008(n+1))`
-/

namespace A197749.P7113416515505022924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (A374008 (n + 1)).toNat

end

end A197749.P7113416515505022924

/-! ## A197749.P14030131195825935173

`A197750(A055999(n+4))`
-/

namespace A197749.P14030131195825935173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (A055999 (n + 4)).toNat

end

end A197749.P14030131195825935173

/-! ## A197749.P2739287563994162390

`A197750(eq[4, A219347(n)])`
-/

namespace A197749.P2739287563994162390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197749.P2739287563994162390

/-!
# A197750: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,3,0,1,0 for x=0,1,2,3,4.

The programs for A197750, there is no canonical definition to state claims against.
-/

/-! ## A197750.P2742161701329275911

`A198013(n+1)+A178105(A198013(n+1))`
-/

namespace A197750.P2742161701329275911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198013 (n + 1) + A178105 (A198013 (n + 1)).toNat

end

end A197750.P2742161701329275911

/-! ## A197750.P950510829212375906

`A197896(n+1)+A236109(A197235(n+1))²`
-/

namespace A197750.P950510829212375906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (n + 1) + A236109 (A197235 (n + 1)).toNat ^ 2

end

end A197750.P950510829212375906

/-! ## A197750.P11055087694811905055

`A197896(n+1)+A236109(A198155(n+1))²`
-/

namespace A197750.P11055087694811905055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197896 (n + 1) + A236109 (A198155 (n + 1)).toNat ^ 2

end

end A197750.P11055087694811905055

/-! ## A197750.P10975468888257310667

`A363287(A198155(n+1))`
-/

namespace A197750.P10975468888257310667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363287 (A198155 (n + 1)).toNat

end

end A197750.P10975468888257310667

/-! ## A197750.P13818574290642136383

`A236674(A198155(n+1)+1)`
-/

namespace A197750.P13818574290642136383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236674 (A198155 (n + 1) + 1).toNat

end

end A197750.P13818574290642136383

/-!
# A197751: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,4,1,0,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A197751, there is no canonical definition to state claims against.
-/

/-! ## A197751.P5210964585070398377

`A301332(A109592(n+2))`
-/

namespace A197751.P5210964585070398377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301332 (A109592 (n + 2)).toNat

end

end A197751.P5210964585070398377

/-!
# A197752: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,0,1,1,0,1,0 for x=0,1,2,3,4,5,6.

The programs for A197752, there is no canonical definition to state claims against.
-/

/-! ## A197752.P859459365903592902

`A028242(∏[∏[n-a(n-1)]])` with `a(0)=3, a(1)=1`
-/

namespace A197752.P859459365903592902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A197752.P859459365903592902

/-!
# A197753: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,4,0,0,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A197753, there is no canonical definition to state claims against.
-/

/-! ## A197753.P15186793221693823274

`A295298(A014682(n)+A006040(n))`
-/

namespace A197753.P15186793221693823274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295298 (A014682 n + A006040 n).toNat

end

end A197753.P15186793221693823274

/-!
# A197754: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,4,3,0,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A197754, there is no canonical definition to state claims against.
-/

/-! ## A197754.P4616096015906783445

`A011371(A005563(n!))`
-/

namespace A197754.P4616096015906783445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A005563 (Nat.factorial n)).toNat

end

end A197754.P4616096015906783445

/-!
# A197756: The Yellow Comma sequence.

The programs for A197756, there is no canonical definition to state claims against.
-/

/-! ## A197756.P4873790333805811323

`gcd(A028900(A230764(n+1)), A036493(n+11))`
-/

namespace A197756.P4873790333805811323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028900 (A230764 (n + 1)).toNat) (A036493 (n + 11))

end

end A197756.P4873790333805811323

/-! ## A197756.P18249751553535621864

`A028900(A230764(n+1))%A141077(Δ[n²])`
-/

namespace A197756.P18249751553535621864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028900 (A230764 (n + 1)).toNat) (A141077 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A197756.P18249751553535621864

/-! ## A197756.P12810320996510048339

`A028900(A230764(n+1)^A062513(3*n+1))`
-/

namespace A197756.P12810320996510048339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (SequenceMachineLib.roundAway ((A230764 (n + 1) : ℚ) ^ (A062513 (3 * n + 1) : ℤ))).toNat

end

end A197756.P12810320996510048339

/-! ## A197756.P10813222796296820125

`A028900(A230764(n+1)%A113404(3*n+4))`
-/

namespace A197756.P10813222796296820125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (Int.tmod (A230764 (n + 1)) (A113404 (3 * n + 4))).toNat

end

end A197756.P10813222796296820125

/-! ## A197756.P7602882661901406455

`A008683(A037074(n+1))*A028900(A230764(n+1))`
-/

namespace A197756.P7602882661901406455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A037074 (n + 1)).toNat * A028900 (A230764 (n + 1)).toNat

end

end A197756.P7602882661901406455

/-!
# A197763: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,5,1,0,0,1,0 for x=0,1,2,3,4,5,6.

The programs for A197763, there is no canonical definition to state claims against.
-/

/-! ## A197763.P9222732136622506973

`∑[A161655(10*a(n-1)+5)]` with `a(0)=1, a(1)=0`
-/

namespace A197763.P9222732136622506973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A161655 (10 * f1 (n - 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197763.P9222732136622506973

/-!
# A197764: Ceiling((4n+1/n)^n).

The programs for A197764, the canonical program `A197764.P11318797552796641889` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197764 has offset 1).

The definition of A197764 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((4*(n+1)+1/(n+1))^(n+1))` (program `A197764.P11318797552796641889`, by `A197764.P11318797552796641889.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197764.P11318797552796641889

`ceil((4*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197764

/-- `ceil((4*(n+1)+1/(n+1))^(n+1))` -/
def P11318797552796641889.Spec : Prop :=
  ∀ n, P11318797552796641889.a n = A197764 (n + 1)

theorem P11318797552796641889.correct : P11318797552796641889.Spec := by
  intro n
  simp only [A197764, Nat.add_sub_cancel]

end A197764

/-! ## A197764.P8759672359931667054

`A197324(n+1)+A057427(n)`
-/

namespace A197764.P8759672359931667054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197324 (n + 1) + A057427 n

end

end A197764.P8759672359931667054

namespace A197764

/-- `A197324(n+1)+A057427(n)` -/
def P8759672359931667054.Spec : Prop :=
  ∀ n, P8759672359931667054.a n = A197764 (n + 1)

end A197764

/-! ## A197764.P816156055808416791

`A197324(n+1)+A178334(n)`
-/

namespace A197764.P816156055808416791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197324 (n + 1) + A178334 n

end

end A197764.P816156055808416791

namespace A197764

/-- `A197324(n+1)+A178334(n)` -/
def P816156055808416791.Spec : Prop :=
  ∀ n, P816156055808416791.a n = A197764 (n + 1)

end A197764

/-! ## A197764.P1010698967304762655

`A197324(n+1)-A057428(n)`
-/

namespace A197764.P1010698967304762655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197324 (n + 1) - A057428 n

end

end A197764.P1010698967304762655

namespace A197764

/-- `A197324(n+1)-A057428(n)` -/
def P1010698967304762655.Spec : Prop :=
  ∀ n, P1010698967304762655.a n = A197764 (n + 1)

end A197764

/-! ## A197764.P10321312698776890035

`A197324(n+1)+char[A078840(n)]`
-/

namespace A197764.P10321312698776890035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078840 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197324 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197764.P10321312698776890035

namespace A197764

/-- `A197324(n+1)+char[A078840(n)]` -/
def P10321312698776890035.Spec : Prop :=
  ∀ n, P10321312698776890035.a n = A197764 (n + 1)

end A197764

/-!
# A197765: a(n) = ceiling((5n+1/n)^n).

The programs for A197765, the canonical program `A197765.P13581921998418110700` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197765 has offset 1).

The definition of A197765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((5*(n+1)+1/(n+1))^(n+1))` (program `A197765.P13581921998418110700`, by `A197765.P13581921998418110700.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197765.P13581921998418110700

`ceil((5*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197765

/-- `ceil((5*(n+1)+1/(n+1))^(n+1))` -/
def P13581921998418110700.Spec : Prop :=
  ∀ n, P13581921998418110700.a n = A197765 (n + 1)

theorem P13581921998418110700.correct : P13581921998418110700.Spec := by
  intro n
  simp only [A197765, Nat.add_sub_cancel]

end A197765

/-! ## A197765.P6728771627595311497

`A197325(n+1)+A057427(n)`
-/

namespace A197765.P6728771627595311497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197325 (n + 1) + A057427 n

end

end A197765.P6728771627595311497

namespace A197765

/-- `A197325(n+1)+A057427(n)` -/
def P6728771627595311497.Spec : Prop :=
  ∀ n, P6728771627595311497.a n = A197765 (n + 1)

end A197765

/-! ## A197765.P5718766237492126159

`A197325(n+1)+A178334(n)`
-/

namespace A197765.P5718766237492126159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197325 (n + 1) + A178334 n

end

end A197765.P5718766237492126159

namespace A197765

/-- `A197325(n+1)+A178334(n)` -/
def P5718766237492126159.Spec : Prop :=
  ∀ n, P5718766237492126159.a n = A197765 (n + 1)

end A197765

/-! ## A197765.P13292227121264386706

`A197325(n+1)-A057428(n)`
-/

namespace A197765.P13292227121264386706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197325 (n + 1) - A057428 n

end

end A197765.P13292227121264386706

namespace A197765

/-- `A197325(n+1)-A057428(n)` -/
def P13292227121264386706.Spec : Prop :=
  ∀ n, P13292227121264386706.a n = A197765 (n + 1)

end A197765

/-! ## A197765.P10883699177979505723

`A197325(n+1)+char[A029635(n)]`
-/

namespace A197765.P10883699177979505723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197325 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197765.P10883699177979505723

namespace A197765

/-- `A197325(n+1)+char[A029635(n)]` -/
def P10883699177979505723.Spec : Prop :=
  ∀ n, P10883699177979505723.a n = A197765 (n + 1)

end A197765

/-!
# A197766: Ceiling((6n+1/n)^n).

The programs for A197766, there is no canonical definition to state claims against.
-/

/-! ## A197766.P6638176499564669648

`ceil(A197595(n+1)+abs(sin(n)))`
-/

namespace A197766.P6638176499564669648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A197595 (n + 1) : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A197766.P6638176499564669648

/-! ## A197766.P4785426880427742081

`A197595(n+1)+A057427(n)`
-/

namespace A197766.P4785426880427742081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197595 (n + 1) + A057427 n

end

end A197766.P4785426880427742081

/-! ## A197766.P18214181422837778793

`A197595(n+1)+A178334(n)`
-/

namespace A197766.P18214181422837778793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197595 (n + 1) + A178334 n

end

end A197766.P18214181422837778793

/-! ## A197766.P10866076183885530055

`A197595(n+1)-A057428(n)`
-/

namespace A197766.P10866076183885530055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197595 (n + 1) - A057428 n

end

end A197766.P10866076183885530055

/-! ## A197766.P3019292209517434985

`A197595(n+1)+abs(A011590(n))`
-/

namespace A197766.P3019292209517434985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197595 (n + 1) + |A011590 n|

end

end A197766.P3019292209517434985

/-!
# A197767: Ceiling((7*n+1/n)^n).

The programs for A197767, the canonical program `A197767.P1101522520051142395` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197767 has offset 1).

The definition of A197767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((7*(n+1)+1/(n+1))^(n+1))` (program `A197767.P1101522520051142395`, by `A197767.P1101522520051142395.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197767.P1101522520051142395

`ceil((7*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197767

/-- `ceil((7*(n+1)+1/(n+1))^(n+1))` -/
def P1101522520051142395.Spec : Prop :=
  ∀ n, P1101522520051142395.a n = A197767 (n + 1)

theorem P1101522520051142395.correct : P1101522520051142395.Spec := by
  intro n
  simp only [A197767, Nat.add_sub_cancel]

end A197767

/-! ## A197767.P10763963345383351394

`A197596(n+1)+A057427(n)`
-/

namespace A197767.P10763963345383351394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197596 (n + 1) + A057427 n

end

end A197767.P10763963345383351394

namespace A197767

/-- `A197596(n+1)+A057427(n)` -/
def P10763963345383351394.Spec : Prop :=
  ∀ n, P10763963345383351394.a n = A197767 (n + 1)

end A197767

/-! ## A197767.P13576018374560952286

`A197596(n+1)+A178334(n)`
-/

namespace A197767.P13576018374560952286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197596 (n + 1) + A178334 n

end

end A197767.P13576018374560952286

namespace A197767

/-- `A197596(n+1)+A178334(n)` -/
def P13576018374560952286.Spec : Prop :=
  ∀ n, P13576018374560952286.a n = A197767 (n + 1)

end A197767

/-! ## A197767.P420681218219967073

`A197596(n+1)-A057428(n)`
-/

namespace A197767.P420681218219967073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197596 (n + 1) - A057428 n

end

end A197767.P420681218219967073

namespace A197767

/-- `A197596(n+1)-A057428(n)` -/
def P420681218219967073.Spec : Prop :=
  ∀ n, P420681218219967073.a n = A197767 (n + 1)

end A197767

/-! ## A197767.P17314852473142451443

`A197596(n+1)+abs(A011590(n))`
-/

namespace A197767.P17314852473142451443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197596 (n + 1) + |A011590 n|

end

end A197767.P17314852473142451443

namespace A197767

/-- `A197596(n+1)+abs(A011590(n))` -/
def P17314852473142451443.Spec : Prop :=
  ∀ n, P17314852473142451443.a n = A197767 (n + 1)

end A197767

/-!
# A197768: Ceiling((8*n+1/n)^n).

The programs for A197768, the canonical program `A197768.P7071290153912908231` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197768 has offset 1).

The definition of A197768 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((8*(n+1)+1/(n+1))^(n+1))` (program `A197768.P7071290153912908231`, by `A197768.P7071290153912908231.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197768.P7071290153912908231

`ceil((8*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197768

/-- `ceil((8*(n+1)+1/(n+1))^(n+1))` -/
def P7071290153912908231.Spec : Prop :=
  ∀ n, P7071290153912908231.a n = A197768 (n + 1)

theorem P7071290153912908231.correct : P7071290153912908231.Spec := by
  intro n
  simp only [A197768, Nat.add_sub_cancel]

end A197768

/-! ## A197768.P11983814446873227372

`A197597(n+1)+A057427(n)`
-/

namespace A197768.P11983814446873227372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197597 (n + 1) + A057427 n

end

end A197768.P11983814446873227372

namespace A197768

/-- `A197597(n+1)+A057427(n)` -/
def P11983814446873227372.Spec : Prop :=
  ∀ n, P11983814446873227372.a n = A197768 (n + 1)

end A197768

/-! ## A197768.P3007211571587085734

`A211666(n+1)+A197597(n+1)`
-/

namespace A197768.P3007211571587085734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 1) + A197597 (n + 1)

end

end A197768.P3007211571587085734

namespace A197768

/-- `A211666(n+1)+A197597(n+1)` -/
def P3007211571587085734.Spec : Prop :=
  ∀ n, P3007211571587085734.a n = A197768 (n + 1)

end A197768

/-! ## A197768.P6744065953721498315

`A197597(n+1)+A040000(n)-1`
-/

namespace A197768.P6744065953721498315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197597 (n + 1) + (A040000 n - 1)

end

end A197768.P6744065953721498315

namespace A197768

/-- `A197597(n+1)+A040000(n)-1` -/
def P6744065953721498315.Spec : Prop :=
  ∀ n, P6744065953721498315.a n = A197768 (n + 1)

end A197768

/-! ## A197768.P11002226540271497821

`A197597(n+1)+A061395(A034444(n+1))`
-/

namespace A197768.P11002226540271497821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197597 (n + 1) + A061395 (A034444 (n + 1)).toNat

end

end A197768.P11002226540271497821

namespace A197768

/-- `A197597(n+1)+A061395(A034444(n+1))` -/
def P11002226540271497821.Spec : Prop :=
  ∀ n, P11002226540271497821.a n = A197768 (n + 1)

end A197768

/-!
# A197769: a(n) = ceiling((9*n+1/n)^n).

The programs for A197769, the canonical program `A197769.P1018498898094492760` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197769 has offset 1).

The definition of A197769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((9*(n+1)+1/(n+1))^(n+1))` (program `A197769.P1018498898094492760`, by `A197769.P1018498898094492760.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197769.P1018498898094492760

`ceil((9*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197769

/-- `ceil((9*(n+1)+1/(n+1))^(n+1))` -/
def P1018498898094492760.Spec : Prop :=
  ∀ n, P1018498898094492760.a n = A197769 (n + 1)

theorem P1018498898094492760.correct : P1018498898094492760.Spec := by
  intro n
  simp only [A197769, Nat.add_sub_cancel]

end A197769

/-! ## A197769.P1157207667714709628

`A197598(n+1)+char[col(n)+1]`
-/

namespace A197769.P1157207667714709628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197598 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197769.P1157207667714709628

namespace A197769

/-- `A197598(n+1)+char[col(n)+1]` -/
def P1157207667714709628.Spec : Prop :=
  ∀ n, P1157207667714709628.a n = A197769 (n + 1)

end A197769

/-! ## A197769.P11834594472448642186

`A197598(n+1)+char[A007306(n)]`
-/

namespace A197769.P11834594472448642186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197598 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197769.P11834594472448642186

namespace A197769

/-- `A197598(n+1)+char[A007306(n)]` -/
def P11834594472448642186.Spec : Prop :=
  ∀ n, P11834594472448642186.a n = A197769 (n + 1)

end A197769

/-! ## A197769.P4084798109628725553

`A197598(n+1)+char[A029579(n)]`
-/

namespace A197769.P4084798109628725553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197598 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197769.P4084798109628725553

namespace A197769

/-- `A197598(n+1)+char[A029579(n)]` -/
def P4084798109628725553.Spec : Prop :=
  ∀ n, P4084798109628725553.a n = A197769 (n + 1)

end A197769

/-! ## A197769.P7754368721683418458

`A197598(n+1)+char[A029635(n)]`
-/

namespace A197769.P7754368721683418458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197598 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197769.P7754368721683418458

namespace A197769

/-- `A197598(n+1)+char[A029635(n)]` -/
def P7754368721683418458.Spec : Prop :=
  ∀ n, P7754368721683418458.a n = A197769 (n + 1)

end A197769

/-!
# A197770: Ceiling((10*n+1/n)^n).

The programs for A197770, the canonical program `A197770.P4990806199023962490` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197770 has offset 1).

The definition of A197770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((10*(n+1)+1/(n+1))^(n+1))` (program `A197770.P4990806199023962490`, by `A197770.P4990806199023962490.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197770.P4990806199023962490

`ceil((10*(n+1)+1/(n+1))^(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197770

/-- `ceil((10*(n+1)+1/(n+1))^(n+1))` -/
def P4990806199023962490.Spec : Prop :=
  ∀ n, P4990806199023962490.a n = A197770 (n + 1)

theorem P4990806199023962490.correct : P4990806199023962490.Spec := by
  intro n
  simp only [A197770, Nat.add_sub_cancel]

end A197770

/-! ## A197770.P5989468342366849360

`A197599(n+1)+n²%(n+1)`
-/

namespace A197770.P5989468342366849360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197599 (n + 1) + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A197770.P5989468342366849360

namespace A197770

/-- `A197599(n+1)+n²%(n+1)` -/
def P5989468342366849360.Spec : Prop :=
  ∀ n, P5989468342366849360.a n = A197770 (n + 1)

end A197770

/-! ## A197770.P17419638409732917404

`A197599(n+1)+A057427(n)`
-/

namespace A197770.P17419638409732917404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197599 (n + 1) + A057427 n

end

end A197770.P17419638409732917404

namespace A197770

/-- `A197599(n+1)+A057427(n)` -/
def P17419638409732917404.Spec : Prop :=
  ∀ n, P17419638409732917404.a n = A197770 (n + 1)

end A197770

/-! ## A197770.P8395046770302383955

`A197599(n+1)+col(A040000(n))`
-/

namespace A197770.P8395046770302383955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197599 (n + 1) + (SequenceMachineLib.triCol (A040000 n).toNat : ℤ)

end

end A197770.P8395046770302383955

namespace A197770

/-- `A197599(n+1)+col(A040000(n))` -/
def P8395046770302383955.Spec : Prop :=
  ∀ n, P8395046770302383955.a n = A197770 (n + 1)

end A197770

/-! ## A197770.P8794223956080535201

`A197599(n+1)+char[A227631(n+1)]`
-/

namespace A197770.P8794223956080535201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227631 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197599 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197770.P8794223956080535201

namespace A197770

/-- `A197599(n+1)+char[A227631(n+1)]` -/
def P8794223956080535201.Spec : Prop :=
  ∀ n, P8794223956080535201.a n = A197770 (n + 1)

end A197770

/-!
# A197771: Ceiling((11*n+1/n)^n).

The programs for A197771, there is no canonical definition to state claims against.
-/

/-! ## A197771.P6149412490847125598

`A197600(n+1)+n²%(n+1)`
-/

namespace A197771.P6149412490847125598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197600 (n + 1) + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A197771.P6149412490847125598

/-! ## A197771.P14738987136131133714

`A197600(n+1)+A057427(n)`
-/

namespace A197771.P14738987136131133714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197600 (n + 1) + A057427 n

end

end A197771.P14738987136131133714

/-! ## A197771.P8782077614337238132

`A197600(n+1)+A178334(n)`
-/

namespace A197771.P8782077614337238132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197600 (n + 1) + A178334 n

end

end A197771.P8782077614337238132

/-! ## A197771.P5016458184547504381

`A197600(n+1)-A057428(n)`
-/

namespace A197771.P5016458184547504381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197600 (n + 1) - A057428 n

end

end A197771.P5016458184547504381

/-! ## A197771.P12188106669820340908

`A197600(n+1)+char[A133310(n)]`
-/

namespace A197771.P12188106669820340908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197600 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197771.P12188106669820340908

/-!
# A197772: G.f.: A(x) = 1/(1 - x*B(x)), where B(x) = 1/(1 - x*C(x)^2); C(x) = 1/(1 - x*D(x)^3); D(x) = 1/(1 - x*E(x)^4); ...

The programs for A197772, there is no canonical definition to state claims against.
-/

/-! ## A197772.P9250144384374796656

`A084557(A331615(n))`
-/

namespace A197772.P9250144384374796656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084557 (A331615 n).toNat

end

end A197772.P9250144384374796656

/-! ## A197772.P18250816628675970266

`A178798(A000225(n))+A135881(n)`
-/

namespace A197772.P18250816628675970266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A000225 n).toNat + A135881 n

end

end A197772.P18250816628675970266

/-! ## A197772.P15518713021337368311

`A008620(A246689(n)+A113774(n))`
-/

namespace A197772.P15518713021337368311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A246689 n + A113774 n).toNat

end

end A197772.P15518713021337368311

/-!
# A197773: Ceiling((n+1/n)^3).

The programs for A197773, the canonical program `A197773.P10470171771366866628` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197773 has offset 1).

The definition of A197773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1+1/(n+1))^3)` (program `A197773.P10470171771366866628`, by `A197773.P10470171771366866628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197773.P10470171771366866628

`ceil((n+1+1/(n+1))^3)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A197773

/-- `ceil((n+1+1/(n+1))^3)` -/
def P10470171771366866628.Spec : Prop :=
  ∀ n, P10470171771366866628.a n = A197773 (n + 1)

theorem P10470171771366866628.correct : P10470171771366866628.Spec := by
  intro n
  simp only [A197773, Nat.add_sub_cancel]

end A197773

/-! ## A197773.P8131421518941100218

`A197602(n+1)+ceil(tanh(sqrt(n)))`
-/

namespace A197773.P8131421518941100218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197602 (n + 1) + ⌈Real.tanh (Real.sqrt (n : ℝ))⌉

end

end A197773.P8131421518941100218

namespace A197773

/-- `A197602(n+1)+ceil(tanh(sqrt(n)))` -/
def P8131421518941100218.Spec : Prop :=
  ∀ n, P8131421518941100218.a n = A197773 (n + 1)

end A197773

/-! ## A197773.P7214070378068089532

`A197602(n+1)+A057427(n)`
-/

namespace A197773.P7214070378068089532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197602 (n + 1) + A057427 n

end

end A197773.P7214070378068089532

namespace A197773

/-- `A197602(n+1)+A057427(n)` -/
def P7214070378068089532.Spec : Prop :=
  ∀ n, P7214070378068089532.a n = A197773 (n + 1)

end A197773

/-! ## A197773.P11140962447100439354

`A197602(n+1)-A057428(n)`
-/

namespace A197773.P11140962447100439354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197602 (n + 1) - A057428 n

end

end A197773.P11140962447100439354

namespace A197773

/-- `A197602(n+1)-A057428(n)` -/
def P11140962447100439354.Spec : Prop :=
  ∀ n, P11140962447100439354.a n = A197773 (n + 1)

end A197773

/-! ## A197773.P821466362370911653

`A197602(n+1)+1-A000007(n)`
-/

namespace A197773.P821466362370911653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197602 (n + 1) + (1 - A000007 n)

end

end A197773.P821466362370911653

namespace A197773

/-- `A197602(n+1)+1-A000007(n)` -/
def P821466362370911653.Spec : Prop :=
  ∀ n, P821466362370911653.a n = A197773 (n + 1)

end A197773

/-! ## A197773.P5764079526753554951

`A197602(n+1)+A001222(A027746(n+1))`
-/

namespace A197773.P5764079526753554951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197602 (n + 1) + A001222 (A027746 (n + 1)).toNat

end

end A197773.P5764079526753554951

namespace A197773

/-- `A197602(n+1)+A001222(A027746(n+1))` -/
def P5764079526753554951.Spec : Prop :=
  ∀ n, P5764079526753554951.a n = A197773 (n + 1)

end A197773

/-! ## A197773.P3406950127011662142

`A197602(n+1)+A197904(n+1)-A197604(n+1)`
-/

namespace A197773.P3406950127011662142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197602 (n + 1) + (A197904 (n + 1) - A197604 (n + 1))

end

end A197773.P3406950127011662142

namespace A197773

/-- `A197602(n+1)+A197904(n+1)-A197604(n+1)` -/
def P3406950127011662142.Spec : Prop :=
  ∀ n, P3406950127011662142.a n = A197773 (n + 1)

end A197773

/-! ## A197773.P626373797666612554

`A197602(n+1)+char[A085229(n+1)]`
-/

namespace A197773.P626373797666612554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085229 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197602 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A197773.P626373797666612554

namespace A197773

/-- `A197602(n+1)+char[A085229(n+1)]` -/
def P626373797666612554.Spec : Prop :=
  ∀ n, P626373797666612554.a n = A197773 (n + 1)

end A197773

/-! ## A197773.P11172738272846202016

`A197602(n+1)+A073424(A000217(n))`
-/

namespace A197773.P11172738272846202016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197602 (n + 1) + A073424 (A000217 n).toNat

end

end A197773.P11172738272846202016

namespace A197773

/-- `A197602(n+1)+A073424(A000217(n))` -/
def P11172738272846202016.Spec : Prop :=
  ∀ n, P11172738272846202016.a n = A197773 (n + 1)

end A197773

/-! ## A197773.P8853175981775177708

`A014058(n+1)+A197602(n+1)-A014052(n+1)`
-/

namespace A197773.P8853175981775177708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014058 (n + 1) + (A197602 (n + 1) - A014052 (n + 1))

end

end A197773.P8853175981775177708

namespace A197773

/-- `A014058(n+1)+A197602(n+1)-A014052(n+1)` -/
def P8853175981775177708.Spec : Prop :=
  ∀ n, P8853175981775177708.a n = A197773 (n + 1)

end A197773

/-!
# A197774: Suppose n has prime factorization n = p1^a1 * p2^a2 * ... * pk^ak. Then a(n) = (-1)^(n1 + n2 + ... + nk) if all the ai are ni^2 and a(n) = 0 otherwise.

The programs for A197774, the canonical program `A197774.P7293058079391513794` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197774 has offset 1).

The definition of A197774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197774.P13686574099452826909

`∏{e}[n+1, A227395(#+2)/2]`
-/

namespace A197774.P13686574099452826909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A227395 (Nat.factorization (f1 n) p + 2) : ℚ) / 2

end

end A197774.P13686574099452826909

namespace A197774

/-- `∏{e}[n+1, A227395(#+2)/2]` -/
def P13686574099452826909.Spec : Prop :=
  ∀ n, P13686574099452826909.a n = (A197774 (n + 1) : ℚ)

end A197774

/-! ## A197774.P7293058079391513794

`∏{e}[n+1, A008683(3*A164455(#+4))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A197774

/-- `∏{e}[n+1, A008683(3*A164455(#+4))]` -/
def P7293058079391513794.Spec : Prop :=
  ∀ n, P7293058079391513794.a n = A197774 (n + 1)

theorem P7293058079391513794.correct : P7293058079391513794.Spec := by
  intro n
  simp only [A197774, Nat.add_sub_cancel]

end A197774

/-! ## A197774.P10262088992794479252

`∏{e}[n+1, (-A127839(A029681(#)+1))^#]`
-/

namespace A197774.P10262088992794479252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-A127839 (A029681 (Nat.factorization (f1 n) p) + 1).toNat) ^ Nat.factorization (f1 n) p

end

end A197774.P10262088992794479252

namespace A197774

/-- `∏{e}[n+1, (-A127839(A029681(#)+1))^#]` -/
def P10262088992794479252.Spec : Prop :=
  ∀ n, P10262088992794479252.a n = A197774 (n + 1)

end A197774

/-! ## A197774.P16652602325842136171

`∏{e}[n+1, A008683(A000203(#)*A110500(#+1))]`
-/

namespace A197774.P16652602325842136171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008683 (A000203 (Nat.factorization (f1 n) p) * A110500 (Nat.factorization (f1 n) p + 1)).toNat

end

end A197774.P16652602325842136171

namespace A197774

/-- `∏{e}[n+1, A008683(A000203(#)*A110500(#+1))]` -/
def P16652602325842136171.Spec : Prop :=
  ∀ n, P16652602325842136171.a n = A197774 (n + 1)

end A197774

/-! ## A197774.P4049497408190201506

`A154271(A000005((n+1)²))`
-/

namespace A197774.P4049497408190201506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (A000005 ((n + 1) ^ 2)).toNat

end

end A197774.P4049497408190201506

namespace A197774

/-- `A154271(A000005((n+1)²))` -/
def P4049497408190201506.Spec : Prop :=
  ∀ n, P4049497408190201506.a n = A197774 (n + 1)

end A197774

/-! ## A197774.P9326116273532861273

`A008683(A006339(A046079(2*(n+1))))`
-/

namespace A197774.P9326116273532861273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006339 (A046079 (2 * (n + 1))).toNat).toNat

end

end A197774.P9326116273532861273

namespace A197774

/-- `A008683(A006339(A046079(2*(n+1))))` -/
def P9326116273532861273.Spec : Prop :=
  ∀ n, P9326116273532861273.a n = A197774 (n + 1)

end A197774

/-! ## A197774.P15403794031461378626

`A219009((n+1)*A252895(A008833(n+1)))`
-/

namespace A197774.P15403794031461378626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219009 ((n + 1 : ℤ) * A252895 (A008833 (n + 1)).toNat).toNat

end

end A197774.P15403794031461378626

namespace A197774

/-- `A219009((n+1)*A252895(A008833(n+1)))` -/
def P15403794031461378626.Spec : Prop :=
  ∀ n, P15403794031461378626.a n = A197774 (n + 1)

end A197774

/-! ## A197774.P2453821859083191257

`A154271(A048691(n+1)²*A048691(n+1))`
-/

namespace A197774.P2453821859083191257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (A048691 (n + 1) ^ 2 * A048691 (n + 1)).toNat

end

end A197774.P2453821859083191257

namespace A197774

/-- `A154271(A048691(n+1)²*A048691(n+1))` -/
def P2453821859083191257.Spec : Prop :=
  ∀ n, P2453821859083191257.a n = A197774 (n + 1)

end A197774

/-! ## A197774.P12689647747416625796

`A110161(A061391(n+1)²)*A110161(A061391(n+1))`
-/

namespace A197774.P12689647747416625796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (A061391 (n + 1) ^ 2).toNat * A110161 (A061391 (n + 1)).toNat

end

end A197774.P12689647747416625796

namespace A197774

/-- `A110161(A061391(n+1)²)*A110161(A061391(n+1))` -/
def P12689647747416625796.Spec : Prop :=
  ∀ n, P12689647747416625796.a n = A197774 (n + 1)

end A197774

/-! ## A197774.P6224149833173638281

`∏{e}[A353397(n+1), A219428(#)]`
-/

namespace A197774.P6224149833173638281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A219428 (Nat.factorization (f1 n).natAbs p)

end

end A197774.P6224149833173638281

namespace A197774

/-- `∏{e}[A353397(n+1), A219428(#)]` -/
def P6224149833173638281.Spec : Prop :=
  ∀ n, P6224149833173638281.a n = A197774 (n + 1)

end A197774

/-!
# A197775: Partial sums of A197774.

The programs for A197775, the canonical program `A197775.P4834245977213038739` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197775 has offset 1).

The definition of A197775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197775.P4834245977213038739

`∑[A197774(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A197775

/-- `∑[A197774(n+1)]` -/
def P4834245977213038739.Spec : Prop :=
  ∀ n, P4834245977213038739.a n = A197775 (n + 1)

theorem P4834245977213038739.correct : P4834245977213038739.Spec := by
  intro n
  simp only [A197775, Nat.add_sub_cancel]

end A197775

/-! ## A197775.P2759020476715247566

`∑[∏{e}[n+1, A227395(#+2)/2]]`
-/

namespace A197775.P2759020476715247566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (A227395 (Nat.factorization (f2 n) p + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197775.P2759020476715247566

namespace A197775

/-- `∑[∏{e}[n+1, A227395(#+2)/2]]` -/
def P2759020476715247566.Spec : Prop :=
  ∀ n, P2759020476715247566.a n = (A197775 (n + 1) : ℚ)

end A197775

/-! ## A197775.P17227553182632956072

`A197774(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A197775.P17227553182632956072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A197774 (n + 1) + a (A023443 n).toNat

end

end A197775.P17227553182632956072

namespace A197775

/-- `A197774(n+1)+a(A023443(n))` -/
def P17227553182632956072.Spec : Prop :=
  ∀ n, P17227553182632956072.a n = A197775 (n + 1)

end A197775

/-! ## A197775.P8032363710536209148

`∑[∏{e}[n+1, (-A127839(A029681(#)+1))^#]]`
-/

namespace A197775.P8032363710536209148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-A127839 (A029681 (Nat.factorization (f2 n) p) + 1).toNat) ^ Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197775.P8032363710536209148

namespace A197775

/-- `∑[∏{e}[n+1, (-A127839(A029681(#)+1))^#]]` -/
def P8032363710536209148.Spec : Prop :=
  ∀ n, P8032363710536209148.a n = A197775 (n + 1)

end A197775

/-! ## A197775.P5186954306574994388

`∑[A154271(A000005((n+1)²))]`
-/

namespace A197775.P5186954306574994388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (A000005 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A197775.P5186954306574994388

namespace A197775

/-- `∑[A154271(A000005((n+1)²))]` -/
def P5186954306574994388.Spec : Prop :=
  ∀ n, P5186954306574994388.a n = A197775 (n + 1)

end A197775

/-!
# A197776: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,2,1,1,1 for x=0,1,2,3,4.

The programs for A197776, there is no canonical definition to state claims against.
-/

/-! ## A197776.P2316502241759387287

`A197782(∑[4*n]+1)`
-/

namespace A197776.P2316502241759387287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197776.P2316502241759387287

/-! ## A197776.P17060439361151261525

`record[A197782(∑[A266981(n)])]`
-/

namespace A197776.P17060439361151261525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197776.P17060439361151261525

/-! ## A197776.P14417956535296138554

`record[A197782(Δ[A235355(n)])]`
-/

namespace A197776.P14417956535296138554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197776.P14417956535296138554

/-! ## A197776.P2009065734739307281

`record[A197782(A330613(n+1))]`
-/

namespace A197776.P2009065734739307281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197776.P2009065734739307281

/-!
# A197777: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,1,1 for x=0,1,2,3,4.

The programs for A197777, there is no canonical definition to state claims against.
-/

/-! ## A197777.P1639903822688759639

`A197782(∑[n+2]+4)`
-/

namespace A197777.P1639903822688759639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197777.P1639903822688759639

/-! ## A197777.P7202219972402765670

`record[A197782(A167614(val(n+1, 2)+1))]`
-/

namespace A197777.P7202219972402765670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197777.P7202219972402765670

/-! ## A197777.P14772204383160797654

`A197782(A167614(n+1))+A025443(n)`
-/

namespace A197777.P14772204383160797654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (A167614 (n + 1)).toNat + A025443 n

end

end A197777.P14772204383160797654

/-! ## A197777.P6085695008547579211

`A197782(A167614(n+1))+A185284(n)`
-/

namespace A197777.P6085695008547579211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (A167614 (n + 1)).toNat + A185284 n

end

end A197777.P6085695008547579211

/-! ## A197777.P1946242352375692446

`A015216(n)*A197782(A167614(n+1))`
-/

namespace A197777.P1946242352375692446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015216 n * A197782 (A167614 (n + 1)).toNat

end

end A197777.P1946242352375692446

/-!
# A197778: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,1,1 for x=0,1,2,3,4.

The programs for A197778, there is no canonical definition to state claims against.
-/

/-! ## A197778.P2156873218636963541

`A197782(A374004(n+1))`
-/

namespace A197778.P2156873218636963541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (A374004 (n + 1)).toNat

end

end A197778.P2156873218636963541

/-! ## A197778.P18224058991399403247

`A197782(A052905(n)+9)`
-/

namespace A197778.P18224058991399403247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (A052905 n + 9).toNat

end

end A197778.P18224058991399403247

/-! ## A197778.P17105458831875706803

`A197782(A055999(n)+10)`
-/

namespace A197778.P17105458831875706803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (A055999 n + 10).toNat

end

end A197778.P17105458831875706803

/-! ## A197778.P8563316882735197539

`A197782(A167614(n+2)+1)`
-/

namespace A197778.P8563316882735197539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (A167614 (n + 2) + 1).toNat

end

end A197778.P8563316882735197539

/-! ## A197778.P14552444721704820111

`A197782(Δ[A264443(n)-n²])`
-/

namespace A197778.P14552444721704820111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (f1 (n + 1) - f1 n).toNat

end

end A197778.P14552444721704820111

/-!
# A197779: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,1,1 for x=0,1,2,3,4.

The programs for A197779, there is no canonical definition to state claims against.
-/

/-! ## A197779.P15430054195501882103

`A197782(A374005(n+1))`
-/

namespace A197779.P15430054195501882103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (A374005 (n + 1)).toNat

end

end A197779.P15430054195501882103

/-! ## A197779.P10099994669313682226

`A197782(A167499(n+3))`
-/

namespace A197779.P10099994669313682226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (A167499 (n + 3)).toNat

end

end A197779.P10099994669313682226

/-! ## A197779.P11106403420566575281

`A197782(A155212(n)+13)`
-/

namespace A197779.P11106403420566575281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (A155212 n + 13).toNat

end

end A197779.P11106403420566575281

/-! ## A197779.P978324173198819009

`A197782(A056000(n)+15)`
-/

namespace A197779.P978324173198819009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (A056000 n + 15).toNat

end

end A197779.P978324173198819009

/-! ## A197779.P14260339362083726373

`A197782(eq[6, A131818(n+1)])`
-/

namespace A197779.P14260339362083726373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197779.P14260339362083726373

/-!
# A197780: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,1,1 for x=0,1,2,3,4.

The programs for A197780, there is no canonical definition to state claims against.
-/

/-! ## A197780.P11645381954104282697

`A197782(A374007(n+1))`
-/

namespace A197780.P11645381954104282697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (A374007 (n + 1)).toNat

end

end A197780.P11645381954104282697

/-! ## A197780.P13201840291933800296

`A197782(Δ[A264443(n)]+10)`
-/

namespace A197780.P13201840291933800296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (f1 (n + 1) - f1 n + 10).toNat

end

end A197780.P13201840291933800296

/-! ## A197780.P18218806582411027462

`A197782(A000217(n+5)+6)`
-/

namespace A197780.P18218806582411027462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (A000217 (n + 5) + 6).toNat

end

end A197780.P18218806582411027462

/-! ## A197780.P4144305739031169500

`A197782(eq[7, A131818(n+1)])`
-/

namespace A197780.P4144305739031169500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197780.P4144305739031169500

/-! ## A197780.P11552879801822829166

`A197782(eq[3, A219347(n)])`
-/

namespace A197780.P11552879801822829166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197780.P11552879801822829166

/-!
# A197781: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,1,1 for x=0,1,2,3,4.

The programs for A197781, there is no canonical definition to state claims against.
-/

/-! ## A197781.P2701849617956356008

`A197782(A374008(n+1))`
-/

namespace A197781.P2701849617956356008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (A374008 (n + 1)).toNat

end

end A197781.P2701849617956356008

/-! ## A197781.P7574193100665941207

`A197782(A056119(n)+28)`
-/

namespace A197781.P7574193100665941207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (A056119 n + 28).toNat

end

end A197781.P7574193100665941207

/-! ## A197781.P11282143453280136802

`A197782(eq[11, A066657(n)])`
-/

namespace A197781.P11282143453280136802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197781.P11282143453280136802

/-! ## A197781.P1715189620164865769

`A197782(eq[8, A131818(n+1)])`
-/

namespace A197781.P1715189620164865769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197781.P1715189620164865769

/-! ## A197781.P5358562184397965010

`A197782(eq[4, A219347(n)])`
-/

namespace A197781.P5358562184397965010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197781.P5358562184397965010

/-!
# A197783: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,4,1,0,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A197783, there is no canonical definition to state claims against.
-/

/-! ## A197783.P14228381300256759855

`A325973(A327025(n)²)`
-/

namespace A197783.P14228381300256759855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (A327025 n ^ 2).toNat

end

end A197783.P14228381300256759855

/-!
# A197785: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,6,1,0,0,0,1 for x=0,1,2,3,4,5,6.

The programs for A197785, there is no canonical definition to state claims against.
-/

/-! ## A197785.P7889220644660095721

`A224340(∑[n]^6^val(n+1, 6))`
-/

namespace A197785.P7889220644660095721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224340 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 6 ^ SequenceMachineLib.valuation (n + 1) 6)

end

end A197785.P7889220644660095721

/-!
# A197786: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,6,0,0,0,0,1 for x=0,1,2,3,4,5,6.

The programs for A197786, there is no canonical definition to state claims against.
-/

/-! ## A197786.P16951241372259264320

`A311039(∑[A003713(n)²])`
-/

namespace A197786.P16951241372259264320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003713 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311039 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A197786.P16951241372259264320

/-!
# A197787: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,6,1,0,0,0,1 for x=0,1,2,3,4,5,6.

The programs for A197787, there is no canonical definition to state claims against.
-/

/-! ## A197787.P17545299621409737281

`A168233(A337593(n))`
-/

namespace A197787.P17545299621409737281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168233 (A337593 n).toNat

end

end A197787.P17545299621409737281

/-!
# A197788: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 3,0,2,1,2,0,0 for x=0,1,2,3,4,5,6.

The programs for A197788, there is no canonical definition to state claims against.
-/

/-! ## A197788.P1904082148318580140

`A008619(∏{d}[A244154(n)², #])`
-/

namespace A197788.P1904082148318580140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244154 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A197788.P1904082148318580140

/-!
# A197789: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,0,1,1,0,1,0 for x=0,1,2,3,4,5,6.

The programs for A197789, there is no canonical definition to state claims against.
-/

/-! ## A197789.P9752691246831106381

`A256792(∑[A224366(n)])`
-/

namespace A197789.P9752691246831106381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256792 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A197789.P9752691246831106381

/-!
# A197790: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,3,4,1,1,0,0 for x=0,1,2,3,4,5,6.

The programs for A197790, there is no canonical definition to state claims against.
-/

/-! ## A197790.P18251647158764488845

`A329413(A126120(n)+A276852(n)²)`
-/

namespace A197790.P18251647158764488845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329413 (A126120 n + A276852 n ^ 2).toNat

end

end A197790.P18251647158764488845

/-!
# A197792: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,0,2,0,2,2,0 for x=0,1,2,3,4,5,6.

The programs for A197792, there is no canonical definition to state claims against.
-/

/-! ## A197792.P3497862982085976284

`A047498(A254077(n+1)+A006717(n))`
-/

namespace A197792.P3497862982085976284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047498 (A254077 (n + 1) + A006717 n).toNat

end

end A197792.P3497862982085976284

/-!
# A197793: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,0,2,0,2,2,0 for x=0,1,2,3,4,5,6.

The programs for A197793, there is no canonical definition to state claims against.
-/

/-! ## A197793.P7758220545095989252

`A062406(A034659(n))+A000695(n)`
-/

namespace A197793.P7758220545095989252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062406 (A034659 n).toNat + A000695 n

end

end A197793.P7758220545095989252

/-!
# A197794: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,4,2,0,1,1,0 for x=0,1,2,3,4,5,6.

The programs for A197794, there is no canonical definition to state claims against.
-/

/-! ## A197794.P15089907157806002703

`A304971(A002275(n)+A000003(n+1))`
-/

namespace A197794.P15089907157806002703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304971 (A002275 n + A000003 (n + 1)).toNat

end

end A197794.P15089907157806002703

/-!
# A197795: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 5,5,2,0,1,1,0 for x=0,1,2,3,4,5,6.

The programs for A197795, there is no canonical definition to state claims against.
-/

/-! ## A197795.P1899606630066926204

`A173666(A053730(n))`
-/

namespace A197795.P1899606630066926204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173666 (A053730 n).toNat

end

end A197795.P1899606630066926204

/-!
# A197797: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,0,2,1,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A197797, there is no canonical definition to state claims against.
-/

/-! ## A197797.P15466349497878225243

`or(A198091(n+1), A372441(A048357(n+1)))`
-/

namespace A197797.P15466349497878225243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A198091 (n + 1)) (A372441 (A048357 (n + 1)).toNat)

end

end A197797.P15466349497878225243

/-!
# A197798: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 0,0,2,1,2,1,1 for x=0,1,2,3,4,5,6.

The programs for A197798, there is no canonical definition to state claims against.
-/

/-! ## A197798.P213209909251865025

`A047465(a(n-1)*a(n-2))` with `a(0)=1, a(1)=4, a(2)=4`
-/

namespace A197798.P213209909251865025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 4] fun n a =>
  A047465 (a (n - 1) * a (n - 2)).toNat

end

end A197798.P213209909251865025

/-!
# A197799: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,2,1,0,1 for x=0,1,2,3,4.

The programs for A197799, there is no canonical definition to state claims against.
-/

/-! ## A197799.P14223210449350948680

`A197805(∑[4*n]+1)`
-/

namespace A197799.P14223210449350948680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197799.P14223210449350948680

/-! ## A197799.P18423591733190603790

`record[A197805(Δ[A235355(n)])]`
-/

namespace A197799.P18423591733190603790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197799.P18423591733190603790

/-! ## A197799.P12873445660421313897

`and(-1, A197805(A001844(n)))`
-/

namespace A197799.P12873445660421313897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A197805 (A001844 n).toNat)

end

end A197799.P12873445660421313897

/-! ## A197799.P8096425214285768125

`record[A197805(A330613(n+1))]`
-/

namespace A197799.P8096425214285768125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197805 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197799.P8096425214285768125

