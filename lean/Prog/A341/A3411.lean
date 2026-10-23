import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
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

/-!
# A341100: Minimum number of base-2 rectangles needed to tile an n X n square.

The programs for A341100, there is no canonical definition to state claims against.
-/

/-! ## A341100.P665952235831594936

`A312969(log2(A048896(n))%A074210(n+1))`
-/

namespace A341100.P665952235831594936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312969 (Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (A048896 n : ℝ))) (A074210 (n + 1))).toNat

end

end A341100.P665952235831594936

/-! ## A341100.P4057842836288032049

`A098388(A038585(n+1)%A048369(n+1))`
-/

namespace A341100.P4057842836288032049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098388 (Int.tmod (A038585 (n + 1)) (A048369 (n + 1))).toNat

end

end A341100.P4057842836288032049

/-! ## A341100.P11048960485862958484

`A090498(A000120(n+1))%A281196(n+1)`
-/

namespace A341100.P11048960485862958484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090498 (A000120 (n + 1)).toNat) (A281196 (n + 1))

end

end A341100.P11048960485862958484

/-! ## A341100.P13365372610255726897

`A140485(A000120(n+1)%A103305(n+1))`
-/

namespace A341100.P13365372610255726897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140485 (Int.tmod (A000120 (n + 1)) (A103305 (n + 1))).toNat

end

end A341100.P13365372610255726897

/-! ## A341100.P8076764418663841118

`A141224(A000120(n+1))%A268396(3*n+1)`
-/

namespace A341100.P8076764418663841118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141224 (A000120 (n + 1)).toNat) (A268396 (3 * n + 1))

end

end A341100.P8076764418663841118

/-!
# A341101: T(n, k) = Sum_{j=0..k} binomial(n, k - j)*Stirling1(n - k + j, j)*(-1)^(n-k). Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A341101, there is no canonical definition to state claims against.
-/

/-! ## A341101.P12078860921437084045

`A099238(A049872(n))*A132393(n)`
-/

namespace A341101.P12078860921437084045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099238 (A049872 n).toNat * A132393 n

end

end A341101.P12078860921437084045

/-! ## A341101.P5264002315925859992

`A099238(A062003(n))*A132393(n)`
-/

namespace A341101.P5264002315925859992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099238 (A062003 n).toNat * A132393 n

end

end A341101.P5264002315925859992

/-! ## A341101.P6283305801976552678

`A349950(n)%A349946(A212342(n))`
-/

namespace A341101.P6283305801976552678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349950 n) (A349946 (A212342 n).toNat)

end

end A341101.P6283305801976552678

/-! ## A341101.P3763022182973370597

`lcm(A099238(A049872(n)), A285849(n))`
-/

namespace A341101.P3763022182973370597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A099238 (A049872 n).toNat) (A285849 n)

end

end A341101.P3763022182973370597

/-! ## A341101.P5114979677249541108

`A208756(n+1)*A233569(A106566(n)^A057521(2*n+1))`
-/

namespace A341101.P5114979677249541108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208756 (n + 1) * A233569 (SequenceMachineLib.roundAway ((A106566 n : ℚ) ^ (A057521 (2 * n + 1) : ℤ))).toNat

end

end A341101.P5114979677249541108

/-!
# A341103: T(n, k) = Sum_{j=0..k}(binomial(n + k - j, 2*k) - binomial(n + j - 1, 2*k)) for n > 0 and T(0, 0) = 1. Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A341103, there is no canonical definition to state claims against.
-/

/-! ## A341103.P7422656616435700272

`A020753(A086620(n))-A073424(n)`
-/

namespace A341103.P7422656616435700272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (A086620 n).toNat - A073424 n

end

end A341103.P7422656616435700272

/-! ## A341103.P13206601460718575143

`A338934(n)%A036128(A187558(n))`
-/

namespace A341103.P13206601460718575143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338934 n) (A036128 (A187558 n).toNat)

end

end A341103.P13206601460718575143

/-! ## A341103.P8044998693189946791

`A326017(n)+A140955(A101164(n)+1)`
-/

namespace A341103.P8044998693189946791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326017 n + A140955 (A101164 n + 1).toNat

end

end A341103.P8044998693189946791

/-! ## A341103.P8832662987059417577

`floor(A000005(4^A101164(n))/A130296(n+1))`
-/

namespace A341103.P8832662987059417577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A101164 n : ℤ))).toNat : ℚ) / (A130296 (n + 1) : ℚ)⌋

end

end A341103.P8832662987059417577

/-! ## A341103.P4354910955419382409

`A000005(4^A101164(n))-char[A106255(n+1)]`
-/

namespace A341103.P4354910955419382409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106255 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A101164 n : ℤ))).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A341103.P4354910955419382409

/-!
# A341104: a(n) = [x^n] (x - 1)^4/((1 - 2*x)*(x^2 - 3*x + 1)).

The programs for A341104, the canonical program `A341104.P953406310284745569` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341104 has offset 0).

The definition of A341104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341104.P953406310284745569

`5*a(n-1)-7*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=11, a(4)=30`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A341104

/-- `5*a(n-1)-7*a(n-2)+2*a(n-3)` -/
def P953406310284745569.Spec : Prop :=
  ∀ n, P953406310284745569.a n = A341104 n

theorem P953406310284745569.correct : P953406310284745569.Spec := by
  intro n
  simp only [A341104]

end A341104

/-! ## A341104.P18313069326879603231

`A000045(Δ[n²])-round(2^(n-2))`
-/

namespace A341104.P18313069326879603231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A341104.P18313069326879603231

namespace A341104

/-- `A000045(Δ[n²])-round(2^(n-2))` -/
def P18313069326879603231.Spec : Prop :=
  ∀ n, P18313069326879603231.a n = A341104 n

end A341104

/-! ## A341104.P5551544921832369920

`A122367(n)-A166444(n)`
-/

namespace A341104.P5551544921832369920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - A166444 n

end

end A341104.P5551544921832369920

namespace A341104

/-- `A122367(n)-A166444(n)` -/
def P5551544921832369920.Spec : Prop :=
  ∀ n, P5551544921832369920.a n = A341104 n

end A341104

/-! ## A341104.P9532762557045059206

`Δ[A052925(n)-A034008(n)]`
-/

namespace A341104.P9532762557045059206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052925 n - A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341104.P9532762557045059206

namespace A341104

/-- `Δ[A052925(n)-A034008(n)]` -/
def P9532762557045059206.Spec : Prop :=
  ∀ n, P9532762557045059206.a n = A341104 n

end A341104

/-! ## A341104.P7593267668001555553

`Δ[A001906(n)]-A166444(n)`
-/

namespace A341104.P7593267668001555553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A166444 n

end

end A341104.P7593267668001555553

namespace A341104

/-- `Δ[A001906(n)]-A166444(n)` -/
def P7593267668001555553.Spec : Prop :=
  ∀ n, P7593267668001555553.a n = A341104 n

end A341104

/-! ## A341104.P1516244547410552938

`A001519(n+1)-A166444(n)`
-/

namespace A341104.P1516244547410552938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) - A166444 n

end

end A341104.P1516244547410552938

namespace A341104

/-- `A001519(n+1)-A166444(n)` -/
def P1516244547410552938.Spec : Prop :=
  ∀ n, P1516244547410552938.a n = A341104 n

end A341104

/-! ## A341104.P7745963220624296343

`A115008(2*n)-A166444(n)`
-/

namespace A341104.P7745963220624296343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115008 (2 * n) - A166444 n

end

end A341104.P7745963220624296343

namespace A341104

/-- `A115008(2*n)-A166444(n)` -/
def P7745963220624296343.Spec : Prop :=
  ∀ n, P7745963220624296343.a n = A341104 n

end A341104

/-! ## A341104.P16295348271111863131

`Δ[A000045(2*n)]-A166444(n)`
-/

namespace A341104.P16295348271111863131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A166444 n

end

end A341104.P16295348271111863131

namespace A341104

/-- `Δ[A000045(2*n)]-A166444(n)` -/
def P16295348271111863131.Spec : Prop :=
  ∀ n, P16295348271111863131.a n = A341104 n

end A341104

/-! ## A341104.P102561645694276288

`record[A051792(n+1)]-A166444(n)`
-/

namespace A341104.P102561645694276288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A166444 n

end

end A341104.P102561645694276288

namespace A341104

/-- `record[A051792(n+1)]-A166444(n)` -/
def P102561645694276288.Spec : Prop :=
  ∀ n, P102561645694276288.a n = A341104 n

end A341104

/-! ## A341104.P1396616156329949570

`abs(A000045(2*n+1)-A166444(n))`
-/

namespace A341104.P1396616156329949570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000045 (2 * n + 1) - A166444 n|

end

end A341104.P1396616156329949570

namespace A341104

/-- `abs(A000045(2*n+1)-A166444(n))` -/
def P1396616156329949570.Spec : Prop :=
  ∀ n, P1396616156329949570.a n = A341104 n

end A341104

/-! ## A341104.P4314334279639622823

`Δ[A324969(2*n+1)-A034008(n)]`
-/

namespace A341104.P4314334279639622823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (2 * n + 1) - A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341104.P4314334279639622823

namespace A341104

/-- `Δ[A324969(2*n+1)-A034008(n)]` -/
def P4314334279639622823.Spec : Prop :=
  ∀ n, P4314334279639622823.a n = A341104 n

end A341104

/-! ## A341104.P13767420122875327825

`A005248(n)-A001519(n)-A166444(n)`
-/

namespace A341104.P13767420122875327825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n - A001519 n - A166444 n

end

end A341104.P13767420122875327825

namespace A341104

/-- `A005248(n)-A001519(n)-A166444(n)` -/
def P13767420122875327825.Spec : Prop :=
  ∀ n, P13767420122875327825.a n = A341104 n

end A341104

/-! ## A341104.P16460237803132671357

`A049610(n)+Δ[A001906(n)-A049610(n)]`
-/

namespace A341104.P16460237803132671357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - A049610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n + (f1 (n + 1) - f1 n)

end

end A341104.P16460237803132671357

namespace A341104

/-- `A049610(n)+Δ[A001906(n)-A049610(n)]` -/
def P16460237803132671357.Spec : Prop :=
  ∀ n, P16460237803132671357.a n = A341104 n

end A341104

/-! ## A341104.P16607179636616044612

`A001519(n+1)+A247188(n+1)-A000295(n+1)`
-/

namespace A341104.P16607179636616044612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + (A247188 (n + 1) - A000295 (n + 1))

end

end A341104.P16607179636616044612

namespace A341104

/-- `A001519(n+1)+A247188(n+1)-A000295(n+1)` -/
def P16607179636616044612.Spec : Prop :=
  ∀ n, P16607179636616044612.a n = A341104 n

end A341104

/-! ## A341104.P10916168685024247334

`record[A000045(A158405(n+1))]-A166444(n)`
-/

namespace A341104.P10916168685024247334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A158405 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A166444 n

end

end A341104.P10916168685024247334

namespace A341104

/-- `record[A000045(A158405(n+1))]-A166444(n)` -/
def P10916168685024247334.Spec : Prop :=
  ∀ n, P10916168685024247334.a n = A341104 n

end A341104

/-!
# A341105: T(n, k) is the Cauchy coefficient of the k-th partition of n, where the partitions are enumerated in standard order. T(n, k) for n >= 0 and 1 <= k <= A000041(n).

The programs for A341105, there is no canonical definition to state claims against.
-/

/-! ## A341105.P16207667275776356359

`A036042(n)!/A279038(n)`
-/

namespace A341105.P16207667275776356359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036042 n).toNat : ℚ) / (A279038 n : ℚ)

end

end A341105.P16207667275776356359

/-! ## A341105.P3860181314247572415

`A003963(A129129(n))*A333144(n)`
-/

namespace A341105.P3860181314247572415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A129129 n).toNat * A333144 n

end

end A341105.P3860181314247572415

/-! ## A341105.P8018086772510303724

`A000142(A036042(n))/A124795(A129129(n))`
-/

namespace A341105.P8018086772510303724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A036042 n).toNat : ℚ) / (A124795 (A129129 n).toNat : ℚ)

end

end A341105.P8018086772510303724

/-! ## A341105.P3182125547312554014

`A178801(n)/A279038(n)`
-/

namespace A341105.P3182125547312554014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178801 n : ℚ) / (A279038 n : ℚ)

end

end A341105.P3182125547312554014

/-! ## A341105.P14343325496274474099

`A118851(n)*A333144(n*A254730(n))`
-/

namespace A341105.P14343325496274474099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118851 n * A333144 ((n : ℤ) * A254730 n).toNat

end

end A341105.P14343325496274474099

/-!
# A341106: a(n) = 2^n*E2poly(n, -1/2), where E2poly(n, x) = Sum_{k=0..n} A340556(n, k)*x^k, are the second-order Eulerian polynomials.

The programs for A341106, there is no canonical definition to state claims against.
-/

/-! ## A341106.P5788823751475682657

`A001464(n)*A073184(A005419(n+1))`
-/

namespace A341106.P5788823751475682657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001464 n * A073184 (A005419 (n + 1)).toNat

end

end A341106.P5788823751475682657

/-! ## A341106.P13151200146192525023

`A300546(n+5)-A349464(A000110(n))`
-/

namespace A341106.P13151200146192525023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300546 (n + 5) - A349464 (A000110 n).toNat

end

end A341106.P13151200146192525023

/-!
# A341107: a(n) = A341108(n)/A195441(n).

The programs for A341107, there is no canonical definition to state claims against.
-/

/-! ## A341107.P10578232061903736286

`A341108(n)/A195441(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341107.P10578232061903736286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341108 n : ℚ) / (A195441 n : ℚ)

end

end A341107.P10578232061903736286

/-! ## A341107.P5200305253465685352

`A341109(n)/A324369(n+1)`
-/

namespace A341107.P5200305253465685352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341109 n : ℚ) / (A324369 (n + 1) : ℚ)

end

end A341107.P5200305253465685352

/-! ## A341107.P13626564031190153553

`A318256(n)/A195441(n)*A341109(n)`
-/

namespace A341107.P13626564031190153553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318256 n : ℚ) / (A195441 n : ℚ) * (A341109 n : ℚ)

end

end A341107.P13626564031190153553

/-! ## A341107.P2711968011676867228

`A003557(n+1)*A163176(n+1)/A195441(n)`
-/

namespace A341107.P2711968011676867228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) * A163176 (n + 1) : ℚ) / (A195441 n : ℚ)

end

end A341107.P2711968011676867228

/-! ## A341107.P4394146225368584452

`A003557(n+1)*A163176(n+1)/∏{p}[A363596(n), #]`
-/

namespace A341107.P4394146225368584452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363596 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) * A163176 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ)

end

end A341107.P4394146225368584452

/-!
# A341108: a(n) = A163176(n+1)*A003557(n+1).

The programs for A341108, there is no canonical definition to state claims against.
-/

/-! ## A341108.P6474608725320255966

`A195441(n)*A341107(n)`
-/

namespace A341108.P6474608725320255966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195441 n * A341107 n

end

end A341108.P6474608725320255966

/-! ## A341108.P4538780183263011635

`A163176(n+1)*A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341108.P4538780183263011635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163176 (n + 1) * A003557 (n + 1)

end

end A341108.P4538780183263011635

/-! ## A341108.P13406869444158357112

`A318256(n)*A341109(n)`
-/

namespace A341108.P13406869444158357112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318256 n * A341109 n

end

end A341108.P13406869444158357112

/-! ## A341108.P15102093280650463661

`A001898(n)/A007947(n+1)`
-/

namespace A341108.P15102093280650463661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001898 n : ℚ) / (A007947 (n + 1) : ℚ)

end

end A341108.P15102093280650463661

/-! ## A341108.P8071246200356850280

`lcm(A163176(n+1), A341109(n))`
-/

namespace A341108.P8071246200356850280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A163176 (n + 1)) (A341109 n)

end

end A341108.P8071246200356850280

/-! ## A341108.P8005754394347299540

`A001898(n)/A015052(A015052(n+1))`
-/

namespace A341108.P8005754394347299540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001898 n : ℚ) / (A015052 (A015052 (n + 1)).toNat : ℚ)

end

end A341108.P8005754394347299540

/-! ## A341108.P1963899542211433172

`A001898(n)/A015053(A015053(n+1))`
-/

namespace A341108.P1963899542211433172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001898 n : ℚ) / (A015053 (A015053 (n + 1)).toNat : ℚ)

end

end A341108.P1963899542211433172

/-! ## A341108.P904489009819360088

`A001898(n)/A053166(A053166(n+1))`
-/

namespace A341108.P904489009819360088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001898 n : ℚ) / (A053166 (A053166 (n + 1)).toNat : ℚ)

end

end A341108.P904489009819360088

/-! ## A341108.P4294479162524114740

`A195441(n)/A324369(n+1)*A341109(n)`
-/

namespace A341108.P4294479162524114740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195441 n : ℚ) / (A324369 (n + 1) : ℚ) * (A341109 n : ℚ)

end

end A341108.P4294479162524114740

/-!
# A341109: a(n) = denominator(p(n, x)) / (n!*denominator(bernoulli(n, x))), where p(n, x) = Sum_{k=0..n} E2(n, k)*binomial(x + k, 2*n) / Product_{j=1..n} (j - x) and E2(n, k) are the second-order Eulerian numbers A201637.

The programs for A341109, there is no canonical definition to state claims against.
-/

/-! ## A341109.P4744531340198293862

`A341107(n)*A324369(n+1)`
-/

namespace A341109.P4744531340198293862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341107 n * A324369 (n + 1)

end

end A341109.P4744531340198293862

/-! ## A341109.P6546799771105252251

`A341108(n)/A318256(n)`
-/

namespace A341109.P6546799771105252251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341108 n : ℚ) / (A318256 n : ℚ)

end

end A341109.P6546799771105252251

/-! ## A341109.P2067417267468497051

`(n+1)*A163176(n+1)/A144845(n)`
-/

namespace A341109.P2067417267468497051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A163176 (n + 1) : ℚ) / (A144845 n : ℚ)

end

end A341109.P2067417267468497051

/-! ## A341109.P9727747675657139990

`A341108(n)*A007947(n+1)/A144845(n)`
-/

namespace A341109.P9727747675657139990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341108 n * A007947 (n + 1) : ℚ) / (A144845 n : ℚ)

end

end A341109.P9727747675657139990

/-! ## A341109.P2084880794223501350

`A341108(n)*A324369(n+1)/A195441(n)`
-/

namespace A341109.P2084880794223501350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341108 n * A324369 (n + 1) : ℚ) / (A195441 n : ℚ)

end

end A341109.P2084880794223501350

/-! ## A341109.P12186145636663714379

`A053657(n+1)/(n!*A144845(n))`
-/

namespace A341109.P12186145636663714379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053657 (n + 1) : ℚ) / ((Nat.factorial n : ℤ) * A144845 n : ℚ)

end

end A341109.P12186145636663714379

/-! ## A341109.P6269738393021618670

`gcd(n+1, A195441(n))*A341107(n)`
-/

namespace A341109.P6269738393021618670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A195441 n) : ℤ) * A341107 n

end

end A341109.P6269738393021618670

/-! ## A341109.P2160141046044868577

`A195441(n)/A318256(n)*A341107(n)`
-/

namespace A341109.P2160141046044868577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195441 n : ℚ) / (A318256 n : ℚ) * (A341107 n : ℚ)

end

end A341109.P2160141046044868577

/-! ## A341109.P11264044246325858866

`A001898(n)/A144845(n)`
-/

namespace A341109.P11264044246325858866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001898 n : ℚ) / (A144845 n : ℚ)

end

end A341109.P11264044246325858866

/-!
# A341110: Row sums of A341111.

The programs for A341110, there is no canonical definition to state claims against.
-/

/-! ## A341110.P5067018824671995816

`n!²*A001898(n)`
-/

namespace A341110.P5067018824671995816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℤ) * A001898 n

end

end A341110.P5067018824671995816

/-! ## A341110.P5342016179143618839

`n!*A053657(n+1)`
-/

namespace A341110.P5342016179143618839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A053657 (n + 1)

end

end A341110.P5342016179143618839

/-! ## A341110.P16383424352354244102

`n*a(n-1)*A185633(n)` with `a(0)=1`
-/

namespace A341110.P16383424352354244102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) * A185633 n)

end

end A341110.P16383424352354244102

/-! ## A341110.P2212399105566003556

`A000142(n)²*A001898(n)`
-/

namespace A341110.P2212399105566003556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n ^ 2 * A001898 n

end

end A341110.P2212399105566003556

/-! ## A341110.P8835719469065706978

`A000142(n)*A053657(n+1)`
-/

namespace A341110.P8835719469065706978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A053657 (n + 1)

end

end A341110.P8835719469065706978

/-!
# A341112: Number of partitions of n into 3 prime powers (including 1).

The programs for A341112, there is no canonical definition to state claims against.
-/

/-! ## A341112.P17758412840790114754

`A307727(n+3)+A071330(n+2)`
-/

namespace A341112.P17758412840790114754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307727 (n + 3) + A071330 (n + 2)

end

end A341112.P17758412840790114754

/-! ## A341112.P691041369775819760

`A347644(n+3)-A347643(n+3)`
-/

namespace A341112.P691041369775819760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347644 (n + 3) - A347643 (n + 3)

end

end A341112.P691041369775819760

/-! ## A341112.P10149837425758864677

`A003056(A003056(A004979(n+1)*A257088(n)))`
-/

namespace A341112.P10149837425758864677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A003056 (A004979 (n + 1) * A257088 n).toNat).toNat

end

end A341112.P10149837425758864677

/-! ## A341112.P1314846196930256511

`A112310(A000010(n+1)*A347780(n))`
-/

namespace A341112.P1314846196930256511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (A000010 (n + 1) * A347780 n).toNat

end

end A341112.P1314846196930256511

/-!
# A341113: Numerators of continued fraction convergents to 2^(1/12).

The programs for A341113, there is no canonical definition to state claims against.
-/

/-! ## A341113.P14685434822588726050

`A103922(n-1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A341113.P14685434822588726050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A103922 (n - 1) * a (n - 1) + a (n - 2)

end

end A341113.P14685434822588726050

/-!
# A341114: Denominators of continued fraction convergents to 2^(1/12).

The programs for A341114, there is no canonical definition to state claims against.
-/

/-! ## A341114.P10667280171944670568

`A103922(n-1)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A341114.P10667280171944670568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A103922 (n - 1) * a (n - 1) + a (n - 2)

end

end A341114.P10667280171944670568

/-!
# A341117: a(n) = Sum_{i+j>=m+1} d_i * d_j, where d_1 < ... < d_m are the divisors of n.

The programs for A341117, there is no canonical definition to state claims against.
-/

/-! ## A341117.P7784987349987241514

`A072861(n+1)-A032741(A225944(n+1))`
-/

namespace A341117.P7784987349987241514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072861 (n + 1) - A032741 (A225944 (n + 1)).toNat

end

end A341117.P7784987349987241514

/-!
# A341120: a(n) is the X-coordinate of the n-th point of the space filling curve C defined in Comments section; A341121 gives Y-coordinates.

The programs for A341120, there is no canonical definition to state claims against.
-/

/-! ## A341120.P2937819703674440204

`A341121(n)-A059285(n)`
-/

namespace A341120.P2937819703674440204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341121 n - A059285 n

end

end A341120.P2937819703674440204

/-! ## A341120.P12853596322816842998

`A059252(n)+A283316(n+1)`
-/

namespace A341120.P12853596322816842998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n + A283316 (n + 1)

end

end A341120.P12853596322816842998

/-! ## A341120.P15247351074599095129

`A059253(4*n)-A059252(n)`
-/

namespace A341120.P15247351074599095129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (4 * n) - A059252 n

end

end A341120.P15247351074599095129

/-! ## A341120.P1791184383917984800

`A059252(n)+A160383(n)%2`
-/

namespace A341120.P1791184383917984800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n + Int.tmod (A160383 n) 2

end

end A341120.P1791184383917984800

/-! ## A341120.P518590619314719680

`A059252(n)+A059252(A008574(n))%2`
-/

namespace A341120.P518590619314719680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n + Int.tmod (A059252 (A008574 n).toNat) 2

end

end A341120.P518590619314719680

/-! ## A341120.P2817177720541859119

`A059252(n)+A341121(n)-A059253(n)`
-/

namespace A341120.P2817177720541859119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n + (A341121 n - A059253 n)

end

end A341120.P2817177720541859119

/-! ## A341120.P253344803827108545

`A283316(n+1)+A059253(n)-A059285(n)`
-/

namespace A341120.P253344803827108545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283316 (n + 1) + (A059253 n - A059285 n)

end

end A341120.P253344803827108545

/-! ## A341120.P7628176774343617176

`A341019(2*n)/2`
-/

namespace A341120.P7628176774343617176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341019 (2 * n) : ℚ) / 2

end

end A341120.P7628176774343617176

/-! ## A341120.P14692140859342424725

`A341121(4*n)/2`
-/

namespace A341120.P14692140859342424725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341121 (4 * n) : ℚ) / 2

end

end A341120.P14692140859342424725

/-! ## A341120.P1724737006965981316

`A001281(A341019(2*n))`
-/

namespace A341120.P1724737006965981316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A341019 (2 * n)).toNat

end

end A341120.P1724737006965981316

/-! ## A341120.P1057237527599891563

`A059253(4*n)-A059253(A342217(n))`
-/

namespace A341120.P1057237527599891563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (4 * n) - A059253 (A342217 n).toNat

end

end A341120.P1057237527599891563

/-! ## A341120.P9473304091089426122

`A059252(A342217(4*n))-A059252(n)`
-/

namespace A341120.P9473304091089426122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A342217 (4 * n)).toNat - A059252 n

end

end A341120.P9473304091089426122

/-!
# A341121: a(n) is the Y-coordinate of the n-th point of the space filling curve C defined in Comments section; A341120 gives X-coordinates.

The programs for A341121, there is no canonical definition to state claims against.
-/

/-! ## A341121.P15367480856377101796

`A059253(n)+A283316(n+1)`
-/

namespace A341121.P15367480856377101796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n + A283316 (n + 1)

end

end A341121.P15367480856377101796

/-! ## A341121.P10791092763045301042

`A341019(∑[char[xor(n, 2*n)+1]+1]-(n+1))`
-/

namespace A341121.P10791092763045301042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341019 (∑ j ∈ Finset.range (n + 1), f1 j - (n + 1))

end

end A341121.P10791092763045301042

/-! ## A341121.P10435393892258275399

`A341120(n)+A059285(n)`
-/

namespace A341121.P10435393892258275399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341120 n + A059285 n

end

end A341121.P10435393892258275399

/-! ## A341121.P16342951513990825580

`A059252(4*n)-A059253(n)`
-/

namespace A341121.P16342951513990825580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (4 * n) - A059253 n

end

end A341121.P16342951513990825580

/-! ## A341121.P12211691913688287202

`A059253(n)+A160383(n)%2`
-/

namespace A341121.P12211691913688287202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n + Int.tmod (A160383 n) 2

end

end A341121.P12211691913688287202

/-! ## A341121.P6012615636951768216

`A059253(n)+A341120(n)-A059252(n)`
-/

namespace A341121.P6012615636951768216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n + (A341120 n - A059252 n)

end

end A341121.P6012615636951768216

/-! ## A341121.P10914208701661590824

`A283316(n+1)+A059285(n)+A059252(n)`
-/

namespace A341121.P10914208701661590824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283316 (n + 1) + (A059285 n + A059252 n)

end

end A341121.P10914208701661590824

/-! ## A341121.P18062150573426177152

`A341018(2*n)/2`
-/

namespace A341121.P18062150573426177152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341018 (2 * n) : ℚ) / 2

end

end A341121.P18062150573426177152

/-! ## A341121.P13335573621977675285

`A341120(4*n)/2`
-/

namespace A341121.P13335573621977675285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341120 (4 * n) : ℚ) / 2

end

end A341121.P13335573621977675285

/-! ## A341121.P13200115629322575294

`A059252(4*n)-A059252(A342217(n))`
-/

namespace A341121.P13200115629322575294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (4 * n) - A059252 (A342217 n).toNat

end

end A341121.P13200115629322575294

/-! ## A341121.P1336008078714860199

`A059253(A342217(4*n))-A059253(n)`
-/

namespace A341121.P1336008078714860199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A342217 (4 * n)).toNat - A059253 n

end

end A341121.P1336008078714860199

/-!
# A341122: Number of partitions of n into 4 prime powers (including 1).

The programs for A341122, there is no canonical definition to state claims against.
-/

/-! ## A341122.P5286601063840438645

`A347645(n+4)-A347644(n+4)`
-/

namespace A341122.P5286601063840438645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347645 (n + 4) - A347644 (n + 4)

end

end A341122.P5286601063840438645

/-! ## A341122.P11806108096229294696

`A008771(n)-A026812(A187829(n+1))`
-/

namespace A341122.P11806108096229294696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008771 n - A026812 (A187829 (n + 1)).toNat

end

end A341122.P11806108096229294696

/-! ## A341122.P7165180539904891172

`A341462(n)+A029837(A339589(n+4))`
-/

namespace A341122.P7165180539904891172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341462 (n + 19) + A029837 (A339589 (n + 4)).toNat

end

end A341122.P7165180539904891172

/-! ## A341122.P9463105863487137763

`A342657(n+2)+A072649(A273873(n+1))`
-/

namespace A341122.P9463105863487137763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342657 (n + 2) + A072649 (A273873 (n + 1)).toNat

end

end A341122.P9463105863487137763

/-!
# A341123: Number of partitions of n into 5 prime powers (including 1).

The programs for A341123, there is no canonical definition to state claims against.
-/

/-! ## A341123.P1127189642774467824

`A347646(n+5)-A347645(n+5)`
-/

namespace A341123.P1127189642774467824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347646 (n + 5) - A347645 (n + 5)

end

end A341123.P1127189642774467824

/-! ## A341123.P7054065651274794309

`A365877(A043318(n+1))`
-/

namespace A341123.P7054065651274794309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365877 (A043318 (n + 1)).toNat

end

end A341123.P7054065651274794309

/-! ## A341123.P15057637062831097275

`A365877(A044915(n+1))`
-/

namespace A341123.P15057637062831097275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365877 (A044915 (n + 1)).toNat

end

end A341123.P15057637062831097275

/-! ## A341123.P5407633481999421704

`A365877(A055647(n+1))`
-/

namespace A341123.P5407633481999421704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365877 (A055647 (n + 1)).toNat

end

end A341123.P5407633481999421704

/-! ## A341123.P2033797968344874577

`A365877(A055648(n)+1)`
-/

namespace A341123.P2033797968344874577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365877 (A055648 n + 1).toNat

end

end A341123.P2033797968344874577

/-!
# A341124: Number of partitions of n into 6 prime powers (including 1).

The programs for A341124, there is no canonical definition to state claims against.
-/

/-! ## A341124.P6882386508968301823

`A347647(n+6)-A347646(n+6)`
-/

namespace A341124.P6882386508968301823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347647 (n + 6) - A347646 (n + 6)

end

end A341124.P6882386508968301823

/-! ## A341124.P2202631383243006634

`A137735(record[(A347646(n)-A347647(n))²])`
-/

namespace A341124.P2202631383243006634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A347646 n - A347647 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A341124.P2202631383243006634

/-! ## A341124.P17972340810697013400

`A137735(record[A347647(n)%A347646(n)]²)`
-/

namespace A341124.P17972340810697013400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347647 n) (A347646 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2).toNat

end

end A341124.P17972340810697013400

/-! ## A341124.P16815216654205434462

`A347548(n+6)+A106799(A035053(n))`
-/

namespace A341124.P16815216654205434462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347548 (n + 6) + A106799 (A035053 n).toNat

end

end A341124.P16815216654205434462

/-!
# A341125: Number of partitions of n into 7 prime powers (including 1).

The programs for A341125, there is no canonical definition to state claims against.
-/

/-! ## A341125.P17395434025518507436

`A215531(A186253(n+1))+A023025(n+5)`
-/

namespace A341125.P17395434025518507436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215531 (A186253 (n + 1)).toNat + A023025 (n + 5)

end

end A341125.P17395434025518507436

/-!
# A341126: Number of partitions of n into 8 prime powers (including 1).

The programs for A341126, there is no canonical definition to state claims against.
-/

/-! ## A341126.P11682716350320193203

`A395087(A148008(n))`
-/

namespace A341126.P11682716350320193203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395087 (A148008 n).toNat

end

end A341126.P11682716350320193203

/-! ## A341126.P17079901730239098034

`A105224(A053307(n)²)`
-/

namespace A341126.P17079901730239098034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A053307 n ^ 2).toNat

end

end A341126.P17079901730239098034

/-! ## A341126.P6831140053564457553

`A105224(∑[A008795(n)]²)`
-/

namespace A341126.P6831140053564457553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A341126.P6831140053564457553

/-! ## A341126.P4104898819986221812

`A273190(∑[A008795(n)]²)`
-/

namespace A341126.P4104898819986221812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A341126.P4104898819986221812

/-! ## A341126.P12684176333789900094

`A304405(n)+A124762(A373950(n))`
-/

namespace A341126.P12684176333789900094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304405 n + A124762 (A373950 n).toNat

end

end A341126.P12684176333789900094

/-!
# A341127: Number of partitions of n into 9 prime powers (including 1).

The programs for A341127, there is no canonical definition to state claims against.
-/

/-! ## A341127.P8114639971914358830

`A118759(A330640(n))-A237827(n+1)`
-/

namespace A341127.P8114639971914358830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A330640 n).toNat - A237827 (n + 1)

end

end A341127.P8114639971914358830

/-! ## A341127.P17330392510084112666

`A341131(n)-A341026(A341059(n+1))`
-/

namespace A341127.P17330392510084112666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341131 (n + 10) - A341026 ((A341059 (n + 1)).toNat + 165)

end

end A341127.P17330392510084112666

/-! ## A341127.P13028103311960477575

`A341131(n)-A185284(A233583(3*n+5))`
-/

namespace A341127.P13028103311960477575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341131 (n + 10) - A185284 (A233583 (3 * n + 5)).toNat

end

end A341127.P13028103311960477575

/-! ## A341127.P13077257785578708561

`A035959(n)-A243067(A306721(n))`
-/

namespace A341127.P13077257785578708561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035959 n - A243067 (A306721 n).toNat

end

end A341127.P13077257785578708561

/-! ## A341127.P736143459418085454

`A000041(n)-A053735(A006822(n+2))`
-/

namespace A341127.P736143459418085454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A053735 (A006822 (n + 2)).toNat

end

end A341127.P736143459418085454

/-!
# A341129: Numbers k such that A341117(k) is divisible by k and k is not a prime or power of a prime.

The programs for A341129, there is no canonical definition to state claims against.
-/

/-! ## A341129.P8168970731067256458

`∩[A247199(n+1), A376384(n+1)]`
-/

namespace A341129.P8168970731067256458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341129.P8168970731067256458

/-! ## A341129.P14013112493186647314

`∩[A247199(n+1), A389065(n+1)]`
-/

namespace A341129.P14013112493186647314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341129.P14013112493186647314

/-! ## A341129.P11099689460472343455

`∩[A106543(n+1), A247199(n+1)]`
-/

namespace A341129.P11099689460472343455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341129.P11099689460472343455

/-! ## A341129.P17745670000877789868

`∩[A247199(n+1), A396265(n+1)]`
-/

namespace A341129.P17745670000877789868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341129.P17745670000877789868

/-! ## A341129.P9247675674328537314

`∩[A024619(n+1), A247199(n+1)]`
-/

namespace A341129.P9247675674328537314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341129.P9247675674328537314

/-! ## A341129.P10875915719984550918

`∩[A247199(n+1), A324455(n+1)]`
-/

namespace A341129.P10875915719984550918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341129.P10875915719984550918

/-!
# A341131: Number of partitions of n into 10 prime powers (including 1).

The programs for A341131, there is no canonical definition to state claims against.
-/

/-! ## A341131.P10271750684642418047

`A356944(A341127(n+9))`
-/

namespace A341131.P10271750684642418047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A341127 (n + 9)).toNat

end

end A341131.P10271750684642418047

/-! ## A341131.P16307581960059148529

`A341127(n+9)+A341026(A341059(n+1))`
-/

namespace A341131.P16307581960059148529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341127 (n + 9) + A341026 ((A341059 (n + 1)).toNat + 165)

end

end A341131.P16307581960059148529

/-!
# A341132: Number of partitions of n into 2 distinct prime powers (including 1).

The programs for A341132, there is no canonical definition to state claims against.
-/

/-! ## A341132.P14955629250755180651

`floor(A282062(n+3)/2)`
-/

namespace A341132.P14955629250755180651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282062 (n + 3) : ℚ) / 2⌋

end

end A341132.P14955629250755180651

/-! ## A341132.P832559380304900637

`A004526(A282062(n+3))`
-/

namespace A341132.P832559380304900637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A282062 (n + 3)).toNat

end

end A341132.P832559380304900637

/-! ## A341132.P8330613281133393232

`A319571(A282062(n+3)²)`
-/

namespace A341132.P8330613281133393232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (A282062 (n + 3) ^ 2).toNat

end

end A341132.P8330613281133393232

/-! ## A341132.P6188026117219761099

`A028242(or(1, A282062(n+3)))`
-/

namespace A341132.P6188026117219761099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A282062 (n + 3))).toNat

end

end A341132.P6188026117219761099

/-! ## A341132.P5249670580868732979

`A245710(or(1, A282062(n+3)))`
-/

namespace A341132.P5249670580868732979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245710 (Int.lor 1 (A282062 (n + 3))).toNat

end

end A341132.P5249670580868732979

/-! ## A341132.P577196545555098234

`A008619(A282062(n+3)+2)-2`
-/

namespace A341132.P577196545555098234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A282062 (n + 3) + 2).toNat - 2

end

end A341132.P577196545555098234

/-! ## A341132.P16054490051833057146

`A306433(n+3)+A010055(n+2)`
-/

namespace A341132.P16054490051833057146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306433 (n + 3) + A010055 (n + 2)

end

end A341132.P16054490051833057146

/-! ## A341132.P5792503824919758772

`A282062(n+3)-A071330(n+3)`
-/

namespace A341132.P5792503824919758772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 (n + 3) - A071330 (n + 3)

end

end A341132.P5792503824919758772

/-!
# A341133: Number of ways to write n as an ordered sum of 4 prime powers (including 1).

The programs for A341133, there is no canonical definition to state claims against.
-/

/-! ## A341133.P11919234181505473936

`A347764(n+4)-A347763(n+4)`
-/

namespace A341133.P11919234181505473936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347764 (n + 4) - A347763 (n + 4)

end

end A341133.P11919234181505473936

/-! ## A341133.P5003579789125822438

`∑[∑[A070772(A032559(n+1))]]`
-/

namespace A341133.P5003579789125822438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070772 (A032559 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341133.P5003579789125822438

/-! ## A341133.P11746598065161849376

`∑[∑[A094937(A032555(n+1))]]`
-/

namespace A341133.P11746598065161849376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094937 (A032555 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341133.P11746598065161849376

/-! ## A341133.P12080827392924324040

`∑[∑[A094937(A078213(n+1))]]`
-/

namespace A341133.P12080827392924324040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094937 (A078213 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341133.P12080827392924324040

/-!
# A341134: Number of ways to write n as an ordered sum of 5 prime powers (including 1).

The programs for A341134, there is no canonical definition to state claims against.
-/

/-! ## A341134.P10584279311582483538

`A347775(n+5)-A347764(n+5)`
-/

namespace A341134.P10584279311582483538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347775 (n + 5) - A347764 (n + 5)

end

end A341134.P10584279311582483538

/-! ## A341134.P6728398626008871570

`∑[A137292(∑[A117070(n+1)])]`
-/

namespace A341134.P6728398626008871570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117070 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137292 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341134.P6728398626008871570

/-! ## A341134.P9412195042139472899

`∑[∑[A231672(A032555(n+1))]]`
-/

namespace A341134.P9412195042139472899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231672 (A032555 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341134.P9412195042139472899

/-! ## A341134.P10577190229648826886

`∑[A107686(∑[A177151(3*n+2)])]`
-/

namespace A341134.P10577190229648826886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107686 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341134.P10577190229648826886

/-!
# A341135: Number of ways to write n as an ordered sum of 6 prime powers (including 1).

The programs for A341135, there is no canonical definition to state claims against.
-/

/-! ## A341135.P6934676718399589370

`A347776(n+6)-A347775(n+6)`
-/

namespace A341135.P6934676718399589370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347776 (n + 6) - A347775 (n + 6)

end

end A341135.P6934676718399589370

/-! ## A341135.P10510496817691607721

`A282845(A049872(n)+6)`
-/

namespace A341135.P10510496817691607721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282845 (A049872 n + 6).toNat

end

end A341135.P10510496817691607721

/-! ## A341135.P1726010191516367752

`A282845(A262545(n+5)+2)`
-/

namespace A341135.P1726010191516367752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282845 (A262545 (n + 5) + 2).toNat

end

end A341135.P1726010191516367752

/-! ## A341135.P2910203004319252355

`A282845(A062399(n)+6)`
-/

namespace A341135.P2910203004319252355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282845 (A062399 n + 6).toNat

end

end A341135.P2910203004319252355

/-! ## A341135.P4282000363401978165

`A282845(A351870(n)+6)`
-/

namespace A341135.P4282000363401978165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282845 (A351870 n + 6).toNat

end

end A341135.P4282000363401978165

/-!
# A341136: Number of ways to write n as an ordered sum of 7 prime powers (including 1).

The programs for A341136, there is no canonical definition to state claims against.
-/

/-! ## A341136.P11616107736861567852

`∑[∑[A317717(∑[4*n]+1)]]`
-/

namespace A341136.P11616107736861567852
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317717 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341136.P11616107736861567852

/-! ## A341136.P8497258828167788666

`C(n+6, 6)-C(n, 6)-A171874(7*C(n, 5))`
-/

namespace A341136.P8497258828167788666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 6 : ℤ) - (Nat.choose n 6 : ℤ) - A171874 (7 * Nat.choose n 5)

end

end A341136.P8497258828167788666

/-!
# A341137: Number of ways to write n as an ordered sum of 8 prime powers (including 1).

The programs for A341137, there is no canonical definition to state claims against.
-/

/-! ## A341137.P14653599504819715896

`A256974(A065856(n))+C(n+7, 7)`
-/

namespace A341137.P14653599504819715896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 (A065856 n).toNat + (Nat.choose (n + 7) 7 : ℤ)

end

end A341137.P14653599504819715896

/-!
# A341138: Number of ways to write n as an ordered sum of 9 prime powers (including 1).

The programs for A341138, there is no canonical definition to state claims against.
-/

/-! ## A341138.P2424729525607298401

`C(n+8, 8)-C(n, 8)-A122288(9*C(n, 4))`
-/

namespace A341138.P2424729525607298401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 8 : ℤ) - (Nat.choose n 8 : ℤ) - A122288 (9 * Nat.choose n 4)

end

end A341138.P2424729525607298401

/-! ## A341138.P11621983269787194589

`A222252(C(A104426(n+5), 8))`
-/

namespace A341138.P11621983269787194589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (Nat.choose (A104426 (n + 5)).toNat 8)

end

end A341138.P11621983269787194589

/-!
# A341139: Number of ways to write n as an ordered sum of 10 prime powers (including 1).

The programs for A341139, there is no canonical definition to state claims against.
-/

/-! ## A341139.P2553807084428620697

`C(n+9, 9)-A014341(A014377(n))`
-/

namespace A341139.P2553807084428620697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) - A014341 (A014377 n).toNat

end

end A341139.P2553807084428620697

/-! ## A341139.P5041147573130225593

`record[A023035(n)-A260813(3*n+4)]`
-/

namespace A341139.P5041147573130225593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023035 (n + 10) - A260813 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341139.P5041147573130225593

/-!
# A341140: Number of partitions of n into 3 distinct prime powers (including 1).

The programs for A341140, there is no canonical definition to state claims against.
-/

/-! ## A341140.P16783324659745796827

`A353086(A233583(n+1)+A001222(gcd(2, n)^n+10))`
-/

namespace A341140.P16783324659745796827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353086 (A233583 (n + 1) + A001222 (Nat.gcd 2 n ^ n + 10)).toNat

end

end A341140.P16783324659745796827

/-! ## A341140.P6128008258057296411

`A180160(A075200(n+1))+floor(n/2)+1`
-/

namespace A341140.P6128008258057296411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (A075200 (n + 1)).toNat + (⌊(n : ℚ) / 2⌋ + 1)

end

end A341140.P6128008258057296411

/-! ## A341140.P13357754603091549541

`A014499(or(A053602(2*(n+1)), A075219(n+1)))`
-/

namespace A341140.P13357754603091549541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (Int.lor (A053602 (2 * (n + 1))) (A075219 (n + 1))).toNat

end

end A341140.P13357754603091549541

/-!
# A341141: Number of partitions of n into 4 distinct prime powers (including 1).

The programs for A341141, there is no canonical definition to state claims against.
-/

/-! ## A341141.P13315703186707429924

`∑[and(A193662(n+4), A193677(n+1))]`
-/

namespace A341141.P13315703186707429924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A193662 (n + 4)) (A193677 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341141.P13315703186707429924

/-! ## A341141.P11107273405168535258

`∑[and(2*n+1, A193677(A187829(n+1)))]`
-/

namespace A341141.P11107273405168535258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A193677 (A187829 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341141.P11107273405168535258

/-!
# A341142: Number of partitions of n into 5 distinct prime powers (including 1).

The programs for A341142, there is no canonical definition to state claims against.
-/

/-! ## A341142.P13414837109764277487

`A055640(A238830(n+1))+A000700(2*n)`
-/

namespace A341142.P13414837109764277487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A238830 (n + 1)).toNat + A000700 (2 * n)

end

end A341142.P13414837109764277487

/-!
# A341145: Number of partitions of n into 8 distinct prime powers (including 1).

The programs for A341145, there is no canonical definition to state claims against.
-/

/-! ## A341145.P6497808617814611215

`A226748(n)-A213728(A192780(n+1))`
-/

namespace A341145.P6497808617814611215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226748 n - A213728 (A192780 (n + 1)).toNat

end

end A341145.P6497808617814611215

/-! ## A341145.P8984339782791271983

`A226046(A161680(n)+A010132(n))`
-/

namespace A341145.P8984339782791271983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226046 (A161680 n + A010132 n).toNat

end

end A341145.P8984339782791271983

/-! ## A341145.P11280781655880527300

`A318029(n+1)+A011751(A116440(n+1))`
-/

namespace A341145.P11280781655880527300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318029 (n + 1) + A011751 (A116440 (n + 1)).toNat

end

end A341145.P11280781655880527300

/-!
# A341148: Triangle read by rows: T(n,k) is number of cubes in the k-th vertical slice of the polycube called "tower" described in A221529 where n is the longest side of its base, 1 <= k <= n.

The programs for A341148, there is no canonical definition to state claims against.
-/

/-! ## A341148.P14616016553929977798

`A172471(A191449(n+1))%A242999(n+1)`
-/

namespace A341148.P14616016553929977798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172471 (A191449 (n + 1)).toNat) (A242999 (n + 1))

end

end A341148.P14616016553929977798

/-!
# A341150: Triangle read by rows, lower triangle of the all-zeros matrix modified step by step with T(0,0) = 1, then at each step, if T(n,k) has changed in previous step, increase T(n+k,k) and T(3n+1-2k,2n+1-k) by 1.

The programs for A341150, there is no canonical definition to state claims against.
-/

/-! ## A341150.P11255960590265990606

`A113704(n%A113389(n))`
-/

namespace A341150.P11255960590265990606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113704 (Int.tmod (n : ℤ) (A113389 n)).toNat

end

end A341150.P11255960590265990606

/-! ## A341150.P13948397303852219008

`A240465(A353306(n+1))+A113704(n)`
-/

namespace A341150.P13948397303852219008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240465 (A353306 (n + 1)).toNat + A113704 n

end

end A341150.P13948397303852219008

/-! ## A341150.P12245430469846352730

`A133100(A368538(n+2))+A113704(n)`
-/

namespace A341150.P12245430469846352730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133100 (A368538 (n + 2)).toNat + A113704 n

end

end A341150.P12245430469846352730

/-! ## A341150.P16964071467382094021

`A298426(n+1)^A360764(A063553(n+2))`
-/

namespace A341150.P16964071467382094021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298426 (n + 1) : ℚ) ^ (A360764 (A063553 (n + 2)).toNat : ℤ)

end

end A341150.P16964071467382094021

/-! ## A341150.P17242936755560440333

`A007953(A298426(n+1)^A083038(n+4))`
-/

namespace A341150.P17242936755560440333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A298426 (n + 1) : ℚ) ^ (A083038 (n + 4) : ℤ))).toNat

end

end A341150.P17242936755560440333

/-!
# A341151: a(n) is the sum of the n-th row of the A341150 triangle.

The programs for A341151, there is no canonical definition to state claims against.
-/

/-! ## A341151.P10927212234077567800

`A116473(n+1)+A055641(A116444(n+1))`
-/

namespace A341151.P10927212234077567800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116473 (n + 1) + A055641 (A116444 (n + 1)).toNat

end

end A341151.P10927212234077567800

/-! ## A341151.P13829304840193316302

`A185284(A116478(n+1))+A116473(n+1)`
-/

namespace A341151.P13829304840193316302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A116478 (n + 1)).toNat + A116473 (n + 1)

end

end A341151.P13829304840193316302

/-!
# A341153: Number of partitions of 2*n into exactly n squarefree parts.

The programs for A341153, there is no canonical definition to state claims against.
-/

/-! ## A341153.P10196710103186493824

`A181838(9*n+8)+A000726(n)`
-/

namespace A341153.P10196710103186493824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181838 (9 * n + 8) + A000726 n

end

end A341153.P10196710103186493824

/-! ## A341153.P814637353917665544

`A307149(2*(n+1))+A051731(A004148(n))`
-/

namespace A341153.P814637353917665544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307149 (2 * (n + 1)) + A051731 (A004148 n).toNat

end

end A341153.P814637353917665544

/-! ## A341153.P1504708855173202780

`A086078(A026520(n))+A000726(n)`
-/

namespace A341153.P1504708855173202780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086078 (A026520 n).toNat + A000726 n

end

end A341153.P1504708855173202780

/-! ## A341153.P2509975115438003523

`A267463(A267515(n))+A000726(n)`
-/

namespace A341153.P2509975115438003523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267463 (A267515 n).toNat + A000726 n

end

end A341153.P2509975115438003523

/-! ## A341153.P9069094983179744594

`A235145(A056799(n+1))+A000726(n)`
-/

namespace A341153.P9069094983179744594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A056799 (n + 1)).toNat + A000726 n

end

end A341153.P9069094983179744594

/-!
# A341154: Number of partitions of 2*n into exactly n prime powers (including 1).

The programs for A341154, there is no canonical definition to state claims against.
-/

/-! ## A341154.P13762800842365435744

`A288253(n+7)+A025466(A047031(n))`
-/

namespace A341154.P13762800842365435744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288253 (n + 7) + A025466 (A047031 n).toNat

end

end A341154.P13762800842365435744

/-! ## A341154.P4953363248520079133

`A288253(n+7)+A102683(A011782(n))`
-/

namespace A341154.P4953363248520079133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288253 (n + 7) + A102683 (A011782 n).toNat

end

end A341154.P4953363248520079133

/-! ## A341154.P10864059742408415793

`A288253(n+7)+A178798(A032277(n+1))`
-/

namespace A341154.P10864059742408415793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288253 (n + 7) + A178798 (A032277 (n + 1)).toNat

end

end A341154.P10864059742408415793

/-! ## A341154.P16611114671184339942

`A288253(n+7)+A185284(A146237(n+2))`
-/

namespace A341154.P16611114671184339942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288253 (n + 7) + A185284 (A146237 (n + 2)).toNat

end

end A341154.P16611114671184339942

/-! ## A341154.P4228969698883100444

`A124278(A155212(n)+15)+A025466(A047031(n))`
-/

namespace A341154.P4228969698883100444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124278 (A155212 n + 15).toNat + A025466 (A047031 n).toNat

end

end A341154.P4228969698883100444

/-!
# A341155: Number of partitions of n into 2 distinct nonzero decimal palindromes.

The programs for A341155, there is no canonical definition to state claims against.
-/

/-! ## A341155.P12799365922281969344

`A004526(A341191(n+3))`
-/

namespace A341155.P12799365922281969344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A341191 (n + 3)).toNat

end

end A341155.P12799365922281969344

/-! ## A341155.P14820721631057789119

`A300293(or(1, A341191(n+3)))`
-/

namespace A341155.P14820721631057789119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300293 (Int.lor 1 (A341191 (n + 3))).toNat

end

end A341155.P14820721631057789119

/-! ## A341155.P3332954280933253963

`A008619(A341191(n+3))-abs(A020985(n))`
-/

namespace A341155.P3332954280933253963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A341191 (n + 3)).toNat - |A020985 n|

end

end A341155.P3332954280933253963

/-! ## A341155.P11093367049653049154

`A008619(A341191(n+3))-abs(A071936(n+1))`
-/

namespace A341155.P11093367049653049154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A341191 (n + 3)).toNat - |A071936 (n + 1)|

end

end A341155.P11093367049653049154

/-! ## A341155.P2613355572749659005

`A008619(A341191(n+3))-A001221(A246066(n))`
-/

namespace A341155.P2613355572749659005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A341191 (n + 3)).toNat - A001221 (A246066 n).toNat

end

end A341155.P2613355572749659005

/-! ## A341155.P5469116190657428287

`A341191(n+3)-A319468(n+3)`
-/

namespace A341155.P5469116190657428287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341191 (n + 3) - A319468 (n + 3)

end

end A341155.P5469116190657428287

/-! ## A341155.P6050963055375745847

`A008619(A341191(n+3))-A071936(2*n+1)`
-/

namespace A341155.P6050963055375745847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A341191 (n + 3)).toNat - A071936 (2 * n + 1)

end

end A341155.P6050963055375745847

/-! ## A341155.P16136745101699162734

`A008619(A341191(n+3))-A020985(2*n+1)²`
-/

namespace A341155.P16136745101699162734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A341191 (n + 3)).toNat - A020985 (2 * n + 1) ^ 2

end

end A341155.P16136745101699162734

/-! ## A341155.P9472834728778366338

`A008619(A341191(n+3))-char[A004515(n)]`
-/

namespace A341155.P9472834728778366338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A341191 (n + 3)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A341155.P9472834728778366338

/-! ## A341155.P17397839094007555612

`A008619(A341191(n+3))-A337263(A084888(n))`
-/

namespace A341155.P17397839094007555612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A341191 (n + 3)).toNat - A337263 (A084888 n).toNat

end

end A341155.P17397839094007555612

/-! ## A341155.P2862125242248330775

`A008619(A341191(n+3))-A001222(A156010(n+1))`
-/

namespace A341155.P2862125242248330775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A341191 (n + 3)).toNat - A001222 (A156010 (n + 1)).toNat

end

end A341155.P2862125242248330775

/-!
# A341157: Number of partitions of n into 4 distinct nonzero decimal palindromes.

The programs for A341157, there is no canonical definition to state claims against.
-/

/-! ## A341157.P7775306814578808381

`∑[A075355(n+1)]-A347697(A164160(n))`
-/

namespace A341157.P7775306814578808381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A347697 (A164160 n).toNat

end

end A341157.P7775306814578808381

/-!
# A341158: Number of partitions of n into 5 distinct nonzero decimal palindromes.

The programs for A341158, there is no canonical definition to state claims against.
-/

/-! ## A341158.P10116439473433066559

`A342010(A273939(n))`
-/

namespace A341158.P10116439473433066559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342010 (A273939 n).toNat

end

end A341158.P10116439473433066559

/-! ## A341158.P10740593348975579798

`A342010(A222372(n+2))`
-/

namespace A341158.P10740593348975579798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342010 (A222372 (n + 2)).toNat

end

end A341158.P10740593348975579798

/-! ## A341158.P13904662432415516163

`∑[A065339(A129921(n))]+1`
-/

namespace A341158.P13904662432415516163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A129921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A341158.P13904662432415516163

/-! ## A341158.P15012515400694352802

`A014701(A344604(n)+A006882(n))`
-/

namespace A341158.P15012515400694352802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014701 (A344604 n + A006882 n).toNat

end

end A341158.P15012515400694352802

/-! ## A341158.P9025382999284128850

`A096276(n)+A036987(A059814(n+1))`
-/

namespace A341158.P9025382999284128850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n + A036987 (A059814 (n + 1)).toNat

end

end A341158.P9025382999284128850

/-!
# A341161: The sum of the prime digits of m and the sum of the nonprime digits of m differ by n.

The programs for A341161, there is no canonical definition to state claims against.
-/

/-! ## A341161.P14833621509432021722

`A341011(A077741(n+1))`
-/

namespace A341161.P14833621509432021722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341011 (A077741 (n + 1)).toNat

end

end A341161.P14833621509432021722

/-! ## A341161.P11465769548220978284

`A341011(A004906(n+2))`
-/

namespace A341161.P11465769548220978284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341011 (A004906 (n + 2)).toNat

end

end A341161.P11465769548220978284

/-! ## A341161.P9459538762867971423

`A341011(A004917(n+2))`
-/

namespace A341161.P9459538762867971423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341011 (A004917 (n + 2)).toNat

end

end A341161.P9459538762867971423

/-! ## A341161.P9654182149414460414

`A347645(A036646(n))+n`
-/

namespace A341161.P9654182149414460414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347645 (A036646 n).toNat + (n : ℤ)

end

end A341161.P9654182149414460414

/-!
# A341168: Number of partitions of n into 10 distinct nonzero decimal palindromes.

The programs for A341168, there is no canonical definition to state claims against.
-/

/-! ## A341168.P2553926914661458656

`A086617(A185238(n))-char[A010785(n)+1]`
-/

namespace A341168.P2553926914661458656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086617 (A185238 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A341168.P2553926914661458656

/-! ## A341168.P12598856677467250846

`A000925(char[A010785(n)+1]*A001539(n))`
-/

namespace A341168.P12598856677467250846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A001539 n).toNat

end

end A341168.P12598856677467250846

/-! ## A341168.P13221915352843820837

`A010052(char[A010785(n)+1]*A001539(n))`
-/

namespace A341168.P13221915352843820837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A001539 n).toNat

end

end A341168.P13221915352843820837

/-! ## A341168.P13498648812347542282

`A000035(∪[A061547(n+2), A005231(n+3)])`
-/

namespace A341168.P13498648812347542282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061547 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A341168.P13498648812347542282

/-! ## A341168.P7294986809679569880

`A008966(A378033(2*n+3)+A328499(n+1))`
-/

namespace A341168.P7294986809679569880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A378033 (2 * n + 3) + A328499 (n + 1)).toNat

end

end A341168.P7294986809679569880

/-!
# A341169: Numbers that divided by the sum of their digits leave 2 as remainder.

The programs for A341169, the canonical program `A341169.P9820711191636819910` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341169 has offset 1).

The definition of A341169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341169.P9820711191636819910

`eq[2, A070635(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341169

/-- `eq[2, A070635(n+1)]+1` -/
def P9820711191636819910.Spec : Prop :=
  ∀ n, (P9820711191636819910.a n : ℤ) = A341169 (n + 1)

theorem P9820711191636819910.correct : P9820711191636819910.Spec := by
  intro n
  simp only [A341169, Nat.add_sub_cancel]

end A341169

/-! ## A341169.P14057565869558002836

`eq[2, A070635(A028310(n))]`
-/

namespace A341169.P14057565869558002836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341169.P14057565869558002836

namespace A341169

/-- `eq[2, A070635(A028310(n))]` -/
def P14057565869558002836.Spec : Prop :=
  ∀ n, (P14057565869558002836.a n : ℤ) = A341169 (n + 1)

end A341169

/-! ## A341169.P7177391338296323651

`A020725(eq[2, A070635(n+1)])`
-/

namespace A341169.P7177391338296323651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341169.P7177391338296323651

namespace A341169

/-- `A020725(eq[2, A070635(n+1)])` -/
def P7177391338296323651.Spec : Prop :=
  ∀ n, P7177391338296323651.a n = A341169 (n + 1)

end A341169

/-! ## A341169.P12825512192506210042

`A063660(eq[2, A070635(n+1)])`
-/

namespace A341169.P12825512192506210042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341169.P12825512192506210042

namespace A341169

/-- `A063660(eq[2, A070635(n+1)])` -/
def P12825512192506210042.Spec : Prop :=
  ∀ n, P12825512192506210042.a n = A341169 (n + 1)

end A341169

/-! ## A341169.P4443749532061271370

`A065475(eq[2, A070635(n+1)])`
-/

namespace A341169.P4443749532061271370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341169.P4443749532061271370

namespace A341169

/-- `A065475(eq[2, A070635(n+1)])` -/
def P4443749532061271370.Spec : Prop :=
  ∀ n, P4443749532061271370.a n = A341169 (n + 1)

end A341169

/-! ## A341169.P11034170499697110503

`eq[2, A070635(A004277(n)-n)]`
-/

namespace A341169.P11034170499697110503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341169.P11034170499697110503

namespace A341169

/-- `eq[2, A070635(A004277(n)-n)]` -/
def P11034170499697110503.Spec : Prop :=
  ∀ n, (P11034170499697110503.a n : ℤ) = A341169 (n + 1)

end A341169

/-! ## A341169.P11945103947333264713

`eq[2, A070635(gcd(n, A004277(n)))]`
-/

namespace A341169.P11945103947333264713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (Int.gcd (n : ℤ) (A004277 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341169.P11945103947333264713

namespace A341169

/-- `eq[2, A070635(gcd(n, A004277(n)))]` -/
def P11945103947333264713.Spec : Prop :=
  ∀ n, (P11945103947333264713.a n : ℤ) = A341169 (n + 1)

end A341169

/-! ## A341169.P11496922619843886735

`eq[2, A070635(or(n, A178225(n)))]`
-/

namespace A341169.P11496922619843886735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (Int.lor (n : ℤ) (A178225 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341169.P11496922619843886735

namespace A341169

/-- `eq[2, A070635(or(n, A178225(n)))]` -/
def P11496922619843886735.Spec : Prop :=
  ∀ n, (P11496922619843886735.a n : ℤ) = A341169 (n + 1)

end A341169

/-! ## A341169.P13896441022545074082

`eq[2, A070635(A060000(n+1))]`
-/

namespace A341169.P13896441022545074082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341169.P13896441022545074082

namespace A341169

/-- `eq[2, A070635(A060000(n+1))]` -/
def P13896441022545074082.Spec : Prop :=
  ∀ n, (P13896441022545074082.a n : ℤ) = A341169 (n + 1)

end A341169

/-! ## A341169.P2745555597238698872

`eq[2, A070635(A065033(2*n))]`
-/

namespace A341169.P2745555597238698872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341169.P2745555597238698872

namespace A341169

/-- `eq[2, A070635(A065033(2*n))]` -/
def P2745555597238698872.Spec : Prop :=
  ∀ n, (P2745555597238698872.a n : ℤ) = A341169 (n + 1)

end A341169

/-! ## A341169.P1169939658812929964

`eq[2, A070635(A123108(2*n))]`
-/

namespace A341169.P1169939658812929964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341169.P1169939658812929964

namespace A341169

/-- `eq[2, A070635(A123108(2*n))]` -/
def P1169939658812929964.Spec : Prop :=
  ∀ n, (P1169939658812929964.a n : ℤ) = A341169 (n + 1)

end A341169

/-!
# A341170: Numbers that when divided by the sum of their digits leave 3 as remainder.

The programs for A341170, the canonical program `A341170.P14350183940788908955` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341170 has offset 1).

The definition of A341170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 801 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341170.P14350183940788908955

`eq[3, A070635(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341170

/-- `eq[3, A070635(n+1)]+1` -/
def P14350183940788908955.Spec : Prop :=
  ∀ n, (P14350183940788908955.a n : ℤ) = A341170 (n + 1)

theorem P14350183940788908955.correct : P14350183940788908955.Spec := by
  intro n
  simp only [A341170, Nat.add_sub_cancel]

end A341170

/-! ## A341170.P7926437353038897879

`eq[n, n-a(A070635(n))]` with `a(0)=3`
-/

namespace A341170.P7926437353038897879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  (n : ℤ) - f2 (A070635 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341170.P7926437353038897879

namespace A341170

/-- `eq[n, n-a(A070635(n))]` -/
def P7926437353038897879.Spec : Prop :=
  ∀ n, (P7926437353038897879.a n : ℤ) = A341170 (n + 1)

end A341170

/-! ## A341170.P8468100580560344819

`eq[3, (n+1)%A007953(n+1)]+1`
-/

namespace A341170.P8468100580560344819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A007953 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341170.P8468100580560344819

namespace A341170

/-- `eq[3, (n+1)%A007953(n+1)]+1` -/
def P8468100580560344819.Spec : Prop :=
  ∀ n, (P8468100580560344819.a n : ℤ) = A341170 (n + 1)

end A341170

/-! ## A341170.P14100451355851041620

`eq[3, A070635(A028310(n))]`
-/

namespace A341170.P14100451355851041620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341170.P14100451355851041620

namespace A341170

/-- `eq[3, A070635(A028310(n))]` -/
def P14100451355851041620.Spec : Prop :=
  ∀ n, (P14100451355851041620.a n : ℤ) = A341170 (n + 1)

end A341170

/-! ## A341170.P5312091742194677173

`eq[3, A070635(A004277(n)-n)]`
-/

namespace A341170.P5312091742194677173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341170.P5312091742194677173

namespace A341170

/-- `eq[3, A070635(A004277(n)-n)]` -/
def P5312091742194677173.Spec : Prop :=
  ∀ n, (P5312091742194677173.a n : ℤ) = A341170 (n + 1)

end A341170

/-! ## A341170.P3423186238647569067

`eq[3, A070635(gcd(n, A004277(n)))]`
-/

namespace A341170.P3423186238647569067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (Int.gcd (n : ℤ) (A004277 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341170.P3423186238647569067

namespace A341170

/-- `eq[3, A070635(gcd(n, A004277(n)))]` -/
def P3423186238647569067.Spec : Prop :=
  ∀ n, (P3423186238647569067.a n : ℤ) = A341170 (n + 1)

end A341170

/-! ## A341170.P16452336997079859101

`eq[3, A070635(A143473(A143473(n)))]`
-/

namespace A341170.P16452336997079859101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A143473 (A143473 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341170.P16452336997079859101

namespace A341170

/-- `eq[3, A070635(A143473(A143473(n)))]` -/
def P16452336997079859101.Spec : Prop :=
  ∀ n, (P16452336997079859101.a n : ℤ) = A341170 (n + 1)

end A341170

/-! ## A341170.P12949806875489166945

`eq[3, A070635(A233583(n+1))]`
-/

namespace A341170.P12949806875489166945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341170.P12949806875489166945

namespace A341170

/-- `eq[3, A070635(A233583(n+1))]` -/
def P12949806875489166945.Spec : Prop :=
  ∀ n, (P12949806875489166945.a n : ℤ) = A341170 (n + 1)

end A341170

/-!
# A341171: Numbers that when divided by the sum of their digits leave 4 as remainder.

The programs for A341171, the canonical program `A341171.P9321090049766622072` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341171 has offset 1).

The definition of A341171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341171.P9321090049766622072

`eq[4, A070635(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341171

/-- `eq[4, A070635(n+1)]+1` -/
def P9321090049766622072.Spec : Prop :=
  ∀ n, (P9321090049766622072.a n : ℤ) = A341171 (n + 1)

theorem P9321090049766622072.correct : P9321090049766622072.Spec := by
  intro n
  simp only [A341171, Nat.add_sub_cancel]

end A341171

/-! ## A341171.P6230028929310252118

`eq[4, A070635(A028310(n))]`
-/

namespace A341171.P6230028929310252118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341171.P6230028929310252118

namespace A341171

/-- `eq[4, A070635(A028310(n))]` -/
def P6230028929310252118.Spec : Prop :=
  ∀ n, (P6230028929310252118.a n : ℤ) = A341171 (n + 1)

end A341171

/-! ## A341171.P1344230511130061300

`A020725(eq[4, A070635(n+1)])`
-/

namespace A341171.P1344230511130061300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341171.P1344230511130061300

namespace A341171

/-- `A020725(eq[4, A070635(n+1)])` -/
def P1344230511130061300.Spec : Prop :=
  ∀ n, P1344230511130061300.a n = A341171 (n + 1)

end A341171

/-! ## A341171.P5035915487973588996

`A065475(eq[4, A070635(n+1)])`
-/

namespace A341171.P5035915487973588996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341171.P5035915487973588996

namespace A341171

/-- `A065475(eq[4, A070635(n+1)])` -/
def P5035915487973588996.Spec : Prop :=
  ∀ n, P5035915487973588996.a n = A341171 (n + 1)

end A341171

/-! ## A341171.P2764511773773926802

`eq[4, A070635(A060000(n+1))]`
-/

namespace A341171.P2764511773773926802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341171.P2764511773773926802

namespace A341171

/-- `eq[4, A070635(A060000(n+1))]` -/
def P2764511773773926802.Spec : Prop :=
  ∀ n, (P2764511773773926802.a n : ℤ) = A341171 (n + 1)

end A341171

/-! ## A341171.P4553141562299247929

`eq[4, A070635(A065033(2*n))]`
-/

namespace A341171.P4553141562299247929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341171.P4553141562299247929

namespace A341171

/-- `eq[4, A070635(A065033(2*n))]` -/
def P4553141562299247929.Spec : Prop :=
  ∀ n, (P4553141562299247929.a n : ℤ) = A341171 (n + 1)

end A341171

/-! ## A341171.P765532592497973155

`eq[4, A070635(A123108(2*n))]`
-/

namespace A341171.P765532592497973155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341171.P765532592497973155

namespace A341171

/-- `eq[4, A070635(A123108(2*n))]` -/
def P765532592497973155.Spec : Prop :=
  ∀ n, (P765532592497973155.a n : ℤ) = A341171 (n + 1)

end A341171

/-! ## A341171.P16669844207848429834

`eq[4, A070635(A233583(n+1))]`
-/

namespace A341171.P16669844207848429834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341171.P16669844207848429834

namespace A341171

/-- `eq[4, A070635(A233583(n+1))]` -/
def P16669844207848429834.Spec : Prop :=
  ∀ n, (P16669844207848429834.a n : ℤ) = A341171 (n + 1)

end A341171

/-!
# A341172: Numbers that when divided by the sum of their digits leave 5 as remainder.

The programs for A341172, the canonical program `A341172.P14823139474695467631` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341172 has offset 1).

The definition of A341172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341172.P14823139474695467631

`eq[5, A070635(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341172

/-- `eq[5, A070635(n+1)]+1` -/
def P14823139474695467631.Spec : Prop :=
  ∀ n, (P14823139474695467631.a n : ℤ) = A341172 (n + 1)

theorem P14823139474695467631.correct : P14823139474695467631.Spec := by
  intro n
  simp only [A341172, Nat.add_sub_cancel]

end A341172

/-! ## A341172.P14056436471857933152

`eq[5, A070635(A028310(n))]`
-/

namespace A341172.P14056436471857933152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341172.P14056436471857933152

namespace A341172

/-- `eq[5, A070635(A028310(n))]` -/
def P14056436471857933152.Spec : Prop :=
  ∀ n, (P14056436471857933152.a n : ℤ) = A341172 (n + 1)

end A341172

/-! ## A341172.P1110841390378998735

`A020725(eq[5, A070635(n+1)])`
-/

namespace A341172.P1110841390378998735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341172.P1110841390378998735

namespace A341172

/-- `A020725(eq[5, A070635(n+1)])` -/
def P1110841390378998735.Spec : Prop :=
  ∀ n, P1110841390378998735.a n = A341172 (n + 1)

end A341172

/-! ## A341172.P3426346520467638942

`A063660(eq[5, A070635(n+1)])`
-/

namespace A341172.P3426346520467638942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341172.P3426346520467638942

namespace A341172

/-- `A063660(eq[5, A070635(n+1)])` -/
def P3426346520467638942.Spec : Prop :=
  ∀ n, P3426346520467638942.a n = A341172 (n + 1)

end A341172

/-! ## A341172.P2727420363268906460

`A065475(eq[5, A070635(n+1)])`
-/

namespace A341172.P2727420363268906460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341172.P2727420363268906460

namespace A341172

/-- `A065475(eq[5, A070635(n+1)])` -/
def P2727420363268906460.Spec : Prop :=
  ∀ n, P2727420363268906460.a n = A341172 (n + 1)

end A341172

/-! ## A341172.P18392401067792546385

`eq[5, A070635(A060000(n+1))]`
-/

namespace A341172.P18392401067792546385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341172.P18392401067792546385

namespace A341172

/-- `eq[5, A070635(A060000(n+1))]` -/
def P18392401067792546385.Spec : Prop :=
  ∀ n, (P18392401067792546385.a n : ℤ) = A341172 (n + 1)

end A341172

/-! ## A341172.P11539772558595013771

`eq[5, A070635(A065033(2*n))]`
-/

namespace A341172.P11539772558595013771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341172.P11539772558595013771

namespace A341172

/-- `eq[5, A070635(A065033(2*n))]` -/
def P11539772558595013771.Spec : Prop :=
  ∀ n, (P11539772558595013771.a n : ℤ) = A341172 (n + 1)

end A341172

/-!
# A341173: Numbers that when divided by the sum of their digits leave 6 as remainder.

The programs for A341173, the canonical program `A341173.P9765761011939025355` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341173 has offset 1).

The definition of A341173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341173.P9765761011939025355

`eq[6, A070635(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341173

/-- `eq[6, A070635(n+1)]+1` -/
def P9765761011939025355.Spec : Prop :=
  ∀ n, (P9765761011939025355.a n : ℤ) = A341173 (n + 1)

theorem P9765761011939025355.correct : P9765761011939025355.Spec := by
  intro n
  simp only [A341173, Nat.add_sub_cancel]

end A341173

/-! ## A341173.P8631289184355846879

`eq[6, A070635(A028310(n))]`
-/

namespace A341173.P8631289184355846879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341173.P8631289184355846879

namespace A341173

/-- `eq[6, A070635(A028310(n))]` -/
def P8631289184355846879.Spec : Prop :=
  ∀ n, (P8631289184355846879.a n : ℤ) = A341173 (n + 1)

end A341173

/-! ## A341173.P10720211372813460380

`A020725(eq[6, A070635(n+1)])`
-/

namespace A341173.P10720211372813460380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341173.P10720211372813460380

namespace A341173

/-- `A020725(eq[6, A070635(n+1)])` -/
def P10720211372813460380.Spec : Prop :=
  ∀ n, P10720211372813460380.a n = A341173 (n + 1)

end A341173

/-! ## A341173.P16313123289166625011

`A065475(eq[6, A070635(n+1)])`
-/

namespace A341173.P16313123289166625011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341173.P16313123289166625011

namespace A341173

/-- `A065475(eq[6, A070635(n+1)])` -/
def P16313123289166625011.Spec : Prop :=
  ∀ n, P16313123289166625011.a n = A341173 (n + 1)

end A341173

/-! ## A341173.P6846060266606500102

`A153152(eq[6, A070635(n+1)])`
-/

namespace A341173.P6846060266606500102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341173.P6846060266606500102

namespace A341173

/-- `A153152(eq[6, A070635(n+1)])` -/
def P6846060266606500102.Spec : Prop :=
  ∀ n, P6846060266606500102.a n = A341173 (n + 1)

end A341173

/-! ## A341173.P15891663249095629412

`eq[6, A070635(A065033(2*n))]`
-/

namespace A341173.P15891663249095629412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341173.P15891663249095629412

namespace A341173

/-- `eq[6, A070635(A065033(2*n))]` -/
def P15891663249095629412.Spec : Prop :=
  ∀ n, (P15891663249095629412.a n : ℤ) = A341173 (n + 1)

end A341173

/-! ## A341173.P717287556042189256

`eq[6, A070635(A123108(2*n))]`
-/

namespace A341173.P717287556042189256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341173.P717287556042189256

namespace A341173

/-- `eq[6, A070635(A123108(2*n))]` -/
def P717287556042189256.Spec : Prop :=
  ∀ n, (P717287556042189256.a n : ℤ) = A341173 (n + 1)

end A341173

/-! ## A341173.P8729218635026634847

`eq[6, A070635(A233583(n+1))]`
-/

namespace A341173.P8729218635026634847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341173.P8729218635026634847

namespace A341173

/-- `eq[6, A070635(A233583(n+1))]` -/
def P8729218635026634847.Spec : Prop :=
  ∀ n, (P8729218635026634847.a n : ℤ) = A341173 (n + 1)

end A341173

/-!
# A341174: Numbers that when divided by the sum of their digits leave 7 as remainder.

The programs for A341174, the canonical program `A341174.P17689288530692813440` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341174 has offset 1).

The definition of A341174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341174.P17689288530692813440

`eq[7, A070635(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341174

/-- `eq[7, A070635(n+1)]+1` -/
def P17689288530692813440.Spec : Prop :=
  ∀ n, (P17689288530692813440.a n : ℤ) = A341174 (n + 1)

theorem P17689288530692813440.correct : P17689288530692813440.Spec := by
  intro n
  simp only [A341174, Nat.add_sub_cancel]

end A341174

/-! ## A341174.P17573192063263919744

`eq[7, A070635(A028310(n))]`
-/

namespace A341174.P17573192063263919744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341174.P17573192063263919744

namespace A341174

/-- `eq[7, A070635(A028310(n))]` -/
def P17573192063263919744.Spec : Prop :=
  ∀ n, (P17573192063263919744.a n : ℤ) = A341174 (n + 1)

end A341174

/-! ## A341174.P8772213866741766893

`A020725(eq[7, A070635(n+1)])`
-/

namespace A341174.P8772213866741766893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341174.P8772213866741766893

namespace A341174

/-- `A020725(eq[7, A070635(n+1)])` -/
def P8772213866741766893.Spec : Prop :=
  ∀ n, P8772213866741766893.a n = A341174 (n + 1)

end A341174

/-! ## A341174.P7373085421541542762

`A065475(eq[7, A070635(n+1)])`
-/

namespace A341174.P7373085421541542762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341174.P7373085421541542762

namespace A341174

/-- `A065475(eq[7, A070635(n+1)])` -/
def P7373085421541542762.Spec : Prop :=
  ∀ n, P7373085421541542762.a n = A341174 (n + 1)

end A341174

/-! ## A341174.P7965481606493931376

`eq[7, A070635(A060000(n+1))]`
-/

namespace A341174.P7965481606493931376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341174.P7965481606493931376

namespace A341174

/-- `eq[7, A070635(A060000(n+1))]` -/
def P7965481606493931376.Spec : Prop :=
  ∀ n, (P7965481606493931376.a n : ℤ) = A341174 (n + 1)

end A341174

/-! ## A341174.P5829863741364284076

`eq[7, A070635(A123108(2*n))]`
-/

namespace A341174.P5829863741364284076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341174.P5829863741364284076

namespace A341174

/-- `eq[7, A070635(A123108(2*n))]` -/
def P5829863741364284076.Spec : Prop :=
  ∀ n, (P5829863741364284076.a n : ℤ) = A341174 (n + 1)

end A341174

/-! ## A341174.P1921252191864697437

`eq[2, A070635(A065033(2*n))-5]`
-/

namespace A341174.P1921252191864697437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A065033 (2 * n)).toNat - 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341174.P1921252191864697437

namespace A341174

/-- `eq[2, A070635(A065033(2*n))-5]` -/
def P1921252191864697437.Spec : Prop :=
  ∀ n, (P1921252191864697437.a n : ℤ) = A341174 (n + 1)

end A341174

/-!
# A341175: Numbers that when divided by the sum of their digits leave 8 as remainder.

The programs for A341175, the canonical program `A341175.P10433863649474303649` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341175 has offset 1).

The definition of A341175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341175.P10433863649474303649

`eq[8, A070635(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341175

/-- `eq[8, A070635(n+1)]+1` -/
def P10433863649474303649.Spec : Prop :=
  ∀ n, (P10433863649474303649.a n : ℤ) = A341175 (n + 1)

theorem P10433863649474303649.correct : P10433863649474303649.Spec := by
  intro n
  simp only [A341175, Nat.add_sub_cancel]

end A341175

/-! ## A341175.P5604797464526608923

`eq[8, A070635(A028310(n))]`
-/

namespace A341175.P5604797464526608923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341175.P5604797464526608923

namespace A341175

/-- `eq[8, A070635(A028310(n))]` -/
def P5604797464526608923.Spec : Prop :=
  ∀ n, (P5604797464526608923.a n : ℤ) = A341175 (n + 1)

end A341175

/-! ## A341175.P9165693353298969080

`A020725(eq[8, A070635(n+1)])`
-/

namespace A341175.P9165693353298969080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341175.P9165693353298969080

namespace A341175

/-- `A020725(eq[8, A070635(n+1)])` -/
def P9165693353298969080.Spec : Prop :=
  ∀ n, P9165693353298969080.a n = A341175 (n + 1)

end A341175

/-! ## A341175.P5016605146463678005

`A063660(eq[8, A070635(n+1)])`
-/

namespace A341175.P5016605146463678005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341175.P5016605146463678005

namespace A341175

/-- `A063660(eq[8, A070635(n+1)])` -/
def P5016605146463678005.Spec : Prop :=
  ∀ n, P5016605146463678005.a n = A341175 (n + 1)

end A341175

/-! ## A341175.P801997316560730164

`A065475(eq[8, A070635(n+1)])`
-/

namespace A341175.P801997316560730164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341175.P801997316560730164

namespace A341175

/-- `A065475(eq[8, A070635(n+1)])` -/
def P801997316560730164.Spec : Prop :=
  ∀ n, P801997316560730164.a n = A341175 (n + 1)

end A341175

/-! ## A341175.P11333625096627871789

`eq[8, A070635(A060000(n+1))]`
-/

namespace A341175.P11333625096627871789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341175.P11333625096627871789

namespace A341175

/-- `eq[8, A070635(A060000(n+1))]` -/
def P11333625096627871789.Spec : Prop :=
  ∀ n, (P11333625096627871789.a n : ℤ) = A341175 (n + 1)

end A341175

/-! ## A341175.P8844385797936981637

`eq[8, A070635(A065033(2*n))]`
-/

namespace A341175.P8844385797936981637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341175.P8844385797936981637

namespace A341175

/-- `eq[8, A070635(A065033(2*n))]` -/
def P8844385797936981637.Spec : Prop :=
  ∀ n, (P8844385797936981637.a n : ℤ) = A341175 (n + 1)

end A341175

/-!
# A341176: Numbers that when divided by the sum of their digits leave 9 as remainder.

The programs for A341176, the canonical program `A341176.P15006660648989176220` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341176 has offset 1).

The definition of A341176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341176.P15006660648989176220

`eq[9, A070635(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341176

/-- `eq[9, A070635(n+1)]+1` -/
def P15006660648989176220.Spec : Prop :=
  ∀ n, (P15006660648989176220.a n : ℤ) = A341176 (n + 1)

theorem P15006660648989176220.correct : P15006660648989176220.Spec := by
  intro n
  simp only [A341176, Nat.add_sub_cancel]

end A341176

/-! ## A341176.P8124966106662899550

`eq[9, A070635(A028310(n))]`
-/

namespace A341176.P8124966106662899550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341176.P8124966106662899550

namespace A341176

/-- `eq[9, A070635(A028310(n))]` -/
def P8124966106662899550.Spec : Prop :=
  ∀ n, (P8124966106662899550.a n : ℤ) = A341176 (n + 1)

end A341176

/-! ## A341176.P275118312348501395

`eq[9, A070635(or(n, A178225(n)))]`
-/

namespace A341176.P275118312348501395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (Int.lor (n : ℤ) (A178225 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341176.P275118312348501395

namespace A341176

/-- `eq[9, A070635(or(n, A178225(n)))]` -/
def P275118312348501395.Spec : Prop :=
  ∀ n, (P275118312348501395.a n : ℤ) = A341176 (n + 1)

end A341176

/-! ## A341176.P3151065031614142684

`eq[9, A070635(A065033(2*n))]`
-/

namespace A341176.P3151065031614142684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341176.P3151065031614142684

namespace A341176

/-- `eq[9, A070635(A065033(2*n))]` -/
def P3151065031614142684.Spec : Prop :=
  ∀ n, (P3151065031614142684.a n : ℤ) = A341176 (n + 1)

end A341176

/-! ## A341176.P8912975149359911373

`eq[9, A070635(A123108(2*n))]`
-/

namespace A341176.P8912975149359911373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341176.P8912975149359911373

namespace A341176

/-- `eq[9, A070635(A123108(2*n))]` -/
def P8912975149359911373.Spec : Prop :=
  ∀ n, (P8912975149359911373.a n : ℤ) = A341176 (n + 1)

end A341176

/-! ## A341176.P5309279507467550975

`eq[9, A070635(A233583(n+1))]`
-/

namespace A341176.P5309279507467550975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341176.P5309279507467550975

namespace A341176

/-- `eq[9, A070635(A233583(n+1))]` -/
def P5309279507467550975.Spec : Prop :=
  ∀ n, (P5309279507467550975.a n : ℤ) = A341176 (n + 1)

end A341176

/-!
# A341177: Numbers that when divided by the sum of their digits leave 10 as remainder.

The programs for A341177, the canonical program `A341177.P18272480648267130091` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341177 has offset 1).

The definition of A341177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341177.P18272480648267130091

`eq[10, A070635(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341177

/-- `eq[10, A070635(n+1)]+1` -/
def P18272480648267130091.Spec : Prop :=
  ∀ n, (P18272480648267130091.a n : ℤ) = A341177 (n + 1)

theorem P18272480648267130091.correct : P18272480648267130091.Spec := by
  intro n
  simp only [A341177, Nat.add_sub_cancel]

end A341177

/-! ## A341177.P1163517481355844883

`eq[10, A070635(A028310(n))]`
-/

namespace A341177.P1163517481355844883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341177.P1163517481355844883

namespace A341177

/-- `eq[10, A070635(A028310(n))]` -/
def P1163517481355844883.Spec : Prop :=
  ∀ n, (P1163517481355844883.a n : ℤ) = A341177 (n + 1)

end A341177

/-! ## A341177.P16583255938359954268

`A020725(eq[10, A070635(n+1)])`
-/

namespace A341177.P16583255938359954268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341177.P16583255938359954268

namespace A341177

/-- `A020725(eq[10, A070635(n+1)])` -/
def P16583255938359954268.Spec : Prop :=
  ∀ n, P16583255938359954268.a n = A341177 (n + 1)

end A341177

/-! ## A341177.P11683751768992179873

`eq[10, A070635(A060000(n+1))]`
-/

namespace A341177.P11683751768992179873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341177.P11683751768992179873

namespace A341177

/-- `eq[10, A070635(A060000(n+1))]` -/
def P11683751768992179873.Spec : Prop :=
  ∀ n, (P11683751768992179873.a n : ℤ) = A341177 (n + 1)

end A341177

/-! ## A341177.P1202914390570776757

`eq[10, A070635(A123108(2*n))]`
-/

namespace A341177.P1202914390570776757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341177.P1202914390570776757

namespace A341177

/-- `eq[10, A070635(A123108(2*n))]` -/
def P1202914390570776757.Spec : Prop :=
  ∀ n, (P1202914390570776757.a n : ℤ) = A341177 (n + 1)

end A341177

/-! ## A341177.P17806794897406056140

`eq[2, A070635(A065033(2*n))/5]`
-/

namespace A341177.P17806794897406056140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070635 (A065033 (2 * n)).toNat : ℚ) / 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A341177.P17806794897406056140

namespace A341177

/-- `eq[2, A070635(A065033(2*n))/5]` -/
def P17806794897406056140.Spec : Prop :=
  ∀ n, (P17806794897406056140.a n : ℤ) = A341177 (n + 1)

end A341177

/-!
# A341178: Numbers that when divided by the sum of their digits leave 11 as remainder.

The programs for A341178, the canonical program `A341178.P17104699675163153674` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341178 has offset 1).

The definition of A341178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341178.P17104699675163153674

`eq[11, A070635(A028310(n))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341178

/-- `eq[11, A070635(A028310(n))]` -/
def P17104699675163153674.Spec : Prop :=
  ∀ n, (P17104699675163153674.a n : ℤ) = A341178 (n + 1)

theorem P17104699675163153674.correct : P17104699675163153674.Spec := by
  intro n
  simp only [A341178, Nat.add_sub_cancel]

end A341178

/-! ## A341178.P17135284911827450490

`A020725(eq[11, A070635(n+1)])`
-/

namespace A341178.P17135284911827450490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341178.P17135284911827450490

namespace A341178

/-- `A020725(eq[11, A070635(n+1)])` -/
def P17135284911827450490.Spec : Prop :=
  ∀ n, P17135284911827450490.a n = A341178 (n + 1)

end A341178

/-! ## A341178.P707849115769929967

`eq[11, A070635(A233583(n+1))]`
-/

namespace A341178.P707849115769929967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341178.P707849115769929967

namespace A341178

/-- `eq[11, A070635(A233583(n+1))]` -/
def P707849115769929967.Spec : Prop :=
  ∀ n, (P707849115769929967.a n : ℤ) = A341178 (n + 1)

end A341178

/-!
# A341179: Numbers that when divided by the sum of their digits leave 12 as remainder.

The programs for A341179, the canonical program `A341179.P12941946526386532136` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341179 has offset 1).

The definition of A341179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 553 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341179.P9578826420958197916

`eq[12, A070635(round(acot(n)+n))]`
-/

namespace A341179.P9578826420958197916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341179.P9578826420958197916

namespace A341179

/-- `eq[12, A070635(round(acot(n)+n))]` -/
def P9578826420958197916.Spec : Prop :=
  ∀ n, (P9578826420958197916.a n : ℤ) = A341179 (n + 1)

end A341179

/-! ## A341179.P12941946526386532136

`eq[12, A070635(A028310(n))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341179

/-- `eq[12, A070635(A028310(n))]` -/
def P12941946526386532136.Spec : Prop :=
  ∀ n, (P12941946526386532136.a n : ℤ) = A341179 (n + 1)

theorem P12941946526386532136.correct : P12941946526386532136.Spec := by
  intro n
  simp only [A341179, Nat.add_sub_cancel]

end A341179

/-! ## A341179.P7947195599425856417

`A020725(eq[12, A070635(n+1)])`
-/

namespace A341179.P7947195599425856417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341179.P7947195599425856417

namespace A341179

/-- `A020725(eq[12, A070635(n+1)])` -/
def P7947195599425856417.Spec : Prop :=
  ∀ n, P7947195599425856417.a n = A341179 (n + 1)

end A341179

/-! ## A341179.P6701415934691169381

`A065475(eq[12, A070635(n+1)])`
-/

namespace A341179.P6701415934691169381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341179.P6701415934691169381

namespace A341179

/-- `A065475(eq[12, A070635(n+1)])` -/
def P6701415934691169381.Spec : Prop :=
  ∀ n, P6701415934691169381.a n = A341179 (n + 1)

end A341179

/-! ## A341179.P3111140497503417990

`eq[12, A070635(A060000(n+1))]`
-/

namespace A341179.P3111140497503417990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341179.P3111140497503417990

namespace A341179

/-- `eq[12, A070635(A060000(n+1))]` -/
def P3111140497503417990.Spec : Prop :=
  ∀ n, (P3111140497503417990.a n : ℤ) = A341179 (n + 1)

end A341179

/-!
# A341180: Numbers that when divided by the sum of their digits leave 13 as remainder.

The programs for A341180, the canonical program `A341180.P9443771648264716755` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341180 has offset 1).

The definition of A341180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341180.P9443771648264716755

`eq[13, A070635(A028310(n))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341180

/-- `eq[13, A070635(A028310(n))]` -/
def P9443771648264716755.Spec : Prop :=
  ∀ n, (P9443771648264716755.a n : ℤ) = A341180 (n + 1)

theorem P9443771648264716755.correct : P9443771648264716755.Spec := by
  intro n
  simp only [A341180, Nat.add_sub_cancel]

end A341180

/-! ## A341180.P9535643141987705824

`A020725(eq[13, A070635(n+1)])`
-/

namespace A341180.P9535643141987705824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341180.P9535643141987705824

namespace A341180

/-- `A020725(eq[13, A070635(n+1)])` -/
def P9535643141987705824.Spec : Prop :=
  ∀ n, P9535643141987705824.a n = A341180 (n + 1)

end A341180

/-! ## A341180.P18084177745597357523

`A065475(eq[13, A070635(n+1)])`
-/

namespace A341180.P18084177745597357523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341180.P18084177745597357523

namespace A341180

/-- `A065475(eq[13, A070635(n+1)])` -/
def P18084177745597357523.Spec : Prop :=
  ∀ n, P18084177745597357523.a n = A341180 (n + 1)

end A341180

/-! ## A341180.P1687269471267621240

`eq[13, A070635(A233583(n+1))]`
-/

namespace A341180.P1687269471267621240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341180.P1687269471267621240

namespace A341180

/-- `eq[13, A070635(A233583(n+1))]` -/
def P1687269471267621240.Spec : Prop :=
  ∀ n, (P1687269471267621240.a n : ℤ) = A341180 (n + 1)

end A341180

/-!
# A341181: Numbers that when divided by the sum of their digits leave 14 as remainder.

The programs for A341181, the canonical program `A341181.P18393765208184896138` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341181 has offset 1).

The definition of A341181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341181.P18393765208184896138

`eq[14, A070635(A028310(n))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341181

/-- `eq[14, A070635(A028310(n))]` -/
def P18393765208184896138.Spec : Prop :=
  ∀ n, (P18393765208184896138.a n : ℤ) = A341181 (n + 1)

theorem P18393765208184896138.correct : P18393765208184896138.Spec := by
  intro n
  simp only [A341181, Nat.add_sub_cancel]

end A341181

/-! ## A341181.P8892908147932475929

`eq[14, A070635(A233583(n+1))]`
-/

namespace A341181.P8892908147932475929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341181.P8892908147932475929

namespace A341181

/-- `eq[14, A070635(A233583(n+1))]` -/
def P8892908147932475929.Spec : Prop :=
  ∀ n, (P8892908147932475929.a n : ℤ) = A341181 (n + 1)

end A341181

/-!
# A341182: Numbers that when divided by the sum of their digits leave 15 as remainder.

The programs for A341182, the canonical program `A341182.P4357023591188978830` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341182 has offset 1).

The definition of A341182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341182.P4357023591188978830

`eq[15, A070635(A028310(n))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341182

/-- `eq[15, A070635(A028310(n))]` -/
def P4357023591188978830.Spec : Prop :=
  ∀ n, (P4357023591188978830.a n : ℤ) = A341182 (n + 1)

theorem P4357023591188978830.correct : P4357023591188978830.Spec := by
  intro n
  simp only [A341182, Nat.add_sub_cancel]

end A341182

/-! ## A341182.P3953739870786113624

`A020725(eq[15, A070635(n+1)])`
-/

namespace A341182.P3953739870786113624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341182.P3953739870786113624

namespace A341182

/-- `A020725(eq[15, A070635(n+1)])` -/
def P3953739870786113624.Spec : Prop :=
  ∀ n, P3953739870786113624.a n = A341182 (n + 1)

end A341182

/-! ## A341182.P11524998661024205011

`A065475(eq[15, A070635(n+1)])`
-/

namespace A341182.P11524998661024205011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341182.P11524998661024205011

namespace A341182

/-- `A065475(eq[15, A070635(n+1)])` -/
def P11524998661024205011.Spec : Prop :=
  ∀ n, P11524998661024205011.a n = A341182 (n + 1)

end A341182

/-! ## A341182.P13688264839644762565

`eq[15, A070635(A060000(n+1))]`
-/

namespace A341182.P13688264839644762565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341182.P13688264839644762565

namespace A341182

/-- `eq[15, A070635(A060000(n+1))]` -/
def P13688264839644762565.Spec : Prop :=
  ∀ n, (P13688264839644762565.a n : ℤ) = A341182 (n + 1)

end A341182

/-! ## A341182.P4868392785774477954

`eq[15, A070635(A233583(n+1))]`
-/

namespace A341182.P4868392785774477954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341182.P4868392785774477954

namespace A341182

/-- `eq[15, A070635(A233583(n+1))]` -/
def P4868392785774477954.Spec : Prop :=
  ∀ n, (P4868392785774477954.a n : ℤ) = A341182 (n + 1)

end A341182

/-!
# A341183: Numbers k such that (30*k)^4 + 1 is prime.

The programs for A341183, there is no canonical definition to state claims against.
-/

/-! ## A341183.P1229786363205073338

`eq[1, A193929(5*6*n)]`
-/

namespace A341183.P1229786363205073338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (5 * (6 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341183.P1229786363205073338

/-! ## A341183.P17328582880159903692

`eq[2, A193562(A249674(n))]`
-/

namespace A341183.P17328582880159903692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 (A249674 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341183.P17328582880159903692

/-!
# A341184: Number of ways to write n as an ordered sum of 5 nonzero decimal palindromes.

The programs for A341184, there is no canonical definition to state claims against.
-/

/-! ## A341184.P7755800286493905774

`∑[∑[∑[(n+1)/A327103(n²+1)]]]`
-/

namespace A341184.P7755800286493905774
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327103 (n ^ 2 + 1) : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341184.P7755800286493905774

/-! ## A341184.P16538296366387357003

`∑[∑[∑[n%A034190(3*(n+1))+1]]]`
-/

namespace A341184.P16538296366387357003
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A034190 (3 * (n + 1))) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341184.P16538296366387357003

/-! ## A341184.P4475630564780824752

`A145126(n+1)-A220777(A005043(n))`
-/

namespace A341184.P4475630564780824752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 (n + 1) - A220777 (A005043 n).toNat

end

end A341184.P4475630564780824752

/-! ## A341184.P14916945334728590341

`record[A096754(n+1)]-A000332(A145460(n))`
-/

namespace A341184.P14916945334728590341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000332 (A145460 n).toNat

end

end A341184.P14916945334728590341

/-! ## A341184.P6674850765694150573

`A090580(n+1)-A093569(A002478(n+3))`
-/

namespace A341184.P6674850765694150573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090580 (n + 1) - A093569 (A002478 (n + 3)).toNat

end

end A341184.P6674850765694150573

/-!
# A341185: a(n) = Sum_{k=0..n} k^n * k! * binomial(n,k)^2.

The programs for A341185, there is no canonical definition to state claims against.
-/

/-! ## A341185.P16501366602664766755

`A004277(A239773(n))-A239758(n)`
-/

namespace A341185.P16501366602664766755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A239773 n).toNat - A239758 n

end

end A341185.P16501366602664766755

/-!
# A341186: Numbers that when divided by the sum of their digits leave 16 as remainder.

The programs for A341186, the canonical program `A341186.P12014664352116713879` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341186 has offset 1).

The definition of A341186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341186.P12014664352116713879

`eq[16, A070635(A028310(n))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341186

/-- `eq[16, A070635(A028310(n))]` -/
def P12014664352116713879.Spec : Prop :=
  ∀ n, (P12014664352116713879.a n : ℤ) = A341186 (n + 1)

theorem P12014664352116713879.correct : P12014664352116713879.Spec := by
  intro n
  simp only [A341186, Nat.add_sub_cancel]

end A341186

/-! ## A341186.P3031464897270378933

`A020725(eq[16, A070635(n+1)])`
-/

namespace A341186.P3031464897270378933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341186.P3031464897270378933

namespace A341186

/-- `A020725(eq[16, A070635(n+1)])` -/
def P3031464897270378933.Spec : Prop :=
  ∀ n, P3031464897270378933.a n = A341186 (n + 1)

end A341186

/-! ## A341186.P14519887224912270393

`eq[16, A070635(A233583(n+1))]`
-/

namespace A341186.P14519887224912270393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341186.P14519887224912270393

namespace A341186

/-- `eq[16, A070635(A233583(n+1))]` -/
def P14519887224912270393.Spec : Prop :=
  ∀ n, (P14519887224912270393.a n : ℤ) = A341186 (n + 1)

end A341186

/-!
# A341187: Numbers that when divided by the sum of their digits leave 17 as remainder.

The programs for A341187, the canonical program `A341187.P15450679487401580348` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341187 has offset 1).

The definition of A341187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341187.P15450679487401580348

`eq[17, A070635(A028310(n))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341187

/-- `eq[17, A070635(A028310(n))]` -/
def P15450679487401580348.Spec : Prop :=
  ∀ n, (P15450679487401580348.a n : ℤ) = A341187 (n + 1)

theorem P15450679487401580348.correct : P15450679487401580348.Spec := by
  intro n
  simp only [A341187, Nat.add_sub_cancel]

end A341187

/-! ## A341187.P966604009427855365

`A020725(eq[17, A070635(n+1)])`
-/

namespace A341187.P966604009427855365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341187.P966604009427855365

namespace A341187

/-- `A020725(eq[17, A070635(n+1)])` -/
def P966604009427855365.Spec : Prop :=
  ∀ n, P966604009427855365.a n = A341187 (n + 1)

end A341187

/-! ## A341187.P5549054937771522243

`A065475(eq[17, A070635(n+1)])`
-/

namespace A341187.P5549054937771522243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341187.P5549054937771522243

namespace A341187

/-- `A065475(eq[17, A070635(n+1)])` -/
def P5549054937771522243.Spec : Prop :=
  ∀ n, P5549054937771522243.a n = A341187 (n + 1)

end A341187

/-! ## A341187.P38714471958439936

`eq[17, A070635(A060000(n+1))]`
-/

namespace A341187.P38714471958439936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341187.P38714471958439936

namespace A341187

/-- `eq[17, A070635(A060000(n+1))]` -/
def P38714471958439936.Spec : Prop :=
  ∀ n, (P38714471958439936.a n : ℤ) = A341187 (n + 1)

end A341187

/-! ## A341187.P17073486381966113780

`eq[17, A070635(A233583(n+1))]`
-/

namespace A341187.P17073486381966113780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341187.P17073486381966113780

namespace A341187

/-- `eq[17, A070635(A233583(n+1))]` -/
def P17073486381966113780.Spec : Prop :=
  ∀ n, (P17073486381966113780.a n : ℤ) = A341187 (n + 1)

end A341187

/-!
# A341188: Numbers that when divided by the sum of their digits leave 18 as remainder.

The programs for A341188, the canonical program `A341188.P7724309008278540306` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341188 has offset 1).

The definition of A341188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341188.P7724309008278540306

`eq[18, A070635(A028310(n))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341188

/-- `eq[18, A070635(A028310(n))]` -/
def P7724309008278540306.Spec : Prop :=
  ∀ n, (P7724309008278540306.a n : ℤ) = A341188 (n + 1)

theorem P7724309008278540306.correct : P7724309008278540306.Spec := by
  intro n
  simp only [A341188, Nat.add_sub_cancel]

end A341188

/-!
# A341189: Numbers that when divided by the sum of their digits leave 19 as remainder.

The programs for A341189, the canonical program `A341189.P6171068448427093631` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341189 has offset 1).

The definition of A341189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341189.P6171068448427093631

`eq[19, A070635(A028310(n))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A341189

/-- `eq[19, A070635(A028310(n))]` -/
def P6171068448427093631.Spec : Prop :=
  ∀ n, (P6171068448427093631.a n : ℤ) = A341189 (n + 1)

theorem P6171068448427093631.correct : P6171068448427093631.Spec := by
  intro n
  simp only [A341189, Nat.add_sub_cancel]

end A341189

/-! ## A341189.P16641131573885383600

`eq[19, A070635(A233583(n+1))]`
-/

namespace A341189.P16641131573885383600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341189.P16641131573885383600

namespace A341189

/-- `eq[19, A070635(A233583(n+1))]` -/
def P16641131573885383600.Spec : Prop :=
  ∀ n, (P16641131573885383600.a n : ℤ) = A341189 (n + 1)

end A341189

/-!
# A341192: Number of ways to write n as an ordered sum of 3 nonzero decimal palindromes.

The programs for A341192, there is no canonical definition to state claims against.
-/

/-! ## A341192.P2300189162540490534

`∑[∑[A061347(A189076(n))]]`
-/

namespace A341192.P2300189162540490534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (A189076 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341192.P2300189162540490534

/-! ## A341192.P12523016907090608174

`A261422(A187829(n+1))-(n+2)`
-/

namespace A341192.P12523016907090608174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261422 (A187829 (n + 1)).toNat - (n + 2 : ℤ)

end

end A341192.P12523016907090608174

/-! ## A341192.P6119189371340863576

`record[A261422(A000196(n²+1))]-(n+2)`
-/

namespace A341192.P6119189371340863576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261422 (A000196 (n ^ 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 2 : ℤ)

end

end A341192.P6119189371340863576

/-! ## A341192.P9703528457879698599

`∑[∑[A131713(A280399(n+1))]]`
-/

namespace A341192.P9703528457879698599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (A280399 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341192.P9703528457879698599

/-! ## A341192.P15492893682845904645

`record[A261422(n+1)-A261906(n+1)]`
-/

namespace A341192.P15492893682845904645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261422 (n + 1) - A261906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341192.P15492893682845904645

/-!
# A341193: Number of ways to write n as an ordered sum of 4 nonzero decimal palindromes.

The programs for A341193, there is no canonical definition to state claims against.
-/

/-! ## A341193.P6184380476255702812

`∑[∑[A189506(A032579(n+1))]]`
-/

namespace A341193.P6184380476255702812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189506 (A032579 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341193.P6184380476255702812

/-! ## A341193.P11256218662099585322

`∑[∑[A047813(A270393(n+1))]]`
-/

namespace A341193.P11256218662099585322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A270393 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341193.P11256218662099585322

/-! ## A341193.P10818936908643416990

`∑[A351870(∑[A351578(n+1)])]`
-/

namespace A341193.P10818936908643416990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341193.P10818936908643416990

/-! ## A341193.P16688987033583399215

`∑[record[A167976(∑[n+1])]]`
-/

namespace A341193.P16688987033583399215
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167976 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341193.P16688987033583399215

/-! ## A341193.P6610084979563142620

`∑[∑[dr(A124107(n+1)%62)]]`
-/

namespace A341193.P6610084979563142620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A124107 (n + 1)) 62)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341193.P6610084979563142620

/-!
# A341194: a(n) is the least k such that A340873(k) = n.

The programs for A341194, there is no canonical definition to state claims against.
-/

/-! ## A341194.P3794331040659046381

`A341220(∑[A341218(n)]-A341218(n))`
-/

namespace A341194.P3794331040659046381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341220 (∑ j ∈ Finset.range (n + 1), f1 j - A341218 n).toNat

end

end A341194.P3794331040659046381

/-!
# A341196: a(n) = Sum_{k=0..n} k^4 * (n-k)! * binomial(n,k)^2.

The programs for A341196, there is no canonical definition to state claims against.
-/

/-! ## A341196.P7121642862016559825

`n²*A002720(n)-A105219(n)`
-/

namespace A341196.P7121642862016559825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A002720 n - A105219 n

end

end A341196.P7121642862016559825

/-! ## A341196.P11754657577887779105

`n*(Δ[A052852(n)]-A002720(n))`
-/

namespace A341196.P11754657577887779105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n - A002720 n)

end

end A341196.P11754657577887779105

/-! ## A341196.P12400055092600744419

`A105218(n)+(n-1)*A105219(n)`
-/

namespace A341196.P12400055092600744419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105218 n + ((n : ℤ) - 1) * A105219 n

end

end A341196.P12400055092600744419

/-! ## A341196.P14393394151448898313

`A341200(A052905(n+2))`
-/

namespace A341196.P14393394151448898313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341200 (A052905 (n + 2)).toNat

end

end A341196.P14393394151448898313

/-! ## A341196.P3695312866891340413

`A341200(A027379(n+3)-2)`
-/

namespace A341196.P3695312866891340413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341200 (A027379 (n + 3) - 2).toNat

end

end A341196.P3695312866891340413

/-!
# A341197: a(n) = Sum_{k=0..n} k^n * (n-k)! * binomial(n,k)^2.

The programs for A341197, there is no canonical definition to state claims against.
-/

/-! ## A341197.P5362523681110617636

`A341200(∑[4*n])`
-/

namespace A341197.P5362523681110617636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341200 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341197.P5362523681110617636

/-! ## A341197.P9299679361612747187

`A341200(A046092(n))+A025439(n)`
-/

namespace A341197.P9299679361612747187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341200 (A046092 n).toNat + A025439 n

end

end A341197.P9299679361612747187

/-! ## A341197.P8655251001016826051

`A341200(A046092(n))+A151909(n+1)`
-/

namespace A341197.P8655251001016826051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341200 (A046092 n).toNat + A151909 (n + 1)

end

end A341197.P8655251001016826051

/-! ## A341197.P8991375287469154949

`A341200(A046092(n))+A000007(2*n+3)`
-/

namespace A341197.P8991375287469154949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341200 (A046092 n).toNat + A000007 (2 * n + 3)

end

end A341197.P8991375287469154949

/-!
# A341198: Number of points on or inside the circle of radius n, as rasterized by the midpoint circle algorithm.

The programs for A341198, there is no canonical definition to state claims against.
-/

/-! ## A341198.P2733613081996954071

`A341199(n)+a(n-1)` with `a(0)=1`
-/

namespace A341198.P2733613081996954071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A341199 n + a (n - 1)

end

end A341198.P2733613081996954071

/-! ## A341198.P16664511891496609961

`∑[A341199(n+1)]+1-A341199(n+1)`
-/

namespace A341198.P16664511891496609961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A341199 (n + 1))

end

end A341198.P16664511891496609961

/-! ## A341198.P15617463618707917812

`A024000(A341199(n+1))+∑[A341199(n+1)]`
-/

namespace A341198.P15617463618707917812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A341199 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341198.P15617463618707917812

/-! ## A341198.P2660490869640878469

`A109613(∑[A341199(n+1)]-A341199(n+1))`
-/

namespace A341198.P2660490869640878469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f1 j - A341199 (n + 1)).toNat

end

end A341198.P2660490869640878469

/-! ## A341198.P6329774026728414726

`A057655(A263511(n)%A153542(n))`
-/

namespace A341198.P6329774026728414726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (Int.tmod (A263511 n) (A153542 n)).toNat

end

end A341198.P6329774026728414726

/-!
# A341199: First differences of A341198.

The programs for A341199, there is no canonical definition to state claims against.
-/

/-! ## A341199.P10297105061053706969

`A341198(n+1)-A341198(n)`
-/

namespace A341199.P10297105061053706969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341198 (n + 1) - A341198 n

end

end A341199.P10297105061053706969

/-! ## A341199.P4734363875560441946

`Δ[A341198(n)]`
-/

namespace A341199.P4734363875560441946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341199.P4734363875560441946

/-! ## A341199.P17450090697053256888

`Δ[A057655(A263511(n)%A153542(n))]`
-/

namespace A341199.P17450090697053256888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (Int.tmod (A263511 n) (A153542 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341199.P17450090697053256888

