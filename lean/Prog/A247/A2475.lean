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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
# A247500: Triangle read by rows: T(n, k) = n!*binomial(n + 1, k)/(k + 1)!, 0 <= k <= n.

The programs for A247500, the canonical program `A247500.P7727794814474457671` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247500 has offset 0).

The definition of A247500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247500.P7727794814474457671

`A001263(n+1)*A119502(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A247500

/-- `A001263(n+1)*A119502(n)` -/
def P7727794814474457671.Spec : Prop :=
  ∀ n, P7727794814474457671.a n = A247500 n

theorem P7727794814474457671.correct : P7727794814474457671.Spec := by
  intro n
  simp only [A247500]

end A247500

/-! ## A247500.P2514953543368390483

`A025581(n)!*A001263(n+1)`
-/

namespace A247500.P2514953543368390483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A001263 (n + 1)

end

end A247500.P2514953543368390483

namespace A247500

/-- `A025581(n)!*A001263(n+1)` -/
def P2514953543368390483.Spec : Prop :=
  ∀ n, P2514953543368390483.a n = A247500 n

end A247500

/-! ## A247500.P420581644112336694

`A000142(A004736(n+1)-1)*A001263(n+1)`
-/

namespace A247500.P420581644112336694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A004736 (n + 1) - 1).toNat * A001263 (n + 1)

end

end A247500.P420581644112336694

namespace A247500

/-- `A000142(A004736(n+1)-1)*A001263(n+1)` -/
def P420581644112336694.Spec : Prop :=
  ∀ n, P420581644112336694.a n = A247500 n

end A247500

/-! ## A247500.P9012582534914865014

`abs(A066667(n)/A004736(n+1))`
-/

namespace A247500.P9012582534914865014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A066667 n : ℚ) / (A004736 (n + 1) : ℚ)|

end

end A247500.P9012582534914865014

namespace A247500

/-- `abs(A066667(n)/A004736(n+1))` -/
def P9012582534914865014.Spec : Prop :=
  ∀ n, P9012582534914865014.a n = (A247500 n : ℚ)

end A247500

/-! ## A247500.P3185534906034402426

`abs(A066667(n)/(A025581(n)+1))`
-/

namespace A247500.P3185534906034402426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A066667 n : ℚ) / (A025581 n + 1 : ℚ)|

end

end A247500.P3185534906034402426

namespace A247500

/-- `abs(A066667(n)/(A025581(n)+1))` -/
def P3185534906034402426.Spec : Prop :=
  ∀ n, P3185534906034402426.a n = (A247500 n : ℚ)

end A247500

/-! ## A247500.P889731245794722396

`A105278(n+1)/A004736(n+1)`
-/

namespace A247500.P889731245794722396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105278 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A247500.P889731245794722396

namespace A247500

/-- `A105278(n+1)/A004736(n+1)` -/
def P889731245794722396.Spec : Prop :=
  ∀ n, P889731245794722396.a n = (A247500 n : ℚ)

end A247500

/-! ## A247500.P4715949214286012823

`A105278(n+1)/(A025581(n)+1)`
-/

namespace A247500.P4715949214286012823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105278 (n + 1) : ℚ) / (A025581 n + 1 : ℚ)

end

end A247500.P4715949214286012823

namespace A247500

/-- `A105278(n+1)/(A025581(n)+1)` -/
def P4715949214286012823.Spec : Prop :=
  ∀ n, P4715949214286012823.a n = (A247500 n : ℚ)

end A247500

/-! ## A247500.P14406717956239740121

`abs(A008297(n+1)/A004736(n+1))`
-/

namespace A247500.P14406717956239740121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A008297 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)|

end

end A247500.P14406717956239740121

namespace A247500

/-- `abs(A008297(n+1)/A004736(n+1))` -/
def P14406717956239740121.Spec : Prop :=
  ∀ n, P14406717956239740121.a n = (A247500 n : ℚ)

end A247500

/-! ## A247500.P3990161903328790919

`A105278(n+1)/A132159(n)*A094587(n)`
-/

namespace A247500.P3990161903328790919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105278 (n + 1) : ℚ) / (A132159 n : ℚ) * (A094587 n : ℚ)

end

end A247500.P3990161903328790919

namespace A247500

/-- `A105278(n+1)/A132159(n)*A094587(n)` -/
def P3990161903328790919.Spec : Prop :=
  ∀ n, P3990161903328790919.a n = (A247500 n : ℚ)

end A247500

/-! ## A247500.P5488170364902728289

`A156992(n+1)/A288777(n+1)`
-/

namespace A247500.P5488170364902728289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156992 (n + 1) : ℚ) / (A288777 (n + 1) : ℚ)

end

end A247500.P5488170364902728289

namespace A247500

/-- `A156992(n+1)/A288777(n+1)` -/
def P5488170364902728289.Spec : Prop :=
  ∀ n, P5488170364902728289.a n = (A247500 n : ℚ)

end A247500

/-! ## A247500.P11719351423462731214

`A079621(n+1)/A130322(n)`
-/

namespace A247500.P11719351423462731214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079621 (n + 1) : ℚ) / (A130322 n : ℚ)

end

end A247500.P11719351423462731214

namespace A247500

/-- `A079621(n+1)/A130322(n)` -/
def P11719351423462731214.Spec : Prop :=
  ∀ n, P11719351423462731214.a n = (A247500 n : ℚ)

end A247500

/-!
# A247502: Triangle read by rows: coefficients of polynomials related to the exponential generating function of sequences generated by Narayana polynomials evaluated at the integers; n>=1, 0<=k

The programs for A247502, there is no canonical definition to state claims against.
-/

/-! ## A247502.P1300548543658574357

`A047885(A022173(n))+A047874(n+1)`
-/

namespace A247502.P1300548543658574357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047885 (A022173 n).toNat + A047874 (n + 1)

end

end A247502.P1300548543658574357

/-! ## A247502.P12931573770553510868

`A047874(n+1)-A213185(A022171(n))`
-/

namespace A247502.P12931573770553510868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (n + 1) - A213185 (A022171 n).toNat

end

end A247502.P12931573770553510868

/-! ## A247502.P9827551655381539551

`A047874(n+1)-A184946(A099927(n))`
-/

namespace A247502.P9827551655381539551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (n + 1) - A184946 (A099927 n).toNat

end

end A247502.P9827551655381539551

/-! ## A247502.P6602987271918089336

`A047874(n+1)-A219745(A109128(n))`
-/

namespace A247502.P6602987271918089336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (n + 1) - A219745 (A109128 n).toNat

end

end A247502.P6602987271918089336

/-! ## A247502.P5950469842800555602

`A089867(A047874(n+1))`
-/

namespace A247502.P5950469842800555602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A047874 (n + 1)).toNat

end

end A247502.P5950469842800555602

/-!
# A247503: Completely multiplicative with a(prime(n)) = prime(n)^(n mod 2).

The programs for A247503, there is no canonical definition to state claims against.
-/

/-! ## A247503.P8612936335072695048

`(n+1)/A248101(n+1)`
-/

namespace A247503.P8612936335072695048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A248101 (n + 1) : ℚ)

end

end A247503.P8612936335072695048

/-! ## A247503.P16180162318675839266

`A319525(A319521(n+1))`
-/

namespace A247503.P16180162318675839266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319525 (A319521 (n + 1)).toNat

end

end A247503.P16180162318675839266

/-! ## A247503.P17016902026930940836

`(n+1)/A297002(A319522(n+1))`
-/

namespace A247503.P17016902026930940836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A297002 (A319522 (n + 1)).toNat : ℚ)

end

end A247503.P17016902026930940836

/-! ## A247503.P10953958294589860523

`A374611(A248101(A374611(n+1)))`
-/

namespace A247503.P10953958294589860523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374611 (A248101 (A374611 (n + 1)).toNat).toNat

end

end A247503.P10953958294589860523

/-! ## A247503.P16715085583697680428

`A319525(A319522(A061898(n+1)))`
-/

namespace A247503.P16715085583697680428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319525 (A319522 (A061898 (n + 1)).toNat).toNat

end

end A247503.P16715085583697680428

/-! ## A247503.P465926093621240583

`A064989(A248101(A003961(n+1)))`
-/

namespace A247503.P465926093621240583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A248101 (A003961 (n + 1)).toNat).toNat

end

end A247503.P465926093621240583

/-! ## A247503.P14412747486722720727

`A061898(A297002(A319521(A319522(A297002(n+1)))))`
-/

namespace A247503.P14412747486722720727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A297002 (A319521 (A319522 (A297002 (n + 1)).toNat).toNat).toNat).toNat

end

end A247503.P14412747486722720727

/-! ## A247503.P18215270794667712494

`A126988(A248101(n+1)+∑[n])`
-/

namespace A247503.P18215270794667712494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A248101 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A247503.P18215270794667712494

/-! ## A247503.P13476871127304478428

`A010766(A248101(n+1)+A000217(n))`
-/

namespace A247503.P13476871127304478428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A248101 (n + 1) + A000217 n).toNat

end

end A247503.P13476871127304478428

/-! ## A247503.P7291455724252540053

`A049834(A248101(n+1)+A000217(n))`
-/

namespace A247503.P7291455724252540053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A248101 (n + 1) + A000217 n).toNat

end

end A247503.P7291455724252540053

/-! ## A247503.P7360694223580552238

`A051537(A248101(n+1)+A000217(n))`
-/

namespace A247503.P7360694223580552238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A248101 (n + 1) + A000217 n).toNat

end

end A247503.P7360694223580552238

/-! ## A247503.P11920859684240519825

`A327405(3*49*(n+1))`
-/

namespace A247503.P11920859684240519825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327405 (3 * (49 * (n + 1)))

end

end A247503.P11920859684240519825

/-!
# A247504: Square array read by antidiagonals, A(n,k) = k!*[x^k]((1-Sum_{j=1..n} x^j)^(-1)), (n>=0,k>=0).

The programs for A247504, there is no canonical definition to state claims against.
-/

/-! ## A247504.P919029013828031553

`(n-C(∑[char[∑[n]]], 2))!*A247506(n)`
-/

namespace A247504.P919029013828031553
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℤ) * A247506 n

end

end A247504.P919029013828031553

/-! ## A247504.P13212368533278337539

`A233543(n)*A247506(n)`
-/

namespace A247504.P13212368533278337539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A247506 n

end

end A247504.P13212368533278337539

/-! ## A247504.P5620106354697218550

`A002262(n)!*A247506(n)`
-/

namespace A247504.P5620106354697218550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A247506 n

end

end A247504.P5620106354697218550

/-! ## A247504.P160307801293141765

`A191532(n)!*A247506(n)`
-/

namespace A247504.P160307801293141765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A191532 n).toNat : ℤ) * A247506 n

end

end A247504.P160307801293141765

/-! ## A247504.P14849485530941382286

`A025668(n+1)!*A247506(n)`
-/

namespace A247504.P14849485530941382286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025668 (n + 1)).toNat : ℤ) * A247506 n

end

end A247504.P14849485530941382286

/-! ## A247504.P11633288306703347265

`A144328(n+1)!*A247506(n)`
-/

namespace A247504.P11633288306703347265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A247506 n

end

end A247504.P11633288306703347265

/-! ## A247504.P9470743731282297497

`A021009(A112367(n))*A247506(n)`
-/

namespace A247504.P9470743731282297497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (A112367 n).toNat * A247506 n

end

end A247504.P9470743731282297497

/-! ## A247504.P1355483427163930056

`A112624(A059268(n))*A247506(n)`
-/

namespace A247504.P1355483427163930056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A059268 n).toNat * A247506 n

end

end A247504.P1355483427163930056

/-! ## A247504.P3106284979357881278

`A119502(A061579(n))*A247506(n)`
-/

namespace A247504.P3106284979357881278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A061579 n).toNat * A247506 n

end

end A247504.P3106284979357881278

/-!
# A247505: Generalized Lucas numbers: square array A(n,k) read by antidiagonals, A(n,k)=(-1)^(k+1)*k*[x^k](-log((1+sum_{j=1..n}(-1)^(j+1)*x^j)^(-1))), (n>=0, k>=0).

The programs for A247505, there is no canonical definition to state claims against.
-/

/-! ## A247505.P842464413967122001

`A051903(A316723(n)!)`
-/

namespace A247505.P842464413967122001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Nat.factorial (A316723 n).toNat)

end

end A247505.P842464413967122001

/-! ## A247505.P8401679663487427536

`A011371(A316723(n)%A129286(n))`
-/

namespace A247505.P8401679663487427536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (Int.tmod (A316723 n) (A129286 n)).toNat

end

end A247505.P8401679663487427536

/-! ## A247505.P8369626725826125425

`A186732(n+1)%A152977(n)`
-/

namespace A247505.P8369626725826125425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186732 (n + 1)) (A152977 n)

end

end A247505.P8369626725826125425

/-! ## A247505.P14581456031516106126

`A362756(A394444(n))`
-/

namespace A247505.P14581456031516106126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362756 (A394444 n).toNat

end

end A247505.P14581456031516106126

/-! ## A247505.P12674697806671778336

`A007814(A316723(n)!)`
-/

namespace A247505.P12674697806671778336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Nat.factorial (A316723 n).toNat)

end

end A247505.P12674697806671778336

/-!
# A247506: Generalized Fibonacci numbers: square array A(n,k) read by ascending antidiagonals, A(n,k) = [x^k]((1-Sum_{j=1..n} x^j)^(-1)), (n>=0, k>=0).

The programs for A247506, there is no canonical definition to state claims against.
-/

/-! ## A247506.P3878555638602322339

`A092921(abs(1-n)+∑[2*n]%comp[∑[n]]-n)`
-/

namespace A247506.P3878555638602322339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (|1 - (n : ℤ)| + ((((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A247506.P3878555638602322339

/-! ## A247506.P2612620794874224003

`A092921(abs(1-A061579(n)))`
-/

namespace A247506.P2612620794874224003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 |1 - A061579 n|.toNat

end

end A247506.P2612620794874224003

/-! ## A247506.P16406307220326824825

`A092921(abs(2-A038722(n+1)))`
-/

namespace A247506.P16406307220326824825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 |2 - A038722 (n + 1)|.toNat

end

end A247506.P16406307220326824825

/-! ## A247506.P842772504712562644

`A092921(A061579(n)-A158388(n))`
-/

namespace A247506.P842772504712562644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A061579 n - A158388 n).toNat

end

end A247506.P842772504712562644

/-! ## A247506.P15954022197337824925

`A092921(A153881(n+1)+A061579(n))`
-/

namespace A247506.P15954022197337824925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A153881 (n + 1) + A061579 n).toNat

end

end A247506.P15954022197337824925

/-! ## A247506.P11212067177939028885

`C(A144406(A122797(n+1)), A166124(n))`
-/

namespace A247506.P11212067177939028885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144406 (A122797 (n + 1)).toNat).toNat (A166124 n).toNat

end

end A247506.P11212067177939028885

/-! ## A247506.P6099835038610200989

`A092921(A038722(n+2)-A019433(2*n))`
-/

namespace A247506.P6099835038610200989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A038722 (n + 2) - A019433 (2 * n)).toNat

end

end A247506.P6099835038610200989

/-! ## A247506.P13437114909630764276

`A144406(A122797(n+1))-A023531(A080036(n))`
-/

namespace A247506.P13437114909630764276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144406 (A122797 (n + 1)).toNat - A023531 (A080036 n).toNat

end

end A247506.P13437114909630764276

/-! ## A247506.P16877598847407349740

`A144406(A122797(n+1))-A000007(A144064(n))`
-/

namespace A247506.P16877598847407349740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144406 (A122797 (n + 1)).toNat - A000007 (A144064 n).toNat

end

end A247506.P16877598847407349740

/-! ## A247506.P10262491227890023934

`A247504(n)/A233543(n)`
-/

namespace A247506.P10262491227890023934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247504 n : ℚ) / (A233543 n : ℚ)

end

end A247506.P10262491227890023934

/-!
# A247507: Square array read by ascending antidiagonals, n>=0, k>=0. Row n is the expansion of (1-n*x-sqrt(n^2*x^2-2*n*x-4*x+1))/(2*x).

The programs for A247507, there is no canonical definition to state claims against.
-/

/-! ## A247507.P11144819730689953825

`A193592(n)*A204057(A028310(n))`
-/

namespace A247507.P11144819730689953825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n * A204057 (A028310 n).toNat

end

end A247507.P11144819730689953825

/-! ## A247507.P10151148133852882494

`A193592(n)*A204057(A233583(n+1))`
-/

namespace A247507.P10151148133852882494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n * A204057 (A233583 (n + 1)).toNat

end

end A247507.P10151148133852882494

/-! ## A247507.P18312181754502486859

`A336358(A158825(n+1))`
-/

namespace A247507.P18312181754502486859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336358 (A158825 (n + 1)).toNat

end

end A247507.P18312181754502486859

/-! ## A247507.P8998289742554763474

`A294498(comp[∑[n-1]]%A211746(n+1))`
-/

namespace A247507.P8998289742554763474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294498 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A211746 (n + 1))).toNat

end

end A247507.P8998289742554763474

/-! ## A247507.P5185836721096218257

`A098474(n)+A058343(A330965(n))`
-/

namespace A247507.P5185836721096218257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098474 n + A058343 (A330965 n).toNat

end

end A247507.P5185836721096218257

/-!
# A247509: Number of preprimes (A156759, n>1) such that the smallest prime divisor equals prime(n).

The programs for A247509, there is no canonical definition to state claims against.
-/

/-! ## A247509.P9881655900337951947

`A228098(n+1)+A054977(n)`
-/

namespace A247509.P9881655900337951947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1) + A054977 n

end

end A247509.P9881655900337951947

/-! ## A247509.P13916548617560449057

`A228098(n+1)+A057428(n)+2`
-/

namespace A247509.P13916548617560449057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1) + (A057428 n + 2)

end

end A247509.P13916548617560449057

/-! ## A247509.P14304132136503501438

`A228098(n+1)+2-A057427(n)`
-/

namespace A247509.P14304132136503501438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1) + (2 - A057427 n)

end

end A247509.P14304132136503501438

/-! ## A247509.P15039483547128423484

`A228098(n+1)+A014963(A016825(n))`
-/

namespace A247509.P15039483547128423484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1) + A014963 (A016825 n).toNat

end

end A247509.P15039483547128423484

/-! ## A247509.P17715789506912800530

`A228098(n+1)+A000034(A125509(n))`
-/

namespace A247509.P17715789506912800530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1) + A000034 (A125509 n).toNat

end

end A247509.P17715789506912800530

/-! ## A247509.P15086018346990662290

`A228098(n+1)+A040001(A000040(n+1))`
-/

namespace A247509.P15086018346990662290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1) + A040001 (A000040 (n + 1)).toNat

end

end A247509.P15086018346990662290

/-! ## A247509.P18073547356534510751

`A228098(n+1)+A000034(A000010(n+2))`
-/

namespace A247509.P18073547356534510751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1) + A000034 (A000010 (n + 2)).toNat

end

end A247509.P18073547356534510751

/-! ## A247509.P1094287338359428009

`A328570(∑{d}[n+1, A008683(#)])+A228098(n+1)`
-/

namespace A247509.P1094287338359428009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 (∑ d ∈ Nat.divisors (f1 n), A008683 d).toNat + A228098 (n + 1)

end

end A247509.P1094287338359428009

/-! ## A247509.P2069209623094756089

`A000720(A000040(n+1)+1)+A228098(n+1)-n`
-/

namespace A247509.P2069209623094756089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 1) + 1).toNat + (A228098 (n + 1) - (n : ℤ))

end

end A247509.P2069209623094756089

/-! ## A247509.P14178054820338730598

`A000035(A064269(n+1))+A228098(n+1)+1`
-/

namespace A247509.P14178054820338730598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A064269 (n + 1)).toNat + (A228098 (n + 1) + 1)

end

end A247509.P14178054820338730598

/-! ## A247509.P11028388877679384613

`A288636(3*A178604(n+1))+A228098(n+1)`
-/

namespace A247509.P11028388877679384613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288636 (3 * A178604 (n + 1)).toNat + A228098 (n + 1)

end

end A247509.P11028388877679384613

/-! ## A247509.P2877764582828766930

`A228098(n+1)+2-and(1, A000051(n))`
-/

namespace A247509.P2877764582828766930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1) + (2 - Int.land 1 (A000051 n))

end

end A247509.P2877764582828766930

/-! ## A247509.P6360541498611240961

`A228098(n+1)+and(A000051(n+1), A000051(n))`
-/

namespace A247509.P6360541498611240961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1) + Int.land (A000051 (n + 1)) (A000051 n)

end

end A247509.P6360541498611240961

/-! ## A247509.P18087138459001355291

`A228098(n+1)+2-A089309(n²)`
-/

namespace A247509.P18087138459001355291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1) + (2 - A089309 (n ^ 2))

end

end A247509.P18087138459001355291

/-!
# A247512: The curvature (rounded down) of touching circles inscribed in a special way in the smaller segment of circle of radius 10/9 divided by a chord of length 4/3.

The programs for A247512, there is no canonical definition to state claims against.
-/

/-! ## A247512.P7681202765409343453

`A273865(a(n-1)+n-2)+n+1` with `a(0)=9`
-/

namespace A247512.P7681202765409343453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A273865 (a (n - 1) + ((n : ℤ) - 2)).toNat + (n + 1 : ℤ)

end

end A247512.P7681202765409343453

/-! ## A247512.P12658389475441706582

`A002024(A147536(n)+32)`
-/

namespace A247512.P12658389475441706582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A147536 n + 32).toNat

end

end A247512.P12658389475441706582

/-! ## A247512.P8849289439484590407

`∑[A065708(A171625(n+1))]+8`
-/

namespace A247512.P8849289439484590407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065708 (A171625 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A247512.P8849289439484590407

/-!
# A247513: Number of elements in the set {(x,y,z): 1<=x,y,z<=n, gcd(x,y,z)=1, lcm(x,y,z)=n}.

The programs for A247513, the canonical program `A247513.P11269454306953394611` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247513 has offset 1).

The definition of A247513 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A247513.P11269454306953394611

`6^A001221(n+1)*A005361(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A247513

/-- `6^A001221(n+1)*A005361(n+1)` -/
def P11269454306953394611.Spec : Prop :=
  ∀ n, P11269454306953394611.a n = (A247513 (n + 1) : ℚ)

end A247513

/-! ## A247513.P17550386044381818779

`∏{e}[n+1, 6*#]`
-/

namespace A247513.P17550386044381818779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 6 * Nat.factorization (f1 n) p

end

end A247513.P17550386044381818779

namespace A247513

/-- `∏{e}[n+1, 6*#]` -/
def P17550386044381818779.Spec : Prop :=
  ∀ n, (P17550386044381818779.a n : ℤ) = A247513 (n + 1)

end A247513

/-! ## A247513.P2297344869739994852

`∏{p}[n+1, 6*val(n+1, #)]`
-/

namespace A247513.P2297344869739994852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 6 * SequenceMachineLib.valuation (n + 1) p

end

end A247513.P2297344869739994852

namespace A247513

/-- `∏{p}[n+1, 6*val(n+1, #)]` -/
def P2297344869739994852.Spec : Prop :=
  ∀ n, (P2297344869739994852.a n : ℤ) = A247513 (n + 1)

end A247513

/-! ## A247513.P13982680850294522776

`∏{p}[n+1, val((n+1)^6, #)]`
-/

namespace A247513.P13982680850294522776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation ((n + 1) ^ 6) p

end

end A247513.P13982680850294522776

namespace A247513

/-- `∏{p}[n+1, val((n+1)^6, #)]` -/
def P13982680850294522776.Spec : Prop :=
  ∀ n, (P13982680850294522776.a n : ℤ) = A247513 (n + 1)

end A247513

/-! ## A247513.P9919762479962439952

`A034444(n+1)*A226602(n+1)`
-/

namespace A247513.P9919762479962439952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A226602 (n + 1)

end

end A247513.P9919762479962439952

namespace A247513

/-- `A034444(n+1)*A226602(n+1)` -/
def P9919762479962439952.Spec : Prop :=
  ∀ n, P9919762479962439952.a n = A247513 (n + 1)

end A247513

/-! ## A247513.P17223834134805753900

`A074816(n+1)*A322327(n+1)`
-/

namespace A247513.P17223834134805753900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (n + 1) * A322327 (n + 1)

end

end A247513.P17223834134805753900

namespace A247513

/-- `A074816(n+1)*A322327(n+1)` -/
def P17223834134805753900.Spec : Prop :=
  ∀ n, P17223834134805753900.a n = A247513 (n + 1)

end A247513

/-! ## A247513.P13900808885675887111

`∑{d}[n+1, A008683(#)*A070919((n+1)/#)]`
-/

namespace A247513.P13900808885675887111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A070919 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247513.P13900808885675887111

namespace A247513

/-- `∑{d}[n+1, A008683(#)*A070919((n+1)/#)]` -/
def P13900808885675887111.Spec : Prop :=
  ∀ n, P13900808885675887111.a n = A247513 (n + 1)

end A247513

/-! ## A247513.P8274234658275441965

`∑{d}[n+1, A007428(#)*A097988((n+1)/#)]`
-/

namespace A247513.P8274234658275441965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A097988 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247513.P8274234658275441965

namespace A247513

/-- `∑{d}[n+1, A007428(#)*A097988((n+1)/#)]` -/
def P8274234658275441965.Spec : Prop :=
  ∀ n, P8274234658275441965.a n = A247513 (n + 1)

end A247513

/-! ## A247513.P10113579677101806156

`∑{d}[n+1, A007427(#)*A319089((n+1)/#)]`
-/

namespace A247513.P10113579677101806156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A319089 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247513.P10113579677101806156

namespace A247513

/-- `∑{d}[n+1, A007427(#)*A319089((n+1)/#)]` -/
def P10113579677101806156.Spec : Prop :=
  ∀ n, P10113579677101806156.a n = A247513 (n + 1)

end A247513

/-! ## A247513.P8152301953141482612

`∑{d}[n+1, A046692(#)*A344132((n+1)/#)]`
-/

namespace A247513.P8152301953141482612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A344132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247513.P8152301953141482612

namespace A247513

/-- `∑{d}[n+1, A046692(#)*A344132((n+1)/#)]` -/
def P8152301953141482612.Spec : Prop :=
  ∀ n, P8152301953141482612.a n = A247513 (n + 1)

end A247513

/-! ## A247513.P13285244172635281897

`A061142(A007947(n+1))*A226602(n+1)`
-/

namespace A247513.P13285244172635281897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A007947 (n + 1)).toNat * A226602 (n + 1)

end

end A247513.P13285244172635281897

namespace A247513

/-- `A061142(A007947(n+1))*A226602(n+1)` -/
def P13285244172635281897.Spec : Prop :=
  ∀ n, P13285244172635281897.a n = A247513 (n + 1)

end A247513

/-! ## A247513.P13052482616229251981

`A226602(n+1)/A005361(n+1)*A322327(n+1)`
-/

namespace A247513.P13052482616229251981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226602 (n + 1) : ℚ) / (A005361 (n + 1) : ℚ) * (A322327 (n + 1) : ℚ)

end

end A247513.P13052482616229251981

namespace A247513

/-- `A226602(n+1)/A005361(n+1)*A322327(n+1)` -/
def P13052482616229251981.Spec : Prop :=
  ∀ n, P13052482616229251981.a n = (A247513 (n + 1) : ℚ)

end A247513

/-! ## A247513.P13138087192318948077

`A226602(n+1)/A322327(n+1)*A322328(n+1)`
-/

namespace A247513.P13138087192318948077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226602 (n + 1) : ℚ) / (A322327 (n + 1) : ℚ) * (A322328 (n + 1) : ℚ)

end

end A247513.P13138087192318948077

namespace A247513

/-- `A226602(n+1)/A322327(n+1)*A322328(n+1)` -/
def P13138087192318948077.Spec : Prop :=
  ∀ n, P13138087192318948077.a n = (A247513 (n + 1) : ℚ)

end A247513

/-! ## A247513.P4859251662396120260

`A226602(A278254(n+1))`
-/

namespace A247513.P4859251662396120260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (A278254 (n + 1)).toNat

end

end A247513.P4859251662396120260

namespace A247513

/-- `A226602(A278254(n+1))` -/
def P4859251662396120260.Spec : Prop :=
  ∀ n, P4859251662396120260.a n = A247513 (n + 1)

end A247513

/-! ## A247513.P10097082779904171355

`A226602((n+1)²)`
-/

namespace A247513.P10097082779904171355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 ((n + 1) ^ 2)

end

end A247513.P10097082779904171355

namespace A247513

/-- `A226602((n+1)²)` -/
def P10097082779904171355.Spec : Prop :=
  ∀ n, P10097082779904171355.a n = A247513 (n + 1)

end A247513

/-! ## A247513.P2140374234019206946

`∑{d}[(n+1)², A073184(#)]`
-/

namespace A247513.P2140374234019206946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073184 d

end

end A247513.P2140374234019206946

namespace A247513

/-- `∑{d}[(n+1)², A073184(#)]` -/
def P2140374234019206946.Spec : Prop :=
  ∀ n, P2140374234019206946.a n = A247513 (n + 1)

end A247513

/-!
# A247514: Numbers k such that 2*floor(sqrt(prime(k))) = floor(2*sqrt(prime(k))).

The programs for A247514, the canonical program `A247514.P7173536372623960646` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247514 has offset 1).

The definition of A247514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247514.P7173536372623960646

`comp[A247515(n+1)-1]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A247514

/-- `comp[A247515(n+1)-1]+1` -/
def P7173536372623960646.Spec : Prop :=
  ∀ n, (P7173536372623960646.a n : ℤ) = A247514 (n + 1)

theorem P7173536372623960646.correct : P7173536372623960646.Spec := by
  intro n
  simp only [A247514, Nat.add_sub_cancel]

end A247514

/-! ## A247514.P11912507391046216436

`eq[1, and(1, A247485(n+1))]+1`
-/

namespace A247514.P11912507391046216436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A247485 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A247514.P11912507391046216436

namespace A247514

/-- `eq[1, and(1, A247485(n+1))]+1` -/
def P11912507391046216436.Spec : Prop :=
  ∀ n, (P11912507391046216436.a n : ℤ) = A247514 (n + 1)

end A247514

/-! ## A247514.P10894786700938834501

`A000720(A307508(n+1))`
-/

namespace A247514.P10894786700938834501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A307508 (n + 1)).toNat

end

end A247514.P10894786700938834501

namespace A247514

/-- `A000720(A307508(n+1))` -/
def P10894786700938834501.Spec : Prop :=
  ∀ n, P10894786700938834501.a n = A247514 (n + 1)

end A247514

/-! ## A247514.P5345265176070296620

`A263111(p?[n+1+A004736(n+1)+n])`
-/

namespace A247514.P5345265176070296620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A004736 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A247514.P5345265176070296620

namespace A247514

/-- `A263111(p?[n+1+A004736(n+1)+n])` -/
def P5345265176070296620.Spec : Prop :=
  ∀ n, P5345265176070296620.a n = A247514 (n + 1)

end A247514

/-! ## A247514.P16746175356908663736

`eq[1, A013942(A008578(n+1))]`
-/

namespace A247514.P16746175356908663736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013942 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247514.P16746175356908663736

namespace A247514

/-- `eq[1, A013942(A008578(n+1))]` -/
def P16746175356908663736.Spec : Prop :=
  ∀ n, (P16746175356908663736.a n : ℤ) = A247514 (n + 1)

end A247514

/-! ## A247514.P1798089008683066148

`record[(n+1)%(A091453(A000040(n+1))+n)]`
-/

namespace A247514.P1798089008683066148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A091453 (A000040 (n + 1)).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247514.P1798089008683066148

namespace A247514

/-- `record[(n+1)%(A091453(A000040(n+1))+n)]` -/
def P1798089008683066148.Spec : Prop :=
  ∀ n, P1798089008683066148.a n = A247514 (n + 1)

end A247514

/-! ## A247514.P16682520727745286778

`lt[A056892(n+1), A106044(n+1)]+1`
-/

namespace A247514.P16682520727745286778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106044 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A247514.P16682520727745286778

namespace A247514

/-- `lt[A056892(n+1), A106044(n+1)]+1` -/
def P16682520727745286778.Spec : Prop :=
  ∀ n, (P16682520727745286778.a n : ℤ) = A247514 (n + 1)

end A247514

/-!
# A247515: Numbers k such that 2*floor(sqrt(prime(k))) < floor(2*sqrt(prime(k))).

The programs for A247515, the canonical program `A247515.P5212930640307927296` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247515 has offset 1).

The definition of A247515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247515.P5212930640307927296

`eq[1, A067614(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A247515

/-- `eq[1, A067614(n+1)]+1` -/
def P5212930640307927296.Spec : Prop :=
  ∀ n, (P5212930640307927296.a n : ℤ) = A247515 (n + 1)

theorem P5212930640307927296.correct : P5212930640307927296.Spec := by
  intro n
  simp only [A247515, Nat.add_sub_cancel]

end A247515

/-! ## A247515.P9294274890533377523

`A000720(A334163(n+1))`
-/

namespace A247515.P9294274890533377523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A334163 (n + 1)).toNat

end

end A247515.P9294274890533377523

namespace A247515

/-- `A000720(A334163(n+1))` -/
def P9294274890533377523.Spec : Prop :=
  ∀ n, P9294274890533377523.a n = A247515 (n + 1)

end A247515

/-! ## A247515.P18227390485026407024

`A000720(p?[A061885(n)+1])`
-/

namespace A247515.P18227390485026407024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A247515.P18227390485026407024

namespace A247515

/-- `A000720(p?[A061885(n)+1])` -/
def P18227390485026407024.Spec : Prop :=
  ∀ n, P18227390485026407024.a n = A247515 (n + 1)

end A247515

/-! ## A247515.P17829838569881703341

`A263111(or(1, A334163(n+1)))`
-/

namespace A247515.P17829838569881703341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (Int.lor 1 (A334163 (n + 1))).toNat

end

end A247515.P17829838569881703341

namespace A247515

/-- `A263111(or(1, A334163(n+1)))` -/
def P17829838569881703341.Spec : Prop :=
  ∀ n, P17829838569881703341.a n = A247515 (n + 1)

end A247515

/-! ## A247515.P10517067847297972336

`lt[A020703(A008578(n+1)+1), A008578(n+1)]`
-/

namespace A247515.P10517067847297972336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A008578 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247515.P10517067847297972336

namespace A247515

/-- `lt[A020703(A008578(n+1)+1), A008578(n+1)]` -/
def P10517067847297972336.Spec : Prop :=
  ∀ n, (P10517067847297972336.a n : ℤ) = A247515 (n + 1)

end A247515

/-! ## A247515.P2685959389323775070

`eq[1, A091453(A008578(n+1))]`
-/

namespace A247515.P2685959389323775070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247515.P2685959389323775070

namespace A247515

/-- `eq[1, A091453(A008578(n+1))]` -/
def P2685959389323775070.Spec : Prop :=
  ∀ n, (P2685959389323775070.a n : ℤ) = A247515 (n + 1)

end A247515

/-! ## A247515.P11450945026769061268

`eq[1, A091453(A000040(n+1))]+1`
-/

namespace A247515.P11450945026769061268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A247515.P11450945026769061268

namespace A247515

/-- `eq[1, A091453(A000040(n+1))]+1` -/
def P11450945026769061268.Spec : Prop :=
  ∀ n, (P11450945026769061268.a n : ℤ) = A247515 (n + 1)

end A247515

/-! ## A247515.P18045569111111849801

`lt[A106044(n+1), A056892(n+1)]+1`
-/

namespace A247515.P18045569111111849801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056892 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A247515.P18045569111111849801

namespace A247515

/-- `lt[A106044(n+1), A056892(n+1)]+1` -/
def P18045569111111849801.Spec : Prop :=
  ∀ n, (P18045569111111849801.a n : ℤ) = A247515 (n + 1)

end A247515

/-!
# A247516: Card{(x,y,z,t): 1<=x,y,z,t<=n, gcd(x,y,z,t)=1, lcm(x,y,z,t)=n}.

The programs for A247516, the canonical program `A247516.P15697420190969111877` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247516 has offset 1).

The definition of A247516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247516.P15697420190969111877

`∏{e}[n+1, 12*#²+2]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A247516

/-- `∏{e}[n+1, 12*#²+2]` -/
def P15697420190969111877.Spec : Prop :=
  ∀ n, (P15697420190969111877.a n : ℤ) = A247516 (n + 1)

theorem P15697420190969111877.correct : P15697420190969111877.Spec := by
  intro n
  simp only [A247516, Nat.add_sub_cancel]

end A247516

/-! ## A247516.P10567347439727407980

`∑{d}[n+1, A008683(#)*A070920((n+1)/#)]`
-/

namespace A247516.P10567347439727407980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A070920 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247516.P10567347439727407980

namespace A247516

/-- `∑{d}[n+1, A008683(#)*A070920((n+1)/#)]` -/
def P10567347439727407980.Spec : Prop :=
  ∀ n, P10567347439727407980.a n = A247516 (n + 1)

end A247516

/-! ## A247516.P12039226672277933590

`∑{d}[n+1, A046692(#)*A344138((n+1)/#)]`
-/

namespace A247516.P12039226672277933590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A344138 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247516.P12039226672277933590

namespace A247516

/-- `∑{d}[n+1, A046692(#)*A344138((n+1)/#)]` -/
def P12039226672277933590.Spec : Prop :=
  ∀ n, P12039226672277933590.a n = A247516 (n + 1)

end A247516

/-!
# A247517: Card{(x,y,z,t,u): 1<=x,y,z,t,u<=n, gcd(x,y,z,t,u)=1, lcm(x,y,z,t,u)=n}.

The programs for A247517, the canonical program `A247517.P9623815378169510703` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247517 has offset 1).

The definition of A247517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247517.P9623815378169510703

`∏{e}[n+1, A101098(#+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A247517

/-- `∏{e}[n+1, A101098(#+1)]` -/
def P9623815378169510703.Spec : Prop :=
  ∀ n, P9623815378169510703.a n = A247517 (n + 1)

theorem P9623815378169510703.correct : P9623815378169510703.Spec := by
  intro n
  simp only [A247517, Nat.add_sub_cancel]

end A247517

/-! ## A247517.P15020470202755394191

`∏{e}[n+1, A068236(#-1)]`
-/

namespace A247517.P15020470202755394191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A068236 (Nat.factorization (f1 n) p - 1)

end

end A247517.P15020470202755394191

namespace A247517

/-- `∏{e}[n+1, A068236(#-1)]` -/
def P15020470202755394191.Spec : Prop :=
  ∀ n, P15020470202755394191.a n = A247517 (n + 1)

end A247517

/-! ## A247517.P4804385923010898196

`A360996(n+1)*A389698(n+1)`
-/

namespace A247517.P4804385923010898196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360996 (n + 1) * A389698 (n + 1)

end

end A247517.P4804385923010898196

namespace A247517

/-- `A360996(n+1)*A389698(n+1)` -/
def P4804385923010898196.Spec : Prop :=
  ∀ n, P4804385923010898196.a n = A247517 (n + 1)

end A247517

/-! ## A247517.P2002672650879344451

`∑{d}[n+1, A008683(#)*A070921((n+1)/#)]`
-/

namespace A247517.P2002672650879344451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A070921 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247517.P2002672650879344451

namespace A247517

/-- `∑{d}[n+1, A008683(#)*A070921((n+1)/#)]` -/
def P2002672650879344451.Spec : Prop :=
  ∀ n, P2002672650879344451.a n = A247517 (n + 1)

end A247517

/-! ## A247517.P9779995684816622290

`∑{d}[n+1, A046692(#)*A344139((n+1)/#)]`
-/

namespace A247517.P9779995684816622290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A344139 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247517.P9779995684816622290

namespace A247517

/-- `∑{d}[n+1, A046692(#)*A344139((n+1)/#)]` -/
def P9779995684816622290.Spec : Prop :=
  ∀ n, P9779995684816622290.a n = A247517 (n + 1)

end A247517

/-!
# A247518: a(n) = a(n-1) * (11*a(n-1) - 16*a(n-2)) / (a(n-1) + 10*a(n-2)) with a(1) = 1, a(2) = 2.

The programs for A247518, the canonical program `A247518.P580938298998909206` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247518 has offset 1).

The definition of A247518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247518.P580938298998909206

`a(n-1)*(11*a(n-1)-16*a(n-2))/(a(n-1)+10*a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A247518

/-- `a(n-1)*(11*a(n-1)-16*a(n-2))/(a(n-1)+10*a(n-2))` -/
def P580938298998909206.Spec : Prop :=
  ∀ n, P580938298998909206.a n = (A247518 (n + 1) : ℚ)

end A247518

/-!
# A247519: Numbers k such that d(r,k) = 0 and d(s,k) = 0, where d(x,k) = k-th binary digit of x, r = {golden ratio}, s = {(golden ratio)/2}, and { } = fractional part.

The programs for A247519, there is no canonical definition to state claims against.
-/

/-! ## A247519.P7193894144815395820

`A169868(eq[1, Δ[A169868(n+1)]]+2)`
-/

namespace A247519.P7193894144815395820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A247519.P7193894144815395820

/-! ## A247519.P11871635777716269014

`record[A169868(n+2)/Δ[A169868(n+1)]]`
-/

namespace A247519.P11871635777716269014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169868 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169868 (n + 2) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247519.P11871635777716269014

/-! ## A247519.P15583200688262520181

`∩[A169868(A000027(n+1))+1, A169868(n+1)]`
-/

namespace A247519.P15583200688262520181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169868 (A000027 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247519.P15583200688262520181

/-! ## A247519.P10382678464182933079

`∩[A169868(n+1), A247523(n+1)]`
-/

namespace A247519.P10382678464182933079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247519.P10382678464182933079

/-! ## A247519.P5747489044663695162

`eq[0, A068432(A068432(n+1)+n)]`
-/

namespace A247519.P5747489044663695162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (A068432 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247519.P5747489044663695162

/-! ## A247519.P15959237216001584996

`eq[0, A293319(n)%4]`
-/

namespace A247519.P15959237216001584996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293319 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247519.P15959237216001584996

/-! ## A247519.P15222207658108008827

`eq[1, A293320(n)%4]`
-/

namespace A247519.P15222207658108008827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293320 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247519.P15222207658108008827

/-!
# A247520: Numbers k such that d(r,k) = 0 and d(s,k) = 1, where d(x,k) = k-th binary digit of x, r = {golden ratio}, s = {(golden ratio)/2}, and { } = fractional part.

The programs for A247520, there is no canonical definition to state claims against.
-/

/-! ## A247520.P4599391228782743990

`A247524(Δ[n²])`
-/

namespace A247520.P4599391228782743990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247524 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A247520.P4599391228782743990

/-! ## A247520.P13408587211528427832

`record[A247524((n+1)/2^val(n+1, 2))]`
-/

namespace A247520.P13408587211528427832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247520.P13408587211528427832

/-! ## A247520.P12754345731853294871

`record[A247524(abs(A009001(n)))]`
-/

namespace A247520.P12754345731853294871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247524 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247520.P12754345731853294871

/-! ## A247520.P704028639690899334

`record[A247524(A000265(n+1))]`
-/

namespace A247520.P704028639690899334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247524 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247520.P704028639690899334

/-! ## A247520.P10801537200976089897

`record[A033999(n)*A247524(n+1)]`
-/

namespace A247520.P10801537200976089897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A247524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247520.P10801537200976089897

/-! ## A247520.P18131138941528174147

`record[A247524(n+1)/A000034(n)]`
-/

namespace A247520.P18131138941528174147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247524 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247520.P18131138941528174147

/-! ## A247520.P6113763007504666096

`record[A247524(n+1)/A266303(n)]`
-/

namespace A247520.P6113763007504666096
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247524 (n + 1) : ℚ) / (A266303 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247520.P6113763007504666096

/-! ## A247520.P5596824210967103718

`∑{d}[A247524(2*n+1), A000010(#)]`
-/

namespace A247520.P5596824210967103718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247524 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A247520.P5596824210967103718

/-! ## A247520.P846777462638233203

`∩[A169868(n+1), A247524(n+1)]`
-/

namespace A247520.P846777462638233203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247520.P846777462638233203

/-! ## A247520.P91257964370989454

`record[A247524(n+1)/A001511(n+1)]`
-/

namespace A247520.P91257964370989454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247524 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247520.P91257964370989454

/-! ## A247520.P15277874424619195792

`record[lcm(A091337(n+1), A247524(n+1))]`
-/

namespace A247520.P15277874424619195792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091337 (n + 1)) (A247524 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247520.P15277874424619195792

/-! ## A247520.P17383822771746733364

`A247524(2*n+1)%A142763(n+1)`
-/

namespace A247520.P17383822771746733364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247524 (2 * n + 1)) (A142763 (n + 1))

end

end A247520.P17383822771746733364

/-! ## A247520.P11587148239838054064

`∩[A004714(n+1)+1, A247524(n+1)]`
-/

namespace A247520.P11587148239838054064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004714 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247520.P11587148239838054064

/-! ## A247520.P11994224034236982770

`filter[A169868(n+1), A068432(#)]`
-/

namespace A247520.P11994224034236982770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A068432 (f1 j).toNat = 1) n)

end

end A247520.P11994224034236982770

/-! ## A247520.P11727429476296767168

`filter[A247524(n+1), A068432(#)]`
-/

namespace A247520.P11727429476296767168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A068432 (f1 j).toNat = 1) n)

end

end A247520.P11727429476296767168

/-! ## A247520.P1987905914610838546

`lt[A068432(n+1), A068432(A068432(n+1)+n)]`
-/

namespace A247520.P1987905914610838546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (A068432 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247520.P1987905914610838546

/-! ## A247520.P11725663515857565404

`record[A247524(A131843(n))]`
-/

namespace A247520.P11725663515857565404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247524 (A131843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247520.P11725663515857565404

/-! ## A247520.P2131005070878062742

`A247524(A005408(n))%A015728(n+1)`
-/

namespace A247520.P2131005070878062742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247524 (A005408 n).toNat) (A015728 (n + 1))

end

end A247520.P2131005070878062742

/-!
# A247521: Numbers k such that d(r,k) = 1 and d(s,k) = 0, where d(x,k) = k-th binary digit of x, r = {golden ratio}, s = {(golden ratio)/2}, and { } = fractional part.

The programs for A247521, there is no canonical definition to state claims against.
-/

/-! ## A247521.P5142689498303715785

`A247524(2*(n+1))`
-/

namespace A247521.P5142689498303715785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247524 (2 * (n + 1))

end

end A247521.P5142689498303715785

/-! ## A247521.P13286704212108461229

`A000027(A247524(n+2+n))`
-/

namespace A247521.P13286704212108461229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A247524 (n + 2 + n)).toNat

end

end A247521.P13286704212108461229

/-! ## A247521.P17591619622080269460

`record[A247524(abs(A009001(n))+1)]`
-/

namespace A247521.P17591619622080269460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247524 (|A009001 n| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247521.P17591619622080269460

/-! ## A247521.P10567788363663020577

`record[A247524(A000265(n+1)+1)]`
-/

namespace A247521.P10567788363663020577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247524 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247521.P10567788363663020577

/-! ## A247521.P14010296393531106213

`record[A247524(n+2)/A000034(n)]`
-/

namespace A247521.P14010296393531106213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247524 (n + 2) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247521.P14010296393531106213

/-! ## A247521.P461095874254080864

`record[A247524(n+2)/A033999(n)]`
-/

namespace A247521.P461095874254080864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247524 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247521.P461095874254080864

/-! ## A247521.P10946780059382266943

`record[A247524(n+2)/A266303(n)]`
-/

namespace A247521.P10946780059382266943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247524 (n + 2) : ℚ) / (A266303 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247521.P10946780059382266943

/-! ## A247521.P13787745019301104768

`∑{d}[A247524(n+2+n), A000010(#)]`
-/

namespace A247521.P13787745019301104768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247524 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A247521.P13787745019301104768

/-! ## A247521.P6397539846461178206

`record[lcm(A091337(n+1), A247524(n+2))]`
-/

namespace A247521.P6397539846461178206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091337 (n + 1)) (A247524 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247521.P6397539846461178206

/-! ## A247521.P1386096842782998279

`A247524(n+2+n)%Δ[A014642(n)]`
-/

namespace A247521.P1386096842782998279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247524 (n + 2 + n)) (f1 (n + 1) - f1 n)

end

end A247521.P1386096842782998279

/-! ## A247521.P14544193592293992941

`∩[A169868(n+1)+1, A247524(n+1)]`
-/

namespace A247521.P14544193592293992941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169868 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247521.P14544193592293992941

/-! ## A247521.P2975816185019665996

`A247524(n+2+n)+A000007(n+1)`
-/

namespace A247521.P2975816185019665996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247524 (n + 2 + n) + A000007 (n + 1)

end

end A247521.P2975816185019665996

/-! ## A247521.P17152449595292241671

`A247524(n+2+n)+A000038(n+1)`
-/

namespace A247521.P17152449595292241671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247524 (n + 2 + n) + A000038 (n + 1)

end

end A247521.P17152449595292241671

/-! ## A247521.P522857646484021144

`∩[A004714(n+1), A247524(n+1)]`
-/

namespace A247521.P522857646484021144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247521.P522857646484021144

/-! ## A247521.P14529690006750501257

`A247524(n+2+n)/A014963(A228870(n+1))`
-/

namespace A247521.P14529690006750501257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247524 (n + 2 + n) : ℚ) / (A014963 (A228870 (n + 1)).toNat : ℚ)

end

end A247521.P14529690006750501257

/-! ## A247521.P12932137060854511447

`A247524(n+2+n)/A001222(A062326(n+1))`
-/

namespace A247521.P12932137060854511447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247524 (n + 2 + n) : ℚ) / (A001222 (A062326 (n + 1)).toNat : ℚ)

end

end A247521.P12932137060854511447

/-! ## A247521.P3076014623206603908

`A247524(n+2+n)/A001222(record[A014963(n+2)])`
-/

namespace A247521.P3076014623206603908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247524 (n + 2 + n) : ℚ) / (A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A247521.P3076014623206603908

/-!
# A247522: Numbers k such that d(r,k) = 1 and d(s,k) = 1, where d(x,k) = k-th binary digit of x, r = {golden ratio}, s = {(golden ratio)/2}, and { } = fractional part.

The programs for A247522, there is no canonical definition to state claims against.
-/

/-! ## A247522.P3023808552866421391

`∩[A004714(n+1), A247523(n+1)]`
-/

namespace A247522.P3023808552866421391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247522.P3023808552866421391

/-! ## A247522.P13291600753494534544

`∩[A004714(n+1), A004714(n+1)-A057428(n)]`
-/

namespace A247522.P13291600753494534544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004714 (n + 1) - A057428 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247522.P13291600753494534544

/-! ## A247522.P3119247563206022451

`filter[A004714(n+1), A068432(#)]`
-/

namespace A247522.P3119247563206022451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A068432 (f1 j).toNat = 1) n)

end

end A247522.P3119247563206022451

/-! ## A247522.P11442233639535869323

`filter[A247523(n+1), A068432(#)]`
-/

namespace A247522.P11442233639535869323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A068432 (f1 j).toNat = 1) n)

end

end A247522.P11442233639535869323

/-! ## A247522.P13298516015959280111

`record[A004555(A004714(n+1)+1)*A004714(n+1)]`
-/

namespace A247522.P13298516015959280111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004555 (A004714 (n + 1) + 1).toNat * A004714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247522.P13298516015959280111

/-! ## A247522.P10752363016088568892

`eq[0, A293314(n)%4]`
-/

namespace A247522.P10752363016088568892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293314 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247522.P10752363016088568892

/-! ## A247522.P17847672885434971982

`eq[3, A293313(n)%4]`
-/

namespace A247522.P17847672885434971982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293313 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247522.P17847672885434971982

/-!
# A247523: Numbers k such that d(r,k) = d(s,k), where d(x,k) = k-th binary digit of x, r = {golden ratio}, s = {(golden ratio)/2}, and { } = fractional part.

The programs for A247523, there is no canonical definition to state claims against.
-/

/-! ## A247523.P4765982078242204485

`∪[A247519(n+1), A247522(n+1)]`
-/

namespace A247523.P4765982078242204485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247523.P4765982078242204485

/-! ## A247523.P697567167041428614

`eq[A068432(n+1), A068432(n+2)]+1`
-/

namespace A247523.P697567167041428614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A247523.P697567167041428614

/-! ## A247523.P9428033139495320880

`A123108(record[(n+1)*gcd(2, A293315(n))])`
-/

namespace A247523.P9428033139495320880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd 2 (A293315 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A247523.P9428033139495320880

/-! ## A247523.P16457165917197377813

`eq[0, and(2, A293314(n))]`
-/

namespace A247523.P16457165917197377813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A293314 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247523.P16457165917197377813

/-! ## A247523.P13518393912769911754

`eq[2, and(2, A293313(n)-1)]`
-/

namespace A247523.P13518393912769911754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A293313 n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247523.P13518393912769911754

/-!
# A247524: Numbers k such that d(r,k) != d(s,k), where d(x,k) = k-th binary digit of x, r = {golden ratio}, s = {(golden ratio)/2}, and { } = fractional part.

The programs for A247524, there is no canonical definition to state claims against.
-/

/-! ## A247524.P14721358095681621931

`∪[A247520(n+1), A247521(n+1)]`
-/

namespace A247524.P14721358095681621931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247524.P14721358095681621931

/-! ## A247524.P12819748781900273068

`eq[char[A247523(n+1)], A000007(n)]`
-/

namespace A247524.P12819748781900273068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247523 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A247524.P12819748781900273068

/-! ## A247524.P1297248140336324345

`eq[char[A247523(n+1)], A000038(n)]`
-/

namespace A247524.P1297248140336324345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247523 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A247524.P1297248140336324345

/-! ## A247524.P5381837116919844764

`eq[A165824(n+1)%3, char[A247523(n+1)]]`
-/

namespace A247524.P5381837116919844764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165824 (n + 1)) 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247523 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A247524.P5381837116919844764

/-! ## A247524.P16508538940943162072

`eq[and(2, A293313(n)-1), A000007(n)]`
-/

namespace A247524.P16508538940943162072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A293313 n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247524.P16508538940943162072

/-!
# A247525: a(n) = 5 * a(n-1) - 2 * a(n-1)^2 / a(n-2), with a(0) = 1, a(1) = 2.

The programs for A247525, there is no canonical definition to state claims against.
-/

/-! ## A247525.P14132325282529742510

`∏[5-2*a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A247525.P14132325282529742510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A247525.P14132325282529742510

/-! ## A247525.P14792491618061175021

`∏[5-a(n-1)-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A247525.P14792491618061175021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  5 - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A247525.P14792491618061175021

/-! ## A247525.P8093611575578752217

`∏[A140966(abs(1-n))]`
-/

namespace A247525.P8093611575578752217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A247525.P8093611575578752217

/-! ## A247525.P17581254915684673297

`∏[floor(A084247(n)/2)+1]`
-/

namespace A247525.P17581254915684673297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084247 n : ℚ) / 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A247525.P17581254915684673297

/-! ## A247525.P15839528979917771997

`a(n-1)*A140966(n-1)` with `a(0)=1`
-/

namespace A247525.P15839528979917771997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A140966 (n - 1)

end

end A247525.P15839528979917771997

/-!
# A247526: a(n) = L(n+1) * L(n) * L(n-1) * L(n-2) / 6, where L(n) = Lucas numbers (A000032).

The programs for A247526, the canonical program `A247526.P7807147035208591792` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247526 has offset 0).

The definition of A247526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247526.P7807147035208591792

`5*a(n-1)+15*a(n-2)-15*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=-1, a(1)=-1, a(2)=4, a(3)=14, a(4)=154`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A247526

/-- `5*a(n-1)+15*a(n-2)-15*a(n-3)-5*a(n-4)+a(n-5)` -/
def P7807147035208591792.Spec : Prop :=
  ∀ n, P7807147035208591792.a n = A247526 n

theorem P7807147035208591792.correct : P7807147035208591792.Spec := by
  intro n
  simp only [A247526]

end A247526

/-!
# A247527: Number of length n+3 0..2 arrays with some disjoint pairs in every consecutive four terms having the same sum.

The programs for A247527, the canonical program `A247527.P6998822560439604477` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247527 has offset 1).

The definition of A247527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 654 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247527.P6998822560439604477

`a(n-1)+4*a(n-4)-4*a(n-5)` with `a(0)=33, a(1)=45, a(2)=61, a(3)=81, a(4)=105`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A247527

/-- `a(n-1)+4*a(n-4)-4*a(n-5)` -/
def P6998822560439604477.Spec : Prop :=
  ∀ n, P6998822560439604477.a n = A247527 (n + 1)

theorem P6998822560439604477.correct : P6998822560439604477.Spec := by
  intro n
  simp only [A247527, Nat.add_sub_cancel]

end A247527

/-! ## A247527.P14277942162010982003

`A247533(∑[n+2])`
-/

namespace A247527.P14277942162010982003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247527.P14277942162010982003

namespace A247527

/-- `A247533(∑[n+2])` -/
def P14277942162010982003.Spec : Prop :=
  ∀ n, P14277942162010982003.a n = A247527 (n + 1)

end A247527

/-! ## A247527.P16343854564294830650

`or(1, A247533(A000096(n+1)))`
-/

namespace A247527.P16343854564294830650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A247533 (A000096 (n + 1)).toNat)

end

end A247527.P16343854564294830650

namespace A247527

/-- `or(1, A247533(A000096(n+1)))` -/
def P16343854564294830650.Spec : Prop :=
  ∀ n, P16343854564294830650.a n = A247527 (n + 1)

end A247527

/-! ## A247527.P10252133768083465184

`record[A247533(A000096(A004736(n+1)))]`
-/

namespace A247527.P10252133768083465184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247527.P10252133768083465184

namespace A247527

/-- `record[A247533(A000096(A004736(n+1)))]` -/
def P10252133768083465184.Spec : Prop :=
  ∀ n, P10252133768083465184.a n = A247527 (n + 1)

end A247527

/-! ## A247527.P911417802027324642

`record[A247533(A000096(A220073(n+1)))]`
-/

namespace A247527.P911417802027324642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A000096 (A220073 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247527.P911417802027324642

namespace A247527

/-- `record[A247533(A000096(A220073(n+1)))]` -/
def P911417802027324642.Spec : Prop :=
  ∀ n, P911417802027324642.a n = A247527 (n + 1)

end A247527

/-! ## A247527.P16174643744319397016

`record[A247533(A000096(A274630(n+1)))]`
-/

namespace A247527.P16174643744319397016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A000096 (A274630 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247527.P16174643744319397016

namespace A247527

/-- `record[A247533(A000096(A274630(n+1)))]` -/
def P16174643744319397016.Spec : Prop :=
  ∀ n, P16174643744319397016.a n = A247527 (n + 1)

end A247527

/-! ## A247527.P10594297414923240412

`A007318(C(n, 2))*A247533(A000096(n+1))`
-/

namespace A247527.P10594297414923240412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A247533 (A000096 (n + 1)).toNat

end

end A247527.P10594297414923240412

namespace A247527

/-- `A007318(C(n, 2))*A247533(A000096(n+1))` -/
def P10594297414923240412.Spec : Prop :=
  ∀ n, P10594297414923240412.a n = A247527 (n + 1)

end A247527

/-! ## A247527.P17337027366118675050

`A014963(12*(n+1))*A247533(A000096(n+1))`
-/

namespace A247527.P17337027366118675050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A247533 (A000096 (n + 1)).toNat

end

end A247527.P17337027366118675050

namespace A247527

/-- `A014963(12*(n+1))*A247533(A000096(n+1))` -/
def P17337027366118675050.Spec : Prop :=
  ∀ n, P17337027366118675050.a n = A247527 (n + 1)

end A247527

/-! ## A247527.P12260819282358435057

`abs((-1)^A007318(n)*A247533(A000096(n+1)))`
-/

namespace A247527.P12260819282358435057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(-1 : ℚ) ^ (A007318 n : ℤ) * (A247533 (A000096 (n + 1)).toNat : ℚ)|

end

end A247527.P12260819282358435057

namespace A247527

/-- `abs((-1)^A007318(n)*A247533(A000096(n+1)))` -/
def P12260819282358435057.Spec : Prop :=
  ∀ n, P12260819282358435057.a n = (A247527 (n + 1) : ℚ)

end A247527

/-! ## A247527.P15214118564187793498

`A117905(A307597(n))*A247533(A000096(n+1))`
-/

namespace A247527.P15214118564187793498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117905 (A307597 n).toNat * A247533 (A000096 (n + 1)).toNat

end

end A247527.P15214118564187793498

namespace A247527

/-- `A117905(A307597(n))*A247533(A000096(n+1))` -/
def P15214118564187793498.Spec : Prop :=
  ∀ n, P15214118564187793498.a n = A247527 (n + 1)

end A247527

/-!
# A247528: Number of length n+3 0..3 arrays with some disjoint pairs in every consecutive four terms having the same sum.

The programs for A247528, there is no canonical definition to state claims against.
-/

/-! ## A247528.P8332621221930845383

`A247533(∑[n+3]+1)`
-/

namespace A247528.P8332621221930845383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A247528.P8332621221930845383

/-! ## A247528.P13486739529407080217

`lcm(2, A247533(A034856(n+2)))`
-/

namespace A247528.P13486739529407080217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A247533 (A034856 (n + 2)).toNat)

end

end A247528.P13486739529407080217

/-! ## A247528.P14887605143866304101

`A247533(A034856(n+2))+A000007(n+1)`
-/

namespace A247528.P14887605143866304101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A247528.P14887605143866304101

/-! ## A247528.P5985353902187136997

`A129982(2*n)*A247533(A034856(n+2))`
-/

namespace A247528.P5985353902187136997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (2 * n) * A247533 (A034856 (n + 2)).toNat

end

end A247528.P5985353902187136997

/-! ## A247528.P8267797154731828147

`A247533(A034856(n+2))%A247529(n+1)`
-/

namespace A247528.P8267797154731828147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247533 (A034856 (n + 2)).toNat) (A247529 (n + 1))

end

end A247528.P8267797154731828147

/-! ## A247528.P12587480804975282512

`A247533(A034856(n+2))+char[A113567(n+1)]`
-/

namespace A247528.P12587480804975282512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113567 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A247528.P12587480804975282512

/-! ## A247528.P1404179972982242998

`A001511(2*n+1)*A247533(A034856(n+2))`
-/

namespace A247528.P1404179972982242998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A247533 (A034856 (n + 2)).toNat

end

end A247528.P1404179972982242998

/-! ## A247528.P13408376416582482152

`A002379(C(2, n+2))*A247533(A034856(n+2))`
-/

namespace A247528.P13408376416582482152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (Nat.choose 2 (n + 2)) * A247533 (A034856 (n + 2)).toNat

end

end A247528.P13408376416582482152

/-! ## A247528.P12535201491621851312

`A322996(A145341(n+1))+A247533(A034856(n+2))`
-/

namespace A247528.P12535201491621851312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 (A145341 (n + 1)).toNat + A247533 (A034856 (n + 2)).toNat

end

end A247528.P12535201491621851312

/-! ## A247528.P4632905451191774018

`A001222(A001359(n+2))*A247533(A034856(n+2))`
-/

namespace A247528.P4632905451191774018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001359 (n + 2)).toNat * A247533 (A034856 (n + 2)).toNat

end

end A247528.P4632905451191774018

/-! ## A247528.P2304328336031373275

`A001222(A125256(n+2))*A247533(A034856(n+2))`
-/

namespace A247528.P2304328336031373275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A125256 (n + 2)).toNat * A247533 (A034856 (n + 2)).toNat

end

end A247528.P2304328336031373275

/-!
# A247529: Number of length n+3 0..4 arrays with some disjoint pairs in every consecutive four terms having the same sum.

The programs for A247529, there is no canonical definition to state claims against.
-/

/-! ## A247529.P16048650200324615247

`A247533(∑[n+4]+3)`
-/

namespace A247529.P16048650200324615247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A247529.P16048650200324615247

/-! ## A247529.P13931316894092788168

`or(1, A247533(A027379(n+2)))`
-/

namespace A247529.P13931316894092788168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A247533 (A027379 (n + 2)).toNat)

end

end A247529.P13931316894092788168

/-! ## A247529.P12778958327717591104

`or(1, A247533(A052905(n+1)+2))`
-/

namespace A247529.P12778958327717591104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A247533 (A052905 (n + 1) + 2).toNat)

end

end A247529.P12778958327717591104

/-! ## A247529.P3503038697691471889

`A087049((n+1)²)*A247533(A052905(n+1)+2)`
-/

namespace A247529.P3503038697691471889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 ((n + 1) ^ 2) * A247533 (A052905 (n + 1) + 2).toNat

end

end A247529.P3503038697691471889

/-! ## A247529.P7343290301917084773

`A001222(A061067(n))*A247533(A052905(n+1)+2)`
-/

namespace A247529.P7343290301917084773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061067 n).toNat * A247533 (A052905 (n + 1) + 2).toNat

end

end A247529.P7343290301917084773

/-! ## A247529.P13021086203967579100

`A247533(A052905(n+1)+2)*A322382(A001359(n+1))`
-/

namespace A247529.P13021086203967579100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A052905 (n + 1) + 2).toNat * A322382 (A001359 (n + 1)).toNat

end

end A247529.P13021086203967579100

/-! ## A247529.P5610493363706273493

`A001222(A006093(n+1)+1)*A247533(A052905(n+1)+2)`
-/

namespace A247529.P5610493363706273493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006093 (n + 1) + 1).toNat * A247533 (A052905 (n + 1) + 2).toNat

end

end A247529.P5610493363706273493

/-!
# A247530: Number of length n+3 0..5 arrays with some disjoint pairs in every consecutive four terms having the same sum.

The programs for A247530, there is no canonical definition to state claims against.
-/

/-! ## A247530.P11766467258091298295

`A247533(∑[n+5]+6)`
-/

namespace A247530.P11766467258091298295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A247530.P11766467258091298295

/-! ## A247530.P8245096864232917769

`lcm(2, A247533(A046691(n+3)))`
-/

namespace A247530.P8245096864232917769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A247533 (A046691 (n + 3)).toNat)

end

end A247530.P8245096864232917769

/-! ## A247530.P40686508418855626

`char[A014681(n)]*A247533(A046691(n+3))`
-/

namespace A247530.P40686508418855626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A247533 (A046691 (n + 3)).toNat

end

end A247530.P40686508418855626

/-! ## A247530.P14547682556396239302

`A007318(A000217(n))*A247533(A046691(n+3))`
-/

namespace A247530.P14547682556396239302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A247533 (A046691 (n + 3)).toNat

end

end A247530.P14547682556396239302

/-! ## A247530.P14834416276015308197

`A007318(A178334(n))*A247533(A046691(n+3))`
-/

namespace A247530.P14834416276015308197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A178334 n).toNat * A247533 (A046691 (n + 3)).toNat

end

end A247530.P14834416276015308197

/-! ## A247530.P12234743301204251425

`A001222(A002476(n+1))*A247533(A046691(n+3))`
-/

namespace A247530.P12234743301204251425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002476 (n + 1)).toNat * A247533 (A046691 (n + 3)).toNat

end

end A247530.P12234743301204251425

/-! ## A247530.P9965248139700066253

`A007318(A184389(n+1))*A247533(A046691(n+3))`
-/

namespace A247530.P9965248139700066253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A184389 (n + 1)).toNat * A247533 (A046691 (n + 3)).toNat

end

end A247530.P9965248139700066253

/-!
# A247531: Number of length n+3 0..6 arrays with some disjoint pairs in every consecutive four terms having the same sum.

The programs for A247531, there is no canonical definition to state claims against.
-/

/-! ## A247531.P17583278927685970323

`A247533((n+4)²-∑[n+1]+1)`
-/

namespace A247531.P17583278927685970323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A247531.P17583278927685970323

/-! ## A247531.P4842616710511541703

`or(1, A247533(A052905(n+3)))`
-/

namespace A247531.P4842616710511541703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A247533 (A052905 (n + 3)).toNat)

end

end A247531.P4842616710511541703

/-! ## A247531.P14628155339852946556

`record[A247533(A052905(abs(1-n)+2))]`
-/

namespace A247531.P14628155339852946556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A052905 (|1 - (n : ℤ)| + 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247531.P14628155339852946556

/-! ## A247531.P15368587502476428659

`char[A004442(n)]*A247533(A052905(n+3))`
-/

namespace A247531.P15368587502476428659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A247533 (A052905 (n + 3)).toNat

end

end A247531.P15368587502476428659

/-! ## A247531.P9046749933319594478

`A000034(2*(n+1))*A247533(A052905(n+3))`
-/

namespace A247531.P9046749933319594478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * (n + 1)) * A247533 (A052905 (n + 3)).toNat

end

end A247531.P9046749933319594478

/-! ## A247531.P6426710764288668299

`A001221(A007529(n+1))*A247533(A052905(n+3))`
-/

namespace A247531.P6426710764288668299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007529 (n + 1)).toNat * A247533 (A052905 (n + 3)).toNat

end

end A247531.P6426710764288668299

/-! ## A247531.P17344856979049662945

`A000688(A020639(n+1))*A247533(A052905(n+3))`
-/

namespace A247531.P17344856979049662945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A020639 (n + 1)).toNat * A247533 (A052905 (n + 3)).toNat

end

end A247531.P17344856979049662945

/-! ## A247531.P9259460116924436044

`A247533(A052905(n+3))+n-A126007(A126007(n))`
-/

namespace A247531.P9259460116924436044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A052905 (n + 3)).toNat + ((n : ℤ) - A126007 (A126007 n).toNat)

end

end A247531.P9259460116924436044

/-!
# A247532: Number of length n+3 0..7 arrays with some disjoint pairs in every consecutive four terms having the same sum.

The programs for A247532, there is no canonical definition to state claims against.
-/

/-! ## A247532.P3737641982279117135

`A247533(A055999(n+4))`
-/

namespace A247532.P3737641982279117135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A055999 (n + 4)).toNat

end

end A247532.P3737641982279117135

/-! ## A247532.P14014071490227833761

`A247533(Δ[A023551(n+2)])`
-/

namespace A247532.P14014071490227833761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (f1 (n + 1) - f1 n).toNat

end

end A247532.P14014071490227833761

/-! ## A247532.P16895523226081770357

`A247533(Δ[A026054(n+4)])`
-/

namespace A247532.P16895523226081770357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (f1 (n + 1) - f1 n).toNat

end

end A247532.P16895523226081770357

/-! ## A247532.P16096552587330036042

`A247533(A000217(n+7)-6)`
-/

namespace A247532.P16096552587330036042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A000217 (n + 7) - 6).toNat

end

end A247532.P16096552587330036042

/-! ## A247532.P11263909881619329152

`A247533(A000124(n+7)-7)`
-/

namespace A247532.P11263909881619329152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A000124 (n + 7) - 7).toNat

end

end A247532.P11263909881619329152

/-! ## A247532.P14856687529485176693

`A247533(A000096(n+5)+n+2)`
-/

namespace A247532.P14856687529485176693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A247532.P14856687529485176693

/-! ## A247532.P10051277050496406189

`A247533(A161680(n+7)+n+1)`
-/

namespace A247532.P10051277050496406189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A161680 (n + 7) + (n + 1 : ℤ)).toNat

end

end A247532.P10051277050496406189

/-! ## A247532.P5964857842911487577

`A247533(A005408(n)+Δ[A023545(n+1)]+10)`
-/

namespace A247532.P5964857842911487577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A005408 n + (f1 (n + 1) - f1 n + 10)).toNat

end

end A247532.P5964857842911487577

/-!
# A247534: Number of length 2+3 0..n arrays with some disjoint pairs in every consecutive four terms having the same sum.

The programs for A247534, the canonical program `A247534.P210613567024888419` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247534 has offset 1).

The definition of A247534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247534.P210613567024888419

`A168388(3*(n+1))+∑[A168329(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A247534

/-- `A168388(3*(n+1))+∑[A168329(n+1)]` -/
def P210613567024888419.Spec : Prop :=
  ∀ n, P210613567024888419.a n = A247534 (n + 1)

theorem P210613567024888419.correct : P210613567024888419.Spec := by
  intro n
  simp only [A247534, Nat.add_sub_cancel]

end A247534

/-! ## A247534.P6446165509347960553

`A247533(∑[n+1]+2)`
-/

namespace A247534.P6446165509347960553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A247534.P6446165509347960553

namespace A247534

/-- `A247533(∑[n+1]+2)` -/
def P6446165509347960553.Spec : Prop :=
  ∀ n, P6446165509347960553.a n = A247534 (n + 1)

end A247534

/-! ## A247534.P4739824283170971121

`or(n%2, A247533(A133263(n+1)))`
-/

namespace A247534.P4739824283170971121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A247533 (A133263 (n + 1)).toNat)

end

end A247534.P4739824283170971121

namespace A247534

/-- `or(n%2, A247533(A133263(n+1)))` -/
def P4739824283170971121.Spec : Prop :=
  ∀ n, P4739824283170971121.a n = A247534 (n + 1)

end A247534

/-! ## A247534.P4497129981676747093

`record[A247533(A133263(A025480(n)))]`
-/

namespace A247534.P4497129981676747093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A133263 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247534.P4497129981676747093

namespace A247534

/-- `record[A247533(A133263(A025480(n)))]` -/
def P4497129981676747093.Spec : Prop :=
  ∀ n, P4497129981676747093.a n = A247534 (n + 1)

end A247534

/-! ## A247534.P6362368016518799199

`record[A247533(A133263(A142150(n)))]`
-/

namespace A247534.P6362368016518799199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A133263 (A142150 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247534.P6362368016518799199

namespace A247534

/-- `record[A247533(A133263(A142150(n)))]` -/
def P6362368016518799199.Spec : Prop :=
  ∀ n, P6362368016518799199.a n = A247534 (n + 1)

end A247534

/-! ## A247534.P14000708014025766136

`or(A000035(n), A247533(A133263(n+1)))`
-/

namespace A247534.P14000708014025766136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A247533 (A133263 (n + 1)).toNat)

end

end A247534.P14000708014025766136

namespace A247534

/-- `or(A000035(n), A247533(A133263(n+1)))` -/
def P14000708014025766136.Spec : Prop :=
  ∀ n, P14000708014025766136.a n = A247534 (n + 1)

end A247534

/-! ## A247534.P6317791674188263371

`A247533(A133263(n+1))%A024184(n+1)`
-/

namespace A247534.P6317791674188263371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247533 (A133263 (n + 1)).toNat) (A024184 (n + 1))

end

end A247534.P6317791674188263371

namespace A247534

/-- `A247533(A133263(n+1))%A024184(n+1)` -/
def P6317791674188263371.Spec : Prop :=
  ∀ n, P6317791674188263371.a n = A247534 (n + 1)

end A247534

/-!
# A247535: Number of length 3+3 0..n arrays with some disjoint pairs in every consecutive four terms having the same sum.

The programs for A247535, there is no canonical definition to state claims against.
-/

/-! ## A247535.P4759572101335366395

`A247533(∑[n+2]+4)`
-/

namespace A247535.P4759572101335366395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A247535.P4759572101335366395

/-! ## A247535.P13853708869787501131

`or(A000035(n), A247533(A167614(n+1)))`
-/

namespace A247535.P13853708869787501131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A247533 (A167614 (n + 1)).toNat)

end

end A247535.P13853708869787501131

/-! ## A247535.P13243524637023749254

`A247533(A167614(n+1))%A247530(n+1)`
-/

namespace A247535.P13243524637023749254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247533 (A167614 (n + 1)).toNat) (A247530 (n + 1))

end

end A247535.P13243524637023749254

/-! ## A247535.P11476048613115521546

`A247533(A046691(n)+7)%A247529(n+1)`
-/

namespace A247535.P11476048613115521546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247533 (A046691 n + 7).toNat) (A247529 (n + 1))

end

end A247535.P11476048613115521546

/-!
# A247536: Number of length 4+3 0..n arrays with some disjoint pairs in every consecutive four terms having the same sum.

The programs for A247536, there is no canonical definition to state claims against.
-/

/-! ## A247536.P4396070740248628043

`A247533(∑[n+3]+7)`
-/

namespace A247536.P4396070740248628043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A247536.P4396070740248628043

/-!
# A247537: Number of length 5+3 0..n arrays with some disjoint pairs in every consecutive four terms having the same sum.

The programs for A247537, there is no canonical definition to state claims against.
-/

/-! ## A247537.P7021245852586043925

`A247533(A167499(n+3))`
-/

namespace A247537.P7021245852586043925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A167499 (n + 3)).toNat

end

end A247537.P7021245852586043925

/-! ## A247537.P16820976870837616624

`A247533(A056000(n)+15)`
-/

namespace A247537.P16820976870837616624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A056000 n + 15).toNat

end

end A247537.P16820976870837616624

/-! ## A247537.P6026053778936691034

`A247533(A167614(n+3)+2)`
-/

namespace A247537.P6026053778936691034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A167614 (n + 3) + 2).toNat

end

end A247537.P6026053778936691034

/-! ## A247537.P4755873361231303319

`A247533(A000217(n+4)+5)`
-/

namespace A247537.P4755873361231303319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A000217 (n + 4) + 5).toNat

end

end A247537.P4755873361231303319

/-! ## A247537.P14101011817527051368

`A247533(A161680(n+5)+5)`
-/

namespace A247537.P14101011817527051368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A161680 (n + 5) + 5).toNat

end

end A247537.P14101011817527051368

/-! ## A247537.P874524242857588328

`record[A073424(n+10)*A247533(n+15)]`
-/

namespace A247537.P874524242857588328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 10) * A247533 (n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247537.P874524242857588328

/-! ## A247537.P1802645789406645183

`A247533(A038722(Δ[A023545(n+1)]))`
-/

namespace A247537.P1802645789406645183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A247537.P1802645789406645183

/-!
# A247538: Number of length 6+3 0..n arrays with some disjoint pairs in every consecutive four terms having the same sum.

The programs for A247538, there is no canonical definition to state claims against.
-/

/-! ## A247538.P5813488417848922467

`A247533(A167499(n+4)+1)`
-/

namespace A247538.P5813488417848922467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A167499 (n + 4) + 1).toNat

end

end A247538.P5813488417848922467

/-! ## A247538.P6574189551227015964

`A247533(A167614(n+4)+3)`
-/

namespace A247538.P6574189551227015964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A167614 (n + 4) + 3).toNat

end

end A247538.P6574189551227015964

/-! ## A247538.P3986112071327881134

`A247533(A000217(n+5)+6)`
-/

namespace A247538.P3986112071327881134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A000217 (n + 5) + 6).toNat

end

end A247538.P3986112071327881134

/-! ## A247538.P15251964252012434206

`A247533(A161680(n+6)+6)`
-/

namespace A247538.P15251964252012434206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A161680 (n + 6) + 6).toNat

end

end A247538.P15251964252012434206

/-! ## A247538.P15888611361775216322

`A247533(A002620(n+2)+A002620(n+9))`
-/

namespace A247538.P15888611361775216322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A247538.P15888611361775216322

/-!
# A247539: Number of length 7+3 0..n arrays with some disjoint pairs in every consecutive four terms having the same sum.

The programs for A247539, there is no canonical definition to state claims against.
-/

/-! ## A247539.P7275061405420209294

`A247533(A167487(n+5))`
-/

namespace A247539.P7275061405420209294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A167487 (n + 5)).toNat

end

end A247539.P7275061405420209294

/-! ## A247539.P13280835297791750096

`A247533(A167499(n+5)+2)`
-/

namespace A247539.P13280835297791750096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A167499 (n + 5) + 2).toNat

end

end A247539.P13280835297791750096

/-! ## A247539.P2808231603390762503

`A247533(A000217(n+6)+7)`
-/

namespace A247539.P2808231603390762503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A000217 (n + 6) + 7).toNat

end

end A247539.P2808231603390762503

/-! ## A247539.P7143262743987570666

`A247533(A161680(n+7)+7)`
-/

namespace A247539.P7143262743987570666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A161680 (n + 7) + 7).toNat

end

end A247539.P7143262743987570666

/-! ## A247539.P8174615413389903912

`A247533(A167614(n+3)+A004273(n+8))`
-/

namespace A247539.P8174615413389903912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (A167614 (n + 3) + A004273 (n + 8)).toNat

end

end A247539.P8174615413389903912

/-!
# A247540: a(n) = 2*a(n-1) - 3*a(n-1)^2 / a(n-2), with a(0) = a(1) = 1.

The programs for A247540, there is no canonical definition to state claims against.
-/

/-! ## A247540.P4325251770964698740

`∏[2-3*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A247540.P4325251770964698740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 - 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A247540.P4325251770964698740

/-! ## A247540.P8542479203262829962

`(2-3*a(n-1)/a(n-2))*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A247540.P8542479203262829962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 - 3 * (a (n - 1) / a (n - 2))) * a (n - 1)

end

end A247540.P8542479203262829962

/-! ## A247540.P3290469305042610302

`∏[ceil(A165553(n)/3)]`
-/

namespace A247540.P3290469305042610302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A165553 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A247540.P3290469305042610302

/-! ## A247540.P12145646484856547579

`∏[ceil(A084244(n)/10)]`
-/

namespace A247540.P12145646484856547579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084244 n : ℚ) / 10⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A247540.P12145646484856547579

/-! ## A247540.P11632889889977063431

`∏[A165553(n)/A122553(n)]`
-/

namespace A247540.P11632889889977063431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165553 n : ℚ) / (A122553 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A247540.P11632889889977063431

/-!
# A247541: a(n) = 7*n^2 + 1.

The programs for A247541, the canonical program `A247541.P3935640903610456510` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247541 has offset 0).

The definition of A247541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n²+1` (program `A247541.P3935640903610456510`, by `A247541.P3935640903610456510.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247541.P3935640903610456510

`7*n²+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A247541

/-- `7*n²+1` -/
def P3935640903610456510.Spec : Prop :=
  ∀ n, (P3935640903610456510.a n : ℤ) = A247541 n

theorem P3935640903610456510.correct : P3935640903610456510.Spec := by
  intro n
  simp only [A247541]

end A247541

/-! ## A247541.P17196411909963690936

`abs(xor(7*n², -1))`
-/

namespace A247541.P17196411909963690936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (7 * n ^ 2 : ℤ) (-1)|

end

end A247541.P17196411909963690936

namespace A247541

/-- `abs(xor(7*n², -1))` -/
def P17196411909963690936.Spec : Prop :=
  ∀ n, P17196411909963690936.a n = A247541 n

end A247541

/-! ## A247541.P17804668087311341201

`-xor(7*n², -1)`
-/

namespace A247541.P17804668087311341201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (7 * n ^ 2 : ℤ) (-1)

end

end A247541.P17804668087311341201

namespace A247541

/-- `-xor(7*n², -1)` -/
def P17804668087311341201.Spec : Prop :=
  ∀ n, P17804668087311341201.a n = A247541 n

end A247541

/-! ## A247541.P2107917506777793850

`∑[a(n-1)+14]` with `a(0)=1, a(1)=7`
-/

namespace A247541.P2107917506777793850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247541.P2107917506777793850

namespace A247541

/-- `∑[a(n-1)+14]` -/
def P2107917506777793850.Spec : Prop :=
  ∀ n, (P2107917506777793850.a n : ℤ) = A247541 n

end A247541

/-! ## A247541.P15913056954037170303

`xor(2, n*7*n+3)`
-/

namespace A247541.P15913056954037170303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n * (7 * n) + 3)

end

end A247541.P15913056954037170303

namespace A247541

/-- `xor(2, n*7*n+3)` -/
def P15913056954037170303.Spec : Prop :=
  ∀ n, (P15913056954037170303.a n : ℤ) = A247541 n

end A247541

/-! ## A247541.P15348887957987988650

`abs(abs(C(2*(n+1), 2)-n)+n*(5*n-2))`
-/

namespace A247541.P15348887957987988650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|(Nat.choose (2 * (n + 1)) 2 : ℤ) - (n : ℤ)| + (n : ℤ) * ((5 * n : ℤ) - 2))|

end

end A247541.P15348887957987988650

namespace A247541

/-- `abs(abs(C(2*(n+1), 2)-n)+n*(5*n-2))` -/
def P15348887957987988650.Spec : Prop :=
  ∀ n, P15348887957987988650.a n = A247541 n

end A247541

/-! ## A247541.P14173112837370751159

`abs(∑[record[(n+1)*gcd(2, n+1)]]+n*(5*n-2))`
-/

namespace A247541.P14173112837370751159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 2 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ) * ((5 * n : ℤ) - 2)|

end

end A247541.P14173112837370751159

namespace A247541

/-- `abs(∑[record[(n+1)*gcd(2, n+1)]]+n*(5*n-2))` -/
def P14173112837370751159.Spec : Prop :=
  ∀ n, P14173112837370751159.a n = A247541 n

end A247541

/-! ## A247541.P8827464030134112017

`ceil(A010011(n)/3)`
-/

namespace A247541.P8827464030134112017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010011 n : ℚ) / 3⌉

end

end A247541.P8827464030134112017

namespace A247541

/-- `ceil(A010011(n)/3)` -/
def P8827464030134112017.Spec : Prop :=
  ∀ n, P8827464030134112017.a n = A247541 n

end A247541

/-! ## A247541.P16456346190437543909

`(A144555(n)+2)/2`
-/

namespace A247541.P16456346190437543909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144555 n + 2 : ℚ) / 2

end

end A247541.P16456346190437543909

namespace A247541

/-- `(A144555(n)+2)/2` -/
def P16456346190437543909.Spec : Prop :=
  ∀ n, P16456346190437543909.a n = (A247541 n : ℚ)

end A247541

/-! ## A247541.P8771971662463140545

`(A064762(n)+3)/3`
-/

namespace A247541.P8771971662463140545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064762 n + 3 : ℚ) / 3

end

end A247541.P8771971662463140545

namespace A247541

/-- `(A064762(n)+3)/3` -/
def P8771971662463140545.Spec : Prop :=
  ∀ n, P8771971662463140545.a n = (A247541 n : ℚ)

end A247541

/-! ## A247541.P14749988855441593177

`(A158556(n)+3)/4`
-/

namespace A247541.P14749988855441593177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158556 n + 3 : ℚ) / 4

end

end A247541.P14749988855441593177

namespace A247541

/-- `(A158556(n)+3)/4` -/
def P14749988855441593177.Spec : Prop :=
  ∀ n, P14749988855441593177.a n = (A247541 n : ℚ)

end A247541

/-! ## A247541.P12504135898896911615

`abs(A081585(n)-n²)`
-/

namespace A247541.P12504135898896911615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081585 n - (n ^ 2 : ℤ)|

end

end A247541.P12504135898896911615

namespace A247541

/-- `abs(A081585(n)-n²)` -/
def P12504135898896911615.Spec : Prop :=
  ∀ n, P12504135898896911615.a n = A247541 n

end A247541

/-! ## A247541.P9519042146934763369

`(A195024(n)+2+n)/2`
-/

namespace A247541.P9519042146934763369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195024 n + 2 + (n : ℤ) : ℚ) / 2

end

end A247541.P9519042146934763369

namespace A247541

/-- `(A195024(n)+2+n)/2` -/
def P9519042146934763369.Spec : Prop :=
  ∀ n, P9519042146934763369.a n = (A247541 n : ℚ)

end A247541

/-! ## A247541.P4345402726217025962

`round((n*A008596(n)+1)/2)`
-/

namespace A247541.P4345402726217025962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) * A008596 n + 1 : ℚ) / 2)

end

end A247541.P4345402726217025962

namespace A247541

/-- `round((n*A008596(n)+1)/2)` -/
def P4345402726217025962.Spec : Prop :=
  ∀ n, P4345402726217025962.a n = A247541 n

end A247541

/-! ## A247541.P5523371606513796098

`(n*7*A004277(n)+2)/2`
-/

namespace A247541.P5523371606513796098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (7 * A004277 n) + 2 : ℚ) / 2

end

end A247541.P5523371606513796098

namespace A247541

/-- `(n*7*A004277(n)+2)/2` -/
def P5523371606513796098.Spec : Prop :=
  ∀ n, P5523371606513796098.a n = (A247541 n : ℚ)

end A247541

/-! ## A247541.P11578169620532820069

`abs(n*(A016921(n)+n)+1-n)`
-/

namespace A247541.P11578169620532820069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A016921 n + (n : ℤ)) + 1 - (n : ℤ)|

end

end A247541.P11578169620532820069

namespace A247541

/-- `abs(n*(A016921(n)+n)+1-n)` -/
def P11578169620532820069.Spec : Prop :=
  ∀ n, P11578169620532820069.a n = A247541 n

end A247541

/-! ## A247541.P2258133015775978792

`A016886(n)%A085001(n)`
-/

namespace A247541.P2258133015775978792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016886 n) (A085001 n)

end

end A247541.P2258133015775978792

namespace A247541

/-- `A016886(n)%A085001(n)` -/
def P2258133015775978792.Spec : Prop :=
  ∀ n, P2258133015775978792.a n = A247541 n

end A247541

/-!
# A247542: Numbers k such that d(r,k) = 0 and d(s,k) = 0, where d(x,k) = k-th binary digit of x, r = {e}, s = {1/e}, and { } = fractional part.

The programs for A247542, there is no canonical definition to state claims against.
-/

/-! ## A247542.P15508316841698281537

`∩[comp[A004712(n+1)], A247546(n+1)]`
-/

namespace A247542.P15508316841698281537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004712 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A247542.P15508316841698281537

/-! ## A247542.P4068758805747004946

`∩[comp[A247545(n+1)], A247546(n+1)]`
-/

namespace A247542.P4068758805747004946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247545 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A247542.P4068758805747004946

/-!
# A247543: Numbers k such that d(r,k) = 0 and d(s,k) = 1, where d(x,k) = k-th binary digit of x, r = {e}, s = {1/e}, and { } = fractional part.

The programs for A247543, there is no canonical definition to state claims against.
-/

/-! ## A247543.P4674530072380965421

`∩[comp[A247544(n+1)], A247547(n+1)]`
-/

namespace A247543.P4674530072380965421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247544 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A247543.P4674530072380965421

/-!
# A247544: Numbers k such that d(r,k) = 1 and d(s,k) = 0, where d(x,k) = k-th binary digit of x, r = {e}, s = {1/e}, and { } = fractional part.

The programs for A247544, there is no canonical definition to state claims against.
-/

/-! ## A247544.P7563090908356677802

`∩[A004712(n+1), A247547(n+1)]`
-/

namespace A247544.P7563090908356677802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247544.P7563090908356677802

/-! ## A247544.P14468352006209045089

`∩[A094058(n+1)-2, A247547(n+1)]`
-/

namespace A247544.P14468352006209045089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094058 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247544.P14468352006209045089

/-! ## A247544.P12187137432214250869

`∩[comp[A247543(n+1)], A247547(n+1)]`
-/

namespace A247544.P12187137432214250869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247543 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A247544.P12187137432214250869

/-! ## A247544.P5878577456315125038

`eq[A329326(A329347(n+4)), A329337(n)]`
-/

namespace A247544.P5878577456315125038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329326 (A329347 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329337 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247544.P5878577456315125038

/-!
# A247545: Numbers k such that d(r,k) = 1 and d(s,k) = 1, where d(x,k) = k-th binary digit of x, r = {e}, s = {1/e}, and { } = fractional part.

The programs for A247545, there is no canonical definition to state claims against.
-/

/-! ## A247545.P2040615969418577630

`∩[A004712(n+1), A247546(n+1)]`
-/

namespace A247545.P2040615969418577630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247545.P2040615969418577630

/-! ## A247545.P5851319950538940852

`∩[A094058(n+1)-2, A247546(n+1)]`
-/

namespace A247545.P5851319950538940852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094058 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247545.P5851319950538940852

/-! ## A247545.P14578798670510683083

`∩[comp[A247542(n+1)], A247546(n+1)]`
-/

namespace A247545.P14578798670510683083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247542 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A247545.P14578798670510683083

/-! ## A247545.P13452318212826109329

`∩[A004712(n+1), comp[A247544(n+1)]]`
-/

namespace A247545.P13452318212826109329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004712 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247544 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A247545.P13452318212826109329

/-! ## A247545.P14131382125553177448

`∩[A094058(n+1)-2, comp[A247544(n+1)]]`
-/

namespace A247545.P14131382125553177448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094058 (n + 1) - 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247544 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A247545.P14131382125553177448

/-!
# A247546: Numbers k such that d(r,k) = d(s,k), where d(x,k) = k-th binary digit of x, r = {e}, s = {1/e}, and { } = fractional part.

The programs for A247546, there is no canonical definition to state claims against.
-/

/-! ## A247546.P14651865409999038205

`comp[A247547(n+1)-1]+1`
-/

namespace A247546.P14651865409999038205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247547 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247546.P14651865409999038205

/-! ## A247546.P8220201085454554633

`∪[A247542(n+1), A247545(n+1)]`
-/

namespace A247546.P8220201085454554633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247546.P8220201085454554633

/-! ## A247546.P25884304577434629

`comp[∪[A247543(n+1), A247544(n+1)]-1]+1`
-/

namespace A247546.P25884304577434629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247543 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247544 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247546.P25884304577434629

/-! ## A247546.P3245313762571409023

`eq[A182492(2*n), char[A247547(n+1)]]`
-/

namespace A247546.P3245313762571409023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247547 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A247546.P3245313762571409023

/-! ## A247546.P17372353819384451546

`lt[A182492(4*n)+char[A247547(n+1)], 1]`
-/

namespace A247546.P17372353819384451546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247547 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (4 * n) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A247546.P17372353819384451546

/-!
# A247547: Numbers k such that d(r,k) != d(s,k), where d(x,k) = k-th binary digit of x, r = {e}, s = {1/e}, and { } = fractional part.

The programs for A247547, there is no canonical definition to state claims against.
-/

/-! ## A247547.P4298230931194507093

`∪[A247543(n+1), A247544(n+1)]`
-/

namespace A247547.P4298230931194507093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247547.P4298230931194507093

/-! ## A247547.P4306034988856785018

`comp[∪[A247542(n+1), A247545(n+1)]-1]+1`
-/

namespace A247547.P4306034988856785018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247542 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247545 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247547.P4306034988856785018

/-! ## A247547.P13504545624238133665

`eq[char[A247546(n+1)], A151933(n)]`
-/

namespace A247547.P13504545624238133665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247546 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A247547.P13504545624238133665

/-!
# A247549: Numbers n for which A242720(n) = prime(n)*(prime(n)+8)+3.

The programs for A247549, there is no canonical definition to state claims against.
-/

/-! ## A247549.P13732461214818327810

`or(A115055(3*n+1), A353852(A084967(n+1)))`
-/

namespace A247549.P13732461214818327810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A115055 (3 * n + 1)) (A353852 (A084967 (n + 1)).toNat)

end

end A247549.P13732461214818327810

/-!
# A247555: A permutation of the nonnegative numbers: a(4n) = 8n, a(4n+1) = 2n + 1, a(4n+2) = 4n + 2, a(4n+3) = 8n + 4.

The programs for A247555, the canonical program `A247555.P7775120721378656668` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247555 has offset 0).

The definition of A247555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247555.P7775120721378656668

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=3, a(6)=6, a(7)=12`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A247555

/-- `2*a(n-4)-a(n-8)` -/
def P7775120721378656668.Spec : Prop :=
  ∀ n, P7775120721378656668.a n = A247555 n

theorem P7775120721378656668.correct : P7775120721378656668.Spec := by
  intro n
  simp only [A247555]

end A247555

/-! ## A247555.P17837927095567765673

`gcd(4, A140201(n))*A004525(n)`
-/

namespace A247555.P17837927095567765673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (A140201 n) : ℤ) * A004525 n

end

end A247555.P17837927095567765673

namespace A247555

/-- `gcd(4, A140201(n))*A004525(n)` -/
def P17837927095567765673.Spec : Prop :=
  ∀ n, P17837927095567765673.a n = A247555 n

end A247555

/-! ## A247555.P7681085314506393620

`A000034(A057979(n))*A029578(A098180(n))`
-/

namespace A247555.P7681085314506393620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A057979 n).toNat * A029578 (A098180 n).toNat

end

end A247555.P7681085314506393620

namespace A247555

/-- `A000034(A057979(n))*A029578(A098180(n))` -/
def P7681085314506393620.Spec : Prop :=
  ∀ n, P7681085314506393620.a n = A247555 n

end A247555

/-! ## A247555.P16199536280522322420

`Δ[A047600(n+1)]*A186421(n)`
-/

namespace A247555.P16199536280522322420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A186421 n

end

end A247555.P16199536280522322420

namespace A247555

/-- `Δ[A047600(n+1)]*A186421(n)` -/
def P16199536280522322420.Spec : Prop :=
  ∀ n, P16199536280522322420.a n = A247555 n

end A247555

/-! ## A247555.P4326740748039772955

`A004525(n)*A159481(Δ[A102039(n+1)])`
-/

namespace A247555.P4326740748039772955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n * A159481 (f1 (n + 1) - f1 n).toNat

end

end A247555.P4326740748039772955

namespace A247555

/-- `A004525(n)*A159481(Δ[A102039(n+1)])` -/
def P4326740748039772955.Spec : Prop :=
  ∀ n, P4326740748039772955.a n = A247555 n

end A247555

/-! ## A247555.P2624723493653067116

`A000034(A140106(n+1))*A029578(A222259(n+1))`
-/

namespace A247555.P2624723493653067116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A140106 (n + 1)).toNat * A029578 (A222259 (n + 1)).toNat

end

end A247555.P2624723493653067116

namespace A247555

/-- `A000034(A140106(n+1))*A029578(A222259(n+1))` -/
def P2624723493653067116.Spec : Prop :=
  ∀ n, P2624723493653067116.a n = A247555 n

end A247555

/-!
# A247556: Exact differential base (a B_2 sequence) constructed as follows: Start with a(0)=0. For n>=1, let S be the set of all differences a(j)-a(i) for 0 <= i < j <= n-1, and let d be the smallest positive integer not in S. If, for every i in 1..n-1, a(n-1) + d - a(i) is not in S, then a(n) = a(n-1) + d. Otherwise, let r be the smallest positive integer such that, for every i in 1..n-1, neither a(n-1) + r - a(i) nor a(n-1) + r + d - a(i) is in S; then a(n) = a(n-1) + r and a(n+1) = a(n) + d.

The programs for A247556, there is no canonical definition to state claims against.
-/

/-! ## A247556.P10007189248964133856

`A025582(n+1)-A136595(A166344(n+1))`
-/

namespace A247556.P10007189248964133856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025582 (n + 1) - A136595 (A166344 (n + 1)).toNat

end

end A247556.P10007189248964133856

/-! ## A247556.P6330862900487477455

`A005282(n+1)-(A136595(A166344(n+1))+1)`
-/

namespace A247556.P6330862900487477455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (n + 1) - (A136595 (A166344 (n + 1)).toNat + 1)

end

end A247556.P6330862900487477455

/-! ## A247556.P15880260193376035441

`eq[1, A281511(n+1)]-A136595(A166344(n+1))`
-/

namespace A247556.P15880260193376035441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A136595 (A166344 (n + 1)).toNat

end

end A247556.P15880260193376035441

/-! ## A247556.P9678206185213283412

`floor(A034757(n+1)/2)-A136595(A166344(n+1))`
-/

namespace A247556.P9678206185213283412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034757 (n + 1) : ℚ) / 2⌋ - A136595 (A166344 (n + 1)).toNat

end

end A247556.P9678206185213283412

/-! ## A247556.P2583785488833373297

`A284917(n+1)-1+n-A136595(A166344(n+1))`
-/

namespace A247556.P2583785488833373297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284917 (n + 1) - 1 + (n : ℤ) - A136595 (A166344 (n + 1)).toNat

end

end A247556.P2583785488833373297

/-!
# A247557: Number of rectangles formed by the absolute leader classes of the seven-dimensional integer lattice as a function of the infinity norm n and having a unique perimeter, where the rectangles have one common lattice point being the origin of the seven-dimensional integer lattice.

The programs for A247557, there is no canonical definition to state claims against.
-/

/-! ## A247557.P17045159544246354915

`A375496(A086732(n+1))`
-/

namespace A247557.P17045159544246354915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375496 (A086732 (n + 1)).toNat

end

end A247557.P17045159544246354915

/-!
# A247558: Smallest integer x > 0 such that the number of semiprimes in the interval (x/2, x] equals n.

The programs for A247558, there is no canonical definition to state claims against.
-/

/-! ## A247558.P14807519072248339288

`or(eq[4, A224925(n+2)], A224965(n+1))`
-/

namespace A247558.P14807519072248339288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224925 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A224965 (n + 1))

end

end A247558.P14807519072248339288

/-!
# A247560: a(n) = 3*a(n-1) - 4*a(n-2) with a(0) = a(1) = 1.

The programs for A247560, the canonical program `A247560.P13602487420217078340` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247560 has offset 0).

The definition of A247560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-4*a(n-2)` (program `A247560.P13602487420217078340`, by `A247560.P13602487420217078340.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247560.P13602487420217078340

`3*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A247560

/-- `3*a(n-1)-4*a(n-2)` -/
def P13602487420217078340.Spec : Prop :=
  ∀ n, P13602487420217078340.a n = A247560 n

theorem P13602487420217078340.correct : P13602487420217078340.Spec := by
  intro n
  simp only [A247560]

end A247560

/-! ## A247560.P11527876666729718071

`A247487(2*n+1)`
-/

namespace A247560.P11527876666729718071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247487 (2 * n + 1)

end

end A247560.P11527876666729718071

namespace A247560

/-- `A247487(2*n+1)` -/
def P11527876666729718071.Spec : Prop :=
  ∀ n, P11527876666729718071.a n = A247560 n

end A247560

/-! ## A247560.P9329973141971570004

`A247564(2*n+1)`
-/

namespace A247560.P9329973141971570004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247564 (2 * n + 1)

end

end A247560.P9329973141971570004

namespace A247560

/-- `A247564(2*n+1)` -/
def P9329973141971570004.Spec : Prop :=
  ∀ n, P9329973141971570004.a n = A247560 n

end A247560

/-! ## A247560.P9152821132276895694

`(-1)^n*A087168(n)`
-/

namespace A247560.P9152821132276895694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A087168 n

end

end A247560.P9152821132276895694

namespace A247560

/-- `(-1)^n*A087168(n)` -/
def P9152821132276895694.Spec : Prop :=
  ∀ n, P9152821132276895694.a n = A247560 n

end A247560

/-! ## A247560.P5701135218092423713

`∏[3-4/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A247560.P5701135218092423713
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 - 4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A247560.P5701135218092423713

namespace A247560

/-- `∏[3-4/a(n-1)]` -/
def P5701135218092423713.Spec : Prop :=
  ∀ n, P5701135218092423713.a n = (A247560 n : ℚ)

end A247560

/-! ## A247560.P14543821532220587624

`A247565(n)-2^n`
-/

namespace A247560.P14543821532220587624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247565 n - (2 ^ n : ℤ)

end

end A247560.P14543821532220587624

namespace A247560

/-- `A247565(n)-2^n` -/
def P14543821532220587624.Spec : Prop :=
  ∀ n, P14543821532220587624.a n = A247560 n

end A247560

/-! ## A247560.P7649048365633714957

`A247563(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A247560.P7649048365633714957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247563 n - 2 * a (n - 1)

end

end A247560.P7649048365633714957

namespace A247560

/-- `A247563(n)-2*a(n-1)` -/
def P7649048365633714957.Spec : Prop :=
  ∀ n, P7649048365633714957.a n = A247560 n

end A247560

/-! ## A247560.P16773396975326205576

`A087168(n)/A033999(n)`
-/

namespace A247560.P16773396975326205576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087168 n : ℚ) / (A033999 n : ℚ)

end

end A247560.P16773396975326205576

namespace A247560

/-- `A087168(n)/A033999(n)` -/
def P16773396975326205576.Spec : Prop :=
  ∀ n, P16773396975326205576.a n = (A247560 n : ℚ)

end A247560

/-! ## A247560.P16150429291651295691

`A033999(n)*A107920(2*n+1)`
-/

namespace A247560.P16150429291651295691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A107920 (2 * n + 1)

end

end A247560.P16150429291651295691

namespace A247560

/-- `A033999(n)*A107920(2*n+1)` -/
def P16150429291651295691.Spec : Prop :=
  ∀ n, P16150429291651295691.a n = A247560 n

end A247560

/-! ## A247560.P16757741670070596063

`A062157(n+1)*A107920(2*n+1)`
-/

namespace A247560.P16757741670070596063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A107920 (2 * n + 1)

end

end A247560.P16757741670070596063

namespace A247560

/-- `A062157(n+1)*A107920(2*n+1)` -/
def P16757741670070596063.Spec : Prop :=
  ∀ n, P16757741670070596063.a n = A247560 n

end A247560

/-! ## A247560.P11963286254491906998

`A107920(2*n+1)*A165326(n+1)`
-/

namespace A247560.P11963286254491906998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 (2 * n + 1) * A165326 (n + 1)

end

end A247560.P11963286254491906998

namespace A247560

/-- `A107920(2*n+1)*A165326(n+1)` -/
def P11963286254491906998.Spec : Prop :=
  ∀ n, P11963286254491906998.a n = A247560 n

end A247560

/-! ## A247560.P13176494487846017689

`(A001045(n+1)-A078008(n+1))*A107920(2*n+1)`
-/

namespace A247560.P13176494487846017689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001045 (n + 1) - A078008 (n + 1)) * A107920 (2 * n + 1)

end

end A247560.P13176494487846017689

namespace A247560

/-- `(A001045(n+1)-A078008(n+1))*A107920(2*n+1)` -/
def P13176494487846017689.Spec : Prop :=
  ∀ n, P13176494487846017689.a n = A247560 n

end A247560

/-! ## A247560.P8641579276040695189

`Δ[A049072(n)/2]`
-/

namespace A247560.P8641579276040695189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049072 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247560.P8641579276040695189

namespace A247560

/-- `Δ[A049072(n)/2]` -/
def P8641579276040695189.Spec : Prop :=
  ∀ n, P8641579276040695189.a n = (A247560 n : ℚ)

end A247560

/-! ## A247560.P14408102295338207409

`A001607(2*n+1)*A062157(n+1)`
-/

namespace A247560.P14408102295338207409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 (2 * n + 1) * A062157 (n + 1)

end

end A247560.P14408102295338207409

namespace A247560

/-- `A001607(2*n+1)*A062157(n+1)` -/
def P14408102295338207409.Spec : Prop :=
  ∀ n, P14408102295338207409.a n = A247560 n

end A247560

/-! ## A247560.P14472584636708544489

`A001607(2*n+1)*A165326(n+1)`
-/

namespace A247560.P14472584636708544489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 (2 * n + 1) * A165326 (n + 1)

end

end A247560.P14472584636708544489

namespace A247560

/-- `A001607(2*n+1)*A165326(n+1)` -/
def P14472584636708544489.Spec : Prop :=
  ∀ n, P14472584636708544489.a n = A247560 n

end A247560

/-! ## A247560.P9058135591840528120

`A001607(2*n+1)*A057077(2*n)`
-/

namespace A247560.P9058135591840528120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 (2 * n + 1) * A057077 (2 * n)

end

end A247560.P9058135591840528120

namespace A247560

/-- `A001607(2*n+1)*A057077(2*n)` -/
def P9058135591840528120.Spec : Prop :=
  ∀ n, P9058135591840528120.a n = A247560 n

end A247560

/-! ## A247560.P4578888915466134341

`A247563(n)+A247563(n)-A049072(n+1)`
-/

namespace A247560.P4578888915466134341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247563 n + (A247563 n - A049072 (n + 1))

end

end A247560.P4578888915466134341

namespace A247560

/-- `A247563(n)+A247563(n)-A049072(n+1)` -/
def P4578888915466134341.Spec : Prop :=
  ∀ n, P4578888915466134341.a n = A247560 n

end A247560

/-! ## A247560.P15155133443201725832

`A001607(n+1)*A087168(n)/A107920(n+1)`
-/

namespace A247560.P15155133443201725832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001607 (n + 1) * A087168 n : ℚ) / (A107920 (n + 1) : ℚ)

end

end A247560.P15155133443201725832

namespace A247560

/-- `A001607(n+1)*A087168(n)/A107920(n+1)` -/
def P15155133443201725832.Spec : Prop :=
  ∀ n, P15155133443201725832.a n = (A247560 n : ℚ)

end A247560

/-! ## A247560.P11703525153985159835

`A200562(2*n)/A049072(n)`
-/

namespace A247560.P11703525153985159835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200562 (2 * n) : ℚ) / (A049072 n : ℚ)

end

end A247560.P11703525153985159835

namespace A247560

/-- `A200562(2*n)/A049072(n)` -/
def P11703525153985159835.Spec : Prop :=
  ∀ n, P11703525153985159835.a n = (A247560 n : ℚ)

end A247560

/-!
# A247561: Indices of primes in the tetranacci sequence A000288.

The programs for A247561, there is no canonical definition to state claims against.
-/

/-! ## A247561.P13059725890518968468

`A206718(A120253(2*(n+2)))+n+4`
-/

namespace A247561.P13059725890518968468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206718 (A120253 (2 * (n + 2))).toNat + (n + 4 : ℤ)

end

end A247561.P13059725890518968468

/-! ## A247561.P5730714170574865502

`lt[A118881(A048390(n)), A303605(n+1)]`
-/

namespace A247561.P5730714170574865502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A048390 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247561.P5730714170574865502

/-!
# A247562: A101402(10^n).

The programs for A247562, the canonical program `A247562.P5849283782100272797` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247562 has offset 0).

The definition of A247562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247562.P5849283782100272797

`A101402(10^n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A247562

/-- `A101402(10^n)` -/
def P5849283782100272797.Spec : Prop :=
  ∀ n, P5849283782100272797.a n = A247562 n

theorem P5849283782100272797.correct : P5849283782100272797.Spec := by
  intro n
  simp only [A247562]

end A247562

/-!
# A247563: a(n) = 3*a(n-1) - 4*a(n-2) with a(0) = 2, a(1) = 3.

The programs for A247563, the canonical program `A247563.P6074098845781282722` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247563 has offset 0).

The definition of A247563 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-4*a(n-2)` (program `A247563.P6074098845781282722`, by `A247563.P6074098845781282722.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247563.P6074098845781282722

`3*a(n-1)-4*a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A247563

/-- `3*a(n-1)-4*a(n-2)` -/
def P6074098845781282722.Spec : Prop :=
  ∀ n, P6074098845781282722.a n = A247563 n

theorem P6074098845781282722.correct : P6074098845781282722.Spec := by
  intro n
  simp only [A247563]

end A247563

/-! ## A247563.P9020725636907359349

`A247564(2*n)`
-/

namespace A247563.P9020725636907359349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247564 (2 * n)

end

end A247563.P9020725636907359349

namespace A247563

/-- `A247564(2*n)` -/
def P9020725636907359349.Spec : Prop :=
  ∀ n, P9020725636907359349.a n = A247563 n

end A247563

/-! ## A247563.P14491251100404871297

`(A047269(2*(n+1))-A047269(2*n+1))*A247487(2*n)`
-/

namespace A247563.P14491251100404871297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047269 (2 * (n + 1)) - A047269 (2 * n + 1)) * A247487 (2 * n)

end

end A247563.P14491251100404871297

namespace A247563

/-- `(A047269(2*(n+1))-A047269(2*n+1))*A247487(2*n)` -/
def P14491251100404871297.Spec : Prop :=
  ∀ n, P14491251100404871297.a n = A247563 n

end A247563

/-! ## A247563.P14834009580096954783

`A002249(2*n)*A033999(n)`
-/

namespace A247563.P14834009580096954783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (2 * n) * A033999 n

end

end A247563.P14834009580096954783

namespace A247563

/-- `A002249(2*n)*A033999(n)` -/
def P14834009580096954783.Spec : Prop :=
  ∀ n, P14834009580096954783.a n = A247563 n

end A247563

/-! ## A247563.P5473507385054605605

`A247565(2*n)/A247560(n)`
-/

namespace A247563.P5473507385054605605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247565 (2 * n) : ℚ) / (A247560 n : ℚ)

end

end A247563.P5473507385054605605

namespace A247563

/-- `A247565(2*n)/A247560(n)` -/
def P5473507385054605605.Spec : Prop :=
  ∀ n, P5473507385054605605.a n = (A247563 n : ℚ)

end A247563

/-! ## A247563.P3803792358709397076

`A247565(2*n)/A247487(2*n+1)`
-/

namespace A247563.P3803792358709397076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247565 (2 * n) : ℚ) / (A247487 (2 * n + 1) : ℚ)

end

end A247563.P3803792358709397076

namespace A247563

/-- `A247565(2*n)/A247487(2*n+1)` -/
def P3803792358709397076.Spec : Prop :=
  ∀ n, P3803792358709397076.a n = (A247563 n : ℚ)

end A247563

/-! ## A247563.P14463565340743352314

`(A247560(2*n+1)+A000079(n)²)/A247560(n+1)`
-/

namespace A247563.P14463565340743352314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247560 (2 * n + 1) + A000079 n ^ 2 : ℚ) / (A247560 (n + 1) : ℚ)

end

end A247563.P14463565340743352314

namespace A247563

/-- `(A247560(2*n+1)+A000079(n)²)/A247560(n+1)` -/
def P14463565340743352314.Spec : Prop :=
  ∀ n, P14463565340743352314.a n = (A247563 n : ℚ)

end A247563

/-! ## A247563.P14086354502649557802

`(A247560(2*n+1)+A000079(2*n))/A247560(n+1)`
-/

namespace A247563.P14086354502649557802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247560 (2 * n + 1) + A000079 (2 * n) : ℚ) / (A247560 (n + 1) : ℚ)

end

end A247563.P14086354502649557802

namespace A247563

/-- `(A247560(2*n+1)+A000079(2*n))/A247560(n+1)` -/
def P14086354502649557802.Spec : Prop :=
  ∀ n, P14086354502649557802.a n = (A247563 n : ℚ)

end A247563

/-! ## A247563.P11793363793954001096

`(A247560(2*n+1)+A011782(n+1)²)/A247560(n+1)`
-/

namespace A247563.P11793363793954001096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247560 (2 * n + 1) + A011782 (n + 1) ^ 2 : ℚ) / (A247560 (n + 1) : ℚ)

end

end A247563.P11793363793954001096

namespace A247563

/-- `(A247560(2*n+1)+A011782(n+1)²)/A247560(n+1)` -/
def P11793363793954001096.Spec : Prop :=
  ∀ n, P11793363793954001096.a n = (A247563 n : ℚ)

end A247563

/-! ## A247563.P5280928060545694482

`(A247560(2*n+1)+A011782(2*n+1))/A247560(n+1)`
-/

namespace A247563.P5280928060545694482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247560 (2 * n + 1) + A011782 (2 * n + 1) : ℚ) / (A247560 (n + 1) : ℚ)

end

end A247563.P5280928060545694482

namespace A247563

/-- `(A247560(2*n+1)+A011782(2*n+1))/A247560(n+1)` -/
def P5280928060545694482.Spec : Prop :=
  ∀ n, P5280928060545694482.a n = (A247563 n : ℚ)

end A247563

/-!
# A247564: a(n) = 3*a(n-2) - 4*a(n-4) with a(0) = 2, a(1) = 1, a(2) = 3, a(3) = 1.

The programs for A247564, the canonical program `A247564.P5966885090281257834` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247564 has offset 0).

The definition of A247564 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)-4*a(n-4)` (program `A247564.P5966885090281257834`, by `A247564.P5966885090281257834.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247564.P5966885090281257834

`3*a(n-2)-4*a(n-4)` with `a(0)=2, a(1)=1, a(2)=3, a(3)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A247564

/-- `3*a(n-2)-4*a(n-4)` -/
def P5966885090281257834.Spec : Prop :=
  ∀ n, P5966885090281257834.a n = A247564 n

theorem P5966885090281257834.correct : P5966885090281257834.Spec := by
  intro n
  simp only [A247564]

end A247564

/-! ## A247564.P15021891298191072025

`Δ[A047269(n+1)]*A247487(n)`
-/

namespace A247564.P15021891298191072025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A247487 n

end

end A247564.P15021891298191072025

namespace A247564

/-- `Δ[A047269(n+1)]*A247487(n)` -/
def P15021891298191072025.Spec : Prop :=
  ∀ n, P15021891298191072025.a n = A247564 n

end A247564

/-! ## A247564.P5889947422946143610

`A000217(gcd(n, A000217(n+1)))*A247487(n)`
-/

namespace A247564.P5889947422946143610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.gcd (n : ℤ) (A000217 (n + 1))) * A247487 n

end

end A247564.P5889947422946143610

namespace A247564

/-- `A000217(gcd(n, A000217(n+1)))*A247487(n)` -/
def P5889947422946143610.Spec : Prop :=
  ∀ n, P5889947422946143610.a n = A247564 n

end A247564

/-! ## A247564.P5439704497525558163

`gcd(3, A002249(n))*A247487(n)`
-/

namespace A247564.P5439704497525558163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A002249 n) : ℤ) * A247487 n

end

end A247564.P5439704497525558163

namespace A247564

/-- `gcd(3, A002249(n))*A247487(n)` -/
def P5439704497525558163.Spec : Prop :=
  ∀ n, P5439704497525558163.a n = A247564 n

end A247564

/-! ## A247564.P5987325535009717303

`A247565(n-1)/a(n-1)` with `a(0)=2`
-/

namespace A247564.P5987325535009717303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A247565 (n - 1) : ℚ) / a (n - 1)

end

end A247564.P5987325535009717303

namespace A247564

/-- `A247565(n-1)/a(n-1)` -/
def P5987325535009717303.Spec : Prop :=
  ∀ n, P5987325535009717303.a n = (A247564 n : ℚ)

end A247564

/-!
# A247565: a(n) = 5*a(n-1) - 10*a(n-2) + 8*a(n-3) with a(0) = 2, a(1) = a(2) = 3.

The programs for A247565, the canonical program `A247565.P11482652330988218526` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247565 has offset 0).

The definition of A247565 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-10*a(n-2)+8*a(n-3)` (program `A247565.P11482652330988218526`, by `A247565.P11482652330988218526.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247565.P15871227118554476869

`A247564(n+1)*A247564(n)`
-/

namespace A247565.P15871227118554476869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247564 (n + 1) * A247564 n

end

end A247565.P15871227118554476869

namespace A247565

/-- `A247564(n+1)*A247564(n)` -/
def P15871227118554476869.Spec : Prop :=
  ∀ n, P15871227118554476869.a n = A247565 n

end A247565

/-! ## A247565.P15166685600725882438

`2^n+A247560(n)`
-/

namespace A247565.P15166685600725882438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + A247560 n

end

end A247565.P15166685600725882438

namespace A247565

/-- `2^n+A247560(n)` -/
def P15166685600725882438.Spec : Prop :=
  ∀ n, P15166685600725882438.a n = A247565 n

end A247565

/-! ## A247565.P11482652330988218526

`5*a(n-1)-10*a(n-2)+8*a(n-3)` with `a(0)=2, a(1)=3, a(2)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A247565

/-- `5*a(n-1)-10*a(n-2)+8*a(n-3)` -/
def P11482652330988218526.Spec : Prop :=
  ∀ n, P11482652330988218526.a n = A247565 n

theorem P11482652330988218526.correct : P11482652330988218526.Spec := by
  intro n
  simp only [A247565]

end A247565

/-! ## A247565.P5250900515965902257

`A247564(n+1+n)+2^n`
-/

namespace A247565.P5250900515965902257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247564 (n + 1 + n) + (2 ^ n : ℤ)

end

end A247565.P5250900515965902257

namespace A247565

/-- `A247564(n+1+n)+2^n` -/
def P5250900515965902257.Spec : Prop :=
  ∀ n, P5250900515965902257.a n = A247565 n

end A247565

/-! ## A247565.P2389535547759022401

`A247560(n)+A000079(n)`
-/

namespace A247565.P2389535547759022401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247560 n + A000079 n

end

end A247565.P2389535547759022401

namespace A247565

/-- `A247560(n)+A000079(n)` -/
def P2389535547759022401.Spec : Prop :=
  ∀ n, P2389535547759022401.a n = A247565 n

end A247565

/-! ## A247565.P8836914780990377140

`A247487(2*n+1)+A000079(n)`
-/

namespace A247565.P8836914780990377140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247487 (2 * n + 1) + A000079 n

end

end A247565.P8836914780990377140

namespace A247565

/-- `A247487(2*n+1)+A000079(n)` -/
def P8836914780990377140.Spec : Prop :=
  ∀ n, P8836914780990377140.a n = A247565 n

end A247565

/-! ## A247565.P8054141685889026835

`A247487(2*n+1)+A077957(2*n)`
-/

namespace A247565.P8054141685889026835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247487 (2 * n + 1) + A077957 (2 * n)

end

end A247565.P8054141685889026835

namespace A247565

/-- `A247487(2*n+1)+A077957(2*n)` -/
def P8054141685889026835.Spec : Prop :=
  ∀ n, P8054141685889026835.a n = A247565 n

end A247565

/-! ## A247565.P1724490873564655256

`A247487(2*n+1)+A193818(∑[n])`
-/

namespace A247565.P1724490873564655256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247487 (2 * n + 1) + A193818 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247565.P1724490873564655256

namespace A247565

/-- `A247487(2*n+1)+A193818(∑[n])` -/
def P1724490873564655256.Spec : Prop :=
  ∀ n, P1724490873564655256.a n = A247565 n

end A247565

/-!
# A247566: Base-5 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A247566, there is no canonical definition to state claims against.
-/

/-! ## A247566.P4575253513479626744

`A306640(∑[n+3]+7)`
-/

namespace A247566.P4575253513479626744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A247566.P4575253513479626744

/-! ## A247566.P5702765239530753940

`A306640(Δ[A008778(n)]+6)+char[19]`
-/

namespace A247566.P5702765239530753940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (f1 (n + 1) - f1 n + 6).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A247566.P5702765239530753940

/-! ## A247566.P1695271582622263976

`∏{d}[A306640(A055999(n)+10), A014963(#)]`
-/

namespace A247566.P1695271582622263976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A055999 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A247566.P1695271582622263976

/-! ## A247566.P7759254136478078194

`A306640(A055999(n)+10)%A000108(n+5)`
-/

namespace A247566.P7759254136478078194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306640 (A055999 n + 10).toNat) (A000108 (n + 5))

end

end A247566.P7759254136478078194

/-! ## A247566.P5058949935663768763

`A000108(C(2, n+2))*A306640(A055999(n)+10)`
-/

namespace A247566.P5058949935663768763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A306640 (A055999 n + 10).toNat

end

end A247566.P5058949935663768763

/-!
# A247567: Base-6 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A247567, there is no canonical definition to state claims against.
-/

/-! ## A247567.P9237936805268094671

`A306640(∑[n+4]+11)`
-/

namespace A247567.P9237936805268094671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A247567.P9237936805268094671

/-! ## A247567.P14685502451850408333

`A306640(A167499(n+3))+char[19]`
-/

namespace A247567.P14685502451850408333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A167499 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A247567.P14685502451850408333

/-! ## A247567.P9311161620859508611

`A306640(A000124(n+4)+4)+char[22]`
-/

namespace A247567.P9311161620859508611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000124 (n + 4) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A247567.P9311161620859508611

/-! ## A247567.P6382227183240768070

`A306640(A167499(n+3))%A042558(n)`
-/

namespace A247567.P6382227183240768070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306640 (A167499 (n + 3)).toNat) (A042558 n)

end

end A247567.P6382227183240768070

/-! ## A247567.P15855872124138080950

`A007318(C(n, n²))*A306640(A167499(n+3))`
-/

namespace A247567.P15855872124138080950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n (n ^ 2)) * A306640 (A167499 (n + 3)).toNat

end

end A247567.P15855872124138080950

/-!
# A247568: Base-7 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A247568, there is no canonical definition to state claims against.
-/

/-! ## A247568.P12817781398160204537

`A306640(C(n+7, 2)-n)`
-/

namespace A247568.P12817781398160204537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (Nat.choose (n + 7) 2 - n)

end

end A247568.P12817781398160204537

/-! ## A247568.P11638342171042546557

`A306640(A166136(n+4))`
-/

namespace A247568.P11638342171042546557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A166136 (n + 4)).toNat

end

end A247568.P11638342171042546557

/-! ## A247568.P12017811806921177492

`A306640(A056115(n)+21)`
-/

namespace A247568.P12017811806921177492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A056115 n + 21).toNat

end

end A247568.P12017811806921177492

/-! ## A247568.P1570719748029971442

`A306640(Δ[A264443(n)]+10)`
-/

namespace A247568.P1570719748029971442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (f1 (n + 1) - f1 n + 10).toNat

end

end A247568.P1570719748029971442

/-! ## A247568.P13234614250588466159

`A306640(A167499(n+4)+1)`
-/

namespace A247568.P13234614250588466159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A167499 (n + 4) + 1).toNat

end

end A247568.P13234614250588466159

/-!
# A247569: Base-8 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A247569, there is no canonical definition to state claims against.
-/

/-! ## A247569.P6399526402954666215

`A306640(C(n+8, 2)-n)`
-/

namespace A247569.P6399526402954666215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (Nat.choose (n + 8) 2 - n)

end

end A247569.P6399526402954666215

/-! ## A247569.P6085016884486178021

`A306640(A056119(n)+28)`
-/

namespace A247569.P6085016884486178021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A056119 n + 28).toNat

end

end A247569.P6085016884486178021

/-! ## A247569.P11310902412054495176

`A306640(A000124(n+6)+6)`
-/

namespace A247569.P11310902412054495176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000124 (n + 6) + 6).toNat

end

end A247569.P11310902412054495176

/-! ## A247569.P11409748790103459534

`A306640(A000096(n+5)+8)`
-/

namespace A247569.P11409748790103459534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000096 (n + 5) + 8).toNat

end

end A247569.P11409748790103459534

/-! ## A247569.P7901729536808319784

`A306640(A000217(n+6)+7)`
-/

namespace A247569.P7901729536808319784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000217 (n + 6) + 7).toNat

end

end A247569.P7901729536808319784

/-!
# A247570: Base-9 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A247570, there is no canonical definition to state claims against.
-/

/-! ## A247570.P14310353722377477434

`A306640(eq[13, A066657(n)])`
-/

namespace A247570.P14310353722377477434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247570.P14310353722377477434

/-! ## A247570.P6951540189951679012

`A306640(A167499(n+6)+3)`
-/

namespace A247570.P6951540189951679012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A167499 (n + 6) + 3).toNat

end

end A247570.P6951540189951679012

/-! ## A247570.P17228167534758102737

`A306640(A000124(n+7)+7)`
-/

namespace A247570.P17228167534758102737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000124 (n + 7) + 7).toNat

end

end A247570.P17228167534758102737

/-! ## A247570.P11102266781750167517

`A306640(A000096(n+6)+9)`
-/

namespace A247570.P11102266781750167517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000096 (n + 6) + 9).toNat

end

end A247570.P11102266781750167517

/-! ## A247570.P2928286758845578154

`A306640(A000217(n+7)+8)`
-/

namespace A247570.P2928286758845578154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000217 (n + 7) + 8).toNat

end

end A247570.P2928286758845578154

/-!
# A247571: Base-10 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A247571, there is no canonical definition to state claims against.
-/

/-! ## A247571.P3655777144632056334

`A306640(A167499(n+7)+4)`
-/

namespace A247571.P3655777144632056334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A167499 (n + 7) + 4).toNat

end

end A247571.P3655777144632056334

/-! ## A247571.P17346117864816829829

`A306640(A000217(n+8)+9)`
-/

namespace A247571.P17346117864816829829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000217 (n + 8) + 9).toNat

end

end A247571.P17346117864816829829

/-! ## A247571.P11003295444857771196

`A306640(A161680(n+9)+9)`
-/

namespace A247571.P11003295444857771196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A161680 (n + 9) + 9).toNat

end

end A247571.P11003295444857771196

/-! ## A247571.P5462530134099944084

`A306640(A056000(n+4)+19)`
-/

namespace A247571.P5462530134099944084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A056000 (n + 4) + 19).toNat

end

end A247571.P5462530134099944084

/-! ## A247571.P10488701164647527423

`A306640(eq[10, A131818(n+1)])`
-/

namespace A247571.P10488701164647527423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247571.P10488701164647527423

/-!
# A247572: Base-11 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A247572, there is no canonical definition to state claims against.
-/

/-! ## A247572.P18420390448180754240

`A306640(eq[10, A256910(n)])`
-/

namespace A247572.P18420390448180754240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247572.P18420390448180754240

/-! ## A247572.P8223476353958696643

`A306640(A000217(n+9)+10)`
-/

namespace A247572.P8223476353958696643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000217 (n + 9) + 10).toNat

end

end A247572.P8223476353958696643

/-! ## A247572.P12889841785000620102

`A306640(eq[11, A131818(n+1)])`
-/

namespace A247572.P12889841785000620102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247572.P12889841785000620102

/-! ## A247572.P10551465263072396666

`A306640(A000096(n+9)-(n-1))`
-/

namespace A247572.P10551465263072396666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000096 (n + 9) - ((n : ℤ) - 1)).toNat

end

end A247572.P10551465263072396666

/-! ## A247572.P13917061408642771487

`A306640(A000124(n+10)-(n+1))`
-/

namespace A247572.P13917061408642771487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000124 (n + 10) - (n + 1 : ℤ)).toNat

end

end A247572.P13917061408642771487

/-!
# A247573: Base-12 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A247573, there is no canonical definition to state claims against.
-/

/-! ## A247573.P3988219573502944770

`A306640(abs(C(abs(1-n)+13, 2)-n))`
-/

namespace A247573.P3988219573502944770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 |((Nat.choose (|1 - (n : ℤ)| + 13).toNat 2 : ℤ) - (n : ℤ))|.toNat

end

end A247573.P3988219573502944770

/-! ## A247573.P4132557048848101021

`A306640(A000124(n+10)+10)`
-/

namespace A247573.P4132557048848101021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000124 (n + 10) + 10).toNat

end

end A247573.P4132557048848101021

/-! ## A247573.P4390901063207404650

`A306640(eq[12, A131818(n+1)])`
-/

namespace A247573.P4390901063207404650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247573.P4390901063207404650

/-! ## A247573.P4441551009417131764

`A306640(A056000(n+8)-2-2*n)`
-/

namespace A247573.P4441551009417131764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A056000 (n + 8) - 2 - (2 * n : ℤ)).toNat

end

end A247573.P4441551009417131764

/-! ## A247573.P4234599762494431816

`A306640(A052905(n+9)-A004273(n+4))`
-/

namespace A247573.P4234599762494431816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A052905 (n + 9) - A004273 (n + 4)).toNat

end

end A247573.P4234599762494431816

/-!
# A247574: Base-13 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A247574, there is no canonical definition to state claims against.
-/

/-! ## A247574.P7745536510926757410

`A306640(C(n+13, 2)-n)`
-/

namespace A247574.P7745536510926757410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (Nat.choose (n + 13) 2 - n)

end

end A247574.P7745536510926757410

/-! ## A247574.P16394072183299658403

`A306640(A000217(n+11)+12)`
-/

namespace A247574.P16394072183299658403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000217 (n + 11) + 12).toNat

end

end A247574.P16394072183299658403

/-! ## A247574.P11612793570343115507

`A306640(eq[13, A131818(n+1)])`
-/

namespace A247574.P11612793570343115507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247574.P11612793570343115507

/-! ## A247574.P7003137679131454748

`A306640(record[A257506(n+14)]-n)`
-/

namespace A247574.P7003137679131454748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257506 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A247574.P7003137679131454748

/-!
# A247575: Base-14 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A247575, there is no canonical definition to state claims against.
-/

/-! ## A247575.P14097241642589948608

`A306640(eq[29, A066657(n)])`
-/

namespace A247575.P14097241642589948608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247575.P14097241642589948608

/-! ## A247575.P13335322432441882131

`A306640(eq[14, A131818(n+1)])`
-/

namespace A247575.P13335322432441882131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247575.P13335322432441882131

/-! ## A247575.P15680091834148486755

`A306640(A017089(n+10)+A000096(n+3))`
-/

namespace A247575.P15680091834148486755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A017089 (n + 10) + A000096 (n + 3)).toNat

end

end A247575.P15680091834148486755

/-! ## A247575.P15838790602891149188

`A306640(A000096(n+13)-A004274(n+8))`
-/

namespace A247575.P15838790602891149188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000096 (n + 13) - A004274 (n + 8)).toNat

end

end A247575.P15838790602891149188

/-!
# A247576: Base-15 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A247576, there is no canonical definition to state claims against.
-/

/-! ## A247576.P4414797105755541503

`A306640(eq[15, A131818(n+1)])`
-/

namespace A247576.P4414797105755541503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247576.P4414797105755541503

/-! ## A247576.P8415289287425037915

`A306640(A161680(n+15)+n-2*n)`
-/

namespace A247576.P8415289287425037915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A161680 (n + 15) + (n : ℤ) - (2 * n : ℤ)).toNat

end

end A247576.P8415289287425037915

/-! ## A247576.P5549742486283852565

`A306640(A005893(n+8)+6)`
-/

namespace A247576.P5549742486283852565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A005893 (n + 8) + 6).toNat

end

end A247576.P5549742486283852565

/-! ## A247576.P13797013045931235802

`A306640(A099776(n+8)-A004280(n+6))`
-/

namespace A247576.P13797013045931235802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A099776 (n + 8) - A004280 (n + 6)).toNat

end

end A247576.P13797013045931235802

/-!
# A247577: Base-16 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A247577, there is no canonical definition to state claims against.
-/

/-! ## A247577.P4213259459002778274

`A306640(eq[16, A131818(n+1)])`
-/

namespace A247577.P4213259459002778274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247577.P4213259459002778274

/-! ## A247577.P8233917706436362202

`A306640(A000096(n+15)-A004274(n+9))`
-/

namespace A247577.P8233917706436362202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A000096 (n + 15) - A004274 (n + 9)).toNat

end

end A247577.P8233917706436362202

/-! ## A247577.P3114191078127361834

`A000035(n+1)+A281873(n+2)*A293485(n+2)`
-/

namespace A247577.P3114191078127361834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + A281873 (n + 2) * A293485 (n + 2)

end

end A247577.P3114191078127361834

/-!
# A247578: Base-17 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A247578, there is no canonical definition to state claims against.
-/

/-! ## A247578.P3606660094882498062

`A088659(n+2)/A325687(A257504(n+1))`
-/

namespace A247578.P3606660094882498062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088659 (n + 2) : ℚ) / (A325687 (A257504 (n + 1)).toNat : ℚ)

end

end A247578.P3606660094882498062

/-! ## A247578.P15457719435616659826

`A000010(A044824(n+2))*∏{p}[(n+2)^gcd(6, n), #]`
-/

namespace A247578.P15457719435616659826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.gcd 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A044824 (n + 2)).toNat * ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A247578.P15457719435616659826

/-! ## A247578.P16197137874867620223

`A299822(n+2)%A135217(n+2)`
-/

namespace A247578.P16197137874867620223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299822 (n + 2)) (A135217 (n + 2))

end

end A247578.P16197137874867620223

/-! ## A247578.P11174610251751120535

`lcm(A000010(2*(n+2)), A130260(A007598(n+2)))`
-/

namespace A247578.P11174610251751120535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (2 * (n + 2))) (A130260 (A007598 (n + 2)).toNat)

end

end A247578.P11174610251751120535

/-! ## A247578.P14452456037583361695

`A390753((n+2)^4)`
-/

namespace A247578.P14452456037583361695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390753 ((n + 2) ^ 4)

end

end A247578.P14452456037583361695

/-!
# A247579: Base-18 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A247579, there is no canonical definition to state claims against.
-/

/-! ## A247579.P14452654047663867225

`A306640(abs(C(abs(1-n)+19, 2)-n))`
-/

namespace A247579.P14452654047663867225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 |((Nat.choose (|1 - (n : ℤ)| + 19).toNat 2 : ℤ) - (n : ℤ))|.toNat

end

end A247579.P14452654047663867225

/-!
# A247580: Base-19 state complexity of partitioned deterministic finite automaton (PDFA) for the periodic sequence (123...n)*.

The programs for A247580, there is no canonical definition to state claims against.
-/

/-! ## A247580.P3036340320923708693

`A306640(C(n+19, 2)-n)`
-/

namespace A247580.P3036340320923708693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (Nat.choose (n + 19) 2 - n)

end

end A247580.P3036340320923708693

/-!
# A247582: Triangle, read by rows, T(n,k) = (k+1)*Sum_{i=0..n-k} C(k+2*i,i)*C(n-i-1,n-k-i)/(k+i+1).

The programs for A247582, there is no canonical definition to state claims against.
-/

/-! ## A247582.P11243989443555194157

`A196119(A130534(n))-2`
-/

namespace A247582.P11243989443555194157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196119 (A130534 n).toNat - 2

end

end A247582.P11243989443555194157

/-! ## A247582.P7405918007349697761

`A196119(abs(A008275(n+1)))-2`
-/

namespace A247582.P7405918007349697761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196119 |A008275 (n + 1)|.toNat - 2

end

end A247582.P7405918007349697761

/-! ## A247582.P13479035258616945724

`ceil((A229792(A039599(n))-1)/2)`
-/

namespace A247582.P13479035258616945724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A229792 (A039599 n).toNat - 1 : ℚ) / 2⌉

end

end A247582.P13479035258616945724

/-! ## A247582.P6698214066328613815

`ceil((A229792(A147747(n))-1)/2)`
-/

namespace A247582.P6698214066328613815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A229792 (A147747 n).toNat - 1 : ℚ) / 2⌉

end

end A247582.P6698214066328613815

/-! ## A247582.P16026008873464766030

`A336112(A003056(A008275(n+1)²))`
-/

namespace A247582.P16026008873464766030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336112 (A003056 (A008275 (n + 1) ^ 2).toNat).toNat

end

end A247582.P16026008873464766030

/-!
# A247584: a(n) = 5*a(n-1) - 10*a(n-2) + 10*a(n-3) - 5*a(n-4) + 3*a(n-5) with a(0) = a(1) = a(2) = a(3) = a(4) = 1.

The programs for A247584, the canonical program `A247584.P3464871262619672896` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247584 has offset 0).

The definition of A247584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247584.P3464871262619672896

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+3*a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A247584

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+3*a(n-5)` -/
def P3464871262619672896.Spec : Prop :=
  ∀ n, P3464871262619672896.a n = A247584 n

theorem P3464871262619672896.correct : P3464871262619672896.Spec := by
  intro n
  simp only [A247584]

end A247584

/-! ## A247584.P905167576085428340

`A008651(5*12*C(n, 5))`
-/

namespace A247584.P905167576085428340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (5 * (12 * Nat.choose n 5))

end

end A247584.P905167576085428340

namespace A247584

/-- `A008651(5*12*C(n, 5))` -/
def P905167576085428340.Spec : Prop :=
  ∀ n, P905167576085428340.a n = A247584 n

end A247584

/-! ## A247584.P9402344382859192275

`A005408(C(C(n, floor(n/5)), 5))`
-/

namespace A247584.P9402344382859192275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Nat.choose (Nat.choose n ⌊(n : ℚ) / 5⌋.toNat) 5)

end

end A247584.P9402344382859192275

namespace A247584

/-- `A005408(C(C(n, floor(n/5)), 5))` -/
def P9402344382859192275.Spec : Prop :=
  ∀ n, P9402344382859192275.a n = A247584 n

end A247584

/-! ## A247584.P11637463213349358616

`A081753(A052501(n))`
-/

namespace A247584.P11637463213349358616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A052501 n).toNat

end

end A247584.P11637463213349358616

namespace A247584

/-- `A081753(A052501(n))` -/
def P11637463213349358616.Spec : Prop :=
  ∀ n, P11637463213349358616.a n = A247584 n

end A247584

/-! ## A247584.P15494496833767570789

`A081753(A059593(n))`
-/

namespace A247584.P15494496833767570789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A059593 n).toNat

end

end A247584.P15494496833767570789

namespace A247584

/-- `A081753(A059593(n))` -/
def P15494496833767570789.Spec : Prop :=
  ∀ n, P15494496833767570789.a n = A247584 n

end A247584

/-!
# A247585: Period of the decimal expansion of 1/p as p runs through the prime numbers of the form n^2+1 (0 by convention for the primes 2 and 5).

The programs for A247585, there is no canonical definition to state claims against.
-/

/-! ## A247585.P6297008080714907464

`A002371(A000720(A002496(n+1)))`
-/

namespace A247585.P6297008080714907464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (A000720 (A002496 (n + 1)).toNat).toNat

end

end A247585.P6297008080714907464

/-! ## A247585.P17735680265632370458

`A002371(A062325(n+1))`
-/

namespace A247585.P17735680265632370458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (A062325 (n + 1)).toNat

end

end A247585.P17735680265632370458

/-! ## A247585.P8244726935192829924

`C(A048595(A062325(n+1)), A261143(n+1))`
-/

namespace A247585.P8244726935192829924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048595 (A062325 (n + 1)).toNat).toNat (A261143 (n + 1)).toNat

end

end A247585.P8244726935192829924

/-! ## A247585.P282941121570497287

`A051626(p?[n²+1])`
-/

namespace A247585.P282941121570497287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A247585.P282941121570497287

/-! ## A247585.P8479873960119342285

`A084681(p?[n²+1])`
-/

namespace A247585.P8479873960119342285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A247585.P8479873960119342285

/-!
# A247586: Number of acute triangles with integer sides less than or equal to n.

The programs for A247586, there is no canonical definition to state claims against.
-/

/-! ## A247586.P13092041171111370906

`∑[A247588(n+1)]`
-/

namespace A247586.P13092041171111370906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247586.P13092041171111370906

/-! ## A247586.P5491553330672857256

`∑[∑[∑[1-Δ[A036703(n)]]]]`
-/

namespace A247586.P5491553330672857256
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036703 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f4 (n + 1) - f4 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247586.P5491553330672857256

/-! ## A247586.P13511072492002862565

`∑[∑[2-Δ[A036702(n)]+n]]`
-/

namespace A247586.P13511072492002862565
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036702 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f3 (n + 1) - f3 n) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247586.P13511072492002862565

/-! ## A247586.P15280559609968278781

`∑[∑[n+1]-A211340(n+1)]`
-/

namespace A247586.P15280559609968278781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A211340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247586.P15280559609968278781

/-! ## A247586.P4079626598863703990

`∑[∑[2-A036703(n+1)+n]]`
-/

namespace A247586.P4079626598863703990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036703 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247586.P4079626598863703990

/-!
# A247587: Number of obtuse triangles with integer sides at most n.

The programs for A247587, the canonical program `A247587.P16386335736758002616` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247587 has offset 1).

The definition of A247587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9990 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247587.P16386335736758002616

`∑[A211340(n+1)-A002620(n+1)-A046080(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A247587

/-- `∑[A211340(n+1)-A002620(n+1)-A046080(n+1)]` -/
def P16386335736758002616.Spec : Prop :=
  ∀ n, P16386335736758002616.a n = A247587 (n + 1)

theorem P16386335736758002616.correct : P16386335736758002616.Spec := by
  intro n
  simp only [A247587, Nat.add_sub_cancel]

end A247587

/-! ## A247587.P8258059143566817771

`∑[A211340(n+1)%A076921(n+1)-A046080(n+1)]`
-/

namespace A247587.P8258059143566817771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211340 (n + 1)) (A076921 (n + 1)) - A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247587.P8258059143566817771

namespace A247587

/-- `∑[A211340(n+1)%A076921(n+1)-A046080(n+1)]` -/
def P8258059143566817771.Spec : Prop :=
  ∀ n, P8258059143566817771.a n = A247587 (n + 1)

end A247587

/-! ## A247587.P121503461832430481

`∑[A236384(n+1)-A046080(n+1)]`
-/

namespace A247587.P121503461832430481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236384 (n + 1) - A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247587.P121503461832430481

namespace A247587

/-- `∑[A236384(n+1)-A046080(n+1)]` -/
def P121503461832430481.Spec : Prop :=
  ∀ n, P121503461832430481.a n = A247587 (n + 1)

end A247587

/-! ## A247587.P3134003105794776119

`∑[A236384(n+1)]-A224921(n+2)`
-/

namespace A247587.P3134003105794776119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A224921 (n + 2)

end

end A247587.P3134003105794776119

namespace A247587

/-- `∑[A236384(n+1)]-A224921(n+2)` -/
def P3134003105794776119.Spec : Prop :=
  ∀ n, P3134003105794776119.a n = A247587 (n + 1)

end A247587

/-! ## A247587.P6283521033712581728

`∑[A236384(n+1)-(A063014(n+1)-1)]`
-/

namespace A247587.P6283521033712581728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236384 (n + 1) - (A063014 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247587.P6283521033712581728

namespace A247587

/-- `∑[A236384(n+1)-(A063014(n+1)-1)]` -/
def P6283521033712581728.Spec : Prop :=
  ∀ n, P6283521033712581728.a n = A247587 (n + 1)

end A247587

/-! ## A247587.P2150077231312202729

`∑[A236384(n+1)-(A338939(2*(n+1))-1)/2]`
-/

namespace A247587.P2150077231312202729
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236384 (n + 1) : ℚ) - (A338939 (2 * (n + 1)) - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247587.P2150077231312202729

namespace A247587

/-- `∑[A236384(n+1)-(A338939(2*(n+1))-1)/2]` -/
def P2150077231312202729.Spec : Prop :=
  ∀ n, P2150077231312202729.a n = (A247587 (n + 1) : ℚ)

end A247587

/-! ## A247587.P11028963131732129017

`∑[A236384(n+1)-(A328712(n+1)+A024362(n+1))]`
-/

namespace A247587.P11028963131732129017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236384 (n + 1) - (A328712 (n + 1) + A024362 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247587.P11028963131732129017

namespace A247587

/-- `∑[A236384(n+1)-(A328712(n+1)+A024362(n+1))]` -/
def P11028963131732129017.Spec : Prop :=
  ∀ n, P11028963131732129017.a n = A247587 (n + 1)

end A247587

/-! ## A247587.P17850095844704531921

`∑[A247589(n+1)]`
-/

namespace A247587.P17850095844704531921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247587.P17850095844704531921

namespace A247587

/-- `∑[A247589(n+1)]` -/
def P17850095844704531921.Spec : Prop :=
  ∀ n, P17850095844704531921.a n = A247587 (n + 1)

end A247587

/-! ## A247587.P38776367359846969

`A306674(n+1)-A224921(n+2)`
-/

namespace A247587.P38776367359846969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306674 (n + 1) - A224921 (n + 2)

end

end A247587.P38776367359846969

namespace A247587

/-- `A306674(n+1)-A224921(n+2)` -/
def P38776367359846969.Spec : Prop :=
  ∀ n, P38776367359846969.a n = A247587 (n + 1)

end A247587

/-! ## A247587.P3138300605427517563

`A306674(n+1)-∑[A046080(n+1)]`
-/

namespace A247587.P3138300605427517563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306674 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247587.P3138300605427517563

namespace A247587

/-- `A306674(n+1)-∑[A046080(n+1)]` -/
def P3138300605427517563.Spec : Prop :=
  ∀ n, P3138300605427517563.a n = A247587 (n + 1)

end A247587

/-!
# A247588: Number of integer-sided acute triangles with largest side n.

The programs for A247588, the canonical program `A247588.P1851453756911384571` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247588 has offset 1).

The definition of A247588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247588.P1851453756911384571

`∑[n+2]-A228172(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A247588

/-- `∑[n+2]-A228172(n+1)` -/
def P1851453756911384571.Spec : Prop :=
  ∀ n, P1851453756911384571.a n = A247588 (n + 1)

theorem P1851453756911384571.correct : P1851453756911384571.Spec := by
  intro n
  simp only [A247588, Nat.add_sub_cancel]

end A247588

/-! ## A247588.P17256103224483874

`∑[n+1-floor(A036694(n+1)/2)]`
-/

namespace A247588.P17256103224483874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊(A036694 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247588.P17256103224483874

namespace A247588

/-- `∑[n+1-floor(A036694(n+1)/2)]` -/
def P17256103224483874.Spec : Prop :=
  ∀ n, P17256103224483874.a n = A247588 (n + 1)

end A247588

/-! ## A247588.P9664445813330594385

`∑[∑[1-Δ[A036703(n)]]]`
-/

namespace A247588.P9664445813330594385
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036703 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247588.P9664445813330594385

namespace A247588

/-- `∑[∑[1-Δ[A036703(n)]]]` -/
def P9664445813330594385.Spec : Prop :=
  ∀ n, P9664445813330594385.a n = A247588 (n + 1)

end A247588

/-! ## A247588.P9853930124436945142

`∑[2-Δ[A036702(n)]+n]`
-/

namespace A247588.P9853930124436945142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036702 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247588.P9853930124436945142

namespace A247588

/-- `∑[2-Δ[A036702(n)]+n]` -/
def P9853930124436945142.Spec : Prop :=
  ∀ n, P9853930124436945142.a n = A247588 (n + 1)

end A247588

/-! ## A247588.P14384639778958237089

`∑[2-A036703(n+1)+n]`
-/

namespace A247588.P14384639778958237089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036703 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247588.P14384639778958237089

namespace A247588

/-- `∑[2-A036703(n+1)+n]` -/
def P14384639778958237089.Spec : Prop :=
  ∀ n, P14384639778958237089.a n = A247588 (n + 1)

end A247588

/-! ## A247588.P16371041486389265434

`∑[n+1]+2-A036702(n+1)+n`
-/

namespace A247588.P16371041486389265434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ) - A036702 (n + 1) + (n : ℤ)

end

end A247588.P16371041486389265434

namespace A247588

/-- `∑[n+1]+2-A036702(n+1)+n` -/
def P16371041486389265434.Spec : Prop :=
  ∀ n, P16371041486389265434.a n = A247588 (n + 1)

end A247588

/-! ## A247588.P18306191233719548551

`∑[n+1]-A211340(n+1)`
-/

namespace A247588.P18306191233719548551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A211340 (n + 1)

end

end A247588.P18306191233719548551

namespace A247588

/-- `∑[n+1]-A211340(n+1)` -/
def P18306191233719548551.Spec : Prop :=
  ∀ n, P18306191233719548551.a n = A247588 (n + 1)

end A247588

/-! ## A247588.P1418955797765462160

`∑[A008619(n)]-A236384(n+1)`
-/

namespace A247588.P1418955797765462160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A236384 (n + 1)

end

end A247588.P1418955797765462160

namespace A247588

/-- `∑[A008619(n)]-A236384(n+1)` -/
def P1418955797765462160.Spec : Prop :=
  ∀ n, P1418955797765462160.a n = A247588 (n + 1)

end A247588

/-! ## A247588.P7893437182581110287

`A087811(n+1)-A236384(n+1)`
-/

namespace A247588.P7893437182581110287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) - A236384 (n + 1)

end

end A247588.P7893437182581110287

namespace A247588

/-- `A087811(n+1)-A236384(n+1)` -/
def P7893437182581110287.Spec : Prop :=
  ∀ n, P7893437182581110287.a n = A247588 (n + 1)

end A247588

/-! ## A247588.P12898839245431237512

`A002620(n+2)-A236384(n+1)`
-/

namespace A247588.P12898839245431237512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) - A236384 (n + 1)

end

end A247588.P12898839245431237512

namespace A247588

/-- `A002620(n+2)-A236384(n+1)` -/
def P12898839245431237512.Spec : Prop :=
  ∀ n, P12898839245431237512.a n = A247588 (n + 1)

end A247588

/-! ## A247588.P10396521792346833607

`∑[n+2-Δ[A073092(n²)]]`
-/

namespace A247588.P10396521792346833607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073092 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247588.P10396521792346833607

namespace A247588

/-- `∑[n+2-Δ[A073092(n²)]]` -/
def P10396521792346833607.Spec : Prop :=
  ∀ n, P10396521792346833607.a n = A247588 (n + 1)

end A247588

/-! ## A247588.P300835334034865725

`∑[n+1]-A211339((n+1)²)`
-/

namespace A247588.P300835334034865725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A211339 ((n + 1) ^ 2)

end

end A247588.P300835334034865725

namespace A247588

/-- `∑[n+1]-A211339((n+1)²)` -/
def P300835334034865725.Spec : Prop :=
  ∀ n, P300835334034865725.a n = A247588 (n + 1)

end A247588

/-!
# A247589: Number of integer-sided obtuse triangles with largest side n.

The programs for A247589, there is no canonical definition to state claims against.
-/

/-! ## A247589.P17808094598732518734

`Δ[A247587(floor(acot(n)+n))]`
-/

namespace A247589.P17808094598732518734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247587 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247589.P17808094598732518734

/-! ## A247589.P12483598903952978469

`Δ[A247587(round(acot(n)+n))]`
-/

namespace A247589.P12483598903952978469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247587 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247589.P12483598903952978469

/-! ## A247589.P10303559982671407742

`Δ[A247587(n^floor(atan(n)))]`
-/

namespace A247589.P10303559982671407742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247587 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247589.P10303559982671407742

/-! ## A247589.P15466474094263773738

`Δ[A247587(abs(1-n)+1)]`
-/

namespace A247589.P15466474094263773738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247587 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247589.P15466474094263773738

/-! ## A247589.P13344409495591837085

`abs(Δ[A247587(A028310(n))])`
-/

namespace A247589.P13344409495591837085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247587 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A247589.P13344409495591837085

/-! ## A247589.P1772859500303520610

`A236384(n+1)-A046080(n+1)`
-/

namespace A247589.P1772859500303520610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236384 (n + 1) - A046080 (n + 1)

end

end A247589.P1772859500303520610

/-! ## A247589.P6692262681149211169

`A236384(n+1)-A083025(n+1)`
-/

namespace A247589.P6692262681149211169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236384 (n + 1) - A083025 (n + 1)

end

end A247589.P6692262681149211169

/-! ## A247589.P431374302855243017

`A236384(n+1)-A267113(n+1)`
-/

namespace A247589.P431374302855243017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236384 (n + 1) - A267113 (n + 1)

end

end A247589.P431374302855243017

/-! ## A247589.P4981481820336966660

`A236384(n+1)-Δ[A224921(n+1)]`
-/

namespace A247589.P4981481820336966660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236384 (n + 1) - (f1 (n + 1) - f1 n)

end

end A247589.P4981481820336966660

/-! ## A247589.P12646756016671440970

`A247587(n+1)-A247587(A028310(n))`
-/

namespace A247589.P12646756016671440970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247587 (n + 1) - A247587 (A028310 n).toNat

end

end A247589.P12646756016671440970

/-!
# A247590: Primes p such that p + 6^k is also prime at least for k = 1, 2, 3 and 4.

The programs for A247590, there is no canonical definition to state claims against.
-/

/-! ## A247590.P1391340496715249494

`A023201(eq[A289813(n), A333755(2*(n+1))])`
-/

namespace A247590.P1391340496715249494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A247590.P1391340496715249494

/-! ## A247590.P13678135531167408616

`p?[A028834(A108658(2*n+1)+A046704(n+2))]`
-/

namespace A247590.P13678135531167408616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (A108658 (2 * n + 1) + A046704 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247590.P13678135531167408616

/-!
# A247591: Dimension of invariants of 2n-th tensor power of 6-dimensional irreducible representation of A_3.

The programs for A247591, there is no canonical definition to state claims against.
-/

/-! ## A247591.P15196959611281153500

`A064778((n+1)^(n-1))`
-/

namespace A247591.P15196959611281153500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064778 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A247591.P15196959611281153500

/-! ## A247591.P1249671766183850352

`A078796((n+1)^(n-1))`
-/

namespace A247591.P1249671766183850352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078796 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A247591.P1249671766183850352

/-!
# A247592: Numbers n such that A002496(n) mod A002496(n-1) is a perfect square.

The programs for A247592, there is no canonical definition to state claims against.
-/

/-! ## A247592.P3057092920983643392

`A120309(n+1)+A060632(A052873(n))`
-/

namespace A247592.P3057092920983643392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120309 (n + 1) + A060632 (A052873 n).toNat

end

end A247592.P3057092920983643392

/-! ## A247592.P12137150952883555352

`A377703(A034808(n+1))+A004664(n)`
-/

namespace A247592.P12137150952883555352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377703 (A034808 (n + 1)).toNat + A004664 n

end

end A247592.P12137150952883555352

/-!
# A247594: a(n) = a(n-1) + a(n-2) + 3*a(n-3) with a(0) = 1, a(1) = 2, a(2) = 5.

The programs for A247594, the canonical program `A247594.P459243990793785230` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247594 has offset 0).

The definition of A247594 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+3*a(n-3)` (program `A247594.P459243990793785230`, by `A247594.P459243990793785230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247594.P459243990793785230

`a(n-1)+a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A247594

/-- `a(n-1)+a(n-2)+3*a(n-3)` -/
def P459243990793785230.Spec : Prop :=
  ∀ n, (P459243990793785230.a n : ℤ) = A247594 n

theorem P459243990793785230.correct : P459243990793785230.Spec := by
  intro n
  simp only [A247594]

end A247594

/-! ## A247594.P17003950633616640236

`A123102(n+1)+A099213(n)`
-/

namespace A247594.P17003950633616640236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123102 (n + 1) + A099213 n

end

end A247594.P17003950633616640236

namespace A247594

/-- `A123102(n+1)+A099213(n)` -/
def P17003950633616640236.Spec : Prop :=
  ∀ n, P17003950633616640236.a n = A247594 n

end A247594

/-! ## A247594.P1424000287144180709

`A103143(n+3)-A103143(n)`
-/

namespace A247594.P1424000287144180709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103143 (n + 3) - A103143 n

end

end A247594.P1424000287144180709

namespace A247594

/-- `A103143(n+3)-A103143(n)` -/
def P1424000287144180709.Spec : Prop :=
  ∀ n, P1424000287144180709.a n = A247594 n

end A247594

/-! ## A247594.P10235451125909366908

`A099213(n)+record[Δ[A103143(n)]]`
-/

namespace A247594.P10235451125909366908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103143 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099213 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247594.P10235451125909366908

namespace A247594

/-- `A099213(n)+record[Δ[A103143(n)]]` -/
def P10235451125909366908.Spec : Prop :=
  ∀ n, P10235451125909366908.a n = A247594 n

end A247594

/-! ## A247594.P1864237292182883532

`A099213(n+1)+Δ[A103143(n)]`
-/

namespace A247594.P1864237292182883532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099213 (n + 1) + (f1 (n + 1) - f1 n)

end

end A247594.P1864237292182883532

namespace A247594

/-- `A099213(n+1)+Δ[A103143(n)]` -/
def P1864237292182883532.Spec : Prop :=
  ∀ n, P1864237292182883532.a n = A247594 n

end A247594

/-! ## A247594.P7474613699127534411

`Δ[A288260(n)]-∑[A099213(n)]`
-/

namespace A247594.P7474613699127534411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288260 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A247594.P7474613699127534411

namespace A247594

/-- `Δ[A288260(n)]-∑[A099213(n)]` -/
def P7474613699127534411.Spec : Prop :=
  ∀ n, P7474613699127534411.a n = A247594 n

end A247594

/-! ## A247594.P12978823169881663184

`Δ[Δ[A288260(n)/2]]`
-/

namespace A247594.P12978823169881663184
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288260 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247594.P12978823169881663184

namespace A247594

/-- `Δ[Δ[A288260(n)/2]]` -/
def P12978823169881663184.Spec : Prop :=
  ∀ n, P12978823169881663184.a n = (A247594 n : ℚ)

end A247594

/-!
# A247595: a(n) = 4*a(n-1) - 4*a(n-2) + 4*a(n-3) with a(0) = 1, a(1) = 3, a(2) = 10.

The programs for A247595, the canonical program `A247595.P4982172356206296329` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247595 has offset 0).

The definition of A247595 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-4*a(n-2)+4*a(n-3)` (program `A247595.P4982172356206296329`, by `A247595.P4982172356206296329.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247595.P4982172356206296329

`4*a(n-1)-4*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A247595

/-- `4*a(n-1)-4*a(n-2)+4*a(n-3)` -/
def P4982172356206296329.Spec : Prop :=
  ∀ n, P4982172356206296329.a n = A247595 n

theorem P4982172356206296329.correct : P4982172356206296329.Spec := by
  intro n
  simp only [A247595]

end A247595

/-! ## A247595.P16442001036576133895

`A061279(2*n)`
-/

namespace A247595.P16442001036576133895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061279 (2 * n)

end

end A247595.P16442001036576133895

namespace A247595

/-- `A061279(2*n)` -/
def P16442001036576133895.Spec : Prop :=
  ∀ n, P16442001036576133895.a n = A247595 n

end A247595

/-! ## A247595.P14832975992977875060

`A247301(6*n+8)`
-/

namespace A247595.P14832975992977875060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247301 (6 * n + 8)

end

end A247595.P14832975992977875060

namespace A247595

/-- `A247301(6*n+8)` -/
def P14832975992977875060.Spec : Prop :=
  ∀ n, P14832975992977875060.a n = A247595 n

end A247595

/-! ## A247595.P7348048192152810116

`A078025(2*(n+1))/2`
-/

namespace A247595.P7348048192152810116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078025 (2 * (n + 1)) : ℚ) / 2

end

end A247595.P7348048192152810116

namespace A247595

/-- `A078025(2*(n+1))/2` -/
def P7348048192152810116.Spec : Prop :=
  ∀ n, P7348048192152810116.a n = (A247595 n : ℚ)

end A247595

/-! ## A247595.P17750999185877620911

`A107383(2*n+3)/2`
-/

namespace A247595.P17750999185877620911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107383 (2 * n + 3) : ℚ) / 2

end

end A247595.P17750999185877620911

namespace A247595

/-- `A107383(2*n+3)/2` -/
def P17750999185877620911.Spec : Prop :=
  ∀ n, P17750999185877620911.a n = (A247595 n : ℚ)

end A247595

/-! ## A247595.P2203011202915259159

`A107383(2*n)+A078025(2*n)`
-/

namespace A247595.P2203011202915259159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107383 (2 * n) + A078025 (2 * n)

end

end A247595.P2203011202915259159

namespace A247595

/-- `A107383(2*n)+A078025(2*n)` -/
def P2203011202915259159.Spec : Prop :=
  ∀ n, P2203011202915259159.a n = A247595 n

end A247595

/-! ## A247595.P13311358532914901069

`A107383(2*n+1)+A107383(2*n)`
-/

namespace A247595.P13311358532914901069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107383 (2 * n + 1) + A107383 (2 * n)

end

end A247595.P13311358532914901069

namespace A247595

/-- `A107383(2*n+1)+A107383(2*n)` -/
def P13311358532914901069.Spec : Prop :=
  ∀ n, P13311358532914901069.a n = A247595 n

end A247595

/-! ## A247595.P13584189341161929044

`A247302(6*n+5)+A247302(A016789(2*n))`
-/

namespace A247595.P13584189341161929044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247302 (6 * n + 5) + A247302 (A016789 (2 * n)).toNat

end

end A247595.P13584189341161929044

namespace A247595

/-- `A247302(6*n+5)+A247302(A016789(2*n))` -/
def P13584189341161929044.Spec : Prop :=
  ∀ n, P13584189341161929044.a n = A247595 n

end A247595

/-! ## A247595.P3387551579666950267

`A099214(n+2)/4`
-/

namespace A247595.P3387551579666950267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099214 (n + 2) : ℚ) / 4

end

end A247595.P3387551579666950267

namespace A247595

/-- `A099214(n+2)/4` -/
def P3387551579666950267.Spec : Prop :=
  ∀ n, P3387551579666950267.a n = (A247595 n : ℚ)

end A247595

/-! ## A247595.P12935934335770233005

`Δ[A077879(2*n)/2]`
-/

namespace A247595.P12935934335770233005
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077879 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247595.P12935934335770233005

namespace A247595

/-- `Δ[A077879(2*n)/2]` -/
def P12935934335770233005.Spec : Prop :=
  ∀ n, P12935934335770233005.a n = (A247595 n : ℚ)

end A247595

/-! ## A247595.P950812065007113170

`A052907(2*(n+2))/4`
-/

namespace A247595.P950812065007113170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052907 (2 * (n + 2)) : ℚ) / 4

end

end A247595.P950812065007113170

namespace A247595

/-- `A052907(2*(n+2))/4` -/
def P950812065007113170.Spec : Prop :=
  ∀ n, P950812065007113170.a n = (A247595 n : ℚ)

end A247595

/-!
# A247596: Number of nonisomorphic binary n X n matrices with three 1's per column under row and column permutations.

The programs for A247596, there is no canonical definition to state claims against.
-/

/-! ## A247596.P13458979078531740730

`A304942(A167614(n+2))`
-/

namespace A247596.P13458979078531740730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304942 (A167614 (n + 2)).toNat

end

end A247596.P13458979078531740730

/-! ## A247596.P10567267436650630059

`A304942(A052905(n)+8)`
-/

namespace A247596.P10567267436650630059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304942 (A052905 n + 8).toNat

end

end A247596.P10567267436650630059

/-! ## A247596.P9036003294990773546

`A304942(A055999(n)+9)`
-/

namespace A247596.P9036003294990773546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304942 (A055999 n + 9).toNat

end

end A247596.P9036003294990773546

/-! ## A247596.P1891716873683722983

`A304942(eq[3, A002262(n)])`
-/

namespace A247596.P1891716873683722983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247596.P1891716873683722983

/-! ## A247596.P16008915411921320770

`A304942(eq[4, A002260(n+1)])`
-/

namespace A247596.P16008915411921320770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247596.P16008915411921320770

/-!
# A247597: Number of nonisomorphic binary n X n matrices with four 1's per column under row and column permutations.

The programs for A247597, there is no canonical definition to state claims against.
-/

/-! ## A247597.P16567291920278661921

`A304942(A056000(n)+14)`
-/

namespace A247597.P16567291920278661921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304942 (A056000 n + 14).toNat

end

end A247597.P16567291920278661921

/-! ## A247597.P6097288002202202110

`A304942(eq[4, A002262(n)])`
-/

namespace A247597.P6097288002202202110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247597.P6097288002202202110

/-! ## A247597.P6667354036966015814

`A304942(A167614(n+3)+1)`
-/

namespace A247597.P6667354036966015814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304942 (A167614 (n + 3) + 1).toNat

end

end A247597.P6667354036966015814

/-! ## A247597.P8264981729481058539

`A304942(eq[5, A002260(n+1)])`
-/

namespace A247597.P8264981729481058539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247597.P8264981729481058539

/-! ## A247597.P9979195793352437994

`A304942(Δ[A026054(n+3)-n²])`
-/

namespace A247597.P9979195793352437994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304942 (f1 (n + 1) - f1 n).toNat

end

end A247597.P9979195793352437994

/-!
# A247598: Number of nonisomorphic binary n X n matrices with five 1's per column under row and column permutations.

The programs for A247598, there is no canonical definition to state claims against.
-/

/-! ## A247598.P13507939250283663498

`A304942(A167499(n+4))`
-/

namespace A247598.P13507939250283663498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304942 (A167499 (n + 4)).toNat

end

end A247598.P13507939250283663498

/-! ## A247598.P5273015233975270200

`A304942(eq[5, A002262(n)])`
-/

namespace A247598.P5273015233975270200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247598.P5273015233975270200

/-! ## A247598.P15060669743240376904

`A304942(Δ[A026054(n+3)])`
-/

namespace A247598.P15060669743240376904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304942 (f1 (n + 1) - f1 n).toNat

end

end A247598.P15060669743240376904

/-! ## A247598.P9558357195261809668

`record[A304942(eq[3, A263233(n)])]`
-/

namespace A247598.P9558357195261809668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263233 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304942 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247598.P9558357195261809668

/-! ## A247598.P2146591268247084373

`A304942(eq[6, A004736(n+1)])`
-/

namespace A247598.P2146591268247084373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247598.P2146591268247084373

/-!
# A247599: Number of ways of writing n as a sum: n = 2^0*k(0)^3 + 2^1*k(1)^3 + 2^2*k(2)^3 + ... where the k's are nonnegative integers.

The programs for A247599, there is no canonical definition to state claims against.
-/

/-! ## A247599.P14865000082147036167

`A309025(n+1)%A274131(n+4)`
-/

namespace A247599.P14865000082147036167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309025 (n + 1)) (A274131 (n + 4))

end

end A247599.P14865000082147036167

/-! ## A247599.P2572063093997198995

`A309025(2*(n+1))%A297552(2*(n+1))`
-/

namespace A247599.P2572063093997198995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309025 (2 * (n + 1))) (A297552 (2 * (n + 1)))

end

end A247599.P2572063093997198995

/-! ## A247599.P13552480314430281977

`A057427(A299276(n))*A309025(2*n+2)`
-/

namespace A247599.P13552480314430281977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A299276 n).toNat * A309025 (2 * n + 2)

end

end A247599.P13552480314430281977

/-! ## A247599.P8516031870813881534

`A309025(2*(n+1))%A334968(A251632(n))`
-/

namespace A247599.P8516031870813881534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309025 (2 * (n + 1))) (A334968 (A251632 n).toNat)

end

end A247599.P8516031870813881534

/-! ## A247599.P14727285952927636521

`A127107(A309025(2*(n+1)))%A335482(2*n+3)`
-/

namespace A247599.P14727285952927636521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127107 (A309025 (2 * (n + 1))).toNat) (A335482 (2 * n + 3))

end

end A247599.P14727285952927636521

