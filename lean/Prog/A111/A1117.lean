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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A111700: Number of integers between p(n) and p(n+1) which are coprime to (p(n+1)-p(n)), where p(n) is the n-th prime.

The programs for A111700, the canonical program `A111700.P2892397724252149663` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111700 has offset 1).

The definition of A111700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111700.P8802746987463746614

`A072106(A001223(n+1))`
-/

namespace A111700.P8802746987463746614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072106 (A001223 (n + 1)).toNat

end

end A111700.P8802746987463746614

namespace A111700

/-- `A072106(A001223(n+1))` -/
def P8802746987463746614.Spec : Prop :=
  ∀ n, P8802746987463746614.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P11557242853436024222

`A072106(A075526(n+1))`
-/

namespace A111700.P11557242853436024222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072106 (A075526 (n + 1)).toNat

end

end A111700.P11557242853436024222

namespace A111700

/-- `A072106(A075526(n+1))` -/
def P11557242853436024222.Spec : Prop :=
  ∀ n, P11557242853436024222.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P6515006171547841522

`A101290(A100820(n+1))`
-/

namespace A111700.P6515006171547841522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101290 (A100820 (n + 1)).toNat

end

end A111700.P6515006171547841522

namespace A111700

/-- `A101290(A100820(n+1))` -/
def P6515006171547841522.Spec : Prop :=
  ∀ n, P6515006171547841522.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P8319149536000926573

`A072106(A054541(n+2))`
-/

namespace A111700.P8319149536000926573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072106 (A054541 (n + 2)).toNat

end

end A111700.P8319149536000926573

namespace A111700

/-- `A072106(A054541(n+2))` -/
def P8319149536000926573.Spec : Prop :=
  ∀ n, P8319149536000926573.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P9358283049521099764

`A072106(A125266(n+2))`
-/

namespace A111700.P9358283049521099764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072106 (A125266 (n + 2)).toNat

end

end A111700.P9358283049521099764

namespace A111700

/-- `A072106(A125266(n+2))` -/
def P9358283049521099764.Spec : Prop :=
  ∀ n, P9358283049521099764.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P7757851898754901001

`A332801(A076368(n+2))`
-/

namespace A111700.P7757851898754901001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332801 (A076368 (n + 2)).toNat

end

end A111700.P7757851898754901001

namespace A111700

/-- `A332801(A076368(n+2))` -/
def P7757851898754901001.Spec : Prop :=
  ∀ n, P7757851898754901001.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P16518205512490265338

`A332801(A230846(n+2))`
-/

namespace A111700.P16518205512490265338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332801 (A230846 (n + 2)).toNat

end

end A111700.P16518205512490265338

namespace A111700

/-- `A332801(A230846(n+2))` -/
def P16518205512490265338.Spec : Prop :=
  ∀ n, P16518205512490265338.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P14395774282814440884

`A332801(A230847(n+2))`
-/

namespace A111700.P14395774282814440884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332801 (A230847 (n + 2)).toNat

end

end A111700.P14395774282814440884

namespace A111700

/-- `A332801(A230847(n+2))` -/
def P14395774282814440884.Spec : Prop :=
  ∀ n, P14395774282814440884.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P9772597774846488285

`A072106(Δ[A000040(n+1)])`
-/

namespace A111700.P9772597774846488285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072106 (f1 (n + 1) - f1 n).toNat

end

end A111700.P9772597774846488285

namespace A111700

/-- `A072106(Δ[A000040(n+1)])` -/
def P9772597774846488285.Spec : Prop :=
  ∀ n, P9772597774846488285.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P2892397724252149663

`A085599(Δ[A000040(n+1)])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111700

/-- `A085599(Δ[A000040(n+1)])` -/
def P2892397724252149663.Spec : Prop :=
  ∀ n, P2892397724252149663.a n = A111700 (n + 1)

theorem P2892397724252149663.correct : P2892397724252149663.Spec := by
  intro n
  simp only [A111700, Nat.add_sub_cancel]

end A111700

/-! ## A111700.P2943876097235782479

`A109606(Δ[A000040(n+1)])`
-/

namespace A111700.P2943876097235782479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (f1 (n + 1) - f1 n).toNat

end

end A111700.P2943876097235782479

namespace A111700

/-- `A109606(Δ[A000040(n+1)])` -/
def P2943876097235782479.Spec : Prop :=
  ∀ n, P2943876097235782479.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P3216948695523190453

`A109606(Δ[A040976(n+1)])`
-/

namespace A111700.P3216948695523190453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (f1 (n + 1) - f1 n).toNat

end

end A111700.P3216948695523190453

namespace A111700

/-- `A109606(Δ[A040976(n+1)])` -/
def P3216948695523190453.Spec : Prop :=
  ∀ n, P3216948695523190453.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P4114656588756715213

`A318830(Δ[A000040(n+1)])`
-/

namespace A111700.P4114656588756715213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318830 (f1 (n + 1) - f1 n).toNat

end

end A111700.P4114656588756715213

namespace A111700

/-- `A318830(Δ[A000040(n+1)])` -/
def P4114656588756715213.Spec : Prop :=
  ∀ n, P4114656588756715213.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P4514282304656664507

`A318840(Δ[A000040(n+1)])`
-/

namespace A111700.P4514282304656664507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318840 (f1 (n + 1) - f1 n).toNat

end

end A111700.P4514282304656664507

namespace A111700

/-- `A318840(Δ[A000040(n+1)])` -/
def P4514282304656664507.Spec : Prop :=
  ∀ n, P4514282304656664507.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P17793755800206316979

`A078772(A000040(n+2))-1`
-/

namespace A111700.P17793755800206316979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078772 (A000040 (n + 2)).toNat - 1

end

end A111700.P17793755800206316979

namespace A111700

/-- `A078772(A000040(n+2))-1` -/
def P17793755800206316979.Spec : Prop :=
  ∀ n, P17793755800206316979.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P10671674640344798098

`A000010(Δ[Δ[A007504(n)]])-1`
-/

namespace A111700.P10671674640344798098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat - 1

end

end A111700.P10671674640344798098

namespace A111700

/-- `A000010(Δ[Δ[A007504(n)]])-1` -/
def P10671674640344798098.Spec : Prop :=
  ∀ n, P10671674640344798098.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P17863638629413472337

`A109606(Δ[record[A000010(n+1)]])`
-/

namespace A111700.P17863638629413472337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (f1 (n + 1) - f1 n).toNat

end

end A111700.P17863638629413472337

namespace A111700

/-- `A109606(Δ[record[A000010(n+1)]])` -/
def P17863638629413472337.Spec : Prop :=
  ∀ n, P17863638629413472337.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P9773020595918825626

`A109606(Δ[record[A109606(n+1)]])`
-/

namespace A111700.P9773020595918825626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (f1 (n + 1) - f1 n).toNat

end

end A111700.P9773020595918825626

namespace A111700

/-- `A109606(Δ[record[A109606(n+1)]])` -/
def P9773020595918825626.Spec : Prop :=
  ∀ n, P9773020595918825626.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P1377415660294190837

`A000010(Δ[A000040(n+1)])-1`
-/

namespace A111700.P1377415660294190837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat - 1

end

end A111700.P1377415660294190837

namespace A111700

/-- `A000010(Δ[A000040(n+1)])-1` -/
def P1377415660294190837.Spec : Prop :=
  ∀ n, P1377415660294190837.a n = A111700 (n + 1)

end A111700

/-! ## A111700.P15683814465724396367

`A000010(Δ[A006005(n+1)])-1`
-/

namespace A111700.P15683814465724396367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat - 1

end

end A111700.P15683814465724396367

namespace A111700

/-- `A000010(Δ[A006005(n+1)])-1` -/
def P15683814465724396367.Spec : Prop :=
  ∀ n, P15683814465724396367.a n = A111700 (n + 1)

end A111700

/-!
# A111701: Least integer obtained when n is divided by prime(1), then by prime(2), then by prime(3), ..., stopping as soon as one of the primes does not divide it. In particular, a(2n-1) = 2n-1.

The programs for A111701, there is no canonical definition to state claims against.
-/

/-! ## A111701.P17953957090547606954

`(n+1)/A053589(n+1)`
-/

namespace A111701.P17953957090547606954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053589 (n + 1) : ℚ)

end

end A111701.P17953957090547606954

/-! ## A111701.P7322383052266483922

`(n+1)²/A114562(n+1)`
-/

namespace A111701.P7322383052266483922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A114562 (n + 1) : ℚ)

end

end A111701.P7322383052266483922

/-! ## A111701.P4209804534032475599

`(n+1)/(n+1-A276151(n+1))`
-/

namespace A111701.P4209804534032475599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A276151 (n + 1) : ℚ)

end

end A111701.P4209804534032475599

/-! ## A111701.P6840789122069976219

`A087560(n+1)/A276152(n+1)`
-/

namespace A111701.P6840789122069976219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087560 (n + 1) : ℚ) / (A276152 (n + 1) : ℚ)

end

end A111701.P6840789122069976219

/-! ## A111701.P17685967854766201017

`lcm(A003557(n+1), A328478(n+1))`
-/

namespace A111701.P17685967854766201017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003557 (n + 1)) (A328478 (n + 1))

end

end A111701.P17685967854766201017

/-! ## A111701.P18117283637062176629

`(n+1)/A049559(A053590(n+1)+1)`
-/

namespace A111701.P18117283637062176629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A049559 (A053590 (n + 1) + 1).toNat : ℚ)

end

end A111701.P18117283637062176629

/-! ## A111701.P13030898418455640571

`lcm(A066043(n+1), A276152(n+1))/A276152(n+1)`
-/

namespace A111701.P13030898418455640571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A066043 (n + 1)) (A276152 (n + 1)) : ℚ) / (A276152 (n + 1) : ℚ)

end

end A111701.P13030898418455640571

/-! ## A111701.P6675202510248033474

`(n+1)/A340346(A007947(n+1))`
-/

namespace A111701.P6675202510248033474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A340346 (A007947 (n + 1)).toNat : ℚ)

end

end A111701.P6675202510248033474

/-!
# A111702: a(1) = 3, then n multiples of n such that every partial sum is a prime.

The programs for A111702, there is no canonical definition to state claims against.
-/

/-! ## A111702.P17859552166184256221

`Δ[A111703(abs(1-n)+1)%(49*n+5)]`
-/

namespace A111702.P17859552166184256221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111703 (|1 - (n : ℤ)| + 1).toNat) (49 * n + 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111702.P17859552166184256221

/-! ## A111702.P7737838741389353960

`Δ[A057427(n)*A111703(abs(1-n)+1)]`
-/

namespace A111702.P7737838741389353960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A111703 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111702.P7737838741389353960

/-! ## A111702.P17656129299767934463

`Δ[A111703(abs(1-n)+1)*A178489(n)]`
-/

namespace A111702.P17656129299767934463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111703 (|1 - (n : ℤ)| + 1).toNat * A178489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111702.P17656129299767934463

/-! ## A111702.P15159178311702870847

`A111703(n+1)%A111703(abs(1-n)+1)`
-/

namespace A111702.P15159178311702870847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111703 (n + 1)) (A111703 (|1 - (n : ℤ)| + 1).toNat)

end

end A111702.P15159178311702870847

/-! ## A111702.P14705376533322247644

`Δ[A111703(abs(1-n)+1)*A130654(2*n+1)]`
-/

namespace A111702.P14705376533322247644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111703 (|1 - (n : ℤ)| + 1).toNat * A130654 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111702.P14705376533322247644

/-!
# A111703: Primes arising as partial sums in A111702.

The programs for A111703, there is no canonical definition to state claims against.
-/

/-! ## A111703.P10659551168019737152

`∑[A111702(n+1)]`
-/

namespace A111703.P10659551168019737152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111703.P10659551168019737152

/-! ## A111703.P11375826175929565626

`p?[∑[A111702(A008611(3*n))]]`
-/

namespace A111703.P11375826175929565626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111702 (A008611 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111703.P11375826175929565626

/-! ## A111703.P6737660689391188681

`A006530(∑[A111702(-xor(n, -1))])`
-/

namespace A111703.P6737660689391188681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111702 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111703.P6737660689391188681

/-! ## A111703.P11172139253090080276

`A007913(∑[A111702(-xor(n, -1))])`
-/

namespace A111703.P11172139253090080276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111702 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111703.P11172139253090080276

/-! ## A111703.P15050887813785760691

`A020639(∑[A111702(-xor(n, -1))])`
-/

namespace A111703.P15050887813785760691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111702 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111703.P15050887813785760691

/-! ## A111703.P2805936535602323463

`∑[A065033(2*A111702(-xor(n, -1)))]`
-/

namespace A111703.P2805936535602323463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A111702 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111703.P2805936535602323463

/-! ## A111703.P2465686151614396612

`A144433(a(n-1)-1)+A111702(n+1)` with `a(0)=3`
-/

namespace A111703.P2465686151614396612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A144433 (a (n - 1) - 1).toNat + A111702 (n + 1)

end

end A111703.P2465686151614396612

/-! ## A111703.P16117061291315915627

`A223491(lcm(2, a(n-1)))+A111702(n+1)` with `a(0)=3`
-/

namespace A111703.P16117061291315915627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A223491 (Int.lcm 2 (a (n - 1))) + A111702 (n + 1)

end

end A111703.P16117061291315915627

/-! ## A111703.P6211720180672963044

`A000005(((-1)^n)²)*∑[A111702(A008611(3*n))]`
-/

namespace A111703.P6211720180672963044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111702 (A008611 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((-1) ^ n) ^ 2).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111703.P6211720180672963044

/-!
# A111704: a(n) = concatenation of (n times each digit of n).

The programs for A111704, there is no canonical definition to state claims against.
-/

/-! ## A111704.P4730648571763622960

`(n+1)*A111705(n+1)`
-/

namespace A111704.P4730648571763622960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A111705 (n + 1)

end

end A111704.P4730648571763622960

/-! ## A111704.P9169701979082996262

`(n+1)*∑[A131821((n+6)^3)]`
-/

namespace A111704.P9169701979082996262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 ((n + 6) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111704.P9169701979082996262

/-! ## A111704.P4475710188969812938

`(n+1)*∑[91%A020639(A242843(n+9))]`
-/

namespace A111704.P4475710188969812938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 91 (A020639 (A242843 (n + 9)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111704.P4475710188969812938

/-! ## A111704.P15696063988390062695

`(n+1)*(A051022(n)%A152693(n+1)+1)`
-/

namespace A111704.P15696063988390062695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (Int.tmod (A051022 n) (A152693 (n + 1)) + 1)

end

end A111704.P15696063988390062695

/-! ## A111704.P10881080324526799397

`(n+1)*A239218(A239086(A239218(n+1)))`
-/

namespace A111704.P10881080324526799397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A239218 (A239086 (A239218 (n + 1)).toNat).toNat

end

end A111704.P10881080324526799397

/-!
# A111705: a(n) = concatenation of n times each digit of n divided by n.

The programs for A111705, there is no canonical definition to state claims against.
-/

/-! ## A111705.P11070985217009878021

`A111704(n+1)/(n+1)`
-/

namespace A111705.P11070985217009878021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111704 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A111705.P11070985217009878021

/-! ## A111705.P3983186487674492427

`abs(A111704(n-log2(1/2))/xor(n, -1))`
-/

namespace A111705.P3983186487674492427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A111704 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) / (Int.xor (n : ℤ) (-1) : ℚ)|

end

end A111705.P3983186487674492427

/-! ## A111705.P13405849259917952852

`-A111704(A008619(2*n))/xor(n, -1)`
-/

namespace A111705.P13405849259917952852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A111704 (A008619 (2 * n)).toNat : ℚ) / (Int.xor (n : ℤ) (-1) : ℚ))

end

end A111705.P13405849259917952852

/-! ## A111705.P7704592577049084378

`record[A111704(A008619(2*n))]/A000005(2^n)`
-/

namespace A111705.P7704592577049084378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111704 (A008619 (2 * n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000005 (2 ^ n) : ℚ)

end

end A111705.P7704592577049084378

/-! ## A111705.P1988339915848825362

`∑[A131821((n+6)^3)]`
-/

namespace A111705.P1988339915848825362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 ((n + 6) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111705.P1988339915848825362

/-!
# A111706: a(n) = concatenation of k times the k-th digit of n.

The programs for A111706, there is no canonical definition to state claims against.
-/

/-! ## A111706.P9054076472876668003

`∑[gcd(11, ∑[2^n])]`
-/

namespace A111706.P9054076472876668003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 11 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111706.P9054076472876668003

/-! ## A111706.P16975406954242342060

`∑[11^val(n+1, 10)]`
-/

namespace A111706.P16975406954242342060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ SequenceMachineLib.valuation (n + 1) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111706.P16975406954242342060

/-! ## A111706.P5298606289233297749

`∑[C(11, val(n+1, 10))]`
-/

namespace A111706.P5298606289233297749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 11 (SequenceMachineLib.valuation (n + 1) 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111706.P5298606289233297749

/-! ## A111706.P329867341269358425

`∑[11^Δ[floor(n/10)]]`
-/

namespace A111706.P329867341269358425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 10⌋

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111706.P329867341269358425

/-! ## A111706.P15619138531731454614

`2*(n+1)-(n+1)%10`
-/

namespace A111706.P15619138531731454614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (((n + 1) % 10 : ℕ) : ℤ)

end

end A111706.P15619138531731454614

/-! ## A111706.P388599857283198262

`A102491(n+2)`
-/

namespace A111706.P388599857283198262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102491 (n + 2)

end

end A111706.P388599857283198262

/-! ## A111706.P5820534802535136220

`A103205(a(n-1))+1` with `a(0)=1`
-/

namespace A111706.P5820534802535136220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103205 (a (n - 1)).toNat + 1

end

end A111706.P5820534802535136220

/-! ## A111706.P9629935360540590471

`A169932(n+1)+1+n`
-/

namespace A111706.P9629935360540590471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169932 (n + 1) + 1 + (n : ℤ)

end

end A111706.P9629935360540590471

/-! ## A111706.P8501008532822235904

`2*(n+1)-A010879(n+1)`
-/

namespace A111706.P8501008532822235904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A010879 (n + 1)

end

end A111706.P8501008532822235904

/-! ## A111706.P13603208287364359071

`2*(n+1)-A179636(n+1)`
-/

namespace A111706.P13603208287364359071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A179636 (n + 1)

end

end A111706.P13603208287364359071

/-!
# A111707: a(n) = Sum_{k = 1..ceiling(w/2)} d(k) * d(w+1-k), where (d(1), ..., d(w)) is the decimal expansion of n.

The programs for A111707, the canonical program `A111707.P13894172564347898371` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111707 has offset 0).

The definition of A111707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111707.P5421744710486015924

`gcd(A098736(n), A257297(A004185(n)))`
-/

namespace A111707.P5421744710486015924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098736 n) (A257297 (A004185 n).toNat)

end

end A111707.P5421744710486015924

namespace A111707

/-- `gcd(A098736(n), A257297(A004185(n)))` -/
def P5421744710486015924.Spec : Prop :=
  ∀ n, (P5421744710486015924.a n : ℤ) = A111707 n

end A111707

/-! ## A111707.P13894172564347898371

`A169669(n)+A000038(A047809(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111707

/-- `A169669(n)+A000038(A047809(n))` -/
def P13894172564347898371.Spec : Prop :=
  ∀ n, P13894172564347898371.a n = A111707 n

theorem P13894172564347898371.correct : P13894172564347898371.Spec := by
  intro n
  simp only [A111707]

end A111707

/-! ## A111707.P14123256518332750035

`A169669(n)^A192004(A005408(n))`
-/

namespace A111707.P14123256518332750035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169669 n : ℚ) ^ (A192004 (A005408 n).toNat : ℤ)

end

end A111707.P14123256518332750035

namespace A111707

/-- `A169669(n)^A192004(A005408(n))` -/
def P14123256518332750035.Spec : Prop :=
  ∀ n, P14123256518332750035.a n = (A111707 n : ℚ)

end A111707

/-! ## A111707.P6192582746210422954

`A169669(n)%A298910(A061395(n+3))`
-/

namespace A111707.P6192582746210422954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169669 n) (A298910 (A061395 (n + 3)).toNat)

end

end A111707.P6192582746210422954

namespace A111707

/-- `A169669(n)%A298910(A061395(n+3))` -/
def P6192582746210422954.Spec : Prop :=
  ∀ n, P6192582746210422954.a n = A111707 n

end A111707

/-! ## A111707.P17177006461932212330

`and(A135972(A272214(n+1)), A169669(n))`
-/

namespace A111707.P17177006461932212330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135972 (A272214 (n + 1)).toNat) (A169669 n)

end

end A111707.P17177006461932212330

namespace A111707

/-- `and(A135972(A272214(n+1)), A169669(n))` -/
def P17177006461932212330.Spec : Prop :=
  ∀ n, P17177006461932212330.a n = A111707 n

end A111707

/-! ## A111707.P15576205459962816706

`A169669(n)+A033716(A178977(A028392(n)))`
-/

namespace A111707.P15576205459962816706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169669 n + A033716 (A178977 (A028392 n).toNat).toNat

end

end A111707.P15576205459962816706

namespace A111707

/-- `A169669(n)+A033716(A178977(A028392(n)))` -/
def P15576205459962816706.Spec : Prop :=
  ∀ n, P15576205459962816706.a n = A111707 n

end A111707

/-! ## A111707.P13237692060737953587

`A003557(A006530(A002522(n)))*A169669(n)`
-/

namespace A111707.P13237692060737953587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A006530 (A002522 n).toNat).toNat * A169669 n

end

end A111707.P13237692060737953587

namespace A111707

/-- `A003557(A006530(A002522(n)))*A169669(n)` -/
def P13237692060737953587.Spec : Prop :=
  ∀ n, P13237692060737953587.a n = A111707 n

end A111707

/-! ## A111707.P8806893129225119550

`∑{d}[n+1, A151878(#-1)*A169669((n+1)/#-1)]`
-/

namespace A111707.P8806893129225119550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A151878 (d - 1) * A169669 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A111707.P8806893129225119550

namespace A111707

/-- `∑{d}[n+1, A151878(#-1)*A169669((n+1)/#-1)]` -/
def P8806893129225119550.Spec : Prop :=
  ∀ n, P8806893129225119550.a n = A111707 n

end A111707

/-! ## A111707.P11382839622033110630

`A169669(n)*A171435(A059867(n+1))`
-/

namespace A111707.P11382839622033110630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169669 n * A171435 (A059867 (n + 1)).toNat

end

end A111707.P11382839622033110630

namespace A111707

/-- `A169669(n)*A171435(A059867(n+1))` -/
def P11382839622033110630.Spec : Prop :=
  ∀ n, P11382839622033110630.a n = A111707 n

end A111707

/-! ## A111707.P11857023677981986071

`A169669(n)+A010051(A022274(n+1))`
-/

namespace A111707.P11857023677981986071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169669 n + A010051 (A022274 (n + 1)).toNat

end

end A111707.P11857023677981986071

namespace A111707

/-- `A169669(n)+A010051(A022274(n+1))` -/
def P11857023677981986071.Spec : Prop :=
  ∀ n, P11857023677981986071.a n = A111707 n

end A111707

/-! ## A111707.P1130555521361822184

`A085942(n)-A257297(n)`
-/

namespace A111707.P1130555521361822184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085942 n - A257297 n

end

end A111707.P1130555521361822184

namespace A111707

/-- `A085942(n)-A257297(n)` -/
def P1130555521361822184.Spec : Prop :=
  ∀ n, P1130555521361822184.a n = A111707 n

end A111707

/-! ## A111707.P18340820626649361971

`gcd(A098736(n), A257297(n))`
-/

namespace A111707.P18340820626649361971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098736 n) (A257297 n)

end

end A111707.P18340820626649361971

namespace A111707

/-- `gcd(A098736(n), A257297(n))` -/
def P18340820626649361971.Spec : Prop :=
  ∀ n, (P18340820626649361971.a n : ℤ) = A111707 n

end A111707

/-! ## A111707.P8284245175071793178

`A010879(n)*A010879(A082216(n))`
-/

namespace A111707.P8284245175071793178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n * A010879 (A082216 n).toNat

end

end A111707.P8284245175071793178

namespace A111707

/-- `A010879(n)*A010879(A082216(n))` -/
def P8284245175071793178.Spec : Prop :=
  ∀ n, P8284245175071793178.a n = A111707 n

end A111707

/-! ## A111707.P12998920828517640858

`A169669(A087019(n))`
-/

namespace A111707.P12998920828517640858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169669 (A087019 n).toNat

end

end A111707.P12998920828517640858

namespace A111707

/-- `A169669(A087019(n))` -/
def P12998920828517640858.Spec : Prop :=
  ∀ n, P12998920828517640858.a n = A111707 n

end A111707

/-! ## A111707.P13881537217700862038

`A169669(A000196(n²))`
-/

namespace A111707.P13881537217700862038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169669 (A000196 (n ^ 2)).toNat

end

end A111707.P13881537217700862038

namespace A111707

/-- `A169669(A000196(n²))` -/
def P13881537217700862038.Spec : Prop :=
  ∀ n, P13881537217700862038.a n = A111707 n

end A111707

/-! ## A111707.P5236211160464588837

`A014577(n²)*A169669(n)`
-/

namespace A111707.P5236211160464588837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (n ^ 2) * A169669 n

end

end A111707.P5236211160464588837

namespace A111707

/-- `A014577(n²)*A169669(n)` -/
def P5236211160464588837.Spec : Prop :=
  ∀ n, P5236211160464588837.a n = A111707 n

end A111707

/-! ## A111707.P8596134445513034527

`A169669(A000194(n²))`
-/

namespace A111707.P8596134445513034527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169669 (A000194 (n ^ 2)).toNat

end

end A111707.P8596134445513034527

namespace A111707

/-- `A169669(A000194(n²))` -/
def P8596134445513034527.Spec : Prop :=
  ∀ n, P8596134445513034527.a n = A111707 n

end A111707

/-! ## A111707.P17239086455933777099

`A169669(A135034(n²))`
-/

namespace A111707.P17239086455933777099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169669 (A135034 (n ^ 2)).toNat

end

end A111707.P17239086455933777099

namespace A111707

/-- `A169669(A135034(n²))` -/
def P17239086455933777099.Spec : Prop :=
  ∀ n, P17239086455933777099.a n = A111707 n

end A111707

/-! ## A111707.P17994107542294259501

`A169669(record[A039723(n)])`
-/

namespace A111707.P17994107542294259501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169669 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111707.P17994107542294259501

namespace A111707

/-- `A169669(record[A039723(n)])` -/
def P17994107542294259501.Spec : Prop :=
  ∀ n, P17994107542294259501.a n = A111707 n

end A111707

/-! ## A111707.P3689860754699803663

`A169669(n)*A267537(n²)`
-/

namespace A111707.P3689860754699803663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169669 n * A267537 (n ^ 2)

end

end A111707.P3689860754699803663

namespace A111707

/-- `A169669(n)*A267537(n²)` -/
def P3689860754699803663.Spec : Prop :=
  ∀ n, P3689860754699803663.a n = A111707 n

end A111707

/-!
# A111708: a(n) = n concatenated with 9's complement of n.

The programs for A111708, the canonical program `A111708.P14227470248071541611` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111708 has offset 0).

The definition of A111708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111708.P14227470248071541611

`(n+1)*(A061601(n)+n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111708

/-- `(n+1)*(A061601(n)+n)` -/
def P14227470248071541611.Spec : Prop :=
  ∀ n, P14227470248071541611.a n = A111708 n

theorem P14227470248071541611.correct : P14227470248071541611.Spec := by
  intro n
  simp only [A111708]

end A111708

/-!
# A111709: Expansion of (x^8-x^7+x^5-x+1)*(x^4+1) / ((x+1)*(x^2+1)*(x^4-x^2+1)*(x^2-x+1)*(x^2+x+1)*(x-1)^2).

The programs for A111709, the canonical program `A111709.P16853860314271384865` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111709 has offset 0).

The definition of A111709 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^4-x^7+x^8+x^9-x^11+x^12)/(1-x-x^12+x^13))` (program `A111709.P16853860314271384865`, by `A111709.P16853860314271384865.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111709.P16853860314271384865

`ogf((1-x+x^4-x^7+x^8+x^9-x^11+x^12)/(1-x-x^12+x^13))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111709

/-- `ogf((1-x+x^4-x^7+x^8+x^9-x^11+x^12)/(1-x-x^12+x^13))` -/
def P16853860314271384865.Spec : Prop :=
  ∀ n, P16853860314271384865.a n = A111709 n

theorem P16853860314271384865.correct : P16853860314271384865.Spec := by
  intro n
  simp only [A111709]

end A111709

/-! ## A111709.P4120535823635281991

`A008612(∑[A135313(A035363(n))])`
-/

namespace A111709.P4120535823635281991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 (A035363 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111709.P4120535823635281991

namespace A111709

/-- `A008612(∑[A135313(A035363(n))])` -/
def P4120535823635281991.Spec : Prop :=
  ∀ n, P4120535823635281991.a n = A111709 n

end A111709

/-! ## A111709.P236143930083996647

`A332761(A193536(n)+A057427(n))`
-/

namespace A111709.P236143930083996647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332761 (A193536 n + A057427 n).toNat

end

end A111709.P236143930083996647

namespace A111709

/-- `A332761(A193536(n)+A057427(n))` -/
def P236143930083996647.Spec : Prop :=
  ∀ n, P236143930083996647.a n = A111709 n

end A111709

/-! ## A111709.P5013985387245701847

`A103221(A280913(A329435(n+1)²))`
-/

namespace A111709.P5013985387245701847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A280913 (A329435 (n + 1) ^ 2).toNat).toNat

end

end A111709.P5013985387245701847

namespace A111709

/-- `A103221(A280913(A329435(n+1)²))` -/
def P5013985387245701847.Spec : Prop :=
  ∀ n, P5013985387245701847.a n = A111709 n

end A111709

/-! ## A111709.P14918614689747573038

`∑{d}[A000196(n)-A330942(n), A062494(#)]`
-/

namespace A111709.P14918614689747573038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n - A330942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062494 d

end

end A111709.P14918614689747573038

namespace A111709

/-- `∑{d}[A000196(n)-A330942(n), A062494(#)]` -/
def P14918614689747573038.Spec : Prop :=
  ∀ n, P14918614689747573038.a n = A111709 n

end A111709

/-!
# A111710: Consider the triangle shown below in which the n-th row contains the n smallest numbers greater than those in the previous row such that the arithmetic mean is an integer. Sequence contains the leading diagonal.

The programs for A111710, the canonical program `A111710.P17396893042889266295` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111710 has offset 1).

The definition of A111710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111710.P11838633775361432182

`∑[∑[2-Δ[lcm(2, n)/2]]]`
-/

namespace A111710.P11838633775361432182
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111710.P11838633775361432182

namespace A111710

/-- `∑[∑[2-Δ[lcm(2, n)/2]]]` -/
def P11838633775361432182.Spec : Prop :=
  ∀ n, P11838633775361432182.a n = (A111710 (n + 1) : ℚ)

end A111710

/-! ## A111710.P17396893042889266295

`∑[∑[1-∑[n*(-1)^n]]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111710

/-- `∑[∑[1-∑[n*(-1)^n]]]` -/
def P17396893042889266295.Spec : Prop :=
  ∀ n, P17396893042889266295.a n = A111710 (n + 1)

theorem P17396893042889266295.correct : P17396893042889266295.Spec := by
  intro n
  simp only [A111710, Nat.add_sub_cancel]

end A111710

/-! ## A111710.P6080021839696690131

`floor(∑[3*∑[n]/a(n-1)])` with `a(0)=1`
-/

namespace A111710.P6080021839696690131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A111710.P6080021839696690131

namespace A111710

/-- `floor(∑[3*∑[n]/a(n-1)])` -/
def P6080021839696690131.Spec : Prop :=
  ∀ n, P6080021839696690131.a n = A111710 (n + 1)

end A111710

/-! ## A111710.P18335160259275419287

`∑[∑[n]%(n+1)+1]+∑[n]`
-/

namespace A111710.P18335160259275419287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A111710.P18335160259275419287

namespace A111710

/-- `∑[∑[n]%(n+1)+1]+∑[n]` -/
def P18335160259275419287.Spec : Prop :=
  ∀ n, (P18335160259275419287.a n : ℤ) = A111710 (n + 1)

end A111710

/-! ## A111710.P138319457210599471

`∑[n+1]+C(floor((n+3)/2), 2)`
-/

namespace A111710.P138319457210599471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose ⌊(n + 3 : ℚ) / 2⌋.toNat 2

end

end A111710.P138319457210599471

namespace A111710

/-- `∑[n+1]+C(floor((n+3)/2), 2)` -/
def P138319457210599471.Spec : Prop :=
  ∀ n, (P138319457210599471.a n : ℤ) = A111710 (n + 1)

end A111710

/-! ## A111710.P831039734003472389

`floor(∑[∑[a(n-2)-(-1)^n]])` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A111710.P831039734003472389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111710.P831039734003472389

namespace A111710

/-- `floor(∑[∑[a(n-2)-(-1)^n]])` -/
def P831039734003472389.Spec : Prop :=
  ∀ n, P831039734003472389.a n = A111710 (n + 1)

end A111710

/-! ## A111710.P11486693203036858619

`∑[a(n-2)+5]-a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A111710.P11486693203036858619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A111710.P11486693203036858619

namespace A111710

/-- `∑[a(n-2)+5]-a(n-1)` -/
def P11486693203036858619.Spec : Prop :=
  ∀ n, P11486693203036858619.a n = A111710 (n + 1)

end A111710

/-! ## A111710.P11742033544064301013

`floor(5*((n+1)/2)²-a(n-1))` with `a(0)=1`
-/

namespace A111710.P11742033544064301013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊5 * ((n + 1 : ℚ) / 2) ^ 2 - (a (n - 1) : ℚ)⌋

end

end A111710.P11742033544064301013

namespace A111710

/-- `floor(5*((n+1)/2)²-a(n-1))` -/
def P11742033544064301013.Spec : Prop :=
  ∀ n, P11742033544064301013.a n = A111710 (n + 1)

end A111710

/-! ## A111710.P5483942276347490547

`∑[5*n-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A111710.P5483942276347490547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (5 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A111710.P5483942276347490547

namespace A111710

/-- `∑[5*n-a(n-1)]-a(n-1)` -/
def P5483942276347490547.Spec : Prop :=
  ∀ n, P5483942276347490547.a n = A111710 (n + 1)

end A111710

/-! ## A111710.P16323155404741294215

`A085787(n+1)`
-/

namespace A111710.P16323155404741294215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 (n + 1)

end

end A111710.P16323155404741294215

namespace A111710

/-- `A085787(n+1)` -/
def P16323155404741294215.Spec : Prop :=
  ∀ n, P16323155404741294215.a n = A111710 (n + 1)

end A111710

/-! ## A111710.P9286512048093559052

`record[A085787(abs(1-n))]`
-/

namespace A111710.P9286512048093559052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111710.P9286512048093559052

namespace A111710

/-- `record[A085787(abs(1-n))]` -/
def P9286512048093559052.Spec : Prop :=
  ∀ n, P9286512048093559052.a n = A111710 (n + 1)

end A111710

/-! ## A111710.P9437565440248857275

`(n+1)²-A211539(n)`
-/

namespace A111710.P9437565440248857275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A211539 n

end

end A111710.P9437565440248857275

namespace A111710

/-- `(n+1)²-A211539(n)` -/
def P9437565440248857275.Spec : Prop :=
  ∀ n, P9437565440248857275.a n = A111710 (n + 1)

end A111710

/-! ## A111710.P5527219114604903114

`A165157(n+1)+∑[n]`
-/

namespace A111710.P5527219114604903114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A111710.P5527219114604903114

namespace A111710

/-- `A165157(n+1)+∑[n]` -/
def P5527219114604903114.Spec : Prop :=
  ∀ n, P5527219114604903114.a n = A111710 (n + 1)

end A111710

/-! ## A111710.P1819910966272392983

`A080512(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A111710.P1819910966272392983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080512 (n + 1) + a (n - 1)

end

end A111710.P1819910966272392983

namespace A111710

/-- `A080512(n+1)+a(n-1)` -/
def P1819910966272392983.Spec : Prop :=
  ∀ n, P1819910966272392983.a n = A111710 (n + 1)

end A111710

/-! ## A111710.P12096292723504072525

`A032527(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A111710.P12096292723504072525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032527 (n + 1) - a (n - 1)

end

end A111710.P12096292723504072525

namespace A111710

/-- `A032527(n+1)-a(n-1)` -/
def P12096292723504072525.Spec : Prop :=
  ∀ n, P12096292723504072525.a n = A111710 (n + 1)

end A111710

/-! ## A111710.P2596416026922639709

`(n+1)²-∑[A065423(n+1)]`
-/

namespace A111710.P2596416026922639709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111710.P2596416026922639709

namespace A111710

/-- `(n+1)²-∑[A065423(n+1)]` -/
def P2596416026922639709.Spec : Prop :=
  ∀ n, P2596416026922639709.a n = A111710 (n + 1)

end A111710

/-! ## A111710.P5167407036889662936

`A101881(n)+A093353(n)`
-/

namespace A111710.P5167407036889662936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n + A093353 n

end

end A111710.P5167407036889662936

namespace A111710

/-- `A101881(n)+A093353(n)` -/
def P5167407036889662936.Spec : Prop :=
  ∀ n, P5167407036889662936.a n = A111710 (n + 1)

end A111710

/-! ## A111710.P7302139765322878501

`A028387(n)-A144065(n)`
-/

namespace A111710.P7302139765322878501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n - A144065 n

end

end A111710.P7302139765322878501

namespace A111710

/-- `A028387(n)-A144065(n)` -/
def P7302139765322878501.Spec : Prop :=
  ∀ n, P7302139765322878501.a n = A111710 (n + 1)

end A111710

/-! ## A111710.P7297783671602360020

`A095894(n)-A195020(n)`
-/

namespace A111710.P7297783671602360020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095894 n - A195020 n

end

end A111710.P7297783671602360020

namespace A111710

/-- `A095894(n)-A195020(n)` -/
def P7297783671602360020.Spec : Prop :=
  ∀ n, P7297783671602360020.a n = A111710 (n + 1)

end A111710

/-! ## A111710.P10637527528329781621

`A193053(n)-A135276(n)`
-/

namespace A111710.P10637527528329781621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193053 n - A135276 n

end

end A111710.P10637527528329781621

namespace A111710

/-- `A193053(n)-A135276(n)` -/
def P10637527528329781621.Spec : Prop :=
  ∀ n, P10637527528329781621.a n = A111710 (n + 1)

end A111710

/-!
# A111711: Leading column of triangle mentioned in A111710.

The programs for A111711, the canonical program `A111711.P3275032020224457499` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111711 has offset 1).

The definition of A111711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111711.P3275032020224457499

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=8, a(4)=14`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111711

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P3275032020224457499.Spec : Prop :=
  ∀ n, P3275032020224457499.a n = A111711 (n + 1)

theorem P3275032020224457499.correct : P3275032020224457499.Spec := by
  intro n
  simp only [A111711, Nat.add_sub_cancel]

end A111711

/-! ## A111711.P9258869733437160793

`∑[2*n-gcd(n, ∑[n])]+1`
-/

namespace A111711.P9258869733437160793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A111711.P9258869733437160793

namespace A111711

/-- `∑[2*n-gcd(n, ∑[n])]+1` -/
def P9258869733437160793.Spec : Prop :=
  ∀ n, P9258869733437160793.a n = A111711 (n + 1)

end A111711

/-! ## A111711.P220364964550034045

`∑[2*n-lcm(2, n)/2]+1`
-/

namespace A111711.P220364964550034045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) - (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A111711.P220364964550034045

namespace A111711

/-- `∑[2*n-lcm(2, n)/2]+1` -/
def P220364964550034045.Spec : Prop :=
  ∀ n, P220364964550034045.a n = (A111711 (n + 1) : ℚ)

end A111711

/-! ## A111711.P14029316582841454010

`∑[3/a(n-1)*C(n, 2)]` with `a(0)=1, a(1)=1`
-/

namespace A111711.P14029316582841454010
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 / f1 (n - 1) * (Nat.choose n 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111711.P14029316582841454010

namespace A111711

/-- `∑[3/a(n-1)*C(n, 2)]` -/
def P14029316582841454010.Spec : Prop :=
  ∀ n, P14029316582841454010.a n = (A111711 (n + 1) : ℚ)

end A111711

/-! ## A111711.P17768890644408547681

`∑[n*((-1)^n+5)]/4+1`
-/

namespace A111711.P17768890644408547681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((-1) ^ n + 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4 + 1

end

end A111711.P17768890644408547681

namespace A111711

/-- `∑[n*((-1)^n+5)]/4+1` -/
def P17768890644408547681.Spec : Prop :=
  ∀ n, P17768890644408547681.a n = (A111711 (n + 1) : ℚ)

end A111711

/-! ## A111711.P17743836955597414687

`∑[floor(C(n, a(n-1))/2+n)]` with `a(0)=1`
-/

namespace A111711.P17743836955597414687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(Nat.choose n (f1 (n - 1)).toNat : ℚ) / 2 + (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111711.P17743836955597414687

namespace A111711

/-- `∑[floor(C(n, a(n-1))/2+n)]` -/
def P17743836955597414687.Spec : Prop :=
  ∀ n, P17743836955597414687.a n = A111711 (n + 1)

end A111711

/-! ## A111711.P11403098974905219041

`∑[a(n-2)/(1-2/n)]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A111711.P11403098974905219041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 (n - 2) / (1 - 2 / (n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111711.P11403098974905219041

namespace A111711

/-- `∑[a(n-2)/(1-2/n)]` -/
def P11403098974905219041.Spec : Prop :=
  ∀ n, P11403098974905219041.a n = (A111711 (n + 1) : ℚ)

end A111711

/-! ## A111711.P13428052324238943669

`∑[A257143(n)]`
-/

namespace A111711.P13428052324238943669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111711.P13428052324238943669

namespace A111711

/-- `∑[A257143(n)]` -/
def P13428052324238943669.Spec : Prop :=
  ∀ n, P13428052324238943669.a n = A111711 (n + 1)

end A111711

/-! ## A111711.P843429053251575337

`∑[abs(A280167(n))]`
-/

namespace A111711.P843429053251575337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280167 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111711.P843429053251575337

namespace A111711

/-- `∑[abs(A280167(n))]` -/
def P843429053251575337.Spec : Prop :=
  ∀ n, P843429053251575337.a n = A111711 (n + 1)

end A111711

/-! ## A111711.P7311259291232744991

`ceil(A247643(n)/2)`
-/

namespace A111711.P7311259291232744991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A247643 n : ℚ) / 2⌉

end

end A111711.P7311259291232744991

namespace A111711

/-- `ceil(A247643(n)/2)` -/
def P7311259291232744991.Spec : Prop :=
  ∀ n, P7311259291232744991.a n = A111711 (n + 1)

end A111711

/-! ## A111711.P12235454339151962199

`∑[A184418(n)-n]`
-/

namespace A111711.P12235454339151962199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111711.P12235454339151962199

namespace A111711

/-- `∑[A184418(n)-n]` -/
def P12235454339151962199.Spec : Prop :=
  ∀ n, P12235454339151962199.a n = A111711 (n + 1)

end A111711

/-! ## A111711.P4077501017820536528

`(A220082(n+1)+3)/4`
-/

namespace A111711.P4077501017820536528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220082 (n + 1) + 3 : ℚ) / 4

end

end A111711.P4077501017820536528

namespace A111711

/-- `(A220082(n+1)+3)/4` -/
def P4077501017820536528.Spec : Prop :=
  ∀ n, P4077501017820536528.a n = (A111711 (n + 1) : ℚ)

end A111711

/-! ## A111711.P12602538661369233640

`(A239767(n)+2+n)/2`
-/

namespace A111711.P12602538661369233640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239767 n + 2 + (n : ℤ) : ℚ) / 2

end

end A111711.P12602538661369233640

namespace A111711

/-- `(A239767(n)+2+n)/2` -/
def P12602538661369233640.Spec : Prop :=
  ∀ n, P12602538661369233640.a n = (A111711 (n + 1) : ℚ)

end A111711

/-! ## A111711.P2353301276701971860

`∑[A004277(n)-gcd(n, ∑[n])]`
-/

namespace A111711.P2353301276701971860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111711.P2353301276701971860

namespace A111711

/-- `∑[A004277(n)-gcd(n, ∑[n])]` -/
def P2353301276701971860.Spec : Prop :=
  ∀ n, P2353301276701971860.a n = A111711 (n + 1)

end A111711

/-! ## A111711.P13543741932708526166

`(A271713(n+1)+∑[n])/2`
-/

namespace A111711.P13543741932708526166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271713 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A111711.P13543741932708526166

namespace A111711

/-- `(A271713(n+1)+∑[n])/2` -/
def P13543741932708526166.Spec : Prop :=
  ∀ n, P13543741932708526166.a n = (A111711 (n + 1) : ℚ)

end A111711

/-! ## A111711.P5843070399919408879

`abs((n+1)²-A001318(n)-n)`
-/

namespace A111711.P5843070399919408879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 2 : ℤ) - A001318 n - (n : ℤ)|

end

end A111711.P5843070399919408879

namespace A111711

/-- `abs((n+1)²-A001318(n)-n)` -/
def P5843070399919408879.Spec : Prop :=
  ∀ n, P5843070399919408879.a n = A111711 (n + 1)

end A111711

/-! ## A111711.P9615327648067727265

`∑[A142150(n)+A028310(n)]`
-/

namespace A111711.P9615327648067727265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111711.P9615327648067727265

namespace A111711

/-- `∑[A142150(n)+A028310(n)]` -/
def P9615327648067727265.Spec : Prop :=
  ∀ n, P9615327648067727265.a n = A111711 (n + 1)

end A111711

/-! ## A111711.P16377878342564995360

`∪[A134238(n+1), A192136(n)]`
-/

namespace A111711.P16377878342564995360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111711.P16377878342564995360

namespace A111711

/-- `∪[A134238(n+1), A192136(n)]` -/
def P16377878342564995360.Spec : Prop :=
  ∀ n, (P16377878342564995360.a n : ℤ) = A111711 (n + 1)

end A111711

/-! ## A111711.P7326240599019472290

`∑[A008486(n)/A020639(A008486(n))]`
-/

namespace A111711.P7326240599019472290
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 n : ℚ) / (A020639 (A008486 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111711.P7326240599019472290

namespace A111711

/-- `∑[A008486(n)/A020639(A008486(n))]` -/
def P7326240599019472290.Spec : Prop :=
  ∀ n, P7326240599019472290.a n = (A111711 (n + 1) : ℚ)

end A111711

/-! ## A111711.P17649266035439468129

`(Δ[A212578(n)]+1)/2`
-/

namespace A111711.P17649266035439468129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212578 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A111711.P17649266035439468129

namespace A111711

/-- `(Δ[A212578(n)]+1)/2` -/
def P17649266035439468129.Spec : Prop :=
  ∀ n, P17649266035439468129.a n = (A111711 (n + 1) : ℚ)

end A111711

/-!
# A111712: Arithmetic mean of the n-th row of triangle mentioned in A111710.

The programs for A111712, the canonical program `A111712.P5924832502542303436` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111712 has offset 1).

The definition of A111712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111712.P5924832502542303436

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=10, a(4)=16`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111712

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P5924832502542303436.Spec : Prop :=
  ∀ n, P5924832502542303436.a n = A111712 (n + 1)

theorem P5924832502542303436.correct : P5924832502542303436.Spec := by
  intro n
  simp only [A111712, Nat.add_sub_cancel]

end A111712

/-! ## A111712.P15462082296940713939

`A111711(n+1)+floor((n+1)/2)`
-/

namespace A111712.P15462082296940713939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111711 (n + 1) + ⌊(n + 1 : ℚ) / 2⌋

end

end A111712.P15462082296940713939

namespace A111712

/-- `A111711(n+1)+floor((n+1)/2)` -/
def P15462082296940713939.Spec : Prop :=
  ∀ n, P15462082296940713939.a n = A111712 (n + 1)

end A111712

/-! ## A111712.P16687247395318878609

`∑[n+1]+C(floor(n/2), 2)`
-/

namespace A111712.P16687247395318878609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose ⌊(n : ℚ) / 2⌋.toNat 2

end

end A111712.P16687247395318878609

namespace A111712

/-- `∑[n+1]+C(floor(n/2), 2)` -/
def P16687247395318878609.Spec : Prop :=
  ∀ n, (P16687247395318878609.a n : ℤ) = A111712 (n + 1)

end A111712

/-! ## A111712.P1207174626958411730

`n²-∑[(n-2)/gcd(2, n)]`
-/

namespace A111712.P1207174626958411730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111712.P1207174626958411730

namespace A111712

/-- `n²-∑[(n-2)/gcd(2, n)]` -/
def P1207174626958411730.Spec : Prop :=
  ∀ n, P1207174626958411730.a n = (A111712 (n + 1) : ℚ)

end A111712

/-! ## A111712.P579616409898778677

`floor(a(n-2)+5*n/2)` with `a(0)=1, a(1)=3`
-/

namespace A111712.P579616409898778677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊(a (n - 2) : ℚ) + 5 * ((n : ℚ) / 2)⌋

end

end A111712.P579616409898778677

namespace A111712

/-- `floor(a(n-2)+5*n/2)` -/
def P579616409898778677.Spec : Prop :=
  ∀ n, P579616409898778677.a n = A111712 (n + 1)

end A111712

/-! ## A111712.P3722442311196917722

`∪[∑[n+2], ∑[n]]+∑[n+1]-n`
-/

namespace A111712.P3722442311196917722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n + ∑ j ∈ Finset.range (n + 1), f5 j : ℕ) : ℤ) - (n : ℤ)

end

end A111712.P3722442311196917722

namespace A111712

/-- `∪[∑[n+2], ∑[n]]+∑[n+1]-n` -/
def P3722442311196917722.Spec : Prop :=
  ∀ n, P3722442311196917722.a n = A111712 (n + 1)

end A111712

/-! ## A111712.P11919020190104888929

`∑[ogf((1+3x+2x^2-x^3)/(1-2x^2+x^4))]-n`
-/

namespace A111712.P11919020190104888929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2, -1] [1, 0, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A111712.P11919020190104888929

namespace A111712

/-- `∑[ogf((1+3x+2x^2-x^3)/(1-2x^2+x^4))]-n` -/
def P11919020190104888929.Spec : Prop :=
  ∀ n, P11919020190104888929.a n = A111712 (n + 1)

end A111712

/-! ## A111712.P8142861118319152190

`∑[(n*C(3*n, 2))%comp[3*n]+1]`
-/

namespace A111712.P8142861118319152190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (3 * n) 2 % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111712.P8142861118319152190

namespace A111712

/-- `∑[(n*C(3*n, 2))%comp[3*n]+1]` -/
def P8142861118319152190.Spec : Prop :=
  ∀ n, (P8142861118319152190.a n : ℤ) = A111712 (n + 1)

end A111712

/-! ## A111712.P12261325397498118654

`∑[(n/2)^∑[(-1)^n]+n+1]-n`
-/

namespace A111712.P12261325397498118654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ) + (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℚ)

end

end A111712.P12261325397498118654

namespace A111712

/-- `∑[(n/2)^∑[(-1)^n]+n+1]-n` -/
def P12261325397498118654.Spec : Prop :=
  ∀ n, P12261325397498118654.a n = (A111712 (n + 1) : ℚ)

end A111712

/-! ## A111712.P3620005235654397239

`abs(n-∑[A071054(n)])`
-/

namespace A111712.P3620005235654397239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A111712.P3620005235654397239

namespace A111712

/-- `abs(n-∑[A071054(n)])` -/
def P3620005235654397239.Spec : Prop :=
  ∀ n, P3620005235654397239.a n = A111712 (n + 1)

end A111712

/-! ## A111712.P2676278022364438191

`∑[gcd(n, A065033(n))+n]`
-/

namespace A111712.P2676278022364438191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A065033 n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111712.P2676278022364438191

namespace A111712

/-- `∑[gcd(n, A065033(n))+n]` -/
def P2676278022364438191.Spec : Prop :=
  ∀ n, (P2676278022364438191.a n : ℤ) = A111712 (n + 1)

end A111712

/-! ## A111712.P14693832246674817972

`∑[A028310(A142150(n))+n]`
-/

namespace A111712.P14693832246674817972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A142150 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111712.P14693832246674817972

namespace A111712

/-- `∑[A028310(A142150(n))+n]` -/
def P14693832246674817972.Spec : Prop :=
  ∀ n, P14693832246674817972.a n = A111712 (n + 1)

end A111712

/-! ## A111712.P9841068919911792849

`∪[A140066(n+1), A005891(n)]`
-/

namespace A111712.P9841068919911792849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111712.P9841068919911792849

namespace A111712

/-- `∪[A140066(n+1), A005891(n)]` -/
def P9841068919911792849.Spec : Prop :=
  ∀ n, (P9841068919911792849.a n : ℤ) = A111712 (n + 1)

end A111712

/-! ## A111712.P18305515558091355644

`∑[abs(A004277(n)-A006370(n))]`
-/

namespace A111712.P18305515558091355644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004277 n - A006370 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111712.P18305515558091355644

namespace A111712

/-- `∑[abs(A004277(n)-A006370(n))]` -/
def P18305515558091355644.Spec : Prop :=
  ∀ n, P18305515558091355644.a n = A111712 (n + 1)

end A111712

/-! ## A111712.P4594546397411094831

`∑[A000007(n)+2*n-A029578(n)]`
-/

namespace A111712.P4594546397411094831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (2 * n : ℤ) - A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111712.P4594546397411094831

namespace A111712

/-- `∑[A000007(n)+2*n-A029578(n)]` -/
def P4594546397411094831.Spec : Prop :=
  ∀ n, P4594546397411094831.a n = A111712 (n + 1)

end A111712

/-! ## A111712.P12923140675055706608

`∑[A057979(C(2, n)+n+1)+n]`
-/

namespace A111712.P12923140675055706608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Nat.choose 2 n + (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111712.P12923140675055706608

namespace A111712

/-- `∑[A057979(C(2, n)+n+1)+n]` -/
def P12923140675055706608.Spec : Prop :=
  ∀ n, P12923140675055706608.a n = A111712 (n + 1)

end A111712

/-! ## A111712.P9658420117666063779

`∑[A152271(A014681(n))+n]`
-/

namespace A111712.P9658420117666063779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A014681 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111712.P9658420117666063779

namespace A111712

/-- `∑[A152271(A014681(n))+n]` -/
def P9658420117666063779.Spec : Prop :=
  ∀ n, P9658420117666063779.a n = A111712 (n + 1)

end A111712

/-! ## A111712.P5676343341661333682

`∑[A057979(n+1)+A028310(n)]`
-/

namespace A111712.P5676343341661333682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (n + 1) + A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111712.P5676343341661333682

namespace A111712

/-- `∑[A057979(n+1)+A028310(n)]` -/
def P5676343341661333682.Spec : Prop :=
  ∀ n, P5676343341661333682.a n = A111712 (n + 1)

end A111712

/-! ## A111712.P10528249580171005939

`∑[A110654(n)+A110654(A257088(n))]`
-/

namespace A111712.P10528249580171005939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A110654 (A257088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111712.P10528249580171005939

namespace A111712

/-- `∑[A110654(n)+A110654(A257088(n))]` -/
def P10528249580171005939.Spec : Prop :=
  ∀ n, P10528249580171005939.a n = A111712 (n + 1)

end A111712

/-! ## A111712.P3594158037601991183

`∑[A123108(2*n)+A057979(n+1)]`
-/

namespace A111712.P3594158037601991183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) + A057979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111712.P3594158037601991183

namespace A111712

/-- `∑[A123108(2*n)+A057979(n+1)]` -/
def P3594158037601991183.Spec : Prop :=
  ∀ n, P3594158037601991183.a n = A111712 (n + 1)

end A111712

/-!
# A111713: Number of reduced tree pairs of n-carets.

The programs for A111713, there is no canonical definition to state claims against.
-/

/-! ## A111713.P11991815996055606266

`A002264(A137972(n)+A115216(n))`
-/

namespace A111713.P11991815996055606266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A137972 n + A115216 n).toNat

end

end A111713.P11991815996055606266

/-! ## A111713.P638805245400650516

`A002264(A137972(n)+A131452(n))`
-/

namespace A111713.P638805245400650516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A137972 n + A131452 n).toNat

end

end A111713.P638805245400650516

/-!
# A111715: Sum of the squares of the first n squarefree numbers.

The programs for A111715, there is no canonical definition to state claims against.
-/

/-! ## A111715.P11658470212680725307

`∑[eq[1, ∏{e}[n, #]]²]`
-/

namespace A111715.P11658470212680725307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111715.P11658470212680725307

/-! ## A111715.P13037495064829614072

`∑[lt[∏{e}[n, #], 2]²]`
-/

namespace A111715.P13037495064829614072
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111715.P13037495064829614072

/-! ## A111715.P16880971345158162692

`∑[record[n*∏{p}[n, #]]]`
-/

namespace A111715.P16880971345158162692
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∏ p ∈ Nat.primeFactors (f3 n), p)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111715.P16880971345158162692

/-! ## A111715.P17256276488147148275

`∑[eq[1, ∏{e}[n, #-1]]]`
-/

namespace A111715.P17256276488147148275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), ((Nat.factorization (f4 n) p : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111715.P17256276488147148275

/-! ## A111715.P17150295127015749671

`∑[record[(n/∏{e}[n, #])²]]`
-/

namespace A111715.P17150295127015749671
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p : ℕ) : ℚ)) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111715.P17150295127015749671

/-!
# A111721: a(n) = a(n-1) + a(n-2) + 5 where a(0) = a(1) = 1.

The programs for A111721, the canonical program `A111721.P8996990318149202434` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111721 has offset 0).

The definition of A111721 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+5` (program `A111721.P8996990318149202434`, by `A111721.P8996990318149202434.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111721.P8996990318149202434

`a(n-1)+a(n-2)+5` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111721

/-- `a(n-1)+a(n-2)+5` -/
def P8996990318149202434.Spec : Prop :=
  ∀ n, (P8996990318149202434.a n : ℤ) = A111721 n

theorem P8996990318149202434.correct : P8996990318149202434.Spec := by
  intro n
  simp only [A111721]

end A111721

/-! ## A111721.P9627371575905572103

`ogf((1-x+5x^2)/(1-2x+x^3))`
-/

namespace A111721.P9627371575905572103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 5] [1, -2, 0, 1] n

end

end A111721.P9627371575905572103

namespace A111721

/-- `ogf((1-x+5x^2)/(1-2x+x^3))` -/
def P9627371575905572103.Spec : Prop :=
  ∀ n, P9627371575905572103.a n = A111721 n

end A111721

/-! ## A111721.P344694725708747044

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A111721.P344694725708747044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A111721.P344694725708747044

namespace A111721

/-- `2*a(n-1)-a(n-3)` -/
def P344694725708747044.Spec : Prop :=
  ∀ n, P344694725708747044.a n = A111721 n

end A111721

/-! ## A111721.P271002040378028929

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A111721.P271002040378028929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A111721.P271002040378028929

namespace A111721

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P271002040378028929.Spec : Prop :=
  ∀ n, P271002040378028929.a n = A111721 n

end A111721

/-! ## A111721.P1093610511309732277

`2*A111314(n)-1`
-/

namespace A111721.P1093610511309732277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111314 n - 1

end

end A111721.P1093610511309732277

namespace A111721

/-- `2*A111314(n)-1` -/
def P1093610511309732277.Spec : Prop :=
  ∀ n, P1093610511309732277.a n = A111721 n

end A111721

/-! ## A111721.P18279961648674547834

`A022089(n+1)-5`
-/

namespace A111721.P18279961648674547834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 (n + 1) - 5

end

end A111721.P18279961648674547834

namespace A111721

/-- `A022089(n+1)-5` -/
def P18279961648674547834.Spec : Prop :=
  ∀ n, P18279961648674547834.a n = A111721 n

end A111721

/-! ## A111721.P9686018211939470016

`3*A001595(n)-2`
-/

namespace A111721.P9686018211939470016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001595 n - 2

end

end A111721.P9686018211939470016

namespace A111721

/-- `3*A001595(n)-2` -/
def P9686018211939470016.Spec : Prop :=
  ∀ n, P9686018211939470016.a n = A111721 n

end A111721

/-! ## A111721.P4118903806555512949

`2*A377628(n)-3`
-/

namespace A111721.P4118903806555512949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A377628 n - 3

end

end A111721.P4118903806555512949

namespace A111721

/-- `2*A377628(n)-3` -/
def P4118903806555512949.Spec : Prop :=
  ∀ n, P4118903806555512949.a n = A111721 n

end A111721

/-! ## A111721.P9759365493559995870

`A192958(n)+2*n`
-/

namespace A111721.P9759365493559995870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192958 n + (2 * n : ℤ)

end

end A111721.P9759365493559995870

namespace A111721

/-- `A192958(n)+2*n` -/
def P9759365493559995870.Spec : Prop :=
  ∀ n, P9759365493559995870.a n = A111721 n

end A111721

/-! ## A111721.P15293220390585635255

`∑[3*A006355(n)]-2`
-/

namespace A111721.P15293220390585635255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A111721.P15293220390585635255

namespace A111721

/-- `∑[3*A006355(n)]-2` -/
def P15293220390585635255.Spec : Prop :=
  ∀ n, P15293220390585635255.a n = A111721 n

end A111721

/-! ## A111721.P1677161369504593047

`3*A019274(n+1)+1`
-/

namespace A111721.P1677161369504593047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A019274 (n + 1) + 1

end

end A111721.P1677161369504593047

namespace A111721

/-- `3*A019274(n+1)+1` -/
def P1677161369504593047.Spec : Prop :=
  ∀ n, P1677161369504593047.a n = A111721 n

end A111721

/-! ## A111721.P15233660895990166233

`6*A000045(n+1)-5`
-/

namespace A111721.P15233660895990166233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000045 (n + 1) - 5

end

end A111721.P15233660895990166233

namespace A111721

/-- `6*A000045(n+1)-5` -/
def P15233660895990166233.Spec : Prop :=
  ∀ n, P15233660895990166233.a n = A111721 n

end A111721

/-! ## A111721.P1306380365278487475

`A210678(n)-A065220(n)`
-/

namespace A111721.P1306380365278487475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 n - A065220 n

end

end A111721.P1306380365278487475

namespace A111721

/-- `A210678(n)-A065220(n)` -/
def P1306380365278487475.Spec : Prop :=
  ∀ n, P1306380365278487475.a n = A111721 n

end A111721

/-! ## A111721.P8781777546178101339

`A192969(n)-A210673(n)`
-/

namespace A111721.P8781777546178101339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n - A210673 n

end

end A111721.P8781777546178101339

namespace A111721

/-- `A192969(n)-A210673(n)` -/
def P8781777546178101339.Spec : Prop :=
  ∀ n, P8781777546178101339.a n = A111721 n

end A111721

/-! ## A111721.P1727558995751701463

`A210731(n)+1-A065220(n)`
-/

namespace A111721.P1727558995751701463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 n + (1 - A065220 n)

end

end A111721.P1727558995751701463

namespace A111721

/-- `A210731(n)+1-A065220(n)` -/
def P1727558995751701463.Spec : Prop :=
  ∀ n, P1727558995751701463.a n = A111721 n

end A111721

/-! ## A111721.P11188110410604490388

`A182415(n)+A212804(n)-1`
-/

namespace A111721.P11188110410604490388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n + (A212804 n - 1)

end

end A111721.P11188110410604490388

namespace A111721

/-- `A182415(n)+A212804(n)-1` -/
def P11188110410604490388.Spec : Prop :=
  ∀ n, P11188110410604490388.a n = A111721 n

end A111721

/-! ## A111721.P885901937469813553

`A192761(n)+1-A210673(n)`
-/

namespace A111721.P885901937469813553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 n + (1 - A210673 n)

end

end A111721.P885901937469813553

namespace A111721

/-- `A192761(n)+1-A210673(n)` -/
def P885901937469813553.Spec : Prop :=
  ∀ n, P885901937469813553.a n = A111721 n

end A111721

/-! ## A111721.P12053897072760257035

`A000032(n)+A171516(n)-2`
-/

namespace A111721.P12053897072760257035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A171516 n - 2)

end

end A111721.P12053897072760257035

namespace A111721

/-- `A000032(n)+A171516(n)-2` -/
def P12053897072760257035.Spec : Prop :=
  ∀ n, P12053897072760257035.a n = A111721 n

end A111721

/-! ## A111721.P3029693957330349348

`A192954(n)-2*A065220(n)`
-/

namespace A111721.P3029693957330349348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 n - 2 * A065220 n

end

end A111721.P3029693957330349348

namespace A111721

/-- `A192954(n)-2*A065220(n)` -/
def P3029693957330349348.Spec : Prop :=
  ∀ n, P3029693957330349348.a n = A111721 n

end A111721

/-! ## A111721.P15803169909939943578

`A000071(n+1)+A182415(n)-A000045(n)`
-/

namespace A111721.P15803169909939943578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A182415 n - A000045 n)

end

end A111721.P15803169909939943578

namespace A111721

/-- `A000071(n+1)+A182415(n)-A000045(n)` -/
def P15803169909939943578.Spec : Prop :=
  ∀ n, P15803169909939943578.a n = A111721 n

end A111721

/-!
# A111723: Number of partitions of an n-set with an odd number of blocks of size 1.

The programs for A111723, there is no canonical definition to state claims against.
-/

/-! ## A111723.P14653086670450582680

`record[A095149(n)]-A111724(n+1)`
-/

namespace A111723.P14653086670450582680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A111724 (n + 1)

end

end A111723.P14653086670450582680

/-! ## A111723.P14223401854373043787

`record[A108087(n)]-A111724(n+1)`
-/

namespace A111723.P14223401854373043787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A111724 (n + 1)

end

end A111723.P14223401854373043787

/-! ## A111723.P2042185458460881354

`record[A186020(n)]-A111724(n+1)`
-/

namespace A111723.P2042185458460881354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A111724 (n + 1)

end

end A111723.P2042185458460881354

/-! ## A111723.P11116672216774919574

`record[A212431(n)]-A111724(n+1)`
-/

namespace A111723.P11116672216774919574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A111724 (n + 1)

end

end A111723.P11116672216774919574

/-! ## A111723.P14066761944985812954

`record[A327884(n)]-A111724(n+1)`
-/

namespace A111723.P14066761944985812954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A111724 (n + 1)

end

end A111723.P14066761944985812954

/-! ## A111723.P11350599951219355770

`record[A346500(n)]-A111724(n+1)`
-/

namespace A111723.P11350599951219355770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A111724 (n + 1)

end

end A111723.P11350599951219355770

/-! ## A111723.P6303732451975869996

`A000110(n+1)-A111724(n+1)`
-/

namespace A111723.P6303732451975869996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - A111724 (n + 1)

end

end A111723.P6303732451975869996

/-! ## A111723.P14443535480183114773

`A111724(n+1)-A126617(n+1)`
-/

namespace A111723.P14443535480183114773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111724 (n + 1) - A126617 (n + 1)

end

end A111723.P14443535480183114773

/-!
# A111724: Number of partitions of an n-set with an even number of blocks of size 1.

The programs for A111724, there is no canonical definition to state claims against.
-/

/-! ## A111724.P18236292763223016611

`A224271(n+1)-A126617(n)`
-/

namespace A111724.P18236292763223016611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224271 (n + 1) - A126617 n

end

end A111724.P18236292763223016611

/-! ## A111724.P6280013183418565169

`record[A095149(n)]-A111723(n+1)`
-/

namespace A111724.P6280013183418565169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A111723 (n + 1)

end

end A111724.P6280013183418565169

/-! ## A111724.P4314881612679974205

`record[A108087(n)]-A111723(n+1)`
-/

namespace A111724.P4314881612679974205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A111723 (n + 1)

end

end A111724.P4314881612679974205

/-! ## A111724.P17691154353191529161

`record[A186020(n)]-A111723(n+1)`
-/

namespace A111724.P17691154353191529161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A111723 (n + 1)

end

end A111724.P17691154353191529161

/-! ## A111724.P1729422335516770568

`record[A212431(n)]-A111723(n+1)`
-/

namespace A111724.P1729422335516770568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A111723 (n + 1)

end

end A111724.P1729422335516770568

/-! ## A111724.P16556148654641688428

`record[A327884(n)]-A111723(n+1)`
-/

namespace A111724.P16556148654641688428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A111723 (n + 1)

end

end A111724.P16556148654641688428

/-! ## A111724.P5691948692791554206

`record[A346500(n)]-A111723(n+1)`
-/

namespace A111724.P5691948692791554206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A111723 (n + 1)

end

end A111724.P5691948692791554206

/-! ## A111724.P1862302195230935964

`A000110(n+1)-A111723(n+1)`
-/

namespace A111724.P1862302195230935964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - A111723 (n + 1)

end

end A111724.P1862302195230935964

/-!
# A111725: Number of residues modulo n of the maximum order.

The programs for A111725, there is no canonical definition to state claims against.
-/

/-! ## A111725.P2791789332328730107

`A252911(A162578(n+1))`
-/

namespace A111725.P2791789332328730107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252911 (A162578 (n + 1)).toNat

end

end A111725.P2791789332328730107

/-! ## A111725.P15289784387504877090

`A252911(∑[A002322(n+1)])`
-/

namespace A111725.P15289784387504877090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252911 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111725.P15289784387504877090

/-! ## A111725.P70815213283376386

`A252911(∑[A263027(n+1)-1])`
-/

namespace A111725.P70815213283376386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263027 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252911 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111725.P70815213283376386

/-! ## A111725.P4377597473678315598

`A252911(∑[∑{d}[n+1, A369700(#)]])`
-/

namespace A111725.P4377597473678315598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A369700 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252911 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111725.P4377597473678315598

/-! ## A111725.P2769204870082012250

`A252911(∑[1-A277127(n+1)+n])`
-/

namespace A111725.P2769204870082012250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A277127 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252911 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111725.P2769204870082012250

/-! ## A111725.P10702018303585960430

`A252911(∑[A000010(n+1)-A104194(n+1)])`
-/

namespace A111725.P10702018303585960430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A104194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252911 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111725.P10702018303585960430

/-! ## A111725.P9222060311356361832

`A252911(∑[A000040(n+1)-A104193(n+1)])`
-/

namespace A111725.P9222060311356361832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A104193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252911 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111725.P9222060311356361832

/-! ## A111725.P6463037306246027130

`A252911(∑[A134198(n+1)-A051903(n+1)])`
-/

namespace A111725.P6463037306246027130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134198 (n + 1) - A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252911 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111725.P6463037306246027130

/-! ## A111725.P9320099651120308669

`A252911(∑[A104192(n+1)-A104195(n+1)])`
-/

namespace A111725.P9320099651120308669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104192 (n + 1) - A104195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252911 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111725.P9320099651120308669

/-! ## A111725.P7452695203196399794

`A252911(∑[A000010(n+1)/A034380(n+1)])`
-/

namespace A111725.P7452695203196399794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252911 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A111725.P7452695203196399794

/-! ## A111725.P16604127962223468908

`A252911(∑[A007434(n+1)/A220345(n+1)])`
-/

namespace A111725.P16604127962223468908
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A220345 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252911 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A111725.P16604127962223468908

/-! ## A111725.P17247206824368747487

`A252911(eq[A019425(n), A252911(n+1)])`
-/

namespace A111725.P17247206824368747487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252911 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111725.P17247206824368747487

/-!
# A111726: Values of m corresponding to A111227.

The programs for A111726, there is no canonical definition to state claims against.
-/

/-! ## A111726.P10454075028683892548

`A019294(A111227(n+1))`
-/

namespace A111726.P10454075028683892548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019294 (A111227 (n + 1)).toNat

end

end A111726.P10454075028683892548

/-! ## A111726.P17617867386965980744

`A019294(record[(n+3)%A019294(n+3)])`
-/

namespace A111726.P17617867386965980744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A019294 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019294 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111726.P17617867386965980744

/-! ## A111726.P13052406111082975564

`A019294(lt[n+1, A019294(n+1)]+1)`
-/

namespace A111726.P13052406111082975564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019294 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A111726.P13052406111082975564

/-!
# A111732: Sum of the squares of the first n nonsquarefree numbers (A013929).

The programs for A111732, there is no canonical definition to state claims against.
-/

/-! ## A111732.P4244137167723270223

`∑[record[A105570(n)²]]`
-/

namespace A111732.P4244137167723270223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111732.P4244137167723270223

/-! ## A111732.P17568278930153439074

`∑[comp[A364900(n)]²]`
-/

namespace A111732.P17568278930153439074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364900 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111732.P17568278930153439074

/-! ## A111732.P7690291650790756850

`∑[comp[A005117(n+1)]²]`
-/

namespace A111732.P7690291650790756850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111732.P7690291650790756850

/-! ## A111732.P12678093492110814942

`∑[comp[A007913(n+1)]²]`
-/

namespace A111732.P12678093492110814942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111732.P12678093492110814942

/-! ## A111732.P5476191324180602068

`∑[comp[A007947(n+1)]²]`
-/

namespace A111732.P5476191324180602068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111732.P5476191324180602068

/-!
# A111733: a(n) = a(n-1) + a(n-2) + 7 where a(0) = a(1) = 1.

The programs for A111733, the canonical program `A111733.P2359672636634858164` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111733 has offset 0).

The definition of A111733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+7` (program `A111733.P2359672636634858164`, by `A111733.P2359672636634858164.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111733.P2359672636634858164

`a(n-1)+a(n-2)+7` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111733

/-- `a(n-1)+a(n-2)+7` -/
def P2359672636634858164.Spec : Prop :=
  ∀ n, (P2359672636634858164.a n : ℤ) = A111733 n

theorem P2359672636634858164.correct : P2359672636634858164.Spec := by
  intro n
  simp only [A111733]

end A111733

/-! ## A111733.P15646399701592123949

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=9`
-/

namespace A111733.P15646399701592123949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 9] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A111733.P15646399701592123949

namespace A111733

/-- `2*a(n-1)-a(n-3)` -/
def P15646399701592123949.Spec : Prop :=
  ∀ n, P15646399701592123949.a n = A111733 n

end A111733

/-! ## A111733.P11034966748459865486

`8*A000045(n+1)-7`
-/

namespace A111733.P11034966748459865486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000045 (n + 1) - 7

end

end A111733.P11034966748459865486

namespace A111733

/-- `8*A000045(n+1)-7` -/
def P11034966748459865486.Spec : Prop :=
  ∀ n, P11034966748459865486.a n = A111733 n

end A111733

/-! ## A111733.P17525117275676416617

`ogf((1-x+7x^2)/(1-2x+x^3))`
-/

namespace A111733.P17525117275676416617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 7] [1, -2, 0, 1] n

end

end A111733.P17525117275676416617

namespace A111733

/-- `ogf((1-x+7x^2)/(1-2x+x^3))` -/
def P17525117275676416617.Spec : Prop :=
  ∀ n, P17525117275676416617.a n = A111733 n

end A111733

/-! ## A111733.P16108291021344846380

`a(n-1)-xor(7, -a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A111733.P16108291021344846380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - Int.xor 7 (-a (n - 2))

end

end A111733.P16108291021344846380

namespace A111733

/-- `a(n-1)-xor(7, -a(n-2))` -/
def P16108291021344846380.Spec : Prop :=
  ∀ n, P16108291021344846380.a n = A111733 n

end A111733

/-! ## A111733.P3427375532905462841

`A022091(n+1)-7`
-/

namespace A111733.P3427375532905462841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 (n + 1) - 7

end

end A111733.P3427375532905462841

namespace A111733

/-- `A022091(n+1)-7` -/
def P3427375532905462841.Spec : Prop :=
  ∀ n, P3427375532905462841.a n = A111733 n

end A111733

/-! ## A111733.P12387060262377114910

`4*A001595(n)-3`
-/

namespace A111733.P12387060262377114910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001595 n - 3

end

end A111733.P12387060262377114910

namespace A111733

/-- `4*A001595(n)-3` -/
def P12387060262377114910.Spec : Prop :=
  ∀ n, P12387060262377114910.a n = A111733 n

end A111733

/-! ## A111733.P1071061431360593244

`2*A022403(n)-5`
-/

namespace A111733.P1071061431360593244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022403 n - 5

end

end A111733.P1071061431360593244

namespace A111733

/-- `2*A022403(n)-5` -/
def P1071061431360593244.Spec : Prop :=
  ∀ n, P1071061431360593244.a n = A111733 n

end A111733

/-! ## A111733.P16701234226217215801

`2*Δ[A192952(n)]-1`
-/

namespace A111733.P16701234226217215801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - 1

end

end A111733.P16701234226217215801

namespace A111733

/-- `2*Δ[A192952(n)]-1` -/
def P16701234226217215801.Spec : Prop :=
  ∀ n, P16701234226217215801.a n = A111733 n

end A111733

/-! ## A111733.P9887722264498261797

`4*A019274(n+1)+1`
-/

namespace A111733.P9887722264498261797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A019274 (n + 1) + 1

end

end A111733.P9887722264498261797

namespace A111733

/-- `4*A019274(n+1)+1` -/
def P9887722264498261797.Spec : Prop :=
  ∀ n, P9887722264498261797.a n = A111733 n

end A111733

/-! ## A111733.P11415243671285355208

`8*A000071(n+1)+1`
-/

namespace A111733.P11415243671285355208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000071 (n + 1) + 1

end

end A111733.P11415243671285355208

namespace A111733

/-- `8*A000071(n+1)+1` -/
def P11415243671285355208.Spec : Prop :=
  ∀ n, P11415243671285355208.a n = A111733 n

end A111733

/-! ## A111733.P13117337592758486789

`a(n-1)+4*A006355(n)` with `a(0)=1`
-/

namespace A111733.P13117337592758486789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 * A006355 n

end

end A111733.P13117337592758486789

namespace A111733

/-- `a(n-1)+4*A006355(n)` -/
def P13117337592758486789.Spec : Prop :=
  ∀ n, P13117337592758486789.a n = A111733 n

end A111733

/-! ## A111733.P13454958145405853599

`A210729(n)-A210673(n)`
-/

namespace A111733.P13454958145405853599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210729 n - A210673 n

end

end A111733.P13454958145405853599

namespace A111733

/-- `A210729(n)-A210673(n)` -/
def P13454958145405853599.Spec : Prop :=
  ∀ n, P13454958145405853599.a n = A111733 n

end A111733

/-! ## A111733.P917621080751616669

`A111721(n)+A019274(n+1)`
-/

namespace A111733.P917621080751616669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111721 n + A019274 (n + 1)

end

end A111733.P917621080751616669

namespace A111733

/-- `A111721(n)+A019274(n+1)` -/
def P917621080751616669.Spec : Prop :=
  ∀ n, P917621080751616669.a n = A111733 n

end A111733

/-! ## A111733.P394080006739213569

`A210675(n)+1-A210673(n)`
-/

namespace A111733.P394080006739213569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210675 n + (1 - A210673 n)

end

end A111733.P394080006739213569

namespace A111733

/-- `A210675(n)+1-A210673(n)` -/
def P394080006739213569.Spec : Prop :=
  ∀ n, P394080006739213569.a n = A111733 n

end A111733

/-! ## A111733.P10430398347491446428

`2*A171516(n)-A001588(n)`
-/

namespace A111733.P10430398347491446428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171516 n - A001588 n

end

end A111733.P10430398347491446428

namespace A111733

/-- `2*A171516(n)-A001588(n)` -/
def P10430398347491446428.Spec : Prop :=
  ∀ n, P10430398347491446428.a n = A111733 n

end A111733

/-! ## A111733.P5322524622531518976

`A192960(n)-2*A210673(n)`
-/

namespace A111733.P5322524622531518976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192960 n - 2 * A210673 n

end

end A111733.P5322524622531518976

namespace A111733

/-- `A192960(n)-2*A210673(n)` -/
def P5322524622531518976.Spec : Prop :=
  ∀ n, P5322524622531518976.a n = A111733 n

end A111733

/-! ## A111733.P7848982998016387736

`A210729(n)+A210729(n)-A192960(n)`
-/

namespace A111733.P7848982998016387736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210729 n + (A210729 n - A192960 n)

end

end A111733.P7848982998016387736

namespace A111733

/-- `A210729(n)+A210729(n)-A192960(n)` -/
def P7848982998016387736.Spec : Prop :=
  ∀ n, P7848982998016387736.a n = A111733 n

end A111733

/-! ## A111733.P148324170603243588

`A000045(n+1)+A192762(n)-A210673(n)`
-/

namespace A111733.P148324170603243588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A192762 n - A210673 n)

end

end A111733.P148324170603243588

namespace A111733

/-- `A000045(n+1)+A192762(n)-A210673(n)` -/
def P148324170603243588.Spec : Prop :=
  ∀ n, P148324170603243588.a n = A111733 n

end A111733

/-! ## A111733.P1986950324796196993

`A000071(n+1)+A111721(n)+A000071(n+1)`
-/

namespace A111733.P1986950324796196993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A111721 n + A000071 (n + 1))

end

end A111733.P1986950324796196993

namespace A111733

/-- `A000071(n+1)+A111721(n)+A000071(n+1)` -/
def P1986950324796196993.Spec : Prop :=
  ∀ n, P1986950324796196993.a n = A111733 n

end A111733

/-!
# A111734: Expansion of (1-x)*(2*x^2+2*x+1) / ((x^2-x-1)*(x^2+x+1)).

The programs for A111734, the canonical program `A111734.P7498938481571769222` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111734 has offset 1).

The definition of A111734 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-1-x+2x^3)/(1+2x+x^2-x^4))` (program `A111734.P7498938481571769222`, by `A111734.P7498938481571769222.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111734.P7498938481571769222

`ogf((-1-x+2x^3)/(1+2x+x^2-x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111734

/-- `ogf((-1-x+2x^3)/(1+2x+x^2-x^4))` -/
def P7498938481571769222.Spec : Prop :=
  ∀ n, P7498938481571769222.a n = A111734 (n + 1)

theorem P7498938481571769222.correct : P7498938481571769222.Spec := by
  intro n
  simp only [A111734, Nat.add_sub_cancel]

end A111734

/-! ## A111734.P495135364154829237

`(-1)^(n+1)/2*A007039(n+1)`
-/

namespace A111734.P495135364154829237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (n + 1) : ℚ) / 2 * (A007039 (n + 1) : ℚ)

end

end A111734.P495135364154829237

namespace A111734

/-- `(-1)^(n+1)/2*A007039(n+1)` -/
def P495135364154829237.Spec : Prop :=
  ∀ n, P495135364154829237.a n = (A111734 (n + 1) : ℚ)

end A111734

/-! ## A111734.P4227379648675872862

`A061084(n)-(a(n-1)-(char[1]-a(n-2)))` with `a(0)=-1, a(1)=1`
-/

namespace A111734.P4227379648675872862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  A061084 n - (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2)))

end

end A111734.P4227379648675872862

namespace A111734

/-- `A061084(n)-(a(n-1)-(char[1]-a(n-2)))` -/
def P4227379648675872862.Spec : Prop :=
  ∀ n, P4227379648675872862.a n = A111734 (n + 1)

end A111734

/-! ## A111734.P12314175265102162575

`Δ[A112469(n)+A106511(n)]`
-/

namespace A111734.P12314175265102162575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 n + A106511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111734.P12314175265102162575

namespace A111734

/-- `Δ[A112469(n)+A106511(n)]` -/
def P12314175265102162575.Spec : Prop :=
  ∀ n, P12314175265102162575.a n = A111734 (n + 1)

end A111734

/-!
# A111735: Distance between k*(n-th prime) and next prime, k=3 case.

The programs for A111735, the canonical program `A111735.P13841724041236737776` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111735 has offset 1).

The definition of A111735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111735.P13841724041236737776

`A370009(n+1)-A001748(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A111735

/-- `A370009(n+1)-A001748(n+1)` -/
def P13841724041236737776.Spec : Prop :=
  ∀ n, P13841724041236737776.a n = A111735 (n + 1)

theorem P13841724041236737776.correct : P13841724041236737776.Spec := by
  intro n
  simp only [A111735, Nat.add_sub_cancel]

end A111735

/-! ## A111735.P10190543514254471513

`A370009(n+1)%A000040(n+1)`
-/

namespace A111735.P10190543514254471513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370009 (n + 1)) (A000040 (n + 1))

end

end A111735.P10190543514254471513

namespace A111735

/-- `A370009(n+1)%A000040(n+1)` -/
def P10190543514254471513.Spec : Prop :=
  ∀ n, P10190543514254471513.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P10324355698437093577

`A151800(A370008(n+1))-A001748(n+1)`
-/

namespace A111735.P10324355698437093577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A370008 (n + 1)).toNat - A001748 (n + 1)

end

end A111735.P10324355698437093577

namespace A111735

/-- `A151800(A370008(n+1))-A001748(n+1)` -/
def P10324355698437093577.Spec : Prop :=
  ∀ n, P10324355698437093577.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P16979383772377003188

`A007920(3*p?[xor(1, n)+1])`
-/

namespace A111735.P16979383772377003188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111735.P16979383772377003188

namespace A111735

/-- `A007920(3*p?[xor(1, n)+1])` -/
def P16979383772377003188.Spec : Prop :=
  ∀ n, P16979383772377003188.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P16918534958411405726

`A013632(3*p?[xor(1, n)+1])`
-/

namespace A111735.P16918534958411405726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111735.P16918534958411405726

namespace A111735

/-- `A013632(3*p?[xor(1, n)+1])` -/
def P16918534958411405726.Spec : Prop :=
  ∀ n, P16918534958411405726.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P4736919428787989101

`A013632(lcm(3, p?[xor(1, n)+1]))`
-/

namespace A111735.P4736919428787989101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (Nat.lcm 3 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A111735.P4736919428787989101

namespace A111735

/-- `A013632(lcm(3, p?[xor(1, n)+1]))` -/
def P4736919428787989101.Spec : Prop :=
  ∀ n, P4736919428787989101.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P1412525831837914132

`A013632(3*p?[n%3+n])`
-/

namespace A111735.P1412525831837914132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111735.P1412525831837914132

namespace A111735

/-- `A013632(3*p?[n%3+n])` -/
def P1412525831837914132.Spec : Prop :=
  ∀ n, P1412525831837914132.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P13922401556170721636

`A013632(3*p?[round(sqrt(n)+n)])`
-/

namespace A111735.P13922401556170721636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111735.P13922401556170721636

namespace A111735

/-- `A013632(3*p?[round(sqrt(n)+n)])` -/
def P13922401556170721636.Spec : Prop :=
  ∀ n, P13922401556170721636.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P2288698749388040359

`A007920(3*p?[round(8*n/7)])`
-/

namespace A111735.P2288698749388040359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111735.P2288698749388040359

namespace A111735

/-- `A007920(3*p?[round(8*n/7)])` -/
def P2288698749388040359.Spec : Prop :=
  ∀ n, P2288698749388040359.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P4337900176803581995

`A013632(∏{p}[3*p?[round(8*n/7)], #])`
-/

namespace A111735.P4337900176803581995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A111735.P4337900176803581995

namespace A111735

/-- `A013632(∏{p}[3*p?[round(8*n/7)], #])` -/
def P4337900176803581995.Spec : Prop :=
  ∀ n, P4337900176803581995.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P6133612781200585516

`A007920(A001748(n+1))`
-/

namespace A111735.P6133612781200585516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A001748 (n + 1)).toNat

end

end A111735.P6133612781200585516

namespace A111735

/-- `A007920(A001748(n+1))` -/
def P6133612781200585516.Spec : Prop :=
  ∀ n, P6133612781200585516.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P4424687800028404298

`A007920(A112773(n+2))`
-/

namespace A111735.P4424687800028404298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A112773 (n + 2)).toNat

end

end A111735.P4424687800028404298

namespace A111735

/-- `A007920(A112773(n+2))` -/
def P4424687800028404298.Spec : Prop :=
  ∀ n, P4424687800028404298.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P10181923006505631616

`A007920(Δ[3*A007504(n)])`
-/

namespace A111735.P10181923006505631616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (f1 (n + 1) - f1 n).toNat

end

end A111735.P10181923006505631616

namespace A111735

/-- `A007920(Δ[3*A007504(n)])` -/
def P10181923006505631616.Spec : Prop :=
  ∀ n, P10181923006505631616.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P6602562559618264353

`A013632(Δ[3*A007504(n)])`
-/

namespace A111735.P6602562559618264353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (f1 (n + 1) - f1 n).toNat

end

end A111735.P6602562559618264353

namespace A111735

/-- `A013632(Δ[3*A007504(n)])` -/
def P6602562559618264353.Spec : Prop :=
  ∀ n, P6602562559618264353.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P2864478876041640344

`A013632(lcm(3, Δ[A007504(n)]))`
-/

namespace A111735.P2864478876041640344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (Int.lcm 3 (f1 (n + 1) - f1 n))

end

end A111735.P2864478876041640344

namespace A111735

/-- `A013632(lcm(3, Δ[A007504(n)]))` -/
def P2864478876041640344.Spec : Prop :=
  ∀ n, P2864478876041640344.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P5428208107869907048

`A007920(3*A000040(n+1))`
-/

namespace A111735.P5428208107869907048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (3 * A000040 (n + 1)).toNat

end

end A111735.P5428208107869907048

namespace A111735

/-- `A007920(3*A000040(n+1))` -/
def P5428208107869907048.Spec : Prop :=
  ∀ n, P5428208107869907048.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P4377418782425246625

`A013632(3*A000040(n+1))`
-/

namespace A111735.P4377418782425246625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (3 * A000040 (n + 1)).toNat

end

end A111735.P4377418782425246625

namespace A111735

/-- `A013632(3*A000040(n+1))` -/
def P4377418782425246625.Spec : Prop :=
  ∀ n, P4377418782425246625.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P17350357265661322262

`A007920(A138636(n+1)/2)`
-/

namespace A111735.P17350357265661322262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (SequenceMachineLib.roundAway ((A138636 (n + 1) : ℚ) / 2)).toNat

end

end A111735.P17350357265661322262

namespace A111735

/-- `A007920(A138636(n+1)/2)` -/
def P17350357265661322262.Spec : Prop :=
  ∀ n, P17350357265661322262.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P2737639788027232436

`A007920(3*A008578(n+2))`
-/

namespace A111735.P2737639788027232436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (3 * A008578 (n + 2)).toNat

end

end A111735.P2737639788027232436

namespace A111735

/-- `A007920(3*A008578(n+2))` -/
def P2737639788027232436.Spec : Prop :=
  ∀ n, P2737639788027232436.a n = A111735 (n + 1)

end A111735

/-! ## A111735.P4652124998974914206

`A013632(3*A008578(n+2))`
-/

namespace A111735.P4652124998974914206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (3 * A008578 (n + 2)).toNat

end

end A111735.P4652124998974914206

namespace A111735

/-- `A013632(3*A008578(n+2))` -/
def P4652124998974914206.Spec : Prop :=
  ∀ n, P4652124998974914206.a n = A111735 (n + 1)

end A111735

/-!
# A111736: Distance between k*(n-th prime) and next prime, k=4 case.

The programs for A111736, there is no canonical definition to state claims against.
-/

/-! ## A111736.P12685146728513449292

`A370011(n+1)-A001749(n+1)`
-/

namespace A111736.P12685146728513449292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370011 (n + 1) - A001749 (n + 1)

end

end A111736.P12685146728513449292

/-! ## A111736.P14034007469727538922

`A060266(4*p?[round(8*n/7)]/2)`
-/

namespace A111736.P14034007469727538922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (SequenceMachineLib.roundAway ((4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2)).toNat

end

end A111736.P14034007469727538922

/-! ## A111736.P11071691193642253964

`A060266(A100484(n+1))`
-/

namespace A111736.P11071691193642253964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A100484 (n + 1)).toNat

end

end A111736.P11071691193642253964

/-! ## A111736.P11078599205859351491

`A060266(A001747(n+2))`
-/

namespace A111736.P11078599205859351491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A001747 (n + 2)).toNat

end

end A111736.P11078599205859351491

/-! ## A111736.P5563260041681768738

`A060266(2*A000040(n+1))`
-/

namespace A111736.P5563260041681768738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (2 * A000040 (n + 1)).toNat

end

end A111736.P5563260041681768738

/-! ## A111736.P2454829530867265461

`A060266(A001749(n+1)/2)`
-/

namespace A111736.P2454829530867265461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat

end

end A111736.P2454829530867265461

/-! ## A111736.P155258951985348280

`A060266(2*A008578(n+2))`
-/

namespace A111736.P155258951985348280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (2 * A008578 (n + 2)).toNat

end

end A111736.P155258951985348280

/-! ## A111736.P2472470916453111623

`A060266(A000040(n+1)+A000040(n+1))`
-/

namespace A111736.P2472470916453111623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A111736.P2472470916453111623

/-! ## A111736.P17641389053550722693

`A007920(4*p?[xor(1, n)+1])`
-/

namespace A111736.P17641389053550722693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111736.P17641389053550722693

/-! ## A111736.P16371237057082201853

`A013632(4*p?[xor(1, n)+1])`
-/

namespace A111736.P16371237057082201853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111736.P16371237057082201853

/-! ## A111736.P14658942129868762429

`A007920(4*p?[round(8*n/7)])`
-/

namespace A111736.P14658942129868762429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111736.P14658942129868762429

/-! ## A111736.P9211630533819815569

`A007920(2*2*p?[abs(xor(n, -2))])`
-/

namespace A111736.P9211630533819815569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (2 * (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A111736.P9211630533819815569

/-! ## A111736.P12415203593640611979

`A007920(A001749(n+1))`
-/

namespace A111736.P12415203593640611979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A001749 (n + 1)).toNat

end

end A111736.P12415203593640611979

/-! ## A111736.P8259679386365411747

`A007920(2*A100484(n+1))`
-/

namespace A111736.P8259679386365411747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (2 * A100484 (n + 1)).toNat

end

end A111736.P8259679386365411747

/-! ## A111736.P6006937003938574144

`A013632(2*A001747(n+2))`
-/

namespace A111736.P6006937003938574144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (2 * A001747 (n + 2)).toNat

end

end A111736.P6006937003938574144

/-!
# A111737: Distance between k*(n-th prime) and next prime, k=5 case.

The programs for A111737, the canonical program `A111737.P5999545701186017771` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111737 has offset 1).

The definition of A111737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111737.P13097885917324817225

`A007920(5*p?[xor(1, n)+1])`
-/

namespace A111737.P13097885917324817225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111737.P13097885917324817225

namespace A111737

/-- `A007920(5*p?[xor(1, n)+1])` -/
def P13097885917324817225.Spec : Prop :=
  ∀ n, P13097885917324817225.a n = A111737 (n + 1)

end A111737

/-! ## A111737.P5999545701186017771

`A013632(5*p?[xor(1, n)+1])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111737

/-- `A013632(5*p?[xor(1, n)+1])` -/
def P5999545701186017771.Spec : Prop :=
  ∀ n, P5999545701186017771.a n = A111737 (n + 1)

theorem P5999545701186017771.correct : P5999545701186017771.Spec := by
  intro n
  simp only [A111737, Nat.add_sub_cancel]

end A111737

/-! ## A111737.P10849749620995504965

`A007920(A001750(n+1))`
-/

namespace A111737.P10849749620995504965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A001750 (n + 1)).toNat

end

end A111737.P10849749620995504965

namespace A111737

/-- `A007920(A001750(n+1))` -/
def P10849749620995504965.Spec : Prop :=
  ∀ n, P10849749620995504965.a n = A111737 (n + 1)

end A111737

/-! ## A111737.P2084434802329992767

`A013632(Δ[5*A007504(n)])`
-/

namespace A111737.P2084434802329992767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (f1 (n + 1) - f1 n).toNat

end

end A111737.P2084434802329992767

namespace A111737

/-- `A013632(Δ[5*A007504(n)])` -/
def P2084434802329992767.Spec : Prop :=
  ∀ n, P2084434802329992767.a n = A111737 (n + 1)

end A111737

/-! ## A111737.P9117176537218746234

`A007920(5*p?[A259153(n)])`
-/

namespace A111737.P9117176537218746234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111737.P9117176537218746234

namespace A111737

/-- `A007920(5*p?[A259153(n)])` -/
def P9117176537218746234.Spec : Prop :=
  ∀ n, P9117176537218746234.a n = A111737 (n + 1)

end A111737

/-! ## A111737.P14540235516301011732

`A007920(A142342(n+1)/2)`
-/

namespace A111737.P14540235516301011732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (SequenceMachineLib.roundAway ((A142342 (n + 1) : ℚ) / 2)).toNat

end

end A111737.P14540235516301011732

namespace A111737

/-- `A007920(A142342(n+1)/2)` -/
def P14540235516301011732.Spec : Prop :=
  ∀ n, P14540235516301011732.a n = A111737 (n + 1)

end A111737

/-! ## A111737.P15128159944832156826

`A007920(5*A000040(n+1))`
-/

namespace A111737.P15128159944832156826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (5 * A000040 (n + 1)).toNat

end

end A111737.P15128159944832156826

namespace A111737

/-- `A007920(5*A000040(n+1))` -/
def P15128159944832156826.Spec : Prop :=
  ∀ n, P15128159944832156826.a n = A111737 (n + 1)

end A111737

/-! ## A111737.P8854785055756546742

`A013632(5*A000040(n+1))`
-/

namespace A111737.P8854785055756546742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (5 * A000040 (n + 1)).toNat

end

end A111737.P8854785055756546742

namespace A111737

/-- `A013632(5*A000040(n+1))` -/
def P8854785055756546742.Spec : Prop :=
  ∀ n, P8854785055756546742.a n = A111737 (n + 1)

end A111737

/-! ## A111737.P14512168723774962297

`A007920(5*A008578(n+2))`
-/

namespace A111737.P14512168723774962297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (5 * A008578 (n + 2)).toNat

end

end A111737.P14512168723774962297

namespace A111737

/-- `A007920(5*A008578(n+2))` -/
def P14512168723774962297.Spec : Prop :=
  ∀ n, P14512168723774962297.a n = A111737 (n + 1)

end A111737

/-! ## A111737.P13694696669546860890

`A007920(5*record[A006530(n+2)])`
-/

namespace A111737.P13694696669546860890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (5 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111737.P13694696669546860890

namespace A111737

/-- `A007920(5*record[A006530(n+2)])` -/
def P13694696669546860890.Spec : Prop :=
  ∀ n, P13694696669546860890.a n = A111737 (n + 1)

end A111737

/-!
# A111738: Distance between k*(n-th prime) and next prime, k=6 case.

The programs for A111738, the canonical program `A111738.P5078444431760926607` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111738 has offset 1).

The definition of A111738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111738.P5078444431760926607

`A060266(3*p?[abs(xor(n, -2))])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A111738

/-- `A060266(3*p?[abs(xor(n, -2))])` -/
def P5078444431760926607.Spec : Prop :=
  ∀ n, P5078444431760926607.a n = A111738 (n + 1)

theorem P5078444431760926607.correct : P5078444431760926607.Spec := by
  intro n
  simp only [A111738, Nat.add_sub_cancel]

end A111738

/-! ## A111738.P7396325897919523236

`A060266(A001748(n+1))`
-/

namespace A111738.P7396325897919523236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A001748 (n + 1)).toNat

end

end A111738.P7396325897919523236

namespace A111738

/-- `A060266(A001748(n+1))` -/
def P7396325897919523236.Spec : Prop :=
  ∀ n, P7396325897919523236.a n = A111738 (n + 1)

end A111738

/-! ## A111738.P7702976819386300715

`A060266(A063534(n+1))`
-/

namespace A111738.P7702976819386300715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A063534 (n + 1)).toNat

end

end A111738.P7702976819386300715

namespace A111738

/-- `A060266(A063534(n+1))` -/
def P7702976819386300715.Spec : Prop :=
  ∀ n, P7702976819386300715.a n = A111738 (n + 1)

end A111738

/-! ## A111738.P15608005014699113768

`A060266(A112773(n+2))`
-/

namespace A111738.P15608005014699113768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A112773 (n + 2)).toNat

end

end A111738.P15608005014699113768

namespace A111738

/-- `A060266(A112773(n+2))` -/
def P15608005014699113768.Spec : Prop :=
  ∀ n, P15608005014699113768.a n = A111738 (n + 1)

end A111738

/-! ## A111738.P12574578250147463464

`A013632(6*p?[xor(1, n)+1])`
-/

namespace A111738.P12574578250147463464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (6 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111738.P12574578250147463464

namespace A111738

/-- `A013632(6*p?[xor(1, n)+1])` -/
def P12574578250147463464.Spec : Prop :=
  ∀ n, P12574578250147463464.a n = A111738 (n + 1)

end A111738

/-! ## A111738.P10142644245562654757

`A013632(lcm(6, p?[xor(1, n)+1]))`
-/

namespace A111738.P10142644245562654757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (Nat.lcm 6 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A111738.P10142644245562654757

namespace A111738

/-- `A013632(lcm(6, p?[xor(1, n)+1]))` -/
def P10142644245562654757.Spec : Prop :=
  ∀ n, P10142644245562654757.a n = A111738 (n + 1)

end A111738

/-! ## A111738.P8656187851401753519

`A007920(3*2*p?[abs(xor(n, -2))])`
-/

namespace A111738.P8656187851401753519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (3 * (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A111738.P8656187851401753519

namespace A111738

/-- `A007920(3*2*p?[abs(xor(n, -2))])` -/
def P8656187851401753519.Spec : Prop :=
  ∀ n, P8656187851401753519.a n = A111738 (n + 1)

end A111738

/-! ## A111738.P6559329729644633157

`A007920(2*3*p?[round(8*n/7)])`
-/

namespace A111738.P6559329729644633157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (2 * (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A111738.P6559329729644633157

namespace A111738

/-- `A007920(2*3*p?[round(8*n/7)])` -/
def P6559329729644633157.Spec : Prop :=
  ∀ n, P6559329729644633157.a n = A111738 (n + 1)

end A111738

/-! ## A111738.P13890841920084925622

`A013632(2*3*p?[round(8*n/7)])`
-/

namespace A111738.P13890841920084925622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (2 * (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A111738.P13890841920084925622

namespace A111738

/-- `A013632(2*3*p?[round(8*n/7)])` -/
def P13890841920084925622.Spec : Prop :=
  ∀ n, P13890841920084925622.a n = A111738 (n + 1)

end A111738

/-! ## A111738.P3187029449397920753

`A007920(A138636(n+1))`
-/

namespace A111738.P3187029449397920753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A138636 (n + 1)).toNat

end

end A111738.P3187029449397920753

namespace A111738

/-- `A007920(A138636(n+1))` -/
def P3187029449397920753.Spec : Prop :=
  ∀ n, P3187029449397920753.a n = A111738 (n + 1)

end A111738

/-! ## A111738.P10720694672686516258

`A071960(A330410(n+1))`
-/

namespace A111738.P10720694672686516258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071960 (A330410 (n + 1)).toNat

end

end A111738.P10720694672686516258

namespace A111738

/-- `A071960(A330410(n+1))` -/
def P10720694672686516258.Spec : Prop :=
  ∀ n, P10720694672686516258.a n = A111738 (n + 1)

end A111738

/-! ## A111738.P82648160193759617

`A007920(2*A001748(n+1))`
-/

namespace A111738.P82648160193759617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (2 * A001748 (n + 1)).toNat

end

end A111738.P82648160193759617

namespace A111738

/-- `A007920(2*A001748(n+1))` -/
def P82648160193759617.Spec : Prop :=
  ∀ n, P82648160193759617.a n = A111738 (n + 1)

end A111738

/-! ## A111738.P13472414220176249866

`A013632(2*A001748(n+1))`
-/

namespace A111738.P13472414220176249866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (2 * A001748 (n + 1)).toNat

end

end A111738.P13472414220176249866

namespace A111738

/-- `A013632(2*A001748(n+1))` -/
def P13472414220176249866.Spec : Prop :=
  ∀ n, P13472414220176249866.a n = A111738 (n + 1)

end A111738

/-! ## A111738.P4251207062521797912

`A007920(2*A112773(n+2))`
-/

namespace A111738.P4251207062521797912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (2 * A112773 (n + 2)).toNat

end

end A111738.P4251207062521797912

namespace A111738

/-- `A007920(2*A112773(n+2))` -/
def P4251207062521797912.Spec : Prop :=
  ∀ n, P4251207062521797912.a n = A111738 (n + 1)

end A111738

/-!
# A111739: Distance between k*(n-th prime) and next prime, k=7 case.

The programs for A111739, the canonical program `A111739.P2337404656181389244` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111739 has offset 1).

The definition of A111739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1676 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111739.P2337404656181389244

`A151800(A272470(n+1))-A272470(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A111739

/-- `A151800(A272470(n+1))-A272470(n+1)` -/
def P2337404656181389244.Spec : Prop :=
  ∀ n, P2337404656181389244.a n = A111739 (n + 1)

theorem P2337404656181389244.correct : P2337404656181389244.Spec := by
  intro n
  simp only [A111739, Nat.add_sub_cancel]

end A111739

/-! ## A111739.P3165226038863955723

`A151800(7*A000040(n+1))-7*A000040(n+1)`
-/

namespace A111739.P3165226038863955723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (7 * A000040 (n + 1)).toNat - 7 * A000040 (n + 1)

end

end A111739.P3165226038863955723

namespace A111739

/-- `A151800(7*A000040(n+1))-7*A000040(n+1)` -/
def P3165226038863955723.Spec : Prop :=
  ∀ n, P3165226038863955723.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P15882164677470494323

`A007920(7*p?[xor(1, n)+1])`
-/

namespace A111739.P15882164677470494323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (7 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111739.P15882164677470494323

namespace A111739

/-- `A007920(7*p?[xor(1, n)+1])` -/
def P15882164677470494323.Spec : Prop :=
  ∀ n, P15882164677470494323.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P3323487459723924508

`A013632(7*p?[xor(1, n)+1])`
-/

namespace A111739.P3323487459723924508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (7 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111739.P3323487459723924508

namespace A111739

/-- `A013632(7*p?[xor(1, n)+1])` -/
def P3323487459723924508.Spec : Prop :=
  ∀ n, P3323487459723924508.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P15354973284317996703

`A013632(lcm(7, p?[xor(1, n)+1]))`
-/

namespace A111739.P15354973284317996703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (Nat.lcm 7 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A111739.P15354973284317996703

namespace A111739

/-- `A013632(lcm(7, p?[xor(1, n)+1]))` -/
def P15354973284317996703.Spec : Prop :=
  ∀ n, P15354973284317996703.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P3712015428205245838

`A007920(A272470(n+1))`
-/

namespace A111739.P3712015428205245838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A272470 (n + 1)).toNat

end

end A111739.P3712015428205245838

namespace A111739

/-- `A007920(A272470(n+1))` -/
def P3712015428205245838.Spec : Prop :=
  ∀ n, P3712015428205245838.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P757495683809018286

`A007920(Δ[7*A007504(n)])`
-/

namespace A111739.P757495683809018286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (f1 (n + 1) - f1 n).toNat

end

end A111739.P757495683809018286

namespace A111739

/-- `A007920(Δ[7*A007504(n)])` -/
def P757495683809018286.Spec : Prop :=
  ∀ n, P757495683809018286.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P4412013414164490346

`A013632(Δ[7*A007504(n)])`
-/

namespace A111739.P4412013414164490346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (f1 (n + 1) - f1 n).toNat

end

end A111739.P4412013414164490346

namespace A111739

/-- `A013632(Δ[7*A007504(n)])` -/
def P4412013414164490346.Spec : Prop :=
  ∀ n, P4412013414164490346.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P16650851331631757042

`A013632(7*p?[A014681(n)])`
-/

namespace A111739.P16650851331631757042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (7 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111739.P16650851331631757042

namespace A111739

/-- `A013632(7*p?[A014681(n)])` -/
def P16650851331631757042.Spec : Prop :=
  ∀ n, P16650851331631757042.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P14874356009143972960

`A013632(7*p?[A056847(n)])`
-/

namespace A111739.P14874356009143972960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (7 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111739.P14874356009143972960

namespace A111739

/-- `A013632(7*p?[A056847(n)])` -/
def P14874356009143972960.Spec : Prop :=
  ∀ n, P14874356009143972960.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P8524065183470958368

`A013632(lcm(7, Δ[A007504(n)]))`
-/

namespace A111739.P8524065183470958368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (Int.lcm 7 (f1 (n + 1) - f1 n))

end

end A111739.P8524065183470958368

namespace A111739

/-- `A013632(lcm(7, Δ[A007504(n)]))` -/
def P8524065183470958368.Spec : Prop :=
  ∀ n, P8524065183470958368.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P6124086650461696048

`A007920(7*A000040(n+1))`
-/

namespace A111739.P6124086650461696048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (7 * A000040 (n + 1)).toNat

end

end A111739.P6124086650461696048

namespace A111739

/-- `A007920(7*A000040(n+1))` -/
def P6124086650461696048.Spec : Prop :=
  ∀ n, P6124086650461696048.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P6041224877032761288

`A013632(7*A000040(n+1))`
-/

namespace A111739.P6041224877032761288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (7 * A000040 (n + 1)).toNat

end

end A111739.P6041224877032761288

namespace A111739

/-- `A013632(7*A000040(n+1))` -/
def P6041224877032761288.Spec : Prop :=
  ∀ n, P6041224877032761288.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P11801226130534224766

`A007920(7*A008578(n+2))`
-/

namespace A111739.P11801226130534224766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (7 * A008578 (n + 2)).toNat

end

end A111739.P11801226130534224766

namespace A111739

/-- `A007920(7*A008578(n+2))` -/
def P11801226130534224766.Spec : Prop :=
  ∀ n, P11801226130534224766.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P3633002972756403368

`A007920(7*sqrt(A001248(n+1)))`
-/

namespace A111739.P3633002972756403368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (SequenceMachineLib.roundAway (7 * Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A111739.P3633002972756403368

namespace A111739

/-- `A007920(7*sqrt(A001248(n+1)))` -/
def P3633002972756403368.Spec : Prop :=
  ∀ n, P3633002972756403368.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P9521399880894049076

`A007920(7*record[A006530(n+2)])`
-/

namespace A111739.P9521399880894049076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (7 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111739.P9521399880894049076

namespace A111739

/-- `A007920(7*record[A006530(n+2)])` -/
def P9521399880894049076.Spec : Prop :=
  ∀ n, P9521399880894049076.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P1188174557025508498

`A007920(7*record[A014963(n+2)])`
-/

namespace A111739.P1188174557025508498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (7 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111739.P1188174557025508498

namespace A111739

/-- `A007920(7*record[A014963(n+2)])` -/
def P1188174557025508498.Spec : Prop :=
  ∀ n, P1188174557025508498.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P17273040976383987396

`A007920(7*record[A020639(n+2)])`
-/

namespace A111739.P17273040976383987396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (7 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111739.P17273040976383987396

namespace A111739

/-- `A007920(7*record[A020639(n+2)])` -/
def P17273040976383987396.Spec : Prop :=
  ∀ n, P17273040976383987396.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P16224761364467171027

`A007920(A166628(Δ[A007504(n)]))`
-/

namespace A111739.P16224761364467171027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A166628 (f1 (n + 1) - f1 n).toNat).toNat

end

end A111739.P16224761364467171027

namespace A111739

/-- `A007920(A166628(Δ[A007504(n)]))` -/
def P16224761364467171027.Spec : Prop :=
  ∀ n, P16224761364467171027.a n = A111739 (n + 1)

end A111739

/-! ## A111739.P11928301433961369969

`A007920(A166628(p?[A014681(n)]))`
-/

namespace A111739.P11928301433961369969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A166628 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A111739.P11928301433961369969

namespace A111739

/-- `A007920(A166628(p?[A014681(n)]))` -/
def P11928301433961369969.Spec : Prop :=
  ∀ n, P11928301433961369969.a n = A111739 (n + 1)

end A111739

/-!
# A111740: Distance between k*(n-th prime) and next prime, k=8 case.

The programs for A111740, the canonical program `A111740.P10235014839868050827` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111740 has offset 1).

The definition of A111740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111740.P10235014839868050827

`A060266(4*p?[round(8*n/7)])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A111740

/-- `A060266(4*p?[round(8*n/7)])` -/
def P10235014839868050827.Spec : Prop :=
  ∀ n, P10235014839868050827.a n = A111740 (n + 1)

theorem P10235014839868050827.correct : P10235014839868050827.Spec := by
  intro n
  simp only [A111740, Nat.add_sub_cancel]

end A111740

/-! ## A111740.P8957291952844100535

`A060266(A001749(n+1))`
-/

namespace A111740.P8957291952844100535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A001749 (n + 1)).toNat

end

end A111740.P8957291952844100535

namespace A111740

/-- `A060266(A001749(n+1))` -/
def P8957291952844100535.Spec : Prop :=
  ∀ n, P8957291952844100535.a n = A111740 (n + 1)

end A111740

/-! ## A111740.P13316942579498544835

`A060266(2*A100484(n+1))`
-/

namespace A111740.P13316942579498544835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (2 * A100484 (n + 1)).toNat

end

end A111740.P13316942579498544835

namespace A111740

/-- `A060266(2*A100484(n+1))` -/
def P13316942579498544835.Spec : Prop :=
  ∀ n, P13316942579498544835.a n = A111740 (n + 1)

end A111740

/-! ## A111740.P3106225951693883032

`A060266(2*A001747(n+2))`
-/

namespace A111740.P3106225951693883032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (2 * A001747 (n + 2)).toNat

end

end A111740.P3106225951693883032

namespace A111740

/-- `A060266(2*A001747(n+2))` -/
def P3106225951693883032.Spec : Prop :=
  ∀ n, P3106225951693883032.a n = A111740 (n + 1)

end A111740

/-! ## A111740.P13620811462263501009

`A060266(A008586(A000040(n+1)))`
-/

namespace A111740.P13620811462263501009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A008586 (A000040 (n + 1)).toNat).toNat

end

end A111740.P13620811462263501009

namespace A111740

/-- `A060266(A008586(A000040(n+1)))` -/
def P13620811462263501009.Spec : Prop :=
  ∀ n, P13620811462263501009.a n = A111740 (n + 1)

end A111740

/-! ## A111740.P17984111835971043100

`A060266(A001748(n+1)+A000040(n+1))`
-/

namespace A111740.P17984111835971043100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A001748 (n + 1) + A000040 (n + 1)).toNat

end

end A111740.P17984111835971043100

namespace A111740

/-- `A060266(A001748(n+1)+A000040(n+1))` -/
def P17984111835971043100.Spec : Prop :=
  ∀ n, P17984111835971043100.a n = A111740 (n + 1)

end A111740

/-! ## A111740.P9965440200097870377

`A060266(A272470(n+1)-A001748(n+1))`
-/

namespace A111740.P9965440200097870377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A272470 (n + 1) - A001748 (n + 1)).toNat

end

end A111740.P9965440200097870377

namespace A111740

/-- `A060266(A272470(n+1)-A001748(n+1))` -/
def P9965440200097870377.Spec : Prop :=
  ∀ n, P9965440200097870377.a n = A111740 (n + 1)

end A111740

/-! ## A111740.P17462532170640176063

`A007920(8*p?[xor(1, n)+1])`
-/

namespace A111740.P17462532170640176063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (8 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111740.P17462532170640176063

namespace A111740

/-- `A007920(8*p?[xor(1, n)+1])` -/
def P17462532170640176063.Spec : Prop :=
  ∀ n, P17462532170640176063.a n = A111740 (n + 1)

end A111740

/-! ## A111740.P12916758866404564317

`A013632(8*p?[xor(1, n)+1])`
-/

namespace A111740.P12916758866404564317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (8 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111740.P12916758866404564317

namespace A111740

/-- `A013632(8*p?[xor(1, n)+1])` -/
def P12916758866404564317.Spec : Prop :=
  ∀ n, P12916758866404564317.a n = A111740 (n + 1)

end A111740

/-! ## A111740.P7943306108197026162

`A013632(8*p?[n%3+n])`
-/

namespace A111740.P7943306108197026162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (8 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111740.P7943306108197026162

namespace A111740

/-- `A013632(8*p?[n%3+n])` -/
def P7943306108197026162.Spec : Prop :=
  ∀ n, P7943306108197026162.a n = A111740 (n + 1)

end A111740

/-! ## A111740.P14499342148814543752

`A013632(8*p?[round(sqrt(n)+n)])`
-/

namespace A111740.P14499342148814543752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (8 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111740.P14499342148814543752

namespace A111740

/-- `A013632(8*p?[round(sqrt(n)+n)])` -/
def P14499342148814543752.Spec : Prop :=
  ∀ n, P14499342148814543752.a n = A111740 (n + 1)

end A111740

/-! ## A111740.P89547809692540644

`A007920(2*4*p?[round(8*n/7)])`
-/

namespace A111740.P89547809692540644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (2 * (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A111740.P89547809692540644

namespace A111740

/-- `A007920(2*4*p?[round(8*n/7)])` -/
def P89547809692540644.Spec : Prop :=
  ∀ n, P89547809692540644.a n = A111740 (n + 1)

end A111740

/-! ## A111740.P9025282664995183426

`A007920(8*p?[A259153(n)])`
-/

namespace A111740.P9025282664995183426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (8 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111740.P9025282664995183426

namespace A111740

/-- `A007920(8*p?[A259153(n)])` -/
def P9025282664995183426.Spec : Prop :=
  ∀ n, P9025282664995183426.a n = A111740 (n + 1)

end A111740

/-! ## A111740.P4824612381923380862

`A007920(2*A001749(n+1))`
-/

namespace A111740.P4824612381923380862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (2 * A001749 (n + 1)).toNat

end

end A111740.P4824612381923380862

namespace A111740

/-- `A007920(2*A001749(n+1))` -/
def P4824612381923380862.Spec : Prop :=
  ∀ n, P4824612381923380862.a n = A111740 (n + 1)

end A111740

/-!
# A111741: Distance between k*(n-th prime) and next prime, k=9 case.

The programs for A111741, the canonical program `A111741.P6922834761270398492` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111741 has offset 1).

The definition of A111741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111741.P6922834761270398492

`A013632(9*p?[xor(1, n)+1])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111741

/-- `A013632(9*p?[xor(1, n)+1])` -/
def P6922834761270398492.Spec : Prop :=
  ∀ n, P6922834761270398492.a n = A111741 (n + 1)

theorem P6922834761270398492.correct : P6922834761270398492.Spec := by
  intro n
  simp only [A111741, Nat.add_sub_cancel]

end A111741

/-! ## A111741.P18077850783588315989

`A007920(3*3*p?[round(8*n/7)])`
-/

namespace A111741.P18077850783588315989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (3 * (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A111741.P18077850783588315989

namespace A111741

/-- `A007920(3*3*p?[round(8*n/7)])` -/
def P18077850783588315989.Spec : Prop :=
  ∀ n, P18077850783588315989.a n = A111741 (n + 1)

end A111741

/-! ## A111741.P16851259587106039850

`A013632(3*3*p?[round(8*n/7)])`
-/

namespace A111741.P16851259587106039850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (3 * (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A111741.P16851259587106039850

namespace A111741

/-- `A013632(3*3*p?[round(8*n/7)])` -/
def P16851259587106039850.Spec : Prop :=
  ∀ n, P16851259587106039850.a n = A111741 (n + 1)

end A111741

/-! ## A111741.P5441091577185722994

`A007920(Δ[9*A007504(n)])`
-/

namespace A111741.P5441091577185722994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (f1 (n + 1) - f1 n).toNat

end

end A111741.P5441091577185722994

namespace A111741

/-- `A007920(Δ[9*A007504(n)])` -/
def P5441091577185722994.Spec : Prop :=
  ∀ n, P5441091577185722994.a n = A111741 (n + 1)

end A111741

/-! ## A111741.P6607287642549509237

`A013632(Δ[9*A007504(n)])`
-/

namespace A111741.P6607287642549509237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (f1 (n + 1) - f1 n).toNat

end

end A111741.P6607287642549509237

namespace A111741

/-- `A013632(Δ[9*A007504(n)])` -/
def P6607287642549509237.Spec : Prop :=
  ∀ n, P6607287642549509237.a n = A111741 (n + 1)

end A111741

/-! ## A111741.P11052613839379724249

`A007920(lcm(9, Δ[A007504(n)]))`
-/

namespace A111741.P11052613839379724249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (Int.lcm 9 (f1 (n + 1) - f1 n))

end

end A111741.P11052613839379724249

namespace A111741

/-- `A007920(lcm(9, Δ[A007504(n)]))` -/
def P11052613839379724249.Spec : Prop :=
  ∀ n, P11052613839379724249.a n = A111741 (n + 1)

end A111741

/-! ## A111741.P720771077379830978

`A007920(3*A001748(n+1))`
-/

namespace A111741.P720771077379830978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (3 * A001748 (n + 1)).toNat

end

end A111741.P720771077379830978

namespace A111741

/-- `A007920(3*A001748(n+1))` -/
def P720771077379830978.Spec : Prop :=
  ∀ n, P720771077379830978.a n = A111741 (n + 1)

end A111741

/-! ## A111741.P2900143569063871592

`A013632(3*A001748(n+1))`
-/

namespace A111741.P2900143569063871592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (3 * A001748 (n + 1)).toNat

end

end A111741.P2900143569063871592

namespace A111741

/-- `A013632(3*A001748(n+1))` -/
def P2900143569063871592.Spec : Prop :=
  ∀ n, P2900143569063871592.a n = A111741 (n + 1)

end A111741

/-! ## A111741.P7659072685299817681

`A007920(9*A000040(n+1))`
-/

namespace A111741.P7659072685299817681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (9 * A000040 (n + 1)).toNat

end

end A111741.P7659072685299817681

namespace A111741

/-- `A007920(9*A000040(n+1))` -/
def P7659072685299817681.Spec : Prop :=
  ∀ n, P7659072685299817681.a n = A111741 (n + 1)

end A111741

/-! ## A111741.P4163077043717375501

`A013632(9*A000040(n+1))`
-/

namespace A111741.P4163077043717375501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (9 * A000040 (n + 1)).toNat

end

end A111741.P4163077043717375501

namespace A111741

/-- `A013632(9*A000040(n+1))` -/
def P4163077043717375501.Spec : Prop :=
  ∀ n, P4163077043717375501.a n = A111741 (n + 1)

end A111741

/-!
# A111742: Distance between k*(n-th prime) and next prime, k=10 case.

The programs for A111742, the canonical program `A111742.P15922268779302674466` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111742 has offset 1).

The definition of A111742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111742.P15922268779302674466

`A060266(5*p?[abs(xor(n, -2))])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A111742

/-- `A060266(5*p?[abs(xor(n, -2))])` -/
def P15922268779302674466.Spec : Prop :=
  ∀ n, P15922268779302674466.a n = A111742 (n + 1)

theorem P15922268779302674466.correct : P15922268779302674466.Spec := by
  intro n
  simp only [A111742, Nat.add_sub_cancel]

end A111742

/-! ## A111742.P14970946134320844443

`A060266(A001750(n+1))`
-/

namespace A111742.P14970946134320844443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A001750 (n + 1)).toNat

end

end A111742.P14970946134320844443

namespace A111742

/-- `A060266(A001750(n+1))` -/
def P14970946134320844443.Spec : Prop :=
  ∀ n, P14970946134320844443.a n = A111742 (n + 1)

end A111742

/-! ## A111742.P14707479899048330993

`A060266(5*A000040(n+1))`
-/

namespace A111742.P14707479899048330993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (5 * A000040 (n + 1)).toNat

end

end A111742.P14707479899048330993

namespace A111742

/-- `A060266(5*A000040(n+1))` -/
def P14707479899048330993.Spec : Prop :=
  ∀ n, P14707479899048330993.a n = A111742 (n + 1)

end A111742

/-! ## A111742.P4875667622685063037

`A060266(A001749(n+1)+A000040(n+1))`
-/

namespace A111742.P4875667622685063037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (A001749 (n + 1) + A000040 (n + 1)).toNat

end

end A111742.P4875667622685063037

namespace A111742

/-- `A060266(A001749(n+1)+A000040(n+1))` -/
def P4875667622685063037.Spec : Prop :=
  ∀ n, P4875667622685063037.a n = A111742 (n + 1)

end A111742

/-! ## A111742.P9289646039892486511

`A013632(10*p?[xor(1, n)+1])`
-/

namespace A111742.P9289646039892486511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (10 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111742.P9289646039892486511

namespace A111742

/-- `A013632(10*p?[xor(1, n)+1])` -/
def P9289646039892486511.Spec : Prop :=
  ∀ n, P9289646039892486511.a n = A111742 (n + 1)

end A111742

/-! ## A111742.P16252622293312631400

`A013632(10*p?[n%3+n])`
-/

namespace A111742.P16252622293312631400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (10 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111742.P16252622293312631400

namespace A111742

/-- `A013632(10*p?[n%3+n])` -/
def P16252622293312631400.Spec : Prop :=
  ∀ n, P16252622293312631400.a n = A111742 (n + 1)

end A111742

/-! ## A111742.P9234320974438912181

`A013632(10*p?[round(sqrt(n)+n)])`
-/

namespace A111742.P9234320974438912181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (10 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111742.P9234320974438912181

namespace A111742

/-- `A013632(10*p?[round(sqrt(n)+n)])` -/
def P9234320974438912181.Spec : Prop :=
  ∀ n, P9234320974438912181.a n = A111742 (n + 1)

end A111742

/-! ## A111742.P2209878266042057805

`A007920(10*p?[xor(1, n)+1]+1)+1`
-/

namespace A111742.P2209878266042057805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (10 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) + 1

end

end A111742.P2209878266042057805

namespace A111742

/-- `A007920(10*p?[xor(1, n)+1]+1)+1` -/
def P2209878266042057805.Spec : Prop :=
  ∀ n, P2209878266042057805.a n = A111742 (n + 1)

end A111742

/-! ## A111742.P3558766506836469985

`A013632(10*(abs(p?[round(8*n/7)]-2)+2))`
-/

namespace A111742.P3558766506836469985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (10 * (|f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2| + 2)).toNat

end

end A111742.P3558766506836469985

namespace A111742

/-- `A013632(10*(abs(p?[round(8*n/7)]-2)+2))` -/
def P3558766506836469985.Spec : Prop :=
  ∀ n, P3558766506836469985.a n = A111742 (n + 1)

end A111742

/-! ## A111742.P11356647494579599761

`A007920(A142342(n+1))`
-/

namespace A111742.P11356647494579599761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A142342 (n + 1)).toNat

end

end A111742.P11356647494579599761

namespace A111742

/-- `A007920(A142342(n+1))` -/
def P11356647494579599761.Spec : Prop :=
  ∀ n, P11356647494579599761.a n = A111742 (n + 1)

end A111742

/-! ## A111742.P12726023547740405076

`A007920(2*A001750(n+1))`
-/

namespace A111742.P12726023547740405076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (2 * A001750 (n + 1)).toNat

end

end A111742.P12726023547740405076

namespace A111742

/-- `A007920(2*A001750(n+1))` -/
def P12726023547740405076.Spec : Prop :=
  ∀ n, P12726023547740405076.a n = A111742 (n + 1)

end A111742

/-! ## A111742.P10249162925994083681

`A013632(2*A001750(n+1))`
-/

namespace A111742.P10249162925994083681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (2 * A001750 (n + 1)).toNat

end

end A111742.P10249162925994083681

namespace A111742

/-- `A013632(2*A001750(n+1))` -/
def P10249162925994083681.Spec : Prop :=
  ∀ n, P10249162925994083681.a n = A111742 (n + 1)

end A111742

/-!
# A111743: Numbers n such that the largest prime factor p of n is also the largest prime factor of n.p, where the dot means concatenation.

The programs for A111743, there is no canonical definition to state claims against.
-/

/-! ## A111743.P9696844916892606159

`A166275(A119268(n+4))+1`
-/

namespace A111743.P9696844916892606159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166275 (A119268 (n + 4)).toNat + 1

end

end A111743.P9696844916892606159

/-!
# A111744: a(2k-1) = k-th prime of form 1 mod 4, a(2k) = k-th prime of form 3 mod 4.

The programs for A111744, there is no canonical definition to state claims against.
-/

/-! ## A111744.P13176048429907741477

`A108546(xor(1, n+2))`
-/

namespace A111744.P13176048429907741477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (Nat.xor 1 (n + 2))

end

end A111744.P13176048429907741477

/-! ## A111744.P10875429063413733113

`A108546(2*(n+1)%2+n+1)`
-/

namespace A111744.P10875429063413733113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (2 * ((n + 1) % 2) + n + 1)

end

end A111744.P10875429063413733113

/-! ## A111744.P4372730875636059361

`A108546(A065190(n+2))`
-/

namespace A111744.P4372730875636059361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (A065190 (n + 2)).toNat

end

end A111744.P4372730875636059361

/-! ## A111744.P11929379153867346273

`A108546(A014681(n+1)+1)`
-/

namespace A111744.P11929379153867346273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (A014681 (n + 1) + 1).toNat

end

end A111744.P11929379153867346273

/-! ## A111744.P4971398702570058654

`A267101(A332807(n+2))`
-/

namespace A111744.P4971398702570058654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267101 (A332807 (n + 2)).toNat

end

end A111744.P4971398702570058654

/-! ## A111744.P12826268476992969267

`A354101(A108546(n+2))+A108546(n+2)`
-/

namespace A111744.P12826268476992969267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354101 (A108546 (n + 2)).toNat + A108546 (n + 2)

end

end A111744.P12826268476992969267

/-! ## A111744.P9085416703410258653

`A267099(A108546(n+2))`
-/

namespace A111744.P9085416703410258653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A108546 (n + 2)).toNat

end

end A111744.P9085416703410258653

/-! ## A111744.P5555816873443307458

`A111745(xor(1, n)+1)`
-/

namespace A111744.P5555816873443307458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111745 (Nat.xor 1 n + 1)

end

end A111744.P5555816873443307458

/-! ## A111744.P4407343217542890862

`A111745(A014681(n+1))`
-/

namespace A111744.P4407343217542890862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111745 (A014681 (n + 1)).toNat

end

end A111744.P4407343217542890862

/-! ## A111744.P11317252782853422983

`A111745(A103889(n+1))`
-/

namespace A111744.P11317252782853422983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111745 (A103889 (n + 1)).toNat

end

end A111744.P11317252782853422983

/-! ## A111744.P1889215161897406480

`A267099(A111745(n+1))`
-/

namespace A111744.P1889215161897406480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A111745 (n + 1)).toNat

end

end A111744.P1889215161897406480

/-! ## A111744.P8015004713269078916

`A111745(A033999(n)+1+n)`
-/

namespace A111744.P8015004713269078916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111745 (A033999 n + 1 + (n : ℤ)).toNat

end

end A111744.P8015004713269078916

/-!
# A111745: a(2k-1) = k-th prime congruent to 3 mod 4, a(2k) = k-th prime congruent to 1 mod 4.

The programs for A111745, there is no canonical definition to state claims against.
-/

/-! ## A111745.P1668124954366934815

`A108546(n+2)`
-/

namespace A111745.P1668124954366934815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108546 (n + 2)

end

end A111745.P1668124954366934815

/-! ## A111745.P10761519076410048311

`p?[A108548(n+3)]`
-/

namespace A111745.P10761519076410048311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111745.P10761519076410048311

/-! ## A111745.P14841137878747848266

`A332818(a(n-1))` with `a(0)=3`
-/

namespace A111745.P14841137878747848266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A332818 (a (n - 1)).toNat

end

end A111745.P14841137878747848266

/-! ## A111745.P10217383617870245797

`A389073(a(n-1))-1` with `a(0)=3`
-/

namespace A111745.P10217383617870245797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A389073 (a (n - 1)).toNat - 1

end

end A111745.P10217383617870245797

/-! ## A111745.P9886303685017229141

`A111744(A004442(n)+1)`
-/

namespace A111745.P9886303685017229141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111744 (A004442 n + 1).toNat

end

end A111745.P9886303685017229141

/-! ## A111745.P660019623852832371

`A111744(A014681(n+1))`
-/

namespace A111745.P660019623852832371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111744 (A014681 (n + 1)).toNat

end

end A111745.P660019623852832371

/-! ## A111745.P5441906294255871078

`A108548(A065091(n+1))`
-/

namespace A111745.P5441906294255871078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A065091 (n + 1)).toNat

end

end A111745.P5441906294255871078

/-! ## A111745.P10711227052176012290

`A111744(A103889(n+1))`
-/

namespace A111745.P10711227052176012290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111744 (A103889 (n + 1)).toNat

end

end A111745.P10711227052176012290

/-! ## A111745.P14433111155311690295

`A267099(A111744(n+1))`
-/

namespace A111745.P14433111155311690295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A111744 (n + 1)).toNat

end

end A111745.P14433111155311690295

/-! ## A111745.P16479366187336345977

`A108548(A000040(n+2))`
-/

namespace A111745.P16479366187336345977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A000040 (n + 2)).toNat

end

end A111745.P16479366187336345977

/-! ## A111745.P13383122774471625171

`A108548(A006005(n+2))`
-/

namespace A111745.P13383122774471625171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A006005 (n + 2)).toNat

end

end A111745.P13383122774471625171

/-! ## A111745.P3872164387115918897

`A000040(A332807(n+2))`
-/

namespace A111745.P3872164387115918897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A332807 (n + 2)).toNat

end

end A111745.P3872164387115918897

/-! ## A111745.P15534846256971069225

`A108548(record[A006530(n+3)])`
-/

namespace A111745.P15534846256971069225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111745.P15534846256971069225

/-! ## A111745.P8812602258433967217

`A108548(record[A020639(n+3)])`
-/

namespace A111745.P8812602258433967217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111745.P8812602258433967217

/-! ## A111745.P2633158179773209154

`A008578(A332807(n+2)+1)`
-/

namespace A111745.P2633158179773209154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A332807 (n + 2) + 1).toNat

end

end A111745.P2633158179773209154

/-! ## A111745.P4639293085784540093

`A182986(A332807(n+2)+1)`
-/

namespace A111745.P4639293085784540093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A332807 (n + 2) + 1).toNat

end

end A111745.P4639293085784540093

/-! ## A111745.P12989009956093686598

`A108548(A082500(2*(n+2)))`
-/

namespace A111745.P12989009956093686598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A082500 (2 * (n + 2))).toNat

end

end A111745.P12989009956093686598

/-! ## A111745.P18419105593546918584

`filter[A108548(n+3), A010051(#)]`
-/

namespace A111745.P18419105593546918584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A111745.P18419105593546918584

/-! ## A111745.P12065415597542595506

`A108548(A014689(n+2)+n+2)`
-/

namespace A111745.P12065415597542595506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A014689 (n + 2) + (n + 2 : ℤ)).toNat

end

end A111745.P12065415597542595506

/-! ## A111745.P11431861376739397454

`filter[A108548(2*n+1), A323153(#)]`
-/

namespace A111745.P11431861376739397454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A111745.P11431861376739397454

/-!
# A111746: Number of squares in the interior of the square with vertices (n,0), (0,n), (-n,0) and (0,-n) in a square (x,y)-grid.

The programs for A111746, the canonical program `A111746.P11249351427940693566` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111746 has offset 0).

The definition of A111746 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111746.P11249351427940693566

`floor(A000447(n+1)/2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111746

/-- `floor(A000447(n+1)/2)` -/
def P11249351427940693566.Spec : Prop :=
  ∀ n, P11249351427940693566.a n = A111746 n

theorem P11249351427940693566.correct : P11249351427940693566.Spec := by
  intro n
  simp only [A111746]

end A111746

/-! ## A111746.P16685393524397914951

`floor(∑[Δ[n²]²/2])`
-/

namespace A111746.P16685393524397914951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A111746.P16685393524397914951

namespace A111746

/-- `floor(∑[Δ[n²]²/2])` -/
def P16685393524397914951.Spec : Prop :=
  ∀ n, P16685393524397914951.a n = A111746 n

end A111746

/-! ## A111746.P11191510543267514750

`∑[∑[4*n]+n%2]`
-/

namespace A111746.P11191510543267514750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111746.P11191510543267514750

namespace A111746

/-- `∑[∑[4*n]+n%2]` -/
def P11191510543267514750.Spec : Prop :=
  ∀ n, (P11191510543267514750.a n : ℤ) = A111746 n

end A111746

/-! ## A111746.P7653253413766879665

`∑[and(1, n)+∑[4*n]]`
-/

namespace A111746.P7653253413766879665
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111746.P7653253413766879665

namespace A111746

/-- `∑[and(1, n)+∑[4*n]]` -/
def P7653253413766879665.Spec : Prop :=
  ∀ n, (P7653253413766879665.a n : ℤ) = A111746 n

end A111746

/-! ## A111746.P15621995042802577473

`ceil(∑[sinh(log((2*n+1)²))])`
-/

namespace A111746.P15621995042802577473
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sinh (Real.log ((2 * n + 1) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A111746.P15621995042802577473

namespace A111746

/-- `ceil(∑[sinh(log((2*n+1)²))])` -/
def P15621995042802577473.Spec : Prop :=
  ∀ n, P15621995042802577473.a n = A111746 n

end A111746

/-! ## A111746.P6750737927457377393

`round(sinh(log(∑[(2*n+1)²])))`
-/

namespace A111746.P6750737927457377393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))

end

end A111746.P6750737927457377393

namespace A111746

/-- `round(sinh(log(∑[(2*n+1)²])))` -/
def P6750737927457377393.Spec : Prop :=
  ∀ n, P6750737927457377393.a n = A111746 n

end A111746

/-! ## A111746.P6000919123360160043

`∑[∑[a(n-2)+8]]` with `a(0)=0, a(1)=5, a(2)=7`
-/

namespace A111746.P6000919123360160043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 7] fun n f2 =>
  f2 (n - 2) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111746.P6000919123360160043

namespace A111746

/-- `∑[∑[a(n-2)+8]]` -/
def P6000919123360160043.Spec : Prop :=
  ∀ n, (P6000919123360160043.a n : ℤ) = A111746 n

end A111746

/-! ## A111746.P1640308506945797768

`∑[∑[∑[8-a(n-1)]]]` with `a(0)=0, a(1)=5, a(2)=2`
-/

namespace A111746.P1640308506945797768
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 2] fun n f3 =>
  8 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111746.P1640308506945797768

namespace A111746

/-- `∑[∑[∑[8-a(n-1)]]]` -/
def P1640308506945797768.Spec : Prop :=
  ∀ n, P1640308506945797768.a n = A111746 n

end A111746

/-! ## A111746.P6205979403366827596

`(2*n)²+a(n-2)+1` with `a(0)=0, a(1)=5`
-/

namespace A111746.P6205979403366827596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n a =>
  (2 * n) ^ 2 + (a (n - 2) + 1)

end

end A111746.P6205979403366827596

namespace A111746

/-- `(2*n)²+a(n-2)+1` -/
def P6205979403366827596.Spec : Prop :=
  ∀ n, (P6205979403366827596.a n : ℤ) = A111746 n

end A111746

/-! ## A111746.P14670517329640893386

`∑[(n+2)*2*n-comp[or(2, n)]]`
-/

namespace A111746.P14670517329640893386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (2 * n) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111746.P14670517329640893386

namespace A111746

/-- `∑[(n+2)*2*n-comp[or(2, n)]]` -/
def P14670517329640893386.Spec : Prop :=
  ∀ n, P14670517329640893386.a n = A111746 n

end A111746

/-! ## A111746.P16146871298476452498

`∑[(2*n+1)*(n+1)-or(1, n)]`
-/

namespace A111746.P16146871298476452498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (n + 1) : ℤ) - (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111746.P16146871298476452498

namespace A111746

/-- `∑[(2*n+1)*(n+1)-or(1, n)]` -/
def P16146871298476452498.Spec : Prop :=
  ∀ n, P16146871298476452498.a n = A111746 n

end A111746

/-! ## A111746.P12111453141119815155

`A213045(n)+∑[n]`
-/

namespace A111746.P12111453141119815155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213045 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A111746.P12111453141119815155

namespace A111746

/-- `A213045(n)+∑[n]` -/
def P12111453141119815155.Spec : Prop :=
  ∀ n, P12111453141119815155.a n = A111746 n

end A111746

/-! ## A111746.P5608799161093769345

`∑[A139596(n)-n]`
-/

namespace A111746.P5608799161093769345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139596 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111746.P5608799161093769345

namespace A111746

/-- `∑[A139596(n)-n]` -/
def P5608799161093769345.Spec : Prop :=
  ∀ n, P5608799161093769345.a n = A111746 n

end A111746

/-! ## A111746.P13420258515325444047

`A050533(n)-a(n-1)` with `a(0)=0`
-/

namespace A111746.P13420258515325444047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A050533 n - a (n - 1)

end

end A111746.P13420258515325444047

namespace A111746

/-- `A050533(n)-a(n-1)` -/
def P13420258515325444047.Spec : Prop :=
  ∀ n, P13420258515325444047.a n = A111746 n

end A111746

/-! ## A111746.P9292129336732746590

`∑[A394499(n+1)]+n²`
-/

namespace A111746.P9292129336732746590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A111746.P9292129336732746590

namespace A111746

/-- `∑[A394499(n+1)]+n²` -/
def P9292129336732746590.Spec : Prop :=
  ∀ n, P9292129336732746590.a n = A111746 n

end A111746

/-! ## A111746.P14795795985333088795

`A111500(n)-∑[(n+1)²]`
-/

namespace A111746.P14795795985333088795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111500 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A111746.P14795795985333088795

namespace A111746

/-- `A111500(n)-∑[(n+1)²]` -/
def P14795795985333088795.Spec : Prop :=
  ∀ n, P14795795985333088795.a n = A111746 n

end A111746

/-! ## A111746.P13625489656170055426

`∑[A046092(n)]+round(n/2)`
-/

namespace A111746.P13625489656170055426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + SequenceMachineLib.roundAway ((n : ℚ) / 2)

end

end A111746.P13625489656170055426

namespace A111746

/-- `∑[A046092(n)]+round(n/2)` -/
def P13625489656170055426.Spec : Prop :=
  ∀ n, P13625489656170055426.a n = A111746 n

end A111746

/-! ## A111746.P18276612550481603358

`A036487(n+1)+∑[∑[n]]`
-/

namespace A111746.P18276612550481603358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A111746.P18276612550481603358

namespace A111746

/-- `A036487(n+1)+∑[∑[n]]` -/
def P18276612550481603358.Spec : Prop :=
  ∀ n, P18276612550481603358.a n = A111746 n

end A111746

/-! ## A111746.P12723615143557610261

`∑[∑[A047451(n+1)]-n]`
-/

namespace A111746.P12723615143557610261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047451 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111746.P12723615143557610261

namespace A111746

/-- `∑[∑[A047451(n+1)]-n]` -/
def P12723615143557610261.Spec : Prop :=
  ∀ n, P12723615143557610261.a n = A111746 n

end A111746

/-! ## A111746.P4886083936891872516

`∑[∑[A168273(n+1)]+n²]`
-/

namespace A111746.P4886083936891872516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111746.P4886083936891872516

namespace A111746

/-- `∑[∑[A168273(n+1)]+n²]` -/
def P4886083936891872516.Spec : Prop :=
  ∀ n, P4886083936891872516.a n = A111746 n

end A111746

/-!
# A111747: Prime powers that are divisible by the sum of their digits.

The programs for A111747, there is no canonical definition to state claims against.
-/

/-! ## A111747.P3475915756224523803

`filter[A005349(n+1), A069513(#)]`
-/

namespace A111747.P3475915756224523803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A111747.P3475915756224523803

/-! ## A111747.P11121430661855620670

`filter[A356349(n+1), A069513(#)]`
-/

namespace A111747.P11121430661855620670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A111747.P11121430661855620670

/-! ## A111747.P7737577005401915536

`∩[A005349(n+1), A059046(n+1)]`
-/

namespace A111747.P7737577005401915536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111747.P7737577005401915536

/-! ## A111747.P17599369471402364732

`∩[A005349(n+1), A246655(n+1)]`
-/

namespace A111747.P17599369471402364732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111747.P17599369471402364732

/-! ## A111747.P1350679740806942644

`∩[A059046(n+1), A356349(n+1)]`
-/

namespace A111747.P1350679740806942644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111747.P1350679740806942644

/-!
# A111748: a(n) = 1 if n-th composite number is squarefree, otherwise a(n) = 0.

The programs for A111748, there is no canonical definition to state claims against.
-/

/-! ## A111748.P18178716680366178703

`A166281(n+2)%2`
-/

namespace A111748.P18178716680366178703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166281 (n + 2)) 2

end

end A111748.P18178716680366178703

/-! ## A111748.P14906551060812956118

`C(2, A111565(n+1)²)`
-/

namespace A111748.P14906551060812956118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A111565 (n + 1) ^ 2).toNat

end

end A111748.P14906551060812956118

/-! ## A111748.P17229941645525794714

`(A083256(n+2)/2)%2`
-/

namespace A111748.P17229941645525794714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A083256 (n + 2) : ℚ) / 2)) 2

end

end A111748.P17229941645525794714

/-! ## A111748.P17474080704053836029

`floor(1/∏{e}[A002808(n+1), #])`
-/

namespace A111748.P17474080704053836029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ)⌋

end

end A111748.P17474080704053836029

/-! ## A111748.P16113498423725646262

`∏{e}[A141468(n+3)², C(2, #)]`
-/

namespace A111748.P16113498423725646262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose 2 (Nat.factorization (f1 n).natAbs p)

end

end A111748.P16113498423725646262

/-! ## A111748.P6821806744030494606

`A008966(comp[p?[2*n+1]-3]+3)`
-/

namespace A111748.P6821806744030494606
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3)

end

end A111748.P6821806744030494606

/-! ## A111748.P14379609885200047978

`abs(A008683(comp[p?[2*n+1]-3]+3))`
-/

namespace A111748.P14379609885200047978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3)|

end

end A111748.P14379609885200047978

/-! ## A111748.P17006612010826734701

`abs(A181435(comp[p?[2*n+1]-3]+3))`
-/

namespace A111748.P17006612010826734701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A181435 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3)|

end

end A111748.P17006612010826734701

/-! ## A111748.P10978571527865223231

`A212793((comp[p?[2*n+1]-3]+3)²)`
-/

namespace A111748.P10978571527865223231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3) ^ 2)

end

end A111748.P10978571527865223231

/-! ## A111748.P14809518453355415403

`A277130(comp[p?[2*n+1]-3]+3)%2`
-/

namespace A111748.P14809518453355415403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277130 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3)) 2

end

end A111748.P14809518453355415403

/-!
# A111749: Number of (-1,0,1) periodic irreducible matrices (with Tij = -Tji for i < j) up to sign change, transposition and row and column permutations.

The programs for A111749, there is no canonical definition to state claims against.
-/

/-! ## A111749.P10398859668924265386

`∑[A020655(A045655(n))]`
-/

namespace A111749.P10398859668924265386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A045655 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111749.P10398859668924265386

/-!
# A111751: Numbers n such that P(3*n + 1) has exactly two distinct prime factors, where P(m) is the partition number A000041.

The programs for A111751, there is no canonical definition to state claims against.
-/

/-! ## A111751.P12482828477794253431

`eq[2, A087175(3*n+1)]`
-/

namespace A111751.P12482828477794253431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111751.P12482828477794253431

/-! ## A111751.P13948113921609344555

`eq[2, A087175(A008585(n+1)+1)]+1`
-/

namespace A111751.P13948113921609344555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (A008585 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A111751.P13948113921609344555

/-! ## A111751.P14127427039613890293

`eq[4, A001222(A085543(3*n+1)²)]`
-/

namespace A111751.P14127427039613890293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A085543 (3 * n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111751.P14127427039613890293

/-!
# A111752: Number of partitions of {1,..,n} into lists with an even number of lists of size 1, where a list means an ordered subset (cf. A000262).

The programs for A111752, there is no canonical definition to state claims against.
-/

/-! ## A111752.P16556496103258334083

`A000262(n)-A111753(n)`
-/

namespace A111752.P16556496103258334083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n - A111753 n

end

end A111752.P16556496103258334083

/-! ## A111752.P963643474260100887

`abs(A293125(n))-A111753(n)`
-/

namespace A111752.P963643474260100887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293125 n| - A111753 n

end

end A111752.P963643474260100887

/-! ## A111752.P17642839190287237880

`A059110(∑[n])-A111753(n)`
-/

namespace A111752.P17642839190287237880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059110 (∑ j ∈ Finset.range (n + 1), f1 j) - A111753 n

end

end A111752.P17642839190287237880

/-! ## A111752.P3687310537037760550

`A129652(∑[n])-A111753(n)`
-/

namespace A111752.P3687310537037760550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129652 (∑ j ∈ Finset.range (n + 1), f1 j) - A111753 n

end

end A111752.P3687310537037760550

/-! ## A111752.P16407342060128147786

`A206703(∑[n])-A111753(n)`
-/

namespace A111752.P16407342060128147786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206703 (∑ j ∈ Finset.range (n + 1), f1 j) - A111753 n

end

end A111752.P16407342060128147786

/-! ## A111752.P14558060707395502628

`A293053(∑[n]+n)-A111753(n)`
-/

namespace A111752.P14558060707395502628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293053 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A111753 n

end

end A111752.P14558060707395502628

/-! ## A111752.P9310997083318076135

`A056953(A004273(n))-A111753(n)`
-/

namespace A111752.P9310997083318076135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056953 (A004273 n).toNat - A111753 n

end

end A111752.P9310997083318076135

/-! ## A111752.P9782418105653536358

`A261764(A000096(n))-A111753(n)`
-/

namespace A111752.P9782418105653536358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261764 (A000096 n).toNat - A111753 n

end

end A111752.P9782418105653536358

/-! ## A111752.P16463837542436620925

`A293985(A027379(n))-A111753(n)`
-/

namespace A111752.P16463837542436620925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A027379 n).toNat - A111753 n

end

end A111752.P16463837542436620925

/-! ## A111752.P9313044169237620348

`A293985(A055998(n))-A111753(n)`
-/

namespace A111752.P9313044169237620348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A055998 n).toNat - A111753 n

end

end A111752.P9313044169237620348

/-!
# A111753: Number of partitions of {1,..,n} into lists with an odd number of lists of size 1, where a list means an ordered subset, cf. A000262.

The programs for A111753, there is no canonical definition to state claims against.
-/

/-! ## A111753.P14137365176482113698

`A000262(n)-A111752(n)`
-/

namespace A111753.P14137365176482113698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n - A111752 n

end

end A111753.P14137365176482113698

/-! ## A111753.P17242439107803248705

`abs(A293125(n))-A111752(n)`
-/

namespace A111753.P17242439107803248705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293125 n| - A111752 n

end

end A111753.P17242439107803248705

/-! ## A111753.P12346243828350157916

`A059110(∑[n])-A111752(n)`
-/

namespace A111753.P12346243828350157916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059110 (∑ j ∈ Finset.range (n + 1), f1 j) - A111752 n

end

end A111753.P12346243828350157916

/-! ## A111753.P16722332499343576453

`A129652(∑[n])-A111752(n)`
-/

namespace A111753.P16722332499343576453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129652 (∑ j ∈ Finset.range (n + 1), f1 j) - A111752 n

end

end A111753.P16722332499343576453

/-! ## A111753.P15723801530951130435

`A206703(∑[n])-A111752(n)`
-/

namespace A111753.P15723801530951130435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206703 (∑ j ∈ Finset.range (n + 1), f1 j) - A111752 n

end

end A111753.P15723801530951130435

/-! ## A111753.P9522679251386265449

`A216294(∑[n])-A111752(n)`
-/

namespace A111753.P9522679251386265449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216294 (∑ j ∈ Finset.range (n + 1), f1 j) - A111752 n

end

end A111753.P9522679251386265449

/-! ## A111753.P6608378826841480365

`A293053(∑[n]+n)-A111752(n)`
-/

namespace A111753.P6608378826841480365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293053 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A111752 n

end

end A111753.P6608378826841480365

/-! ## A111753.P1295962008435129676

`A056953(A004273(n))-A111752(n)`
-/

namespace A111753.P1295962008435129676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056953 (A004273 n).toNat - A111752 n

end

end A111753.P1295962008435129676

/-! ## A111753.P6611996758533884925

`A293985(A055998(n))-A111752(n)`
-/

namespace A111753.P6611996758533884925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A055998 n).toNat - A111752 n

end

end A111753.P6611996758533884925

/-!
# A111755: Excess of n over a greedy sum of distinct squares.

The programs for A111755, there is no canonical definition to state claims against.
-/

/-! ## A111755.P10951176313634417374

`A242305(A052938(n+1)²+n+1)`
-/

namespace A111755.P10951176313634417374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242305 (A052938 (n + 1) ^ 2 + (n + 1 : ℤ)).toNat

end

end A111755.P10951176313634417374

/-! ## A111755.P5598895382036972617

`A241833(C(n+3, 2))%4`
-/

namespace A111755.P5598895382036972617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241833 (Nat.choose (n + 3) 2)) 4

end

end A111755.P5598895382036972617

/-! ## A111755.P16837594272613894810

`A241833(∑[n+2]+1)%4`
-/

namespace A111755.P16837594272613894810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241833 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 4

end

end A111755.P16837594272613894810

/-! ## A111755.P14244697450530059055

`A241833(∑[a(n-1)+1])` with `a(0)=5, a(1)=1, a(2)=4`
-/

namespace A111755.P14244697450530059055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 1, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241833 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111755.P14244697450530059055

/-! ## A111755.P4503593796378164431

`A241833(abs(A046691(n))+4)`
-/

namespace A111755.P4503593796378164431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241833 (|A046691 n| + 4).toNat

end

end A111755.P4503593796378164431

/-! ## A111755.P10097763826140502619

`and(3, A241833(A000217(n+2)))`
-/

namespace A111755.P10097763826140502619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A241833 (A000217 (n + 2)).toNat)

end

end A111755.P10097763826140502619

/-! ## A111755.P12470480900551923926

`and(A004767(n), A241833(∑[n+2]+1))`
-/

namespace A111755.P12470480900551923926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004767 n) (A241833 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A111755.P12470480900551923926

/-! ## A111755.P16362259508110237222

`A241833(∑[n+2]+1)-A000038(n)²`
-/

namespace A111755.P16362259508110237222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241833 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A000038 n ^ 2

end

end A111755.P16362259508110237222

/-! ## A111755.P3030470693436577142

`(1-A000007(n))*A241833(∑[n+2]+1)`
-/

namespace A111755.P3030470693436577142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A241833 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111755.P3030470693436577142

/-! ## A111755.P4975590060392057903

`A003188(ceil(n/(n+1)))*A241833(∑[n+2]+1)`
-/

namespace A111755.P4975590060392057903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A241833 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111755.P4975590060392057903

/-!
# A111756: Greatest common divisors of consecutive terms of A091780.

The programs for A111756, there is no canonical definition to state claims against.
-/

/-! ## A111756.P9871962933297955023

`gcd(A091780(n+1), A091780(n+2))`
-/

namespace A111756.P9871962933297955023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091780 (n + 1)) (A091780 (n + 2))

end

end A111756.P9871962933297955023

/-!
# A111757: Number of bipartite 2-connected outerplanar graphs on n unlabeled nodes.

The programs for A111757, there is no canonical definition to state claims against.
-/

/-! ## A111757.P17858280924944722798

`A000035(n)*A228944(A284995(n+1))`
-/

namespace A111757.P17858280924944722798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A228944 (A284995 (n + 1)).toNat

end

end A111757.P17858280924944722798

/-! ## A111757.P1177467018064197093

`lcm(A091337(n), A228944(A284995(n+1)))`
-/

namespace A111757.P1177467018064197093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091337 n) (A228944 (A284995 (n + 1)).toNat)

end

end A111757.P1177467018064197093

/-!
# A111759: Number of bipartite outerplanar graphs on n unlabeled nodes.

The programs for A111759, there is no canonical definition to state claims against.
-/

/-! ## A111759.P4386789366717220998

`A071112(A148172(n+1))`
-/

namespace A111759.P4386789366717220998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071112 (A148172 (n + 1)).toNat

end

end A111759.P4386789366717220998

/-! ## A111759.P2009684504161034284

`A071112(A148173(n+1))`
-/

namespace A111759.P2009684504161034284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071112 (A148173 (n + 1)).toNat

end

end A111759.P2009684504161034284

/-! ## A111759.P8222343176068213491

`A071112(A148174(n+1))`
-/

namespace A111759.P8222343176068213491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071112 (A148174 (n + 1)).toNat

end

end A111759.P8222343176068213491

/-! ## A111759.P11865877060763391202

`A047201(A111275(n+1)^A070914(n))`
-/

namespace A111759.P11865877060763391202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (SequenceMachineLib.roundAway ((A111275 (n + 1) : ℚ) ^ (A070914 n : ℤ))).toNat

end

end A111759.P11865877060763391202

/-!
# A111766: Numbers occurring in three Pythagorean triples of the form: odd: a, (a^2-1)/2, (a^2+1)/2 or even: a, a^2/4-1, a^2/4+1.

The programs for A111766, the canonical program `A111766.P9077835371574536354` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111766 has offset 1).

The definition of A111766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111766.P9077835371574536354

`5*a(n-1)+5*a(n-2)-a(n-3)` with `a(0)=0, a(1)=5, a(2)=24`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111766

/-- `5*a(n-1)+5*a(n-2)-a(n-3)` -/
def P9077835371574536354.Spec : Prop :=
  ∀ n, P9077835371574536354.a n = A111766 (n + 1)

theorem P9077835371574536354.correct : P9077835371574536354.Spec := by
  intro n
  simp only [A111766, Nat.add_sub_cancel]

end A111766

/-! ## A111766.P16026357573307286610

`A000129(n+1)²+(-1)^(n+1)`
-/

namespace A111766.P16026357573307286610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) ^ 2 + (-1) ^ (n + 1)

end

end A111766.P16026357573307286610

namespace A111766

/-- `A000129(n+1)²+(-1)^(n+1)` -/
def P16026357573307286610.Spec : Prop :=
  ∀ n, P16026357573307286610.a n = A111766 (n + 1)

end A111766

/-! ## A111766.P755537483662656735

`A000129(n)*A000129(n+2)`
-/

namespace A111766.P755537483662656735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A000129 (n + 2)

end

end A111766.P755537483662656735

namespace A111766

/-- `A000129(n)*A000129(n+2)` -/
def P755537483662656735.Spec : Prop :=
  ∀ n, P755537483662656735.a n = A111766 (n + 1)

end A111766

/-! ## A111766.P17483265231956845283

`(6*(-1)^(n+1)+(3-2*sqrt(2))^(n+1)+(3+2*sqrt(2))^(n+1))/8`
-/

namespace A111766.P17483265231956845283
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 * (-1) ^ (n + 1) : ℝ) + (3 - 2 * Real.sqrt (2 : ℝ)) ^ (n + 1) + (3 + 2 * Real.sqrt (2 : ℝ)) ^ (n + 1)) / 8

end

end A111766.P17483265231956845283

namespace A111766

/-- `(6*(-1)^(n+1)+(3-2*sqrt(2))^(n+1)+(3+2*sqrt(2))^(n+1))/8` -/
def P17483265231956845283.Spec : Prop :=
  ∀ n, P17483265231956845283.a n = (A111766 (n + 1) : ℝ)

end A111766

/-! ## A111766.P12728570482537246916

`ogf((5x-x^2)/(1-5x-5x^2+x^3))`
-/

namespace A111766.P12728570482537246916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -1] [1, -5, -5, 1] n

end

end A111766.P12728570482537246916

namespace A111766

/-- `ogf((5x-x^2)/(1-5x-5x^2+x^3))` -/
def P12728570482537246916.Spec : Prop :=
  ∀ n, P12728570482537246916.a n = A111766 (n + 1)

end A111766

/-! ## A111766.P10676047054482853650

`xor(1, A077985(n)²)`
-/

namespace A111766.P10676047054482853650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A077985 n ^ 2)

end

end A111766.P10676047054482853650

namespace A111766

/-- `xor(1, A077985(n)²)` -/
def P10676047054482853650.Spec : Prop :=
  ∀ n, P10676047054482853650.a n = A111766 (n + 1)

end A111766

/-! ## A111766.P5085034996738268001

`xor(1, ∑[A084159(n)])`
-/

namespace A111766.P5085034996738268001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111766.P5085034996738268001

namespace A111766

/-- `xor(1, ∑[A084159(n)])` -/
def P5085034996738268001.Spec : Prop :=
  ∀ n, P5085034996738268001.a n = A111766 (n + 1)

end A111766

/-! ## A111766.P17902514049874749958

`xor(1, Δ[A084158(n)])`
-/

namespace A111766.P17902514049874749958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A111766.P17902514049874749958

namespace A111766

/-- `xor(1, Δ[A084158(n)])` -/
def P17902514049874749958.Spec : Prop :=
  ∀ n, P17902514049874749958.a n = A111766 (n + 1)

end A111766

/-! ## A111766.P1906507126658518845

`xor(1, A079291(n+1))`
-/

namespace A111766.P1906507126658518845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A079291 (n + 1))

end

end A111766.P1906507126658518845

namespace A111766

/-- `xor(1, A079291(n+1))` -/
def P1906507126658518845.Spec : Prop :=
  ∀ n, P1906507126658518845.a n = A111766 (n + 1)

end A111766

/-! ## A111766.P9858758913394386009

`xor(1, A089928(2*n))`
-/

namespace A111766.P9858758913394386009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A089928 (2 * n))

end

end A111766.P9858758913394386009

namespace A111766

/-- `xor(1, A089928(2*n))` -/
def P9858758913394386009.Spec : Prop :=
  ∀ n, P9858758913394386009.a n = A111766 (n + 1)

end A111766

/-! ## A111766.P14302881407706748807

`xor(1, ∑[A001333(n)]²)`
-/

namespace A111766.P14302881407706748807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A111766.P14302881407706748807

namespace A111766

/-- `xor(1, ∑[A001333(n)]²)` -/
def P14302881407706748807.Spec : Prop :=
  ∀ n, P14302881407706748807.a n = A111766 (n + 1)

end A111766

/-! ## A111766.P13742381458307239364

`xor(1, Δ[A024537(n)]²)`
-/

namespace A111766.P13742381458307239364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) - f1 n) ^ 2)

end

end A111766.P13742381458307239364

namespace A111766

/-- `xor(1, Δ[A024537(n)]²)` -/
def P13742381458307239364.Spec : Prop :=
  ∀ n, P13742381458307239364.a n = A111766 (n + 1)

end A111766

/-! ## A111766.P7098772361950091760

`xor(1, A000129(n+1)²)`
-/

namespace A111766.P7098772361950091760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000129 (n + 1) ^ 2)

end

end A111766.P7098772361950091760

namespace A111766

/-- `xor(1, A000129(n+1)²)` -/
def P7098772361950091760.Spec : Prop :=
  ∀ n, P7098772361950091760.a n = A111766 (n + 1)

end A111766

/-! ## A111766.P8709858795786008949

`xor(1, A215928(n+1)²)`
-/

namespace A111766.P8709858795786008949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A215928 (n + 1) ^ 2)

end

end A111766.P8709858795786008949

namespace A111766

/-- `xor(1, A215928(n+1)²)` -/
def P8709858795786008949.Spec : Prop :=
  ∀ n, P8709858795786008949.a n = A111766 (n + 1)

end A111766

/-! ## A111766.P5269320747342065634

`xor(1, (1-A052937(n))²)`
-/

namespace A111766.P5269320747342065634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((1 - A052937 n) ^ 2)

end

end A111766.P5269320747342065634

namespace A111766

/-- `xor(1, (1-A052937(n))²)` -/
def P5269320747342065634.Spec : Prop :=
  ∀ n, P5269320747342065634.a n = A111766 (n + 1)

end A111766

/-! ## A111766.P16939435589779467011

`xor(1, A176981(n+2)²)`
-/

namespace A111766.P16939435589779467011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A176981 (n + 2) ^ 2)

end

end A111766.P16939435589779467011

namespace A111766

/-- `xor(1, A176981(n+2)²)` -/
def P16939435589779467011.Spec : Prop :=
  ∀ n, P16939435589779467011.a n = A111766 (n + 1)

end A111766

/-! ## A111766.P15853508859848744061

`xor(1, Δ[A171842(n+1)]²)`
-/

namespace A111766.P15853508859848744061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) - f1 n) ^ 2)

end

end A111766.P15853508859848744061

namespace A111766

/-- `xor(1, Δ[A171842(n+1)]²)` -/
def P15853508859848744061.Spec : Prop :=
  ∀ n, P15853508859848744061.a n = A111766 (n + 1)

end A111766

/-! ## A111766.P12284636526813989750

`xor(1, ∑[A002203(n)/2]²)`
-/

namespace A111766.P12284636526813989750
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2))

end

end A111766.P12284636526813989750

namespace A111766

/-- `xor(1, ∑[A002203(n)/2]²)` -/
def P12284636526813989750.Spec : Prop :=
  ∀ n, P12284636526813989750.a n = A111766 (n + 1)

end A111766

/-! ## A111766.P13380505815250596449

`xor(1, A002965(2*(n+1))²)`
-/

namespace A111766.P13380505815250596449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A002965 (2 * (n + 1)) ^ 2)

end

end A111766.P13380505815250596449

namespace A111766

/-- `xor(1, A002965(2*(n+1))²)` -/
def P13380505815250596449.Spec : Prop :=
  ∀ n, P13380505815250596449.a n = A111766 (n + 1)

end A111766

/-! ## A111766.P6239394863526545857

`A001653(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A111766.P6239394863526545857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001653 (n + 1) - a (n - 1)

end

end A111766.P6239394863526545857

namespace A111766

/-- `A001653(n+1)-a(n-1)` -/
def P6239394863526545857.Spec : Prop :=
  ∀ n, P6239394863526545857.a n = A111766 (n + 1)

end A111766

/-!
# A111772: Number of non-isomorphic Average systems with n elements. An Average system has one binary operation "avg" and satisfies the three axioms avg(A,A)=A, avg(A,B)=avg(B,A), avg(avg(A,B),avg(C,D)) = avg(avg(A,C),avg(B,D)).

The programs for A111772, there is no canonical definition to state claims against.
-/

/-! ## A111772.P6438374503660941594

`floor(∏[n/2+1])-val(n!, 5)`
-/

namespace A111772.P6438374503660941594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋ - (SequenceMachineLib.valuation (Nat.factorial n) 5 : ℤ)

end

end A111772.P6438374503660941594

/-! ## A111772.P9904420305973068558

`round(atan(8)*A022493(n))`
-/

namespace A111772.P9904420305973068558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (8 : ℝ) * (A022493 n : ℝ))

end

end A111772.P9904420305973068558

/-! ## A111772.P4627989515563088454

`ceil(A056334(n+1)/atan(8))`
-/

namespace A111772.P4627989515563088454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056334 (n + 1) : ℝ) / Real.arctan (8 : ℝ)⌉

end

end A111772.P4627989515563088454

/-!
# A111773: Number of n-element binary operation tables, out of a total n^n^2 tables, that satisfy the axioms for an Average system. Not culled for isomorphism. The Average system axioms are avg(A,A)=A, avg(A,B)=avg(B,A), avg(avg(A,B),avg(C,D)) = avg(avg(A,C),avg(B,D)).

The programs for A111773, there is no canonical definition to state claims against.
-/

/-! ## A111773.P16489930823923838096

`A199799(∑[n!²])`
-/

namespace A111773.P16489930823923838096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199799 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111773.P16489930823923838096

/-!
# A111774: Numbers that can be written as a sum of at least three consecutive positive integers.

The programs for A111774, the canonical program `A111774.P7452926030815695820` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111774 has offset 1).

The definition of A111774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111774.P6481319931913653785

`lt[ϕ, ∑{e}[2*n, atan(#)]]`
-/

namespace A111774.P6481319931913653785
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Real.arctan (Nat.factorization (f3 n) p : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111774.P6481319931913653785

namespace A111774

/-- `lt[ϕ, ∑{e}[2*n, atan(#)]]` -/
def P6481319931913653785.Spec : Prop :=
  ∀ n, (P6481319931913653785.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P17347903594375647696

`lt[ϕ, ∑{e}[2*n, tanh(#)]]`
-/

namespace A111774.P17347903594375647696
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Real.tanh (Nat.factorization (f3 n) p : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111774.P17347903594375647696

namespace A111774

/-- `lt[ϕ, ∑{e}[2*n, tanh(#)]]` -/
def P17347903594375647696.Spec : Prop :=
  ∀ n, (P17347903594375647696.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P7452926030815695820

`lt[n, ∑{p}[2*n, n-#]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111774

/-- `lt[n, ∑{p}[2*n, n-#]]` -/
def P7452926030815695820.Spec : Prop :=
  ∀ n, (P7452926030815695820.a n : ℤ) = A111774 (n + 1)

theorem P7452926030815695820.correct : P7452926030815695820.Spec := by
  intro n
  simp only [A111774, Nat.add_sub_cancel]

end A111774

/-! ## A111774.P17766437802252864865

`lt[n+1, ∏{p}[2*n, n-#]]`
-/

namespace A111774.P17766437802252864865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((n : ℤ) - (p : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111774.P17766437802252864865

namespace A111774

/-- `lt[n+1, ∏{p}[2*n, n-#]]` -/
def P17766437802252864865.Spec : Prop :=
  ∀ n, (P17766437802252864865.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P4535762514157372828

`lt[(n+1)², ∏{e}[2*n, #+n]]`
-/

namespace A111774.P4535762514157372828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111774.P4535762514157372828

namespace A111774

/-- `lt[(n+1)², ∏{e}[2*n, #+n]]` -/
def P4535762514157372828.Spec : Prop :=
  ∀ n, (P4535762514157372828.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P9192269142038712306

`lt[2*n, ∑{e}[2*n, n-1+#]]`
-/

namespace A111774.P9192269142038712306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), ((n : ℤ) - 1 + (Nat.factorization (f3 n) p : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111774.P9192269142038712306

namespace A111774

/-- `lt[2*n, ∑{e}[2*n, n-1+#]]` -/
def P9192269142038712306.Spec : Prop :=
  ∀ n, (P9192269142038712306.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P13855914518987098236

`lt[2, A171565(n)]`
-/

namespace A111774.P13855914518987098236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111774.P13855914518987098236

namespace A111774

/-- `lt[2, A171565(n)]` -/
def P13855914518987098236.Spec : Prop :=
  ∀ n, (P13855914518987098236.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P469514684205700913

`lt[2, A066882(2*n)]`
-/

namespace A111774.P469514684205700913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111774.P469514684205700913

namespace A111774

/-- `lt[2, A066882(2*n)]` -/
def P469514684205700913.Spec : Prop :=
  ∀ n, (P469514684205700913.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P900306704625402750

`filter[n+1, A202238(#)]`
-/

namespace A111774.P900306704625402750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j) = 1) n)

end

end A111774.P900306704625402750

namespace A111774

/-- `filter[n+1, A202238(#)]` -/
def P900306704625402750.Spec : Prop :=
  ∀ n, (P900306704625402750.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P16823035847954544447

`eq[1, A202238(n+1)]+1`
-/

namespace A111774.P16823035847954544447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202238 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A111774.P16823035847954544447

namespace A111774

/-- `eq[1, A202238(n+1)]+1` -/
def P16823035847954544447.Spec : Prop :=
  ∀ n, (P16823035847954544447.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P16606536504972789257

`lt[1, A091570(n+1)]+1`
-/

namespace A111774.P16606536504972789257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A111774.P16606536504972789257

namespace A111774

/-- `lt[1, A091570(n+1)]+1` -/
def P16606536504972789257.Spec : Prop :=
  ∀ n, (P16606536504972789257.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P17032336569387701844

`lt[1, A091954(n+1)]+1`
-/

namespace A111774.P17032336569387701844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A111774.P17032336569387701844

namespace A111774

/-- `lt[1, A091954(n+1)]+1` -/
def P17032336569387701844.Spec : Prop :=
  ∀ n, (P17032336569387701844.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P7664959509642088623

`lt[1, A093803(n+1)]+1`
-/

namespace A111774.P7664959509642088623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A111774.P7664959509642088623

namespace A111774

/-- `lt[1, A093803(n+1)]+1` -/
def P7664959509642088623.Spec : Prop :=
  ∀ n, (P7664959509642088623.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P2725945583412003514

`lt[1, A124794(n+1)]+1`
-/

namespace A111774.P2725945583412003514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A111774.P2725945583412003514

namespace A111774

/-- `lt[1, A124794(n+1)]+1` -/
def P2725945583412003514.Spec : Prop :=
  ∀ n, (P2725945583412003514.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P16400635125910161538

`lt[1, A153452(n+1)]+1`
-/

namespace A111774.P16400635125910161538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A111774.P16400635125910161538

namespace A111774

/-- `lt[1, A153452(n+1)]+1` -/
def P16400635125910161538.Spec : Prop :=
  ∀ n, (P16400635125910161538.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P104998711117822073

`lt[1, A176095(n+1)]+1`
-/

namespace A111774.P104998711117822073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A111774.P104998711117822073

namespace A111774

/-- `lt[1, A176095(n+1)]+1` -/
def P104998711117822073.Spec : Prop :=
  ∀ n, (P104998711117822073.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P7947067116322900891

`lt[1, A317840(n+1)]+1`
-/

namespace A111774.P7947067116322900891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A111774.P7947067116322900891

namespace A111774

/-- `lt[1, A317840(n+1)]+1` -/
def P7947067116322900891.Spec : Prop :=
  ∀ n, (P7947067116322900891.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P16680826558052802913

`lt[1, A325225(n+1)]+1`
-/

namespace A111774.P16680826558052802913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A111774.P16680826558052802913

namespace A111774

/-- `lt[1, A325225(n+1)]+1` -/
def P16680826558052802913.Spec : Prop :=
  ∀ n, (P16680826558052802913.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P62982053675570836

`lt[1, A329322(n+1)]+1`
-/

namespace A111774.P62982053675570836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329322 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A111774.P62982053675570836

namespace A111774

/-- `lt[1, A329322(n+1)]+1` -/
def P62982053675570836.Spec : Prop :=
  ∀ n, (P62982053675570836.a n : ℤ) = A111774 (n + 1)

end A111774

/-! ## A111774.P14497111537085767685

`lt[1, A351647(n+1)]+1`
-/

namespace A111774.P14497111537085767685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351647 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A111774.P14497111537085767685

namespace A111774

/-- `lt[1, A351647(n+1)]+1` -/
def P14497111537085767685.Spec : Prop :=
  ∀ n, (P14497111537085767685.a n : ℤ) = A111774 (n + 1)

end A111774

/-!
# A111775: Number of ways n can be written as a sum of at least three consecutive integers.

The programs for A111775, the canonical program `A111775.P14958011218348248884` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111775 has offset 1).

The definition of A111775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111775.P15857240279618280589

`A091954(n+1)-char[abs(xor(n, -2))]`
-/

namespace A111775.P15857240279618280589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111775.P15857240279618280589

namespace A111775

/-- `A091954(n+1)-char[abs(xor(n, -2))]` -/
def P15857240279618280589.Spec : Prop :=
  ∀ n, P15857240279618280589.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P14735534175272317613

`(A320003(3*(n+1))+n)%(n+1)`
-/

namespace A111775.P14735534175272317613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320003 (3 * (n + 1)) + (n : ℤ)) (n + 1 : ℤ)

end

end A111775.P14735534175272317613

namespace A111775

/-- `(A320003(3*(n+1))+n)%(n+1)` -/
def P14735534175272317613.Spec : Prop :=
  ∀ n, P14735534175272317613.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P4094225744204819342

`A001227(n+1)+(n%2)^n-2`
-/

namespace A111775.P4094225744204819342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + ((((n % 2) ^ n : ℕ) : ℤ) - 2)

end

end A111775.P4094225744204819342

namespace A111775

/-- `A001227(n+1)+(n%2)^n-2` -/
def P4094225744204819342.Spec : Prop :=
  ∀ n, P4094225744204819342.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P14958011218348248884

`floor(A070824(n+1)/(val(n+1, 2)+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111775

/-- `floor(A070824(n+1)/(val(n+1, 2)+1))` -/
def P14958011218348248884.Spec : Prop :=
  ∀ n, P14958011218348248884.a n = A111775 (n + 1)

theorem P14958011218348248884.correct : P14958011218348248884.Spec := by
  intro n
  simp only [A111775, Nat.add_sub_cancel]

end A111775

/-! ## A111775.P3695873891327396956

`A028310(A091954(n+1))-1`
-/

namespace A111775.P3695873891327396956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A091954 (n + 1)).toNat - 1

end

end A111775.P3695873891327396956

namespace A111775

/-- `A028310(A091954(n+1))-1` -/
def P3695873891327396956.Spec : Prop :=
  ∀ n, P3695873891327396956.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P13184875831447411319

`A091954(n+1)+A057428(n)`
-/

namespace A111775.P13184875831447411319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) + A057428 n

end

end A111775.P13184875831447411319

namespace A111775

/-- `A091954(n+1)+A057428(n)` -/
def P13184875831447411319.Spec : Prop :=
  ∀ n, P13184875831447411319.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P14060554515479924049

`A001227(n+1)-A040001(n)`
-/

namespace A111775.P14060554515479924049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A040001 n

end

end A111775.P14060554515479924049

namespace A111775

/-- `A001227(n+1)-A040001(n)` -/
def P14060554515479924049.Spec : Prop :=
  ∀ n, P14060554515479924049.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P17889865733270723667

`A091954(n+1)-A057427(n)`
-/

namespace A111775.P17889865733270723667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) - A057427 n

end

end A111775.P17889865733270723667

namespace A111775

/-- `A091954(n+1)-A057427(n)` -/
def P17889865733270723667.Spec : Prop :=
  ∀ n, P17889865733270723667.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P2016855189698721827

`A066272(n+1)-A242029(n+1)`
-/

namespace A111775.P2016855189698721827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1) - A242029 (n + 1)

end

end A111775.P2016855189698721827

namespace A111775

/-- `A066272(n+1)-A242029(n+1)` -/
def P2016855189698721827.Spec : Prop :=
  ∀ n, P2016855189698721827.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P16164147166936209128

`A337566(n+1)-A023645(n+1)`
-/

namespace A111775.P16164147166936209128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337566 (n + 1) - A023645 (n + 1)

end

end A111775.P16164147166936209128

namespace A111775

/-- `A337566(n+1)-A023645(n+1)` -/
def P16164147166936209128.Spec : Prop :=
  ∀ n, P16164147166936209128.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P7571677580303458378

`A334239(n+1)-A055212(n+1)`
-/

namespace A111775.P7571677580303458378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334239 (n + 1) - A055212 (n + 1)

end

end A111775.P7571677580303458378

namespace A111775

/-- `A334239(n+1)-A055212(n+1)` -/
def P7571677580303458378.Spec : Prop :=
  ∀ n, P7571677580303458378.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P8656999410322377603

`A032741(n+1)-A368684(n+1)`
-/

namespace A111775.P8656999410322377603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A368684 (n + 1)

end

end A111775.P8656999410322377603

namespace A111775

/-- `A032741(n+1)-A368684(n+1)` -/
def P8656999410322377603.Spec : Prop :=
  ∀ n, P8656999410322377603.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P13920195449607124356

`A069930(n+1)%A076984(n+1)`
-/

namespace A111775.P13920195449607124356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069930 (n + 1)) (A076984 (n + 1))

end

end A111775.P13920195449607124356

namespace A111775

/-- `A069930(n+1)%A076984(n+1)` -/
def P13920195449607124356.Spec : Prop :=
  ∀ n, P13920195449607124356.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P18232179408023751382

`A294882(2*(n+1))-A294884(n+1)`
-/

namespace A111775.P18232179408023751382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294882 (2 * (n + 1)) - A294884 (n + 1)

end

end A111775.P18232179408023751382

namespace A111775

/-- `A294882(2*(n+1))-A294884(n+1)` -/
def P18232179408023751382.Spec : Prop :=
  ∀ n, P18232179408023751382.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P17180358833380736043

`A294892(2*(n+1))-A294894(n+1)`
-/

namespace A111775.P17180358833380736043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294892 (2 * (n + 1)) - A294894 (n + 1)

end

end A111775.P17180358833380736043

namespace A111775

/-- `A294892(2*(n+1))-A294894(n+1)` -/
def P17180358833380736043.Spec : Prop :=
  ∀ n, P17180358833380736043.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P16040784618454012258

`A294902(2*(n+1))-A294904(n+1)`
-/

namespace A111775.P16040784618454012258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294902 (2 * (n + 1)) - A294904 (n + 1)

end

end A111775.P16040784618454012258

namespace A111775

/-- `A294902(2*(n+1))-A294904(n+1)` -/
def P16040784618454012258.Spec : Prop :=
  ∀ n, P16040784618454012258.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P14679075166970681621

`floor(A091954(n+1)-n/A003586(n+1))`
-/

namespace A111775.P14679075166970681621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091954 (n + 1) : ℚ) - (n : ℚ) / (A003586 (n + 1) : ℚ)⌋

end

end A111775.P14679075166970681621

namespace A111775

/-- `floor(A091954(n+1)-n/A003586(n+1))` -/
def P14679075166970681621.Spec : Prop :=
  ∀ n, P14679075166970681621.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P13984691496181014044

`∑{d}[n+1, A069283(#)*A157658((n+1)/#)]`
-/

namespace A111775.P13984691496181014044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069283 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111775.P13984691496181014044

namespace A111775

/-- `∑{d}[n+1, A069283(#)*A157658((n+1)/#)]` -/
def P13984691496181014044.Spec : Prop :=
  ∀ n, P13984691496181014044.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P13955894107226126938

`∑{d}[n+1, A043545(#-1)*A296066((n+1)/#)]`
-/

namespace A111775.P13955894107226126938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A043545 (d - 1) * A296066 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111775.P13955894107226126938

namespace A111775

/-- `∑{d}[n+1, A043545(#-1)*A296066((n+1)/#)]` -/
def P13955894107226126938.Spec : Prop :=
  ∀ n, P13955894107226126938.a n = A111775 (n + 1)

end A111775

/-! ## A111775.P8630170468084077283

`A000005(A000265(n+1))-A040001(n)`
-/

namespace A111775.P8630170468084077283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat - A040001 n

end

end A111775.P8630170468084077283

namespace A111775

/-- `A000005(A000265(n+1))-A040001(n)` -/
def P8630170468084077283.Spec : Prop :=
  ∀ n, P8630170468084077283.a n = A111775 (n + 1)

end A111775

/-!
# A111776: Triangle read by rows: number of idempotent order-preserving partial transformations (of an n-element chain) of waist k (waist(alpha) = max(Im(alpha))).

The programs for A111776, there is no canonical definition to state claims against.
-/

/-! ## A111776.P13785550537942200886

`A287272(A225816(n)²)+A059481(n)`
-/

namespace A111776.P13785550537942200886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A225816 n ^ 2).toNat + A059481 n

end

end A111776.P13785550537942200886

/-! ## A111776.P18128706024316349462

`A287272(A225816(n)²)+A213743(n)`
-/

namespace A111776.P18128706024316349462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A225816 n ^ 2).toNat + A213743 n

end

end A111776.P18128706024316349462

/-!
# A111777: Fourth column (m=3) of unsigned triangle A111595.

The programs for A111777, there is no canonical definition to state claims against.
-/

/-! ## A111777.P9271546224067746740

`abs(A111595(A167614(n+2)))`
-/

namespace A111777.P9271546224067746740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111595 (A167614 (n + 2)).toNat|

end

end A111777.P9271546224067746740

/-! ## A111777.P11080970333839651143

`A111595(A167614(n+2))/A057079(3*n)`
-/

namespace A111777.P11080970333839651143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111595 (A167614 (n + 2)).toNat : ℚ) / (A057079 (3 * n) : ℚ)

end

end A111777.P11080970333839651143

/-! ## A111777.P1486947871912742324

`lcm(A028234(n+1), A111595(A167614(n+2)))`
-/

namespace A111777.P1486947871912742324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028234 (n + 1)) (A111595 (A167614 (n + 2)).toNat)

end

end A111777.P1486947871912742324

/-!
# A111785: T(n,k) are coefficients used for power series inversion (sometimes called reversion), n >= 0, k = 1..A000041(n), read by rows.

The programs for A111785, there is no canonical definition to state claims against.
-/

/-! ## A111785.P3623791137135609356

`A304462(lt[A111899(n+1), A277013(n+1)+1])`
-/

namespace A111785.P3623791137135609356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304462 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A111785.P3623791137135609356

/-! ## A111785.P18386513399972279972

`A304462(n)%A074873(n)`
-/

namespace A111785.P18386513399972279972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304462 n) (A074873 n)

end

end A111785.P18386513399972279972

/-! ## A111785.P8600485015152485723

`A304462(A089458(n+1)+n)`
-/

namespace A111785.P8600485015152485723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304462 (A089458 (n + 1) + (n : ℤ)).toNat

end

end A111785.P8600485015152485723

/-! ## A111785.P2353385079928115641

`A304462(abs(C(A209422(n+1), 48)-n))`
-/

namespace A111785.P2353385079928115641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304462 |(Nat.choose (A209422 (n + 1)).toNat 48 : ℤ) - (n : ℤ)|.toNat

end

end A111785.P2353385079928115641

/-! ## A111785.P4780922695114528302

`A304462(n)+A000142(3*n+4)%2`
-/

namespace A111785.P4780922695114528302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304462 n + Int.tmod (A000142 (3 * n + 4)) 2

end

end A111785.P4780922695114528302

/-!
# A111786: Array used to obtain the complete symmetric function in n variables in terms of the elementary symmetric functions; irregular triangle T(n,k), read by rows, with n >= 1 and 1 <= k <= A000041(n).

The programs for A111786, there is no canonical definition to state claims against.
-/

/-! ## A111786.P7153146105471461858

`A107106(n+1)*A179233(n+1)/A324254(n+1)`
-/

namespace A111786.P7153146105471461858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107106 (n + 1) * A179233 (n + 1) : ℚ) / (A324254 (n + 1) : ℚ)

end

end A111786.P7153146105471461858

/-! ## A111786.P2844376040876861490

`A321747(A185974(n+1))`
-/

namespace A111786.P2844376040876861490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321747 (A185974 (n + 1)).toNat

end

end A111786.P2844376040876861490

/-! ## A111786.P9607431763777218971

`A321747(A334438(n+1))`
-/

namespace A111786.P9607431763777218971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321747 (A334438 (n + 1)).toNat

end

end A111786.P9607431763777218971

/-!
# A111787: a(n) is the least k >= 3 such that n can be written as sum of k consecutive integers. a(n)=0 if such a k does not exist.

The programs for A111787, there is no canonical definition to state claims against.
-/

/-! ## A111787.P16344787369659876392

`A163169(A326579(n+1))%A002033(n)²`
-/

namespace A111787.P16344787369659876392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163169 (A326579 (n + 1)).toNat) (A002033 n ^ 2)

end

end A111787.P16344787369659876392

/-! ## A111787.P8937763979721843323

`A001221(A001055(n+1))*A163169(A326579(n+1))`
-/

namespace A111787.P8937763979721843323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001055 (n + 1)).toNat * A163169 (A326579 (n + 1)).toNat

end

end A111787.P8937763979721843323

/-! ## A111787.P1900936895953321958

`A163169(lcm(2, (∏{d}[n+1, #]/(n+1))%(∏{d}[n+1, #]-n)))`
-/

namespace A111787.P1900936895953321958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 (Int.lcm 2 (Int.tmod (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))) (((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n : ℤ))))

end

end A111787.P1900936895953321958

/-! ## A111787.P8007022033356497821

`A163169(lcm(2, A007956(n+1)))`
-/

namespace A111787.P8007022033356497821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 (Int.lcm 2 (A007956 (n + 1)))

end

end A111787.P8007022033356497821

/-! ## A111787.P14335286344021445626

`A200514(A014105(n))%A093653(n+1)`
-/

namespace A111787.P14335286344021445626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200514 (A014105 n).toNat) (A093653 (n + 1))

end

end A111787.P14335286344021445626

/-!
# A111792: Positive integers sorted by rote weight (A062537) and rote height (A109301).

The programs for A111792, there is no canonical definition to state claims against.
-/

/-! ## A111792.P12256387219251590679

`A000720(p?[A112480(n+1)])`
-/

namespace A111792.P12256387219251590679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111792.P12256387219251590679

/-! ## A111792.P5947510936391506765

`A003963(p?[A112480(n+1)])`
-/

namespace A111792.P5947510936391506765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111792.P5947510936391506765

/-! ## A111792.P16953937103684584330

`A026238(p?[A112480(n+1)])`
-/

namespace A111792.P16953937103684584330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111792.P16953937103684584330

/-! ## A111792.P578148662376915145

`A049084(p?[A112480(n+1)])`
-/

namespace A111792.P578148662376915145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111792.P578148662376915145

/-! ## A111792.P5222839424019226943

`A055396(p?[A112480(n+1)])`
-/

namespace A111792.P5222839424019226943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111792.P5222839424019226943

/-!
# A111794: Integers whose rote weight and rote height are equal, sorted by the equated value.

The programs for A111794, there is no canonical definition to state claims against.
-/

/-! ## A111794.P16118597479524102110

`A112095(A286865(n)+n)`
-/

namespace A111794.P16118597479524102110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112095 (A286865 n + (n : ℤ)).toNat

end

end A111794.P16118597479524102110

/-!
# A111795: Positive integers whose rote weight and rote height are equal.

The programs for A111795, there is no canonical definition to state claims against.
-/

/-! ## A111795.P12846959723384896115

`∩[A306203(A317710(n+1)), A318690(n+1)]`
-/

namespace A111795.P12846959723384896115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306203 (A317710 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111795.P12846959723384896115

/-! ## A111795.P1937514666524297847

`∩[A306203(n+1), A343822(n+1)]`
-/

namespace A111795.P1937514666524297847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111795.P1937514666524297847

/-! ## A111795.P14877111882171917856

`record[A323129(n+1)/A206496(n+1)]`
-/

namespace A111795.P14877111882171917856
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323129 (n + 1) : ℚ) / (A206496 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111795.P14877111882171917856

/-! ## A111795.P5483267282634743351

`eq[A062537(n+1), A109301(n+1)]+1`
-/

namespace A111795.P5483267282634743351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111795.P5483267282634743351

/-! ## A111795.P2015080648904471654

`eq[A206496(n+1), A244250(n+1)]+1`
-/

namespace A111795.P2015080648904471654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244250 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111795.P2015080648904471654

/-!
# A111798: Positive integers sorted by rote height (A109301) and omega (A001221).

The programs for A111798, there is no canonical definition to state claims against.
-/

/-! ## A111798.P16196540956966297267

`A018256(A089850(n)+1)`
-/

namespace A111798.P16196540956966297267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018256 (A089850 n + 1).toNat

end

end A111798.P16196540956966297267

/-! ## A111798.P1142363388163008491

`A018256(A104182(n+1))`
-/

namespace A111798.P1142363388163008491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018256 (A104182 (n + 1)).toNat

end

end A111798.P1142363388163008491

/-! ## A111798.P5530800141972541602

`A018256(A122303(n)+1)`
-/

namespace A111798.P5530800141972541602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018256 (A122303 n + 1).toNat

end

end A111798.P5530800141972541602

/-! ## A111798.P6488507705382528179

`A018256(A131142(n)+1)`
-/

namespace A111798.P6488507705382528179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018256 (A131142 n + 1).toNat

end

end A111798.P6488507705382528179

/-! ## A111798.P10876294977451104062

`char[4]+A000005(A047990(n))`
-/

namespace A111798.P10876294977451104062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A000005 (A047990 n).toNat

end

end A111798.P10876294977451104062

