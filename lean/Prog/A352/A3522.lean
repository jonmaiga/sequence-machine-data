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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
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
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A352200: a(0)=0, a(1)=1; thereafter, a(n) is the smallest number m not yet in the sequence such that the binary expansions of m and a(n-1) have a 1 in the same position, but the positions of the 1's in the binary expansions of m and a(n-2) are disjoint, except that the second condition is ignored if it would imply that no choice for m were possible.

The programs for A352200, there is no canonical definition to state claims against.
-/

/-! ## A352200.P16643483765981644035

`A248663(A100112(A100116(A100113(A100113(n+1)))))`
-/

namespace A352200.P16643483765981644035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A100112 (A100116 (A100113 (A100113 (n + 1)).toNat).toNat).toNat).toNat

end

end A352200.P16643483765981644035

/-! ## A352200.P17976079891509459667

`A248663(A100113(n+1)%A133788(n+1))`
-/

namespace A352200.P17976079891509459667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (Int.tmod (A100113 (n + 1)) (A133788 (n + 1))).toNat

end

end A352200.P17976079891509459667

/-!
# A352201: a(n) = binary weight of A338833(n).

The programs for A352201, there is no canonical definition to state claims against.
-/

/-! ## A352201.P9461804053993124141

`A000120(A338833(n+1))`
-/

namespace A352201.P9461804053993124141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A338833 (n + 1)).toNat

end

end A352201.P9461804053993124141

/-! ## A352201.P16013870893904661688

`A048881(2*A338833(n+1))`
-/

namespace A352201.P16013870893904661688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A338833 (n + 1)).toNat

end

end A352201.P16013870893904661688

/-! ## A352201.P3556570997647777483

`A048881(lcm(2, A338833(n+1)))`
-/

namespace A352201.P3556570997647777483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (Int.lcm 2 (A338833 (n + 1)))

end

end A352201.P3556570997647777483

/-! ## A352201.P12509939048453099241

`dr(A185544(2*A338833(n+1)))`
-/

namespace A352201.P12509939048453099241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A185544 (2 * A338833 (n + 1)).toNat)

end

end A352201.P12509939048453099241

/-! ## A352201.P16060628492180007166

`∑{e}[A001316(2*A338833(n+1)), #]`
-/

namespace A352201.P16060628492180007166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (2 * A338833 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A352201.P16060628492180007166

/-! ## A352201.P13899834682930932462

`∑{digits}[A007088(2*A338833(n+1)), #]`
-/

namespace A352201.P13899834682930932462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A338833 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A352201.P13899834682930932462

/-! ## A352201.P6741580613578288323

`∑{digits}[A185544(4*A338833(n+1)), #]`
-/

namespace A352201.P6741580613578288323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (4 * A338833 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A352201.P6741580613578288323

/-! ## A352201.P12724517606853396589

`∑{d}[A001316(A338833(n+1)), A001221(#)]`
-/

namespace A352201.P12724517606853396589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A338833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A352201.P12724517606853396589

/-! ## A352201.P5989420946812598495

`∑{d}[A001316(A338833(n+1)), A333805(#)]`
-/

namespace A352201.P5989420946812598495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A338833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A333805 d

end

end A352201.P5989420946812598495

/-! ## A352201.P13652856144895918117

`∑{e}[A001316(A338833(n+1)), A333764(#)]`
-/

namespace A352201.P13652856144895918117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A338833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A333764 (Nat.factorization (f1 n).natAbs p)

end

end A352201.P13652856144895918117

/-! ## A352201.P4553137681485056262

`∏{e}[A001316(A338833(n+1)), A240062(#)]`
-/

namespace A352201.P4553137681485056262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A338833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A240062 (Nat.factorization (f1 n).natAbs p)

end

end A352201.P4553137681485056262

/-! ## A352201.P2920891824644866335

`∑{digits}[A007088(A338833(n+1)), A004525(#)]`
-/

namespace A352201.P2920891824644866335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A338833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004525 x).sum

end

end A352201.P2920891824644866335

/-! ## A352201.P1299685328335338607

`∑{digits}[A007088(A338833(n+1)), A005668(#)]`
-/

namespace A352201.P1299685328335338607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A338833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005668 x).sum

end

end A352201.P1299685328335338607

/-! ## A352201.P3621009258432194281

`∑{digits}[A007088(A338833(n+1)), A007088(#)]`
-/

namespace A352201.P3621009258432194281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A338833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007088 x).sum

end

end A352201.P3621009258432194281

/-! ## A352201.P7972652999329740178

`∏{e}[A001316(A001316(n)*A338833(n+1)), #]`
-/

namespace A352201.P7972652999329740178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n * A338833 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A352201.P7972652999329740178

/-!
# A352202: a(n) = binary weight of A115510(n).

The programs for A352202, the canonical program `A352202.P16382500020271687373` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352202 has offset 1).

The definition of A352202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352202.P5251841915343068321

`A000120(A115510(n+1))`
-/

namespace A352202.P5251841915343068321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A115510 (n + 1)).toNat

end

end A352202.P5251841915343068321

namespace A352202

/-- `A000120(A115510(n+1))` -/
def P5251841915343068321.Spec : Prop :=
  ∀ n, P5251841915343068321.a n = A352202 (n + 1)

end A352202

/-! ## A352202.P18120268232992316857

`A048881(2*A115510(n+1))`
-/

namespace A352202.P18120268232992316857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A115510 (n + 1)).toNat

end

end A352202.P18120268232992316857

namespace A352202

/-- `A048881(2*A115510(n+1))` -/
def P18120268232992316857.Spec : Prop :=
  ∀ n, P18120268232992316857.a n = A352202 (n + 1)

end A352202

/-! ## A352202.P12125924241807844565

`A048881(lcm(2, A115510(n+1)))`
-/

namespace A352202.P12125924241807844565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (Int.lcm 2 (A115510 (n + 1)))

end

end A352202.P12125924241807844565

namespace A352202

/-- `A048881(lcm(2, A115510(n+1)))` -/
def P12125924241807844565.Spec : Prop :=
  ∀ n, P12125924241807844565.a n = A352202 (n + 1)

end A352202

/-! ## A352202.P5468129107049552447

`A048881(A115510(n+1)-1)+1`
-/

namespace A352202.P5468129107049552447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A115510 (n + 1) - 1).toNat + 1

end

end A352202.P5468129107049552447

namespace A352202

/-- `A048881(A115510(n+1)-1)+1` -/
def P5468129107049552447.Spec : Prop :=
  ∀ n, P5468129107049552447.a n = A352202 (n + 1)

end A352202

/-! ## A352202.P16382500020271687373

`A111113(n+1)+A000120(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A352202

/-- `A111113(n+1)+A000120(n+1)` -/
def P16382500020271687373.Spec : Prop :=
  ∀ n, P16382500020271687373.a n = A352202 (n + 1)

theorem P16382500020271687373.correct : P16382500020271687373.Spec := by
  intro n
  simp only [A352202, Nat.add_sub_cancel]

end A352202

/-! ## A352202.P2263114623875153244

`∑{digits}[A007088(2*A115510(n+1)), #]`
-/

namespace A352202.P2263114623875153244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A115510 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A352202.P2263114623875153244

namespace A352202

/-- `∑{digits}[A007088(2*A115510(n+1)), #]` -/
def P2263114623875153244.Spec : Prop :=
  ∀ n, (P2263114623875153244.a n : ℤ) = A352202 (n + 1)

end A352202

/-! ## A352202.P8150053823578001559

`A304744(A000120(n+1)%A278222(n))`
-/

namespace A352202.P8150053823578001559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304744 (Int.tmod (A000120 (n + 1)) (A278222 n)).toNat

end

end A352202.P8150053823578001559

namespace A352202

/-- `A304744(A000120(n+1)%A278222(n))` -/
def P8150053823578001559.Spec : Prop :=
  ∀ n, P8150053823578001559.a n = A352202 (n + 1)

end A352202

/-! ## A352202.P7639005897537262246

`∑{digits}[A007088(A115510(n+1)), A007088(#)]`
-/

namespace A352202.P7639005897537262246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007088 x).sum

end

end A352202.P7639005897537262246

namespace A352202

/-- `∑{digits}[A007088(A115510(n+1)), A007088(#)]` -/
def P7639005897537262246.Spec : Prop :=
  ∀ n, P7639005897537262246.a n = A352202 (n + 1)

end A352202

/-! ## A352202.P14561125054091979140

`A100661(A005187(A111113(n+1)+n+1))`
-/

namespace A352202.P14561125054091979140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (A005187 (A111113 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A352202.P14561125054091979140

namespace A352202

/-- `A100661(A005187(A111113(n+1)+n+1))` -/
def P14561125054091979140.Spec : Prop :=
  ∀ n, P14561125054091979140.a n = A352202 (n + 1)

end A352202

/-!
# A352203: Records in A109812.

The programs for A352203, there is no canonical definition to state claims against.
-/

/-! ## A352203.P17626081558207558533

`record[A109812(n+1)]`
-/

namespace A352203.P17626081558207558533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352203.P17626081558207558533

/-! ## A352203.P7344126002552226350

`record[A352794(n+1)+1+n]`
-/

namespace A352203.P7344126002552226350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352794 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352203.P7344126002552226350

/-! ## A352203.P11881966554917751068

`A109812(A352204(n+1))`
-/

namespace A352203.P11881966554917751068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109812 (A352204 (n + 1)).toNat

end

end A352203.P11881966554917751068

/-! ## A352203.P2305605660948197474

`record[A305371(n+2)/2]`
-/

namespace A352203.P2305605660948197474
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305371 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352203.P2305605660948197474

/-! ## A352203.P1417915745167853637

`record[A113232(A113233(n+1))]`
-/

namespace A352203.P1417915745167853637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113232 (A113233 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352203.P1417915745167853637

/-!
# A352204: Indices of records in A109812.

The programs for A352204, there is no canonical definition to state claims against.
-/

/-! ## A352204.P4665857027238305484

`eq[n, A352792(n+1)]+1`
-/

namespace A352204.P4665857027238305484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352792 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A352204.P4665857027238305484

/-! ## A352204.P8356178858910031569

`eq[n, A352792(A028310(n))+1]`
-/

namespace A352204.P8356178858910031569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352792 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352204.P8356178858910031569

/-! ## A352204.P7937025929553229625

`eq[n-1, A352792(A123108(2*n))]`
-/

namespace A352204.P7937025929553229625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352792 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352204.P7937025929553229625

/-! ## A352204.P7160853411342793683

`A113233(A352203(n+1))`
-/

namespace A352204.P7160853411342793683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (A352203 (n + 1)).toNat

end

end A352204.P7160853411342793683

/-! ## A352204.P12816759799767311647

`A113233(record[A109812(n+1)])`
-/

namespace A352204.P12816759799767311647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352204.P12816759799767311647

/-!
# A352205: a(0) = 0; for n>0, a(n) is the index of the last term in A109812 that is <= 2^n - 1.

The programs for A352205, there is no canonical definition to state claims against.
-/

/-! ## A352205.P16586527899588787168

`A113233(A255047(n))-C(2, n+2)`
-/

namespace A352205.P16586527899588787168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (A255047 n).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A352205.P16586527899588787168

/-! ## A352205.P7650696102587077315

`A113233(A255047(n))-A000007(n)`
-/

namespace A352205.P7650696102587077315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (A255047 n).toNat - A000007 n

end

end A352205.P7650696102587077315

/-! ## A352205.P17869075527454750771

`A113233(A255047(n))-A015070(n)`
-/

namespace A352205.P17869075527454750771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (A255047 n).toNat - A015070 n

end

end A352205.P17869075527454750771

/-! ## A352205.P5808181884289804458

`A113233(A255047(n))-A151878(n)`
-/

namespace A352205.P5808181884289804458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (A255047 n).toNat - A151878 n

end

end A352205.P5808181884289804458

/-! ## A352205.P8643579507147906096

`A057427(n)*A113233(A255047(n))`
-/

namespace A352205.P8643579507147906096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A113233 (A255047 n).toNat

end

end A352205.P8643579507147906096

/-!
# A352206: a(n) = A109812(A352205(n) + 1).

The programs for A352206, there is no canonical definition to state claims against.
-/

/-! ## A352206.P9368221682041854107

`A109812(A352205(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A352206.P9368221682041854107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109812 (A352205 n + 1).toNat

end

end A352206.P9368221682041854107

/-! ## A352206.P8313041528269060117

`2^n*A352921(round(sqrt(n²+1)))`
-/

namespace A352206.P8313041528269060117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A352921 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A352206.P8313041528269060117

/-! ## A352206.P14171144966207309217

`(A316437(A048654(n)+n)%2+n)*2^n`
-/

namespace A352206.P14171144966207309217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A316437 (A048654 n + (n : ℤ)).toNat) 2 + (n : ℤ)) * (2 ^ n : ℤ)

end

end A352206.P14171144966207309217

/-! ## A352206.P5760417672989000120

`A353240(A352205(n))-A000225(n)`
-/

namespace A352206.P5760417672989000120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353240 (A352205 n).toNat - A000225 n

end

end A352206.P5760417672989000120

/-! ## A352206.P3795168564000885967

`2^n*A341141((n+1)^A109014(n))`
-/

namespace A352206.P3795168564000885967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A341141 ((SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A109014 n : ℤ))).toNat + 10)

end

end A352206.P3795168564000885967

/-!
# A352207: a(1) = 2, a(2) = 48; for n >= 1, a(n+2) = c(n)*a(n+1)^2/a(n) where c(n) = 256*(2*n+3)^2*(4*n+1)*(4*n+3)^2*(4*n+5) / (27*(3*n+1)*(3*n+2)^2*(3*n+4)^2*(3*n+5)).

The programs for A352207, there is no canonical definition to state claims against.
-/

/-! ## A352207.P5924308081811535632

`∏[A131577(2*(n+1))]*A355400(n+1)`
-/

namespace A352207.P5924308081811535632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A355400 (n + 1)

end

end A352207.P5924308081811535632

/-!
# A352208: Largest number of maximal 3-colorable node-induced subgraphs of an n-node graph.

The programs for A352208, there is no canonical definition to state claims against.
-/

/-! ## A352208.P7019594411433905963

`C(n+1, round(exp(tanh(n))))`
-/

namespace A352208.P7019594411433905963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (SequenceMachineLib.roundAway (Real.exp (Real.tanh (n : ℝ)))).toNat

end

end A352208.P7019594411433905963

/-! ## A352208.P18003898848908719555

`∑[C(n, 2)-char[2]]+1`
-/

namespace A352208.P18003898848908719555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A352208.P18003898848908719555

/-! ## A352208.P5470281769727567700

`C(n+1, round(n²/10))`
-/

namespace A352208.P5470281769727567700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 10)).toNat

end

end A352208.P5470281769727567700

/-! ## A352208.P13321084264693334069

`floor(sqrt(∑[C(n, 2)]²+1))`
-/

namespace A352208.P13321084264693334069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1)

end

end A352208.P13321084264693334069

/-!
# A352216: Largest number of maximal diamond-free node-induced subgraphs of an n-node graph.

The programs for A352216, there is no canonical definition to state claims against.
-/

/-! ## A352216.P392512900399975221

`A349520(∑{d}[floor(3^(n-1))+1, #])`
-/

namespace A352216.P392512900399975221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A352216.P392512900399975221

/-!
# A352217: Smallest power of 2 that is one more than a multiple of 2n-1.

The programs for A352217, there is no canonical definition to state claims against.
-/

/-! ## A352217.P10467924548558455757

`2^A002326(n)`
-/

namespace A352217.P10467924548558455757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002326 n : ℤ)

end

end A352217.P10467924548558455757

/-! ## A352217.P14502345385608932461

`1+A165781(n)*(2*(n+1)-1)`
-/

namespace A352217.P14502345385608932461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A165781 n * ((2 * (n + 1) : ℤ) - 1)

end

end A352217.P14502345385608932461

/-! ## A352217.P6695952693883717187

`A204981(Δ[n²])`
-/

namespace A352217.P6695952693883717187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204981 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A352217.P6695952693883717187

/-! ## A352217.P4193684414055433598

`A204983(Δ[n²])+1`
-/

namespace A352217.P4193684414055433598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204983 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A352217.P4193684414055433598

/-! ## A352217.P8069848551360038272

`A204990(Δ[n²])+1`
-/

namespace A352217.P8069848551360038272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204990 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A352217.P8069848551360038272

/-! ## A352217.P9771115297402197852

`A204989(Δ[n²])/2`
-/

namespace A352217.P9771115297402197852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204989 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A352217.P9771115297402197852

/-! ## A352217.P13548934145601592623

`2^A007733(Δ[n²])`
-/

namespace A352217.P13548934145601592623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007733 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A352217.P13548934145601592623

/-! ## A352217.P7977478311041462119

`2^A054703(Δ[n²])`
-/

namespace A352217.P7977478311041462119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A054703 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A352217.P7977478311041462119

/-! ## A352217.P8736188045165901249

`2^A024222(2*(n+1))`
-/

namespace A352217.P8736188045165901249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A024222 (2 * (n + 1)) : ℤ)

end

end A352217.P8736188045165901249

/-! ## A352217.P5774047793993234857

`lcm(2, A204981(2*n+1))`
-/

namespace A352217.P5774047793993234857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204981 (2 * n + 1))

end

end A352217.P5774047793993234857

/-! ## A352217.P4416547597639597434

`Δ[n²]*A165781(n)+1`
-/

namespace A352217.P4416547597639597434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A165781 n + 1

end

end A352217.P4416547597639597434

/-! ## A352217.P7798791667090582613

`A204991(2*n+1)/2+1`
-/

namespace A352217.P7798791667090582613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204991 (2 * n + 1) : ℚ) / 2 + 1

end

end A352217.P7798791667090582613

/-! ## A352217.P9628248601402105187

`A000079(A002326(n))`
-/

namespace A352217.P9628248601402105187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002326 n).toNat

end

end A352217.P9628248601402105187

/-! ## A352217.P15013546265777456805

`A011782(A002326(n)+1)`
-/

namespace A352217.P15013546265777456805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002326 n + 1).toNat

end

end A352217.P15013546265777456805

/-! ## A352217.P8828736668325871066

`A131577(A002326(n)+1)`
-/

namespace A352217.P8828736668325871066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A002326 n + 1).toNat

end

end A352217.P8828736668325871066

/-! ## A352217.P14004852121347143872

`A029744(2*A002326(n))`
-/

namespace A352217.P14004852121347143872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (2 * A002326 n).toNat

end

end A352217.P14004852121347143872

/-! ## A352217.P13034069578811824404

`A000079(A054703(Δ[n²]))`
-/

namespace A352217.P13034069578811824404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A054703 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A352217.P13034069578811824404

/-! ## A352217.P2783829791378020642

`A000079(A007733(2*n+1))`
-/

namespace A352217.P2783829791378020642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007733 (2 * n + 1)).toNat

end

end A352217.P2783829791378020642

/-! ## A352217.P3992043170934728279

`A011782(A204979(2*n+1))`
-/

namespace A352217.P3992043170934728279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A204979 (2 * n + 1)).toNat

end

end A352217.P3992043170934728279

/-! ## A352217.P4974367724491541793

`A011782(A204987(2*n+1))`
-/

namespace A352217.P4974367724491541793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A204987 (2 * n + 1)).toNat

end

end A352217.P4974367724491541793

/-!
# A352218: a(n) = least k such that A003592(n) | 20^k.

The programs for A352218, there is no canonical definition to state claims against.
-/

/-! ## A352218.P11388770547932352776

`A074206(A389352(2*n+1)%A219578(3*n+1))`
-/

namespace A352218.P11388770547932352776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (Int.tmod (A389352 (2 * n + 1)) (A219578 (3 * n + 1))).toNat

end

end A352218.P11388770547932352776

/-! ## A352218.P18159045904576331880

`A087117(A245178(n+1))%A000027(A294543(n))`
-/

namespace A352218.P18159045904576331880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087117 (A245178 (n + 1)).toNat) (A000027 (A294543 n).toNat)

end

end A352218.P18159045904576331880

/-! ## A352218.P3946256180220633220

`A074206(A389352(2*n+1))%A088607(3*n+5)`
-/

namespace A352218.P3946256180220633220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074206 (A389352 (2 * n + 1)).toNat) (A088607 (3 * n + 5))

end

end A352218.P3946256180220633220

/-! ## A352218.P13370121163439730753

`A087117(A245178(n+1))*A140345(A142809(n+1))`
-/

namespace A352218.P13370121163439730753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A245178 (n + 1)).toNat * A140345 (A142809 (n + 1)).toNat

end

end A352218.P13370121163439730753

/-! ## A352218.P9012094942971091423

`A004218(A249248(2*n+1)+n)`
-/

namespace A352218.P9012094942971091423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A249248 (2 * n + 1) + (n : ℤ)).toNat

end

end A352218.P9012094942971091423

/-!
# A352219: a(n) is the least k such that A051037(n) | 60^k.

The programs for A352219, there is no canonical definition to state claims against.
-/

/-! ## A352219.P5690343129486840069

`A001221(∑{d}[A100912(n+1), dr(#)])`
-/

namespace A352219.P5690343129486840069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ d ∈ Nat.divisors (f1 n).natAbs, SequenceMachineLib.digitalRoot (d : ℤ))

end

end A352219.P5690343129486840069

/-! ## A352219.P8525707538846193554

`A342655(A089408(n+1)+A089408(n))`
-/

namespace A352219.P8525707538846193554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (A089408 (n + 1) + A089408 n).toNat

end

end A352219.P8525707538846193554

/-! ## A352219.P5154995402116235345

`A124010(A033665(n)+A032302(2*n))`
-/

namespace A352219.P5154995402116235345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A033665 n + A032302 (2 * n)).toNat

end

end A352219.P5154995402116235345

/-! ## A352219.P7656378033520465132

`A001221(or(A219753(n), A308355(n+1)))`
-/

namespace A352219.P7656378033520465132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A219753 n) (A308355 (n + 1))).toNat

end

end A352219.P7656378033520465132

/-! ## A352219.P3406774428047428286

`A294883(A082672(n+1)-A003506(n+1))`
-/

namespace A352219.P3406774428047428286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294883 (A082672 (n + 1) - A003506 (n + 1)).toNat

end

end A352219.P3406774428047428286

/-!
# A352220: Centered cube numbers that can be written as sums of two other cubes in at least two ways.

The programs for A352220, there is no canonical definition to state claims against.
-/

/-! ## A352220.P17442353837619753705

`A352222(n+1)^3+A352223(n+1)^3`
-/

namespace A352220.P17442353837619753705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352222 (n + 1) ^ 3 + A352223 (n + 1) ^ 3

end

end A352220.P17442353837619753705

/-! ## A352220.P9396892879727978109

`A352224(n+1)^3+A352225(n+1)^3`
-/

namespace A352220.P9396892879727978109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352224 (n + 1) ^ 3 + A352225 (n + 1) ^ 3

end

end A352220.P9396892879727978109

/-! ## A352220.P9128271096522328581

`A352221(n+1)^3+(A352221(n+1)+1)^3`
-/

namespace A352220.P9128271096522328581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352221 (n + 1) ^ 3 + (A352221 (n + 1) + 1) ^ 3

end

end A352220.P9128271096522328581

/-! ## A352220.P511821992258346160

`A005898(A352221(n+1))`
-/

namespace A352220.P511821992258346160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 (A352221 (n + 1)).toNat

end

end A352220.P511821992258346160

/-!
# A352226: Consider a 2D sandpile model where each site with 2 or more grains, say at location (x, y), topples and transfers one grain of sand to the sites at locations (x+1, y) and (x, y+1). Let S(n) be the configuration after stabilization of a configuration with n grains at the origin. a(n) = Max_{ (x,y) in S(n) } (x+y).

The programs for A352226, there is no canonical definition to state claims against.
-/

/-! ## A352226.P4253334223818559444

`∑[A305872(n)%A001511(n+1)]`
-/

namespace A352226.P4253334223818559444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305872 n) (A001511 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352226.P4253334223818559444

/-!
# A352227: Number of length-n blocks in the Thue-Morse sequence with intertwining pattern AB AB AB... .

The programs for A352227, there is no canonical definition to state claims against.
-/

/-! ## A352227.P5423502496208681899

`∑[floor(a(round(n/2)))]` with `a(0)=0, a(1)=2, a(2)=0, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A352227.P5423502496208681899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0, 2] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352227.P5423502496208681899

/-! ## A352227.P16842128028684866054

`∑[ceil(a(round(n/2)))]` with `a(0)=0, a(1)=2, a(2)=0, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A352227.P16842128028684866054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0, 2] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352227.P16842128028684866054

/-! ## A352227.P8694566249939381693

`2*∑[a(ceil(n/2))²]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A352227.P8694566249939381693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1] fun n f1 =>
  f1 ⌈(n : ℚ) / 2⌉.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352227.P8694566249939381693

/-! ## A352227.P3064169683642994328

`a(ceil(n/2))+a(floor(n/2))` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A352227.P3064169683642994328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  a ⌈(n : ℚ) / 2⌉.toNat + a ⌊(n : ℚ) / 2⌋.toNat

end

end A352227.P3064169683642994328

/-! ## A352227.P10959310555746297846

`2*∑[floor(a(floor((n+1)/2)))]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A352227.P10959310555746297846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1] fun n f1 =>
  f1 ⌊(n + 1 : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352227.P10959310555746297846

/-! ## A352227.P9716590042768329839

`2*(n-(comp[∑[n*char[2^n]+2]]-n))`
-/

namespace A352227.P9716590042768329839
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f3 j = n then 1 else 0) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)))

end

end A352227.P9716590042768329839

/-! ## A352227.P5619348309144970883

`val(A298413(n), 2)+n`
-/

namespace A352227.P5619348309144970883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A298413 n).toNat 2 + n

end

end A352227.P5619348309144970883

/-! ## A352227.P10779338356423381290

`∑[A302027(2*n)%4]`
-/

namespace A352227.P10779338356423381290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302027 (2 * n)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352227.P10779338356423381290

/-! ## A352227.P8559933356442258384

`and(-2, A006165(2*n+1))`
-/

namespace A352227.P8559933356442258384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A006165 (2 * n + 1))

end

end A352227.P8559933356442258384

/-! ## A352227.P17052348697763640179

`(A214214(n)+2)%(2*n+1)`
-/

namespace A352227.P17052348697763640179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214214 n + 2) (2 * n + 1 : ℤ)

end

end A352227.P17052348697763640179

/-!
# A352228: Number of length-n blocks in the Thue-Morse sequence with intertwining pattern ABBA ABBA ABBA... .

The programs for A352228, the canonical program `A352228.P3369549821197344394` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352228 has offset 1).

The definition of A352228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352228.P3369549821197344394

`∑[a(ceil(n/2))²]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A352228

/-- `∑[a(ceil(n/2))²]` -/
def P3369549821197344394.Spec : Prop :=
  ∀ n, (P3369549821197344394.a n : ℤ) = A352228 (n + 1)

theorem P3369549821197344394.correct : P3369549821197344394.Spec := by
  intro n
  simp only [A352228, Nat.add_sub_cancel]

end A352228

/-! ## A352228.P13646676749891227725

`∑[ceil(a(round(n/2)))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A352228.P13646676749891227725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352228.P13646676749891227725

namespace A352228

/-- `∑[ceil(a(round(n/2)))]` -/
def P13646676749891227725.Spec : Prop :=
  ∀ n, (P13646676749891227725.a n : ℤ) = A352228 (n + 1)

end A352228

/-! ## A352228.P6393324856187664302

`∑[char[or(n, a(n-1))+1]]` with `a(0)=2`
-/

namespace A352228.P6393324856187664302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  Nat.lor n (f2 (n - 1)) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352228.P6393324856187664302

namespace A352228

/-- `∑[char[or(n, a(n-1))+1]]` -/
def P6393324856187664302.Spec : Prop :=
  ∀ n, (P6393324856187664302.a n : ℤ) = A352228 (n + 1)

end A352228

/-! ## A352228.P17039318374929198211

`∑[a(ceil(n/2))^5]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A352228.P17039318374929198211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0] fun n f1 =>
  f1 ⌈(n : ℚ) / 2⌉.toNat ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352228.P17039318374929198211

namespace A352228

/-- `∑[a(ceil(n/2))^5]` -/
def P17039318374929198211.Spec : Prop :=
  ∀ n, (P17039318374929198211.a n : ℤ) = A352228 (n + 1)

end A352228

/-! ## A352228.P3454610530953988988

`∑[a(∑[n%2])%2]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A352228.P3454610530953988988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352228.P3454610530953988988

namespace A352228

/-- `∑[a(∑[n%2])%2]` -/
def P3454610530953988988.Spec : Prop :=
  ∀ n, (P3454610530953988988.a n : ℤ) = A352228 (n + 1)

end A352228

/-! ## A352228.P10862488961121801505

`comp[∑[n*char[2^n]+2]]-n`
-/

namespace A352228.P10862488961121801505
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f3 j = n then 1 else 0) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A352228.P10862488961121801505

namespace A352228

/-- `comp[∑[n*char[2^n]+2]]-n` -/
def P10862488961121801505.Spec : Prop :=
  ∀ n, P10862488961121801505.a n = A352228 (n + 1)

end A352228

/-! ## A352228.P10612126650317331629

`∑[floor(a(ceil(n/2)))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A352228.P10612126650317331629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0, 1, 0] fun n f1 =>
  f1 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352228.P10612126650317331629

namespace A352228

/-- `∑[floor(a(ceil(n/2)))]` -/
def P10612126650317331629.Spec : Prop :=
  ∀ n, (P10612126650317331629.a n : ℤ) = A352228 (n + 1)

end A352228

/-! ## A352228.P6787600912519492732

`∑[and(1, a(floor((n+1)/2)))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A352228.P6787600912519492732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0] fun n f1 =>
  Nat.land 1 (f1 ⌊(n + 1 : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352228.P6787600912519492732

namespace A352228

/-- `∑[and(1, a(floor((n+1)/2)))]` -/
def P6787600912519492732.Spec : Prop :=
  ∀ n, (P6787600912519492732.a n : ℤ) = A352228 (n + 1)

end A352228

/-! ## A352228.P7964278872699203142

`∑[A000045(a(ceil(n/2)))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A352228.P7964278872699203142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0] fun n f1 =>
  A000045 (f1 ⌈(n : ℚ) / 2⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352228.P7964278872699203142

namespace A352228

/-- `∑[A000045(a(ceil(n/2)))]` -/
def P7964278872699203142.Spec : Prop :=
  ∀ n, P7964278872699203142.a n = A352228 (n + 1)

end A352228

/-! ## A352228.P8804355263325932025

`A060973(A028310(n))`
-/

namespace A352228.P8804355263325932025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A028310 n).toNat

end

end A352228.P8804355263325932025

namespace A352228

/-- `A060973(A028310(n))` -/
def P8804355263325932025.Spec : Prop :=
  ∀ n, P8804355263325932025.a n = A352228 (n + 1)

end A352228

/-! ## A352228.P8444295553945402880

`A060973(n+1-A006257(A053644(n)))`
-/

namespace A352228.P8444295553945402880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 ((n + 1 : ℤ) - A006257 (A053644 n).toNat).toNat

end

end A352228.P8444295553945402880

namespace A352228

/-- `A060973(n+1-A006257(A053644(n)))` -/
def P8444295553945402880.Spec : Prop :=
  ∀ n, P8444295553945402880.a n = A352228 (n + 1)

end A352228

/-! ## A352228.P11573177302597760332

`A060973(n+2-A043529(2*n))`
-/

namespace A352228.P11573177302597760332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 ((n + 2 : ℤ) - A043529 (2 * n)).toNat

end

end A352228.P11573177302597760332

namespace A352228

/-- `A060973(n+2-A043529(2*n))` -/
def P11573177302597760332.Spec : Prop :=
  ∀ n, P11573177302597760332.a n = A352228 (n + 1)

end A352228

/-! ## A352228.P3041839516725889185

`A060973(A079944(A003817(n+1))+n)`
-/

namespace A352228.P3041839516725889185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A079944 (A003817 (n + 1)).toNat + (n : ℤ)).toNat

end

end A352228.P3041839516725889185

namespace A352228

/-- `A060973(A079944(A003817(n+1))+n)` -/
def P3041839516725889185.Spec : Prop :=
  ∀ n, P3041839516725889185.a n = A352228 (n + 1)

end A352228

/-! ## A352228.P15365761260364641638

`A060973(n+1-A053646(A003817(n+1)))`
-/

namespace A352228.P15365761260364641638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 ((n + 1 : ℤ) - A053646 (A003817 (n + 1)).toNat).toNat

end

end A352228.P15365761260364641638

namespace A352228

/-- `A060973(n+1-A053646(A003817(n+1)))` -/
def P15365761260364641638.Spec : Prop :=
  ∀ n, P15365761260364641638.a n = A352228 (n + 1)

end A352228

/-! ## A352228.P4681758803778464411

`∑[char[A053642(n+1)+1]]`
-/

namespace A352228.P4681758803778464411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053642 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352228.P4681758803778464411

namespace A352228

/-- `∑[char[A053642(n+1)+1]]` -/
def P4681758803778464411.Spec : Prop :=
  ∀ n, (P4681758803778464411.a n : ℤ) = A352228 (n + 1)

end A352228

/-! ## A352228.P376786840271330878

`A338623(A269164(n+1))`
-/

namespace A352228.P376786840271330878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338623 (A269164 (n + 1)).toNat

end

end A352228.P376786840271330878

namespace A352228

/-- `A338623(A269164(n+1))` -/
def P376786840271330878.Spec : Prop :=
  ∀ n, P376786840271330878.a n = A352228 (n + 1)

end A352228

/-! ## A352228.P13214714331949165762

`A338623(A004763(n+2))`
-/

namespace A352228.P13214714331949165762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338623 (A004763 (n + 2)).toNat

end

end A352228.P13214714331949165762

namespace A352228

/-- `A338623(A004763(n+2))` -/
def P13214714331949165762.Spec : Prop :=
  ∀ n, P13214714331949165762.a n = A352228 (n + 1)

end A352228

/-! ## A352228.P11539955240206042472

`A338623(A004764(n+2))`
-/

namespace A352228.P11539955240206042472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338623 (A004764 (n + 2)).toNat

end

end A352228.P11539955240206042472

namespace A352228

/-- `A338623(A004764(n+2))` -/
def P11539955240206042472.Spec : Prop :=
  ∀ n, P11539955240206042472.a n = A352228 (n + 1)

end A352228

/-! ## A352228.P3590452600366445119

`A338623(A004765(n+2))`
-/

namespace A352228.P3590452600366445119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338623 (A004765 (n + 2)).toNat

end

end A352228.P3590452600366445119

namespace A352228

/-- `A338623(A004765(n+2))` -/
def P3590452600366445119.Spec : Prop :=
  ∀ n, P3590452600366445119.a n = A352228 (n + 1)

end A352228

/-! ## A352228.P7412932430619594252

`A060973(A006165(A006165(n+1)+n))`
-/

namespace A352228.P7412932430619594252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A006165 (A006165 (n + 1) + (n : ℤ)).toNat).toNat

end

end A352228.P7412932430619594252

namespace A352228

/-- `A060973(A006165(A006165(n+1)+n))` -/
def P7412932430619594252.Spec : Prop :=
  ∀ n, P7412932430619594252.a n = A352228 (n + 1)

end A352228

/-!
# A352229: Numbers that can be expressed as the sum of two primes in exactly 7 ways.

The programs for A352229, there is no canonical definition to state claims against.
-/

/-! ## A352229.P563763667695225177

`eq[7, A061358(n)]`
-/

namespace A352229.P563763667695225177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352229.P563763667695225177

/-! ## A352229.P6626361076669381364

`2*(eq[7, A002375(n+1)]+1)`
-/

namespace A352229.P6626361076669381364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A352229.P6626361076669381364

/-! ## A352229.P5776465876496123653

`2*(eq[7, A045917(n+1)]+1)`
-/

namespace A352229.P5776465876496123653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A352229.P5776465876496123653

/-! ## A352229.P4406226934638699210

`eq[3, A245527(A002126(n))]`
-/

namespace A352229.P4406226934638699210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245527 (A002126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352229.P4406226934638699210

/-! ## A352229.P11719532660997465965

`A103517(eq[7, A002375(n+1)])`
-/

namespace A352229.P11719532660997465965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352229.P11719532660997465965

/-!
# A352230: Numbers that can be expressed as the sum of two primes in exactly 8 ways.

The programs for A352230, there is no canonical definition to state claims against.
-/

/-! ## A352230.P3282999699235854303

`eq[8, A061358(n)]`
-/

namespace A352230.P3282999699235854303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352230.P3282999699235854303

/-! ## A352230.P7904552868571547447

`2*(eq[8, A002375(n+1)]+1)`
-/

namespace A352230.P7904552868571547447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A352230.P7904552868571547447

/-! ## A352230.P4461518533088233956

`eq[5, A087897(A002126(n))]`
-/

namespace A352230.P4461518533088233956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (A002126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352230.P4461518533088233956

/-! ## A352230.P4766768598830266423

`A103517(eq[8, A002375(n+1)])`
-/

namespace A352230.P4766768598830266423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352230.P4766768598830266423

/-! ## A352230.P2600000919488695323

`A103517(eq[8, A045917(n+1)])`
-/

namespace A352230.P2600000919488695323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352230.P2600000919488695323

/-!
# A352231: Numbers that can be expressed as the sum of two primes in exactly 9 ways.

The programs for A352231, there is no canonical definition to state claims against.
-/

/-! ## A352231.P17802914711660251682

`eq[9, A061358(n)]`
-/

namespace A352231.P17802914711660251682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352231.P17802914711660251682

/-! ## A352231.P17277265468458029939

`2*(eq[9, A002375(n+1)]+1)`
-/

namespace A352231.P17277265468458029939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A352231.P17277265468458029939

/-! ## A352231.P13731865647540773842

`eq[3, A317302(A002126(n))]`
-/

namespace A352231.P13731865647540773842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317302 (A002126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352231.P13731865647540773842

/-! ## A352231.P11162535282604430353

`A103517(eq[9, A002375(n+1)])`
-/

namespace A352231.P11162535282604430353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352231.P11162535282604430353

/-! ## A352231.P15258406877842343788

`A103517(eq[9, A045917(n+1)])`
-/

namespace A352231.P15258406877842343788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352231.P15258406877842343788

/-!
# A352232: a(n) is the smallest positive integer k such that 1 + k * prime(n) is a power of two.

The programs for A352232, there is no canonical definition to state claims against.
-/

/-! ## A352232.P14696338880888875544

`(2^A014664(n+2)-1)/A000040(n+2)`
-/

namespace A352232.P14696338880888875544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A014664 (n + 2) : ℤ) - 1) / (A000040 (n + 2) : ℚ)

end

end A352232.P14696338880888875544

/-! ## A352232.P15579765029202306371

`A204984(p?[2*n+1])`
-/

namespace A352232.P15579765029202306371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204984 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A352232.P15579765029202306371

/-! ## A352232.P18091683835453299659

`A165781(A005097(n+1))`
-/

namespace A352232.P18091683835453299659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165781 (A005097 (n + 1)).toNat

end

end A352232.P18091683835453299659

/-! ## A352232.P6431742195662953728

`A204984(A045344(n+1))`
-/

namespace A352232.P6431742195662953728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204984 (A045344 (n + 1)).toNat

end

end A352232.P6431742195662953728

/-! ## A352232.P3918818338758086848

`A204984(A065091(n+1))`
-/

namespace A352232.P3918818338758086848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204984 (A065091 (n + 1)).toNat

end

end A352232.P3918818338758086848

/-! ## A352232.P6921118505652005372

`A165781(A139791(n+1))`
-/

namespace A352232.P6921118505652005372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165781 (A139791 (n + 1)).toNat

end

end A352232.P6921118505652005372

/-! ## A352232.P15044624348140041604

`A204984(A140475(n+1))`
-/

namespace A352232.P15044624348140041604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204984 (A140475 (n + 1)).toNat

end

end A352232.P15044624348140041604

/-! ## A352232.P9739150227769559199

`A204984(A175212(n+1))`
-/

namespace A352232.P9739150227769559199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204984 (A175212 (n + 1)).toNat

end

end A352232.P9739150227769559199

/-! ## A352232.P3052269835601221772

`A204984(A000040(n+2))`
-/

namespace A352232.P3052269835601221772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204984 (A000040 (n + 2)).toNat

end

end A352232.P3052269835601221772

/-! ## A352232.P13493595391934368300

`A204984(A006005(n+2))`
-/

namespace A352232.P13493595391934368300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204984 (A006005 (n + 2)).toNat

end

end A352232.P13493595391934368300

/-!
# A352233: Numbers that can be expressed as the sum of two primes in exactly 10 ways.

The programs for A352233, there is no canonical definition to state claims against.
-/

/-! ## A352233.P6140300643517436602

`eq[10, A061358(n)]`
-/

namespace A352233.P6140300643517436602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352233.P6140300643517436602

/-! ## A352233.P8142485494670684392

`(eq[10, A002375(n+1)]+1)*2`
-/

namespace A352233.P8142485494670684392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) * 2

end

end A352233.P8142485494670684392

/-! ## A352233.P2140826521576774468

`eq[5, A061392(A002126(n))]`
-/

namespace A352233.P2140826521576774468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A002126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352233.P2140826521576774468

/-! ## A352233.P16871432179971445717

`A103517(eq[10, A002375(n+1)])`
-/

namespace A352233.P16871432179971445717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352233.P16871432179971445717

/-! ## A352233.P15369856903905450416

`A103517(eq[10, A045917(n+1)])`
-/

namespace A352233.P15369856903905450416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A352233.P15369856903905450416

/-!
# A352235: G.f. A(x) satisfies: A(x) = 1 + x*A(x) / (A(x) - 3*x*A'(x)).

The programs for A352235, there is no canonical definition to state claims against.
-/

/-! ## A352235.P16035448178584028478

`A205377(∑[n!]²)`
-/

namespace A352235.P16035448178584028478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205377 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A352235.P16035448178584028478

/-!
# A352236: G.f. A(x) satisfies: A(x) = 1 + x*A(x)^2 / (A(x) - 2*x*A'(x)).

The programs for A352236, there is no canonical definition to state claims against.
-/

/-! ## A352236.P1491999146090093346

`A077028(A290569(n)+A005416(n))`
-/

namespace A352236.P1491999146090093346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A290569 n + A005416 n).toNat

end

end A352236.P1491999146090093346

/-! ## A352236.P11388824576928468731

`A077028(A346051(n)+A005416(n))`
-/

namespace A352236.P11388824576928468731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A346051 n + A005416 n).toNat

end

end A352236.P11388824576928468731

/-!
# A352240: Even numbers with at least one pair of Goldbach partitions, (p,q) and (r,s) with p,q,r,s prime and p < r <= s < q, such that all integers in the open intervals (p,r) and (s,q) are composite.

The programs for A352240, there is no canonical definition to state claims against.
-/

/-! ## A352240.P10880990311883597036

`A352442(n+1)+A352443(n+1)`
-/

namespace A352240.P10880990311883597036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352442 (n + 1) + A352443 (n + 1)

end

end A352240.P10880990311883597036

/-! ## A352240.P6601324344594916728

`A352444(n+1)+A352445(n+1)`
-/

namespace A352240.P6601324344594916728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352444 (n + 1) + A352445 (n + 1)

end

end A352240.P6601324344594916728

/-! ## A352240.P4939872124055598311

`A187797(A076084(n+1))`
-/

namespace A352240.P4939872124055598311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187797 (A076084 (n + 1)).toNat

end

end A352240.P4939872124055598311

/-! ## A352240.P16427248076631552403

`A187797(A151764(n+1))`
-/

namespace A352240.P16427248076631552403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187797 (A151764 (n + 1)).toNat

end

end A352240.P16427248076631552403

/-! ## A352240.P8530765615555717551

`A330612(A334160(n+1))`
-/

namespace A352240.P8530765615555717551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330612 (A334160 (n + 1)).toNat

end

end A352240.P8530765615555717551

/-!
# A352241: Maximal number of nonattacking black-square queens on an n X n chessboard.

The programs for A352241, there is no canonical definition to state claims against.
-/

/-! ## A352241.P15139603549145187735

`A060384(A250120(n)-(n+1))`
-/

namespace A352241.P15139603549145187735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A250120 n - (n + 1 : ℤ)).toNat

end

end A352241.P15139603549145187735

/-! ## A352241.P7287960372984554152

`A060384(A250120(n)-1-n)`
-/

namespace A352241.P7287960372984554152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A250120 n - 1 - (n : ℤ)).toNat

end

end A352241.P7287960372984554152

/-! ## A352241.P398197283812046263

`A254667(2*n+1)-A210434(2*n+1)`
-/

namespace A352241.P398197283812046263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (2 * n + 1) - A210434 (2 * n + 1)

end

end A352241.P398197283812046263

/-! ## A352241.P4573568556628442466

`∑[floor(a(n-5))]%A340113(n+1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1, a(6)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A352241.P4573568556628442466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 1, 1, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A340113 (n + 1))

end

end A352241.P4573568556628442466

/-! ## A352241.P15674056680348410026

`A057354(2*n+3)-A157928(A054556(n+1))`
-/

namespace A352241.P15674056680348410026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (2 * n + 3) - A157928 (A054556 (n + 1)).toNat

end

end A352241.P15674056680348410026

/-!
# A352242: Regular triangle T(n,k) = (n-k)*(n^3-k^3) for n>=2 and 1 <= k <= n-1, read by rows.

The programs for A352242, the canonical program `A352242.P5962883400353177970` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352242 has offset 2).

The definition of A352242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352242.P5962883400353177970

`(A133819(n+1)+A001283(n+2))*A055461(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A352242

/-- `(A133819(n+1)+A001283(n+2))*A055461(n+1)` -/
def P5962883400353177970.Spec : Prop :=
  ∀ n, P5962883400353177970.a n = A352242 (n + 2)

theorem P5962883400353177970.correct : P5962883400353177970.Spec := by
  intro n
  simp only [A352242, Nat.add_sub_cancel]

end A352242

/-! ## A352242.P17717852999318597191

`A055461(n+1)*A215631(comp[∑[n]])`
-/

namespace A352242.P17717852999318597191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) * A215631 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A352242.P17717852999318597191

namespace A352242

/-- `A055461(n+1)*A215631(comp[∑[n]])` -/
def P17717852999318597191.Spec : Prop :=
  ∀ n, P17717852999318597191.a n = A352242 (n + 2)

end A352242

/-! ## A352242.P15574157835165420747

`A215630(A049777(n+1)*A205016(n+1))`
-/

namespace A352242.P15574157835165420747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215630 (A049777 (n + 1) * A205016 (n + 1)).toNat

end

end A352242.P15574157835165420747

namespace A352242

/-- `A215630(A049777(n+1)*A205016(n+1))` -/
def P15574157835165420747.Spec : Prop :=
  ∀ n, P15574157835165420747.a n = A352242 (n + 2)

end A352242

/-!
# A352245: a(0) = 1; for n >= 1, a(n) = the decimal value of the binary number of the index of where n first appears in the concatenation of all previous binary terms. If the binary value of n has not previously appeared then a(n) = 0.

The programs for A352245, there is no canonical definition to state claims against.
-/

/-! ## A352245.P6481866931411063657

`A319195(xor(28, ∑[A319198(n)]))`
-/

namespace A352245.P6481866931411063657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319195 (Int.xor 28 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A352245.P6481866931411063657

/-! ## A352245.P5171379699339874183

`A320658(A088617(n)+2*n)`
-/

namespace A352245.P5171379699339874183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320658 (A088617 n + (2 * n : ℤ)).toNat

end

end A352245.P5171379699339874183

/-! ## A352245.P9571587132261701550

`A320658(A088617(n)+n+n)`
-/

namespace A352245.P9571587132261701550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320658 (A088617 n + (n : ℤ) + (n : ℤ)).toNat

end

end A352245.P9571587132261701550

/-! ## A352245.P8694249500057367137

`A290453(A166590(ceil(7^(n/4))))`
-/

namespace A352245.P8694249500057367137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290453 (A166590 ⌈(7 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉.toNat).toNat

end

end A352245.P8694249500057367137

/-! ## A352245.P17163771222012610916

`A026794(A259377(n+1)+n+1)%3`
-/

namespace A352245.P17163771222012610916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026794 (A259377 (n + 1) + (n : ℤ) + 1).toNat) 3

end

end A352245.P17163771222012610916

/-!
# A352246: Indices k where A352245(k) = 0.

The programs for A352246, there is no canonical definition to state claims against.
-/

/-! ## A352246.P1452332942486825000

`eq[0, A352245(n)]`
-/

namespace A352246.P1452332942486825000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352246.P1452332942486825000

/-! ## A352246.P11022473175398749146

`lt[A352245(n+1), 1]+1`
-/

namespace A352246.P11022473175398749146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352245 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A352246.P11022473175398749146

/-! ## A352246.P1464112429566414823

`lt[A352245(2*n-n), 1]`
-/

namespace A352246.P1464112429566414823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352245 (2 * n - n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352246.P1464112429566414823

/-! ## A352246.P7815351677944875617

`abs(1-lt[A352245(abs(1-n)), 1])`
-/

namespace A352246.P7815351677944875617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352245 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)|

end

end A352246.P7815351677944875617

/-! ## A352246.P10996206497445104273

`A000027(lt[A352245(n), 1])`
-/

namespace A352246.P10996206497445104273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352245 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A352246.P10996206497445104273

/-! ## A352246.P11033770665789516362

`lt[A352245(n)², A158388(n)]`
-/

namespace A352246.P11033770665789516362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352245 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352246.P11033770665789516362

/-! ## A352246.P8658394313392016617

`lt[A352287(A352245(n)+1), 5]`
-/

namespace A352246.P8658394313392016617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352287 (A352245 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352246.P8658394313392016617

/-!
# A352250: Expansion of e.g.f. 1 / (1 - x * sin(x)) (even powers only).

The programs for A352250, there is no canonical definition to state claims against.
-/

/-! ## A352250.P5920699137333547863

`n*(A057962(a(n-1))-2)` with `a(0)=1`
-/

namespace A352250.P5920699137333547863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (A057962 (a (n - 1)).toNat - 2)

end

end A352250.P5920699137333547863

/-!
# A352252: Expansion of e.g.f. 1 / (1 - x * cos(x)).

The programs for A352252, there is no canonical definition to state claims against.
-/

/-! ## A352252.P15912995447073509629

`A081125(n)-A108407(A088009(n))`
-/

namespace A352252.P15912995447073509629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081125 n - A108407 (A088009 n).toNat

end

end A352252.P15912995447073509629

/-!
# A352253: Expansion of e.g.f. 1 / (1 - x * sinh(x) / 2) (even powers only).

The programs for A352253, there is no canonical definition to state claims against.
-/

/-! ## A352253.P13318611450266591818

`A331072(A099036(∑[n]))`
-/

namespace A352253.P13318611450266591818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331072 (A099036 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A352253.P13318611450266591818

/-!
# A352254: Expansion of e.g.f. exp( x * sinh(x) / 2 ) (even powers only).

The programs for A352254, there is no canonical definition to state claims against.
-/

/-! ## A352254.P8248147398843938560

`A108309((2*n+1)^n+1)-(n+1)`
-/

namespace A352254.P8248147398843938560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108309 ((2 * n + 1) ^ n + 1) - (n + 1 : ℤ)

end

end A352254.P8248147398843938560

/-!
# A352257: Sum of all parts of all partitions of n into an odd number of consecutive parts.

The programs for A352257, there is no canonical definition to state claims against.
-/

/-! ## A352257.P16728651963816978402

`(n+1)*A082647(n+1)`
-/

namespace A352257.P16728651963816978402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A082647 (n + 1)

end

end A352257.P16728651963816978402

/-! ## A352257.P18122711109700205430

`A245579(n+1)-A352505(n+1)`
-/

namespace A352257.P18122711109700205430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245579 (n + 1) - A352505 (n + 1)

end

end A352257.P18122711109700205430

/-! ## A352257.P11208772674317833355

`(n+1)*A069288(2*(n+1))`
-/

namespace A352257.P11208772674317833355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069288 (2 * (n + 1))

end

end A352257.P11208772674317833355

/-! ## A352257.P6356508763398373327

`(n+1)*A333805(2*(n+1))`
-/

namespace A352257.P6356508763398373327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A333805 (2 * (n + 1))

end

end A352257.P6356508763398373327

/-! ## A352257.P3624506064544822433

`abs((n-log2(1/2))*A082647(-xor(n, -1)))`
-/

namespace A352257.P3624506064544822433
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * (A082647 (-Int.xor (n : ℤ) (-1)).toNat : ℝ)|

end

end A352257.P3624506064544822433

/-! ## A352257.P259002281175451310

`(n+1)*dr(A069288(A103517(n)))`
-/

namespace A352257.P259002281175451310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.digitalRoot (A069288 (A103517 n).toNat)

end

end A352257.P259002281175451310

/-!
# A352258: Number of symmetric binary n X n matrices with no 2 X 2 submatrix of all 1s.

The programs for A352258, there is no canonical definition to state claims against.
-/

/-! ## A352258.P15421204270210717549

`A276155(A262033(2*(n+1)))+A131149(n+1)`
-/

namespace A352258.P15421204270210717549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276155 (A262033 (2 * (n + 1))).toNat + A131149 (n + 1)

end

end A352258.P15421204270210717549

/-!
# A352259: Number of ways to write n as w^6 + x^2 + 2*y^2 + 3*z^2 + x*y*z, where w,x,y,z are nonnegative integers.

The programs for A352259, there is no canonical definition to state claims against.
-/

/-! ## A352259.P12976668671815139491

`A352286(n)%p?[3*n²+10]`
-/

namespace A352259.P12976668671815139491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352286 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A352259.P12976668671815139491

/-! ## A352259.P1946594068284105537

`A352286(n)%A201073(n+1)`
-/

namespace A352259.P1946594068284105537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352286 n) (A201073 (n + 1))

end

end A352259.P1946594068284105537

/-! ## A352259.P7200372910440300598

`-(-A352286(n)%A167522(n+1))`
-/

namespace A352259.P7200372910440300598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A352286 n) (A167522 (n + 1))

end

end A352259.P7200372910440300598

/-! ## A352259.P13320605192971374482

`A352286(n)+A000007(A008170(n))`
-/

namespace A352259.P13320605192971374482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352286 n + A000007 (A008170 n).toNat

end

end A352259.P13320605192971374482

/-! ## A352259.P5850118538105037881

`A352286(n)+A256750(A016826(n))`
-/

namespace A352259.P5850118538105037881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352286 n + A256750 (A016826 n).toNat

end

end A352259.P5850118538105037881

/-! ## A352259.P2944084432439675691

`A352286(n)%A000040(A256139(n))`
-/

namespace A352259.P2944084432439675691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352286 n) (A000040 (A256139 n).toNat)

end

end A352259.P2944084432439675691

/-! ## A352259.P17507213580613883699

`lcm(A105812(A005475(n)), A352286(n))`
-/

namespace A352259.P17507213580613883699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105812 (A005475 n).toNat) (A352286 n)

end

end A352259.P17507213580613883699

/-! ## A352259.P5805759730196768359

`A352286(n)+A000007(A108917(n+1))`
-/

namespace A352259.P5805759730196768359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352286 n + A000007 (A108917 (n + 1)).toNat

end

end A352259.P5805759730196768359

/-! ## A352259.P10456307504731222236

`A001222(A138117(n+1))*A352286(n)`
-/

namespace A352259.P10456307504731222236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A138117 (n + 1)).toNat * A352286 n

end

end A352259.P10456307504731222236

/-! ## A352259.P9985646352040927778

`gcd(A069517(A002378(2*n+1)), A352286(n))`
-/

namespace A352259.P9985646352040927778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069517 (A002378 (2 * n + 1)).toNat) (A352286 n)

end

end A352259.P9985646352040927778

/-!
# A352260: Integers that need 2 iterations of the map x->A352172(x) to reach 1.

The programs for A352260, there is no canonical definition to state claims against.
-/

/-! ## A352260.P5464025390094196380

`eq[1, A061762(A051801(n))]`
-/

namespace A352260.P5464025390094196380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352260.P5464025390094196380

/-! ## A352260.P15599586819892856238

`lt[A061762(A051801(n)), A046698(n)]`
-/

namespace A352260.P15599586819892856238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352260.P15599586819892856238

/-! ## A352260.P14767300383619977313

`∩[A092624(n+1), A351327(n+1)]`
-/

namespace A352260.P14767300383619977313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352260.P14767300383619977313

/-!
# A352261: Integers that need 3 iterations of the map x->A352172(x) to reach 1.

The programs for A352261, there is no canonical definition to state claims against.
-/

/-! ## A352261.P14965633022889657531

`eq[1, A328601(A051801(n))]`
-/

namespace A352261.P14965633022889657531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328601 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352261.P14965633022889657531

/-!
# A352262: Integers that need 4 iterations of the map x->A352172(x) to reach 1.

The programs for A352262, there is no canonical definition to state claims against.
-/

/-! ## A352262.P10512088479606422669

`eq[0, A004177(A051801(n))]`
-/

namespace A352262.P10512088479606422669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352262.P10512088479606422669

/-! ## A352262.P5403813089060527255

`eq[A040012(n), A055012(A051801(n))]`
-/

namespace A352262.P5403813089060527255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352262.P5403813089060527255

/-! ## A352262.P5113589645842363807

`eq[A004185(A051801(n)), A275365(2*n)]`
-/

namespace A352262.P5113589645842363807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275365 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352262.P5113589645842363807

/-! ## A352262.P7865721438741471646

`eq[A020639(2*(n+1)), A004185(A051801(n))]`
-/

namespace A352262.P7865721438741471646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352262.P7865721438741471646

/-! ## A352262.P838822165740670825

`eq[4, A051801(A051801(n)²)]`
-/

namespace A352262.P838822165740670825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A051801 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352262.P838822165740670825

/-!
# A352263: Integers that need 5 iterations of the map x->A352172(x) to reach 1.

The programs for A352263, there is no canonical definition to state claims against.
-/

/-! ## A352263.P10396572470223373023

`eq[20, sqrt(A061762(n))]`
-/

namespace A352263.P10396572470223373023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061762 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A352263.P10396572470223373023

/-! ## A352263.P1943351756009801156

`eq[A031346(n), A217434(A006942(n))]`
-/

namespace A352263.P1943351756009801156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (A006942 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352263.P1943351756009801156

/-!
# A352265: Integers that need 7 iterations of the map x->A352172(x) to reach 1.

The programs for A352265, there is no canonical definition to state claims against.
-/

/-! ## A352265.P5189968290614893025

`eq[12, A013601(A007954(n))]`
-/

namespace A352265.P5189968290614893025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013601 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352265.P5189968290614893025

/-! ## A352265.P12021329495387448329

`eq[19, A306640(A051801(n))]`
-/

namespace A352265.P12021329495387448329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306640 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352265.P12021329495387448329

/-!
# A352266: Integers that need 8 iterations of the map x->A352172(x) to reach 1.

The programs for A352266, there is no canonical definition to state claims against.
-/

/-! ## A352266.P9488348909114341226

`eq[2, A326171(A214950(n))]`
-/

namespace A352266.P9488348909114341226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326171 (A214950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352266.P9488348909114341226

/-! ## A352266.P4977507459024249038

`∩[A011537(n+1), A351876(n+1)]`
-/

namespace A352266.P4977507459024249038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352266.P4977507459024249038

/-! ## A352266.P992959822548181619

`∩[A043517(n+1), A351876(n+1)]`
-/

namespace A352266.P992959822548181619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352266.P992959822548181619

/-! ## A352266.P13342330621579013026

`∩[A283610(n+1), A351876(n+1)]`
-/

namespace A352266.P13342330621579013026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352266.P13342330621579013026

/-!
# A352267: Integers that need 9 iterations of the map x->A352172(x) to reach 1.

The programs for A352267, there is no canonical definition to state claims against.
-/

/-! ## A352267.P11334146736812244869

`eq[0, A004178(A051801(n))]`
-/

namespace A352267.P11334146736812244869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352267.P11334146736812244869

/-! ## A352267.P2729920722613394106

`record[A004182(A051805(n+1))]`
-/

namespace A352267.P2729920722613394106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A051805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352267.P2729920722613394106

/-! ## A352267.P14410389074591956570

`∩[A051805(n+1), A007093(n)]`
-/

namespace A352267.P14410389074591956570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352267.P14410389074591956570

/-! ## A352267.P9802944752480811614

`∩[A039144(n+1), A051805(n+1)]`
-/

namespace A352267.P9802944752480811614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352267.P9802944752480811614

/-! ## A352267.P9101070683413937477

`∩[A039154(n+1), A051805(n+1)]`
-/

namespace A352267.P9101070683413937477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352267.P9101070683413937477

/-! ## A352267.P15451169243775107656

`∩[A051805(n+1), A052419(n+1)]`
-/

namespace A352267.P15451169243775107656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352267.P15451169243775107656

/-! ## A352267.P12847563867448266499

`eq[A051801(A051801(n)), A157532(n+1)]`
-/

namespace A352267.P12847563867448266499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352267.P12847563867448266499

/-! ## A352267.P12949035354710695588

`eq[A051801(A051801(n)), A176059(2*n)]`
-/

namespace A352267.P12949035354710695588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352267.P12949035354710695588

/-! ## A352267.P9814814680631349458

`eq[A036453(n+1)+1, A051801(A051801(n))]`
-/

namespace A352267.P9814814680631349458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352267.P9814814680631349458

/-!
# A352268: Integers that need 10 iterations of the map x->A352172(x) to reach 1.

The programs for A352268, there is no canonical definition to state claims against.
-/

/-! ## A352268.P65620514825095183

`eq[A008706(A008706(n)), A230101(n)]`
-/

namespace A352268.P65620514825095183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352268.P65620514825095183

/-! ## A352268.P11569450458502184940

`∩[A036788(n+1), A046438(n+1)]`
-/

namespace A352268.P11569450458502184940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352268.P11569450458502184940

/-!
# A352269: Irregular triangle read by rows: T(n,k) is the number of parts in the partition of n into 2*k-1 consecutive parts, 1 <= k <= A351846(n). T(n,k) = 0 if no such partition exists.

The programs for A352269, there is no canonical definition to state claims against.
-/

/-! ## A352269.P8334662978368073757

`A354327(A071960(n+1)%A115597(2*(n+2)))`
-/

namespace A352269.P8334662978368073757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354327 (Int.tmod (A071960 (n + 1)) (A115597 (2 * (n + 2)))).toNat

end

end A352269.P8334662978368073757

/-! ## A352269.P2715803123089586559

`xor(1, A224447(A045926(n+1)))`
-/

namespace A352269.P2715803123089586559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A224447 (A045926 (n + 1)).toNat)

end

end A352269.P2715803123089586559

/-! ## A352269.P7518416054918046065

`A390832(C(A122280(n+1), A390449(3*n+5)))`
-/

namespace A352269.P7518416054918046065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390832 (Nat.choose (A122280 (n + 1)).toNat (A390449 (3 * n + 5)).toNat)

end

end A352269.P7518416054918046065

/-! ## A352269.P10513523584211578249

`A188678(A133565(n+1)%A337761(n+1))`
-/

namespace A352269.P10513523584211578249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188678 (Int.tmod (A133565 (n + 1)) (A337761 (n + 1))).toNat

end

end A352269.P10513523584211578249

/-! ## A352269.P16276663226744008457

`A378154(A214878(n)%A324697(3*n+5))`
-/

namespace A352269.P16276663226744008457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378154 (Int.tmod (A214878 n) (A324697 (3 * n + 5))).toNat

end

end A352269.P16276663226744008457

/-!
# A352270: Expansion of e.g.f. 1/(2 - exp(x) + log(1 - x)).

The programs for A352270, there is no canonical definition to state claims against.
-/

/-! ## A352270.P15842554335711265467

`A050351(n)+A004526(A088500(n))`
-/

namespace A352270.P15842554335711265467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050351 n + A004526 (A088500 n).toNat

end

end A352270.P15842554335711265467

/-!
# A352271: Expansion of e.g.f. 1/(2 - exp(x) - log(1 + x)).

The programs for A352271, there is no canonical definition to state claims against.
-/

/-! ## A352271.P5550176238300270949

`A059115(n)-A002266(A103194(n))`
-/

namespace A352271.P5550176238300270949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059115 n - A002266 (A103194 n).toNat

end

end A352271.P5550176238300270949

/-! ## A352271.P1263962699635627630

`A110654(A093985(n+1)+A053983(n+1))`
-/

namespace A352271.P1263962699635627630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A093985 (n + 1) + A053983 (n + 1)).toNat

end

end A352271.P1263962699635627630

/-!
# A352272: Numbers whose squarefree part is congruent to 1 modulo 6.

The programs for A352272, there is no canonical definition to state claims against.
-/

/-! ## A352272.P9003192472930363919

`eq[1, A007913(n+1)%6]+1`
-/

namespace A352272.P9003192472930363919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007913 (n + 1)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A352272.P9003192472930363919

/-! ## A352272.P7524991831954140839

`filter[A055047(n+1), A035263(#)]`
-/

namespace A352272.P7524991831954140839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A352272.P7524991831954140839

/-! ## A352272.P449417523967181006

`filter[A026225(n+1), A372574(#)]`
-/

namespace A352272.P449417523967181006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A352272.P449417523967181006

/-! ## A352272.P16690651880490691918

`filter[A055047(n+1), A372574(#)]`
-/

namespace A352272.P16690651880490691918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A352272.P16690651880490691918

/-! ## A352272.P18339583306599688225

`filter[A055047(n+1), A373136(#)]`
-/

namespace A352272.P18339583306599688225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A352272.P18339583306599688225

/-! ## A352272.P7946124737331772386

`filter[A339690(n+1), A137893(#)]`
-/

namespace A352272.P7946124737331772386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137893 (f1 j).toNat = 1) n)

end

end A352272.P7946124737331772386

/-! ## A352272.P10174868067948543927

`filter[A189715(n+1), A372574(#)]`
-/

namespace A352272.P10174868067948543927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A352272.P10174868067948543927

/-! ## A352272.P9758734122735885811

`filter[A225837(n+1), A372574(#)]`
-/

namespace A352272.P9758734122735885811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A352272.P9758734122735885811

/-! ## A352272.P12477334444787908036

`filter[A026140(n+2), A372574(#)]`
-/

namespace A352272.P12477334444787908036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A352272.P12477334444787908036

/-! ## A352272.P11649468382258484609

`eq[A028967(n), A328979(n+1)]`
-/

namespace A352272.P11649468382258484609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352272.P11649468382258484609

/-!
# A352273: Numbers whose squarefree part is congruent to 5 modulo 6.

The programs for A352273, the canonical program `A352273.P15168054115810300813` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352273 has offset 1).

The definition of A352273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6659 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352273.P15168054115810300813

`filter[A055048(n+1), A035263(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A352273

/-- `filter[A055048(n+1), A035263(#)]` -/
def P15168054115810300813.Spec : Prop :=
  ∀ n, P15168054115810300813.a n = A352273 (n + 1)

theorem P15168054115810300813.correct : P15168054115810300813.Spec := by
  intro n
  simp only [A352273, Nat.add_sub_cancel]

end A352273

/-! ## A352273.P14604881482500737865

`filter[A055048(n+1), A372574(#)]`
-/

namespace A352273.P14604881482500737865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A352273.P14604881482500737865

namespace A352273

/-- `filter[A055048(n+1), A372574(#)]` -/
def P14604881482500737865.Spec : Prop :=
  ∀ n, P14604881482500737865.a n = A352273 (n + 1)

end A352273

/-! ## A352273.P17136047039076137704

`filter[A055048(n+1), A373136(#)]`
-/

namespace A352273.P17136047039076137704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A352273.P17136047039076137704

namespace A352273

/-- `filter[A055048(n+1), A373136(#)]` -/
def P17136047039076137704.Spec : Prop :=
  ∀ n, P17136047039076137704.a n = A352273 (n + 1)

end A352273

/-! ## A352273.P15102587256877834368

`filter[A225838(n+1), A372574(#)]`
-/

namespace A352273.P15102587256877834368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A352273.P15102587256877834368

namespace A352273

/-- `filter[A225838(n+1), A372574(#)]` -/
def P15102587256877834368.Spec : Prop :=
  ∀ n, P15102587256877834368.a n = A352273 (n + 1)

end A352273

/-! ## A352273.P2437831051831462652

`∩[A055048(n+1), A225838(n+1)]`
-/

namespace A352273.P2437831051831462652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352273.P2437831051831462652

namespace A352273

/-- `∩[A055048(n+1), A225838(n+1)]` -/
def P2437831051831462652.Spec : Prop :=
  ∀ n, (P2437831051831462652.a n : ℤ) = A352273 (n + 1)

end A352273

/-! ## A352273.P8896012844549831268

`∩[A055048(n+1), A339690(n+1)]`
-/

namespace A352273.P8896012844549831268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352273.P8896012844549831268

namespace A352273

/-- `∩[A055048(n+1), A339690(n+1)]` -/
def P8896012844549831268.Spec : Prop :=
  ∀ n, (P8896012844549831268.a n : ℤ) = A352273 (n + 1)

end A352273

/-! ## A352273.P14028335855108370361

`∩[A225838(n+1), A339690(n+1)]`
-/

namespace A352273.P14028335855108370361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352273.P14028335855108370361

namespace A352273

/-- `∩[A225838(n+1), A339690(n+1)]` -/
def P14028335855108370361.Spec : Prop :=
  ∀ n, (P14028335855108370361.a n : ℤ) = A352273 (n + 1)

end A352273

/-! ## A352273.P2337696492636569808

`filter[A189716(n+1), A372574(#)]`
-/

namespace A352273.P2337696492636569808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A352273.P2337696492636569808

namespace A352273

/-- `filter[A189716(n+1), A372574(#)]` -/
def P2337696492636569808.Spec : Prop :=
  ∀ n, P2337696492636569808.a n = A352273 (n + 1)

end A352273

/-! ## A352273.P7519712817178782922

`filter[A026179(n+2), A372574(#)]`
-/

namespace A352273.P7519712817178782922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A352273.P7519712817178782922

namespace A352273

/-- `filter[A026179(n+2), A372574(#)]` -/
def P7519712817178782922.Spec : Prop :=
  ∀ n, P7519712817178782922.a n = A352273 (n + 1)

end A352273

/-! ## A352273.P3787815597333990478

`∩[A189716(n+1), A339690(n+1)]`
-/

namespace A352273.P3787815597333990478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352273.P3787815597333990478

namespace A352273

/-- `∩[A189716(n+1), A339690(n+1)]` -/
def P3787815597333990478.Spec : Prop :=
  ∀ n, (P3787815597333990478.a n : ℤ) = A352273 (n + 1)

end A352273

/-! ## A352273.P16706763689746914050

`∩[A036668(n+1), A055048(n+1)]`
-/

namespace A352273.P16706763689746914050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352273.P16706763689746914050

namespace A352273

/-- `∩[A036668(n+1), A055048(n+1)]` -/
def P16706763689746914050.Spec : Prop :=
  ∀ n, (P16706763689746914050.a n : ℤ) = A352273 (n + 1)

end A352273

/-! ## A352273.P18160067506537262244

`filter[A028966(n+1), A372574(#)]`
-/

namespace A352273.P18160067506537262244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A352273.P18160067506537262244

namespace A352273

/-- `filter[A028966(n+1), A372574(#)]` -/
def P18160067506537262244.Spec : Prop :=
  ∀ n, P18160067506537262244.a n = A352273 (n + 1)

end A352273

/-! ## A352273.P8968615434860556599

`∩[A339690(n+1), A028966(n)]`
-/

namespace A352273.P8968615434860556599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028966 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352273.P8968615434860556599

namespace A352273

/-- `∩[A339690(n+1), A028966(n)]` -/
def P8968615434860556599.Spec : Prop :=
  ∀ n, (P8968615434860556599.a n : ℤ) = A352273 (n + 1)

end A352273

/-! ## A352273.P6840287465409750120

`∩[A003159(n+1), A055048(n+1)]`
-/

namespace A352273.P6840287465409750120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352273.P6840287465409750120

namespace A352273

/-- `∩[A003159(n+1), A055048(n+1)]` -/
def P6840287465409750120.Spec : Prop :=
  ∀ n, (P6840287465409750120.a n : ℤ) = A352273 (n + 1)

end A352273

/-! ## A352273.P17536630058547279873

`filter[A339690(n+1), A080846(#)]`
-/

namespace A352273.P17536630058547279873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080846 (f1 j).toNat = 1) n)

end

end A352273.P17536630058547279873

namespace A352273

/-- `filter[A339690(n+1), A080846(#)]` -/
def P17536630058547279873.Spec : Prop :=
  ∀ n, P17536630058547279873.a n = A352273 (n + 1)

end A352273

/-! ## A352273.P14687695748923033180

`eq[A224822(n), A328979(n+1)]`
-/

namespace A352273.P14687695748923033180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224822 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352273.P14687695748923033180

namespace A352273

/-- `eq[A224822(n), A328979(n+1)]` -/
def P14687695748923033180.Spec : Prop :=
  ∀ n, (P14687695748923033180.a n : ℤ) = A352273 (n + 1)

end A352273

/-! ## A352273.P15092273938888848010

`eq[A246927(n), A328979(n+1)]`
-/

namespace A352273.P15092273938888848010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246927 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352273.P15092273938888848010

namespace A352273

/-- `eq[A246927(n), A328979(n+1)]` -/
def P15092273938888848010.Spec : Prop :=
  ∀ n, (P15092273938888848010.a n : ℤ) = A352273 (n + 1)

end A352273

/-! ## A352273.P15342486588492517435

`eq[A246928(n), A328979(n+1)]`
-/

namespace A352273.P15342486588492517435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352273.P15342486588492517435

namespace A352273

/-- `eq[A246928(n), A328979(n+1)]` -/
def P15342486588492517435.Spec : Prop :=
  ∀ n, (P15342486588492517435.a n : ℤ) = A352273 (n + 1)

end A352273

/-! ## A352273.P10903365381202039453

`eq[1, A285384(n+1)+A246928(n)]`
-/

namespace A352273.P10903365381202039453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1) + A246928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352273.P10903365381202039453

namespace A352273

/-- `eq[1, A285384(n+1)+A246928(n)]` -/
def P10903365381202039453.Spec : Prop :=
  ∀ n, (P10903365381202039453.a n : ℤ) = A352273 (n + 1)

end A352273

/-! ## A352273.P14592155121413862444

`eq[A236924(A246928(n)), A285384(n+1)]`
-/

namespace A352273.P14592155121413862444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236924 (A246928 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352273.P14592155121413862444

namespace A352273

/-- `eq[A236924(A246928(n)), A285384(n+1)]` -/
def P14592155121413862444.Spec : Prop :=
  ∀ n, (P14592155121413862444.a n : ℤ) = A352273 (n + 1)

end A352273

/-!
# A352274: Numbers whose squarefree part is congruent to 1 modulo 6 or 3 modulo 18.

The programs for A352274, there is no canonical definition to state claims against.
-/

/-! ## A352274.P17565461618168935894

`eq[(-1)^val(n+1, 2), ((n+1)/3^val(n+1, 3))%3]+1`
-/

namespace A352274.P17565461618168935894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A352274.P17565461618168935894

/-! ## A352274.P9509923310163727699

`record[root(gcd(n+1, val(n+1, 2)*∑[n]), A060236(n+1))]`
-/

namespace A352274.P9509923310163727699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (SequenceMachineLib.valuation (n + 1) 2 * (∑ j ∈ Finset.range (n + 1), f2 j)) : ℝ) ^ (1 / (A060236 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352274.P9509923310163727699

/-! ## A352274.P17525044869735951622

`record[A214682(A026225(n+1))]`
-/

namespace A352274.P17525044869735951622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214682 (A026225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352274.P17525044869735951622

/-! ## A352274.P13393234678880944637

`record[A302792(A026179(n+1))]`
-/

namespace A352274.P13393234678880944637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (A026179 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352274.P13393234678880944637

/-! ## A352274.P11878981901325536303

`record[A302792(A026214(n+1))]`
-/

namespace A352274.P11878981901325536303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (A026214 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352274.P11878981901325536303

/-! ## A352274.P3840219184372595674

`record[A302792(A026215(n+1))]`
-/

namespace A352274.P3840219184372595674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (A026215 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352274.P3840219184372595674

/-! ## A352274.P3425863419004757207

`record[A214682(A225837(n+1))]`
-/

namespace A352274.P3425863419004757207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214682 (A225837 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352274.P3425863419004757207

/-! ## A352274.P14088112392168768277

`record[A214682(A026140(n+2))]`
-/

namespace A352274.P14088112392168768277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214682 (A026140 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352274.P14088112392168768277

/-! ## A352274.P147386607192514570

`filter[A026225(n+1), A035263(#)]`
-/

namespace A352274.P147386607192514570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A352274.P147386607192514570

/-! ## A352274.P4844487402585030514

`filter[A003159(n+1), A137893(#)]`
-/

namespace A352274.P4844487402585030514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137893 (f1 j).toNat = 1) n)

end

end A352274.P4844487402585030514

/-!
# A352275: a(0) = 1 and a(n) = Sum_{k = 0..2*n} n/(n + 2*k)*binomial(n + 2*k,k) for n >= 1.

The programs for A352275, there is no canonical definition to state claims against.
-/

/-! ## A352275.P15981077644494255214

`A091491(A062725(n))`
-/

namespace A352275.P15981077644494255214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A062725 n).toNat

end

end A352275.P15981077644494255214

/-! ## A352275.P12344481189696656433

`A096465(A062728(n))`
-/

namespace A352275.P12344481189696656433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A062728 n).toNat

end

end A352275.P12344481189696656433

/-! ## A352275.P14925410355007179874

`A096465(A062725(n)+n)`
-/

namespace A352275.P14925410355007179874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A062725 n + (n : ℤ)).toNat

end

end A352275.P14925410355007179874

/-! ## A352275.P487959489336988831

`A091491(A081266(n)+n)`
-/

namespace A352275.P487959489336988831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A081266 n + (n : ℤ)).toNat

end

end A352275.P487959489336988831

/-! ## A352275.P5938439511843971712

`A091491(A062728(n)-n)`
-/

namespace A352275.P5938439511843971712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A062728 n - (n : ℤ)).toNat

end

end A352275.P5938439511843971712

/-! ## A352275.P5176052934075492273

`A096465(A161680(n+1)+A033954(n))`
-/

namespace A352275.P5176052934075492273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A161680 (n + 1) + A033954 n).toNat

end

end A352275.P5176052934075492273

/-! ## A352275.P16851109297942823295

`A096465(A182868(n)+A034856(n+1))`
-/

namespace A352275.P16851109297942823295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A182868 n + A034856 (n + 1)).toNat

end

end A352275.P16851109297942823295

/-!
# A352276: a(0) = 1 and a(n) = Sum_{k = 0..3*n} n/(n + 2*k)*binomial(n + 2*k,k) for n >= 1.

The programs for A352276, there is no canonical definition to state claims against.
-/

/-! ## A352276.P8627540308216755484

`A091491(A139276(n))`
-/

namespace A352276.P8627540308216755484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A139276 n).toNat

end

end A352276.P8627540308216755484

/-! ## A352276.P7744656988418285828

`A096465(A139277(n))`
-/

namespace A352276.P7744656988418285828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A139277 n).toNat

end

end A352276.P7744656988418285828

/-! ## A352276.P9118925339453685392

`A091491(n*A017101(n))`
-/

namespace A352276.P9118925339453685392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 ((n : ℤ) * A017101 n).toNat

end

end A352276.P9118925339453685392

/-! ## A352276.P17090316143771977743

`A096465(n*(A017101(n)+2))`
-/

namespace A352276.P17090316143771977743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 ((n : ℤ) * (A017101 n + 2)).toNat

end

end A352276.P17090316143771977743

/-! ## A352276.P5810248574589714566

`A096465(A139276(n)+2*n)`
-/

namespace A352276.P5810248574589714566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A139276 n + (2 * n : ℤ)).toNat

end

end A352276.P5810248574589714566

/-!
# A352279: a(0) = 1; a(n) = 2 * Sum_{k=0..floor((n-1)/2)} binomial(n-1,2*k) * a(n-2*k-1).

The programs for A352279, there is no canonical definition to state claims against.
-/

/-! ## A352279.P16836418839255001489

`∑[A241085(A008577(n))]`
-/

namespace A352279.P16836418839255001489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241085 (A008577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352279.P16836418839255001489

/-! ## A352279.P12203534332820007007

`∑[A192419(A279565(n))]`
-/

namespace A352279.P12203534332820007007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192419 (A279565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352279.P12203534332820007007

/-! ## A352279.P12103631448776255831

`A220658(Δ[A000734(n)])`
-/

namespace A352279.P12103631448776255831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (f1 (n + 1) - f1 n).toNat

end

end A352279.P12103631448776255831

/-!
# A352280: a(0) = 1; a(n) = 3 * Sum_{k=0..floor((n-1)/2)} binomial(n-1,2*k) * a(n-2*k-1).

The programs for A352280, there is no canonical definition to state claims against.
-/

/-! ## A352280.P9572171998357201366

`A292758(n)-A219839(A000272(n))`
-/

namespace A352280.P9572171998357201366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292758 n - A219839 (A000272 n).toNat

end

end A352280.P9572171998357201366

/-! ## A352280.P13152506126706130800

`A392196(A149975(n))`
-/

namespace A352280.P13152506126706130800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392196 (A149975 n).toNat

end

end A352280.P13152506126706130800

/-!
# A352281: Regular triangle read by rows, T(n,k) is the least integer m such that sigma(m)/m is greater than n + (k-1)/n.

The programs for A352281, there is no canonical definition to state claims against.
-/

/-! ## A352281.P11020785434328313285

`A094348(A077169(n+1)+A048152(n+1)²)`
-/

namespace A352281.P11020785434328313285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094348 (A077169 (n + 1) + A048152 (n + 1) ^ 2).toNat

end

end A352281.P11020785434328313285

/-! ## A352281.P11324092707682532543

`A168267(A376653(n+1)+A249745(n+1))`
-/

namespace A352281.P11324092707682532543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168267 (A376653 (n + 1) + A249745 (n + 1)).toNat

end

end A352281.P11324092707682532543

/-!
# A352282: Indices k where A225402(k) = 0.

The programs for A352282, there is no canonical definition to state claims against.
-/

/-! ## A352282.P5037456093639226175

`eq[0, A225402(n)]`
-/

namespace A352282.P5037456093639226175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352282.P5037456093639226175

/-! ## A352282.P10781658988277369291

`lt[8, A225411(n)]`
-/

namespace A352282.P10781658988277369291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A352282.P10781658988277369291

/-! ## A352282.P7287618270473235366

`eq[9, A225411(A028310(n))]`
-/

namespace A352282.P7287618270473235366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225411 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352282.P7287618270473235366

/-! ## A352282.P8105387794923635871

`lt[A225402(n), A057427(n)]`
-/

namespace A352282.P8105387794923635871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352282.P8105387794923635871

/-! ## A352282.P4795148156440369166

`lt[A225402(n), acot(A000120(n))]`
-/

namespace A352282.P4795148156440369166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000120 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A352282.P4795148156440369166

/-! ## A352282.P6190637395104441708

`lt[A225402(n), acot(A000217(n))]`
-/

namespace A352282.P6190637395104441708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000217 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A352282.P6190637395104441708

/-! ## A352282.P6801384368055851513

`lt[A225402(n), acot(A008592(n))]`
-/

namespace A352282.P6801384368055851513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A008592 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A352282.P6801384368055851513

/-! ## A352282.P2175026409234550005

`lt[A225402(n), acot(A032741(n))]`
-/

namespace A352282.P2175026409234550005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A032741 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A352282.P2175026409234550005

/-! ## A352282.P9504564752631343100

`lt[A225402(n), acot(A225409(n))]`
-/

namespace A352282.P9504564752631343100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A225409 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A352282.P9504564752631343100

/-! ## A352282.P9989189757474543450

`lt[A225402(n), acot(A292032(n))]`
-/

namespace A352282.P9989189757474543450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A292032 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A352282.P9989189757474543450

/-!
# A352283: Smallest nonnegative even integer with exactly n pairs of Goldbach partitions, (p,q) and (r,s) with p,q,r,s prime and p < r <= s < q, such that all integers in the open intervals (p,r) and (s,q) are composite.

The programs for A352283, there is no canonical definition to state claims against.
-/

/-! ## A352283.P16881007996352343022

`A085153(n+1)*A119466(A036966(n+1))`
-/

namespace A352283.P16881007996352343022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085153 (n + 1) * A119466 (A036966 (n + 1)).toNat

end

end A352283.P16881007996352343022

/-! ## A352283.P3148811349020970271

`A119466(A036966(n+1))*A119485(n+1)`
-/

namespace A352283.P3148811349020970271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119466 (A036966 (n + 1)).toNat * A119485 (n + 1)

end

end A352283.P3148811349020970271

/-!
# A352284: a(n) is 2^(2*n) times the derivative of order 2*n of the logarithm of I_0(x) (the modified Bessel function of the first kind of order zero) evaluated at zero.

The programs for A352284, there is no canonical definition to state claims against.
-/

/-! ## A352284.P15337871660850767463

`A000984(n)*A101981(n)`
-/

namespace A352284.P15337871660850767463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A101981 n

end

end A352284.P15337871660850767463

/-! ## A352284.P7198026215631310000

`-(A015567(n)*A352313(n))`
-/

namespace A352284.P7198026215631310000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A015567 n * A352313 n)

end

end A352284.P7198026215631310000

/-! ## A352284.P8408543256271160943

`record[A081668(n)]*A101981(n)`
-/

namespace A352284.P8408543256271160943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A101981 n

end

end A352284.P8408543256271160943

/-! ## A352284.P12609588549158263894

`record[A126869(n)]*A101981(n)`
-/

namespace A352284.P12609588549158263894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A101981 n

end

end A352284.P12609588549158263894

/-! ## A352284.P17001723158747528797

`A015567(n+1)*A352313(n)`
-/

namespace A352284.P17001723158747528797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015567 (n + 1) * A352313 n

end

end A352284.P17001723158747528797

/-!
# A352285: a(n) is the number of steps in John Conway's game of life that it takes for the smallest square checkerboard pattern with a diagonal of n living cells to either die out or enter a cycle; or -1 if it never cycles.

The programs for A352285, there is no canonical definition to state claims against.
-/

/-! ## A352285.P15597498288769453656

`A040402(A018039(n))`
-/

namespace A352285.P15597498288769453656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040402 (A018039 n).toNat

end

end A352285.P15597498288769453656

/-! ## A352285.P13479759885000350690

`A072457(A056334(n+1))`
-/

namespace A352285.P13479759885000350690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072457 (A056334 (n + 1)).toNat

end

end A352285.P13479759885000350690

/-! ## A352285.P16397160314161187463

`A222417(A248821(n+1))`
-/

namespace A352285.P16397160314161187463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222417 (A248821 (n + 1)).toNat

end

end A352285.P16397160314161187463

/-! ## A352285.P14529145758730919549

`A046079(A113229(n)+4)`
-/

namespace A352285.P14529145758730919549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A113229 n + 4).toNat

end

end A352285.P14529145758730919549

/-! ## A352285.P12880329760193398584

`A353693(∏[A008277(n+4)])`
-/

namespace A352285.P12880329760193398584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353693 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352285.P12880329760193398584

/-!
# A352287: Numbers k such that, for every prime p dividing k, k has a nontrivial divisor which is congruent to 1 (mod p).

The programs for A352287, there is no canonical definition to state claims against.
-/

/-! ## A352287.P17264691805826009851

`∏{e}[A000351(n), A334799(#)]`
-/

namespace A352287.P17264691805826009851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A334799 (Nat.factorization (f1 n).natAbs p)

end

end A352287.P17264691805826009851

/-! ## A352287.P15804539555773380569

`lt[A055778(A072088(n)), A326697(n+1)]+1`
-/

namespace A352287.P15804539555773380569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 (A072088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A352287.P15804539555773380569

/-! ## A352287.P10587231656849084937

`lt[A064876(A072089(n)), A326698(n+1)]+1`
-/

namespace A352287.P10587231656849084937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A072089 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A352287.P10587231656849084937

/-!
# A352288: Total cophenetic index of the rooted tree with Matula-Goebel number n.

The programs for A352288, there is no canonical definition to state claims against.
-/

/-! ## A352288.P520830661819375203

`A122180(A005384(n+1)*A007732(n+1))`
-/

namespace A352288.P520830661819375203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122180 (A005384 (n + 1) * A007732 (n + 1)).toNat

end

end A352288.P520830661819375203

/-! ## A352288.P9002214467483132787

`round(A002371(A007732(n+1))/A351912(3*(n+1)))`
-/

namespace A352288.P9002214467483132787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002371 (A007732 (n + 1)).toNat : ℚ) / (A351912 (3 * (n + 1)) : ℚ))

end

end A352288.P9002214467483132787

/-! ## A352288.P10226505712436779148

`A325960(A328456(A006005(A129768(A299766(n+1)))))`
-/

namespace A352288.P10226505712436779148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325960 (A328456 (A006005 (A129768 (A299766 (n + 1)).toNat).toNat).toNat).toNat

end

end A352288.P10226505712436779148

/-! ## A352288.P18735193125595547

`A155548(2*(n+2))%A001055(A007732(n+1))`
-/

namespace A352288.P18735193125595547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155548 (2 * (n + 2))) (A001055 (A007732 (n + 1)).toNat)

end

end A352288.P18735193125595547

/-! ## A352288.P6403038862667543952

`A110740(n+1)%A379006(n+1)`
-/

namespace A352288.P6403038862667543952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110740 (n + 1)) (A379006 (n + 1))

end

end A352288.P6403038862667543952

/-!
# A352289: a(1) = 1 and thereafter a(n) = 2*prime(a(n-1)).

The programs for A352289, the canonical program `A352289.P31542329096907047` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352289 has offset 1).

The definition of A352289 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000040(a(n-1))` (program `A352289.P31542329096907047`, by `A352289.P31542329096907047.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A352289.P31542329096907047

`2*A000040(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A352289

/-- `2*A000040(a(n-1))` -/
def P31542329096907047.Spec : Prop :=
  ∀ n, P31542329096907047.a n = A352289 (n + 1)

theorem P31542329096907047.correct : P31542329096907047.Spec := by
  intro n
  simp only [A352289, Nat.add_sub_cancel]

end A352289

/-! ## A352289.P786005969467376966

`A245824(∑[A036591(n)])`
-/

namespace A352289.P786005969467376966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245824 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352289.P786005969467376966

namespace A352289

/-- `A245824(∑[A036591(n)])` -/
def P786005969467376966.Spec : Prop :=
  ∀ n, P786005969467376966.a n = A352289 (n + 1)

end A352289

/-! ## A352289.P16180932920684074821

`A245824(∑[A036592(n)])`
-/

namespace A352289.P16180932920684074821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245824 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352289.P16180932920684074821

namespace A352289

/-- `A245824(∑[A036592(n)])` -/
def P16180932920684074821.Spec : Prop :=
  ∀ n, P16180932920684074821.a n = A352289 (n + 1)

end A352289

/-! ## A352289.P3443973161001378855

`A245824(A173282(n+1))`
-/

namespace A352289.P3443973161001378855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245824 (A173282 (n + 1)).toNat

end

end A352289.P3443973161001378855

namespace A352289

/-- `A245824(A173282(n+1))` -/
def P3443973161001378855.Spec : Prop :=
  ∀ n, P3443973161001378855.a n = A352289 (n + 1)

end A352289

/-! ## A352289.P3380774381946125942

`A245824(∑[A001190(n+1)])`
-/

namespace A352289.P3380774381946125942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245824 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352289.P3380774381946125942

namespace A352289

/-- `A245824(∑[A001190(n+1)])` -/
def P3380774381946125942.Spec : Prop :=
  ∀ n, P3380774381946125942.a n = A352289 (n + 1)

end A352289

/-!
# A352290: Numbers m such that the greatest prime factor of m^2 + 1 is a Fibonacci number.

The programs for A352290, there is no canonical definition to state claims against.
-/

/-! ## A352290.P4069189506449474900

`eq[2, A005086(A006530(n²+1))]`
-/

namespace A352290.P4069189506449474900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (A006530 (n ^ 2 + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352290.P4069189506449474900

/-! ## A352290.P7456405061825087922

`A115339(lt[A027336(n), A368153(3*n+2)])`
-/

namespace A352290.P7456405061825087922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368153 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A352290.P7456405061825087922

/-! ## A352290.P13634088914692343970

`A115339(lt[A115339(n+1), A368153(3*n+2)])`
-/

namespace A352290.P13634088914692343970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368153 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A352290.P13634088914692343970

/-!
# A352291: Odd numbers k such that hammingweight(k^2) < hammingweight(k).

The programs for A352291, the canonical program `A352291.P14610308504021664996` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352291 has offset 1).

The definition of A352291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352291.P14610308504021664996

`A094694(eq[1, A094694(n+1)%2]+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A352291

/-- `A094694(eq[1, A094694(n+1)%2]+1)` -/
def P14610308504021664996.Spec : Prop :=
  ∀ n, P14610308504021664996.a n = A352291 (n + 1)

theorem P14610308504021664996.correct : P14610308504021664996.Spec := by
  intro n
  simp only [A352291, Nat.add_sub_cancel]

end A352291

/-! ## A352291.P17647097297292009069

`∩[2*n+1, A094694(n+1)]`
-/

namespace A352291.P17647097297292009069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352291.P17647097297292009069

namespace A352291

/-- `∩[2*n+1, A094694(n+1)]` -/
def P17647097297292009069.Spec : Prop :=
  ∀ n, (P17647097297292009069.a n : ℤ) = A352291 (n + 1)

end A352291

/-! ## A352291.P6229806714316251849

`record[A000265(A094694(n+1))]`
-/

namespace A352291.P6229806714316251849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A094694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352291.P6229806714316251849

namespace A352291

/-- `record[A000265(A094694(n+1))]` -/
def P6229806714316251849.Spec : Prop :=
  ∀ n, P6229806714316251849.a n = A352291 (n + 1)

end A352291

/-! ## A352291.P6245842444009500042

`filter[A094694(n+1), A323158(#)]`
-/

namespace A352291.P6245842444009500042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A352291.P6245842444009500042

namespace A352291

/-- `filter[A094694(n+1), A323158(#)]` -/
def P6245842444009500042.Spec : Prop :=
  ∀ n, P6245842444009500042.a n = A352291 (n + 1)

end A352291

/-! ## A352291.P15715659668097186060

`filter[A094694(n+1), A324908(#)]`
-/

namespace A352291.P15715659668097186060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A352291.P15715659668097186060

namespace A352291

/-- `filter[A094694(n+1), A324908(#)]` -/
def P15715659668097186060.Spec : Prop :=
  ∀ n, P15715659668097186060.a n = A352291 (n + 1)

end A352291

/-! ## A352291.P13049377568230445192

`∩[A094694(n+1), A241757(n+1)]`
-/

namespace A352291.P13049377568230445192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352291.P13049377568230445192

namespace A352291

/-- `∩[A094694(n+1), A241757(n+1)]` -/
def P13049377568230445192.Spec : Prop :=
  ∀ n, (P13049377568230445192.a n : ℤ) = A352291 (n + 1)

end A352291

/-! ## A352291.P7602407999882985954

`∩[A094694(n+1), A004273(n)]`
-/

namespace A352291.P7602407999882985954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352291.P7602407999882985954

namespace A352291

/-- `∩[A094694(n+1), A004273(n)]` -/
def P7602407999882985954.Spec : Prop :=
  ∀ n, (P7602407999882985954.a n : ℤ) = A352291 (n + 1)

end A352291

/-! ## A352291.P3450559812385860775

`∩[A094694(n+1), A004274(n)]`
-/

namespace A352291.P3450559812385860775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352291.P3450559812385860775

namespace A352291

/-- `∩[A094694(n+1), A004274(n)]` -/
def P3450559812385860775.Spec : Prop :=
  ∀ n, (P3450559812385860775.a n : ℤ) = A352291 (n + 1)

end A352291

/-! ## A352291.P8558318145945256526

`∩[A094694(n+1), A004276(n)]`
-/

namespace A352291.P8558318145945256526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352291.P8558318145945256526

namespace A352291

/-- `∩[A094694(n+1), A004276(n)]` -/
def P8558318145945256526.Spec : Prop :=
  ∀ n, (P8558318145945256526.a n : ℤ) = A352291 (n + 1)

end A352291

/-! ## A352291.P7290911641659138373

`∩[A094694(n+1), A004281(n)]`
-/

namespace A352291.P7290911641659138373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352291.P7290911641659138373

namespace A352291

/-- `∩[A094694(n+1), A004281(n)]` -/
def P7290911641659138373.Spec : Prop :=
  ∀ n, (P7290911641659138373.a n : ℤ) = A352291 (n + 1)

end A352291

/-! ## A352291.P16332141100099158086

`∩[A094694(n+1), A020742(n)]`
-/

namespace A352291.P16332141100099158086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352291.P16332141100099158086

namespace A352291

/-- `∩[A094694(n+1), A020742(n)]` -/
def P16332141100099158086.Spec : Prop :=
  ∀ n, (P16332141100099158086.a n : ℤ) = A352291 (n + 1)

end A352291

/-! ## A352291.P13530475735844852414

`∩[A094694(n+1), A060747(n)]`
-/

namespace A352291.P13530475735844852414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352291.P13530475735844852414

namespace A352291

/-- `∩[A094694(n+1), A060747(n)]` -/
def P13530475735844852414.Spec : Prop :=
  ∀ n, (P13530475735844852414.a n : ℤ) = A352291 (n + 1)

end A352291

/-! ## A352291.P13391262324188136018

`∩[A094694(n+1), A062545(n)]`
-/

namespace A352291.P13391262324188136018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352291.P13391262324188136018

namespace A352291

/-- `∩[A094694(n+1), A062545(n)]` -/
def P13391262324188136018.Spec : Prop :=
  ∀ n, (P13391262324188136018.a n : ℤ) = A352291 (n + 1)

end A352291

/-! ## A352291.P13205852312072314614

`∩[A094694(n+1), A130773(n)]`
-/

namespace A352291.P13205852312072314614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352291.P13205852312072314614

namespace A352291

/-- `∩[A094694(n+1), A130773(n)]` -/
def P13205852312072314614.Spec : Prop :=
  ∀ n, (P13205852312072314614.a n : ℤ) = A352291 (n + 1)

end A352291

/-! ## A352291.P3435097967309026519

`∩[A094694(n+1), A163985(n)]`
-/

namespace A352291.P3435097967309026519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352291.P3435097967309026519

namespace A352291

/-- `∩[A094694(n+1), A163985(n)]` -/
def P3435097967309026519.Spec : Prop :=
  ∀ n, (P3435097967309026519.a n : ℤ) = A352291 (n + 1)

end A352291

/-! ## A352291.P18365870940323732024

`∩[A094694(n+1), A223134(n)]`
-/

namespace A352291.P18365870940323732024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352291.P18365870940323732024

namespace A352291

/-- `∩[A094694(n+1), A223134(n)]` -/
def P18365870940323732024.Spec : Prop :=
  ∀ n, (P18365870940323732024.a n : ℤ) = A352291 (n + 1)

end A352291

/-! ## A352291.P15981025363567310027

`∩[A094694(n+1), A326494(n)]`
-/

namespace A352291.P15981025363567310027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352291.P15981025363567310027

namespace A352291

/-- `∩[A094694(n+1), A326494(n)]` -/
def P15981025363567310027.Spec : Prop :=
  ∀ n, (P15981025363567310027.a n : ℤ) = A352291 (n + 1)

end A352291

/-! ## A352291.P1244130073892472378

`∩[A094694(n+1), A293205(n+1)]`
-/

namespace A352291.P1244130073892472378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352291.P1244130073892472378

namespace A352291

/-- `∩[A094694(n+1), A293205(n+1)]` -/
def P1244130073892472378.Spec : Prop :=
  ∀ n, (P1244130073892472378.a n : ℤ) = A352291 (n + 1)

end A352291

/-! ## A352291.P10571617154892317387

`filter[A094694(n+1), A053867(#)]`
-/

namespace A352291.P10571617154892317387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A352291.P10571617154892317387

namespace A352291

/-- `filter[A094694(n+1), A053867(#)]` -/
def P10571617154892317387.Spec : Prop :=
  ∀ n, P10571617154892317387.a n = A352291 (n + 1)

end A352291

/-!
# A352292: Expansion of e.g.f. 1/(2 - exp(x) - x/(1 - x)).

The programs for A352292, there is no canonical definition to state claims against.
-/

/-! ## A352292.P2835050415485513570

`A141419((10^n+17)/9)-1`
-/

namespace A352292.P2835050415485513570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (SequenceMachineLib.roundAway ((10 ^ n + 17 : ℚ) / 9)).toNat - 1

end

end A352292.P2835050415485513570

/-!
# A352294: Expansion of e.g.f. 1/(exp(x) - x/(1 - x)).

The programs for A352294, there is no canonical definition to state claims against.
-/

/-! ## A352294.P9889084025624250199

`A268496(A117641(n))`
-/

namespace A352294.P9889084025624250199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268496 (A117641 n).toNat

end

end A352294.P9889084025624250199

/-! ## A352294.P14253687624041115250

`A008676(Δ[A218677(n)])`
-/

namespace A352294.P14253687624041115250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (f1 (n + 1) - f1 n).toNat

end

end A352294.P14253687624041115250

/-!
# A352296: Smallest number that can be expressed as the sum of two primes in exactly n ways or -1 if no such number exists.

The programs for A352296, there is no canonical definition to state claims against.
-/

/-! ## A352296.P6616925893562682902

`A023036(n)-floor(acot(n))`
-/

namespace A352296.P6616925893562682902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023036 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A352296.P6616925893562682902

/-! ## A352296.P842100474890952964

`xor(C(2, n²), A001172(n))`
-/

namespace A352296.P842100474890952964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose 2 (n ^ 2) : ℤ) (A001172 n)

end

end A352296.P842100474890952964

/-! ## A352296.P16559021891687635646

`ceil(cosh(sin(n)))*A136244(n)`
-/

namespace A352296.P16559021891687635646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A136244 n

end

end A352296.P16559021891687635646

/-! ## A352296.P962442707658027816

`A001172(n%a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A352296.P962442707658027816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A001172 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A352296.P962442707658027816

/-! ## A352296.P12949701707221365049

`A023036(n)-A000007(n)`
-/

namespace A352296.P12949701707221365049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023036 n - A000007 n

end

end A352296.P12949701707221365049

/-! ## A352296.P15003628022074279810

`A023036(n)/A054977(n)`
-/

namespace A352296.P15003628022074279810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023036 n : ℚ) / (A054977 n : ℚ)

end

end A352296.P15003628022074279810

/-! ## A352296.P917972523372314767

`xor(A001172(n), A130706(n))`
-/

namespace A352296.P917972523372314767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001172 n) (A130706 n)

end

end A352296.P917972523372314767

/-! ## A352296.P4788380531234164842

`A023036(n)-A000038(n)/2`
-/

namespace A352296.P4788380531234164842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023036 n : ℚ) - (A000038 n : ℚ) / 2

end

end A352296.P4788380531234164842

/-! ## A352296.P1466543510911457242

`A023036(n)-A010051(2*(n+1))`
-/

namespace A352296.P1466543510911457242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023036 n - A010051 (2 * (n + 1))

end

end A352296.P1466543510911457242

/-! ## A352296.P13489422241071819747

`A002375(n+2)+A023036(n)-A045917(n+2)`
-/

namespace A352296.P13489422241071819747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 2) + (A023036 n - A045917 (n + 2))

end

end A352296.P13489422241071819747

/-! ## A352296.P2575537658751591666

`A136244(n+1)+A023036(n)-A258713(n+1)`
-/

namespace A352296.P2575537658751591666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136244 (n + 1) + (A023036 n - A258713 (n + 1))

end

end A352296.P2575537658751591666

/-! ## A352296.P4043935641846363265

`A036453(2*n+1)*A136244(n)`
-/

namespace A352296.P4043935641846363265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1) * A136244 n

end

end A352296.P4043935641846363265

/-! ## A352296.P6439999083289900912

`A005451(A023036(n))`
-/

namespace A352296.P6439999083289900912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A023036 n).toNat

end

end A352296.P6439999083289900912

/-! ## A352296.P6446846772573084292

`A023036(n)-A354449(A126204(n+1))`
-/

namespace A352296.P6446846772573084292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023036 n - A354449 (A126204 (n + 1)).toNat

end

end A352296.P6446846772573084292

/-!
# A352297: Even numbers with exactly 1 pair of Goldbach partitions, (p,q) and (r,s) with p,q,r,s prime and p < r <= s < q, such that all integers in the open intervals (p,r) and (s,q) are composite.

The programs for A352297, there is no canonical definition to state claims against.
-/

/-! ## A352297.P16035406174627549544

`A352351(n+1)+A352352(n+1)`
-/

namespace A352297.P16035406174627549544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352351 (n + 1) + A352352 (n + 1)

end

end A352297.P16035406174627549544

/-! ## A352297.P13227768169284295977

`A352353(n+1)+A352354(n+1)`
-/

namespace A352297.P13227768169284295977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352353 (n + 1) + A352354 (n + 1)

end

end A352297.P13227768169284295977

/-! ## A352297.P3946638265777242695

`A352351(n+1)+A003961(A352354(n+1))`
-/

namespace A352297.P3946638265777242695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352351 (n + 1) + A003961 (A352354 (n + 1)).toNat

end

end A352297.P3946638265777242695

/-! ## A352297.P9942182732733822989

`A352352(n+1)+A064989(A352353(n+1))`
-/

namespace A352297.P9942182732733822989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352352 (n + 1) + A064989 (A352353 (n + 1)).toNat

end

end A352297.P9942182732733822989

/-!
# A352298: Conjectured largest number that can be expressed as the sum of two primes in exactly n ways or -1 if no such number exists.

The programs for A352298, there is no canonical definition to state claims against.
-/

/-! ## A352298.P5764021685903289903

`or(-C(n, n²), A000954(n))`
-/

namespace A352298.P5764021685903289903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-(Nat.choose n (n ^ 2) : ℤ)) (A000954 n)

end

end A352298.P5764021685903289903

/-! ## A352298.P7322712172707342791

`or(A000954(n), A159075(or(1, n)))`
-/

namespace A352298.P7322712172707342791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000954 n) (A159075 (Nat.lor 1 n))

end

end A352298.P7322712172707342791

/-! ## A352298.P3883334054900607542

`or(-A019590(n+1), A000954(n))`
-/

namespace A352298.P3883334054900607542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A019590 (n + 1)) (A000954 n)

end

end A352298.P3883334054900607542

/-! ## A352298.P18373486675166989954

`or(A000954(n), A196199(C(n, n²)))`
-/

namespace A352298.P18373486675166989954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000954 n) (A196199 (Nat.choose n (n ^ 2)))

end

end A352298.P18373486675166989954

/-! ## A352298.P9832356866214561910

`or(A000954(n), A010815(A000954(n)))`
-/

namespace A352298.P9832356866214561910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000954 n) (A010815 (A000954 n).toNat)

end

end A352298.P9832356866214561910

/-!
# A352299: Expansion of e.g.f. 1/(2 - exp(x) - x^3).

The programs for A352299, there is no canonical definition to state claims against.
-/

/-! ## A352299.P11510574947910900710

`A194440(A148453(n))`
-/

namespace A352299.P11510574947910900710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194440 (A148453 n).toNat

end

end A352299.P11510574947910900710

/-! ## A352299.P2902148403617577781

`A048865(A000698(n+1)+2)`
-/

namespace A352299.P2902148403617577781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A000698 (n + 1) + 2).toNat

end

end A352299.P2902148403617577781

