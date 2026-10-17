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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C025

/-!
# A114200: When the n-th term of this sequence is added to or subtracted from the square of the n-th prime of the form 4k + 1 (i.e., A002144(n)), the result in both cases is a square.

The programs for A114200, there is no canonical definition to state claims against.
-/

/-! ## A114200.P10236837772120804630

`4*A145010(n+1)`
-/

namespace A114200.P10236837772120804630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A145010 (n + 1)

end

end A114200.P10236837772120804630

/-! ## A114200.P7338497756443899233

`A054435(2*A002144(n+1))`
-/

namespace A114200.P7338497756443899233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054435 (2 * A002144 (n + 1)).toNat

end

end A114200.P7338497756443899233

/-! ## A114200.P3107036822573843287

`A054435(2*A002313(n+2))`
-/

namespace A114200.P3107036822573843287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054435 (2 * A002313 (n + 2)).toNat

end

end A114200.P3107036822573843287

/-! ## A114200.P8737126053160374684

`A054435(2*A280084(n+2))`
-/

namespace A114200.P8737126053160374684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054435 (2 * A280084 (n + 2)).toNat

end

end A114200.P8737126053160374684

/-! ## A114200.P6763442817391125175

`A054435(2*A055131(n)/3)`
-/

namespace A114200.P6763442817391125175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054435 (SequenceMachineLib.roundAway (2 * ((A055131 n : ℚ) / 3))).toNat

end

end A114200.P6763442817391125175

/-!
# A114201: a(n) = C(2*n+1,n+1)*C(2*n+6,n).

The programs for A114201, there is no canonical definition to state claims against.
-/

/-! ## A114201.P10503013195414454709

`C(2*(n+3), n)*C(2*n+1, n)`
-/

namespace A114201.P10503013195414454709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 3)) n * Nat.choose (2 * n + 1) n

end

end A114201.P10503013195414454709

/-! ## A114201.P5495833644765306462

`∏[4-2/(n+1)]/2*A193635(∑[n+3])`
-/

namespace A114201.P5495833644765306462
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 * (A193635 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A114201.P5495833644765306462

/-! ## A114201.P6044973678926584340

`A001700(n)*A002696(n+3)`
-/

namespace A114201.P6044973678926584340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A002696 (n + 3)

end

end A114201.P6044973678926584340

/-! ## A114201.P5662047403570237914

`∑[A097613(n+1)]*A002696(n+3)`
-/

namespace A114201.P5662047403570237914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002696 (n + 3)

end

end A114201.P5662047403570237914

/-! ## A114201.P7488325286075204346

`record[A141811(n+1)]*A002696(n+3)`
-/

namespace A114201.P7488325286075204346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A002696 (n + 3)

end

end A114201.P7488325286075204346

/-! ## A114201.P1168488910509841310

`A002661(2*n+1)*A002696(n+3)`
-/

namespace A114201.P1168488910509841310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002661 (2 * n + 1) * A002696 (n + 3)

end

end A114201.P1168488910509841310

/-! ## A114201.P16897919502476119186

`(2*n+1)*A329687(3*n)*A002696(n+3)`
-/

namespace A114201.P16897919502476119186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A329687 (3 * n) * A002696 (n + 3)

end

end A114201.P16897919502476119186

/-! ## A114201.P10461578841783839637

`(A001791(n)+A000984(n))*A002696(n+3)`
-/

namespace A114201.P10461578841783839637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001791 n + A000984 n) * A002696 (n + 3)

end

end A114201.P10461578841783839637

/-! ## A114201.P2631448370001854400

`(A003516(n+3)-A002694(n+3))*A001700(n)`
-/

namespace A114201.P2631448370001854400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003516 (n + 3) - A002694 (n + 3)) * A001700 n

end

end A114201.P2631448370001854400

/-! ## A114201.P343080029670587855

`A062190(A056220(n+1))`
-/

namespace A114201.P343080029670587855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A056220 (n + 1)).toNat

end

end A114201.P343080029670587855

/-!
# A114202: A Pascal-Jacobsthal triangle.

The programs for A114202, there is no canonical definition to state claims against.
-/

/-! ## A114202.P4741216445315247145

`(A100936(n)-A101515(n)+1)%(2*A172377(n+1))`
-/

namespace A114202.P4741216445315247145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100936 n - A101515 n + 1) (2 * A172377 (n + 1))

end

end A114202.P4741216445315247145

/-! ## A114202.P271544469419484836

`A330690(A031937(n))+A100936(n)-A101515(n)`
-/

namespace A114202.P271544469419484836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330690 (A031937 n).toNat + (A100936 n - A101515 n)

end

end A114202.P271544469419484836

/-! ## A114202.P18310446770384169880

`A118759(A100936(n)+1-A101515(n))`
-/

namespace A114202.P18310446770384169880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A100936 n + (1 - A101515 n)).toNat

end

end A114202.P18310446770384169880

/-! ## A114202.P18411653120933362592

`A118759(1-(A101515(n)-A100936(n)))`
-/

namespace A114202.P18411653120933362592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (1 - (A101515 n - A100936 n)).toNat

end

end A114202.P18411653120933362592

/-! ## A114202.P7754129420549970562

`A122197((A100936(n)-A101515(n)+1)²)`
-/

namespace A114202.P7754129420549970562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 ((A100936 n - A101515 n + 1) ^ 2).toNat

end

end A114202.P7754129420549970562

/-!
# A114203: Row sums of a Pascal-Jacobsthal triangle.

The programs for A114203, the canonical program `A114203.P17904306399853117387` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114203 has offset 0).

The definition of A114203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114203.P17904306399853117387

`4*a(n-1)-5*a(n-2)+2*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114203

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)+2*a(n-4)` -/
def P17904306399853117387.Spec : Prop :=
  ∀ n, P17904306399853117387.a n = A114203 n

theorem P17904306399853117387.correct : P17904306399853117387.Spec := by
  intro n
  simp only [A114203]

end A114203

/-! ## A114203.P3166175103364721744

`Δ[A101892(n+1)]`
-/

namespace A114203.P3166175103364721744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114203.P3166175103364721744

namespace A114203

/-- `Δ[A101892(n+1)]` -/
def P3166175103364721744.Spec : Prop :=
  ∀ n, P3166175103364721744.a n = A114203 n

end A114203

/-! ## A114203.P268055540198647494

`Δ[record[A101892(A028242(n))]]`
-/

namespace A114203.P268055540198647494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101892 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114203.P268055540198647494

namespace A114203

/-- `Δ[record[A101892(A028242(n))]]` -/
def P268055540198647494.Spec : Prop :=
  ∀ n, P268055540198647494.a n = A114203 n

end A114203

/-! ## A114203.P13652794325288419505

`∑[A001333(n)-A101892(n)]`
-/

namespace A114203.P13652794325288419505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n - A101892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114203.P13652794325288419505

namespace A114203

/-- `∑[A001333(n)-A101892(n)]` -/
def P13652794325288419505.Spec : Prop :=
  ∀ n, P13652794325288419505.a n = A114203 n

end A114203

/-! ## A114203.P13791365482877373834

`A000129(n+1)-A373358(n)`
-/

namespace A114203.P13791365482877373834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) - A373358 n

end

end A114203.P13791365482877373834

namespace A114203

/-- `A000129(n+1)-A373358(n)` -/
def P13791365482877373834.Spec : Prop :=
  ∀ n, P13791365482877373834.a n = A114203 n

end A114203

/-! ## A114203.P15906079636493549363

`A215928(n+1)-A373358(n)`
-/

namespace A114203.P15906079636493549363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 1) - A373358 n

end

end A114203.P15906079636493549363

namespace A114203

/-- `A215928(n+1)-A373358(n)` -/
def P15906079636493549363.Spec : Prop :=
  ∀ n, P15906079636493549363.a n = A114203 n

end A114203

/-! ## A114203.P14036762662810860288

`A101892(n+2)-A101892(n+1)`
-/

namespace A114203.P14036762662810860288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101892 (n + 2) - A101892 (n + 1)

end

end A114203.P14036762662810860288

namespace A114203

/-- `A101892(n+2)-A101892(n+1)` -/
def P14036762662810860288.Spec : Prop :=
  ∀ n, P14036762662810860288.a n = A114203 n

end A114203

/-! ## A114203.P1144429490693803230

`A009545(n+1)+2*A373358(n)`
-/

namespace A114203.P1144429490693803230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1) + 2 * A373358 n

end

end A114203.P1144429490693803230

namespace A114203

/-- `A009545(n+1)+2*A373358(n)` -/
def P1144429490693803230.Spec : Prop :=
  ∀ n, P1144429490693803230.a n = A114203 n

end A114203

/-! ## A114203.P16445578524186520715

`A101892(n+1)+A146559(n)+A101892(n)`
-/

namespace A114203.P16445578524186520715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101892 (n + 1) + (A146559 n + A101892 n)

end

end A114203.P16445578524186520715

namespace A114203

/-- `A101892(n+1)+A146559(n)+A101892(n)` -/
def P16445578524186520715.Spec : Prop :=
  ∀ n, P16445578524186520715.a n = A114203 n

end A114203

/-! ## A114203.P10613740351946437785

`Δ[Δ[A373358(n)]]`
-/

namespace A114203.P10613740351946437785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373358 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114203.P10613740351946437785

namespace A114203

/-- `Δ[Δ[A373358(n)]]` -/
def P10613740351946437785.Spec : Prop :=
  ∀ n, P10613740351946437785.a n = A114203 n

end A114203

/-! ## A114203.P413108685694170652

`Δ[record[A101892(A025581(n))]]`
-/

namespace A114203.P413108685694170652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101892 (A025581 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114203.P413108685694170652

namespace A114203

/-- `Δ[record[A101892(A025581(n))]]` -/
def P413108685694170652.Spec : Prop :=
  ∀ n, P413108685694170652.a n = A114203 n

end A114203

/-! ## A114203.P18377643300178622325

`Δ[record[A101892(A002262(n))]]`
-/

namespace A114203.P18377643300178622325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101892 (A002262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114203.P18377643300178622325

namespace A114203

/-- `Δ[record[A101892(A002262(n))]]` -/
def P18377643300178622325.Spec : Prop :=
  ∀ n, P18377643300178622325.a n = A114203 n

end A114203

/-!
# A114204: Sum {binomial(n,k)^2*J(k+1),k,0,n} with J(n)=A001045(n).

The programs for A114204, there is no canonical definition to state claims against.
-/

/-! ## A114204.P3018240785378889764

`A114202(∑[4*n])`
-/

namespace A114204.P3018240785378889764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114202 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114204.P3018240785378889764

/-! ## A114204.P1267925421877494946

`record[A114202(A265225(n))]`
-/

namespace A114204.P1267925421877494946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114202 (A265225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114204.P1267925421877494946

/-!
# A114205: Write decimal expansion of 1/n as 0.PPP...PQQQ..., where QQQ... is the cyclic part. If the expansion does not terminate, any leading 0's in QQQ... are regarded as being at the end of the PPP...P part. Sequence gives PPP...P, right justified, with leading zeros omitted.

The programs for A114205, there is no canonical definition to state claims against.
-/

/-! ## A114205.P9688429784408369222

`A175555(6*A037343(n+1))`
-/

namespace A114205.P9688429784408369222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175555 (6 * A037343 (n + 1)).toNat

end

end A114205.P9688429784408369222

/-! ## A114205.P15815987851817449101

`A000027(A276348(n+2))%A276348(n+1)`
-/

namespace A114205.P15815987851817449101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A276348 (n + 2)).toNat) (A276348 (n + 1))

end

end A114205.P15815987851817449101

/-! ## A114205.P14415051240068076587

`A175555(lcm(A126798(n+2), A294317(n+4)))`
-/

namespace A114205.P14415051240068076587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175555 (Int.lcm (A126798 (n + 2)) (A294317 (n + 4)))

end

end A114205.P14415051240068076587

/-!
# A114206: Length of the preperiodic part of the decimal expansion of 1/n, and also leading zeros from the period part if the preperiodic digits are all 0's (if any).

The programs for A114206, there is no canonical definition to state claims against.
-/

/-! ## A114206.P14985896000603180474

`A386406(n+2)+A010054(A103579(n+1))`
-/

namespace A114206.P14985896000603180474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386406 (n + 2) + A010054 (A103579 (n + 1)).toNat

end

end A114206.P14985896000603180474

/-! ## A114206.P13633955271279237388

`A386406(n+2)+A000122(A386429(n+1))`
-/

namespace A114206.P13633955271279237388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386406 (n + 2) + A000122 (A386429 (n + 1)).toNat

end

end A114206.P13633955271279237388

/-! ## A114206.P16692903341587377090

`A386406(n+2)/A134451(A360289(3*n+2))`
-/

namespace A114206.P16692903341587377090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386406 (n + 2) : ℚ) / (A134451 (A360289 (3 * n + 2)).toNat : ℚ)

end

end A114206.P16692903341587377090

/-! ## A114206.P2750837458107552296

`A386406(n+2)+A010054(A103558(n+1))`
-/

namespace A114206.P2750837458107552296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386406 (n + 2) + A010054 (A103558 (n + 1)).toNat

end

end A114206.P2750837458107552296

/-! ## A114206.P6408605936648004385

`A386406(n+2)+A000122(A386430(2*n+5))`
-/

namespace A114206.P6408605936648004385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386406 (n + 2) + A000122 (A386430 (2 * n + 5)).toNat

end

end A114206.P6408605936648004385

/-! ## A114206.P54901476857260552

`and(A151090(n), A386406(n+2))`
-/

namespace A114206.P54901476857260552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151090 n) (A386406 (n + 2))

end

end A114206.P54901476857260552

/-! ## A114206.P9865710737444035210

`and(A137050(n+1), A386406(n+2))`
-/

namespace A114206.P9865710737444035210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137050 (n + 1)) (A386406 (n + 2))

end

end A114206.P9865710737444035210

/-! ## A114206.P10892306342953982510

`A386406(n+2)+A008683(A386425(n+1))`
-/

namespace A114206.P10892306342953982510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386406 (n + 2) + A008683 (A386425 (n + 1)).toNat

end

end A114206.P10892306342953982510

/-! ## A114206.P3976723564327095455

`and(A335980(n), A386406(n+2))`
-/

namespace A114206.P3976723564327095455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A335980 n) (A386406 (n + 2))

end

end A114206.P3976723564327095455

/-! ## A114206.P3125672430847828466

`A386406(n+2)+A019590(A345168(n+1))`
-/

namespace A114206.P3125672430847828466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386406 (n + 2) + A019590 (A345168 (n + 1)).toNat

end

end A114206.P3125672430847828466

/-!
# A114208: Number of permutations of [n] having exactly one fixed point and avoiding the patterns 123 and 231.

The programs for A114208, the canonical program `A114208.P14089421638251111156` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114208 has offset 1).

The definition of A114208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114208.P14089421638251111156

`∑[n]+1-(A114210(n+1)+A114209(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A114208

/-- `∑[n]+1-(A114210(n+1)+A114209(n+1))` -/
def P14089421638251111156.Spec : Prop :=
  ∀ n, P14089421638251111156.a n = A114208 (n + 1)

theorem P14089421638251111156.correct : P14089421638251111156.Spec := by
  intro n
  simp only [A114208, Nat.add_sub_cancel]

end A114208

/-!
# A114209: Number of permutations of [n] having exactly two fixed points and avoiding the patterns 123 and 231.

The programs for A114209, the canonical program `A114209.P14366745749335692388` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114209 has offset 1).

The definition of A114209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114209.P14366745749335692388

`floor(((n%2+1)²+n)²/24)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114209

/-- `floor(((n%2+1)²+n)²/24)` -/
def P14366745749335692388.Spec : Prop :=
  ∀ n, P14366745749335692388.a n = A114209 (n + 1)

theorem P14366745749335692388.correct : P14366745749335692388.Spec := by
  intro n
  simp only [A114209, Nat.add_sub_cancel]

end A114209

/-! ## A114209.P8536439757266541298

`round((n+2)²/12)-a(n-1)` with `a(0)=0`
-/

namespace A114209.P8536439757266541298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (((n + 2) ^ 2 : ℚ) / 12) - a (n - 1)

end

end A114209.P8536439757266541298

namespace A114209

/-- `round((n+2)²/12)-a(n-1)` -/
def P8536439757266541298.Spec : Prop :=
  ∀ n, P8536439757266541298.a n = A114209 (n + 1)

end A114209

/-! ## A114209.P3530136935876284490

`a(n-3)+∑[n]%(n+1)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A114209.P3530136935876284490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  a (n - 3) + (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A114209.P3530136935876284490

namespace A114209

/-- `a(n-3)+∑[n]%(n+1)` -/
def P3530136935876284490.Spec : Prop :=
  ∀ n, (P3530136935876284490.a n : ℤ) = A114209 (n + 1)

end A114209

/-! ## A114209.P18045634184676534412

`∑[∑[char[3*n]]]-C(floor(n/2)+2, 2)`
-/

namespace A114209.P18045634184676534412
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose (⌊(n : ℚ) / 2⌋ + 2).toNat 2 : ℤ)

end

end A114209.P18045634184676534412

namespace A114209

/-- `∑[∑[char[3*n]]]-C(floor(n/2)+2, 2)` -/
def P18045634184676534412.Spec : Prop :=
  ∀ n, P18045634184676534412.a n = A114209 (n + 1)

end A114209

/-! ## A114209.P15698309706043069399

`∑[∑[char[3*n]]-∑[n+1]%(n+2)]`
-/

namespace A114209.P15698309706043069399
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f4 j) % (n + 2) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114209.P15698309706043069399

namespace A114209

/-- `∑[∑[char[3*n]]-∑[n+1]%(n+2)]` -/
def P15698309706043069399.Spec : Prop :=
  ∀ n, P15698309706043069399.a n = A114209 (n + 1)

end A114209

/-! ## A114209.P9061126778830629604

`floor((C(xor(1, n+3), 3)/(n+1)+1)/4)`
-/

namespace A114209.P9061126778830629604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose (Nat.xor 1 (n + 3)) 3 : ℚ) / (n + 1 : ℚ) + 1) / 4⌋

end

end A114209.P9061126778830629604

namespace A114209

/-- `floor((C(xor(1, n+3), 3)/(n+1)+1)/4)` -/
def P9061126778830629604.Spec : Prop :=
  ∀ n, P9061126778830629604.a n = A114209 (n + 1)

end A114209

/-! ## A114209.P5571955806291269177

`A008731(abs(1-n))`
-/

namespace A114209.P5571955806291269177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 |1 - (n : ℤ)|.toNat

end

end A114209.P5571955806291269177

namespace A114209

/-- `A008731(abs(1-n))` -/
def P5571955806291269177.Spec : Prop :=
  ∀ n, P5571955806291269177.a n = A114209 (n + 1)

end A114209

/-! ## A114209.P15365531896058690918

`A001399(n)-A008731(n)`
-/

namespace A114209.P15365531896058690918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A008731 n

end

end A114209.P15365531896058690918

namespace A114209

/-- `A001399(n)-A008731(n)` -/
def P15365531896058690918.Spec : Prop :=
  ∀ n, P15365531896058690918.a n = A114209 (n + 1)

end A114209

/-! ## A114209.P1613922928219871373

`A211004(n+1)-A008805(n)`
-/

namespace A114209.P1613922928219871373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211004 (n + 1) - A008805 n

end

end A114209.P1613922928219871373

namespace A114209

/-- `A211004(n+1)-A008805(n)` -/
def P1613922928219871373.Spec : Prop :=
  ∀ n, P1613922928219871373.a n = A114209 (n + 1)

end A114209

/-! ## A114209.P7683584646741928772

`A114210(n+1)-A124093(n)`
-/

namespace A114209.P7683584646741928772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114210 (n + 1) - A124093 n

end

end A114209.P7683584646741928772

namespace A114209

/-- `A114210(n+1)-A124093(n)` -/
def P7683584646741928772.Spec : Prop :=
  ∀ n, P7683584646741928772.a n = A114209 (n + 1)

end A114209

/-! ## A114209.P12996128677908199703

`A274830(n+1)-A393678(n)`
-/

namespace A114209.P12996128677908199703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274830 (n + 1) - A393678 n

end

end A114209.P12996128677908199703

namespace A114209

/-- `A274830(n+1)-A393678(n)` -/
def P12996128677908199703.Spec : Prop :=
  ∀ n, P12996128677908199703.a n = A114209 (n + 1)

end A114209

/-! ## A114209.P2469989974283297109

`A266769(n)-A053090(n+3)`
-/

namespace A114209.P2469989974283297109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n - A053090 (n + 3)

end

end A114209.P2469989974283297109

namespace A114209

/-- `A266769(n)-A053090(n+3)` -/
def P2469989974283297109.Spec : Prop :=
  ∀ n, P2469989974283297109.a n = A114209 (n + 1)

end A114209

/-! ## A114209.P12771870321759965723

`A001400(n)-(A026810(n)+A008731(n))`
-/

namespace A114209.P12771870321759965723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - (A026810 n + A008731 n)

end

end A114209.P12771870321759965723

namespace A114209

/-- `A001400(n)-(A026810(n)+A008731(n))` -/
def P12771870321759965723.Spec : Prop :=
  ∀ n, P12771870321759965723.a n = A114209 (n + 1)

end A114209

/-! ## A114209.P4426127562485071069

`A309683(xor(1, n+1))`
-/

namespace A114209.P4426127562485071069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 (Nat.xor 1 (n + 1))

end

end A114209.P4426127562485071069

namespace A114209

/-- `A309683(xor(1, n+1))` -/
def P4426127562485071069.Spec : Prop :=
  ∀ n, P4426127562485071069.a n = A114209 (n + 1)

end A114209

/-! ## A114209.P8972815872723633586

`floor(A008796(n+1)/2)`
-/

namespace A114209.P8972815872723633586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008796 (n + 1) : ℚ) / 2⌋

end

end A114209.P8972815872723633586

namespace A114209

/-- `floor(A008796(n+1)/2)` -/
def P8972815872723633586.Spec : Prop :=
  ∀ n, P8972815872723633586.a n = A114209 (n + 1)

end A114209

/-! ## A114209.P8548419341001585301

`A005044(n+2)+A005044(n)`
-/

namespace A114209.P8548419341001585301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 2) + A005044 n

end

end A114209.P8548419341001585301

namespace A114209

/-- `A005044(n+2)+A005044(n)` -/
def P8548419341001585301.Spec : Prop :=
  ∀ n, P8548419341001585301.a n = A114209 (n + 1)

end A114209

/-! ## A114209.P14431906121738114698

`A001840(n+1)-A008805(n)`
-/

namespace A114209.P14431906121738114698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (n + 1) - A008805 n

end

end A114209.P14431906121738114698

namespace A114209

/-- `A001840(n+1)-A008805(n)` -/
def P14431906121738114698.Spec : Prop :=
  ∀ n, P14431906121738114698.a n = A114209 (n + 1)

end A114209

/-!
# A114210: Number of derangements of [n] avoiding the patterns 123 and 231.

The programs for A114210, the canonical program `A114210.P14163795220227250827` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114210 has offset 1).

The definition of A114210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114210.P14163795220227250827

`A124093(n)+A114209(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A114210

/-- `A124093(n)+A114209(n+1)` -/
def P14163795220227250827.Spec : Prop :=
  ∀ n, P14163795220227250827.a n = A114210 (n + 1)

theorem P14163795220227250827.correct : P14163795220227250827.Spec := by
  intro n
  simp only [A114210, Nat.add_sub_cancel]

end A114210

/-! ## A114210.P8832897935068053798

`A124093(n)+A008731(abs(A023443(n)))`
-/

namespace A114210.P8832897935068053798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 n + A008731 |A023443 n|.toNat

end

end A114210.P8832897935068053798

namespace A114210

/-- `A124093(n)+A008731(abs(A023443(n)))` -/
def P8832897935068053798.Spec : Prop :=
  ∀ n, P8832897935068053798.a n = A114210 (n + 1)

end A114210

/-! ## A114210.P7946960171055664681

`A001399(n)+A124093(n)-A008731(n)`
-/

namespace A114210.P7946960171055664681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + (A124093 n - A008731 n)

end

end A114210.P7946960171055664681

namespace A114210

/-- `A001399(n)+A124093(n)-A008731(n)` -/
def P7946960171055664681.Spec : Prop :=
  ∀ n, P7946960171055664681.a n = A114210 (n + 1)

end A114210

/-! ## A114210.P10770368990835164148

`A124093(n)+A008799(A165754(n))`
-/

namespace A114210.P10770368990835164148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 n + A008799 (A165754 n).toNat

end

end A114210.P10770368990835164148

namespace A114210

/-- `A124093(n)+A008799(A165754(n))` -/
def P10770368990835164148.Spec : Prop :=
  ∀ n, P10770368990835164148.a n = A114210 (n + 1)

end A114210

/-! ## A114210.P17786255646502971119

`A124093(n)+Δ[A008763(n+2)]`
-/

namespace A114210.P17786255646502971119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 n + (f1 (n + 1) - f1 n)

end

end A114210.P17786255646502971119

namespace A114210

/-- `A124093(n)+Δ[A008763(n+2)]` -/
def P17786255646502971119.Spec : Prop :=
  ∀ n, P17786255646502971119.a n = A114210 (n + 1)

end A114210

/-! ## A114210.P3396832861841519868

`A124093(n)+A004526(A008796(n+1))`
-/

namespace A114210.P3396832861841519868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 n + A004526 (A008796 (n + 1)).toNat

end

end A114210.P3396832861841519868

namespace A114210

/-- `A124093(n)+A004526(A008796(n+1))` -/
def P3396832861841519868.Spec : Prop :=
  ∀ n, P3396832861841519868.a n = A114210 (n + 1)

end A114210

/-! ## A114210.P17266939052555810347

`A124093(n)+A002264(Δ[A053307(n)])`
-/

namespace A114210.P17266939052555810347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 n + A002264 (f1 (n + 1) - f1 n).toNat

end

end A114210.P17266939052555810347

namespace A114210

/-- `A124093(n)+A002264(Δ[A053307(n)])` -/
def P17266939052555810347.Spec : Prop :=
  ∀ n, P17266939052555810347.a n = A114210 (n + 1)

end A114210

/-! ## A114210.P6641605522720859251

`A124093(n)+A002264(A008795(n+1))`
-/

namespace A114210.P6641605522720859251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 n + A002264 (A008795 (n + 1)).toNat

end

end A114210.P6641605522720859251

namespace A114210

/-- `A124093(n)+A002264(A008795(n+1))` -/
def P6641605522720859251.Spec : Prop :=
  ∀ n, P6641605522720859251.a n = A114210 (n + 1)

end A114210

/-!
# A114211: a(n) = (5*n^3+12*n^2+n+6)/6.

The programs for A114211, the canonical program `A114211.P9397835377014614280` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114211 has offset 0).

The definition of A114211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114211.P6361898589170310765

`(5*n^3+12*n²+n+6)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114211.P6361898589170310765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 3 + 12 * n ^ 2 + (n + 6) : ℚ) / 6

end

end A114211.P6361898589170310765

namespace A114211

/-- `(5*n^3+12*n²+n+6)/6` -/
def P6361898589170310765.Spec : Prop :=
  ∀ n, P6361898589170310765.a n = (A114211 n : ℚ)

end A114211

/-! ## A114211.P9397835377014614280

`a(n-1)+(n-1)*(n+2)+A104249(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A114211

/-- `a(n-1)+(n-1)*(n+2)+A104249(n)` -/
def P9397835377014614280.Spec : Prop :=
  ∀ n, P9397835377014614280.a n = A114211 n

theorem P9397835377014614280.correct : P9397835377014614280.Spec := by
  intro n
  simp only [A114211]

end A114211

/-! ## A114211.P10259772144935459904

`∑[abs(∑[a(n-1)-5])]` with `a(0)=1`
-/

namespace A114211.P10259772144935459904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114211.P10259772144935459904

namespace A114211

/-- `∑[abs(∑[a(n-1)-5])]` -/
def P10259772144935459904.Spec : Prop :=
  ∀ n, P10259772144935459904.a n = A114211 n

end A114211

/-! ## A114211.P13749226476034192815

`∑[∑[a(n-1)+5]]` with `a(0)=1, a(1)=2, a(2)=9`
-/

namespace A114211.P13749226476034192815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 9] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114211.P13749226476034192815

namespace A114211

/-- `∑[∑[a(n-1)+5]]` -/
def P13749226476034192815.Spec : Prop :=
  ∀ n, (P13749226476034192815.a n : ℤ) = A114211 n

end A114211

/-! ## A114211.P14564822262069036487

`∑[5*n-(1-a(n-1))]` with `a(0)=1, a(1)=3`
-/

namespace A114211.P14564822262069036487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (5 * n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114211.P14564822262069036487

namespace A114211

/-- `∑[5*n-(1-a(n-1))]` -/
def P14564822262069036487.Spec : Prop :=
  ∀ n, P14564822262069036487.a n = A114211 n

end A114211

/-! ## A114211.P1560202004679724610

`a(n-1)-∑[a(n-1)-5]` with `a(0)=1`
-/

namespace A114211.P1560202004679724610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114211.P1560202004679724610

namespace A114211

/-- `a(n-1)-∑[a(n-1)-5]` -/
def P1560202004679724610.Spec : Prop :=
  ∀ n, P1560202004679724610.a n = A114211 n

end A114211

/-! ## A114211.P3331054501067620832

`A162148(n)+1-n`
-/

namespace A114211.P3331054501067620832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n + (1 - (n : ℤ))

end

end A114211.P3331054501067620832

namespace A114211

/-- `A162148(n)+1-n` -/
def P3331054501067620832.Spec : Prop :=
  ∀ n, P3331054501067620832.a n = A114211 n

end A114211

/-! ## A114211.P2244925433492351159

`∑[abs(1-A147875(n))]`
-/

namespace A114211.P2244925433492351159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A147875 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114211.P2244925433492351159

namespace A114211

/-- `∑[abs(1-A147875(n))]` -/
def P2244925433492351159.Spec : Prop :=
  ∀ n, P2244925433492351159.a n = A114211 n

end A114211

/-! ## A114211.P3780598381452461543

`∑[abs(∑[2-A016861(n)])]`
-/

namespace A114211.P3780598381452461543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A016861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114211.P3780598381452461543

namespace A114211

/-- `∑[abs(∑[2-A016861(n)])]` -/
def P3780598381452461543.Spec : Prop :=
  ∀ n, P3780598381452461543.a n = A114211 n

end A114211

/-! ## A114211.P6856822579789993907

`∑[abs(∑[n]-A270710(n))]`
-/

namespace A114211.P6856822579789993907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A270710 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114211.P6856822579789993907

namespace A114211

/-- `∑[abs(∑[n]-A270710(n))]` -/
def P6856822579789993907.Spec : Prop :=
  ∀ n, P6856822579789993907.a n = A114211 n

end A114211

/-! ## A114211.P16048512938899748795

`A203552(n+1)-2*n`
-/

namespace A114211.P16048512938899748795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 (n + 1) - (2 * n : ℤ)

end

end A114211.P16048512938899748795

namespace A114211

/-- `A203552(n+1)-2*n` -/
def P16048512938899748795.Spec : Prop :=
  ∀ n, P16048512938899748795.a n = A114211 n

end A114211

/-! ## A114211.P10521130870958703027

`∑[abs(2-A005891(n)+n)]`
-/

namespace A114211.P10521130870958703027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A005891 n + (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114211.P10521130870958703027

namespace A114211

/-- `∑[abs(2-A005891(n)+n)]` -/
def P10521130870958703027.Spec : Prop :=
  ∀ n, P10521130870958703027.a n = A114211 n

end A114211

/-! ## A114211.P16795506218370910084

`∑[A045943(n)+abs(1-n²)]`
-/

namespace A114211.P16795506218370910084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n + |1 - (n ^ 2 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114211.P16795506218370910084

namespace A114211

/-- `∑[A045943(n)+abs(1-n²)]` -/
def P16795506218370910084.Spec : Prop :=
  ∀ n, P16795506218370910084.a n = A114211 n

end A114211

/-! ## A114211.P11374434078481802779

`∑[abs(1-n)+A116668(n)-1]`
-/

namespace A114211.P11374434078481802779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + (A116668 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114211.P11374434078481802779

namespace A114211

/-- `∑[abs(1-n)+A116668(n)-1]` -/
def P11374434078481802779.Spec : Prop :=
  ∀ n, P11374434078481802779.a n = A114211 n

end A114211

/-! ## A114211.P6004192393136889206

`∑[gcd(∑[5*n-1], A000038(n))]`
-/

namespace A114211.P6004192393136889206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f2 j) (A000038 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114211.P6004192393136889206

namespace A114211

/-- `∑[gcd(∑[5*n-1], A000038(n))]` -/
def P6004192393136889206.Spec : Prop :=
  ∀ n, (P6004192393136889206.a n : ℤ) = A114211 n

end A114211

/-! ## A114211.P4708873319366723729

`A058331(n)+A004068(n)`
-/

namespace A114211.P4708873319366723729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n + A004068 n

end

end A114211.P4708873319366723729

namespace A114211

/-- `A058331(n)+A004068(n)` -/
def P4708873319366723729.Spec : Prop :=
  ∀ n, P4708873319366723729.a n = A114211 n

end A114211

/-! ## A114211.P9013866018680337620

`A104249(n)+A002413(n)`
-/

namespace A114211.P9013866018680337620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n + A002413 n

end

end A114211.P9013866018680337620

namespace A114211

/-- `A104249(n)+A002413(n)` -/
def P9013866018680337620.Spec : Prop :=
  ∀ n, P9013866018680337620.a n = A114211 n

end A114211

/-! ## A114211.P9423760090415978934

`A132112(n)+A024001(n)`
-/

namespace A114211.P9423760090415978934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132112 n + A024001 n

end

end A114211.P9423760090415978934

namespace A114211

/-- `A132112(n)+A024001(n)` -/
def P9423760090415978934.Spec : Prop :=
  ∀ n, P9423760090415978934.a n = A114211 n

end A114211

/-! ## A114211.P3283135535746852581

`A101986(n)+A100119(n)`
-/

namespace A114211.P3283135535746852581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 n + A100119 n

end

end A114211.P3283135535746852581

namespace A114211

/-- `A101986(n)+A100119(n)` -/
def P3283135535746852581.Spec : Prop :=
  ∀ n, P3283135535746852581.a n = A114211 n

end A114211

/-! ## A114211.P1338614116751619575

`A203551(n)+A143689(n)`
-/

namespace A114211.P1338614116751619575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203551 n + A143689 n

end

end A114211.P1338614116751619575

namespace A114211

/-- `A203551(n)+A143689(n)` -/
def P1338614116751619575.Spec : Prop :=
  ∀ n, P1338614116751619575.a n = A114211 n

end A114211

/-!
# A114212: Generalized Gould sequence.

The programs for A114212, there is no canonical definition to state claims against.
-/

/-! ## A114212.P1553816208407359926

`A072406(xor(1, n+1))`
-/

namespace A114212.P1553816208407359926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072406 (Nat.xor 1 (n + 1))

end

end A114212.P1553816208407359926

/-! ## A114212.P1324467529529974894

`A072406(1-((-1)^n-n))`
-/

namespace A114212.P1324467529529974894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072406 (1 - ((-1) ^ n - (n : ℤ))).toNat

end

end A114212.P1324467529529974894

/-! ## A114212.P15959737218162571499

`(A105321(n)+A060632(n))/2`
-/

namespace A114212.P15959737218162571499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105321 n + A060632 n : ℚ) / 2

end

end A114212.P15959737218162571499

/-! ## A114212.P12127211125139899043

`(A105321(n)+Δ[A151566(n)])/2`
-/

namespace A114212.P12127211125139899043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105321 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A114212.P12127211125139899043

/-! ## A114212.P1173066601031408073

`ceil(or(A038573(n), A105321(n))/2)`
-/

namespace A114212.P1173066601031408073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor (A038573 n) (A105321 n) : ℚ) / 2⌉

end

end A114212.P1173066601031408073

/-! ## A114212.P2787982156874911196

`round(or(A038573(2*n), A105321(n))/2)`
-/

namespace A114212.P2787982156874911196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor (A038573 (2 * n)) (A105321 n) : ℚ) / 2)

end

end A114212.P2787982156874911196

/-! ## A114212.P6355031680675234165

`(or(A038573(4*n), A105321(n))+1)/2`
-/

namespace A114212.P6355031680675234165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (A038573 (4 * n)) (A105321 n) + 1 : ℚ) / 2

end

end A114212.P6355031680675234165

/-! ## A114212.P10080295753049365100

`A001281(A105321(n)+A060632(n))`
-/

namespace A114212.P10080295753049365100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A105321 n + A060632 n).toNat

end

end A114212.P10080295753049365100

/-! ## A114212.P7356229820809566823

`A004526(A105321(n)+A060632(n))`
-/

namespace A114212.P7356229820809566823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A105321 n + A060632 n).toNat

end

end A114212.P7356229820809566823

/-! ## A114212.P14377579814320809749

`A233775(n)-A319650(A233775(n))`
-/

namespace A114212.P14377579814320809749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233775 n - A319650 (A233775 n).toNat

end

end A114212.P14377579814320809749

/-!
# A114213: A generalized Pascal triangle modulo 2.

The programs for A114213, the canonical program `A114213.P4149335441730124754` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114213 has offset 0).

The definition of A114213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114213.P9941658057977088245

`A047996(n)%2`
-/

namespace A114213.P9941658057977088245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047996 n) 2

end

end A114213.P9941658057977088245

namespace A114213

/-- `A047996(n)%2` -/
def P9941658057977088245.Spec : Prop :=
  ∀ n, P9941658057977088245.a n = A114213 n

end A114213

/-! ## A114213.P15139898524716663288

`A103450(n)%2`
-/

namespace A114213.P15139898524716663288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103450 n) 2

end

end A114213.P15139898524716663288

namespace A114213

/-- `A103450(n)%2` -/
def P15139898524716663288.Spec : Prop :=
  ∀ n, P15139898524716663288.a n = A114213 n

end A114213

/-! ## A114213.P1056140636408473269

`A119326(n)%2`
-/

namespace A114213.P1056140636408473269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119326 n) 2

end

end A114213.P1056140636408473269

namespace A114213

/-- `A119326(n)%2` -/
def P1056140636408473269.Spec : Prop :=
  ∀ n, P1056140636408473269.a n = A114213 n

end A114213

/-! ## A114213.P3882215359579578641

`A119963(n)%2`
-/

namespace A114213.P3882215359579578641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119963 n) 2

end

end A114213.P3882215359579578641

namespace A114213

/-- `A119963(n)%2` -/
def P3882215359579578641.Spec : Prop :=
  ∀ n, P3882215359579578641.a n = A114213 n

end A114213

/-! ## A114213.P13173596075080680131

`A154334(n)%2`
-/

namespace A114213.P13173596075080680131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154334 n) 2

end

end A114213.P13173596075080680131

namespace A114213

/-- `A154334(n)%2` -/
def P13173596075080680131.Spec : Prop :=
  ∀ n, P13173596075080680131.a n = A114213 n

end A114213

/-! ## A114213.P7224192346205113530

`A154337(n)%2`
-/

namespace A114213.P7224192346205113530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154337 n) 2

end

end A114213.P7224192346205113530

namespace A114213

/-- `A154337(n)%2` -/
def P7224192346205113530.Spec : Prop :=
  ∀ n, P7224192346205113530.a n = A114213 n

end A114213

/-! ## A114213.P15919255702335282527

`A157147(n)%2`
-/

namespace A114213.P15919255702335282527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157147 n) 2

end

end A114213.P15919255702335282527

namespace A114213

/-- `A157147(n)%2` -/
def P15919255702335282527.Spec : Prop :=
  ∀ n, P15919255702335282527.a n = A114213 n

end A114213

/-! ## A114213.P16427488163021901850

`A157149(n)%2`
-/

namespace A114213.P16427488163021901850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157149 n) 2

end

end A114213.P16427488163021901850

namespace A114213

/-- `A157149(n)%2` -/
def P16427488163021901850.Spec : Prop :=
  ∀ n, P16427488163021901850.a n = A114213 n

end A114213

/-! ## A114213.P736711973123526877

`A157151(n)%2`
-/

namespace A114213.P736711973123526877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157151 n) 2

end

end A114213.P736711973123526877

namespace A114213

/-- `A157151(n)%2` -/
def P736711973123526877.Spec : Prop :=
  ∀ n, P736711973123526877.a n = A114213 n

end A114213

/-! ## A114213.P8477393543598880201

`A157152(n)%2`
-/

namespace A114213.P8477393543598880201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157152 n) 2

end

end A114213.P8477393543598880201

namespace A114213

/-- `A157152(n)%2` -/
def P8477393543598880201.Spec : Prop :=
  ∀ n, P8477393543598880201.a n = A114213 n

end A114213

/-! ## A114213.P13021699562789628010

`A157154(n)%2`
-/

namespace A114213.P13021699562789628010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157154 n) 2

end

end A114213.P13021699562789628010

namespace A114213

/-- `A157154(n)%2` -/
def P13021699562789628010.Spec : Prop :=
  ∀ n, P13021699562789628010.a n = A114213 n

end A114213

/-! ## A114213.P13087236619412105316

`A157156(n)%2`
-/

namespace A114213.P13087236619412105316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157156 n) 2

end

end A114213.P13087236619412105316

namespace A114213

/-- `A157156(n)%2` -/
def P13087236619412105316.Spec : Prop :=
  ∀ n, P13087236619412105316.a n = A114213 n

end A114213

/-! ## A114213.P8268431341646010076

`A157169(n)%2`
-/

namespace A114213.P8268431341646010076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157169 n) 2

end

end A114213.P8268431341646010076

namespace A114213

/-- `A157169(n)%2` -/
def P8268431341646010076.Spec : Prop :=
  ∀ n, P8268431341646010076.a n = A114213 n

end A114213

/-! ## A114213.P5629116685615393562

`A157171(n)%2`
-/

namespace A114213.P5629116685615393562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157171 n) 2

end

end A114213.P5629116685615393562

namespace A114213

/-- `A157171(n)%2` -/
def P5629116685615393562.Spec : Prop :=
  ∀ n, P5629116685615393562.a n = A114213 n

end A114213

/-! ## A114213.P7162398548181447127

`A168517(n)%2`
-/

namespace A114213.P7162398548181447127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168517 n) 2

end

end A114213.P7162398548181447127

namespace A114213

/-- `A168517(n)%2` -/
def P7162398548181447127.Spec : Prop :=
  ∀ n, P7162398548181447127.a n = A114213 n

end A114213

/-! ## A114213.P11264098308822108679

`A168549(n)%2`
-/

namespace A114213.P11264098308822108679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168549 n) 2

end

end A114213.P11264098308822108679

namespace A114213

/-- `A168549(n)%2` -/
def P11264098308822108679.Spec : Prop :=
  ∀ n, P11264098308822108679.a n = A114213 n

end A114213

/-! ## A114213.P3532223324278488524

`and(1, A307090(n))`
-/

namespace A114213.P3532223324278488524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A307090 n)

end

end A114213.P3532223324278488524

namespace A114213

/-- `and(1, A307090(n))` -/
def P3532223324278488524.Spec : Prop :=
  ∀ n, P3532223324278488524.a n = A114213 n

end A114213

/-! ## A114213.P4149335441730124754

`A004198(n)!%2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A114213

/-- `A004198(n)!%2` -/
def P4149335441730124754.Spec : Prop :=
  ∀ n, (P4149335441730124754.a n : ℤ) = A114213 n

theorem P4149335441730124754.correct : P4149335441730124754.Spec := by
  intro n
  simp only [A114213]

end A114213

/-! ## A114213.P15250455203797039662

`A029847(n+1)%2`
-/

namespace A114213.P15250455203797039662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029847 (n + 1)) 2

end

end A114213.P15250455203797039662

namespace A114213

/-- `A029847(n+1)%2` -/
def P15250455203797039662.Spec : Prop :=
  ∀ n, P15250455203797039662.a n = A114213 n

end A114213

/-! ## A114213.P5346174463845753912

`2-gcd(2, A168551(n))`
-/

namespace A114213.P5346174463845753912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 (A168551 n) : ℤ)

end

end A114213.P5346174463845753912

namespace A114213

/-- `2-gcd(2, A168551(n))` -/
def P5346174463845753912.Spec : Prop :=
  ∀ n, P5346174463845753912.a n = A114213 n

end A114213

/-!
# A114214: Diagonal sums of number triangle A114213.

The programs for A114214, the canonical program `A114214.P11537761350900255498` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114214 has offset 0).

The definition of A114214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114214.P11537761350900255498

`A002487(or(1, n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A114214

/-- `A002487(or(1, n))` -/
def P11537761350900255498.Spec : Prop :=
  ∀ n, P11537761350900255498.a n = A114214 n

theorem P11537761350900255498.correct : P11537761350900255498.Spec := by
  intro n
  simp only [A114214]

end A114214

/-! ## A114214.P12346971140736799165

`A057432(or(1, n))`
-/

namespace A114214.P12346971140736799165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057432 (Nat.lor 1 n)

end

end A114214.P12346971140736799165

namespace A114214

/-- `A057432(or(1, n))` -/
def P12346971140736799165.Spec : Prop :=
  ∀ n, P12346971140736799165.a n = A114214 n

end A114214

/-! ## A114214.P11786355061325173650

`A287896(or(1, n))`
-/

namespace A114214.P11786355061325173650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (Nat.lor 1 n)

end

end A114214.P11786355061325173650

namespace A114214

/-- `A287896(or(1, n))` -/
def P11786355061325173650.Spec : Prop :=
  ∀ n, P11786355061325173650.a n = A114214 n

end A114214

/-! ## A114214.P16560386048083861457

`A127971(and(n, -2))`
-/

namespace A114214.P16560386048083861457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127971 (Int.land (n : ℤ) (-2)).toNat

end

end A114214.P16560386048083861457

namespace A114214

/-- `A127971(and(n, -2))` -/
def P16560386048083861457.Spec : Prop :=
  ∀ n, P16560386048083861457.a n = A114214 n

end A114214

/-! ## A114214.P17321718264338333247

`A127971(or(1, n)-1)`
-/

namespace A114214.P17321718264338333247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127971 (Nat.lor 1 n - 1)

end

end A114214.P17321718264338333247

namespace A114214

/-- `A127971(or(1, n)-1)` -/
def P17321718264338333247.Spec : Prop :=
  ∀ n, P17321718264338333247.a n = A114214 n

end A114214

/-! ## A114214.P9324550782012659083

`A127971(n-and(1, n))`
-/

namespace A114214.P9324550782012659083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127971 (n - Nat.land 1 n)

end

end A114214.P9324550782012659083

namespace A114214

/-- `A127971(n-and(1, n))` -/
def P9324550782012659083.Spec : Prop :=
  ∀ n, P9324550782012659083.a n = A114214 n

end A114214

/-! ## A114214.P7259023664989805114

`A007306(∑[char[2*n]])`
-/

namespace A114214.P7259023664989805114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114214.P7259023664989805114

namespace A114214

/-- `A007306(∑[char[2*n]])` -/
def P7259023664989805114.Spec : Prop :=
  ∀ n, P7259023664989805114.a n = A114214 n

end A114214

/-! ## A114214.P14204528577554631812

`A002487(A109613(n))`
-/

namespace A114214.P14204528577554631812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A109613 n).toNat

end

end A114214.P14204528577554631812

namespace A114214

/-- `A002487(A109613(n))` -/
def P14204528577554631812.Spec : Prop :=
  ∀ n, P14204528577554631812.a n = A114214 n

end A114214

/-! ## A114214.P1522724785519926529

`A127971(A052928(n))`
-/

namespace A114214.P1522724785519926529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127971 (A052928 n).toNat

end

end A114214.P1522724785519926529

namespace A114214

/-- `A127971(A052928(n))` -/
def P1522724785519926529.Spec : Prop :=
  ∀ n, P1522724785519926529.a n = A114214 n

end A114214

/-! ## A114214.P9618129248845117878

`A002487(A052928(n)+1)`
-/

namespace A114214.P9618129248845117878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A052928 n + 1).toNat

end

end A114214.P9618129248845117878

namespace A114214

/-- `A002487(A052928(n)+1)` -/
def P9618129248845117878.Spec : Prop :=
  ∀ n, P9618129248845117878.a n = A114214 n

end A114214

/-! ## A114214.P3794427581015050945

`A057432(A063196(n+1))`
-/

namespace A114214.P3794427581015050945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057432 (A063196 (n + 1)).toNat

end

end A114214.P3794427581015050945

namespace A114214

/-- `A057432(A063196(n+1))` -/
def P3794427581015050945.Spec : Prop :=
  ∀ n, P3794427581015050945.a n = A114214 n

end A114214

/-! ## A114214.P1931154999835227363

`A002487(A059841(n)+n)`
-/

namespace A114214.P1931154999835227363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A059841 n + (n : ℤ)).toNat

end

end A114214.P1931154999835227363

namespace A114214

/-- `A002487(A059841(n)+n)` -/
def P1931154999835227363.Spec : Prop :=
  ∀ n, P1931154999835227363.a n = A114214 n

end A114214

/-! ## A114214.P18234624875971697428

`A287896(A059841(n)+n)`
-/

namespace A114214.P18234624875971697428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (A059841 n + (n : ℤ)).toNat

end

end A114214.P18234624875971697428

namespace A114214

/-- `A287896(A059841(n)+n)` -/
def P18234624875971697428.Spec : Prop :=
  ∀ n, P18234624875971697428.a n = A114214 n

end A114214

/-! ## A114214.P17927818016760016844

`A002487(2-A000034(n)+n)`
-/

namespace A114214.P17927818016760016844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 - A000034 n + (n : ℤ)).toNat

end

end A114214.P17927818016760016844

namespace A114214

/-- `A002487(2-A000034(n)+n)` -/
def P17927818016760016844.Spec : Prop :=
  ∀ n, P17927818016760016844.a n = A114214 n

end A114214

/-! ## A114214.P14684064655837239259

`A287896(n+2-A000034(n))`
-/

namespace A114214.P14684064655837239259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 ((n + 2 : ℤ) - A000034 n).toNat

end

end A114214.P14684064655837239259

namespace A114214

/-- `A287896(n+2-A000034(n))` -/
def P14684064655837239259.Spec : Prop :=
  ∀ n, P14684064655837239259.a n = A114214 n

end A114214

/-! ## A114214.P11064977633403991326

`A002487(A121262(2*n)+n)`
-/

namespace A114214.P11064977633403991326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A121262 (2 * n) + (n : ℤ)).toNat

end

end A114214.P11064977633403991326

namespace A114214

/-- `A002487(A121262(2*n)+n)` -/
def P11064977633403991326.Spec : Prop :=
  ∀ n, P11064977633403991326.a n = A114214 n

end A114214

/-! ## A114214.P2296316287841793228

`A007306(n+1)-A295515(n+1)`
-/

namespace A114214.P2296316287841793228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A295515 (n + 1)

end

end A114214.P2296316287841793228

namespace A114214

/-- `A007306(n+1)-A295515(n+1)` -/
def P2296316287841793228.Spec : Prop :=
  ∀ n, P2296316287841793228.a n = A114214 n

end A114214

/-! ## A114214.P5334958948167696351

`xor(A283987(n+1), A295515(n+1))`
-/

namespace A114214.P5334958948167696351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A283987 (n + 1)) (A295515 (n + 1))

end

end A114214.P5334958948167696351

namespace A114214

/-- `xor(A283987(n+1), A295515(n+1))` -/
def P5334958948167696351.Spec : Prop :=
  ∀ n, P5334958948167696351.a n = A114214 n

end A114214

/-! ## A114214.P3270939939305768937

`A002487(A036987(A006519(n+1))+n)`
-/

namespace A114214.P3270939939305768937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A036987 (A006519 (n + 1)).toNat + (n : ℤ)).toNat

end

end A114214.P3270939939305768937

namespace A114214

/-- `A002487(A036987(A006519(n+1))+n)` -/
def P3270939939305768937.Spec : Prop :=
  ∀ n, P3270939939305768937.a n = A114214 n

end A114214

/-! ## A114214.P12858067133451622991

`A002487(A069517(A037227(n+1))+n)`
-/

namespace A114214.P12858067133451622991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A069517 (A037227 (n + 1)).toNat + (n : ℤ)).toNat

end

end A114214.P12858067133451622991

namespace A114214

/-- `A002487(A069517(A037227(n+1))+n)` -/
def P12858067133451622991.Spec : Prop :=
  ∀ n, P12858067133451622991.a n = A114214 n

end A114214

/-!
# A114215: Number of derangements of [n] avoiding the patterns 123, 132 and 213.

The programs for A114215, the canonical program `A114215.P17295480692272141026` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114215 has offset 1).

The definition of A114215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114215.P17295480692272141026

`2*a(n-2)+2*a(n-4)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=4, a(5)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114215

/-- `2*a(n-2)+2*a(n-4)-a(n-6)` -/
def P17295480692272141026.Spec : Prop :=
  ∀ n, P17295480692272141026.a n = A114215 (n + 1)

theorem P17295480692272141026.correct : P17295480692272141026.Spec := by
  intro n
  simp only [A114215, Nat.add_sub_cancel]

end A114215

/-! ## A114215.P8261417784389823788

`gcd(2, n)*A074677(xor(1, n+1))`
-/

namespace A114215.P8261417784389823788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A074677 (Nat.xor 1 (n + 1))

end

end A114215.P8261417784389823788

namespace A114215

/-- `gcd(2, n)*A074677(xor(1, n+1))` -/
def P8261417784389823788.Spec : Prop :=
  ∀ n, P8261417784389823788.a n = A114215 (n + 1)

end A114215

/-! ## A114215.P16997172552278129375

`A094966(n)+A103609(n)²`
-/

namespace A114215.P16997172552278129375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n + A103609 n ^ 2

end

end A114215.P16997172552278129375

namespace A114215

/-- `A094966(n)+A103609(n)²` -/
def P16997172552278129375.Spec : Prop :=
  ∀ n, P16997172552278129375.a n = A114215 (n + 1)

end A114215

/-! ## A114215.P9882296965987959817

`A000045(n+1)+Δ[Δ[A103609(n+1)]²]`
-/

namespace A114215.P9882296965987959817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (f1 (n + 1) - f1 n)

end

end A114215.P9882296965987959817

namespace A114215

/-- `A000045(n+1)+Δ[Δ[A103609(n+1)]²]` -/
def P9882296965987959817.Spec : Prop :=
  ∀ n, P9882296965987959817.a n = A114215 (n + 1)

end A114215

/-! ## A114215.P5875833170832990176

`A000045(n+2)-A000045(floor(n/2)+1)²`
-/

namespace A114215.P5875833170832990176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A000045 (⌊(n : ℚ) / 2⌋ + 1).toNat ^ 2

end

end A114215.P5875833170832990176

namespace A114215

/-- `A000045(n+2)-A000045(floor(n/2)+1)²` -/
def P5875833170832990176.Spec : Prop :=
  ∀ n, P5875833170832990176.a n = A114215 (n + 1)

end A114215

/-! ## A114215.P5103245991955902000

`A103609(A163980(n+1))+A103609(n)²`
-/

namespace A114215.P5103245991955902000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A163980 (n + 1)).toNat + A103609 n ^ 2

end

end A114215.P5103245991955902000

namespace A114215

/-- `A103609(A163980(n+1))+A103609(n)²` -/
def P5103245991955902000.Spec : Prop :=
  ∀ n, P5103245991955902000.a n = A114215 (n + 1)

end A114215

/-! ## A114215.P2676528559157885799

`Δ[A000071(n+2)+Δ[A103609(n+1)]²]`
-/

namespace A114215.P2676528559157885799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114215.P2676528559157885799

namespace A114215

/-- `Δ[A000071(n+2)+Δ[A103609(n+1)]²]` -/
def P2676528559157885799.Spec : Prop :=
  ∀ n, P2676528559157885799.a n = A114215 (n + 1)

end A114215

/-! ## A114215.P8064890273621672612

`record[A104763(n+1)]-A104763(A165157(n+3))²`
-/

namespace A114215.P8064890273621672612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A104763 (A165157 (n + 3)).toNat ^ 2

end

end A114215.P8064890273621672612

namespace A114215

/-- `record[A104763(n+1)]-A104763(A165157(n+3))²` -/
def P8064890273621672612.Spec : Prop :=
  ∀ n, P8064890273621672612.a n = A114215 (n + 1)

end A114215

/-!
# A114216: a(0)=0; thereafter a(n) = largest odd divisor of a(n-1) + prime(n).

The programs for A114216, the canonical program `A114216.P17343794217474854680` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114216 has offset 0).

The definition of A114216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114216.P17343794217474854680

`A000265(a(n-1)+sqrt(A280076(n+1)))` with `a(0)=0`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A114216

/-- `A000265(a(n-1)+sqrt(A280076(n+1)))` -/
def P17343794217474854680.Spec : Prop :=
  ∀ n, P17343794217474854680.a n = A114216 n

theorem P17343794217474854680.correct : P17343794217474854680.Spec := by
  intro n
  simp only [A114216]

end A114216

/-! ## A114216.P14107687916609832565

`A171435(a(n-1)+sqrt(A280076(n+1)))` with `a(0)=0`
-/

namespace A114216.P14107687916609832565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A171435 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.sqrt (A280076 (n + 1) : ℝ))).toNat

end

end A114216.P14107687916609832565

namespace A114216

/-- `A171435(a(n-1)+sqrt(A280076(n+1)))` -/
def P14107687916609832565.Spec : Prop :=
  ∀ n, P14107687916609832565.a n = A114216 n

end A114216

/-! ## A114216.P10868134166230487199

`A028234(eq[1, A032742(n+1)]+a(n-1)+1)` with `a(0)=0`
-/

namespace A114216.P10868134166230487199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A028234 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + a (n - 1) + 1).toNat

end

end A114216.P10868134166230487199

namespace A114216

/-- `A028234(eq[1, A032742(n+1)]+a(n-1)+1)` -/
def P10868134166230487199.Spec : Prop :=
  ∀ n, P10868134166230487199.a n = A114216 n

end A114216

/-! ## A114216.P9263920499317710881

`A028234(eq[1, A078898(n+1)]+a(n-1)+1)` with `a(0)=0`
-/

namespace A114216.P9263920499317710881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A028234 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + a (n - 1) + 1).toNat

end

end A114216.P9263920499317710881

namespace A114216

/-- `A028234(eq[1, A078898(n+1)]+a(n-1)+1)` -/
def P9263920499317710881.Spec : Prop :=
  ∀ n, P9263920499317710881.a n = A114216 n

end A114216

/-! ## A114216.P2232967796103781370

`A028234(eq[n+1, A020639(n+1)]+a(n-1)+1)` with `a(0)=0`
-/

namespace A114216.P2232967796103781370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A028234 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + a (n - 1) + 1).toNat

end

end A114216.P2232967796103781370

namespace A114216

/-- `A028234(eq[n+1, A020639(n+1)]+a(n-1)+1)` -/
def P2232967796103781370.Spec : Prop :=
  ∀ n, P2232967796103781370.a n = A114216 n

end A114216

/-!
# A114218: Values of k when A114216(n)=1.

The programs for A114218, there is no canonical definition to state claims against.
-/

/-! ## A114218.P1775280035706973627

`∑[and(A138167(n+1), A323092(n))]`
-/

namespace A114218.P1775280035706973627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138167 (n + 1)) (A323092 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114218.P1775280035706973627

/-! ## A114218.P5998542177653254724

`∑[and(A138167(n+1), A364345(n))]`
-/

namespace A114218.P5998542177653254724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138167 (n + 1)) (A364345 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114218.P5998542177653254724

/-! ## A114218.P13205570241724235308

`A299432(n)+∑[∑[A222290(n+1)]]`
-/

namespace A114218.P13205570241724235308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299432 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114218.P13205570241724235308

/-! ## A114218.P8458030490711402390

`∑[and(A094969(2*n+3), A098859(n))]`
-/

namespace A114218.P8458030490711402390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094969 (2 * n + 3)) (A098859 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114218.P8458030490711402390

/-! ## A114218.P12780551593524669564

`A069787(n)+A020639(A215255(n))`
-/

namespace A114218.P12780551593524669564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 n + A020639 (A215255 n).toNat

end

end A114218.P12780551593524669564

/-!
# A114219: Number triangle T(n,k) = (k-(k-1)*0^(n-k))*[k<=n].

The programs for A114219, the canonical program `A114219.P10639804880516663625` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114219 has offset 0).

The definition of A114219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114219.P7820724185309670786

`abs(C(round(sqrt(2*(n+2))), 2)-n)`
-/

namespace A114219.P7820724185309670786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 2) : ℝ))).toNat 2 : ℤ) - (n : ℤ)|

end

end A114219.P7820724185309670786

namespace A114219

/-- `abs(C(round(sqrt(2*(n+2))), 2)-n)` -/
def P7820724185309670786.Spec : Prop :=
  ∀ n, P7820724185309670786.a n = A114219 n

end A114219

/-! ## A114219.P17579272348259408104

`gcd(n-C(∑[char[∑[n]]], 2), Δ[C(round(sqrt(2*(n+1))), 2)])`
-/

namespace A114219.P17579272348259408104
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ((f4 (n + 1) : ℤ) - (f4 n : ℤ))

end

end A114219.P17579272348259408104

namespace A114219

/-- `gcd(n-C(∑[char[∑[n]]], 2), Δ[C(round(sqrt(2*(n+1))), 2)])` -/
def P17579272348259408104.Spec : Prop :=
  ∀ n, (P17579272348259408104.a n : ℤ) = A114219 n

end A114219

/-! ## A114219.P14023149516879998966

`abs(n-∑[A127648(n)])`
-/

namespace A114219.P14023149516879998966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A114219.P14023149516879998966

namespace A114219

/-- `abs(n-∑[A127648(n)])` -/
def P14023149516879998966.Spec : Prop :=
  ∀ n, P14023149516879998966.a n = A114219 n

end A114219

/-! ## A114219.P10639804880516663625

`abs(1-A048151(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A114219

/-- `abs(1-A048151(n+1))` -/
def P10639804880516663625.Spec : Prop :=
  ∀ n, P10639804880516663625.a n = A114219 n

theorem P10639804880516663625.correct : P10639804880516663625.Spec := by
  intro n
  simp only [A114219]

end A114219

/-! ## A114219.P14668463480086242398

`abs(2-A002260(n+2))`
-/

namespace A114219.P14668463480086242398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A002260 (n + 2)|

end

end A114219.P14668463480086242398

namespace A114219

/-- `abs(2-A002260(n+2))` -/
def P14668463480086242398.Spec : Prop :=
  ∀ n, P14668463480086242398.a n = A114219 n

end A114219

/-! ## A114219.P11691855296465272907

`A128227(n)-A023532(n)`
-/

namespace A114219.P11691855296465272907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n - A023532 n

end

end A114219.P11691855296465272907

namespace A114219

/-- `A128227(n)-A023532(n)` -/
def P11691855296465272907.Spec : Prop :=
  ∀ n, P11691855296465272907.a n = A114219 n

end A114219

/-! ## A114219.P15617402387600142089

`A191532(n)/A131843(n)`
-/

namespace A114219.P15617402387600142089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191532 n : ℚ) / (A131843 n : ℚ)

end

end A114219.P15617402387600142089

namespace A114219

/-- `A191532(n)/A131843(n)` -/
def P15617402387600142089.Spec : Prop :=
  ∀ n, P15617402387600142089.a n = (A114219 n : ℚ)

end A114219

/-! ## A114219.P8508710758841045563

`A191532(n)%A028326(n)`
-/

namespace A114219.P8508710758841045563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191532 n) (A028326 n)

end

end A114219.P8508710758841045563

namespace A114219

/-- `A191532(n)%A028326(n)` -/
def P8508710758841045563.Spec : Prop :=
  ∀ n, P8508710758841045563.a n = A114219 n

end A114219

/-! ## A114219.P8807414458269521182

`A023531(n)+A128227(n)-1`
-/

namespace A114219.P8807414458269521182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n + (A128227 n - 1)

end

end A114219.P8807414458269521182

namespace A114219

/-- `A023531(n)+A128227(n)-1` -/
def P8807414458269521182.Spec : Prop :=
  ∀ n, P8807414458269521182.a n = A114219 n

end A114219

/-! ## A114219.P12503125419809938704

`A128138(n+1)/A051340(n)`
-/

namespace A114219.P12503125419809938704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128138 (n + 1) : ℚ) / (A051340 n : ℚ)

end

end A114219.P12503125419809938704

namespace A114219

/-- `A128138(n+1)/A051340(n)` -/
def P12503125419809938704.Spec : Prop :=
  ∀ n, P12503125419809938704.a n = (A114219 n : ℚ)

end A114219

/-! ## A114219.P14212395256122016814

`gcd(A068607(n), A128138(n+1))`
-/

namespace A114219.P14212395256122016814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068607 n) (A128138 (n + 1))

end

end A114219.P14212395256122016814

namespace A114219

/-- `gcd(A068607(n), A128138(n+1))` -/
def P14212395256122016814.Spec : Prop :=
  ∀ n, (P14212395256122016814.a n : ℤ) = A114219 n

end A114219

/-! ## A114219.P14151384555163729584

`and(A154990(n+1), A191532(n))`
-/

namespace A114219.P14151384555163729584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A154990 (n + 1)) (A191532 n)

end

end A114219.P14151384555163729584

namespace A114219

/-- `and(A154990(n+1), A191532(n))` -/
def P14151384555163729584.Spec : Prop :=
  ∀ n, P14151384555163729584.a n = A114219 n

end A114219

/-! ## A114219.P125015055183022543

`A154990(n+1)+A048151(n+1)`
-/

namespace A114219.P125015055183022543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) + A048151 (n + 1)

end

end A114219.P125015055183022543

namespace A114219

/-- `A154990(n+1)+A048151(n+1)` -/
def P125015055183022543.Spec : Prop :=
  ∀ n, P125015055183022543.a n = A114219 n

end A114219

/-! ## A114219.P15417680592658105885

`A128138(n+1)/A131821(n+1)`
-/

namespace A114219.P15417680592658105885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128138 (n + 1) : ℚ) / (A131821 (n + 1) : ℚ)

end

end A114219.P15417680592658105885

namespace A114219

/-- `A128138(n+1)/A131821(n+1)` -/
def P15417680592658105885.Spec : Prop :=
  ∀ n, P15417680592658105885.a n = (A114219 n : ℚ)

end A114219

/-! ## A114219.P3776706796648716033

`A128138(n+1)/A144112(n+1)`
-/

namespace A114219.P3776706796648716033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128138 (n + 1) : ℚ) / (A144112 (n + 1) : ℚ)

end

end A114219.P3776706796648716033

namespace A114219

/-- `A128138(n+1)/A144112(n+1)` -/
def P3776706796648716033.Spec : Prop :=
  ∀ n, P3776706796648716033.a n = (A114219 n : ℚ)

end A114219

/-! ## A114219.P4468520502880076956

`A128227(n)+A128227(n)-A002260(n+2)`
-/

namespace A114219.P4468520502880076956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n + (A128227 n - A002260 (n + 2))

end

end A114219.P4468520502880076956

namespace A114219

/-- `A128227(n)+A128227(n)-A002260(n+2)` -/
def P4468520502880076956.Spec : Prop :=
  ∀ n, P4468520502880076956.a n = A114219 n

end A114219

/-! ## A114219.P15392772208242446553

`A002260(n+2)-A023532(n)-A023532(n)`
-/

namespace A114219.P15392772208242446553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2) - A023532 n - A023532 n

end

end A114219.P15392772208242446553

namespace A114219

/-- `A002260(n+2)-A023532(n)-A023532(n)` -/
def P15392772208242446553.Spec : Prop :=
  ∀ n, P15392772208242446553.a n = A114219 n

end A114219

/-! ## A114219.P12431301303960063192

`A128138(n+1)-A002262(n)*A010054(n+1)`
-/

namespace A114219.P12431301303960063192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128138 (n + 1) - A002262 n * A010054 (n + 1)

end

end A114219.P12431301303960063192

namespace A114219

/-- `A128138(n+1)-A002262(n)*A010054(n+1)` -/
def P12431301303960063192.Spec : Prop :=
  ∀ n, P12431301303960063192.a n = A114219 n

end A114219

/-! ## A114219.P7994503094092574526

`A128138(n+1)-A003056(n)*A010054(n+1)`
-/

namespace A114219.P7994503094092574526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128138 (n + 1) - A003056 n * A010054 (n + 1)

end

end A114219.P7994503094092574526

namespace A114219

/-- `A128138(n+1)-A003056(n)*A010054(n+1)` -/
def P7994503094092574526.Spec : Prop :=
  ∀ n, P7994503094092574526.a n = A114219 n

end A114219

/-! ## A114219.P11286847359742877268

`val(A193900(n+1), 2)`
-/

namespace A114219.P11286847359742877268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A193900 (n + 1)).toNat 2

end

end A114219.P11286847359742877268

namespace A114219

/-- `val(A193900(n+1), 2)` -/
def P11286847359742877268.Spec : Prop :=
  ∀ n, (P11286847359742877268.a n : ℤ) = A114219 n

end A114219

/-!
# A114220: a(n) = Sum_{k=0..floor(n/2)} (k - (k-1)*0^(n-2*k)).

The programs for A114220, the canonical program `A114220.P6090057398799714214` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114220 has offset 0).

The definition of A114220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114220.P6777138766861178777

`(2*n²-2*n+7+(9-2*n)*(-1)^n)/16`
-/

namespace A114220.P6777138766861178777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 2 : ℤ) - (2 * n : ℤ) + (7 + (9 - (2 * n : ℤ)) * (-1) ^ n) : ℚ) / 16

end

end A114220.P6777138766861178777

namespace A114220

/-- `(2*n²-2*n+7+(9-2*n)*(-1)^n)/16` -/
def P6777138766861178777.Spec : Prop :=
  ∀ n, P6777138766861178777.a n = (A114220 n : ℚ)

end A114220

/-! ## A114220.P6090057398799714214

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114220

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P6090057398799714214.Spec : Prop :=
  ∀ n, P6090057398799714214.a n = A114220 n

theorem P6090057398799714214.correct : P6090057398799714214.Spec := by
  intro n
  simp only [A114220]

end A114220

/-! ## A114220.P7881300464571392517

`∑[((n-3)/2)^(n%2)]`
-/

namespace A114220.P7881300464571392517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 3 : ℚ) / 2) ^ (n % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114220.P7881300464571392517

namespace A114220

/-- `∑[((n-3)/2)^(n%2)]` -/
def P7881300464571392517.Spec : Prop :=
  ∀ n, P7881300464571392517.a n = (A114220 n : ℚ)

end A114220

/-! ## A114220.P5956893088831795602

`∑[((n-3)/2)^and(1, n)]`
-/

namespace A114220.P5956893088831795602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 3 : ℚ) / 2) ^ Nat.land 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114220.P5956893088831795602

namespace A114220

/-- `∑[((n-3)/2)^and(1, n)]` -/
def P5956893088831795602.Spec : Prop :=
  ∀ n, P5956893088831795602.a n = (A114220 n : ℚ)

end A114220

/-! ## A114220.P10299110731363445880

`char[2*n]+C(ceil(n/2), 2)`
-/

namespace A114220.P10299110731363445880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2

end

end A114220.P10299110731363445880

namespace A114220

/-- `char[2*n]+C(ceil(n/2), 2)` -/
def P10299110731363445880.Spec : Prop :=
  ∀ n, (P10299110731363445880.a n : ℤ) = A114220 n

end A114220

/-! ## A114220.P13194284885423164977

`∑[a(n-2)+and(1, n)]` with `a(0)=1, a(1)=-1`
-/

namespace A114220.P13194284885423164977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  f1 (n - 2) + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114220.P13194284885423164977

namespace A114220

/-- `∑[a(n-2)+and(1, n)]` -/
def P13194284885423164977.Spec : Prop :=
  ∀ n, P13194284885423164977.a n = A114220 n

end A114220

/-! ## A114220.P5090578621131302856

`C(ceil(n/2), 2)+(n+1)%2`
-/

namespace A114220.P5090578621131302856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + (n + 1) % 2

end

end A114220.P5090578621131302856

namespace A114220

/-- `C(ceil(n/2), 2)+(n+1)%2` -/
def P5090578621131302856.Spec : Prop :=
  ∀ n, (P5090578621131302856.a n : ℤ) = A114220 n

end A114220

/-! ## A114220.P9932147830779877590

`floor(a(n-2)+(n-1)/2)` with `a(0)=1, a(1)=0`
-/

namespace A114220.P9932147830779877590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ⌊(a (n - 2) : ℚ) + ((n : ℤ) - 1 : ℚ) / 2⌋

end

end A114220.P9932147830779877590

namespace A114220

/-- `floor(a(n-2)+(n-1)/2)` -/
def P9932147830779877590.Spec : Prop :=
  ∀ n, P9932147830779877590.a n = A114220 n

end A114220

/-! ## A114220.P14234655534991590125

`a(n-2)-floor((2-n)/2)` with `a(0)=1, a(1)=0`
-/

namespace A114220.P14234655534991590125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) - ⌊(2 - (n : ℤ) : ℚ) / 2⌋

end

end A114220.P14234655534991590125

namespace A114220

/-- `a(n-2)-floor((2-n)/2)` -/
def P14234655534991590125.Spec : Prop :=
  ∀ n, P14234655534991590125.a n = A114220 n

end A114220

/-! ## A114220.P2963558391373770140

`ceil(a(n-2)+(n-2)/2)` with `a(0)=1, a(1)=0`
-/

namespace A114220.P2963558391373770140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ⌈(a (n - 2) : ℚ) + ((n : ℤ) - 2 : ℚ) / 2⌉

end

end A114220.P2963558391373770140

namespace A114220

/-- `ceil(a(n-2)+(n-2)/2)` -/
def P2963558391373770140.Spec : Prop :=
  ∀ n, P2963558391373770140.a n = A114220 n

end A114220

/-! ## A114220.P9463473493677789290

`round(a(n-2)+(n-2)/2)` with `a(0)=1, a(1)=0`
-/

namespace A114220.P9463473493677789290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℚ) + ((n : ℤ) - 2 : ℚ) / 2)

end

end A114220.P9463473493677789290

namespace A114220

/-- `round(a(n-2)+(n-2)/2)` -/
def P9463473493677789290.Spec : Prop :=
  ∀ n, P9463473493677789290.a n = A114220 n

end A114220

/-! ## A114220.P14364065897569119863

`∑[∑[a(n-2)-(-1)^n]]` with `a(0)=1, a(1)=-2, a(2)=2`
-/

namespace A114220.P14364065897569119863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2] fun n f2 =>
  f2 (n - 2) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114220.P14364065897569119863

namespace A114220

/-- `∑[∑[a(n-2)-(-1)^n]]` -/
def P14364065897569119863.Spec : Prop :=
  ∀ n, P14364065897569119863.a n = A114220 n

end A114220

/-! ## A114220.P555105249918318753

`a(n-2)-∑[a(n-2)²]+n` with `a(0)=1, a(1)=0`
-/

namespace A114220.P555105249918318753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ)

end

end A114220.P555105249918318753

namespace A114220

/-- `a(n-2)-∑[a(n-2)²]+n` -/
def P555105249918318753.Spec : Prop :=
  ∀ n, P555105249918318753.a n = A114220 n

end A114220

/-! ## A114220.P2862707803227681905

`a(n-2)-∑[floor(a(n-2))]+n` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A114220.P2862707803227681905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ)

end

end A114220.P2862707803227681905

namespace A114220

/-- `a(n-2)-∑[floor(a(n-2))]+n` -/
def P2862707803227681905.Spec : Prop :=
  ∀ n, P2862707803227681905.a n = A114220 n

end A114220

/-! ## A114220.P16842473671414734572

`2-(∑[a(n-2)-1]+a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A114220.P16842473671414734572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 - (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A114220.P16842473671414734572

namespace A114220

/-- `2-(∑[a(n-2)-1]+a(n-1))` -/
def P16842473671414734572.Spec : Prop :=
  ∀ n, P16842473671414734572.a n = A114220 n

end A114220

/-! ## A114220.P9536715363340239223

`2-a(n-1)-∑[a(n-2)-1]` with `a(0)=1, a(1)=0`
-/

namespace A114220.P9536715363340239223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 - a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114220.P9536715363340239223

namespace A114220

/-- `2-a(n-1)-∑[a(n-2)-1]` -/
def P9536715363340239223.Spec : Prop :=
  ∀ n, P9536715363340239223.a n = A114220 n

end A114220

/-! ## A114220.P10305572727906793672

`Δ[a(n-2)+n-3]+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A114220.P10305572727906793672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  f1 (n + 1) - f1 n + a (n - 2)

end

end A114220.P10305572727906793672

namespace A114220

/-- `Δ[a(n-2)+n-3]+a(n-2)` -/
def P10305572727906793672.Spec : Prop :=
  ∀ n, P10305572727906793672.a n = A114220 n

end A114220

/-! ## A114220.P2389250280010283

`A033638(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A114220.P2389250280010283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033638 (n - 1) - a (n - 1)

end

end A114220.P2389250280010283

namespace A114220

/-- `A033638(n-1)-a(n-1)` -/
def P2389250280010283.Spec : Prop :=
  ∀ n, P2389250280010283.a n = A114220 n

end A114220

/-! ## A114220.P9951527523216960721

`A008795(n)-A237420(n)`
-/

namespace A114220.P9951527523216960721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n - A237420 n

end

end A114220.P9951527523216960721

namespace A114220

/-- `A008795(n)-A237420(n)` -/
def P9951527523216960721.Spec : Prop :=
  ∀ n, P9951527523216960721.a n = A114220 n

end A114220

/-! ## A114220.P4515112812059896983

`A097063(n)-A211539(n)`
-/

namespace A114220.P4515112812059896983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097063 n - A211539 n

end

end A114220.P4515112812059896983

namespace A114220

/-- `A097063(n)-A211539(n)` -/
def P4515112812059896983.Spec : Prop :=
  ∀ n, P4515112812059896983.a n = A114220 n

end A114220

/-!
# A114221: Numbers m such that A114216(m)=3.

The programs for A114221, there is no canonical definition to state claims against.
-/

/-! ## A114221.P16783272699379739882

`eq[3, A114216(n)]`
-/

namespace A114221.P16783272699379739882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114221.P16783272699379739882

/-! ## A114221.P13714506176409239502

`eq[3, A000265(A000040(n)+a(n-1))]` with `a(0)=0`
-/

namespace A114221.P13714506176409239502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000265 (A000040 n + f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114221.P13714506176409239502

/-! ## A114221.P2574149967398725575

`eq[3, A302034(A000040(n)+a(n-1))]` with `a(0)=27`
-/

namespace A114221.P2574149967398725575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [27] fun n f2 =>
  A302034 (A000040 n + f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114221.P2574149967398725575

/-!
# A114225: A Pascal-Thue-Morse triangle.

The programs for A114225, there is no canonical definition to state claims against.
-/

/-! ## A114225.P5738811770694237518

`A119335(n)+A004247(n)`
-/

namespace A114225.P5738811770694237518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n + A004247 n

end

end A114225.P5738811770694237518

/-! ## A114225.P6102139294784211283

`A119335(n)+log2(A117401(n))`
-/

namespace A114225.P6102139294784211283
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A119335 n : ℝ) + Real.logb 2 (A117401 n : ℝ)

end

end A114225.P6102139294784211283

/-! ## A114225.P17019314940402349077

`A077028(n)+A119335(n)-1`
-/

namespace A114225.P17019314940402349077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + (A119335 n - 1)

end

end A114225.P17019314940402349077

/-! ## A114225.P18020620444692834188

`A077028(n)+1-A307156(n)`
-/

namespace A114225.P18020620444692834188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + (1 - A307156 n)

end

end A114225.P18020620444692834188

/-! ## A114225.P3074252071197612848

`A004247(n)+2-A307156(n)`
-/

namespace A114225.P3074252071197612848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (2 - A307156 n)

end

end A114225.P3074252071197612848

/-! ## A114225.P16994826659595934424

`A119335(n)+A002837(A077028(n))`
-/

namespace A114225.P16994826659595934424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n + A002837 (A077028 n).toNat

end

end A114225.P16994826659595934424

/-! ## A114225.P13850486537438700213

`A119335(n)+A053186(A082046(n))`
-/

namespace A114225.P13850486537438700213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n + A053186 (A082046 n).toNat

end

end A114225.P13850486537438700213

/-! ## A114225.P5307021502976988917

`A119335(n)+A004526(A157528(n))`
-/

namespace A114225.P5307021502976988917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n + A004526 (A157528 n).toNat

end

end A114225.P5307021502976988917

/-! ## A114225.P6280277913900011067

`A119335(n)+A086520(A082043(n))`
-/

namespace A114225.P6280277913900011067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n + A086520 (A082043 n).toNat

end

end A114225.P6280277913900011067

/-! ## A114225.P14356030173037424831

`A119335(n)+A055941(A173787(n))`
-/

namespace A114225.P14356030173037424831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n + A055941 (A173787 n).toNat

end

end A114225.P14356030173037424831

/-!
# A114226: Row sums of a Pascal-Thue-Morse triangle.

The programs for A114226, there is no canonical definition to state claims against.
-/

/-! ## A114226.P15017326879954519772

`A306607(A267444(n+1))`
-/

namespace A114226.P15017326879954519772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306607 (A267444 (n + 1)).toNat

end

end A114226.P15017326879954519772

/-! ## A114226.P6146412685343875051

`record[A306607(A076972(n+1))]`
-/

namespace A114226.P6146412685343875051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306607 (A076972 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114226.P6146412685343875051

/-! ## A114226.P10650786812302665898

`A306607(A076972(2*(n+1)))`
-/

namespace A114226.P10650786812302665898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306607 (A076972 (2 * (n + 1))).toNat

end

end A114226.P10650786812302665898

/-! ## A114226.P9746882239085500619

`A238935(2*(n+1))+A119968(n+1)-1`
-/

namespace A114226.P9746882239085500619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238935 (2 * (n + 1)) + (A119968 (n + 1) - 1)

end

end A114226.P9746882239085500619

/-! ## A114226.P11337735646307299855

`A119968(n+1)-A353786(A007460(n))`
-/

namespace A114226.P11337735646307299855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119968 (n + 1) - A353786 (A007460 n).toNat

end

end A114226.P11337735646307299855

/-!
# A114228: Smallest number m such that prime(n)+2*prime(m) is a prime.

The programs for A114228, there is no canonical definition to state claims against.
-/

/-! ## A114228.P684653124188823881

`A347381(A290839(ceil(p?[2*n+1]/2))²)`
-/

namespace A114228.P684653124188823881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A290839 ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉.toNat ^ 2).toNat

end

end A114228.P684653124188823881

/-! ## A114228.P9152126197576181916

`A079067(A152050(n+1)^A282463(n))`
-/

namespace A114228.P9152126197576181916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (SequenceMachineLib.roundAway ((A152050 (n + 1) : ℚ) ^ (A282463 n : ℤ))).toNat

end

end A114228.P9152126197576181916

/-! ## A114228.P15430695175828471059

`A079067(A152050(n+1))^A136630(n)!`
-/

namespace A114228.P15430695175828471059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A152050 (n + 1)).toNat ^ Nat.factorial (A136630 n).toNat

end

end A114228.P15430695175828471059

/-! ## A114228.P15238745059547864195

`A079067(A152050(n+1)^A114266(n+1))`
-/

namespace A114228.P15238745059547864195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (SequenceMachineLib.roundAway ((A152050 (n + 1) : ℚ) ^ (A114266 (n + 1) : ℤ))).toNat

end

end A114228.P15238745059547864195

/-! ## A114228.P3212983185518249899

`A204909(lt[A275481(n+1), A088377(n+1)])`
-/

namespace A114228.P3212983185518249899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204909 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A114228.P3212983185518249899

/-!
# A114230: Largest prime p < prime(n) such that prime(n) + 2 * p is a prime.

The programs for A114230, there is no canonical definition to state claims against.
-/

/-! ## A114230.P17624243091464186337

`A000040(2-A114231(n+2)+n)`
-/

namespace A114230.P17624243091464186337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 - A114231 (n + 2) + (n : ℤ)).toNat

end

end A114230.P17624243091464186337

/-! ## A114230.P4268252883546827610

`A008578(n+3-A114231(n+2))`
-/

namespace A114230.P4268252883546827610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((n + 3 : ℤ) - A114231 (n + 2)).toNat

end

end A114230.P4268252883546827610

/-! ## A114230.P5941140462258977773

`A008864(2-A114231(n+2)+n)-1`
-/

namespace A114230.P5941140462258977773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (2 - A114231 (n + 2) + (n : ℤ)).toNat - 1

end

end A114230.P5941140462258977773

/-! ## A114230.P7886561044332236867

`A000040((n*A114231(n+2))%(n+1)+1)`
-/

namespace A114230.P7886561044332236867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod ((n : ℤ) * A114231 (n + 2)) (n + 1 : ℤ) + 1).toNat

end

end A114230.P7886561044332236867

/-!
# A114231: Smallest number m such that prime(n) + 2*prime(n-m) is a prime.

The programs for A114231, there is no canonical definition to state claims against.
-/

/-! ## A114231.P18287457366563998197

`2-A000720(A114230(n+2))+n`
-/

namespace A114231.P18287457366563998197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000720 (A114230 (n + 2)).toNat + (n : ℤ)

end

end A114231.P18287457366563998197

/-! ## A114231.P5392484430898370479

`A020725(n+1)-A061395(A114230(n+2))`
-/

namespace A114231.P5392484430898370479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) - A061395 (A114230 (n + 2)).toNat

end

end A114231.P5392484430898370479

/-! ## A114231.P4947616128333342471

`A061395(A001747(n+1))-A084360(A114230(n+2))`
-/

namespace A114231.P4947616128333342471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A001747 (n + 1)).toNat - A084360 (A114230 (n + 2)).toNat

end

end A114231.P4947616128333342471

/-! ## A114231.P7813667820228147306

`A061395(A100484(n+1))-A079067(A114230(n+2))`
-/

namespace A114231.P7813667820228147306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A100484 (n + 1)).toNat - A079067 (A114230 (n + 2)).toNat

end

end A114231.P7813667820228147306

/-! ## A114231.P13923755605165219227

`A058933(A008578(n+1))-A084360(A114230(n+2))`
-/

namespace A114231.P13923755605165219227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A008578 (n + 1)).toNat - A084360 (A114230 (n + 2)).toNat

end

end A114231.P13923755605165219227

/-! ## A114231.P8725476662858304801

`A058933(A065091(n+1))-A058933(A114230(n+2))`
-/

namespace A114231.P8725476662858304801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A065091 (n + 1)).toNat - A058933 (A114230 (n + 2)).toNat

end

end A114231.P8725476662858304801

/-! ## A114231.P17884041328761051877

`A003056(A000124(n))-A084360(A114230(n+2))`
-/

namespace A114231.P17884041328761051877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000124 n).toNat - A084360 (A114230 (n + 2)).toNat

end

end A114231.P17884041328761051877

/-!
# A114233: Smallest number m such that 2*prime(n) + prime(m) is a prime.

The programs for A114233, there is no canonical definition to state claims against.
-/

/-! ## A114233.P7969599906615844090

`A000720(A073703(n+3))`
-/

namespace A114233.P7969599906615844090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A073703 (n + 3)).toNat

end

end A114233.P7969599906615844090

/-! ## A114233.P3048250999497738954

`A061395(A020483(p?[A007310(n+1)]))`
-/

namespace A114233.P3048250999497738954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A020483 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A114233.P3048250999497738954

/-! ## A114233.P13648133320043099867

`A230980(A020483(p?[A047259(n+1)]))`
-/

namespace A114233.P13648133320043099867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A020483 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A114233.P13648133320043099867

/-! ## A114233.P14693858138122626718

`A230980(A020483(p?[A079696(n+1)]))`
-/

namespace A114233.P14693858138122626718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A020483 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A114233.P14693858138122626718

/-! ## A114233.P589010103539245883

`A000720(A020483(A000040(n+3))+1)`
-/

namespace A114233.P589010103539245883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A020483 (A000040 (n + 3)).toNat + 1).toNat

end

end A114233.P589010103539245883

/-! ## A114233.P7959579447898374640

`A204901(A065091(n+2))+1`
-/

namespace A114233.P7959579447898374640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204901 (A065091 (n + 2)).toNat + 1

end

end A114233.P7959579447898374640

/-! ## A114233.P4706552181532581410

`A204901(A000040(n+3))+1`
-/

namespace A114233.P4706552181532581410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204901 (A000040 (n + 3)).toNat + 1

end

end A114233.P4706552181532581410

/-! ## A114233.P2261229694119380809

`A204893(A197638(n+1))`
-/

namespace A114233.P2261229694119380809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204893 (A197638 (n + 1)).toNat

end

end A114233.P2261229694119380809

/-! ## A114233.P1172755440273699343

`A204893(2*A000040(n+3))`
-/

namespace A114233.P1172755440273699343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204893 (2 * A000040 (n + 3)).toNat

end

end A114233.P1172755440273699343

/-! ## A114233.P14041279090801081920

`A204893(A362866(n+1))`
-/

namespace A114233.P14041279090801081920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204893 (A362866 (n + 1)).toNat

end

end A114233.P14041279090801081920

/-!
# A114235: Largest prime p < prime(n) such that 2*prime(n) + p is a prime.

The programs for A114235, there is no canonical definition to state claims against.
-/

/-! ## A114235.P9846423911553759640

`A065091(2-A114236(n+3)+n)`
-/

namespace A114235.P9846423911553759640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (2 - A114236 (n + 3) + (n : ℤ)).toNat

end

end A114235.P9846423911553759640

/-! ## A114235.P7016436936258674532

`A000040(n+3-A114236(n+3))`
-/

namespace A114235.P7016436936258674532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 3 : ℤ) - A114236 (n + 3)).toNat

end

end A114235.P7016436936258674532

/-! ## A114235.P11379898756402256469

`A006005(n+3-A114236(n+3))`
-/

namespace A114235.P11379898756402256469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 ((n + 3 : ℤ) - A114236 (n + 3)).toNat

end

end A114235.P11379898756402256469

/-! ## A114235.P13185154507452751806

`A008578(n+4-A114236(n+3))`
-/

namespace A114235.P13185154507452751806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((n + 4 : ℤ) - A114236 (n + 3)).toNat

end

end A114235.P13185154507452751806

/-! ## A114235.P5383526769579226954

`A160656(Δ[n²]-A114236(n+3)-n+2)`
-/

namespace A114235.P5383526769579226954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160656 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A114236 (n + 3) - (n : ℤ) + 2).toNat

end

end A114235.P5383526769579226954

/-!
# A114236: Smallest number m such that 2*prime(n)+prime(n-m) is a prime.

The programs for A114236, there is no canonical definition to state claims against.
-/

/-! ## A114236.P15124693746332574551

`3-A000720(A114235(n+3))+n`
-/

namespace A114236.P15124693746332574551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000720 (A114235 (n + 3)).toNat + (n : ℤ)

end

end A114236.P15124693746332574551

/-! ## A114236.P7934285419122773877

`3-(A061395(A114235(n+3))+A001489(n))`
-/

namespace A114236.P7934285419122773877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (A061395 (A114235 (n + 3)).toNat + A001489 n)

end

end A114236.P7934285419122773877

/-! ## A114236.P10012487327911001369

`Δ[A028552(n)]-(A061395(A114235(n+3))+n+1)`
-/

namespace A114236.P10012487327911001369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A061395 (A114235 (n + 3)).toNat + (n + 1 : ℤ))

end

end A114236.P10012487327911001369

/-! ## A114236.P16708162952554128469

`A008619(2*n+5)-A061395(A114235(n+3))`
-/

namespace A114236.P16708162952554128469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n + 5) - A061395 (A114235 (n + 3)).toNat

end

end A114236.P16708162952554128469

/-! ## A114236.P3099772299490611352

`A020725(n+1)-A079067(A114235(n+3))`
-/

namespace A114236.P3099772299490611352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) - A079067 (A114235 (n + 3)).toNat

end

end A114236.P3099772299490611352

/-!
# A114238: a(n) = binomial(2+2*n, 2+n) * binomial(7+2*n, n).

The programs for A114238, there is no canonical definition to state claims against.
-/

/-! ## A114238.P1832379958581836598

`A001791(n+1)*A030053(n+3)`
-/

namespace A114238.P1832379958581836598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) * A030053 (n + 3)

end

end A114238.P1832379958581836598

/-! ## A114238.P12797519696514901497

`A030053(n+3)*A062344(A034856(n+1))`
-/

namespace A114238.P12797519696514901497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030053 (n + 3) * A062344 (A034856 (n + 1)).toNat

end

end A114238.P12797519696514901497

/-! ## A114238.P10112950915450552626

`(A002696(n+4)-A003516(n+3))*A001791(n+1)`
-/

namespace A114238.P10112950915450552626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002696 (n + 4) - A003516 (n + 3)) * A001791 (n + 1)

end

end A114238.P10112950915450552626

/-! ## A114238.P8958198087349150788

`A062190(A090288(n)+1)`
-/

namespace A114238.P8958198087349150788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A090288 n + 1).toNat

end

end A114238.P8958198087349150788

/-! ## A114238.P14770278914426919153

`A062190(A132209(n+1))`
-/

namespace A114238.P14770278914426919153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A132209 (n + 1)).toNat

end

end A114238.P14770278914426919153

/-! ## A114238.P13182927935674373769

`A062190(A142463(n+1))`
-/

namespace A114238.P13182927935674373769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A142463 (n + 1)).toNat

end

end A114238.P13182927935674373769

/-! ## A114238.P5315178352747020411

`A062190(A001844(n+1)-2)`
-/

namespace A114238.P5315178352747020411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A001844 (n + 1) - 2).toNat

end

end A114238.P5315178352747020411

/-! ## A114238.P5691345126471100508

`A062190(A099776(n+1)-2)`
-/

namespace A114238.P5691345126471100508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A099776 (n + 1) - 2).toNat

end

end A114238.P5691345126471100508

/-! ## A114238.P16245915350537023016

`A062190(A055998(2*n+1)-n)`
-/

namespace A114238.P16245915350537023016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A055998 (2 * n + 1) - (n : ℤ)).toNat

end

end A114238.P16245915350537023016

/-! ## A114238.P5928434452298608944

`A062190(A000096(2*n+1)+n+1)`
-/

namespace A114238.P5928434452298608944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A000096 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A114238.P5928434452298608944

/-!
# A114239: a(n) = (n+1)(n+2)^3*(n+3)(n^2 + 4n + 5)/120.

The programs for A114239, the canonical program `A114239.P11258997940535062094` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114239 has offset 0).

The definition of A114239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114239.P11258997940535062094

`(n+1)*(n+2)^3*(n+3)*(n²+4*n+5)/120`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114239

/-- `(n+1)*(n+2)^3*(n+3)*(n²+4*n+5)/120` -/
def P11258997940535062094.Spec : Prop :=
  ∀ n, P11258997940535062094.a n = (A114239 n : ℚ)

end A114239

/-! ## A114239.P13968682483681543345

`∑[∑[∑[A160747(n)]]]`
-/

namespace A114239.P13968682483681543345
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114239.P13968682483681543345

namespace A114239

/-- `∑[∑[∑[A160747(n)]]]` -/
def P13968682483681543345.Spec : Prop :=
  ∀ n, P13968682483681543345.a n = A114239 n

end A114239

/-! ## A114239.P8546827775009773107

`(A114242(n)+A107969(n))/2`
-/

namespace A114239.P8546827775009773107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114242 n + A107969 n : ℚ) / 2

end

end A114239.P8546827775009773107

namespace A114239

/-- `(A114242(n)+A107969(n))/2` -/
def P8546827775009773107.Spec : Prop :=
  ∀ n, P8546827775009773107.a n = (A114239 n : ℚ)

end A114239

/-! ## A114239.P8190736380375715054

`A213547(n+1)²/A033455(n+1)`
-/

namespace A114239.P8190736380375715054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213547 (n + 1) ^ 2 : ℚ) / (A033455 (n + 1) : ℚ)

end

end A114239.P8190736380375715054

namespace A114239

/-- `A213547(n+1)²/A033455(n+1)` -/
def P8190736380375715054.Spec : Prop :=
  ∀ n, P8190736380375715054.a n = (A114239 n : ℚ)

end A114239

/-! ## A114239.P1251133648597184150

`∑[A083200(n+2)]`
-/

namespace A114239.P1251133648597184150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083200 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114239.P1251133648597184150

namespace A114239

/-- `∑[A083200(n+2)]` -/
def P1251133648597184150.Spec : Prop :=
  ∀ n, P1251133648597184150.a n = A114239 n

end A114239

/-! ## A114239.P13518430992262862396

`Δ[(A107968(n)-A107969(n))/2]`
-/

namespace A114239.P13518430992262862396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107968 n - A107969 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114239.P13518430992262862396

namespace A114239

/-- `Δ[(A107968(n)-A107969(n))/2]` -/
def P13518430992262862396.Spec : Prop :=
  ∀ n, P13518430992262862396.a n = (A114239 n : ℚ)

end A114239

/-!
# A114240: a(n) = (n+1)*(n+2)^2*(n+3)*(7*n^2 + 23*n + 20)/240.

The programs for A114240, the canonical program `A114240.P13963285932001077988` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114240 has offset 0).

The definition of A114240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114240.P13963285932001077988

`(n+1)*(n+2)²*(n+3)*((7*n+23)*n+20)/240`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114240

/-- `(n+1)*(n+2)²*(n+3)*((7*n+23)*n+20)/240` -/
def P13963285932001077988.Spec : Prop :=
  ∀ n, P13963285932001077988.a n = (A114240 n : ℚ)

end A114240

/-! ## A114240.P1488403407674334501

`2*A213547(n+1)-A051923(n)`
-/

namespace A114240.P1488403407674334501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213547 (n + 1) - A051923 n

end

end A114240.P1488403407674334501

namespace A114240

/-- `2*A213547(n+1)-A051923(n)` -/
def P1488403407674334501.Spec : Prop :=
  ∀ n, P1488403407674334501.a n = A114240 n

end A114240

/-! ## A114240.P11527932524304663243

`∑[∑[A213843(n+1)+A212415(n)]]`
-/

namespace A114240.P11527932524304663243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213843 (n + 1) + A212415 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114240.P11527932524304663243

namespace A114240

/-- `∑[∑[A213843(n+1)+A212415(n)]]` -/
def P11527932524304663243.Spec : Prop :=
  ∀ n, P11527932524304663243.a n = A114240 n

end A114240

/-! ## A114240.P13643373269928185658

`∑[A271662(n)+∑[A172123(n+1)]]`
-/

namespace A114240.P13643373269928185658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172123 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271662 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114240.P13643373269928185658

namespace A114240

/-- `∑[A271662(n)+∑[A172123(n+1)]]` -/
def P13643373269928185658.Spec : Prop :=
  ∀ n, P13643373269928185658.a n = A114240 n

end A114240

/-! ## A114240.P290025217206463180

`∑[∑[A213549(n+1)+A185355(n+1)]]`
-/

namespace A114240.P290025217206463180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213549 (n + 1) + A185355 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114240.P290025217206463180

namespace A114240

/-- `∑[∑[A213549(n+1)+A185355(n+1)]]` -/
def P290025217206463180.Spec : Prop :=
  ∀ n, P290025217206463180.a n = A114240 n

end A114240

/-! ## A114240.P8372433145373122136

`A108649(n)+A108683(n)-A108677(n)`
-/

namespace A114240.P8372433145373122136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108649 n + (A108683 n - A108677 n)

end

end A114240.P8372433145373122136

namespace A114240

/-- `A108649(n)+A108683(n)-A108677(n)` -/
def P8372433145373122136.Spec : Prop :=
  ∀ n, P8372433145373122136.a n = A114240 n

end A114240

/-! ## A114240.P4564547952838437838

`∑[A085461(n+1)+A006414(n)]-A006414(n)`
-/

namespace A114240.P4564547952838437838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085461 (n + 1) + A006414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006414 n

end

end A114240.P4564547952838437838

namespace A114240

/-- `∑[A085461(n+1)+A006414(n)]-A006414(n)` -/
def P4564547952838437838.Spec : Prop :=
  ∀ n, P4564547952838437838.a n = A114240 n

end A114240

/-! ## A114240.P1309222691637760121

`∑[∑[A002378((n+1)²)-A001296(n+1)]]`
-/

namespace A114240.P1309222691637760121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 ((n + 1) ^ 2) - A001296 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114240.P1309222691637760121

namespace A114240

/-- `∑[∑[A002378((n+1)²)-A001296(n+1)]]` -/
def P1309222691637760121.Spec : Prop :=
  ∀ n, P1309222691637760121.a n = A114240 n

end A114240

/-!
# A114241: a(n) = (n+1)*(n+2)*(n+3)*(11*n^2 + 29*n + 20)/120.

The programs for A114241, the canonical program `A114241.P5714073255797140516` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114241 has offset 0).

The definition of A114241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114241.P5714073255797140516

`(n+1)*(n+2)*(n+3)*(11*n²+29*n+20)/120`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114241

/-- `(n+1)*(n+2)*(n+3)*(11*n²+29*n+20)/120` -/
def P5714073255797140516.Spec : Prop :=
  ∀ n, P5714073255797140516.a n = (A114241 n : ℚ)

end A114241

/-! ## A114241.P13995829472261180999

`∑[∑[∑[∑[a(n-1)+11]]]]` with `a(0)=1, a(1)=8`
-/

namespace A114241.P13995829472261180999
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f4 =>
  f4 (n - 1) + 11

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114241.P13995829472261180999

namespace A114241

/-- `∑[∑[∑[∑[a(n-1)+11]]]]` -/
def P13995829472261180999.Spec : Prop :=
  ∀ n, (P13995829472261180999.a n : ℤ) = A114241 n

end A114241

/-! ## A114241.P10486142370296457349

`∑[∑[(n+1)*n²]]+(n+1)*C(n+4, 4)`
-/

namespace A114241.P10486142370296457349
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) * Nat.choose (n + 4) 4

end

end A114241.P10486142370296457349

namespace A114241

/-- `∑[∑[(n+1)*n²]]+(n+1)*C(n+4, 4)` -/
def P10486142370296457349.Spec : Prop :=
  ∀ n, (P10486142370296457349.a n : ℤ) = A114241 n

end A114241

/-! ## A114241.P3351118005280373834

`A056118(n)-A033488(n)`
-/

namespace A114241.P3351118005280373834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056118 n - A033488 n

end

end A114241.P3351118005280373834

namespace A114241

/-- `A056118(n)-A033488(n)` -/
def P3351118005280373834.Spec : Prop :=
  ∀ n, P3351118005280373834.a n = A114241 n

end A114241

/-! ## A114241.P6380137476002955407

`A277935(n+1)+A271662(n)`
-/

namespace A114241.P6380137476002955407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1) + A271662 n

end

end A114241.P6380137476002955407

namespace A114241

/-- `A277935(n+1)+A271662(n)` -/
def P6380137476002955407.Spec : Prop :=
  ∀ n, P6380137476002955407.a n = A114241 n

end A114241

/-! ## A114241.P11352358889644133558

`A027800(n)+2*A051836(n)`
-/

namespace A114241.P11352358889644133558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n + 2 * A051836 n

end

end A114241.P11352358889644133558

namespace A114241

/-- `A027800(n)+2*A051836(n)` -/
def P11352358889644133558.Spec : Prop :=
  ∀ n, P11352358889644133558.a n = A114241 n

end A114241

/-! ## A114241.P15509176400116641290

`A006324(n+1)+∑[A264854(n)]`
-/

namespace A114241.P15509176400116641290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006324 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114241.P15509176400116641290

namespace A114241

/-- `A006324(n+1)+∑[A264854(n)]` -/
def P15509176400116641290.Spec : Prop :=
  ∀ n, P15509176400116641290.a n = A114241 n

end A114241

/-! ## A114241.P12563562598940365794

`A271662(n)+∑[A033488(n)/2]`
-/

namespace A114241.P12563562598940365794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033488 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271662 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114241.P12563562598940365794

namespace A114241

/-- `A271662(n)+∑[A033488(n)/2]` -/
def P12563562598940365794.Spec : Prop :=
  ∀ n, P12563562598940365794.a n = (A114241 n : ℚ)

end A114241

/-! ## A114241.P4468676106864851621

`A207361(n+1)+A051836(n)`
-/

namespace A114241.P4468676106864851621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207361 (n + 1) + A051836 n

end

end A114241.P4468676106864851621

namespace A114241

/-- `A207361(n+1)+A051836(n)` -/
def P4468676106864851621.Spec : Prop :=
  ∀ n, P4468676106864851621.a n = A114241 n

end A114241

/-! ## A114241.P12304149036774811373

`A207361(n+1)+∑[A001296(n)]`
-/

namespace A114241.P12304149036774811373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207361 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114241.P12304149036774811373

namespace A114241

/-- `A207361(n+1)+∑[A001296(n)]` -/
def P12304149036774811373.Spec : Prop :=
  ∀ n, P12304149036774811373.a n = A114241 n

end A114241

/-!
# A114242: a(n) = (n+1)(n+2)^2*(n+3)^2*(n+4)(2n+5)/720.

The programs for A114242, the canonical program `A114242.P17062387064645868742` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114242 has offset 0).

The definition of A114242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114242.P17062387064645868742

`(n+1)*(n+2)²*(n+3)²*(n+4)*(2*n+5)/720`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114242

/-- `(n+1)*(n+2)²*(n+3)²*(n+4)*(2*n+5)/720` -/
def P17062387064645868742.Spec : Prop :=
  ∀ n, P17062387064645868742.a n = (A114242 n : ℚ)

end A114242

/-! ## A114242.P3815165514989528136

`∑[A114244(n)]`
-/

namespace A114242.P3815165514989528136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114242.P3815165514989528136

namespace A114242

/-- `∑[A114244(n)]` -/
def P3815165514989528136.Spec : Prop :=
  ∀ n, P3815165514989528136.a n = A114242 n

end A114242

/-! ## A114242.P4344291142064107050

`∑[∑[A085463(n+1)]]`
-/

namespace A114242.P4344291142064107050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085463 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114242.P4344291142064107050

namespace A114242

/-- `∑[∑[A085463(n+1)]]` -/
def P4344291142064107050.Spec : Prop :=
  ∀ n, P4344291142064107050.a n = A114242 n

end A114242

/-! ## A114242.P3242083720264262967

`2*A107891(n)-A107968(n)`
-/

namespace A114242.P3242083720264262967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107891 n - A107968 n

end

end A114242.P3242083720264262967

namespace A114242

/-- `2*A107891(n)-A107968(n)` -/
def P3242083720264262967.Spec : Prop :=
  ∀ n, P3242083720264262967.a n = A114242 n

end A114242

/-! ## A114242.P9549270379648461574

`2*A108680(n)-A107959(n)`
-/

namespace A114242.P9549270379648461574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108680 n - A107959 n

end

end A114242.P9549270379648461574

namespace A114242

/-- `2*A108680(n)-A107959(n)` -/
def P9549270379648461574.Spec : Prop :=
  ∀ n, P9549270379648461574.a n = A114242 n

end A114242

/-! ## A114242.P10685614038958315005

`2*A114239(n)-A107969(n)`
-/

namespace A114242.P10685614038958315005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114239 n - A107969 n

end

end A114242.P10685614038958315005

namespace A114242

/-- `2*A114239(n)-A107969(n)` -/
def P10685614038958315005.Spec : Prop :=
  ∀ n, P10685614038958315005.a n = A114242 n

end A114242

/-! ## A114242.P4887680106264698521

`A006857(n)+A108680(n)-A107891(n)`
-/

namespace A114242.P4887680106264698521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006857 n + (A108680 n - A107891 n)

end

end A114242.P4887680106264698521

namespace A114242

/-- `A006857(n)+A108680(n)-A107891(n)` -/
def P4887680106264698521.Spec : Prop :=
  ∀ n, P4887680106264698521.a n = A114242 n

end A114242

/-! ## A114242.P1915992296565170633

`A107891(n)+A108680(n)-A107956(n)`
-/

namespace A114242.P1915992296565170633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n + (A108680 n - A107956 n)

end

end A114242.P1915992296565170633

namespace A114242

/-- `A107891(n)+A108680(n)-A107956(n)` -/
def P1915992296565170633.Spec : Prop :=
  ∀ n, P1915992296565170633.a n = A114242 n

end A114242

/-! ## A114242.P10771711817117089255

`A114239(n)+A114244(n)-A108682(n)`
-/

namespace A114242.P10771711817117089255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114239 n + (A114244 n - A108682 n)

end

end A114242.P10771711817117089255

namespace A114242

/-- `A114239(n)+A114244(n)-A108682(n)` -/
def P10771711817117089255.Spec : Prop :=
  ∀ n, P10771711817117089255.a n = A114242 n

end A114242

/-! ## A114242.P4811068635001236005

`∑[A213547(n+1)+A040977(n)]-A040977(n)`
-/

namespace A114242.P4811068635001236005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213547 (n + 1) + A040977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A040977 n

end

end A114242.P4811068635001236005

namespace A114242

/-- `∑[A213547(n+1)+A040977(n)]-A040977(n)` -/
def P4811068635001236005.Spec : Prop :=
  ∀ n, P4811068635001236005.a n = A114242 n

end A114242

/-! ## A114242.P778009530898895080

`Δ[A107968(n)]-A107969(n+1)`
-/

namespace A114242.P778009530898895080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A107969 (n + 1)

end

end A114242.P778009530898895080

namespace A114242

/-- `Δ[A107968(n)]-A107969(n+1)` -/
def P778009530898895080.Spec : Prop :=
  ∀ n, P778009530898895080.a n = A114242 n

end A114242

/-! ## A114242.P2690118424783668027

`A107969(n+1)-A107970(n+1)`
-/

namespace A114242.P2690118424783668027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107969 (n + 1) - A107970 (n + 1)

end

end A114242.P2690118424783668027

namespace A114242

/-- `A107969(n+1)-A107970(n+1)` -/
def P2690118424783668027.Spec : Prop :=
  ∀ n, P2690118424783668027.a n = A114242 n

end A114242

/-! ## A114242.P139439714167153423

`A108671(n+1)-A108646(n+1)`
-/

namespace A114242.P139439714167153423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108671 (n + 1) - A108646 (n + 1)

end

end A114242.P139439714167153423

namespace A114242

/-- `A108671(n+1)-A108646(n+1)` -/
def P139439714167153423.Spec : Prop :=
  ∀ n, P139439714167153423.a n = A114242 n

end A114242

/-! ## A114242.P7864988321759824250

`A114239(n+1)-A108682(n+1)`
-/

namespace A114242.P7864988321759824250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114239 (n + 1) - A108682 (n + 1)

end

end A114242.P7864988321759824250

namespace A114242

/-- `A114239(n+1)-A108682(n+1)` -/
def P7864988321759824250.Spec : Prop :=
  ∀ n, P7864988321759824250.a n = A114242 n

end A114242

/-! ## A114242.P11398566083261582644

`Δ[A107968(n)-A107969(n)]-A107969(n)`
-/

namespace A114242.P11398566083261582644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107968 n - A107969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A107969 n

end

end A114242.P11398566083261582644

namespace A114242

/-- `Δ[A107968(n)-A107969(n)]-A107969(n)` -/
def P11398566083261582644.Spec : Prop :=
  ∀ n, P11398566083261582644.a n = A114242 n

end A114242

/-! ## A114242.P8583140062175954667

`A006857(n+1)-(A114244(n+1)+A006857(n))`
-/

namespace A114242.P8583140062175954667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006857 (n + 1) - (A114244 (n + 1) + A006857 n)

end

end A114242.P8583140062175954667

namespace A114242

/-- `A006857(n+1)-(A114244(n+1)+A006857(n))` -/
def P8583140062175954667.Spec : Prop :=
  ∀ n, P8583140062175954667.a n = A114242 n

end A114242

/-!
# A114243: a(n) = (n+1)*(n+2)^2*(n+3)*(n+4)*(3*n+5)/240.

The programs for A114243, the canonical program `A114243.P6018229996108286020` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114243 has offset 0).

The definition of A114243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114243.P6018229996108286020

`(n+1)*(n+2)²*(n+3)*(n+4)*(3*n+5)/240`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114243

/-- `(n+1)*(n+2)²*(n+3)*(n+4)*(3*n+5)/240` -/
def P6018229996108286020.Spec : Prop :=
  ∀ n, P6018229996108286020.a n = (A114243 n : ℚ)

end A114243

/-! ## A114243.P16470704804741892263

`∑[A110159(n)]`
-/

namespace A114243.P16470704804741892263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114243.P16470704804741892263

namespace A114243

/-- `∑[A110159(n)]` -/
def P16470704804741892263.Spec : Prop :=
  ∀ n, P16470704804741892263.a n = A114243 n

end A114243

/-! ## A114243.P16907762306978282698

`∑[∑[A187673(n)]]`
-/

namespace A114243.P16907762306978282698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187673 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114243.P16907762306978282698

namespace A114243

/-- `∑[∑[A187673(n)]]` -/
def P16907762306978282698.Spec : Prop :=
  ∀ n, P16907762306978282698.a n = A114243 n

end A114243

/-! ## A114243.P5794718618975743347

`2*A108683(n)-A108677(n)`
-/

namespace A114243.P5794718618975743347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108683 n - A108677 n

end

end A114243.P5794718618975743347

namespace A114243

/-- `2*A108683(n)-A108677(n)` -/
def P5794718618975743347.Spec : Prop :=
  ∀ n, P5794718618975743347.a n = A114243 n

end A114243

/-! ## A114243.P13012225041688968679

`A050405(n)-∑[∑[A027480(n)]]`
-/

namespace A114243.P13012225041688968679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050405 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114243.P13012225041688968679

namespace A114243

/-- `A050405(n)-∑[∑[A027480(n)]]` -/
def P13012225041688968679.Spec : Prop :=
  ∀ n, P13012225041688968679.a n = A114243 n

end A114243

/-! ## A114243.P14103654910427229684

`A050405(n)+A051879(n)-A271567(n)`
-/

namespace A114243.P14103654910427229684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050405 n + (A051879 n - A271567 n)

end

end A114243.P14103654910427229684

namespace A114243

/-- `A050405(n)+A051879(n)-A271567(n)` -/
def P14103654910427229684.Spec : Prop :=
  ∀ n, P14103654910427229684.a n = A114243 n

end A114243

/-! ## A114243.P4010387301719878055

`A107963(n)-A000579(A020710(n))`
-/

namespace A114243.P4010387301719878055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107963 n - A000579 (A020710 n).toNat

end

end A114243.P4010387301719878055

namespace A114243

/-- `A107963(n)-A000579(A020710(n))` -/
def P4010387301719878055.Spec : Prop :=
  ∀ n, P4010387301719878055.a n = A114243 n

end A114243

/-! ## A114243.P4838292323188929329

`A051172(2*(n+4))-A011797(n+3)`
-/

namespace A114243.P4838292323188929329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051172 (2 * (n + 4)) - A011797 (n + 3)

end

end A114243.P4838292323188929329

namespace A114243

/-- `A051172(2*(n+4))-A011797(n+3)` -/
def P4838292323188929329.Spec : Prop :=
  ∀ n, P4838292323188929329.a n = A114243 n

end A114243

/-!
# A114244: a(n) = (n+1)*(n+2)^2*(n+3)*(7n^2 + 28n + 30)/360.

The programs for A114244, the canonical program `A114244.P2555860504665425965` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114244 has offset 0).

The definition of A114244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114244.P2555860504665425965

`(n+1)*(n+2)²*(n+3)*(7*n²+28*n+30)/360`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114244

/-- `(n+1)*(n+2)²*(n+3)*(7*n²+28*n+30)/360` -/
def P2555860504665425965.Spec : Prop :=
  ∀ n, P2555860504665425965.a n = (A114244 n : ℚ)

end A114244

/-! ## A114244.P3772912834420587229

`∑[A085463(n+1)]`
-/

namespace A114244.P3772912834420587229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114244.P3772912834420587229

namespace A114244

/-- `∑[A085463(n+1)]` -/
def P3772912834420587229.Spec : Prop :=
  ∀ n, P3772912834420587229.a n = A114244 n

end A114244

/-! ## A114244.P8060941134238321483

`∑[∑[A185505(n+1)]]`
-/

namespace A114244.P8060941134238321483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185505 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114244.P8060941134238321483

namespace A114244

/-- `∑[∑[A185505(n+1)]]` -/
def P8060941134238321483.Spec : Prop :=
  ∀ n, P8060941134238321483.a n = A114244 n

end A114244

/-! ## A114244.P18298969303804033615

`A108682(n)+A114239(n)-A107969(n)`
-/

namespace A114244.P18298969303804033615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108682 n + (A114239 n - A107969 n)

end

end A114244.P18298969303804033615

namespace A114244

/-- `A108682(n)+A114239(n)-A107969(n)` -/
def P18298969303804033615.Spec : Prop :=
  ∀ n, P18298969303804033615.a n = A114244 n

end A114244

/-! ## A114244.P13407938362539075950

`A108682(n)+A114242(n)-A114239(n)`
-/

namespace A114244.P13407938362539075950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108682 n + (A114242 n - A114239 n)

end

end A114244.P13407938362539075950

namespace A114244

/-- `A108682(n)+A114242(n)-A114239(n)` -/
def P13407938362539075950.Spec : Prop :=
  ∀ n, P13407938362539075950.a n = A114244 n

end A114244

/-! ## A114244.P13093223115301240291

`Δ[A107969(n)-A107970(n)]`
-/

namespace A114244.P13093223115301240291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107969 n - A107970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114244.P13093223115301240291

namespace A114244

/-- `Δ[A107969(n)-A107970(n)]` -/
def P13093223115301240291.Spec : Prop :=
  ∀ n, P13093223115301240291.a n = A114244 n

end A114244

/-!
# A114245: Number of Fermat pseudoprimes to base 3 less than 10^n.

The programs for A114245, there is no canonical definition to state claims against.
-/

/-! ## A114245.P6341903823667433801

`floor((A001629(2*(n+1))-A048158(A230655(n+2)))/3)`
-/

namespace A114245.P6341903823667433801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001629 (2 * (n + 1)) - A048158 (A230655 (n + 2)).toNat : ℚ) / 3⌋

end

end A114245.P6341903823667433801

/-!
# A114246: Number of Fermat pseudoprimes to bases 2 and 3 less than 10^n.

The programs for A114246, there is no canonical definition to state claims against.
-/

/-! ## A114246.P7082505322477948987

`A098182(n)-A136757((5^n-1)/4)`
-/

namespace A114246.P7082505322477948987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098182 n - A136757 (SequenceMachineLib.roundAway (((5 ^ n : ℤ) - 1 : ℚ) / 4)).toNat

end

end A114246.P7082505322477948987

/-! ## A114246.P3241260747411982947

`A338726(n)-A175632(A338729(n))`
-/

namespace A114246.P3241260747411982947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338726 n - A175632 (A338729 n).toNat

end

end A114246.P3241260747411982947

/-! ## A114246.P7222601592392573449

`∑[A002605(n)]-A001221(A057088(n))`
-/

namespace A114246.P7222601592392573449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001221 (A057088 n).toNat

end

end A114246.P7222601592392573449

/-!
# A114247: Number of Fermat pseudoprimes to base 5 less than 10^n.

The programs for A114247, there is no canonical definition to state claims against.
-/

/-! ## A114247.P3401782439294072841

`A220496(2^n-1)-(2^n-2)`
-/

namespace A114247.P3401782439294072841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220496 (2 ^ n - 1) - ((2 ^ n : ℤ) - 2)

end

end A114247.P3401782439294072841

/-! ## A114247.P13915933578131743055

`A008651(A255613(n+1))`
-/

namespace A114247.P13915933578131743055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A255613 (n + 1)).toNat

end

end A114247.P13915933578131743055

/-!
# A114249: Number of Fermat pseudoprimes to base 7 less than 10^n.

The programs for A114249, there is no canonical definition to state claims against.
-/

/-! ## A114249.P3747277712071810934

`A376597(A002478(n))+A071660(n)`
-/

namespace A114249.P3747277712071810934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376597 (A002478 n).toNat + A071660 n

end

end A114249.P3747277712071810934

/-! ## A114249.P301457912857624302

`A065716(A065568(2*n+3)+A004431(2*(n+1)))`
-/

namespace A114249.P301457912857624302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 (A065568 (2 * n + 3) + A004431 (2 * (n + 1))).toNat

end

end A114249.P301457912857624302

/-!
# A114250: Number of Fermat pseudoprimes to bases 2, 3, 5 and 7 less than 10^n.

The programs for A114250, there is no canonical definition to state claims against.
-/

/-! ## A114250.P7923633445829472748

`A242666(A011930(n)+1)`
-/

namespace A114250.P7923633445829472748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242666 (A011930 n + 1).toNat

end

end A114250.P7923633445829472748

/-! ## A114250.P17079178685241265768

`A242666(A210542(n+1)+A000332(n))`
-/

namespace A114250.P17079178685241265768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242666 (A210542 (n + 1) + A000332 n).toNat

end

end A114250.P17079178685241265768

/-! ## A114250.P17392717118729721835

`A212971(A003178(2*n+1))%A212804(2*n)`
-/

namespace A114250.P17392717118729721835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212971 (A003178 (2 * n + 1)).toNat) (A212804 (2 * n))

end

end A114250.P17392717118729721835

/-!
# A114251: a(n) = C(3+2*n,3+n)*C(8+2*n,0+n).

The programs for A114251, the canonical program `A114251.P16907014934193643899` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114251 has offset 0).

The definition of A114251 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002054, A004310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114251.P16907014934193643899

`A002054(n+1)*A004310(n+4)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A114251

/-- `A002054(n+1)*A004310(n+4)` -/
def P16907014934193643899.Spec : Prop :=
  ∀ n, P16907014934193643899.a n = A114251 n

theorem P16907014934193643899.correct : P16907014934193643899.Spec := by
  intro n
  simp only [A114251]

end A114251

/-! ## A114251.P5228799988173993595

`C(2*(n+4), n)*A116385(2*(n+1))`
-/

namespace A114251.P5228799988173993595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 4)) n : ℤ) * A116385 (2 * (n + 1))

end

end A114251.P5228799988173993595

namespace A114251

/-- `C(2*(n+4), n)*A116385(2*(n+1))` -/
def P5228799988173993595.Spec : Prop :=
  ∀ n, P5228799988173993595.a n = A114251 n

end A114251

/-! ## A114251.P15217533370820483924

`C(2*(n+4), n)*A037951(2*n+3)`
-/

namespace A114251.P15217533370820483924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 4)) n : ℤ) * A037951 (2 * n + 3)

end

end A114251.P15217533370820483924

namespace A114251

/-- `C(2*(n+4), n)*A037951(2*n+3)` -/
def P15217533370820483924.Spec : Prop :=
  ∀ n, P15217533370820483924.a n = A114251 n

end A114251

/-! ## A114251.P8799639898382550987

`C(2*(n+4), n)*A037955(2*n+3)`
-/

namespace A114251.P8799639898382550987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 4)) n : ℤ) * A037955 (2 * n + 3)

end

end A114251.P8799639898382550987

namespace A114251

/-- `C(2*(n+4), n)*A037955(2*n+3)` -/
def P8799639898382550987.Spec : Prop :=
  ∀ n, P8799639898382550987.a n = A114251 n

end A114251

/-! ## A114251.P4007823968432539588

`A276666(n+2)/2*C(2*(n+4), n)`
-/

namespace A114251.P4007823968432539588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276666 (n + 2) : ℚ) / 2 * (Nat.choose (2 * (n + 4)) n : ℚ)

end

end A114251.P4007823968432539588

namespace A114251

/-- `A276666(n+2)/2*C(2*(n+4), n)` -/
def P4007823968432539588.Spec : Prop :=
  ∀ n, P4007823968432539588.a n = (A114251 n : ℚ)

end A114251

/-! ## A114251.P14785124639597689542

`A024483(n+3)/2*C(2*(n+4), n)`
-/

namespace A114251.P14785124639597689542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024483 (n + 3) : ℚ) / 2 * (Nat.choose (2 * (n + 4)) n : ℚ)

end

end A114251.P14785124639597689542

namespace A114251

/-- `A024483(n+3)/2*C(2*(n+4), n)` -/
def P14785124639597689542.Spec : Prop :=
  ∀ n, P14785124639597689542.a n = (A114251 n : ℚ)

end A114251

/-! ## A114251.P16394764960156268135

`(A047182(2*n+3)+1)*C(2*(n+4), n)`
-/

namespace A114251.P16394764960156268135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047182 (2 * n + 3) + 1) * (Nat.choose (2 * (n + 4)) n : ℤ)

end

end A114251.P16394764960156268135

namespace A114251

/-- `(A047182(2*n+3)+1)*C(2*(n+4), n)` -/
def P16394764960156268135.Spec : Prop :=
  ∀ n, P16394764960156268135.a n = A114251 n

end A114251

/-! ## A114251.P9329591243044012546

`A276666(n+2)/2*A004310(n+4)`
-/

namespace A114251.P9329591243044012546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276666 (n + 2) : ℚ) / 2 * (A004310 (n + 4) : ℚ)

end

end A114251.P9329591243044012546

namespace A114251

/-- `A276666(n+2)/2*A004310(n+4)` -/
def P9329591243044012546.Spec : Prop :=
  ∀ n, P9329591243044012546.a n = (A114251 n : ℚ)

end A114251

/-! ## A114251.P9099358976983547664

`A024483(n+3)/2*A004310(n+4)`
-/

namespace A114251.P9099358976983547664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024483 (n + 3) : ℚ) / 2 * (A004310 (n + 4) : ℚ)

end

end A114251.P9099358976983547664

namespace A114251

/-- `A024483(n+3)/2*A004310(n+4)` -/
def P9099358976983547664.Spec : Prop :=
  ∀ n, P9099358976983547664.a n = (A114251 n : ℚ)

end A114251

/-! ## A114251.P2309645880889173838

`A037955(2*n+3)*A037958(2*(n+4))`
-/

namespace A114251.P2309645880889173838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * n + 3) * A037958 (2 * (n + 4))

end

end A114251.P2309645880889173838

namespace A114251

/-- `A037955(2*n+3)*A037958(2*(n+4))` -/
def P2309645880889173838.Spec : Prop :=
  ∀ n, P2309645880889173838.a n = A114251 n

end A114251

/-!
# A114252: a(n) = C(4+2*n,4+n)*C(9+2*n,0+n).

The programs for A114252, the canonical program `A114252.P11532948527994749802` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114252 has offset 0).

The definition of A114252 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002694, A030054, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114252.P11532948527994749802

`A002694(n+2)*A030054(n+4)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A114252

/-- `A002694(n+2)*A030054(n+4)` -/
def P11532948527994749802.Spec : Prop :=
  ∀ n, P11532948527994749802.a n = A114252 n

theorem P11532948527994749802.correct : P11532948527994749802.Spec := by
  intro n
  simp only [A114252]

end A114252

/-! ## A114252.P10043198864481763744

`A006659(n+1)/2*C(2*n+9, n)`
-/

namespace A114252.P10043198864481763744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006659 (n + 1) : ℚ) / 2 * (Nat.choose (2 * n + 9) n : ℚ)

end

end A114252.P10043198864481763744

namespace A114252

/-- `A006659(n+1)/2*C(2*n+9, n)` -/
def P10043198864481763744.Spec : Prop :=
  ∀ n, P10043198864481763744.a n = (A114252 n : ℚ)

end A114252

/-! ## A114252.P14492534750024888094

`C(2*n+9, n)*A037951(2*(n+2))`
-/

namespace A114252.P14492534750024888094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 9) n : ℤ) * A037951 (2 * (n + 2))

end

end A114252.P14492534750024888094

namespace A114252

/-- `C(2*n+9, n)*A037951(2*(n+2))` -/
def P14492534750024888094.Spec : Prop :=
  ∀ n, P14492534750024888094.a n = A114252 n

end A114252

/-! ## A114252.P15537981221986981695

`C(2*n+9, n)*A037956(2*(n+2))`
-/

namespace A114252.P15537981221986981695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 9) n : ℤ) * A037956 (2 * (n + 2))

end

end A114252.P15537981221986981695

namespace A114252

/-- `C(2*n+9, n)*A037956(2*(n+2))` -/
def P15537981221986981695.Spec : Prop :=
  ∀ n, P15537981221986981695.a n = A114252 n

end A114252

/-! ## A114252.P15267239018567169533

`(A048060(2*(n+2))+1)*C(2*n+9, n)`
-/

namespace A114252.P15267239018567169533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048060 (2 * (n + 2)) + 1) * (Nat.choose (2 * n + 9) n : ℤ)

end

end A114252.P15267239018567169533

namespace A114252

/-- `(A048060(2*(n+2))+1)*C(2*n+9, n)` -/
def P15267239018567169533.Spec : Prop :=
  ∀ n, P15267239018567169533.a n = A114252 n

end A114252

/-! ## A114252.P6790287035148821096

`(n+2)/2*A002057(n)*C(2*n+9, n)`
-/

namespace A114252.P6790287035148821096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A002057 n : ℚ) * (Nat.choose (2 * n + 9) n : ℚ)

end

end A114252.P6790287035148821096

namespace A114252

/-- `(n+2)/2*A002057(n)*C(2*n+9, n)` -/
def P6790287035148821096.Spec : Prop :=
  ∀ n, P6790287035148821096.a n = (A114252 n : ℚ)

end A114252

/-! ## A114252.P12982328520665241657

`A030054(n+4)*A037951(2*(n+2))`
-/

namespace A114252.P12982328520665241657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030054 (n + 4) * A037951 (2 * (n + 2))

end

end A114252.P12982328520665241657

namespace A114252

/-- `A030054(n+4)*A037951(2*(n+2))` -/
def P12982328520665241657.Spec : Prop :=
  ∀ n, P12982328520665241657.a n = A114252 n

end A114252

/-! ## A114252.P7791284301266688521

`A030054(n+4)*A037956(2*(n+2))`
-/

namespace A114252.P7791284301266688521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030054 (n + 4) * A037956 (2 * (n + 2))

end

end A114252.P7791284301266688521

namespace A114252

/-- `A030054(n+4)*A037956(2*(n+2))` -/
def P7791284301266688521.Spec : Prop :=
  ∀ n, P7791284301266688521.a n = A114252 n

end A114252

/-! ## A114252.P18341495542234153351

`A002694(n+2)*A037958(2*n+9)`
-/

namespace A114252.P18341495542234153351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 2) * A037958 (2 * n + 9)

end

end A114252.P18341495542234153351

namespace A114252

/-- `A002694(n+2)*A037958(2*n+9)` -/
def P18341495542234153351.Spec : Prop :=
  ∀ n, P18341495542234153351.a n = A114252 n

end A114252

/-! ## A114252.P1416781946475997170

`A002694(n+2)*A122366(∑[n+5]+5)`
-/

namespace A114252.P1416781946475997170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 2) * A122366 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A114252.P1416781946475997170

namespace A114252

/-- `A002694(n+2)*A122366(∑[n+5]+5)` -/
def P1416781946475997170.Spec : Prop :=
  ∀ n, P1416781946475997170.a n = A114252 n

end A114252

/-!
# A114253: a(n) = C(5+2*n,5+n)*C(10+2*n,0+n).

The programs for A114253, the canonical program `A114253.P5557094872151062663` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114253 has offset 0).

The definition of A114253 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003516, A004311, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114253.P5557094872151062663

`A003516(n+2)*A004311(n+5)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A114253

/-- `A003516(n+2)*A004311(n+5)` -/
def P5557094872151062663.Spec : Prop :=
  ∀ n, P5557094872151062663.a n = A114253 n

theorem P5557094872151062663.correct : P5557094872151062663.Spec := by
  intro n
  simp only [A114253]

end A114253

/-! ## A114253.P14106693374988995666

`C(2*(n+5), n)*A037953(2*n+5)`
-/

namespace A114253.P14106693374988995666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 5)) n : ℤ) * A037953 (2 * n + 5)

end

end A114253.P14106693374988995666

namespace A114253

/-- `C(2*(n+5), n)*A037953(2*n+5)` -/
def P14106693374988995666.Spec : Prop :=
  ∀ n, P14106693374988995666.a n = A114253 n

end A114253

/-! ## A114253.P5977746194329038609

`A002058(n+5)/2*C(2*(n+5), n)`
-/

namespace A114253.P5977746194329038609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002058 (n + 5) : ℚ) / 2 * (Nat.choose (2 * (n + 5)) n : ℚ)

end

end A114253.P5977746194329038609

namespace A114253

/-- `A002058(n+5)/2*C(2*(n+5), n)` -/
def P5977746194329038609.Spec : Prop :=
  ∀ n, P5977746194329038609.a n = (A114253 n : ℚ)

end A114253

/-! ## A114253.P2957404349584581022

`A004311(n+5)*A037953(2*n+5)`
-/

namespace A114253.P2957404349584581022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004311 (n + 5) * A037953 (2 * n + 5)

end

end A114253.P2957404349584581022

namespace A114253

/-- `A004311(n+5)*A037953(2*n+5)` -/
def P2957404349584581022.Spec : Prop :=
  ∀ n, P2957404349584581022.a n = A114253 n

end A114253

/-! ## A114253.P6021459735462655031

`A004311(n+5)*A037956(2*n+5)`
-/

namespace A114253.P6021459735462655031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004311 (n + 5) * A037956 (2 * n + 5)

end

end A114253.P6021459735462655031

namespace A114253

/-- `A004311(n+5)*A037956(2*n+5)` -/
def P6021459735462655031.Spec : Prop :=
  ∀ n, P6021459735462655031.a n = A114253 n

end A114253

/-! ## A114253.P12435257727849963129

`A003516(n+2)*A034870((n+5)²+n)`
-/

namespace A114253.P12435257727849963129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003516 (n + 2) * A034870 ((n + 5) ^ 2 + n)

end

end A114253.P12435257727849963129

namespace A114253

/-- `A003516(n+2)*A034870((n+5)²+n)` -/
def P12435257727849963129.Spec : Prop :=
  ∀ n, P12435257727849963129.a n = A114253 n

end A114253

/-! ## A114253.P10366110463092319150

`A003516(n+2)*A062344(A055999(n+3))`
-/

namespace A114253.P10366110463092319150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003516 (n + 2) * A062344 (A055999 (n + 3)).toNat

end

end A114253.P10366110463092319150

namespace A114253

/-- `A003516(n+2)*A062344(A055999(n+3))` -/
def P10366110463092319150.Spec : Prop :=
  ∀ n, P10366110463092319150.a n = A114253 n

end A114253

/-! ## A114253.P14289979430344455422

`(A004310(n+5)-A001392(n+5))*A003516(n+2)`
-/

namespace A114253.P14289979430344455422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004310 (n + 5) - A001392 (n + 5)) * A003516 (n + 2)

end

end A114253.P14289979430344455422

namespace A114253

/-- `(A004310(n+5)-A001392(n+5))*A003516(n+2)` -/
def P14289979430344455422.Spec : Prop :=
  ∀ n, P14289979430344455422.a n = A114253 n

end A114253

/-! ## A114253.P15396621852462820883

`(A030054(n+5)-A004310(n+5))*A003516(n+2)`
-/

namespace A114253.P15396621852462820883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030054 (n + 5) - A004310 (n + 5)) * A003516 (n + 2)

end

end A114253.P15396621852462820883

namespace A114253

/-- `(A030054(n+5)-A004310(n+5))*A003516(n+2)` -/
def P15396621852462820883.Spec : Prop :=
  ∀ n, P15396621852462820883.a n = A114253 n

end A114253

/-! ## A114253.P16270003984017553921

`A062190(A268581(n+1))`
-/

namespace A114253.P16270003984017553921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A268581 (n + 1)).toNat

end

end A114253.P16270003984017553921

namespace A114253

/-- `A062190(A268581(n+1))` -/
def P16270003984017553921.Spec : Prop :=
  ∀ n, P16270003984017553921.a n = A114253 n

end A114253

/-!
# A114254: Sum of all terms on the two principal diagonals of a 2n+1 X 2n+1 square spiral.

The programs for A114254, the canonical program `A114254.P17501978448025461029` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114254 has offset 0).

The definition of A114254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114254.P17501978448025461029

`1+10*n²+(16*n^3+26*n)/3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114254

/-- `1+10*n²+(16*n^3+26*n)/3` -/
def P17501978448025461029.Spec : Prop :=
  ∀ n, P17501978448025461029.a n = (A114254 n : ℚ)

end A114254

/-! ## A114254.P2597414449968786840

`abs(A024381(n+1)-A000384(n))`
-/

namespace A114254.P2597414449968786840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024381 (n + 1) - A000384 n|

end

end A114254.P2597414449968786840

namespace A114254

/-- `abs(A024381(n+1)-A000384(n))` -/
def P2597414449968786840.Spec : Prop :=
  ∀ n, P2597414449968786840.a n = A114254 n

end A114254

/-! ## A114254.P1244620291110377221

`Δ[(n-1)*A001845(n)]`
-/

namespace A114254.P1244620291110377221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A001845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114254.P1244620291110377221

namespace A114254

/-- `Δ[(n-1)*A001845(n)]` -/
def P1244620291110377221.Spec : Prop :=
  ∀ n, P1244620291110377221.a n = A114254 n

end A114254

/-! ## A114254.P18059706570658988491

`Δ[(n-1)*∑[∑[A086570(n)]]]`
-/

namespace A114254.P18059706570658988491
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114254.P18059706570658988491

namespace A114254

/-- `Δ[(n-1)*∑[∑[A086570(n)]]]` -/
def P18059706570658988491.Spec : Prop :=
  ∀ n, P18059706570658988491.a n = A114254 n

end A114254

/-! ## A114254.P13490027592348694143

`Δ[A001845(n)*A023443(n)]`
-/

namespace A114254.P13490027592348694143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 n * A023443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114254.P13490027592348694143

namespace A114254

/-- `Δ[A001845(n)*A023443(n)]` -/
def P13490027592348694143.Spec : Prop :=
  ∀ n, P13490027592348694143.a n = A114254 n

end A114254

/-! ## A114254.P14834087114071147623

`A137930(Δ[n²])`
-/

namespace A114254.P14834087114071147623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137930 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A114254.P14834087114071147623

namespace A114254

/-- `A137930(Δ[n²])` -/
def P14834087114071147623.Spec : Prop :=
  ∀ n, P14834087114071147623.a n = A114254 n

end A114254

/-! ## A114254.P8685778444496842901

`or(1, A137930(2*n+1))`
-/

namespace A114254.P8685778444496842901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A137930 (2 * n + 1))

end

end A114254.P8685778444496842901

namespace A114254

/-- `or(1, A137930(2*n+1))` -/
def P8685778444496842901.Spec : Prop :=
  ∀ n, P8685778444496842901.a n = A114254 n

end A114254

/-! ## A114254.P3338443413725790215

`∑[A103517(2*n)²-12*n]`
-/

namespace A114254.P3338443413725790215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (2 * n) ^ 2 - (12 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114254.P3338443413725790215

namespace A114254

/-- `∑[A103517(2*n)²-12*n]` -/
def P3338443413725790215.Spec : Prop :=
  ∀ n, P3338443413725790215.a n = A114254 n

end A114254

/-! ## A114254.P562928011927232412

`record[A137930(A014681(n)+1)]`
-/

namespace A114254.P562928011927232412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137930 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114254.P562928011927232412

namespace A114254

/-- `record[A137930(A014681(n)+1)]` -/
def P562928011927232412.Spec : Prop :=
  ∀ n, P562928011927232412.a n = A114254 n

end A114254

/-! ## A114254.P9324658174149704895

`record[A137930(A033999(n)+n)]`
-/

namespace A114254.P9324658174149704895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137930 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114254.P9324658174149704895

namespace A114254

/-- `record[A137930(A033999(n)+n)]` -/
def P9324658174149704895.Spec : Prop :=
  ∀ n, P9324658174149704895.a n = A114254 n

end A114254

/-! ## A114254.P14318751679157131565

`∩[A137930(A005843(n)+1), A137930(n)]`
-/

namespace A114254.P14318751679157131565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137930 (A005843 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137930 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114254.P14318751679157131565

namespace A114254

/-- `∩[A137930(A005843(n)+1), A137930(n)]` -/
def P14318751679157131565.Spec : Prop :=
  ∀ n, (P14318751679157131565.a n : ℤ) = A114254 n

end A114254

/-!
# A114255: Numbers that are nontrivial (3 digits or more) palindromes when expressed in some base 2 or greater.

The programs for A114255, there is no canonical definition to state claims against.
-/

/-! ## A114255.P3824861726229610953

`lt[0, A100563(n+1)]+1`
-/

namespace A114255.P3824861726229610953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100563 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A114255.P3824861726229610953

/-! ## A114255.P9804234798262847646

`comp[A123586(n+1)-1]+1`
-/

namespace A114255.P9804234798262847646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123586 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A114255.P9804234798262847646

/-! ## A114255.P4659507223919687795

`lt[A016026(n+1)², n+1]+1`
-/

namespace A114255.P4659507223919687795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A114255.P4659507223919687795

/-! ## A114255.P4684108545960261768

`lt[0, A100563(A028310(n))]`
-/

namespace A114255.P4684108545960261768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100563 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A114255.P4684108545960261768

/-! ## A114255.P6207753590248914385

`A020725(lt[0, A100563(n+1)])`
-/

namespace A114255.P6207753590248914385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A114255.P6207753590248914385

/-! ## A114255.P17401166807392574949

`lt[0, A100563(A233583(n+1))]`
-/

namespace A114255.P17401166807392574949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100563 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A114255.P17401166807392574949

/-! ## A114255.P17768412256168318735

`lt[0, A100563(A000007(n)+n)]`
-/

namespace A114255.P17768412256168318735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100563 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A114255.P17768412256168318735

/-! ## A114255.P1494372322746624733

`lt[0, A100563(xor(n, A000007(n)))]`
-/

namespace A114255.P1494372322746624733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100563 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A114255.P1494372322746624733

/-! ## A114255.P1617671656383229772

`eq[char[A123586(n+1)], char[A187612(n+3)]]`
-/

namespace A114255.P1617671656383229772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123586 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187612 (n + 3)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A114255.P1617671656383229772

/-! ## A114255.P17161416233248240407

`lt[A033831(A028310(n)), A135551(n)]`
-/

namespace A114255.P17161416233248240407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114255.P17161416233248240407

/-!
# A114256: Prime numbers in A014285.

The programs for A114256, there is no canonical definition to state claims against.
-/

/-! ## A114256.P10328462164167006830

`A014285(A114257(n+1))`
-/

namespace A114256.P10328462164167006830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014285 (A114257 (n + 1)).toNat

end

end A114256.P10328462164167006830

/-! ## A114256.P6086519520226047581

`A306834(A114257(n+1))+A000007(n)`
-/

namespace A114256.P6086519520226047581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306834 (A114257 (n + 1)).toNat + A000007 n

end

end A114256.P6086519520226047581

/-! ## A114256.P16796890871325171150

`A014963(4*n+2)*A306834(A114257(n+1))`
-/

namespace A114256.P16796890871325171150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A306834 (A114257 (n + 1)).toNat

end

end A114256.P16796890871325171150

/-! ## A114256.P8749709418280595982

`A306834(A114257(n+1))+floor(2/A000040(n+1))`
-/

namespace A114256.P8749709418280595982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306834 (A114257 (n + 1)).toNat + ⌊2 / (A000040 (n + 1) : ℚ)⌋

end

end A114256.P8749709418280595982

/-! ## A114256.P10847232859823854473

`A000032(ceil(n/(n+1)))*A306834(A114257(n+1))`
-/

namespace A114256.P10847232859823854473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A306834 (A114257 (n + 1)).toNat

end

end A114256.P10847232859823854473

/-!
# A114262: p is the smallest prime that is greater than prime(n) such that prime(n)+2*p is a prime.

The programs for A114262, there is no canonical definition to state claims against.
-/

/-! ## A114262.P6313881251659036790

`(A287615(n+2)-A000040(n+2))/2`
-/

namespace A114262.P6313881251659036790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287615 (n + 2) - A000040 (n + 2) : ℚ) / 2

end

end A114262.P6313881251659036790

/-! ## A114262.P16126605459218548468

`A065091(A114263(n+2)+1+n)`
-/

namespace A114262.P16126605459218548468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A114263 (n + 2) + 1 + (n : ℤ)).toNat

end

end A114262.P16126605459218548468

/-! ## A114262.P15281325912261531698

`A000040(A114263(n+2)+2+n)`
-/

namespace A114262.P15281325912261531698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A114263 (n + 2) + 2 + (n : ℤ)).toNat

end

end A114262.P15281325912261531698

/-! ## A114262.P17177968734449203302

`A008578(A114263(n+2)+n+3)`
-/

namespace A114262.P17177968734449203302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A114263 (n + 2) + (n + 3 : ℤ)).toNat

end

end A114262.P17177968734449203302

/-! ## A114262.P6113288162165427485

`A040976(A114263(n+2)+2+n)+2`
-/

namespace A114262.P6113288162165427485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A114263 (n + 2) + 2 + (n : ℤ)).toNat + 2

end

end A114262.P6113288162165427485

/-! ## A114262.P3461462953568836234

`A006530(A287615(n+2)-A000040(n+2))`
-/

namespace A114262.P3461462953568836234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A287615 (n + 2) - A000040 (n + 2)).toNat

end

end A114262.P3461462953568836234

/-!
# A114263: Smallest number m such that prime(n) + 2*prime(n+m) is a prime.

The programs for A114263, there is no canonical definition to state claims against.
-/

/-! ## A114263.P977606536215601825

`A000720(A114262(n+2))-(n+2)`
-/

namespace A114263.P977606536215601825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A114262 (n + 2)).toNat - (n + 2 : ℤ)

end

end A114263.P977606536215601825

/-! ## A114263.P2379288962915349505

`A000720(A114262(n+2))%A020725(n+1)`
-/

namespace A114263.P2379288962915349505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A114262 (n + 2)).toNat) (A020725 (n + 1))

end

end A114263.P2379288962915349505

/-! ## A114263.P7293571723769251879

`A084360(A114262(n+2))-n`
-/

namespace A114263.P7293571723769251879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A114262 (n + 2)).toNat - (n : ℤ)

end

end A114263.P7293571723769251879

/-! ## A114263.P1853741131022726507

`A058933(A114262(n+2))-A058933(A065091(n+1))`
-/

namespace A114263.P1853741131022726507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A114262 (n + 2)).toNat - A058933 (A065091 (n + 1)).toNat

end

end A114263.P1853741131022726507

/-! ## A114263.P414042050760190705

`A082460(A114262(n+2))+A001478(n+1)`
-/

namespace A114263.P414042050760190705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (A114262 (n + 2)).toNat + A001478 (n + 1)

end

end A114263.P414042050760190705

/-! ## A114263.P15653210351344663038

`A082460(A114262(n+2))-A061395(A100484(n+1))`
-/

namespace A114263.P15653210351344663038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (A114262 (n + 2)).toNat - A061395 (A100484 (n + 1)).toNat

end

end A114263.P15653210351344663038

/-!
# A114265: Smallest prime p greater than prime(n) such that 2*prime(n) + p is a prime.

The programs for A114265, there is no canonical definition to state claims against.
-/

/-! ## A114265.P7348886403712664023

`A065091(A114266(n+1)+n)`
-/

namespace A114265.P7348886403712664023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A114266 (n + 1) + (n : ℤ)).toNat

end

end A114265.P7348886403712664023

/-! ## A114265.P17937899439542334760

`A000040(A114266(n+1)+1+n)`
-/

namespace A114265.P17937899439542334760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A114266 (n + 1) + 1 + (n : ℤ)).toNat

end

end A114265.P17937899439542334760

/-! ## A114265.P4636228785102562774

`A006005(A114266(n+1)+1+n)`
-/

namespace A114265.P4636228785102562774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A114266 (n + 1) + 1 + (n : ℤ)).toNat

end

end A114265.P4636228785102562774

/-! ## A114265.P7882544667468604163

`A008578(A114266(n+1)+2+n)`
-/

namespace A114265.P7882544667468604163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A114266 (n + 1) + 2 + (n : ℤ)).toNat

end

end A114265.P7882544667468604163

/-! ## A114265.P11104471309642750930

`abs(A073579(A114266(n+1)+n+1))`
-/

namespace A114265.P11104471309642750930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073579 (A114266 (n + 1) + (n : ℤ) + 1).toNat|

end

end A114265.P11104471309642750930

/-! ## A114265.P37485454825422075

`A088046(n+1)-record[A096014(n+1)]`
-/

namespace A114265.P37485454825422075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088046 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114265.P37485454825422075

/-! ## A114265.P16916130915649406578

`A088046(n+1)-lcm(2, A000040(n+1))`
-/

namespace A114265.P16916130915649406578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088046 (n + 1) - (Int.lcm 2 (A000040 (n + 1)) : ℤ)

end

end A114265.P16916130915649406578

/-!
# A114266: a(n) is the minimal number m that makes 2*prime(n)+prime(n+m) a prime.

The programs for A114266, there is no canonical definition to state claims against.
-/

/-! ## A114266.P8146717139400603431

`A000720(A114265(n+1))-(n+1)`
-/

namespace A114266.P8146717139400603431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A114265 (n + 1)).toNat - (n + 1 : ℤ)

end

end A114266.P8146717139400603431

/-! ## A114266.P16754529168147302442

`A066328(A114265(n-log2(1/2)))-(n+1)`
-/

namespace A114266.P16754529168147302442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A114265 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat - (n + 1 : ℤ)

end

end A114266.P16754529168147302442

/-! ## A114266.P7433331015318004156

`A058933(A114265(n+1))+A001478(n+1)`
-/

namespace A114266.P7433331015318004156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A114265 (n + 1)).toNat + A001478 (n + 1)

end

end A114266.P7433331015318004156

/-! ## A114266.P6592095359897229481

`A058933(A114265(n+1))-A028310(n+1)`
-/

namespace A114266.P6592095359897229481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A114265 (n + 1)).toNat - A028310 (n + 1)

end

end A114266.P6592095359897229481

/-! ## A114266.P13496277484490711440

`A058933(A114265(n+1))-A080513(2*n)`
-/

namespace A114266.P13496277484490711440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A114265 (n + 1)).toNat - A080513 (2 * n)

end

end A114266.P13496277484490711440

/-! ## A114266.P14115530796611715801

`A058933(A114265(n+1))-A038722(A038722(n+1))`
-/

namespace A114266.P14115530796611715801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A114265 (n + 1)).toNat - A038722 (A038722 (n + 1)).toNat

end

end A114266.P14115530796611715801

/-! ## A114266.P13347631474758184165

`A082460(A114265(n+1))-n`
-/

namespace A114266.P13347631474758184165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (A114265 (n + 1)).toNat - (n : ℤ)

end

end A114266.P13347631474758184165

/-! ## A114266.P3306479220316418418

`A003963(A114265(n+1))-A008619(Δ[n²])`
-/

namespace A114266.P3306479220316418418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A114265 (n + 1)).toNat - A008619 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A114266.P3306479220316418418

/-!
# A114269: Numbers k such that k^2 + 6 is prime.

The programs for A114269, there is no canonical definition to state claims against.
-/

/-! ## A114269.P533237919746849366

`sqrt(A056909(n+1)-6)`
-/

namespace A114269.P533237919746849366
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056909 (n + 1) - 6 : ℝ)

end

end A114269.P533237919746849366

/-! ## A114269.P1820254126719892958

`A000265(floor(sqrt(A056909(n+1))))`
-/

namespace A114269.P1820254126719892958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.sqrt (A056909 (n + 1))).toNat

end

end A114269.P1820254126719892958

/-! ## A114269.P3286310846807714548

`A093178(floor(sqrt(A056909(n+1))))`
-/

namespace A114269.P3286310846807714548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (Int.sqrt (A056909 (n + 1))).toNat

end

end A114269.P3286310846807714548

/-! ## A114269.P14475744785920836772

`A026741(floor(sqrt(A056909(n+1))))`
-/

namespace A114269.P14475744785920836772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.sqrt (A056909 (n + 1))).toNat

end

end A114269.P14475744785920836772

/-! ## A114269.P6808656970638921670

`A051724(floor(sqrt(A056909(n+1))))`
-/

namespace A114269.P6808656970638921670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (Int.sqrt (A056909 (n + 1))).toNat

end

end A114269.P6808656970638921670

/-! ## A114269.P7951870655027994139

`A267458(ceil(sqrt(A056909(n+1))))`
-/

namespace A114269.P7951870655027994139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 ⌈Real.sqrt (A056909 (n + 1) : ℝ)⌉.toNat

end

end A114269.P7951870655027994139

/-! ## A114269.P3398626595652273596

`sqrt(p?[n²+6]-6)`
-/

namespace A114269.P3398626595652273596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 6

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 6 : ℝ)

end

end A114269.P3398626595652273596

/-! ## A114269.P15255723941587308062

`sqrt(xor(6, p?[n²+6]))`
-/

namespace A114269.P15255723941587308062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 6

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 6 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℝ)

end

end A114269.P15255723941587308062

/-!
# A114270: Numbers k such that k^2 + 7 is prime.

The programs for A114270, there is no canonical definition to state claims against.
-/

/-! ## A114270.P10376506319165291401

`sqrt(A079138(n+1)-7)`
-/

namespace A114270.P10376506319165291401
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A079138 (n + 1) - 7 : ℝ)

end

end A114270.P10376506319165291401

/-! ## A114270.P10686429829131841197

`sqrt(p?[n²+7]-7)`
-/

namespace A114270.P10686429829131841197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 7

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 7 : ℝ)

end

end A114270.P10686429829131841197

/-! ## A114270.P14871892903790107705

`lt[∏{e}[n²+7, #+1], 3]`
-/

namespace A114270.P14871892903790107705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A114270.P14871892903790107705

/-! ## A114270.P3136770170353754793

`(p?[n²+7]-7)^(1/2)`
-/

namespace A114270.P3136770170353754793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 7

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 7 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A114270.P3136770170353754793

/-! ## A114270.P654676969392620590

`round(sqrt(p?[n*4*n+7]-7))`
-/

namespace A114270.P654676969392620590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (4 * n) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 7 : ℝ))

end

end A114270.P654676969392620590

/-! ## A114270.P14689576811819747566

`record[A002344(n+1)/A002345(n+1)]`
-/

namespace A114270.P14689576811819747566
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002344 (n + 1) : ℚ) / (A002345 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114270.P14689576811819747566

/-! ## A114270.P661874290048342379

`eq[1, A001222(n²+7)]`
-/

namespace A114270.P661874290048342379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114270.P661874290048342379

/-! ## A114270.P5114958467087069622

`eq[2, A000005(n²+7)]`
-/

namespace A114270.P5114958467087069622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114270.P5114958467087069622

/-! ## A114270.P15352252532331434505

`lt[n+1, A020639(n²+7)]`
-/

namespace A114270.P15352252532331434505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n ^ 2 + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A114270.P15352252532331434505

/-! ## A114270.P16996528019248952037

`lt[A001222(n*(abs(1-n)+1)+7), 2]`
-/

namespace A114270.P16996528019248952037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n : ℤ) * (|1 - (n : ℤ)| + 1) + 7).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114270.P16996528019248952037

/-!
# A114271: Numbers k such that k^2 + 8 is prime.

The programs for A114271, there is no canonical definition to state claims against.
-/

/-! ## A114271.P14408644878591059498

`sqrt(A138338(n+1)-8)`
-/

namespace A114271.P14408644878591059498
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138338 (n + 1) - 8 : ℝ)

end

end A114271.P14408644878591059498

/-! ## A114271.P6887316594148419998

`A029579(floor(sqrt(A138338(n+1))))`
-/

namespace A114271.P6887316594148419998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (Int.sqrt (A138338 (n + 1))).toNat

end

end A114271.P6887316594148419998

/-! ## A114271.P6712357109938034368

`A267458(ceil(sqrt(A138338(n+1))))`
-/

namespace A114271.P6712357109938034368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 ⌈Real.sqrt (A138338 (n + 1) : ℝ)⌉.toNat

end

end A114271.P6712357109938034368

/-! ## A114271.P14092000776032869950

`A029579(round(sqrt(A138338(n+1))))`
-/

namespace A114271.P14092000776032869950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (SequenceMachineLib.roundAway (Real.sqrt (A138338 (n + 1) : ℝ))).toNat

end

end A114271.P14092000776032869950

/-! ## A114271.P14276619207704384250

`sqrt(p?[n²+8]-8)`
-/

namespace A114271.P14276619207704384250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 8

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 8 : ℝ)

end

end A114271.P14276619207704384250

/-! ## A114271.P1127466020212588603

`root(p?[n²+8]-8, 2)`
-/

namespace A114271.P1127466020212588603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 8

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 8 : ℝ) ^ (1 / (2 : ℝ))

end

end A114271.P1127466020212588603

/-! ## A114271.P17822309123150500975

`(p?[n²+8]-8)^(1/2)`
-/

namespace A114271.P17822309123150500975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 8

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 8 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A114271.P17822309123150500975

/-!
# A114272: Numbers k such that k^2 + 9 is prime.

The programs for A114272, there is no canonical definition to state claims against.
-/

/-! ## A114272.P14406799288235203678

`2*A002970(n+1)`
-/

namespace A114272.P14406799288235203678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002970 (n + 1)

end

end A114272.P14406799288235203678

/-! ## A114272.P15374014762619084142

`A002970(A000027(n+1))+A002970(n+1)`
-/

namespace A114272.P15374014762619084142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002970 (A000027 (n + 1)).toNat + A002970 (n + 1)

end

end A114272.P15374014762619084142

/-! ## A114272.P17090965313501226762

`A002970(n+1)+A002970(n+1)%A002145(n+1)`
-/

namespace A114272.P17090965313501226762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002970 (n + 1) + Int.tmod (A002970 (n + 1)) (A002145 (n + 1))

end

end A114272.P17090965313501226762

/-! ## A114272.P16308154107727510006

`A002970(n+1)+A002970((n+1)%A002496(n+1))`
-/

namespace A114272.P16308154107727510006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002970 (n + 1) + A002970 (Int.tmod (n + 1 : ℤ) (A002496 (n + 1))).toNat

end

end A114272.P16308154107727510006

/-! ## A114272.P55046730631662879

`A004277(A002970(n+1))`
-/

namespace A114272.P55046730631662879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A002970 (n + 1)).toNat

end

end A114272.P55046730631662879

/-!
# A114273: Numbers k such that k^2 + 10 is prime.

The programs for A114273, there is no canonical definition to state claims against.
-/

/-! ## A114273.P18350698851170560004

`sqrt(A138355(n+1)-10)`
-/

namespace A114273.P18350698851170560004
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138355 (n + 1) - 10 : ℝ)

end

end A114273.P18350698851170560004

/-! ## A114273.P11119557592933660615

`root(A138355(n-and(1, n)+n%2+1)-10, 2)`
-/

namespace A114273.P11119557592933660615
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A138355 ((n : ℤ) - (Nat.land 1 n : ℤ) + ((n % 2 + 1 : ℕ) : ℤ)).toNat - 10 : ℝ) ^ (1 / (2 : ℝ))

end

end A114273.P11119557592933660615

/-! ## A114273.P1850134912224105193

`root(A138355(n+1)-10, A020639(2*(n+1)))`
-/

namespace A114273.P1850134912224105193
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A138355 (n + 1) - 10 : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A114273.P1850134912224105193

/-! ## A114273.P14232640181439332277

`(A138355(n+1)-10)^2^A133574(A001316(n))`
-/

namespace A114273.P14232640181439332277
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A138355 (n + 1) - 10 : ℝ) ^ ((2 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ) : ℝ)

end

end A114273.P14232640181439332277

/-! ## A114273.P509649885562856871

`A026741(root(A138355(n+1)-10, 2))`
-/

namespace A114273.P509649885562856871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A138355 (n + 1) - 10 : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A114273.P509649885562856871

/-! ## A114273.P15206716695887539350

`sqrt(p?[n²+10]-10)`
-/

namespace A114273.P15206716695887539350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 10

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 10 : ℝ)

end

end A114273.P15206716695887539350

/-! ## A114273.P12966661432377643133

`root(p?[n²+10]-10, 2)`
-/

namespace A114273.P12966661432377643133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 10

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 10 : ℝ) ^ (1 / (2 : ℝ))

end

end A114273.P12966661432377643133

/-!
# A114274: Numbers k such that k^2 + 11 is prime.

The programs for A114274, there is no canonical definition to state claims against.
-/

/-! ## A114274.P3238294557497672765

`sqrt(A138362(n+1)-11)`
-/

namespace A114274.P3238294557497672765
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138362 (n + 1) - 11 : ℝ)

end

end A114274.P3238294557497672765

/-! ## A114274.P4996225681910579587

`floor(sqrt(A138362(n+1))*A057427(n))`
-/

namespace A114274.P4996225681910579587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A138362 (n + 1) : ℝ) * (A057427 n : ℝ)⌋

end

end A114274.P4996225681910579587

/-! ## A114274.P11734920503737623215

`floor(sqrt(A138362(n+1)))%A005914(n)`
-/

namespace A114274.P11734920503737623215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A138362 (n + 1))) (A005914 n)

end

end A114274.P11734920503737623215

/-! ## A114274.P10251004884890650059

`floor(sqrt(A057428(n)²*A138362(n+1)))`
-/

namespace A114274.P10251004884890650059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A057428 n ^ 2 * A138362 (n + 1))

end

end A114274.P10251004884890650059

/-! ## A114274.P4697460888646856063

`floor(sqrt(A138362(n+1)%A138362(2*n+1)))`
-/

namespace A114274.P4697460888646856063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod (A138362 (n + 1)) (A138362 (2 * n + 1)))

end

end A114274.P4697460888646856063

/-! ## A114274.P4129968266205257305

`A339873(floor(sqrt(A138362(n+1))))`
-/

namespace A114274.P4129968266205257305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339873 (Int.sqrt (A138362 (n + 1))).toNat

end

end A114274.P4129968266205257305

/-!
# A114275: Numbers k such that k^2 + 12 is prime.

The programs for A114275, there is no canonical definition to state claims against.
-/

/-! ## A114275.P2143858037758962499

`sqrt(A138368(n+1)-12)`
-/

namespace A114275.P2143858037758962499
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138368 (n + 1) - 12 : ℝ)

end

end A114275.P2143858037758962499

/-! ## A114275.P840721650609279085

`sqrt(p?[n²+12]-12)`
-/

namespace A114275.P840721650609279085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 12

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 12 : ℝ)

end

end A114275.P840721650609279085

/-! ## A114275.P9503084548742882173

`lt[∑{e}[n²+12, #], 2]`
-/

namespace A114275.P9503084548742882173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A114275.P9503084548742882173

/-! ## A114275.P12528122605169961505

`root(p?[n²+12]-12, 2)`
-/

namespace A114275.P12528122605169961505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 12

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 12 : ℝ) ^ (1 / (2 : ℝ))

end

end A114275.P12528122605169961505

/-! ## A114275.P17510434818774837834

`(p?[n²+12]-12)^(1/2)`
-/

namespace A114275.P17510434818774837834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 12

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 12 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A114275.P17510434818774837834

/-!
# A114276: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having length of second ascent equal to k (0<=k<=n-1).

The programs for A114276, there is no canonical definition to state claims against.
-/

/-! ## A114276.P17695507764138610986

`A091491(comp[∑[n]+1])`
-/

namespace A114276.P17695507764138610986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A114276.P17695507764138610986

/-! ## A114276.P1016349723054247412

`Δ[A071163(A023758(n+1))]`
-/

namespace A114276.P1016349723054247412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071163 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114276.P1016349723054247412

/-! ## A114276.P7237137610754845961

`Δ[A209643(A102363(n)-1)]`
-/

namespace A114276.P7237137610754845961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209643 (A102363 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114276.P7237137610754845961

/-! ## A114276.P7568605612134107489

`A283054(A061579(n)+char[∑[n]])`
-/

namespace A114276.P7568605612134107489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (A061579 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A114276.P7568605612134107489

/-! ## A114276.P17563420424461627546

`A096465(A038722(A080036(n)+2))`
-/

namespace A114276.P17563420424461627546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A038722 (A080036 n + 2).toNat).toNat

end

end A114276.P17563420424461627546

/-! ## A114276.P750444674675270070

`A283054(A056943(n)+A003056(n))`
-/

namespace A114276.P750444674675270070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (A056943 n + A003056 n).toNat

end

end A114276.P750444674675270070

/-! ## A114276.P6848129688068869018

`Δ[record[A057506(A057506(n))]]`
-/

namespace A114276.P6848129688068869018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057506 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114276.P6848129688068869018

/-! ## A114276.P11274697160491845701

`Δ[record[A071662(n)]]`
-/

namespace A114276.P11274697160491845701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071662 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114276.P11274697160491845701

/-! ## A114276.P15705287185424040256

`Δ[record[A071665(n)]]`
-/

namespace A114276.P15705287185424040256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071665 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114276.P15705287185424040256

/-! ## A114276.P16138446258184086258

`Δ[record[A085161(n)]]`
-/

namespace A114276.P16138446258184086258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114276.P16138446258184086258

/-!
# A114277: Sum of the lengths of the second ascents in all Dyck paths of semilength n+2.

The programs for A114277, the canonical program `A114277.P12604113063236569068` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114277 has offset 0).

The definition of A114277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114277.P12604113063236569068

`∑[A002057(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A114277

/-- `∑[A002057(n)]` -/
def P12604113063236569068.Spec : Prop :=
  ∀ n, P12604113063236569068.a n = A114277 n

theorem P12604113063236569068.correct : P12604113063236569068.Spec := by
  intro n
  simp only [A114277]

end A114277

/-! ## A114277.P7206165154894369179

`record[abs(A104496(n))]`
-/

namespace A114277.P7206165154894369179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104496 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114277.P7206165154894369179

namespace A114277

/-- `record[abs(A104496(n))]` -/
def P7206165154894369179.Spec : Prop :=
  ∀ n, P7206165154894369179.a n = A114277 n

end A114277

/-! ## A114277.P16243302506303360864

`abs(A104496(n+3))`
-/

namespace A114277.P16243302506303360864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104496 (n + 3)|

end

end A114277.P16243302506303360864

namespace A114277

/-- `abs(A104496(n+3))` -/
def P16243302506303360864.Spec : Prop :=
  ∀ n, P16243302506303360864.a n = A114277 n

end A114277

/-! ## A114277.P1768016537302235993

`∑[A099376(n+1)]`
-/

namespace A114277.P1768016537302235993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114277.P1768016537302235993

namespace A114277

/-- `∑[A099376(n+1)]` -/
def P1768016537302235993.Spec : Prop :=
  ∀ n, P1768016537302235993.a n = A114277 n

end A114277

/-! ## A114277.P4253492847055355684

`∑[record[abs(A115143(n))]]`
-/

namespace A114277.P4253492847055355684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115143 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114277.P4253492847055355684

namespace A114277

/-- `∑[record[abs(A115143(n))]]` -/
def P4253492847055355684.Spec : Prop :=
  ∀ n, P4253492847055355684.a n = A114277 n

end A114277

/-! ## A114277.P13234874010094918395

`A279557(n+2)-1`
-/

namespace A114277.P13234874010094918395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 (n + 2) - 1

end

end A114277.P13234874010094918395

namespace A114277

/-- `A279557(n+2)-1` -/
def P13234874010094918395.Spec : Prop :=
  ∀ n, P13234874010094918395.a n = A114277 n

end A114277

/-! ## A114277.P12314678118145845709

`∑[∑[A026016(n+1)]]`
-/

namespace A114277.P12314678118145845709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114277.P12314678118145845709

namespace A114277

/-- `∑[∑[A026016(n+1)]]` -/
def P12314678118145845709.Spec : Prop :=
  ∀ n, P12314678118145845709.a n = A114277 n

end A114277

/-! ## A114277.P17067163368578150719

`∑[∑[A071725(n+1)]]`
-/

namespace A114277.P17067163368578150719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114277.P17067163368578150719

namespace A114277

/-- `∑[∑[A071725(n+1)]]` -/
def P17067163368578150719.Spec : Prop :=
  ∀ n, P17067163368578150719.a n = A114277 n

end A114277

/-! ## A114277.P12509028912894254945

`∑[∑[A026021(2*n+1)]]`
-/

namespace A114277.P12509028912894254945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114277.P12509028912894254945

namespace A114277

/-- `∑[∑[A026021(2*n+1)]]` -/
def P12509028912894254945.Spec : Prop :=
  ∀ n, P12509028912894254945.a n = A114277 n

end A114277

/-! ## A114277.P2571102994302642503

`a(n-1)+(n+1)*record[A000108(n+1)/(2*n+1)]` with `a(0)=1`
-/

namespace A114277.P2571102994302642503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114277.P2571102994302642503

namespace A114277

/-- `a(n-1)+(n+1)*record[A000108(n+1)/(2*n+1)]` -/
def P2571102994302642503.Spec : Prop :=
  ∀ n, P2571102994302642503.a n = (A114277 n : ℚ)

end A114277

/-! ## A114277.P6885565237451012525

`A067324(n)-A014137(n)`
-/

namespace A114277.P6885565237451012525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 n - A014137 n

end

end A114277.P6885565237451012525

namespace A114277

/-- `A067324(n)-A014137(n)` -/
def P6885565237451012525.Spec : Prop :=
  ∀ n, P6885565237451012525.a n = A114277 n

end A114277

/-! ## A114277.P14440014011127962690

`A000245(n+2)-A014137(n+1)`
-/

namespace A114277.P14440014011127962690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 2) - A014137 (n + 1)

end

end A114277.P14440014011127962690

namespace A114277

/-- `A000245(n+2)-A014137(n+1)` -/
def P14440014011127962690.Spec : Prop :=
  ∀ n, P14440014011127962690.a n = A114277 n

end A114277

/-! ## A114277.P13282422446812097943

`A071724(n+2)-A014137(n+1)`
-/

namespace A114277.P13282422446812097943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 2) - A014137 (n + 1)

end

end A114277.P13282422446812097943

namespace A114277

/-- `A071724(n+2)-A014137(n+1)` -/
def P13282422446812097943.Spec : Prop :=
  ∀ n, P13282422446812097943.a n = A114277 n

end A114277

/-! ## A114277.P4727496031502139993

`A143955(n+2)+A001453(n+2)`
-/

namespace A114277.P4727496031502139993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 (n + 2) + A001453 (n + 2)

end

end A114277.P4727496031502139993

namespace A114277

/-- `A143955(n+2)+A001453(n+2)` -/
def P4727496031502139993.Spec : Prop :=
  ∀ n, P4727496031502139993.a n = A114277 n

end A114277

/-! ## A114277.P17293678504980953934

`A001453(n+3)-A014138(n+2)`
-/

namespace A114277.P17293678504980953934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001453 (n + 3) - A014138 (n + 2)

end

end A114277.P17293678504980953934

namespace A114277

/-- `A001453(n+3)-A014138(n+2)` -/
def P17293678504980953934.Spec : Prop :=
  ∀ n, P17293678504980953934.a n = A114277 n

end A114277

/-! ## A114277.P5784033928441864147

`∑[A026012(n+1)-A000108(n+1)]`
-/

namespace A114277.P5784033928441864147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 (n + 1) - A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114277.P5784033928441864147

namespace A114277

/-- `∑[A026012(n+1)-A000108(n+1)]` -/
def P5784033928441864147.Spec : Prop :=
  ∀ n, P5784033928441864147.a n = A114277 n

end A114277

/-! ## A114277.P18186283108976182122

`∑[∑[A026012(n+1)-A000245(n+1)]]`
-/

namespace A114277.P18186283108976182122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 (n + 1) - A000245 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114277.P18186283108976182122

namespace A114277

/-- `∑[∑[A026012(n+1)-A000245(n+1)]]` -/
def P18186283108976182122.Spec : Prop :=
  ∀ n, P18186283108976182122.a n = A114277 n

end A114277

/-! ## A114277.P2989490760927746711

`∑[∑[A026012(n+1)-A071724(n+1)]]`
-/

namespace A114277.P2989490760927746711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 (n + 1) - A071724 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114277.P2989490760927746711

namespace A114277

/-- `∑[∑[A026012(n+1)-A071724(n+1)]]` -/
def P2989490760927746711.Spec : Prop :=
  ∀ n, P2989490760927746711.a n = A114277 n

end A114277

/-! ## A114277.P10553193810455588627

`∑[Δ[A000108(n+2)]-A000108(n+2)]`
-/

namespace A114277.P10553193810455588627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000108 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114277.P10553193810455588627

namespace A114277

/-- `∑[Δ[A000108(n+2)]-A000108(n+2)]` -/
def P10553193810455588627.Spec : Prop :=
  ∀ n, P10553193810455588627.a n = A114277 n

end A114277

/-!
# A114278: A triangle generated by a family of Sierpinski-triangle related polynomials.

The programs for A114278, there is no canonical definition to state claims against.
-/

/-! ## A114278.P15916140877679818991

`A047679(2^A114282(n))`
-/

namespace A114278.P15916140877679818991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047679 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A114282 n : ℤ))).toNat

end

end A114278.P15916140877679818991

/-! ## A114278.P13784526447656034691

`A349664(2^A114282(n))`
-/

namespace A114278.P13784526447656034691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349664 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A114282 n : ℤ))).toNat

end

end A114278.P13784526447656034691

/-! ## A114278.P6427068389698302045

`A004273(A114282(n))%A078844(n+3)`
-/

namespace A114278.P6427068389698302045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (A114282 n).toNat) (A078844 (n + 3))

end

end A114278.P6427068389698302045

/-! ## A114278.P7822343954698419605

`A055641(A340765(n+1))+A004273(A114282(n))`
-/

namespace A114278.P7822343954698419605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A340765 (n + 1)).toNat + A004273 (A114282 n).toNat

end

end A114278.P7822343954698419605

/-! ## A114278.P4105269790761713309

`A110919(A364071(n))`
-/

namespace A114278.P4105269790761713309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110919 (A364071 n).toNat

end

end A114278.P4105269790761713309

/-!
# A114279: Row sums of number triangle A114278.

The programs for A114279, there is no canonical definition to state claims against.
-/

/-! ## A114279.P15062344571778361849

`A247983(or(A017898(n), A218199(n+1)))`
-/

namespace A114279.P15062344571778361849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (Int.lor (A017898 n) (A218199 (n + 1))).toNat

end

end A114279.P15062344571778361849

/-! ## A114279.P625641653858226480

`A247983(or(A070000(n), A218199(n+1)))`
-/

namespace A114279.P625641653858226480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (Int.lor (A070000 n) (A218199 (n + 1))).toNat

end

end A114279.P625641653858226480

/-! ## A114279.P5235610272126894815

`A247983(or(A218199(n+1), A249871(n)))`
-/

namespace A114279.P5235610272126894815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (Int.lor (A218199 (n + 1)) (A249871 n)).toNat

end

end A114279.P5235610272126894815

/-! ## A114279.P18109166492776814646

`A247983(or(A064287(n+1), A218199(n+1)))`
-/

namespace A114279.P18109166492776814646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (Int.lor (A064287 (n + 1)) (A218199 (n + 1))).toNat

end

end A114279.P18109166492776814646

/-! ## A114279.P3471833411989509727

`∑[A316355(A026641(n))]`
-/

namespace A114279.P3471833411989509727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A026641 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114279.P3471833411989509727

/-!
# A114282: Number triangle related to A114280.

The programs for A114282, there is no canonical definition to state claims against.
-/

/-! ## A114282.P5262751579841330129

`A034888(A114278(n)%A001153(n+1))`
-/

namespace A114282.P5262751579841330129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (Int.tmod (A114278 n) (A001153 (n + 1))).toNat

end

end A114282.P5262751579841330129

/-! ## A114282.P16442062555798980651

`A034888(A114278(n))%A114279(n+2)`
-/

namespace A114282.P16442062555798980651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034888 (A114278 n).toNat) (A114279 (n + 2))

end

end A114282.P16442062555798980651

/-! ## A114282.P10661463674748221619

`A034888(A114278(n)%A078844(n))`
-/

namespace A114282.P10661463674748221619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (Int.tmod (A114278 n) (A078844 n)).toNat

end

end A114282.P10661463674748221619

/-! ## A114282.P10101893899809239717

`A131376(n)-(A131774(n+1)+A114592(A001248(n+1)))`
-/

namespace A114282.P10101893899809239717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131376 n - (A131774 (n + 1) + A114592 (A001248 (n + 1)).toNat)

end

end A114282.P10101893899809239717

/-! ## A114282.P10633955359693004804

`A137512(A114278(n))`
-/

namespace A114282.P10633955359693004804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137512 (A114278 n).toNat

end

end A114282.P10633955359693004804

/-!
# A114283: Sequence array for binomial transform of Jacobsthal numbers A001045(n+1).

The programs for A114283, the canonical program `A114283.P5681186867931976057` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114283 has offset 0).

The definition of A114283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114283.P8582723022820641770

`floor(2*(3^(C(comp[∑[n]]-n, 2)-(n+1))+1)/3)`
-/

namespace A114283.P8582723022820641770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((3 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) + 1) / 3⌋

end

end A114283.P8582723022820641770

namespace A114283

/-- `floor(2*(3^(C(comp[∑[n]]-n, 2)-(n+1))+1)/3)` -/
def P8582723022820641770.Spec : Prop :=
  ∀ n, P8582723022820641770.a n = A114283 n

end A114283

/-! ## A114283.P5681186867931976057

`A025192(A025581(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A114283

/-- `A025192(A025581(n))` -/
def P5681186867931976057.Spec : Prop :=
  ∀ n, P5681186867931976057.a n = A114283 n

theorem P5681186867931976057.correct : P5681186867931976057.Spec := by
  intro n
  simp only [A114283]

end A114283

/-! ## A114283.P10524778603090205149

`A182522(A099375(n)-1)`
-/

namespace A114283.P10524778603090205149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A099375 n - 1).toNat

end

end A114283.P10524778603090205149

namespace A114283

/-- `A182522(A099375(n)-1)` -/
def P10524778603090205149.Spec : Prop :=
  ∀ n, P10524778603090205149.a n = A114283 n

end A114283

/-! ## A114283.P7429074148076970105

`A182522(2*A025581(n))`
-/

namespace A114283.P7429074148076970105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (2 * A025581 n).toNat

end

end A114283.P7429074148076970105

namespace A114283

/-- `A182522(2*A025581(n))` -/
def P7429074148076970105.Spec : Prop :=
  ∀ n, P7429074148076970105.a n = A114283 n

end A114283

/-! ## A114283.P2464543490293759013

`lcm(A114284(n), A152570(n))`
-/

namespace A114283.P2464543490293759013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A114284 n) (A152570 n)

end

end A114283.P2464543490293759013

namespace A114283

/-- `lcm(A114284(n), A152570(n))` -/
def P2464543490293759013.Spec : Prop :=
  ∀ n, (P2464543490293759013.a n : ℤ) = A114283 n

end A114283

/-! ## A114283.P9563951760669336194

`A025192(A004736(n+1)-1)`
-/

namespace A114283.P9563951760669336194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (A004736 (n + 1) - 1).toNat

end

end A114283.P9563951760669336194

namespace A114283

/-- `A025192(A004736(n+1)-1)` -/
def P9563951760669336194.Spec : Prop :=
  ∀ n, P9563951760669336194.a n = A114283 n

end A114283

/-! ## A114283.P654030815268658022

`A182522(A025581(n)+A025581(n))`
-/

namespace A114283.P654030815268658022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A025581 n + A025581 n).toNat

end

end A114283.P654030815268658022

namespace A114283

/-- `A182522(A025581(n)+A025581(n))` -/
def P654030815268658022.Spec : Prop :=
  ∀ n, P654030815268658022.a n = A114283 n

end A114283

/-! ## A114283.P8635635671431868597

`A025192(A003056(n)-A002262(n))`
-/

namespace A114283.P8635635671431868597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (A003056 n - A002262 n).toNat

end

end A114283.P8635635671431868597

namespace A114283

/-- `A025192(A003056(n)-A002262(n))` -/
def P8635635671431868597.Spec : Prop :=
  ∀ n, P8635635671431868597.a n = A114283 n

end A114283

/-! ## A114283.P11185557844567852767

`A130321(n)/A130452(n+1)*A140303(n)`
-/

namespace A114283.P11185557844567852767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130321 n : ℚ) / (A130452 (n + 1) : ℚ) * (A140303 n : ℚ)

end

end A114283.P11185557844567852767

namespace A114283

/-- `A130321(n)/A130452(n+1)*A140303(n)` -/
def P11185557844567852767.Spec : Prop :=
  ∀ n, P11185557844567852767.a n = (A114283 n : ℚ)

end A114283

/-! ## A114283.P10422926345811963196

`A003972(2^A025581(n))`
-/

namespace A114283.P10422926345811963196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A114283.P10422926345811963196

namespace A114283

/-- `A003972(2^A025581(n))` -/
def P10422926345811963196.Spec : Prop :=
  ∀ n, P10422926345811963196.a n = A114283 n

end A114283

/-! ## A114283.P17491573736768797362

`A003972(2^(A004736(n+1)-1))`
-/

namespace A114283.P17491573736768797362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A004736 (n + 1) - 1 : ℤ))).toNat

end

end A114283.P17491573736768797362

namespace A114283

/-- `A003972(2^(A004736(n+1)-1))` -/
def P17491573736768797362.Spec : Prop :=
  ∀ n, P17491573736768797362.a n = A114283 n

end A114283

/-! ## A114283.P3342493810067664579

`A003968(A130321(n))`
-/

namespace A114283.P3342493810067664579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (A130321 n).toNat

end

end A114283.P3342493810067664579

namespace A114283

/-- `A003968(A130321(n))` -/
def P3342493810067664579.Spec : Prop :=
  ∀ n, P3342493810067664579.a n = A114283 n

end A114283

/-! ## A114283.P5561743163535894526

`A061898(A130452(n+1))`
-/

namespace A114283.P5561743163535894526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A130452 (n + 1)).toNat

end

end A114283.P5561743163535894526

namespace A114283

/-- `A061898(A130452(n+1))` -/
def P5561743163535894526.Spec : Prop :=
  ∀ n, P5561743163535894526.a n = A114283 n

end A114283

/-!
# A114284: Riordan array ((1-3*x)/(1-x), x).

The programs for A114284, the canonical program `A114284.P2344535506956303237` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114284 has offset 0).

The definition of A114284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114284.P966107235979983014

`xor(-char[∑[n-1]], -2)`
-/

namespace A114284.P966107235979983014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) (-2)

end

end A114284.P966107235979983014

namespace A114284

/-- `xor(-char[∑[n-1]], -2)` -/
def P966107235979983014.Spec : Prop :=
  ∀ n, P966107235979983014.a n = A114284 n

end A114284

/-! ## A114284.P7234155167121474149

`3*char[∑[n-1]]-2`
-/

namespace A114284.P7234155167121474149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 2

end

end A114284.P7234155167121474149

namespace A114284

/-- `3*char[∑[n-1]]-2` -/
def P7234155167121474149.Spec : Prop :=
  ∀ n, P7234155167121474149.a n = A114284 n

end A114284

/-! ## A114284.P2511635191970230472

`a(1-char[∑[n-1]])` with `a(0)=1, a(1)=-2`
-/

namespace A114284.P2511635191970230472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  a (1 - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A114284.P2511635191970230472

namespace A114284

/-- `a(1-char[∑[n-1]])` -/
def P2511635191970230472.Spec : Prop :=
  ∀ n, P2511635191970230472.a n = A114284 n

end A114284

/-! ## A114284.P14480449421804076888

`floor(atan(27-20*A004736(n+1)))`
-/

namespace A114284.P14480449421804076888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (27 - 20 * A004736 (n + 1) : ℝ)⌋

end

end A114284.P14480449421804076888

namespace A114284

/-- `floor(atan(27-20*A004736(n+1)))` -/
def P14480449421804076888.Spec : Prop :=
  ∀ n, P14480449421804076888.a n = A114284 n

end A114284

/-! ## A114284.P2344535506956303237

`A118824(A158747(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A114284

/-- `A118824(A158747(n))` -/
def P2344535506956303237.Spec : Prop :=
  ∀ n, P2344535506956303237.a n = A114284 n

theorem P2344535506956303237.correct : P2344535506956303237.Spec := by
  intro n
  simp only [A114284]

end A114284

/-! ## A114284.P7120904395657855232

`A002448(Δ[A083920(n)])`
-/

namespace A114284.P7120904395657855232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (f1 (n + 1) - f1 n).toNat

end

end A114284.P7120904395657855232

namespace A114284

/-- `A002448(Δ[A083920(n)])` -/
def P7120904395657855232.Spec : Prop :=
  ∀ n, P7120904395657855232.a n = A114284 n

end A114284

/-! ## A114284.P14467738073373020866

`A134014(Δ[A083920(n)])`
-/

namespace A114284.P14467738073373020866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134014 (f1 (n + 1) - f1 n).toNat

end

end A114284.P14467738073373020866

namespace A114284

/-- `A134014(Δ[A083920(n)])` -/
def P14467738073373020866.Spec : Prop :=
  ∀ n, P14467738073373020866.a n = A114284 n

end A114284

/-! ## A114284.P15765103276855206778

`A118824(A104887(n+1))`
-/

namespace A114284.P15765103276855206778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A104887 (n + 1)).toNat

end

end A114284.P15765103276855206778

namespace A114284

/-- `A118824(A104887(n+1))` -/
def P15765103276855206778.Spec : Prop :=
  ∀ n, P15765103276855206778.a n = A114284 n

end A114284

/-! ## A114284.P13199690600589551963

`A113679(2*A025581(n))`
-/

namespace A114284.P13199690600589551963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 (2 * A025581 n).toNat

end

end A114284.P13199690600589551963

namespace A114284

/-- `A113679(2*A025581(n))` -/
def P13199690600589551963.Spec : Prop :=
  ∀ n, P13199690600589551963.a n = A114284 n

end A114284

/-! ## A114284.P18355347993070475796

`A113679(2*A071417(n))`
-/

namespace A114284.P18355347993070475796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 (2 * A071417 n).toNat

end

end A114284.P18355347993070475796

namespace A114284

/-- `A113679(2*A071417(n))` -/
def P18355347993070475796.Spec : Prop :=
  ∀ n, P18355347993070475796.a n = A114284 n

end A114284

/-! ## A114284.P14566279088996115493

`A080246(ceil(2/A113413(n)))`
-/

namespace A114284.P14566279088996115493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080246 ⌈2 / (A113413 n : ℚ)⌉.toNat

end

end A114284.P14566279088996115493

namespace A114284

/-- `A080246(ceil(2/A113413(n)))` -/
def P14566279088996115493.Spec : Prop :=
  ∀ n, P14566279088996115493.a n = A114284 n

end A114284

/-! ## A114284.P1396674709218394984

`A121575(Δ[A003056(n)]+1)`
-/

namespace A114284.P1396674709218394984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121575 (f1 (n + 1) - f1 n + 1).toNat

end

end A114284.P1396674709218394984

namespace A114284

/-- `A121575(Δ[A003056(n)]+1)` -/
def P1396674709218394984.Spec : Prop :=
  ∀ n, P1396674709218394984.a n = A114284 n

end A114284

/-! ## A114284.P14483689576824201672

`A121575(1-Δ[A003056(n)])`
-/

namespace A114284.P14483689576824201672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121575 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A114284.P14483689576824201672

namespace A114284

/-- `A121575(1-Δ[A003056(n)])` -/
def P14483689576824201672.Spec : Prop :=
  ∀ n, P14483689576824201672.a n = A114284 n

end A114284

/-! ## A114284.P8994385928714615343

`A129994(n)/A154926(n+1)`
-/

namespace A114284.P8994385928714615343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129994 n : ℚ) / (A154926 (n + 1) : ℚ)

end

end A114284.P8994385928714615343

namespace A114284

/-- `A129994(n)/A154926(n+1)` -/
def P8994385928714615343.Spec : Prop :=
  ∀ n, P8994385928714615343.a n = (A114284 n : ℚ)

end A114284

/-! ## A114284.P13501438015727643822

`A168557(A104795(n)-A007318(n))`
-/

namespace A114284.P13501438015727643822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168557 (A104795 n - A007318 n).toNat

end

end A114284.P13501438015727643822

namespace A114284

/-- `A168557(A104795(n)-A007318(n))` -/
def P13501438015727643822.Spec : Prop :=
  ∀ n, P13501438015727643822.a n = A114284 n

end A114284

/-! ## A114284.P17284503738824481783

`A091917(A255935(n)/A007318(n))`
-/

namespace A114284.P17284503738824481783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091917 (SequenceMachineLib.roundAway ((A255935 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A114284.P17284503738824481783

namespace A114284

/-- `A091917(A255935(n)/A007318(n))` -/
def P17284503738824481783.Spec : Prop :=
  ∀ n, P17284503738824481783.a n = A114284 n

end A114284

/-! ## A114284.P9958934866865777155

`A252650(A319797((n+1)*A010054(n+1)))`
-/

namespace A114284.P9958934866865777155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252650 (A319797 ((n + 1 : ℤ) * A010054 (n + 1)).toNat).toNat

end

end A114284.P9958934866865777155

namespace A114284

/-- `A252650(A319797((n+1)*A010054(n+1)))` -/
def P9958934866865777155.Spec : Prop :=
  ∀ n, P9958934866865777155.a n = A114284 n

end A114284

/-! ## A114284.P11998927840372424925

`floor(atan(Δ[A213550(n+1)]))`
-/

namespace A114284.P11998927840372424925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (f1 (n + 1) - f1 n : ℝ)⌋

end

end A114284.P11998927840372424925

namespace A114284

/-- `floor(atan(Δ[A213550(n+1)]))` -/
def P11998927840372424925.Spec : Prop :=
  ∀ n, P11998927840372424925.a n = A114284 n

end A114284

/-! ## A114284.P13676264453074769825

`A118824(A037126(n+2))`
-/

namespace A114284.P13676264453074769825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A037126 (n + 2)).toNat

end

end A114284.P13676264453074769825

namespace A114284

/-- `A118824(A037126(n+2))` -/
def P13676264453074769825.Spec : Prop :=
  ∀ n, P13676264453074769825.a n = A114284 n

end A114284

/-!
# A114285: Expansion of g.f. (1 - 3*x)/((1 - x)*(1 - x^2)).

The programs for A114285, the canonical program `A114285.P1995872420313915115` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114285 has offset 0).

The definition of A114285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114285.P1995872420313915115

`(-1)^n-n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114285

/-- `(-1)^n-n` -/
def P1995872420313915115.Spec : Prop :=
  ∀ n, P1995872420313915115.a n = A114285 n

theorem P1995872420313915115.correct : P1995872420313915115.Spec := by
  intro n
  simp only [A114285]

end A114285

/-! ## A114285.P348168493810020677

`xor(1, -n)`
-/

namespace A114285.P348168493810020677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ))

end

end A114285.P348168493810020677

namespace A114285

/-- `xor(1, -n)` -/
def P348168493810020677.Spec : Prop :=
  ∀ n, P348168493810020677.a n = A114285 n

end A114285

/-! ## A114285.P15464074379207751513

`∑[(-3)^(n%2)]`
-/

namespace A114285.P15464074379207751513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114285.P15464074379207751513

namespace A114285

/-- `∑[(-3)^(n%2)]` -/
def P15464074379207751513.Spec : Prop :=
  ∀ n, P15464074379207751513.a n = A114285 n

end A114285

/-! ## A114285.P11870549457606612847

`∑[(-3)^and(1, n)]`
-/

namespace A114285.P11870549457606612847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114285.P11870549457606612847

namespace A114285

/-- `∑[(-3)^and(1, n)]` -/
def P11870549457606612847.Spec : Prop :=
  ∀ n, P11870549457606612847.a n = A114285 n

end A114285

/-! ## A114285.P4381866581024651604

`∑[1-4*and(1, n)]`
-/

namespace A114285.P4381866581024651604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (4 * Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114285.P4381866581024651604

namespace A114285

/-- `∑[1-4*and(1, n)]` -/
def P4381866581024651604.Spec : Prop :=
  ∀ n, P4381866581024651604.a n = A114285 n

end A114285

/-! ## A114285.P10081817960176799800

`∑[4*gcd(2, n)-7]`
-/

namespace A114285.P10081817960176799800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.gcd 2 n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114285.P10081817960176799800

namespace A114285

/-- `∑[4*gcd(2, n)-7]` -/
def P10081817960176799800.Spec : Prop :=
  ∀ n, P10081817960176799800.a n = A114285 n

end A114285

/-! ## A114285.P661041930918889134

`Δ[and(1, n)-C(n, 2)]`
-/

namespace A114285.P661041930918889134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114285.P661041930918889134

namespace A114285

/-- `Δ[and(1, n)-C(n, 2)]` -/
def P661041930918889134.Spec : Prop :=
  ∀ n, P661041930918889134.a n = A114285 n

end A114285

/-! ## A114285.P7504528591527813294

`∑[1-Δ[or(1, n)]²]`
-/

namespace A114285.P7504528591527813294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114285.P7504528591527813294

namespace A114285

/-- `∑[1-Δ[or(1, n)]²]` -/
def P7504528591527813294.Spec : Prop :=
  ∀ n, P7504528591527813294.a n = A114285 n

end A114285

/-! ## A114285.P11799993791975625270

`∑[floor(tan(gcd(4, 2*n)))]`
-/

namespace A114285.P11799993791975625270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (Nat.gcd 4 (2 * n) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114285.P11799993791975625270

namespace A114285

/-- `∑[floor(tan(gcd(4, 2*n)))]` -/
def P11799993791975625270.Spec : Prop :=
  ∀ n, P11799993791975625270.a n = A114285 n

end A114285

/-! ## A114285.P13047177862949386919

`xor(3, 1-2*n)/2`
-/

namespace A114285.P13047177862949386919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 3 (1 - (2 * n : ℤ)) : ℚ) / 2

end

end A114285.P13047177862949386919

namespace A114285

/-- `xor(3, 1-2*n)/2` -/
def P13047177862949386919.Spec : Prop :=
  ∀ n, P13047177862949386919.a n = (A114285 n : ℚ)

end A114285

/-! ## A114285.P16166849224759219822

`∑[1-((2*n)%4)²]`
-/

namespace A114285.P16166849224759219822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((2 * n % 4) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114285.P16166849224759219822

namespace A114285

/-- `∑[1-((2*n)%4)²]` -/
def P16166849224759219822.Spec : Prop :=
  ∀ n, P16166849224759219822.a n = A114285 n

end A114285

/-! ## A114285.P17440841306993904727

`∑[-(a(n-1)+2)]` with `a(0)=1`
-/

namespace A114285.P17440841306993904727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -(f1 (n - 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114285.P17440841306993904727

namespace A114285

/-- `∑[-(a(n-1)+2)]` -/
def P17440841306993904727.Spec : Prop :=
  ∀ n, P17440841306993904727.a n = A114285 n

end A114285

/-! ## A114285.P14846760212051659595

`∑[-3/a(n-1)]` with `a(0)=1`
-/

namespace A114285.P14846760212051659595
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  -(3 / f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114285.P14846760212051659595

namespace A114285

/-- `∑[-3/a(n-1)]` -/
def P14846760212051659595.Spec : Prop :=
  ∀ n, P14846760212051659595.a n = (A114285 n : ℚ)

end A114285

/-! ## A114285.P13902299601219883515

`∑[1-lcm(2, and(1, n))²]`
-/

namespace A114285.P13902299601219883515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.lcm 2 (Nat.land 1 n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114285.P13902299601219883515

namespace A114285

/-- `∑[1-lcm(2, and(1, n))²]` -/
def P13902299601219883515.Spec : Prop :=
  ∀ n, P13902299601219883515.a n = A114285 n

end A114285

/-! ## A114285.P4502035110881870599

`∑[-or(2, a(n-1))]` with `a(0)=1`
-/

namespace A114285.P4502035110881870599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -Int.lor 2 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114285.P4502035110881870599

namespace A114285

/-- `∑[-or(2, a(n-1))]` -/
def P4502035110881870599.Spec : Prop :=
  ∀ n, P4502035110881870599.a n = A114285 n

end A114285

/-! ## A114285.P10382611200443595219

`∑[Δ[xor(1, n+1)]-2]`
-/

namespace A114285.P10382611200443595219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114285.P10382611200443595219

namespace A114285

/-- `∑[Δ[xor(1, n+1)]-2]` -/
def P10382611200443595219.Spec : Prop :=
  ∀ n, P10382611200443595219.a n = A114285 n

end A114285

/-! ## A114285.P3000878020065137288

`∑[3/Δ[xor(1, n+1)]]`
-/

namespace A114285.P3000878020065137288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114285.P3000878020065137288

namespace A114285

/-- `∑[3/Δ[xor(1, n+1)]]` -/
def P3000878020065137288.Spec : Prop :=
  ∀ n, P3000878020065137288.a n = (A114285 n : ℚ)

end A114285

/-!
# A114286: Sum of the cubes of the first n cubefree numbers.

The programs for A114286, there is no canonical definition to state claims against.
-/

/-! ## A114286.P12392870746752626840

`∑[eq[1, A294333(n)]^3]`
-/

namespace A114286.P12392870746752626840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114286.P12392870746752626840

/-! ## A114286.P11798133921289558635

`∑[eq[1, A294335(n)]^3]`
-/

namespace A114286.P11798133921289558635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294335 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114286.P11798133921289558635

/-! ## A114286.P3549406543757346688

`∑[comp[A046099(n+1)]^3]`
-/

namespace A114286.P3549406543757346688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114286.P3549406543757346688

/-! ## A114286.P6923640848119821022

`∑[comp[A344653(n+1)]^3]`
-/

namespace A114286.P6923640848119821022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114286.P6923640848119821022

/-! ## A114286.P18019831771752753082

`∑[comp[lt[0, A056626(n+1)]+1]^3]`
-/

namespace A114286.P18019831771752753082
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056626 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114286.P18019831771752753082

/-!
# A114287: Sum of the cubes of the first n noncubefree numbers.

The programs for A114287, there is no canonical definition to state claims against.
-/

/-! ## A114287.P18354694271124712846

`∑[comp[A004709(n+1)]^3]`
-/

namespace A114287.P18354694271124712846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114287.P18354694271124712846

/-! ## A114287.P4321108995192178844

`∑[A000578(comp[A004709(n+1)])]`
-/

namespace A114287.P4321108995192178844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114287.P4321108995192178844

/-! ## A114287.P11416912826741876852

`∑[A000578(comp[A180499(n+1)-(n+1)^3])]`
-/

namespace A114287.P11416912826741876852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180499 (n + 1) - ((n + 1) ^ 3 : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114287.P11416912826741876852

/-! ## A114287.P7101256644273080893

`∑[A000093(comp[A004709(n+1)]²)]`
-/

namespace A114287.P7101256644273080893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114287.P7101256644273080893

/-! ## A114287.P5098352116037850135

`∑[record[lcm(n+1, A347706(n+1))^3]]`
-/

namespace A114287.P5098352116037850135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A347706 (n + 1)) ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114287.P5098352116037850135

/-!
# A114288: Lexicographically earliest solution of any 9 X 9 sudoku, read by rows.

The programs for A114288, there is no canonical definition to state claims against.
-/

/-! ## A114288.P16193914041903223776

`10-A112454(n+1)`
-/

namespace A114288.P16193914041903223776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A112454 (n + 1)

end

end A114288.P16193914041903223776

/-! ## A114288.P14912567305817518383

`A112454(lcm((-1)^n, A112454(n+1)))`
-/

namespace A114288.P14912567305817518383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112454 (Int.lcm ((-1) ^ n) (A112454 (n + 1)))

end

end A114288.P14912567305817518383

/-! ## A114288.P6502229521987163800

`A112454(or(C(2, n+2), A112454(n+1)))`
-/

namespace A114288.P6502229521987163800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112454 (Int.lor (Nat.choose 2 (n + 2) : ℤ) (A112454 (n + 1))).toNat

end

end A114288.P6502229521987163800

/-! ## A114288.P430467279237917260

`A193592(A112454(n+1)+A056000(n))`
-/

namespace A114288.P430467279237917260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A112454 (n + 1) + A056000 n).toNat

end

end A114288.P430467279237917260

/-! ## A114288.P3239337524648723149

`A010879(A017377(n)*A112454(n+1))`
-/

namespace A114288.P3239337524648723149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A017377 n * A112454 (n + 1)).toNat

end

end A114288.P3239337524648723149

/-! ## A114288.P14744033654349603667

`A112454(or(A112454(n+1), A151909(n)))`
-/

namespace A114288.P14744033654349603667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112454 (Int.lor (A112454 (n + 1)) (A151909 n)).toNat

end

end A114288.P14744033654349603667

/-! ## A114288.P13327761481309820008

`A112454(or(A112454(n+1), A151933(n)))`
-/

namespace A114288.P13327761481309820008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112454 (Int.lor (A112454 (n + 1)) (A151933 n)).toNat

end

end A114288.P13327761481309820008

/-! ## A114288.P354640435866092118

`A112454(A112454(n+1)+A004197(∑[n]))`
-/

namespace A114288.P354640435866092118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112454 (A112454 (n + 1) + A004197 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A114288.P354640435866092118

/-! ## A114288.P13298909092856773655

`A112454(A112454(n+1)+n*A151909(n))`
-/

namespace A114288.P13298909092856773655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112454 (A112454 (n + 1) + (n : ℤ) * A151909 n).toNat

end

end A114288.P13298909092856773655

/-! ## A114288.P17800562513899739058

`A112454(A112454(n+1)+C(2, A000203(n+2)))`
-/

namespace A114288.P17800562513899739058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112454 (A112454 (n + 1) + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)).toNat

end

end A114288.P17800562513899739058

/-!
# A114289: Number of combinatorial types of n-dimensional polytopes with n+3 vertices.

The programs for A114289, there is no canonical definition to state claims against.
-/

/-! ## A114289.P9850919956645358827

`(A114291(n+1)+A114290(n+1))/2`
-/

namespace A114289.P9850919956645358827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114291 (n + 1) + A114290 (n + 1) : ℚ) / 2

end

end A114289.P9850919956645358827

/-! ## A114289.P11168700213875171026

`A038572(A114291(n+1)+A114290(n+1))`
-/

namespace A114289.P11168700213875171026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A114291 (n + 1) + A114290 (n + 1)).toNat

end

end A114289.P11168700213875171026

/-! ## A114289.P11493365150322479832

`A001281(A114291(n+1)+A114290(n+1))`
-/

namespace A114289.P11493365150322479832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A114291 (n + 1) + A114290 (n + 1)).toNat

end

end A114289.P11493365150322479832

/-! ## A114289.P16690330326830086190

`A004525(A114291(n+1)+A114290(n+1))`
-/

namespace A114289.P16690330326830086190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A114291 (n + 1) + A114290 (n + 1)).toNat

end

end A114289.P16690330326830086190

/-!
# A114290: Number of oriented n-dimensional polytopes with n+3 vertices, meaning that two polytopes are identified if they have the same combinatorial type and there exists an orientation-preserving homeomorphism mapping the first polytope to the second polytope.

The programs for A114290, there is no canonical definition to state claims against.
-/

/-! ## A114290.P3530079545660575828

`2*A114289(n+1)-A114291(n+1)`
-/

namespace A114290.P3530079545660575828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114289 (n + 1) - A114291 (n + 1)

end

end A114290.P3530079545660575828

/-! ## A114290.P7925760180621691723

`A005843(A114289(n+1))-A114291(n+1)`
-/

namespace A114290.P7925760180621691723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A114289 (n + 1)).toNat - A114291 (n + 1)

end

end A114290.P7925760180621691723

/-!
# A114291: Number of combinatorial types of achiral n-dimensional polytopes with n+3 vertices, where a polytope is achiral if one of its geometric realizations has a reflection-symmetry.

The programs for A114291, there is no canonical definition to state claims against.
-/

/-! ## A114291.P12111089537492479798

`2*A114289(n+1)-A114290(n+1)`
-/

namespace A114291.P12111089537492479798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114289 (n + 1) - A114290 (n + 1)

end

end A114291.P12111089537492479798

/-! ## A114291.P17093903431446023388

`A005843(A114289(n+1))-A114290(n+1)`
-/

namespace A114291.P17093903431446023388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A114289 (n + 1)).toNat - A114290 (n + 1)

end

end A114291.P17093903431446023388

/-! ## A114291.P2040110368849999218

`∑[A068941(n+1)]-A030302(2*(n+1))`
-/

namespace A114291.P2040110368849999218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A030302 (2 * (n + 1))

end

end A114291.P2040110368849999218

/-!
# A114292: Modified Schroeder numbers for q=3.

The programs for A114292, there is no canonical definition to state claims against.
-/

/-! ## A114292.P14906832792402810900

`A083544(A109316(n))`
-/

namespace A114292.P14906832792402810900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083544 (A109316 n).toNat

end

end A114292.P14906832792402810900

/-! ## A114292.P4464422058863043686

`A092598(A204851(n))`
-/

namespace A114292.P4464422058863043686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092598 (A204851 n).toNat

end

end A114292.P4464422058863043686

/-! ## A114292.P11592654079575972686

`A092598(A280785(n+1))`
-/

namespace A114292.P11592654079575972686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092598 (A280785 (n + 1)).toNat

end

end A114292.P11592654079575972686

/-! ## A114292.P2338935888518466273

`A102097(lcm(38, A046757(n)))`
-/

namespace A114292.P2338935888518466273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102097 (Int.lcm 38 (A046757 n))

end

end A114292.P2338935888518466273

/-! ## A114292.P4414626696665523904

`A119485(∏{p}[A204851(n), #])`
-/

namespace A114292.P4414626696665523904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119485 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A114292.P4414626696665523904

/-!
# A114293: Modified Schroeder numbers for q=5.

The programs for A114293, there is no canonical definition to state claims against.
-/

/-! ## A114293.P11267795562695130015

`A084114(lcm(6, A096334(n)))`
-/

namespace A114293.P11267795562695130015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084114 (Int.lcm 6 (A096334 n))

end

end A114293.P11267795562695130015

/-! ## A114293.P5615582643932586845

`A000788(∏{e}[A128210(n)², #])`
-/

namespace A114293.P5615582643932586845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128210 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A114293.P5615582643932586845

/-! ## A114293.P15507314192179499321

`A004274(∏{e}[A128210(n)², #])`
-/

namespace A114293.P15507314192179499321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128210 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A114293.P15507314192179499321

/-! ## A114293.P16128396429076632380

`A004280(∏{e}[A128210(n)², #])`
-/

namespace A114293.P16128396429076632380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128210 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A114293.P16128396429076632380

/-! ## A114293.P4322601251920203579

`A000005(∏{d}[A128210(n), A000005(#)])`
-/

namespace A114293.P4322601251920203579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ d ∈ Nat.divisors (f1 n).natAbs, A000005 d).toNat

end

end A114293.P4322601251920203579

/-!
# A114294: Modified Schroeder numbers for q=7.

The programs for A114294, there is no canonical definition to state claims against.
-/

/-! ## A114294.P11200394434024035140

`A114295(A346129(n+2))`
-/

namespace A114294.P11200394434024035140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114295 (A346129 (n + 2)).toNat

end

end A114294.P11200394434024035140

/-! ## A114294.P17969483311549478944

`A114295(lt[1, A191306(2*n+1)])`
-/

namespace A114294.P17969483311549478944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191306 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A114294.P17969483311549478944

/-! ## A114294.P2822683774470672621

`A114295(A346128(n+1))`
-/

namespace A114294.P2822683774470672621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114295 (A346128 (n + 1)).toNat

end

end A114294.P2822683774470672621

/-! ## A114294.P10936797829098173194

`A114295(A253723(n+1))`
-/

namespace A114294.P10936797829098173194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114295 (A253723 (n + 1)).toNat

end

end A114294.P10936797829098173194

/-! ## A114294.P2986659217547342562

`A114295(A028749(n+1))`
-/

namespace A114294.P2986659217547342562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114295 (A028749 (n + 1)).toNat

end

end A114294.P2986659217547342562

/-!
# A114296: First row of Modified Schroeder numbers for q=3 (A114292).

The programs for A114296, there is no canonical definition to state claims against.
-/

/-! ## A114296.P10055380205848495865

`A114292(∑[n])`
-/

namespace A114296.P10055380205848495865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114292 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114296.P10055380205848495865

/-! ## A114296.P1149248077071580235

`gcd(A000038(n), A114292(A000124(n)))`
-/

namespace A114296.P1149248077071580235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A114292 (A000124 n).toNat)

end

end A114296.P1149248077071580235

/-! ## A114296.P16353815181996023404

`lcm(A040001(n), A114292(A000217(n)))`
-/

namespace A114296.P16353815181996023404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A114292 (A000217 n).toNat)

end

end A114296.P16353815181996023404

/-! ## A114296.P15458036520545005702

`lcm(A087960(n), A114292(A000124(n)))`
-/

namespace A114296.P15458036520545005702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A114292 (A000124 n).toNat)

end

end A114296.P15458036520545005702

/-! ## A114296.P3609037831053199987

`A106400(n)²*A114292(A000217(n))`
-/

namespace A114296.P3609037831053199987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 2 * A114292 (A000217 n).toNat

end

end A114296.P3609037831053199987

/-! ## A114296.P6252399669757302237

`A114292(A000124(n))+A000038(n+1)`
-/

namespace A114296.P6252399669757302237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114292 (A000124 n).toNat + A000038 (n + 1)

end

end A114296.P6252399669757302237

/-! ## A114296.P17332413882563277948

`A040001(2*n+1)*A114292(A000217(n))`
-/

namespace A114296.P17332413882563277948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n + 1) * A114292 (A000217 n).toNat

end

end A114296.P17332413882563277948

/-! ## A114296.P16074039243786698339

`A114292(A000124(n))-A151755(A239003(n))`
-/

namespace A114296.P16074039243786698339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114292 (A000124 n).toNat - A151755 (A239003 n).toNat

end

end A114296.P16074039243786698339

/-! ## A114296.P16983783924009384230

`A114292(A000124(n))-A151755(A151755(n)²)`
-/

namespace A114296.P16983783924009384230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114292 (A000124 n).toNat - A151755 (A151755 n ^ 2).toNat

end

end A114296.P16983783924009384230

/-!
# A114297: First row of Modified Schroeder numbers for q=5 (A114293).

The programs for A114297, there is no canonical definition to state claims against.
-/

/-! ## A114297.P1880606220830541361

`A114293(∑[n])`
-/

namespace A114297.P1880606220830541361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114293 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114297.P1880606220830541361

/-! ## A114297.P14811055895064789894

`and(-1, A114293((n²+n)*cot(atan(2))))`
-/

namespace A114297.P14811055895064789894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A114293 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℝ) * Real.cot (Real.arctan (2 : ℝ)))).toNat)

end

end A114297.P14811055895064789894

/-! ## A114297.P15727540301876191373

`A114293(A000124(n))+char[12]`
-/

namespace A114297.P15727540301876191373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114293 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A114297.P15727540301876191373

/-! ## A114297.P16281913659673086798

`lcm(1-and(2, n), A114293(A000217(n)))`
-/

namespace A114297.P16281913659673086798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A114293 (A000217 n).toNat)

end

end A114297.P16281913659673086798

/-! ## A114297.P8634909487104281920

`A114293(n*(n+1)/2)*A316439(n+1)`
-/

namespace A114297.P8634909487104281920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114293 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat * A316439 (n + 1)

end

end A114297.P8634909487104281920

/-!
# A114298: First row of Modified Schroeder numbers for q=7 (A114294).

The programs for A114298, there is no canonical definition to state claims against.
-/

/-! ## A114298.P3235180060803740392

`A114294(∑[n])`
-/

namespace A114298.P3235180060803740392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114294 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114298.P3235180060803740392

/-! ## A114298.P5676141529890996569

`and(-1, A114294((n²+n)*cot(atan(2))))`
-/

namespace A114298.P5676141529890996569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A114294 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℝ) * Real.cot (Real.arctan (2 : ℝ)))).toNat)

end

end A114298.P5676141529890996569

/-! ## A114298.P12458027800005270874

`A114294(A000217(n))+char[13]`
-/

namespace A114298.P12458027800005270874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114294 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A114298.P12458027800005270874

/-! ## A114298.P10633173245827259541

`A114294(A000124(n))+char[15]`
-/

namespace A114298.P10633173245827259541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114294 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A114298.P10633173245827259541

/-! ## A114298.P7616179775063915310

`and(-1, A114294(A152947(n+2)))`
-/

namespace A114298.P7616179775063915310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A114294 (A152947 (n + 2)).toNat)

end

end A114298.P7616179775063915310

/-!
# A114299: First row of Modified Schroeder numbers for q=9 (A114295).

The programs for A114299, there is no canonical definition to state claims against.
-/

/-! ## A114299.P3732874452078033772

`A114295(∑[n])`
-/

namespace A114299.P3732874452078033772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114295 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114299.P3732874452078033772

/-! ## A114299.P2434042814026549732

`A114295(A000124(n))+char[12]`
-/

namespace A114299.P2434042814026549732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114295 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A114299.P2434042814026549732

/-! ## A114299.P16196098711187766353

`lcm((-1)^n, A114295(A000217(n)))`
-/

namespace A114299.P16196098711187766353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A114295 (A000217 n).toNat)

end

end A114299.P16196098711187766353

/-! ## A114299.P15531818334481576734

`A114295(n*(n+1)/2)*A114295(n)`
-/

namespace A114299.P15531818334481576734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114295 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat * A114295 n

end

end A114299.P15531818334481576734

/-! ## A114299.P2757517719717906283

`A114295(A000217(n))+A025443(n)`
-/

namespace A114299.P2757517719717906283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114295 (A000217 n).toNat + A025443 n

end

end A114299.P2757517719717906283

