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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
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
import Seq.B000.C036
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
# A132000: Expansion of (1/3) * b(q) * b(q^2) * c(q)^2 / c(q^2) in powers of q where b(), c() are cubic AGM functions.

The programs for A132000, there is no canonical definition to state claims against.
-/

/-! ## A132000.P9476571094188053046

`(-1)^n*A113261(n)`
-/

namespace A132000.P9476571094188053046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113261 n

end

end A132000.P9476571094188053046

/-! ## A132000.P3590210974361612412

`A113261(n)*A121373(Δ[or(1, n)])`
-/

namespace A132000.P3590210974361612412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113261 n * A121373 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A132000.P3590210974361612412

/-! ## A132000.P15049345205805047049

`A113261(n)/A048272(2/2^(-1)^n)`
-/

namespace A132000.P15049345205805047049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113261 n : ℚ) / (A048272 (SequenceMachineLib.roundAway (2 / (2 : ℚ) ^ ((-1) ^ n : ℤ))).toNat : ℚ)

end

end A132000.P15049345205805047049

/-! ## A132000.P14045263607614102886

`A113261(n)*A247133(Δ[A008619(n)])`
-/

namespace A132000.P14045263607614102886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113261 n * A247133 (f1 (n + 1) - f1 n).toNat

end

end A132000.P14045263607614102886

/-! ## A132000.P11773420581857493044

`A113261(n)/A247133(Δ[A008619(n)]²)`
-/

namespace A132000.P11773420581857493044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113261 n : ℚ) / (A247133 ((f1 (n + 1) - f1 n) ^ 2).toNat : ℚ)

end

end A132000.P11773420581857493044

/-! ## A132000.P10372957927625573306

`A113261(n)*A127674(A000217(n))`
-/

namespace A132000.P10372957927625573306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113261 n * A127674 (A000217 n).toNat

end

end A132000.P10372957927625573306

/-!
# A132001: Expansion of 1 - (1/3) * b(q) * b(q^2) * c(q)^2 / c(q^2) in powers of q where b(), c() are cubic AGM functions.

The programs for A132001, the canonical program `A132001.P4609221565505308167` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132001 has offset 1).

The definition of A132001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132001.P13146663931175604754

`-A132000(n+1)`
-/

namespace A132001.P13146663931175604754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A132000 (n + 1)

end

end A132001.P13146663931175604754

namespace A132001

/-- `-A132000(n+1)` -/
def P13146663931175604754.Spec : Prop :=
  ∀ n, P13146663931175604754.a n = A132001 (n + 1)

end A132001

/-! ## A132001.P1452398042352975940

`Δ[a(n-1)-A132000(n)]` with `a(0)=1`
-/

namespace A132001.P1452398042352975940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A132000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132001.P1452398042352975940

namespace A132001

/-- `Δ[a(n-1)-A132000(n)]` -/
def P1452398042352975940.Spec : Prop :=
  ∀ n, P1452398042352975940.a n = A132001 (n + 1)

end A132001

/-! ## A132001.P4818166326715951235

`and(2, A010051(n+2))-A132000(n+1)`
-/

namespace A132001.P4818166326715951235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A010051 (n + 2)) - A132000 (n + 1)

end

end A132001.P4818166326715951235

namespace A132001

/-- `and(2, A010051(n+2))-A132000(n+1)` -/
def P4818166326715951235.Spec : Prop :=
  ∀ n, P4818166326715951235.a n = A132001 (n + 1)

end A132001

/-! ## A132001.P16993653953660878908

`2-(A132000(n+1)+A020639(2*(n+1)))`
-/

namespace A132001.P16993653953660878908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A132000 (n + 1) + A020639 (2 * (n + 1)))

end

end A132001.P16993653953660878908

namespace A132001

/-- `2-(A132000(n+1)+A020639(2*(n+1)))` -/
def P16993653953660878908.Spec : Prop :=
  ∀ n, P16993653953660878908.a n = A132001 (n + 1)

end A132001

/-! ## A132001.P1998185949153648087

`n*A010051(2*(n+1))-A132000(n+1)`
-/

namespace A132001.P1998185949153648087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (2 * (n + 1)) - A132000 (n + 1)

end

end A132001.P1998185949153648087

namespace A132001

/-- `n*A010051(2*(n+1))-A132000(n+1)` -/
def P1998185949153648087.Spec : Prop :=
  ∀ n, P1998185949153648087.a n = A132001 (n + 1)

end A132001

/-! ## A132001.P4335884705973745444

`A132000(A276284(C(2, n)))*A132000(n+1)`
-/

namespace A132001.P4335884705973745444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132000 (A276284 (Nat.choose 2 n)).toNat * A132000 (n + 1)

end

end A132001.P4335884705973745444

namespace A132001

/-- `A132000(A276284(C(2, n)))*A132000(n+1)` -/
def P4335884705973745444.Spec : Prop :=
  ∀ n, P4335884705973745444.a n = A132001 (n + 1)

end A132001

/-! ## A132001.P10292871433132026502

`A062157(A020639(2*(n+1)))*A132000(n+1)`
-/

namespace A132001.P10292871433132026502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A020639 (2 * (n + 1))).toNat * A132000 (n + 1)

end

end A132001.P10292871433132026502

namespace A132001

/-- `A062157(A020639(2*(n+1)))*A132000(n+1)` -/
def P10292871433132026502.Spec : Prop :=
  ∀ n, P10292871433132026502.a n = A132001 (n + 1)

end A132001

/-! ## A132001.P9330431306863503376

`A132000(A087653(C(2, n)+1))*A132000(n+1)`
-/

namespace A132001.P9330431306863503376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132000 (A087653 (Nat.choose 2 n + 1)).toNat * A132000 (n + 1)

end

end A132001.P9330431306863503376

namespace A132001

/-- `A132000(A087653(C(2, n)+1))*A132000(n+1)` -/
def P9330431306863503376.Spec : Prop :=
  ∀ n, P9330431306863503376.a n = A132001 (n + 1)

end A132001

/-! ## A132001.P14817861757246122380

`Δ[-∑[A132000(n)]]`
-/

namespace A132001.P14817861757246122380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132000 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132001.P14817861757246122380

namespace A132001

/-- `Δ[-∑[A132000(n)]]` -/
def P14817861757246122380.Spec : Prop :=
  ∀ n, P14817861757246122380.a n = A132001 (n + 1)

end A132001

/-! ## A132001.P4609221565505308167

`∑{d}[n+1, #*A100050(#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132001

/-- `∑{d}[n+1, #*A100050(#)]` -/
def P4609221565505308167.Spec : Prop :=
  ∀ n, P4609221565505308167.a n = A132001 (n + 1)

theorem P4609221565505308167.correct : P4609221565505308167.Spec := by
  intro n
  simp only [A132001, Nat.add_sub_cancel]

end A132001

/-! ## A132001.P11674390154696764908

`A033999(n)*A113261(n+1)`
-/

namespace A132001.P11674390154696764908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A113261 (n + 1)

end

end A132001.P11674390154696764908

namespace A132001

/-- `A033999(n)*A113261(n+1)` -/
def P11674390154696764908.Spec : Prop :=
  ∀ n, P11674390154696764908.a n = A132001 (n + 1)

end A132001

/-! ## A132001.P9824743205372699380

`A000007(n+1)-A132000(n+1)`
-/

namespace A132001.P9824743205372699380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A132000 (n + 1)

end

end A132001.P9824743205372699380

namespace A132001

/-- `A000007(n+1)-A132000(n+1)` -/
def P9824743205372699380.Spec : Prop :=
  ∀ n, P9824743205372699380.a n = A132001 (n + 1)

end A132001

/-! ## A132001.P4045231255973681308

`A113261(n+1)*A113261(n)/A132000(n)`
-/

namespace A132001.P4045231255973681308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113261 (n + 1) * A113261 n : ℚ) / (A132000 n : ℚ)

end

end A132001.P4045231255973681308

namespace A132001

/-- `A113261(n+1)*A113261(n)/A132000(n)` -/
def P4045231255973681308.Spec : Prop :=
  ∀ n, P4045231255973681308.a n = (A132001 (n + 1) : ℚ)

end A132001

/-! ## A132001.P1328949832098220369

`1-(A132000(n+1)+A033999(2*n))`
-/

namespace A132001.P1328949832098220369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A132000 (n + 1) + A033999 (2 * n))

end

end A132001.P1328949832098220369

namespace A132001

/-- `1-(A132000(n+1)+A033999(2*n))` -/
def P1328949832098220369.Spec : Prop :=
  ∀ n, P1328949832098220369.a n = A132001 (n + 1)

end A132001

/-! ## A132001.P595036698587388230

`A000035(2*n)-A132000(n+1)`
-/

namespace A132001.P595036698587388230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A132000 (n + 1)

end

end A132001.P595036698587388230

namespace A132001

/-- `A000035(2*n)-A132000(n+1)` -/
def P595036698587388230.Spec : Prop :=
  ∀ n, P595036698587388230.a n = A132001 (n + 1)

end A132001

/-! ## A132001.P4189008803197006317

`1-(A132000(n+1)+A000034(2*n))`
-/

namespace A132001.P4189008803197006317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A132000 (n + 1) + A000034 (2 * n))

end

end A132001.P4189008803197006317

namespace A132001

/-- `1-(A132000(n+1)+A000034(2*n))` -/
def P4189008803197006317.Spec : Prop :=
  ∀ n, P4189008803197006317.a n = A132001 (n + 1)

end A132001

/-! ## A132001.P13005883850076449373

`A033999(2*n+1)*A132000(n+1)`
-/

namespace A132001.P13005883850076449373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A132000 (n + 1)

end

end A132001.P13005883850076449373

namespace A132001

/-- `A033999(2*n+1)*A132000(n+1)` -/
def P13005883850076449373.Spec : Prop :=
  ∀ n, P13005883850076449373.a n = A132001 (n + 1)

end A132001

/-!
# A132002: Expansion of phi(q^3) / phi(q) in powers of q where phi() is a Ramanujan theta function.

The programs for A132002, there is no canonical definition to state claims against.
-/

/-! ## A132002.P7944166232968210585

`(-1)^n*A098151(n)`
-/

namespace A132002.P7944166232968210585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A098151 n

end

end A132002.P7944166232968210585

/-! ## A132002.P17548108348603272401

`A139136(3*n)`
-/

namespace A132002.P17548108348603272401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139136 (3 * n)

end

end A132002.P17548108348603272401

/-! ## A132002.P15751596494999221339

`A139137(3*n)`
-/

namespace A132002.P15751596494999221339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139137 (3 * n)

end

end A132002.P15751596494999221339

/-! ## A132002.P18326939121721985316

`A122928(n)*A280560(n)`
-/

namespace A132002.P18326939121721985316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122928 n * A280560 n

end

end A132002.P18326939121721985316

/-! ## A132002.P499478163733333177

`A098151(n)/A033999(n)`
-/

namespace A132002.P499478163733333177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098151 n : ℚ) / (A033999 n : ℚ)

end

end A132002.P499478163733333177

/-! ## A132002.P13409134116540920847

`A098151(n)*A260971(Δ[A008619(n)])`
-/

namespace A132002.P13409134116540920847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098151 n * A260971 (f1 (n + 1) - f1 n).toNat

end

end A132002.P13409134116540920847

/-! ## A132002.P7016919848910240258

`A098151(n)/A260971(Δ[A008619(n)]²)`
-/

namespace A132002.P7016919848910240258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098151 n : ℚ) / (A260971 ((f1 (n + 1) - f1 n) ^ 2).toNat : ℚ)

end

end A132002.P7016919848910240258

/-! ## A132002.P5660190443993439334

`A080015(n)*A098151(n)/A210030(n)`
-/

namespace A132002.P5660190443993439334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080015 n * A098151 n : ℚ) / (A210030 n : ℚ)

end

end A132002.P5660190443993439334

/-! ## A132002.P13084648165990718878

`A122792(3*n)*A262930(3*n)/A293387(3*n)`
-/

namespace A132002.P13084648165990718878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122792 (3 * n) * A262930 (3 * n) : ℚ) / (A293387 (3 * n) : ℚ)

end

end A132002.P13084648165990718878

/-!
# A132003: Expansion of (phi(q^3) / phi(q)) * phi(-q^2) * phi(-q^6) in powers of q where phi() is a Ramanujan theta function.

The programs for A132003, there is no canonical definition to state claims against.
-/

/-! ## A132003.P13019027792997376090

`(-1)^n*A122857(n)`
-/

namespace A132003.P13019027792997376090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A122857 n

end

end A132003.P13019027792997376090

/-! ## A132003.P12278353517146427468

`A122857(n)/A033999(n)`
-/

namespace A132003.P12278353517146427468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122857 n : ℚ) / (A033999 n : ℚ)

end

end A132003.P12278353517146427468

/-! ## A132003.P3832405144163487276

`A122857(n)*A209615(Δ[A112653(n)])`
-/

namespace A132003.P3832405144163487276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122857 n * A209615 (f1 (n + 1) - f1 n).toNat

end

end A132003.P3832405144163487276

/-! ## A132003.P8435674218213285278

`A122857(n)*A209615(Δ[n²])`
-/

namespace A132003.P8435674218213285278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122857 n * A209615 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A132003.P8435674218213285278

/-! ## A132003.P12229639872114977171

`(A138745(A008585(n))+A138745(n))/2`
-/

namespace A132003.P12229639872114977171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138745 (A008585 n).toNat + A138745 n : ℚ) / 2

end

end A132003.P12229639872114977171

/-! ## A132003.P17162391906031709178

`A122857(n)/(1-and(2, A273911(n)))`
-/

namespace A132003.P17162391906031709178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122857 n : ℚ) / (1 - Int.land 2 (A273911 n) : ℚ)

end

end A132003.P17162391906031709178

/-!
# A132004: Expansion of (1 - phi(q^3) / phi(q) * phi(-q^2) * phi(-q^6)) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A132004, the canonical program `A132004.P16065052976772229410` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132004 has offset 1).

The definition of A132004 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035154, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A132004.P16065052976772229410

`(-1)^n*A035154(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A132004

/-- `(-1)^n*A035154(n+1)` -/
def P16065052976772229410.Spec : Prop :=
  ∀ n, P16065052976772229410.a n = A132004 (n + 1)

theorem P16065052976772229410.correct : P16065052976772229410.Spec := by
  intro n
  simp only [A132004, Nat.add_sub_cancel]

end A132004

/-! ## A132004.P3583776670720211143

`A132003(n+1)/(1-6/2)`
-/

namespace A132004.P3583776670720211143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132003 (n + 1) : ℚ) / (1 - (6 : ℚ) / 2)

end

end A132004.P3583776670720211143

namespace A132004

/-- `A132003(n+1)/(1-6/2)` -/
def P3583776670720211143.Spec : Prop :=
  ∀ n, P3583776670720211143.a n = (A132004 (n + 1) : ℚ)

end A132004

/-! ## A132004.P16240736537787190674

`A113652(A038502(n+1))`
-/

namespace A132004.P16240736537787190674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113652 (A038502 (n + 1)).toNat

end

end A132004.P16240736537787190674

namespace A132004

/-- `A113652(A038502(n+1))` -/
def P16240736537787190674.Spec : Prop :=
  ∀ n, P16240736537787190674.a n = A132004 (n + 1)

end A132004

/-! ## A132004.P14609398944683451810

`A035154(n+1)/A033999(n)`
-/

namespace A132004.P14609398944683451810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035154 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A132004.P14609398944683451810

namespace A132004

/-- `A035154(n+1)/A033999(n)` -/
def P14609398944683451810.Spec : Prop :=
  ∀ n, P14609398944683451810.a n = (A132004 (n + 1) : ℚ)

end A132004

/-! ## A132004.P2825740562209004921

`A034947(n+1)*A121450(n+1)`
-/

namespace A132004.P2825740562209004921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A121450 (n + 1)

end

end A132004.P2825740562209004921

namespace A132004

/-- `A034947(n+1)*A121450(n+1)` -/
def P2825740562209004921.Spec : Prop :=
  ∀ n, P2825740562209004921.a n = A132004 (n + 1)

end A132004

/-! ## A132004.P5394582705039594438

`A138952((n+1)/A038500(n+1))`
-/

namespace A132004.P5394582705039594438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A132004.P5394582705039594438

namespace A132004

/-- `A138952((n+1)/A038500(n+1))` -/
def P5394582705039594438.Spec : Prop :=
  ∀ n, P5394582705039594438.a n = A132004 (n + 1)

end A132004

/-! ## A132004.P9634720797665993023

`A138746(n+1)/A099545(n+1)`
-/

namespace A132004.P9634720797665993023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138746 (n + 1) : ℚ) / (A099545 (n + 1) : ℚ)

end

end A132004.P9634720797665993023

namespace A132004

/-- `A138746(n+1)/A099545(n+1)` -/
def P9634720797665993023.Spec : Prop :=
  ∀ n, P9634720797665993023.a n = (A132004 (n + 1) : ℚ)

end A132004

/-! ## A132004.P381630235963858931

`A138746(n+1)/A363340(n+1)`
-/

namespace A132004.P381630235963858931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138746 (n + 1) : ℚ) / (A363340 (n + 1) : ℚ)

end

end A132004.P381630235963858931

namespace A132004

/-- `A138746(n+1)/A363340(n+1)` -/
def P381630235963858931.Spec : Prop :=
  ∀ n, P381630235963858931.a n = (A132004 (n + 1) : ℚ)

end A132004

/-! ## A132004.P14496968181237454411

`(2-A099545(n+1))*A121450(n+1)`
-/

namespace A132004.P14496968181237454411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A099545 (n + 1)) * A121450 (n + 1)

end

end A132004.P14496968181237454411

namespace A132004

/-- `(2-A099545(n+1))*A121450(n+1)` -/
def P14496968181237454411.Spec : Prop :=
  ∀ n, P14496968181237454411.a n = A132004 (n + 1)

end A132004

/-! ## A132004.P15316253535156412990

`(2-A363340(n+1))*A121450(n+1)`
-/

namespace A132004.P15316253535156412990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A363340 (n + 1)) * A121450 (n + 1)

end

end A132004.P15316253535156412990

namespace A132004

/-- `(2-A363340(n+1))*A121450(n+1)` -/
def P15316253535156412990.Spec : Prop :=
  ∀ n, P15316253535156412990.a n = A132004 (n + 1)

end A132004

/-! ## A132004.P1012316513978796547

`A138746(n+1)/(2-A034947(n+1))`
-/

namespace A132004.P1012316513978796547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138746 (n + 1) : ℚ) / (2 - A034947 (n + 1) : ℚ)

end

end A132004.P1012316513978796547

namespace A132004

/-- `A138746(n+1)/(2-A034947(n+1))` -/
def P1012316513978796547.Spec : Prop :=
  ∀ n, P1012316513978796547.a n = (A132004 (n + 1) : ℚ)

end A132004

/-! ## A132004.P10429692567233817068

`∑{d}[n+1, A113652(#)*A154272((n+1)/#)]`
-/

namespace A132004.P10429692567233817068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113652 d * A154272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A132004.P10429692567233817068

namespace A132004

/-- `∑{d}[n+1, A113652(#)*A154272((n+1)/#)]` -/
def P10429692567233817068.Spec : Prop :=
  ∀ n, P10429692567233817068.a n = A132004 (n + 1)

end A132004

/-! ## A132004.P17874291666914443317

`A121450(n+1)*A121450(A363340(n+1))`
-/

namespace A132004.P17874291666914443317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121450 (n + 1) * A121450 (A363340 (n + 1)).toNat

end

end A132004.P17874291666914443317

namespace A132004

/-- `A121450(n+1)*A121450(A363340(n+1))` -/
def P17874291666914443317.Spec : Prop :=
  ∀ n, P17874291666914443317.a n = A132004 (n + 1)

end A132004

/-! ## A132004.P10805001022343768076

`lcm(A033999(n), A121450(n+1))*A033999(n)`
-/

namespace A132004.P10805001022343768076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A033999 n) (A121450 (n + 1)) : ℤ) * A033999 n

end

end A132004.P10805001022343768076

namespace A132004

/-- `lcm(A033999(n), A121450(n+1))*A033999(n)` -/
def P10805001022343768076.Spec : Prop :=
  ∀ n, P10805001022343768076.a n = A132004 (n + 1)

end A132004

/-! ## A132004.P7009649790940281368

`A121450(n+1)+A121450(n+1)-A138952(n+1)`
-/

namespace A132004.P7009649790940281368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121450 (n + 1) + (A121450 (n + 1) - A138952 (n + 1))

end

end A132004.P7009649790940281368

namespace A132004

/-- `A121450(n+1)+A121450(n+1)-A138952(n+1)` -/
def P7009649790940281368.Spec : Prop :=
  ∀ n, P7009649790940281368.a n = A132004 (n + 1)

end A132004

/-! ## A132004.P2632875358479988004

`A033999(2*n+1)/2*A132003(n+1)`
-/

namespace A132004.P2632875358479988004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (2 * n + 1) : ℚ) / 2 * (A132003 (n + 1) : ℚ)

end

end A132004.P2632875358479988004

namespace A132004

/-- `A033999(2*n+1)/2*A132003(n+1)` -/
def P2632875358479988004.Spec : Prop :=
  ∀ n, P2632875358479988004.a n = (A132004 (n + 1) : ℚ)

end A132004

/-! ## A132004.P7631946815285195167

`A209615(2*n+1)/2*A122857(n+1)`
-/

namespace A132004.P7631946815285195167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209615 (2 * n + 1) : ℚ) / 2 * (A122857 (n + 1) : ℚ)

end

end A132004.P7631946815285195167

namespace A132004

/-- `A209615(2*n+1)/2*A122857(n+1)` -/
def P7631946815285195167.Spec : Prop :=
  ∀ n, P7631946815285195167.a n = (A132004 (n + 1) : ℚ)

end A132004

/-! ## A132004.P10356691569915683014

`A121450((n+1)*A099545(n+1))`
-/

namespace A132004.P10356691569915683014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121450 ((n + 1 : ℤ) * A099545 (n + 1)).toNat

end

end A132004.P10356691569915683014

namespace A132004

/-- `A121450((n+1)*A099545(n+1))` -/
def P10356691569915683014.Spec : Prop :=
  ∀ n, P10356691569915683014.a n = A132004 (n + 1)

end A132004

/-! ## A132004.P1590006876117865193

`A138746((n+1)*A099545(n+1))`
-/

namespace A132004.P1590006876117865193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138746 ((n + 1 : ℤ) * A099545 (n + 1)).toNat

end

end A132004.P1590006876117865193

namespace A132004

/-- `A138746((n+1)*A099545(n+1))` -/
def P1590006876117865193.Spec : Prop :=
  ∀ n, P1590006876117865193.a n = A132004 (n + 1)

end A132004

/-! ## A132004.P9334838992434980656

`A138952((n+1)*A099545(n+1))`
-/

namespace A132004.P9334838992434980656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138952 ((n + 1 : ℤ) * A099545 (n + 1)).toNat

end

end A132004.P9334838992434980656

namespace A132004

/-- `A138952((n+1)*A099545(n+1))` -/
def P9334838992434980656.Spec : Prop :=
  ∀ n, P9334838992434980656.a n = A132004 (n + 1)

end A132004

/-!
# A132006: Column 0 and main diagonal (offset) of triangle A132005.

The programs for A132006, there is no canonical definition to state claims against.
-/

/-! ## A132006.P5815254021782633776

`A132005(∑[n-char[1]])`
-/

namespace A132006.P5815254021782633776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A132006.P5815254021782633776

/-! ## A132006.P8957420333658895365

`A132005(∑[n])+A025439(n)`
-/

namespace A132006.P8957420333658895365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132005 (∑ j ∈ Finset.range (n + 1), f1 j) + A025439 n

end

end A132006.P8957420333658895365

/-! ## A132006.P14193018295987489997

`gcd(A132005(A000217(n)), A151934(n))`
-/

namespace A132006.P14193018295987489997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132005 (A000217 n).toNat) (A151934 n)

end

end A132006.P14193018295987489997

/-! ## A132006.P9272162037151720164

`and(A132005(A000217(n)), A260196(n))`
-/

namespace A132006.P9272162037151720164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132005 (A000217 n).toNat) (A260196 n)

end

end A132006.P9272162037151720164

/-! ## A132006.P15197444013377825869

`A151934(n+1)+A132005(A000217(n))`
-/

namespace A132006.P15197444013377825869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 (n + 1) + A132005 (A000217 n).toNat

end

end A132006.P15197444013377825869

/-! ## A132006.P8233558597862574616

`lcm(A070748(n+1), A132005(A000217(n)))`
-/

namespace A132006.P8233558597862574616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A070748 (n + 1)) (A132005 (A000217 n).toNat)

end

end A132006.P8233558597862574616

/-! ## A132006.P3339469424212888272

`C(A000010(n+1), n)!*A132005(A000217(n))`
-/

namespace A132006.P3339469424212888272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose (A000010 (n + 1)).toNat n) : ℤ) * A132005 (A000217 n).toNat

end

end A132006.P3339469424212888272

/-! ## A132006.P3087434382750118952

`A132005(A000217(n))-A000045(A025439(n)²)`
-/

namespace A132006.P3087434382750118952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132005 (A000217 n).toNat - A000045 (A025439 n ^ 2).toNat

end

end A132006.P3087434382750118952

/-! ## A132006.P2637234830349290656

`A132005(A000217(n))-A000217(A025439(n)²)`
-/

namespace A132006.P2637234830349290656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132005 (A000217 n).toNat - A000217 (A025439 n ^ 2).toNat

end

end A132006.P2637234830349290656

/-! ## A132006.P4812553882560137747

`A132005(A000217(n))-A000045(n)*A025439(n)`
-/

namespace A132006.P4812553882560137747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132005 (A000217 n).toNat - A000045 n * A025439 n

end

end A132006.P4812553882560137747

/-!
# A132007: Triangle, read by rows, where T(n,k) = T(n,k-1) + n*T(n-1,k-1) for n>0 and k>0, with T(n,0) = T(n-1,n-1) for n>0 and T(0,0) = 1.

The programs for A132007, there is no canonical definition to state claims against.
-/

/-! ## A132007.P1068794785749265283

`A164161(A062399(n)-A003056(n))`
-/

namespace A132007.P1068794785749265283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164161 (A062399 n - A003056 n).toNat

end

end A132007.P1068794785749265283

/-! ## A132007.P3461794686018612946

`A164166(A062399(n)-A003056(n))`
-/

namespace A132007.P3461794686018612946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164166 (A062399 n - A003056 n).toNat

end

end A132007.P3461794686018612946

/-! ## A132007.P3848609279897198725

`A164169(A062399(n)-A003056(n))`
-/

namespace A132007.P3848609279897198725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164169 (A062399 n - A003056 n).toNat

end

end A132007.P3848609279897198725

/-! ## A132007.P1642623088775657642

`A164161(A004916(n+1)-A003056(n))`
-/

namespace A132007.P1642623088775657642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164161 (A004916 (n + 1) - A003056 n).toNat

end

end A132007.P1642623088775657642

/-!
# A132008: Row sums of triangle A132007.

The programs for A132008, there is no canonical definition to state claims against.
-/

/-! ## A132008.P10211206622509697818

`Δ[A110083(n+1)]/(n+1)`
-/

namespace A132008.P10211206622509697818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110083 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A132008.P10211206622509697818

/-!
# A132009: a(1) = 1; for n>=2, a(n) = n-th positive integer which is coprime to the largest prime divisor of n.

The programs for A132009, there is no canonical definition to state claims against.
-/

/-! ## A132009.P5069908830286768439

`floor(n/A070777(n+1)+1+n)`
-/

namespace A132009.P5069908830286768439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A070777 (n + 1) : ℚ) + 1 + (n : ℚ)⌋

end

end A132009.P5069908830286768439

/-! ## A132009.P18261519141641581539

`floor(∑{d}[A068795(n+1), (n+1)/#])`
-/

namespace A132009.P18261519141641581539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1 : ℚ) / (d : ℚ)⌋

end

end A132009.P18261519141641581539

/-! ## A132009.P13540180477845522902

`round(∑[4*n+1]/A171462(2*(n+1)))`
-/

namespace A132009.P13540180477845522902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A171462 (2 * (n + 1)) : ℚ))

end

end A132009.P13540180477845522902

/-! ## A132009.P1697929729632676897

`A126571(A006530(n+1)+∑[n])`
-/

namespace A132009.P1697929729632676897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (A006530 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A132009.P1697929729632676897

/-! ## A132009.P5361855122440333874

`ceil((n+1)/A000010(A111089(n+1)))+n`
-/

namespace A132009.P5361855122440333874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A000010 (A111089 (n + 1)).toNat : ℚ)⌉ + (n : ℤ)

end

end A132009.P5361855122440333874

/-! ## A132009.P12440163075513059987

`A126571(A345941(n+1)+A000217(n))`
-/

namespace A132009.P12440163075513059987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (A345941 (n + 1) + A000217 n).toNat

end

end A132009.P12440163075513059987

/-!
# A132011: Number of partitions of n into distinct parts such that 3*u<=v for all pairs (u,v) of parts with u

The programs for A132011, there is no canonical definition to state claims against.
-/

/-! ## A132011.P4431219951074727147

`A067513(A016041(n+1))*A279223(2*n+1)`
-/

namespace A132011.P4431219951074727147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A016041 (n + 1)).toNat * A279223 (2 * n + 1)

end

end A132011.P4431219951074727147

/-! ## A132011.P980029995092877514

`∑[A376650(n)^A376633(3*(n+1))]`
-/

namespace A132011.P980029995092877514
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376650 n : ℚ) ^ (A376633 (3 * (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132011.P980029995092877514

/-! ## A132011.P9564549575082435034

`A186028(A141020(n))*A279223(2*n)`
-/

namespace A132011.P9564549575082435034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186028 (A141020 n).toNat * A279223 (2 * n)

end

end A132011.P9564549575082435034

/-! ## A132011.P14639218007989072503

`A279223(2*n)/A304042(A390307(3*n+4))`
-/

namespace A132011.P14639218007989072503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279223 (2 * n) : ℚ) / (A304042 (A390307 (3 * n + 4)).toNat : ℚ)

end

end A132011.P14639218007989072503

/-! ## A132011.P100253133669990382

`A335453(A335430(n))+A003108(2*n+1)`
-/

namespace A132011.P100253133669990382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (A335430 n).toNat + A003108 (2 * n + 1)

end

end A132011.P100253133669990382

/-!
# A132012: Records in A051445.

The programs for A132012, there is no canonical definition to state claims against.
-/

/-! ## A132012.P13940637717210384850

`A051445(A132115(n+1))`
-/

namespace A132012.P13940637717210384850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (A132115 (n + 1)).toNat

end

end A132012.P13940637717210384850

/-! ## A132012.P921106803429274542

`record[A002181(n+2)]`
-/

namespace A132012.P921106803429274542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002181 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132012.P921106803429274542

/-! ## A132012.P1773362969475439671

`record[A006511(n+2)-A196079(n+2)]`
-/

namespace A132012.P1773362969475439671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006511 (n + 2) - A196079 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132012.P1773362969475439671

/-! ## A132012.P7849892931998297810

`record[A051445(n+1)]`
-/

namespace A132012.P7849892931998297810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132012.P7849892931998297810

/-! ## A132012.P5224857428924507846

`record[A049283(n+2)]`
-/

namespace A132012.P5224857428924507846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132012.P5224857428924507846

/-! ## A132012.P6051720226989955836

`A049283(2*A132115(n+1))`
-/

namespace A132012.P6051720226989955836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (2 * A132115 (n + 1)).toNat

end

end A132012.P6051720226989955836

/-! ## A132012.P9105163492936531233

`record[A015126(A006511(n+2))]`
-/

namespace A132012.P9105163492936531233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015126 (A006511 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132012.P9105163492936531233

/-! ## A132012.P17542417153116249261

`record[A074987(A319048(n+2))]`
-/

namespace A132012.P17542417153116249261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074987 (A319048 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132012.P17542417153116249261

/-!
# A132013: T(n,j) for an iterated mixed order Laguerre transform. Coefficients of the normalized generalized Laguerre polynomials (-1)^n*n!*L(n,1-n,x).

The programs for A132013, the canonical program `A132013.P17343233529562696122` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132013 has offset 0).

The definition of A132013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132013.P1296894960054901306

`char[∑[n-1]]-A132440(n)`
-/

namespace A132013.P1296894960054901306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A132440 n

end

end A132013.P1296894960054901306

namespace A132013

/-- `char[∑[n-1]]-A132440(n)` -/
def P1296894960054901306.Spec : Prop :=
  ∀ n, P1296894960054901306.a n = A132013 n

end A132013

/-! ## A132013.P12695108105324145562

`∑[A128064(n+1)-char[∑[n+1]]]`
-/

namespace A132013.P12695108105324145562
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128064 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132013.P12695108105324145562

namespace A132013

/-- `∑[A128064(n+1)-char[∑[n+1]]]` -/
def P12695108105324145562.Spec : Prop :=
  ∀ n, P12695108105324145562.a n = A132013 n

end A132013

/-! ## A132013.P3097988785513504596

`A001057(A134082(n))`
-/

namespace A132013.P3097988785513504596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A134082 n).toNat

end

end A132013.P3097988785513504596

namespace A132013

/-- `A001057(A134082(n))` -/
def P3097988785513504596.Spec : Prop :=
  ∀ n, P3097988785513504596.a n = A132013 n

end A132013

/-! ## A132013.P1066107166913120838

`A097806(n)-A132681(n)`
-/

namespace A132013.P1066107166913120838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n - A132681 n

end

end A132013.P1066107166913120838

namespace A132013

/-- `A097806(n)-A132681(n)` -/
def P1066107166913120838.Spec : Prop :=
  ∀ n, P1066107166913120838.a n = A132013 n

end A132013

/-! ## A132013.P7837260384295255632

`A167374(n)-A218234(n)`
-/

namespace A132013.P7837260384295255632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n - A218234 n

end

end A132013.P7837260384295255632

namespace A132013

/-- `A167374(n)-A218234(n)` -/
def P7837260384295255632.Spec : Prop :=
  ∀ n, P7837260384295255632.a n = A132013 n

end A132013

/-! ## A132013.P7886655503567387105

`A004070(n)*A167374(n)`
-/

namespace A132013.P7886655503567387105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 n * A167374 n

end

end A132013.P7886655503567387105

namespace A132013

/-- `A004070(n)*A167374(n)` -/
def P7886655503567387105.Spec : Prop :=
  ∀ n, P7886655503567387105.a n = A132013 n

end A132013

/-! ## A132013.P18037718275430727433

`A007318(n)*A167374(n)`
-/

namespace A132013.P18037718275430727433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A167374 n

end

end A132013.P18037718275430727433

namespace A132013

/-- `A007318(n)*A167374(n)` -/
def P18037718275430727433.Spec : Prop :=
  ∀ n, P18037718275430727433.a n = A132013 n

end A132013

/-! ## A132013.P8241610118061942676

`A026725(n)*A167374(n)`
-/

namespace A132013.P8241610118061942676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 n * A167374 n

end

end A132013.P8241610118061942676

namespace A132013

/-- `A026725(n)*A167374(n)` -/
def P8241610118061942676.Spec : Prop :=
  ∀ n, P8241610118061942676.a n = A132013 n

end A132013

/-! ## A132013.P14188768612322689622

`A026736(n)*A167374(n)`
-/

namespace A132013.P14188768612322689622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 n * A167374 n

end

end A132013.P14188768612322689622

namespace A132013

/-- `A026736(n)*A167374(n)` -/
def P14188768612322689622.Spec : Prop :=
  ∀ n, P14188768612322689622.a n = A132013 n

end A132013

/-! ## A132013.P3128940344365867051

`A026758(n)*A167374(n)`
-/

namespace A132013.P3128940344365867051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 n * A167374 n

end

end A132013.P3128940344365867051

namespace A132013

/-- `A026758(n)*A167374(n)` -/
def P3128940344365867051.Spec : Prop :=
  ∀ n, P3128940344365867051.a n = A132013 n

end A132013

/-! ## A132013.P11482143771733511636

`A026769(n)*A167374(n)`
-/

namespace A132013.P11482143771733511636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026769 n * A167374 n

end

end A132013.P11482143771733511636

namespace A132013

/-- `A026769(n)*A167374(n)` -/
def P11482143771733511636.Spec : Prop :=
  ∀ n, P11482143771733511636.a n = A132013 n

end A132013

/-! ## A132013.P15348602514087145611

`A027948(n)*A167374(n)`
-/

namespace A132013.P15348602514087145611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027948 n * A167374 n

end

end A132013.P15348602514087145611

namespace A132013

/-- `A027948(n)*A167374(n)` -/
def P15348602514087145611.Spec : Prop :=
  ∀ n, P15348602514087145611.a n = A132013 n

end A132013

/-! ## A132013.P3006641845489300578

`A097806(n)*A100218(n)`
-/

namespace A132013.P3006641845489300578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A100218 n

end

end A132013.P3006641845489300578

namespace A132013

/-- `A097806(n)*A100218(n)` -/
def P3006641845489300578.Spec : Prop :=
  ∀ n, P3006641845489300578.a n = A132013 n

end A132013

/-! ## A132013.P14878016347566584538

`A097806(n)*A102587(n)`
-/

namespace A132013.P14878016347566584538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A102587 n

end

end A132013.P14878016347566584538

namespace A132013

/-- `A097806(n)*A102587(n)` -/
def P14878016347566584538.Spec : Prop :=
  ∀ n, P14878016347566584538.a n = A132013 n

end A132013

/-! ## A132013.P7459615353477675311

`A097806(n)*A104402(n)`
-/

namespace A132013.P7459615353477675311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A104402 n

end

end A132013.P7459615353477675311

namespace A132013

/-- `A097806(n)*A104402(n)` -/
def P7459615353477675311.Spec : Prop :=
  ∀ n, P7459615353477675311.a n = A132013 n

end A132013

/-! ## A132013.P11156816179229411759

`A097806(n)*A130595(n)`
-/

namespace A132013.P11156816179229411759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A130595 n

end

end A132013.P11156816179229411759

namespace A132013

/-- `A097806(n)*A130595(n)` -/
def P11156816179229411759.Spec : Prop :=
  ∀ n, P11156816179229411759.a n = A132013 n

end A132013

/-! ## A132013.P17343233529562696122

`A077028(n)*A167374(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A132013

/-- `A077028(n)*A167374(n)` -/
def P17343233529562696122.Spec : Prop :=
  ∀ n, P17343233529562696122.a n = A132013 n

theorem P17343233529562696122.correct : P17343233529562696122.Spec := by
  intro n
  simp only [A132013]

end A132013

/-! ## A132013.P15122791175242183691

`A119468(n)*A167374(n)`
-/

namespace A132013.P15122791175242183691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119468 n * A167374 n

end

end A132013.P15122791175242183691

namespace A132013

/-- `A119468(n)*A167374(n)` -/
def P15122791175242183691.Spec : Prop :=
  ∀ n, P15122791175242183691.a n = A132013 n

end A132013

/-! ## A132013.P16100950891414708711

`A110314(n)%A028326(n)`
-/

namespace A132013.P16100950891414708711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110314 n) (A028326 n)

end

end A132013.P16100950891414708711

namespace A132013

/-- `A110314(n)%A028326(n)` -/
def P16100950891414708711.Spec : Prop :=
  ∀ n, P16100950891414708711.a n = A132013 n

end A132013

/-! ## A132013.P5575330815650317523

`A110324(n)%A028326(n)`
-/

namespace A132013.P5575330815650317523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110324 n) (A028326 n)

end

end A132013.P5575330815650317523

namespace A132013

/-- `A110324(n)%A028326(n)` -/
def P5575330815650317523.Spec : Prop :=
  ∀ n, P5575330815650317523.a n = A132013 n

end A132013

/-!
# A132014: T(n,j) for double application of an iterated mixed order Laguerre transform: Coefficients of Laguerre polynomial (-1)^n*n!*L(n,2-n,x).

The programs for A132014, the canonical program `A132014.P8642909977413927530` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132014 has offset 0).

The definition of A132014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132014.P8642909977413927530

`A094441(n)*A185018(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A132014

/-- `A094441(n)*A185018(n)` -/
def P8642909977413927530.Spec : Prop :=
  ∀ n, P8642909977413927530.a n = A132014 n

theorem P8642909977413927530.correct : P8642909977413927530.Spec := by
  intro n
  simp only [A132014]

end A132014

/-! ## A132014.P8842126873666953267

`A107230(n)*A185018(n)`
-/

namespace A132014.P8842126873666953267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107230 n * A185018 n

end

end A132014.P8842126873666953267

namespace A132014

/-- `A107230(n)*A185018(n)` -/
def P8842126873666953267.Spec : Prop :=
  ∀ n, P8842126873666953267.a n = A132014 n

end A132014

/-! ## A132014.P4605471257165011092

`A119468(n)*A185018(n)`
-/

namespace A132014.P4605471257165011092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119468 n * A185018 n

end

end A132014.P4605471257165011092

namespace A132014

/-- `A119468(n)*A185018(n)` -/
def P4605471257165011092.Spec : Prop :=
  ∀ n, P4605471257165011092.a n = A132014 n

end A132014

/-! ## A132014.P14137225041025392623

`A124644(n)*A185018(n)`
-/

namespace A132014.P14137225041025392623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124644 n * A185018 n

end

end A132014.P14137225041025392623

namespace A132014

/-- `A124644(n)*A185018(n)` -/
def P14137225041025392623.Spec : Prop :=
  ∀ n, P14137225041025392623.a n = A132014 n

end A132014

/-! ## A132014.P784466980300111290

`A171670(n)*A185018(n)`
-/

namespace A132014.P784466980300111290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171670 n * A185018 n

end

end A132014.P784466980300111290

namespace A132014

/-- `A171670(n)*A185018(n)` -/
def P784466980300111290.Spec : Prop :=
  ∀ n, P784466980300111290.a n = A132014 n

end A132014

/-! ## A132014.P7075037718368934266

`A110314(n)*A130194(n+1)`
-/

namespace A132014.P7075037718368934266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110314 n * A130194 (n + 1)

end

end A132014.P7075037718368934266

namespace A132014

/-- `A110314(n)*A130194(n+1)` -/
def P7075037718368934266.Spec : Prop :=
  ∀ n, P7075037718368934266.a n = A132014 n

end A132014

/-! ## A132014.P2402825265696872407

`A091869(n+1)*A185018(n)`
-/

namespace A132014.P2402825265696872407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091869 (n + 1) * A185018 n

end

end A132014.P2402825265696872407

namespace A132014

/-- `A091869(n+1)*A185018(n)` -/
def P2402825265696872407.Spec : Prop :=
  ∀ n, P2402825265696872407.a n = A132014 n

end A132014

/-! ## A132014.P8369951085399558781

`A175136(n+1)*A185018(n)`
-/

namespace A132014.P8369951085399558781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175136 (n + 1) * A185018 n

end

end A132014.P8369951085399558781

namespace A132014

/-- `A175136(n+1)*A185018(n)` -/
def P8369951085399558781.Spec : Prop :=
  ∀ n, P8369951085399558781.a n = A132014 n

end A132014

/-! ## A132014.P3900159011922367409

`A094267(A025581(n))*A106246(n)`
-/

namespace A132014.P3900159011922367409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A025581 n).toNat * A106246 n

end

end A132014.P3900159011922367409

namespace A132014

/-- `A094267(A025581(n))*A106246(n)` -/
def P3900159011922367409.Spec : Prop :=
  ∀ n, P3900159011922367409.a n = A132014 n

end A132014

/-! ## A132014.P6496476583465350800

`A001057(A004736(n+1))*A106246(n)`
-/

namespace A132014.P6496476583465350800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A004736 (n + 1)).toNat * A106246 n

end

end A132014.P6496476583465350800

namespace A132014

/-- `A001057(A004736(n+1))*A106246(n)` -/
def P6496476583465350800.Spec : Prop :=
  ∀ n, P6496476583465350800.a n = A132014 n

end A132014

/-! ## A132014.P18296048387557536764

`A114284(n)*A141679(n+1)*A130595(n)`
-/

namespace A132014.P18296048387557536764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114284 n * A141679 (n + 1) * A130595 n

end

end A132014.P18296048387557536764

namespace A132014

/-- `A114284(n)*A141679(n+1)*A130595(n)` -/
def P18296048387557536764.Spec : Prop :=
  ∀ n, P18296048387557536764.a n = A132014 n

end A132014

/-! ## A132014.P2428306603022292696

`A185018(n)*A259691(n)`
-/

namespace A132014.P2428306603022292696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 n * A259691 n

end

end A132014.P2428306603022292696

namespace A132014

/-- `A185018(n)*A259691(n)` -/
def P2428306603022292696.Spec : Prop :=
  ∀ n, P2428306603022292696.a n = A132014 n

end A132014

/-! ## A132014.P9665024285035241738

`A056857(n+1)*A185018(n)`
-/

namespace A132014.P9665024285035241738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (n + 1) * A185018 n

end

end A132014.P9665024285035241738

namespace A132014

/-- `A056857(n+1)*A185018(n)` -/
def P9665024285035241738.Spec : Prop :=
  ∀ n, P9665024285035241738.a n = A132014 n

end A132014

/-! ## A132014.P14667703887970697833

`A175579(n+1)*A185018(n)`
-/

namespace A132014.P14667703887970697833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175579 (n + 1) * A185018 n

end

end A132014.P14667703887970697833

namespace A132014

/-- `A175579(n+1)*A185018(n)` -/
def P14667703887970697833.Spec : Prop :=
  ∀ n, P14667703887970697833.a n = A132014 n

end A132014

/-! ## A132014.P11736917511247788913

`A094587(n)*A185018(n)`
-/

namespace A132014.P11736917511247788913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A185018 n

end

end A132014.P11736917511247788913

namespace A132014

/-- `A094587(n)*A185018(n)` -/
def P11736917511247788913.Spec : Prop :=
  ∀ n, P11736917511247788913.a n = A132014 n

end A132014

/-! ## A132014.P1528578661782644962

`A111062(n)*A185018(n)`
-/

namespace A132014.P1528578661782644962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111062 n * A185018 n

end

end A132014.P1528578661782644962

namespace A132014

/-- `A111062(n)*A185018(n)` -/
def P1528578661782644962.Spec : Prop :=
  ∀ n, P1528578661782644962.a n = A132014 n

end A132014

/-! ## A132014.P6255877785081325304

`A042974(n+1)*A141679(n+1)*A181738(n)`
-/

namespace A132014.P6255877785081325304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042974 (n + 1) * A141679 (n + 1) * A181738 n

end

end A132014.P6255877785081325304

namespace A132014

/-- `A042974(n+1)*A141679(n+1)*A181738(n)` -/
def P6255877785081325304.Spec : Prop :=
  ∀ n, P6255877785081325304.a n = A132014 n

end A132014

/-! ## A132014.P12716378219259811071

`A094441(n)*A323899(A130321(n))`
-/

namespace A132014.P12716378219259811071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094441 n * A323899 (A130321 n).toNat

end

end A132014.P12716378219259811071

namespace A132014

/-- `A094441(n)*A323899(A130321(n))` -/
def P12716378219259811071.Spec : Prop :=
  ∀ n, P12716378219259811071.a n = A132014 n

end A132014

/-! ## A132014.P10278469879498742144

`A094587(n)*A323899(A130321(n))`
-/

namespace A132014.P10278469879498742144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A323899 (A130321 n).toNat

end

end A132014.P10278469879498742144

namespace A132014

/-- `A094587(n)*A323899(A130321(n))` -/
def P10278469879498742144.Spec : Prop :=
  ∀ n, P10278469879498742144.a n = A132014 n

end A132014

/-! ## A132014.P15094898656190436743

`A107230(n)*A323899(A130321(n))`
-/

namespace A132014.P15094898656190436743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107230 n * A323899 (A130321 n).toNat

end

end A132014.P15094898656190436743

namespace A132014

/-- `A107230(n)*A323899(A130321(n))` -/
def P15094898656190436743.Spec : Prop :=
  ∀ n, P15094898656190436743.a n = A132014 n

end A132014

/-!
# A132015: Number of partitions of n into distinct parts such that u^2 < v for all pairs (u,v) of parts with u

The programs for A132015, there is no canonical definition to state claims against.
-/

/-! ## A132015.P7873765562271422457

`A134021(A000194(n+1)^A000194(n))`
-/

namespace A132015.P7873765562271422457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (SequenceMachineLib.roundAway ((A000194 (n + 1) : ℚ) ^ (A000194 n : ℤ))).toNat

end

end A132015.P7873765562271422457

/-! ## A132015.P7600279726829068793

`A135663(A368515(n+1)+A340856(2*n+3))`
-/

namespace A132015.P7600279726829068793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (A368515 (n + 1) + A340856 (2 * n + 3)).toNat

end

end A132015.P7600279726829068793

/-!
# A132016: Record values in A132015.

The programs for A132016, there is no canonical definition to state claims against.
-/

/-! ## A132016.P17811162285421108580

`comp[lcm(2, comp[A132015(n+1)])]`
-/

namespace A132016.P17811162285421108580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A132016.P17811162285421108580

/-! ## A132016.P9005781674170327808

`record[gcd(C(2, n), A132015(n+2))]`
-/

namespace A132016.P9005781674170327808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A132015 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132016.P9005781674170327808

/-! ## A132016.P18167804491388508304

`record[A132015(gcd(n+1, ceil(n/2)))]`
-/

namespace A132016.P18167804491388508304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132016.P18167804491388508304

/-! ## A132016.P9396471904747857487

`record[A132015(gcd(1-n, floor(n/2))+1)]`
-/

namespace A132016.P9396471904747857487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132016.P9396471904747857487

/-! ## A132016.P9240410320771355140

`comp[comp[A132015(abs(1-n)+2)]-1]+1`
-/

namespace A132016.P9240410320771355140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (|1 - (n : ℤ)| + 2).toNat

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A132016.P9240410320771355140

/-! ## A132016.P14061718185060044427

`record[A132015(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A132016.P14061718185060044427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132016.P14061718185060044427

/-! ## A132016.P15083262815283079715

`record[A132015(A052938(n))]`
-/

namespace A132016.P15083262815283079715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132016.P15083262815283079715

/-! ## A132016.P11479854385844175981

`record[A132015(A133310(n))]`
-/

namespace A132016.P11479854385844175981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132016.P11479854385844175981

/-! ## A132016.P7804112071071686170

`record[A132015(A152271(n))]`
-/

namespace A132016.P7804112071071686170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132016.P7804112071071686170

/-! ## A132016.P17915923673599476512

`record[A132015(A291766(n))]`
-/

namespace A132016.P17915923673599476512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (A291766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132016.P17915923673599476512

/-!
# A132017: Where record values occur in A132015.

The programs for A132017, there is no canonical definition to state claims against.
-/

/-! ## A132017.P7307013410183235168

`A132042(n)+a(n-1)` with `a(0)=1`
-/

namespace A132017.P7307013410183235168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132042 n + a (n - 1)

end

end A132017.P7307013410183235168

/-! ## A132017.P10706636822385004817

`∑[A132042(round(sqrt(n²+1)))]-1`
-/

namespace A132017.P10706636822385004817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132042 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A132017.P10706636822385004817

/-! ## A132017.P10822327501584946217

`abs(1-∑[A132042(A028310(n))])`
-/

namespace A132017.P10822327501584946217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132042 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A132017.P10822327501584946217

/-! ## A132017.P8315526478808443508

`abs(1-∑[A132042(A000007(n)+n)])`
-/

namespace A132017.P8315526478808443508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132042 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A132017.P8315526478808443508

/-! ## A132017.P13633881489804913414

`∑[A132042(n+1)]+1-A132042(n+1)`
-/

namespace A132017.P13633881489804913414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A132042 (n + 1)

end

end A132017.P13633881489804913414

/-! ## A132017.P1507908076028366888

`∑[A132042(A028310(n)+A000038(n))]`
-/

namespace A132017.P1507908076028366888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132042 (A028310 n + A000038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132017.P1507908076028366888

/-! ## A132017.P11012803714421990326

`∑[A132042(A028310(n))^A178334(n)]`
-/

namespace A132017.P11012803714421990326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132042 (A028310 n).toNat : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132017.P11012803714421990326

/-! ## A132017.P14380339670542048551

`∑[A132042(A028310(n))^A178489(n)]`
-/

namespace A132017.P14380339670542048551
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132042 (A028310 n).toNat : ℚ) ^ (A178489 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132017.P14380339670542048551

/-! ## A132017.P8243788305013926127

`A057428(n+1)+∑[A132042(A028310(n))]`
-/

namespace A132017.P8243788305013926127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132042 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132017.P8243788305013926127

/-!
# A132018: Smallest k such that k! > A058694(n).

The programs for A132018, there is no canonical definition to state claims against.
-/

/-! ## A132018.P1295950748384146512

`A137620(n+1)+C(2, C(n², 5))`
-/

namespace A132018.P1295950748384146512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (n + 1) + (Nat.choose 2 (Nat.choose (n ^ 2) 5) : ℤ)

end

end A132018.P1295950748384146512

/-! ## A132018.P14527892339134605451

`A137620(n+1)+A094497(n)`
-/

namespace A132018.P14527892339134605451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (n + 1) + A094497 n

end

end A132018.P14527892339134605451

/-! ## A132018.P15345829222757121174

`A137620(n+1)+A130716(n)`
-/

namespace A132018.P15345829222757121174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (n + 1) + A130716 n

end

end A132018.P15345829222757121174

/-! ## A132018.P4453243668409388445

`A137620(n+1)+char[A073785(n)]`
-/

namespace A132018.P4453243668409388445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073785 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A132018.P4453243668409388445

/-! ## A132018.P5679208841466747909

`A137620(n+1)+char[A115143(n)]`
-/

namespace A132018.P5679208841466747909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115143 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A132018.P5679208841466747909

/-! ## A132018.P15951565796860747163

`A137620(n+1)+char[A178562(n)]`
-/

namespace A132018.P15951565796860747163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178562 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A132018.P15951565796860747163

/-! ## A132018.P10391267425344257719

`A137620(n+1)+A046978(C(2, n))`
-/

namespace A132018.P10391267425344257719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (n + 1) + A046978 (Nat.choose 2 n)

end

end A132018.P10391267425344257719

/-! ## A132018.P7155560207597475995

`A137620(n+1)+A000007(floor(n/3))`
-/

namespace A132018.P7155560207597475995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (n + 1) + A000007 ⌊(n : ℚ) / 3⌋.toNat

end

end A132018.P7155560207597475995

/-! ## A132018.P807164886935495154

`A137620(n+1)+A001222(C(2, n)+1)`
-/

namespace A132018.P807164886935495154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137620 (n + 1) + A001222 (Nat.choose 2 n + 1)

end

end A132018.P807164886935495154

/-!
# A132020: Decimal expansion of Product_{k>=0} (1 - 1/(2*4^k)).

The programs for A132020, there is no canonical definition to state claims against.
-/

/-! ## A132020.P15356958698004159503

`9-A141848(n)`
-/

namespace A132020.P15356958698004159503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A141848 n

end

end A132020.P15356958698004159503

/-!
# A132027: a(n) = Product_{k=0..floor(log_3(n))} floor(n/3^k), n>=1.

The programs for A132027, the canonical program `A132027.P12532054051101011921` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132027 has offset 1).

The definition of A132027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132027.P12532054051101011921

`(n+1)*a(floor((n+1)/3)-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132027

/-- `(n+1)*a(floor((n+1)/3)-1)` -/
def P12532054051101011921.Spec : Prop :=
  ∀ n, (P12532054051101011921.a n : ℤ) = A132027 (n + 1)

theorem P12532054051101011921.correct : P12532054051101011921.Spec := by
  intro n
  simp only [A132027, Nat.add_sub_cancel]

end A132027

/-! ## A132027.P3453738719824405304

`floor((n+1)*a(A002264(n+1)-1))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A132027.P3453738719824405304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1) * a (A002264 (n + 1) - 1).toNat

end

end A132027.P3453738719824405304

namespace A132027

/-- `floor((n+1)*a(A002264(n+1)-1))` -/
def P3453738719824405304.Spec : Prop :=
  ∀ n, (P3453738719824405304.a n : ℤ) = A132027 (n + 1)

end A132027

/-! ## A132027.P12517453241924197428

`floor((n+1)*a(n-(A004396(n)+1)))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A132027.P12517453241924197428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1) * a ((n : ℤ) - (A004396 n + 1)).toNat

end

end A132027.P12517453241924197428

namespace A132027

/-- `floor((n+1)*a(n-(A004396(n)+1)))` -/
def P12517453241924197428.Spec : Prop :=
  ∀ n, (P12517453241924197428.a n : ℤ) = A132027 (n + 1)

end A132027

/-! ## A132027.P9726902241478311078

`abs(floor((n+1)*a(A042965(n+1)-(n+1))))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A132027.P9726902241478311078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1) * a (A042965 (n + 1) - (n + 1 : ℤ)).toNat

end

end A132027.P9726902241478311078

namespace A132027

/-- `abs(floor((n+1)*a(A042965(n+1)-(n+1))))` -/
def P9726902241478311078.Spec : Prop :=
  ∀ n, (P9726902241478311078.a n : ℤ) = A132027 (n + 1)

end A132027

/-! ## A132027.P13132292244778519257

`floor((n+1)*a(A065033(A004523(n))-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A132027.P13132292244778519257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A065033 (A004523 n).toNat - 1).toNat

end

end A132027.P13132292244778519257

namespace A132027

/-- `floor((n+1)*a(A065033(A004523(n))-1))` -/
def P13132292244778519257.Spec : Prop :=
  ∀ n, (P13132292244778519257.a n : ℤ) = A132027 (n + 1)

end A132027

/-! ## A132027.P5393402616691799728

`A028310((n+1)*a(A042965(n+1)-(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A132027.P5393402616691799728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A028310 ((n + 1 : ℤ) * a (A042965 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A132027.P5393402616691799728

namespace A132027

/-- `A028310((n+1)*a(A042965(n+1)-(n+1)))` -/
def P5393402616691799728.Spec : Prop :=
  ∀ n, P5393402616691799728.a n = A132027 (n + 1)

end A132027

/-!
# A132028: Product{0<=k<=floor(log_4(n)), floor(n/4^k)}, n>=1.

The programs for A132028, the canonical program `A132028.P1172454621510790166` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132028 has offset 1).

The definition of A132028 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132028.P1172454621510790166

`(n+1)*a(floor((n+1)/4)-1)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132028

/-- `(n+1)*a(floor((n+1)/4)-1)` -/
def P1172454621510790166.Spec : Prop :=
  ∀ n, (P1172454621510790166.a n : ℤ) = A132028 (n + 1)

theorem P1172454621510790166.correct : P1172454621510790166.Spec := by
  intro n
  simp only [A132028, Nat.add_sub_cancel]

end A132028

/-! ## A132028.P2016622612093386650

`A098844(n+1)/a(A140106(n+1))` with `a(0)=1`
-/

namespace A132028.P2016622612093386650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A098844 (n + 1) : ℚ) / a (A140106 (n + 1)).toNat

end

end A132028.P2016622612093386650

namespace A132028

/-- `A098844(n+1)/a(A140106(n+1))` -/
def P2016622612093386650.Spec : Prop :=
  ∀ n, P2016622612093386650.a n = (A132028 (n + 1) : ℚ)

end A132028

/-! ## A132028.P4193193653226206188

`record[n*A167976(a(A002265(n)))]` with `a(0)=1`
-/

namespace A132028.P4193193653226206188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * A167976 (f1 (A002265 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132028.P4193193653226206188

namespace A132028

/-- `record[n*A167976(a(A002265(n)))]` -/
def P4193193653226206188.Spec : Prop :=
  ∀ n, P4193193653226206188.a n = A132028 (n + 1)

end A132028

/-! ## A132028.P8627729449595260721

`A289441(A132032(2*(n+1))^A097031(n+1))`
-/

namespace A132028.P8627729449595260721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (SequenceMachineLib.roundAway ((A132032 (2 * (n + 1)) : ℚ) ^ (A097031 (n + 1) : ℤ))).toNat

end

end A132028.P8627729449595260721

namespace A132028

/-- `A289441(A132032(2*(n+1))^A097031(n+1))` -/
def P8627729449595260721.Spec : Prop :=
  ∀ n, P8627729449595260721.a n = A132028 (n + 1)

end A132028

/-! ## A132028.P13287833618541865332

`(n+1)*A055642(A001371(n))`
-/

namespace A132028.P13287833618541865332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055642 (A001371 n).toNat

end

end A132028.P13287833618541865332

namespace A132028

/-- `(n+1)*A055642(A001371(n))` -/
def P13287833618541865332.Spec : Prop :=
  ∀ n, P13287833618541865332.a n = A132028 (n + 1)

end A132028

/-!
# A132029: Product{0<=k<=floor(log_5(n)), floor(n/5^k)}, n>=1.

The programs for A132029, the canonical program `A132029.P4882512394900197254` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132029 has offset 1).

The definition of A132029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132029.P4882512394900197254

`(n+1)*a(floor((n+1)/5)-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132029

/-- `(n+1)*a(floor((n+1)/5)-1)` -/
def P4882512394900197254.Spec : Prop :=
  ∀ n, (P4882512394900197254.a n : ℤ) = A132029 (n + 1)

theorem P4882512394900197254.correct : P4882512394900197254.Spec := by
  intro n
  simp only [A132029, Nat.add_sub_cancel]

end A132029

/-! ## A132029.P6873314953691642918

`A289439(A067080(2*(n+1))%A299930(n+1))`
-/

namespace A132029.P6873314953691642918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (Int.tmod (A067080 (2 * (n + 1))) (A299930 (n + 1))).toNat

end

end A132029.P6873314953691642918

namespace A132029

/-- `A289439(A067080(2*(n+1))%A299930(n+1))` -/
def P6873314953691642918.Spec : Prop :=
  ∀ n, P6873314953691642918.a n = A132029 (n + 1)

end A132029

/-! ## A132029.P4346308905101982342

`A067080(2*(n+1))/A000122(A000290(2*n+3))`
-/

namespace A132029.P4346308905101982342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067080 (2 * (n + 1)) : ℚ) / (A000122 (A000290 (2 * n + 3)).toNat : ℚ)

end

end A132029.P4346308905101982342

namespace A132029

/-- `A067080(2*(n+1))/A000122(A000290(2*n+3))` -/
def P4346308905101982342.Spec : Prop :=
  ∀ n, P4346308905101982342.a n = (A132029 (n + 1) : ℚ)

end A132029

/-! ## A132029.P10501528792978264254

`A067080(2*n+2)/A001227(A077717(n+4))`
-/

namespace A132029.P10501528792978264254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067080 (2 * n + 2) : ℚ) / (A001227 (A077717 (n + 4)).toNat : ℚ)

end

end A132029.P10501528792978264254

namespace A132029

/-- `A067080(2*n+2)/A001227(A077717(n+4))` -/
def P10501528792978264254.Spec : Prop :=
  ∀ n, P10501528792978264254.a n = (A132029 (n + 1) : ℚ)

end A132029

/-! ## A132029.P2982951772481110689

`A078898(A067080(2*n+2)%A325780(n+5))`
-/

namespace A132029.P2982951772481110689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.tmod (A067080 (2 * n + 2)) (A325780 (n + 5))).toNat

end

end A132029.P2982951772481110689

namespace A132029

/-- `A078898(A067080(2*n+2)%A325780(n+5))` -/
def P2982951772481110689.Spec : Prop :=
  ∀ n, P2982951772481110689.a n = A132029 (n + 1)

end A132029

/-!
# A132030: a(n) = Product_{k=0..floor(log_6(n))} floor(n/6^k), n>=1.

The programs for A132030, the canonical program `A132030.P714789439031520794` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132030 has offset 1).

The definition of A132030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132030.P714789439031520794

`(n+1)*a(floor((n+1)/6)-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132030

/-- `(n+1)*a(floor((n+1)/6)-1)` -/
def P714789439031520794.Spec : Prop :=
  ∀ n, (P714789439031520794.a n : ℤ) = A132030 (n + 1)

theorem P714789439031520794.correct : P714789439031520794.Spec := by
  intro n
  simp only [A132030, Nat.add_sub_cancel]

end A132030

/-! ## A132030.P12689555787274459021

`A132264(2*(n+1))/A351080(A069489(2*n+3))`
-/

namespace A132030.P12689555787274459021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132264 (2 * (n + 1)) : ℚ) / (A351080 (A069489 (2 * n + 3)).toNat : ℚ)

end

end A132030.P12689555787274459021

namespace A132030

/-- `A132264(2*(n+1))/A351080(A069489(2*n+3))` -/
def P12689555787274459021.Spec : Prop :=
  ∀ n, P12689555787274459021.a n = (A132030 (n + 1) : ℚ)

end A132030

/-! ## A132030.P4364880967886554363

`A132264(2*(n+1))/A000005(A136080(2*(n+2)))`
-/

namespace A132030.P4364880967886554363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132264 (2 * (n + 1)) : ℚ) / (A000005 (A136080 (2 * (n + 2))).toNat : ℚ)

end

end A132030.P4364880967886554363

namespace A132030

/-- `A132264(2*(n+1))/A000005(A136080(2*(n+2)))` -/
def P4364880967886554363.Spec : Prop :=
  ∀ n, P4364880967886554363.a n = (A132030 (n + 1) : ℚ)

end A132030

/-! ## A132030.P6782888744560709799

`A132264(2*(n+1))/A000034(A101326(2*(n+2)))`
-/

namespace A132030.P6782888744560709799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132264 (2 * (n + 1)) : ℚ) / (A000034 (A101326 (2 * (n + 2))).toNat : ℚ)

end

end A132030.P6782888744560709799

namespace A132030

/-- `A132264(2*(n+1))/A000034(A101326(2*(n+2)))` -/
def P6782888744560709799.Spec : Prop :=
  ∀ n, P6782888744560709799.a n = (A132030 (n + 1) : ℚ)

end A132030

/-! ## A132030.P17988151554096856846

`(n+1)*A055642(A197945(2*n))`
-/

namespace A132030.P17988151554096856846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055642 (A197945 (2 * n)).toNat

end

end A132030.P17988151554096856846

namespace A132030

/-- `(n+1)*A055642(A197945(2*n))` -/
def P17988151554096856846.Spec : Prop :=
  ∀ n, P17988151554096856846.a n = A132030 (n + 1)

end A132030

/-!
# A132031: Product{0<=k<=floor(log_7(n)), floor(n/7^k)}, n>=1.

The programs for A132031, the canonical program `A132031.P5955014104963326699` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132031 has offset 1).

The definition of A132031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132031.P5955014104963326699

`(n+1)*a(floor((n+1)/7)-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132031

/-- `(n+1)*a(floor((n+1)/7)-1)` -/
def P5955014104963326699.Spec : Prop :=
  ∀ n, (P5955014104963326699.a n : ℤ) = A132031 (n + 1)

theorem P5955014104963326699.correct : P5955014104963326699.Spec := by
  intro n
  simp only [A132031, Nat.add_sub_cancel]

end A132031

/-! ## A132031.P2949382033222674873

`(n+1)*A055642(A285407(n))`
-/

namespace A132031.P2949382033222674873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055642 (A285407 n).toNat

end

end A132031.P2949382033222674873

namespace A132031

/-- `(n+1)*A055642(A285407(n))` -/
def P2949382033222674873.Spec : Prop :=
  ∀ n, P2949382033222674873.a n = A132031 (n + 1)

end A132031

/-! ## A132031.P7185264519920097566

`(n+1)*A055642(A241576(n+1))`
-/

namespace A132031.P7185264519920097566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055642 (A241576 (n + 1)).toNat

end

end A132031.P7185264519920097566

namespace A132031

/-- `(n+1)*A055642(A241576(n+1))` -/
def P7185264519920097566.Spec : Prop :=
  ∀ n, P7185264519920097566.a n = A132031 (n + 1)

end A132031

/-! ## A132031.P17250247459190450330

`(n+1)*A055642(A353391(n))`
-/

namespace A132031.P17250247459190450330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055642 (A353391 n).toNat

end

end A132031.P17250247459190450330

namespace A132031

/-- `(n+1)*A055642(A353391(n))` -/
def P17250247459190450330.Spec : Prop :=
  ∀ n, P17250247459190450330.a n = A132031 (n + 1)

end A132031

/-! ## A132031.P13369310295645600997

`(∑[A010060(3*(n+1))*A163806(A357877(3*n+4))]+1)*(n+1)`
-/

namespace A132031.P13369310295645600997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (3 * (n + 1)) * A163806 (A357877 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (n + 1 : ℤ)

end

end A132031.P13369310295645600997

namespace A132031

/-- `(∑[A010060(3*(n+1))*A163806(A357877(3*n+4))]+1)*(n+1)` -/
def P13369310295645600997.Spec : Prop :=
  ∀ n, P13369310295645600997.a n = A132031 (n + 1)

end A132031

/-!
# A132032: Product{0<=k<=floor(log_8(n)), floor(n/8^k)}, n>=1.

The programs for A132032, the canonical program `A132032.P11105440464114002730` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132032 has offset 1).

The definition of A132032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132032.P11105440464114002730

`(n+1)*a(floor((n+1)/8)-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132032

/-- `(n+1)*a(floor((n+1)/8)-1)` -/
def P11105440464114002730.Spec : Prop :=
  ∀ n, (P11105440464114002730.a n : ℤ) = A132032 (n + 1)

theorem P11105440464114002730.correct : P11105440464114002730.Spec := by
  intro n
  simp only [A132032, Nat.add_sub_cancel]

end A132032

/-! ## A132032.P11749388725300824699

`(n+1)*A055642(A000931(n))`
-/

namespace A132032.P11749388725300824699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055642 (A000931 n).toNat

end

end A132032.P11749388725300824699

namespace A132032

/-- `(n+1)*A055642(A000931(n))` -/
def P11749388725300824699.Spec : Prop :=
  ∀ n, P11749388725300824699.a n = A132032 (n + 1)

end A132032

/-! ## A132032.P6524904932976420796

`(n+1)*A055642(A133034(n+4))`
-/

namespace A132032.P6524904932976420796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055642 (A133034 (n + 4)).toNat

end

end A132032.P6524904932976420796

namespace A132032

/-- `(n+1)*A055642(A133034(n+4))` -/
def P6524904932976420796.Spec : Prop :=
  ∀ n, P6524904932976420796.a n = A132032 (n + 1)

end A132032

/-! ## A132032.P679777004882803882

`(n+1)*A055642(A291289(n)/2)`
-/

namespace A132032.P679777004882803882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055642 (SequenceMachineLib.roundAway ((A291289 n : ℚ) / 2)).toNat

end

end A132032.P679777004882803882

namespace A132032

/-- `(n+1)*A055642(A291289(n)/2)` -/
def P679777004882803882.Spec : Prop :=
  ∀ n, P679777004882803882.a n = A132032 (n + 1)

end A132032

/-! ## A132032.P7836297060480000900

`(n+1)*A055642(abs(A124745(n+2)))`
-/

namespace A132032.P7836297060480000900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055642 |A124745 (n + 2)|.toNat

end

end A132032.P7836297060480000900

namespace A132032

/-- `(n+1)*A055642(abs(A124745(n+2)))` -/
def P7836297060480000900.Spec : Prop :=
  ∀ n, P7836297060480000900.a n = A132032 (n + 1)

end A132032

/-!
# A132033: Product{0<=k<=floor(log_9(n)), floor(n/9^k)}, n>=1.

The programs for A132033, the canonical program `A132033.P18317761890435956340` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132033 has offset 1).

The definition of A132033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132033.P18317761890435956340

`(n+1)*a(floor((n+1)/9)-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132033

/-- `(n+1)*a(floor((n+1)/9)-1)` -/
def P18317761890435956340.Spec : Prop :=
  ∀ n, (P18317761890435956340.a n : ℤ) = A132033 (n + 1)

theorem P18317761890435956340.correct : P18317761890435956340.Spec := by
  intro n
  simp only [A132033, Nat.add_sub_cancel]

end A132033

/-! ## A132033.P7359265036345872475

`(n+1)*A343639(A051885(n+1))`
-/

namespace A132033.P7359265036345872475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A343639 (A051885 (n + 1)).toNat

end

end A132033.P7359265036345872475

namespace A132033

/-- `(n+1)*A343639(A051885(n+1))` -/
def P7359265036345872475.Spec : Prop :=
  ∀ n, P7359265036345872475.a n = A132033 (n + 1)

end A132033

/-! ## A132033.P10077215101893328431

`(n+1)*A267263(A248765(n+1))`
-/

namespace A132033.P10077215101893328431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A267263 (A248765 (n + 1)).toNat

end

end A132033.P10077215101893328431

namespace A132033

/-- `(n+1)*A267263(A248765(n+1))` -/
def P10077215101893328431.Spec : Prop :=
  ∀ n, P10077215101893328431.a n = A132033 (n + 1)

end A132033

/-! ## A132033.P7602855072004322673

`(n+1)*A100063(A009694(n))`
-/

namespace A132033.P7602855072004322673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A100063 (A009694 n).toNat

end

end A132033.P7602855072004322673

namespace A132033

/-- `(n+1)*A100063(A009694(n))` -/
def P7602855072004322673.Spec : Prop :=
  ∀ n, P7602855072004322673.a n = A132033 (n + 1)

end A132033

/-! ## A132033.P3105006628503889974

`(n+1)*A214081(A214081(A214078(n)))`
-/

namespace A132033.P3105006628503889974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A214081 (A214081 (A214078 n).toNat).toNat

end

end A132033.P3105006628503889974

namespace A132033

/-- `(n+1)*A214081(A214081(A214078(n)))` -/
def P3105006628503889974.Spec : Prop :=
  ∀ n, P3105006628503889974.a n = A132033 (n + 1)

end A132033

/-!
# A132039: E.g.f.: A(x) = Sum_{n>=0} a(n)*x^n/n! = exp( Sum_{n>=0} a(n)*x^(n+1)/(n+1) ) with a(0) = 1.

The programs for A132039, there is no canonical definition to state claims against.
-/

/-! ## A132039.P4179254703910789066

`A161822(A286938(n)^A002965(n))`
-/

namespace A132039.P4179254703910789066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161822 (SequenceMachineLib.roundAway ((A286938 n : ℚ) ^ (A002965 n : ℤ))).toNat

end

end A132039.P4179254703910789066

/-! ## A132039.P4965583515630966883

`A161822(A286938(n)^A004525(n))`
-/

namespace A132039.P4965583515630966883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161822 (SequenceMachineLib.roundAway ((A286938 n : ℚ) ^ (A004525 n : ℤ))).toNat

end

end A132039.P4965583515630966883

/-!
# A132042: Number of times record values occur in A132015.

The programs for A132042, there is no canonical definition to state claims against.
-/

/-! ## A132042.P9726761094345179614

`Δ[A132017(n+1)]`
-/

namespace A132042.P9726761094345179614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132042.P9726761094345179614

/-! ## A132042.P4269069598009506406

`Δ[record[A132017(A291769(n))]]`
-/

namespace A132042.P4269069598009506406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132017 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132042.P4269069598009506406

/-! ## A132042.P9750699959649609193

`abs(Δ[A132017(A052938(2*n))])`
-/

namespace A132042.P9750699959649609193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132017 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A132042.P9750699959649609193

/-! ## A132042.P1591694192121659751

`A132017(n+2)-A132017(n+1)`
-/

namespace A132042.P1591694192121659751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132017 (n + 2) - A132017 (n + 1)

end

end A132042.P1591694192121659751

/-! ## A132042.P18335953615148421454

`A132016(Δ[A132017(4/2-(1-n))])`
-/

namespace A132042.P18335953615148421454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132017 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 - (1 - (n : ℤ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (f1 (n + 1) - f1 n).toNat

end

end A132042.P18335953615148421454

/-! ## A132042.P2990511845670161664

`Δ[A132017(A052938(2*n))]%A001539(n)`
-/

namespace A132042.P2990511845670161664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132017 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A001539 n)

end

end A132042.P2990511845670161664

/-! ## A132042.P9194760057227978447

`Δ[A132017(A052938(2*n))%A017137(n)]`
-/

namespace A132042.P9194760057227978447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132017 (A052938 (2 * n)).toNat) (A017137 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132042.P9194760057227978447

/-! ## A132042.P3485526510108020426

`A033999(n)²*Δ[A132017(A052938(2*n))]`
-/

namespace A132042.P3485526510108020426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132017 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A132042.P3485526510108020426

/-!
# A132043: Number of bitransversal (transversal and dual transversal) matroids on n unlabeled elements.

The programs for A132043, there is no canonical definition to state claims against.
-/

/-! ## A132043.P400681687034505063

`∑[A063655(∏[A026477(n+1)])]-n`
-/

namespace A132043.P400681687034505063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A132043.P400681687034505063

/-! ## A132043.P16965942377830173009

`A176480(A106336(n))+A095263(n+1)`
-/

namespace A132043.P16965942377830173009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176480 (A106336 n).toNat + A095263 (n + 1)

end

end A132043.P16965942377830173009

/-! ## A132043.P16474001438953282035

`A318229(n+2)+A162232(A000040(n+4))`
-/

namespace A132043.P16474001438953282035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318229 (n + 2) + A162232 (A000040 (n + 4)).toNat

end

end A132043.P16474001438953282035

/-!
# A132044: Triangle T(n,k) = binomial(n, k) - 1 with T(n,0) = T(n,n) = 1, read by rows.

The programs for A132044, the canonical program `A132044.P15988424649038964214` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132044 has offset 0).

The definition of A132044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132044.P5965589187642246366

`(A132729(n)+1)/2`
-/

namespace A132044.P5965589187642246366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132729 n + 1 : ℚ) / 2

end

end A132044.P5965589187642246366

namespace A132044

/-- `(A132729(n)+1)/2` -/
def P5965589187642246366.Spec : Prop :=
  ∀ n, P5965589187642246366.a n = (A132044 n : ℚ)

end A132044

/-! ## A132044.P15988424649038964214

`floor(sqrt(A007318(n)²+4))-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A132044

/-- `floor(sqrt(A007318(n)²+4))-1` -/
def P15988424649038964214.Spec : Prop :=
  ∀ n, P15988424649038964214.a n = A132044 n

theorem P15988424649038964214.correct : P15988424649038964214.Spec := by
  intro n
  simp only [A132044]

end A132044

/-! ## A132044.P16353066164416551294

`A103451(n)+A014473(n)`
-/

namespace A132044.P16353066164416551294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + A014473 n

end

end A132044.P16353066164416551294

namespace A132044

/-- `A103451(n)+A014473(n)` -/
def P16353066164416551294.Spec : Prop :=
  ∀ n, P16353066164416551294.a n = A132044 n

end A132044

/-! ## A132044.P8988397045983282861

`A132731(n)-A014473(n)`
-/

namespace A132044.P8988397045983282861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132731 n - A014473 n

end

end A132044.P8988397045983282861

namespace A132044

/-- `A132731(n)-A014473(n)` -/
def P8988397045983282861.Spec : Prop :=
  ∀ n, P8988397045983282861.a n = A132044 n

end A132044

/-! ## A132044.P9141926856442414432

`A132749(n)-A023532(n)`
-/

namespace A132044.P9141926856442414432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n - A023532 n

end

end A132044.P9141926856442414432

namespace A132044

/-- `A132749(n)-A023532(n)` -/
def P9141926856442414432.Spec : Prop :=
  ∀ n, P9141926856442414432.a n = A132044 n

end A132044

/-! ## A132044.P5832699346325932632

`A028326(n)-A132735(n)`
-/

namespace A132044.P5832699346325932632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A132735 n

end

end A132044.P5832699346325932632

namespace A132044

/-- `A028326(n)-A132735(n)` -/
def P5832699346325932632.Spec : Prop :=
  ∀ n, P5832699346325932632.a n = A132044 n

end A132044

/-! ## A132044.P3205201704805239140

`A132731(n)/A154325(n)`
-/

namespace A132044.P3205201704805239140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132731 n : ℚ) / (A154325 n : ℚ)

end

end A132044.P3205201704805239140

namespace A132044

/-- `A132731(n)/A154325(n)` -/
def P3205201704805239140.Spec : Prop :=
  ∀ n, P3205201704805239140.a n = (A132044 n : ℚ)

end A132044

/-! ## A132044.P15113607302608599971

`A132048(n)%A028326(n)`
-/

namespace A132044.P15113607302608599971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132048 n) (A028326 n)

end

end A132044.P15113607302608599971

namespace A132044

/-- `A132048(n)%A028326(n)` -/
def P15113607302608599971.Spec : Prop :=
  ∀ n, P15113607302608599971.a n = A132044 n

end A132044

/-! ## A132044.P4713046922986462353

`gcd(A014473(n), A103452(n))`
-/

namespace A132044.P4713046922986462353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n) (A103452 n)

end

end A132044.P4713046922986462353

namespace A132044

/-- `gcd(A014473(n), A103452(n))` -/
def P4713046922986462353.Spec : Prop :=
  ∀ n, (P4713046922986462353.a n : ℤ) = A132044 n

end A132044

/-! ## A132044.P11690956506185948384

`gcd(A128715(n), A132731(n))`
-/

namespace A132044.P11690956506185948384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128715 n) (A132731 n)

end

end A132044.P11690956506185948384

namespace A132044

/-- `gcd(A128715(n), A132731(n))` -/
def P11690956506185948384.Spec : Prop :=
  ∀ n, (P11690956506185948384.a n : ℤ) = A132044 n

end A132044

/-! ## A132044.P11953984253819922720

`A007318(n)+A103451(n)-1`
-/

namespace A132044.P11953984253819922720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A103451 n - 1)

end

end A132044.P11953984253819922720

namespace A132044

/-- `A007318(n)+A103451(n)-1` -/
def P11953984253819922720.Spec : Prop :=
  ∀ n, P11953984253819922720.a n = A132044 n

end A132044

/-! ## A132044.P3548662292271203437

`A132731(n)+1-A007318(n)`
-/

namespace A132044.P3548662292271203437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132731 n + (1 - A007318 n)

end

end A132044.P3548662292271203437

namespace A132044

/-- `A132731(n)+1-A007318(n)` -/
def P3548662292271203437.Spec : Prop :=
  ∀ n, P3548662292271203437.a n = A132044 n

end A132044

/-! ## A132044.P213061385055255799

`A007318(n)+1-A154325(n)`
-/

namespace A132044.P213061385055255799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (1 - A154325 n)

end

end A132044.P213061385055255799

namespace A132044

/-- `A007318(n)+1-A154325(n)` -/
def P213061385055255799.Spec : Prop :=
  ∀ n, P213061385055255799.a n = A132044 n

end A132044

/-! ## A132044.P6208544172609473803

`A132823(n)+1-A103451(n)`
-/

namespace A132044.P6208544172609473803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132823 n + (1 - A103451 n)

end

end A132044.P6208544172609473803

namespace A132044

/-- `A132823(n)+1-A103451(n)` -/
def P6208544172609473803.Spec : Prop :=
  ∀ n, P6208544172609473803.a n = A132044 n

end A132044

/-! ## A132044.P2846173300546380211

`A109128(n)+1-A132735(n)`
-/

namespace A132044.P2846173300546380211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (1 - A132735 n)

end

end A132044.P2846173300546380211

namespace A132044

/-- `A109128(n)+1-A132735(n)` -/
def P2846173300546380211.Spec : Prop :=
  ∀ n, P2846173300546380211.a n = A132044 n

end A132044

/-! ## A132044.P16082959756369826205

`A132749(n)-A123110(n+1)`
-/

namespace A132044.P16082959756369826205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n - A123110 (n + 1)

end

end A132044.P16082959756369826205

namespace A132044

/-- `A132749(n)-A123110(n+1)` -/
def P16082959756369826205.Spec : Prop :=
  ∀ n, P16082959756369826205.a n = A132044 n

end A132044

/-! ## A132044.P15218134015904467342

`A128715(n)-A144217(n+1)`
-/

namespace A132044.P15218134015904467342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128715 n - A144217 (n + 1)

end

end A132044.P15218134015904467342

namespace A132044

/-- `A128715(n)-A144217(n+1)` -/
def P15218134015904467342.Spec : Prop :=
  ∀ n, P15218134015904467342.a n = A132044 n

end A132044

/-! ## A132044.P2958223314136494561

`A132046(n)+1-A173740(n)`
-/

namespace A132044.P2958223314136494561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 n + (1 - A173740 n)

end

end A132044.P2958223314136494561

namespace A132044

/-- `A132046(n)+1-A173740(n)` -/
def P2958223314136494561.Spec : Prop :=
  ∀ n, P2958223314136494561.a n = A132044 n

end A132044

/-! ## A132044.P7940001255455601075

`A014473(n)+2-A154325(n)`
-/

namespace A132044.P7940001255455601075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (2 - A154325 n)

end

end A132044.P7940001255455601075

namespace A132044

/-- `A014473(n)+2-A154325(n)` -/
def P7940001255455601075.Spec : Prop :=
  ∀ n, P7940001255455601075.a n = A132044 n

end A132044

/-! ## A132044.P14515054790426288741

`A128715(n)/A131821(n+1)`
-/

namespace A132044.P14515054790426288741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128715 n : ℚ) / (A131821 (n + 1) : ℚ)

end

end A132044.P14515054790426288741

namespace A132044

/-- `A128715(n)/A131821(n+1)` -/
def P14515054790426288741.Spec : Prop :=
  ∀ n, P14515054790426288741.a n = (A132044 n : ℚ)

end A132044

/-!
# A132045: Row sums of triangle A132044.

The programs for A132045, the canonical program `A132045.P7577447969113283511` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132045 has offset 0).

The definition of A132045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132045.P7577447969113283511

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132045

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P7577447969113283511.Spec : Prop :=
  ∀ n, P7577447969113283511.a n = A132045 n

theorem P7577447969113283511.correct : P7577447969113283511.Spec := by
  intro n
  simp only [A132045]

end A132045

/-! ## A132045.P15854615626939432603

`or(1, 2^n)-n`
-/

namespace A132045.P15854615626939432603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 ^ n) : ℤ) - (n : ℤ)

end

end A132045.P15854615626939432603

namespace A132045

/-- `or(1, 2^n)-n` -/
def P15854615626939432603.Spec : Prop :=
  ∀ n, P15854615626939432603.a n = A132045 n

end A132045

/-! ## A132045.P17001173860320186447

`and(-2, 2^n)+1-n`
-/

namespace A132045.P17001173860320186447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (2 ^ n : ℤ) + (1 - (n : ℤ))

end

end A132045.P17001173860320186447

namespace A132045

/-- `and(-2, 2^n)+1-n` -/
def P17001173860320186447.Spec : Prop :=
  ∀ n, P17001173860320186447.a n = A132045 n

end A132045

/-! ## A132045.P6520326877206966300

`1-(n-and(-2, 2^n))`
-/

namespace A132045.P6520326877206966300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - Int.land (-2) (2 ^ n : ℤ))

end

end A132045.P6520326877206966300

namespace A132045

/-- `1-(n-and(-2, 2^n))` -/
def P6520326877206966300.Spec : Prop :=
  ∀ n, P6520326877206966300.a n = A132045 n

end A132045

/-! ## A132045.P15666065222504631179

`∑[ogf((1-2x+2x^3)/(1-3x+2x^2))]`
-/

namespace A132045.P15666065222504631179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, 2] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132045.P15666065222504631179

namespace A132045

/-- `∑[ogf((1-2x+2x^3)/(1-3x+2x^2))]` -/
def P15666065222504631179.Spec : Prop :=
  ∀ n, P15666065222504631179.a n = A132045 n

end A132045

/-! ## A132045.P11769869969291358499

`ogf((1-2x+2x^3)/(1-4x+5x^2-2x^3))`
-/

namespace A132045.P11769869969291358499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, 2] [1, -4, 5, -2] n

end

end A132045.P11769869969291358499

namespace A132045

/-- `ogf((1-2x+2x^3)/(1-4x+5x^2-2x^3))` -/
def P11769869969291358499.Spec : Prop :=
  ∀ n, P11769869969291358499.a n = A132045 n

end A132045

/-! ## A132045.P12335082933385513225

`2^n-(n-1)%(n+1)`
-/

namespace A132045.P12335082933385513225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)

end

end A132045.P12335082933385513225

namespace A132045

/-- `2^n-(n-1)%(n+1)` -/
def P12335082933385513225.Spec : Prop :=
  ∀ n, P12335082933385513225.a n = A132045 n

end A132045

/-! ## A132045.P9576185949846952830

`2^n-floor(n²/(n+1))`
-/

namespace A132045.P9576185949846952830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋

end

end A132045.P9576185949846952830

namespace A132045

/-- `2^n-floor(n²/(n+1))` -/
def P9576185949846952830.Spec : Prop :=
  ∀ n, P9576185949846952830.a n = A132045 n

end A132045

/-! ## A132045.P16510420478916280018

`∑[2*a(n-1)+1]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A132045.P16510420478916280018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132045.P16510420478916280018

namespace A132045

/-- `∑[2*a(n-1)+1]` -/
def P16510420478916280018.Spec : Prop :=
  ∀ n, (P16510420478916280018.a n : ℤ) = A132045 n

end A132045

/-! ## A132045.P11376064397512695641

`∑[lcm(2, a(n-1))+1]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A132045.P11376064397512695641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  Nat.lcm 2 (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132045.P11376064397512695641

namespace A132045

/-- `∑[lcm(2, a(n-1))+1]` -/
def P11376064397512695641.Spec : Prop :=
  ∀ n, (P11376064397512695641.a n : ℤ) = A132045 n

end A132045

/-! ## A132045.P15483553560743016279

`∑[or(3, 2*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A132045.P15483553560743016279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  Nat.lor 3 (2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132045.P15483553560743016279

namespace A132045

/-- `∑[or(3, 2*a(n-1))]` -/
def P15483553560743016279.Spec : Prop :=
  ∀ n, (P15483553560743016279.a n : ℤ) = A132045 n

end A132045

/-! ## A132045.P6143146722600133895

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A132045.P6143146722600133895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 2] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132045.P6143146722600133895

namespace A132045

/-- `∑[∑[2*a(n-1)]]` -/
def P6143146722600133895.Spec : Prop :=
  ∀ n, (P6143146722600133895.a n : ℤ) = A132045 n

end A132045

/-! ## A132045.P3393878282258405229

`floor(2*a(n-1)-3+n)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A132045.P3393878282258405229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - 3 + (n : ℤ)

end

end A132045.P3393878282258405229

namespace A132045

/-- `floor(2*a(n-1)-3+n)` -/
def P3393878282258405229.Spec : Prop :=
  ∀ n, P3393878282258405229.a n = A132045 n

end A132045

/-! ## A132045.P13513620654572121918

`floor(2*a(n-1)-(3-n))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A132045.P13513620654572121918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - (3 - (n : ℤ))

end

end A132045.P13513620654572121918

namespace A132045

/-- `floor(2*a(n-1)-(3-n))` -/
def P13513620654572121918.Spec : Prop :=
  ∀ n, P13513620654572121918.a n = A132045 n

end A132045

/-! ## A132045.P16881775010794371588

`2*(a(n-1)+(n-3)/2)` with `a(0)=1, a(1)=2`
-/

namespace A132045.P16881775010794371588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) + ((n : ℤ) - 3 : ℚ) / 2)

end

end A132045.P16881775010794371588

namespace A132045

/-- `2*(a(n-1)+(n-3)/2)` -/
def P16881775010794371588.Spec : Prop :=
  ∀ n, P16881775010794371588.a n = (A132045 n : ℚ)

end A132045

/-! ## A132045.P3153724866411625051

`∑[a(n-1)+a(n-1)+1]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A132045.P3153724866411625051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132045.P3153724866411625051

namespace A132045

/-- `∑[a(n-1)+a(n-1)+1]` -/
def P3153724866411625051.Spec : Prop :=
  ∀ n, (P3153724866411625051.a n : ℤ) = A132045 n

end A132045

/-! ## A132045.P9111295792636211974

`2*((n-1)/2-(1-a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A132045.P9111295792636211974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (((n : ℤ) - 1 : ℚ) / 2 - (1 - a (n - 1)))

end

end A132045.P9111295792636211974

namespace A132045

/-- `2*((n-1)/2-(1-a(n-1)))` -/
def P9111295792636211974.Spec : Prop :=
  ∀ n, P9111295792636211974.a n = (A132045 n : ℚ)

end A132045

/-! ## A132045.P11191352042052152667

`floor(a(n-1)-3+a(n-1)+n)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A132045.P11191352042052152667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - 3 + (a (n - 1) + (n : ℤ))

end

end A132045.P11191352042052152667

namespace A132045

/-- `floor(a(n-1)-3+a(n-1)+n)` -/
def P11191352042052152667.Spec : Prop :=
  ∀ n, P11191352042052152667.a n = A132045 n

end A132045

/-! ## A132045.P17262287806548696319

`floor(a(n-1)-(3-a(n-1)-n))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A132045.P17262287806548696319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (3 - a (n - 1) - (n : ℤ))

end

end A132045.P17262287806548696319

namespace A132045

/-- `floor(a(n-1)-(3-a(n-1)-n))` -/
def P17262287806548696319.Spec : Prop :=
  ∀ n, P17262287806548696319.a n = A132045 n

end A132045

/-! ## A132045.P2405495787841114049

`∑[A255047(abs(1-n))]`
-/

namespace A132045.P2405495787841114049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132045.P2405495787841114049

namespace A132045

/-- `∑[A255047(abs(1-n))]` -/
def P2405495787841114049.Spec : Prop :=
  ∀ n, P2405495787841114049.a n = A132045 n

end A132045

/-!
# A132046: Triangle read by rows: T(n,0) = T(n,n) = 1, and T(n,k) = 2*binomial(n,k) for 1 <= k <= n - 1.

The programs for A132046, the canonical program `A132046.P838827158964499590` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132046 has offset 0).

The definition of A132046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132046.P10395923079882749189

`ceil(sqrt(A141596(n)))`
-/

namespace A132046.P10395923079882749189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A141596 n : ℝ)⌉

end

end A132046.P10395923079882749189

namespace A132046

/-- `ceil(sqrt(A141596(n)))` -/
def P10395923079882749189.Spec : Prop :=
  ∀ n, P10395923079882749189.a n = A132046 n

end A132046

/-! ## A132046.P14557575078378180177

`xor(1, A132731(n))+1`
-/

namespace A132046.P14557575078378180177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A132731 n) + 1

end

end A132046.P14557575078378180177

namespace A132046

/-- `xor(1, A132731(n))+1` -/
def P14557575078378180177.Spec : Prop :=
  ∀ n, P14557575078378180177.a n = A132046 n

end A132046

/-! ## A132046.P18187370668830386421

`round(sqrt(A028326(n)²-2))`
-/

namespace A132046.P18187370668830386421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A028326 n ^ 2 - 2 : ℝ))

end

end A132046.P18187370668830386421

namespace A132046

/-- `round(sqrt(A028326(n)²-2))` -/
def P18187370668830386421.Spec : Prop :=
  ∀ n, P18187370668830386421.a n = A132046 n

end A132046

/-! ## A132046.P12721110215625124663

`A124927(n*char[comp[∑[n-1]]])`
-/

namespace A132046.P12721110215625124663
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A132046.P12721110215625124663

namespace A132046

/-- `A124927(n*char[comp[∑[n-1]]])` -/
def P12721110215625124663.Spec : Prop :=
  ∀ n, P12721110215625124663.a n = A132046 n

end A132046

/-! ## A132046.P4353396261624266538

`A132735(n)+A014473(n)`
-/

namespace A132046.P4353396261624266538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132735 n + A014473 n

end

end A132046.P4353396261624266538

namespace A132046

/-- `A132735(n)+A014473(n)` -/
def P4353396261624266538.Spec : Prop :=
  ∀ n, P4353396261624266538.a n = A132046 n

end A132046

/-! ## A132046.P838827158964499590

`A028326(n)-A103451(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A132046

/-- `A028326(n)-A103451(n)` -/
def P838827158964499590.Spec : Prop :=
  ∀ n, P838827158964499590.a n = A132046 n

theorem P838827158964499590.correct : P838827158964499590.Spec := by
  intro n
  simp only [A132046]

end A132046

/-! ## A132046.P2611969648908932581

`A132048(n)-A014473(n)`
-/

namespace A132046.P2611969648908932581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132048 n - A014473 n

end

end A132046.P2611969648908932581

namespace A132046

/-- `A132048(n)-A014473(n)` -/
def P2611969648908932581.Spec : Prop :=
  ∀ n, P2611969648908932581.a n = A132046 n

end A132046

/-! ## A132046.P10987811768320584382

`A129994(n-A073424(n))`
-/

namespace A132046.P10987811768320584382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129994 ((n : ℤ) - A073424 n).toNat

end

end A132046.P10987811768320584382

namespace A132046

/-- `A129994(n-A073424(n))` -/
def P10987811768320584382.Spec : Prop :=
  ∀ n, P10987811768320584382.a n = A132046 n

end A132046

/-! ## A132046.P11825050190598740705

`A153861(n)-A259525(n)`
-/

namespace A132046.P11825050190598740705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 n - A259525 n

end

end A132046.P11825050190598740705

namespace A132046

/-- `A153861(n)-A259525(n)` -/
def P11825050190598740705.Spec : Prop :=
  ∀ n, P11825050190598740705.a n = A132046 n

end A132046

/-! ## A132046.P15395934157498657658

`A007318(n)*A154325(n)`
-/

namespace A132046.P15395934157498657658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A154325 n

end

end A132046.P15395934157498657658

namespace A132046

/-- `A007318(n)*A154325(n)` -/
def P15395934157498657658.Spec : Prop :=
  ∀ n, P15395934157498657658.a n = A132046 n

end A132046

/-! ## A132046.P8455785748582100930

`gcd(A028326(n), A103452(n))`
-/

namespace A132046.P8455785748582100930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028326 n) (A103452 n)

end

end A132046.P8455785748582100930

namespace A132046

/-- `gcd(A028326(n), A103452(n))` -/
def P8455785748582100930.Spec : Prop :=
  ∀ n, (P8455785748582100930.a n : ℤ) = A132046 n

end A132046

/-! ## A132046.P3976646614297471237

`gcd(A013620(n), A124927(n))`
-/

namespace A132046.P3976646614297471237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013620 n) (A124927 n)

end

end A132046.P3976646614297471237

namespace A132046

/-- `gcd(A013620(n), A124927(n))` -/
def P3976646614297471237.Spec : Prop :=
  ∀ n, (P3976646614297471237.a n : ℤ) = A132046 n

end A132046

/-! ## A132046.P12733954300516809676

`gcd(A010816(n), A129994(n))`
-/

namespace A132046.P12733954300516809676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A129994 n)

end

end A132046.P12733954300516809676

namespace A132046

/-- `gcd(A010816(n), A129994(n))` -/
def P12733954300516809676.Spec : Prop :=
  ∀ n, (P12733954300516809676.a n : ℤ) = A132046 n

end A132046

/-! ## A132046.P12306971459446751576

`gcd(A013609(n), A131114(n))`
-/

namespace A132046.P12306971459446751576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013609 n) (A131114 n)

end

end A132046.P12306971459446751576

namespace A132046

/-- `gcd(A013609(n), A131114(n))` -/
def P12306971459446751576.Spec : Prop :=
  ∀ n, (P12306971459446751576.a n : ℤ) = A132046 n

end A132046

/-! ## A132046.P6211661670898186621

`A124927(n)/A136521(n)!`
-/

namespace A132046.P6211661670898186621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124927 n : ℚ) / (Nat.factorial (A136521 n).toNat : ℚ)

end

end A132046.P6211661670898186621

namespace A132046

/-- `A124927(n)/A136521(n)!` -/
def P6211661670898186621.Spec : Prop :=
  ∀ n, P6211661670898186621.a n = (A132046 n : ℚ)

end A132046

/-! ## A132046.P2249581879899621054

`A206735(n)+A198321(n+1)`
-/

namespace A132046.P2249581879899621054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n + A198321 (n + 1)

end

end A132046.P2249581879899621054

namespace A132046

/-- `A206735(n)+A198321(n+1)` -/
def P2249581879899621054.Spec : Prop :=
  ∀ n, P2249581879899621054.a n = A132046 n

end A132046

/-! ## A132046.P13237653609699032267

`A132048(n)+1-A007318(n)`
-/

namespace A132046.P13237653609699032267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132048 n + (1 - A007318 n)

end

end A132046.P13237653609699032267

namespace A132046

/-- `A132048(n)+1-A007318(n)` -/
def P13237653609699032267.Spec : Prop :=
  ∀ n, P13237653609699032267.a n = A132046 n

end A132046

/-! ## A132046.P12507615144097805536

`A007318(n)+A132735(n)-1`
-/

namespace A132046.P12507615144097805536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A132735 n - 1)

end

end A132046.P12507615144097805536

namespace A132046

/-- `A007318(n)+A132735(n)-1` -/
def P12507615144097805536.Spec : Prop :=
  ∀ n, P12507615144097805536.a n = A132046 n

end A132046

/-! ## A132046.P14028288632513466386

`A103451(n)+A132737(n)-1`
-/

namespace A132046.P14028288632513466386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + (A132737 n - 1)

end

end A132046.P14028288632513466386

namespace A132046

/-- `A103451(n)+A132737(n)-1` -/
def P14028288632513466386.Spec : Prop :=
  ∀ n, P14028288632513466386.a n = A132046 n

end A132046

/-! ## A132046.P2983234496403261362

`A132044(n)+A173740(n)-1`
-/

namespace A132046.P2983234496403261362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n + (A173740 n - 1)

end

end A132046.P2983234496403261362

namespace A132046

/-- `A132044(n)+A173740(n)-1` -/
def P2983234496403261362.Spec : Prop :=
  ∀ n, P2983234496403261362.a n = A132046 n

end A132046

/-!
# A132047: 3*A007318 - 2*A103451 as infinite lower triangular matrices.

The programs for A132047, the canonical program `A132047.P15438420452738550569` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132047 has offset 0).

The definition of A132047 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A103451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A132047.P15438420452738550569

`3*A007318(n)-2*A103451(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A132047

/-- `3*A007318(n)-2*A103451(n)` -/
def P15438420452738550569.Spec : Prop :=
  ∀ n, P15438420452738550569.a n = A132047 n

theorem P15438420452738550569.correct : P15438420452738550569.Spec := by
  intro n
  simp only [A132047]

end A132047

/-! ## A132047.P18387413327034802762

`A132737(n)+A014473(n)`
-/

namespace A132047.P18387413327034802762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132737 n + A014473 n

end

end A132047.P18387413327034802762

namespace A132047

/-- `A132737(n)+A014473(n)` -/
def P18387413327034802762.Spec : Prop :=
  ∀ n, P18387413327034802762.a n = A132047 n

end A132047

/-! ## A132047.P5710767527594751757

`gcd(A013610(n), A131111(n))`
-/

namespace A132047.P5710767527594751757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013610 n) (A131111 n)

end

end A132047.P5710767527594751757

namespace A132047

/-- `gcd(A013610(n), A131111(n))` -/
def P5710767527594751757.Spec : Prop :=
  ∀ n, (P5710767527594751757.a n : ℤ) = A132047 n

end A132047

/-! ## A132047.P1845220137477637966

`gcd(A103452(n), A134059(n))`
-/

namespace A132047.P1845220137477637966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103452 n) (A134059 n)

end

end A132047.P1845220137477637966

namespace A132047

/-- `gcd(A103452(n), A134059(n))` -/
def P1845220137477637966.Spec : Prop :=
  ∀ n, (P1845220137477637966.a n : ℤ) = A132047 n

end A132047

/-! ## A132047.P7671364486668659901

`and(A124928(n), A131111(n))`
-/

namespace A132047.P7671364486668659901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124928 n) (A131111 n)

end

end A132047.P7671364486668659901

namespace A132047

/-- `and(A124928(n), A131111(n))` -/
def P7671364486668659901.Spec : Prop :=
  ∀ n, P7671364486668659901.a n = A132047 n

end A132047

/-! ## A132047.P16423381951108521116

`A124928(A010054(n+1)+n)`
-/

namespace A132047.P16423381951108521116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124928 (A010054 (n + 1) + (n : ℤ)).toNat

end

end A132047.P16423381951108521116

namespace A132047

/-- `A124928(A010054(n+1)+n)` -/
def P16423381951108521116.Spec : Prop :=
  ∀ n, P16423381951108521116.a n = A132047 n

end A132047

/-! ## A132047.P5860062944918442526

`A124928(A073424(n+1)+n)`
-/

namespace A132047.P5860062944918442526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124928 (A073424 (n + 1) + (n : ℤ)).toNat

end

end A132047.P5860062944918442526

namespace A132047

/-- `A124928(A073424(n+1)+n)` -/
def P5860062944918442526.Spec : Prop :=
  ∀ n, P5860062944918442526.a n = A132047 n

end A132047

/-! ## A132047.P2057672595239594035

`A007318(n)+A132737(n)-1`
-/

namespace A132047.P2057672595239594035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A132737 n - 1)

end

end A132047.P2057672595239594035

namespace A132047

/-- `A007318(n)+A132737(n)-1` -/
def P2057672595239594035.Spec : Prop :=
  ∀ n, P2057672595239594035.a n = A132047 n

end A132047

/-! ## A132047.P12572642365324060086

`A132048(n)+1-A103451(n)`
-/

namespace A132047.P12572642365324060086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132048 n + (1 - A103451 n)

end

end A132047.P12572642365324060086

namespace A132047

/-- `A132048(n)+1-A103451(n)` -/
def P12572642365324060086.Spec : Prop :=
  ∀ n, P12572642365324060086.a n = A132047 n

end A132047

/-! ## A132047.P9404303567108266924

`A132046(n)+A132735(n)-1`
-/

namespace A132047.P9404303567108266924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 n + (A132735 n - 1)

end

end A132047.P9404303567108266924

namespace A132047

/-- `A132046(n)+A132735(n)-1` -/
def P9404303567108266924.Spec : Prop :=
  ∀ n, P9404303567108266924.a n = A132047 n

end A132047

/-! ## A132047.P1508215101883064038

`A028326(n)+A173740(n)-2`
-/

namespace A132047.P1508215101883064038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + (A173740 n - 2)

end

end A132047.P1508215101883064038

namespace A132047

/-- `A028326(n)+A173740(n)-2` -/
def P1508215101883064038.Spec : Prop :=
  ∀ n, P1508215101883064038.a n = A132047 n

end A132047

/-! ## A132047.P15056959683155636726

`A124928(n*A123110(n+1))`
-/

namespace A132047.P15056959683155636726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124928 ((n : ℤ) * A123110 (n + 1)).toNat

end

end A132047.P15056959683155636726

namespace A132047

/-- `A124928(n*A123110(n+1))` -/
def P15056959683155636726.Spec : Prop :=
  ∀ n, P15056959683155636726.a n = A132047 n

end A132047

/-! ## A132047.P14446598343369680021

`A173740(n)+2*A014473(n)`
-/

namespace A132047.P14446598343369680021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173740 n + 2 * A014473 n

end

end A132047.P14446598343369680021

namespace A132047

/-- `A173740(n)+2*A014473(n)` -/
def P14446598343369680021.Spec : Prop :=
  ∀ n, P14446598343369680021.a n = A132047 n

end A132047

/-! ## A132047.P8122875077287985631

`2*A132046(n)-A007318(n)`
-/

namespace A132047.P8122875077287985631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132046 n - A007318 n

end

end A132047.P8122875077287985631

namespace A132047

/-- `2*A132046(n)-A007318(n)` -/
def P8122875077287985631.Spec : Prop :=
  ∀ n, P8122875077287985631.a n = A132047 n

end A132047

/-! ## A132047.P113306448207222425

`2*A132737(n)-A173740(n)`
-/

namespace A132047.P113306448207222425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132737 n - A173740 n

end

end A132047.P113306448207222425

namespace A132047

/-- `2*A132737(n)-A173740(n)` -/
def P113306448207222425.Spec : Prop :=
  ∀ n, P113306448207222425.a n = A132047 n

end A132047

/-! ## A132047.P14903337083114451129

`A124928(and(n, A154990(n+1)))`
-/

namespace A132047.P14903337083114451129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124928 (Int.land (n : ℤ) (A154990 (n + 1))).toNat

end

end A132047.P14903337083114451129

namespace A132047

/-- `A124928(and(n, A154990(n+1)))` -/
def P14903337083114451129.Spec : Prop :=
  ∀ n, P14903337083114451129.a n = A132047 n

end A132047

/-! ## A132047.P9206584096825717869

`A124928(n+1-A123110(n+1))`
-/

namespace A132047.P9206584096825717869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124928 ((n + 1 : ℤ) - A123110 (n + 1)).toNat

end

end A132047.P9206584096825717869

namespace A132047

/-- `A124928(n+1-A123110(n+1))` -/
def P9206584096825717869.Spec : Prop :=
  ∀ n, P9206584096825717869.a n = A132047 n

end A132047

/-! ## A132047.P13687820268503853925

`A132044(n)+A132737(n)-A103451(n)`
-/

namespace A132047.P13687820268503853925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n + (A132737 n - A103451 n)

end

end A132047.P13687820268503853925

namespace A132047

/-- `A132044(n)+A132737(n)-A103451(n)` -/
def P13687820268503853925.Spec : Prop :=
  ∀ n, P13687820268503853925.a n = A132047 n

end A132047

/-! ## A132047.P9990656121037318114

`A132731(n)+A132737(n)-A132044(n)`
-/

namespace A132047.P9990656121037318114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132731 n + (A132737 n - A132044 n)

end

end A132047.P9990656121037318114

namespace A132047

/-- `A132731(n)+A132737(n)-A132044(n)` -/
def P9990656121037318114.Spec : Prop :=
  ∀ n, P9990656121037318114.a n = A132047 n

end A132047

/-! ## A132047.P7081270024789842755

`A109128(n)-(A007318(n)-A132737(n))`
-/

namespace A132047.P7081270024789842755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n - (A007318 n - A132737 n)

end

end A132047.P7081270024789842755

namespace A132047

/-- `A109128(n)-(A007318(n)-A132737(n))` -/
def P7081270024789842755.Spec : Prop :=
  ∀ n, P7081270024789842755.a n = A132047 n

end A132047

/-!
# A132048: 3*A007318 - A103451 - A000012.

The programs for A132048, the canonical program `A132048.P7025370900978820074` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132048 has offset 0).

The definition of A132048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132048.P13681826532952989350

`floor(3/tan(1/A007318(n)))`
-/

namespace A132048.P13681826532952989350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / Real.tan (1 / (A007318 n : ℚ) : ℝ)⌋

end

end A132048.P13681826532952989350

namespace A132048

/-- `floor(3/tan(1/A007318(n)))` -/
def P13681826532952989350.Spec : Prop :=
  ∀ n, P13681826532952989350.a n = A132048 n

end A132048

/-! ## A132048.P7025370900978820074

`A132046(n)+A014473(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A132048

/-- `A132046(n)+A014473(n)` -/
def P7025370900978820074.Spec : Prop :=
  ∀ n, P7025370900978820074.a n = A132048 n

theorem P7025370900978820074.correct : P7025370900978820074.Spec := by
  intro n
  simp only [A132048]

end A132048

/-! ## A132048.P15183538963480486259

`A007318(n)+A132046(n)-1`
-/

namespace A132048.P15183538963480486259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A132046 n - 1)

end

end A132048.P15183538963480486259

namespace A132048

/-- `A007318(n)+A132046(n)-1` -/
def P15183538963480486259.Spec : Prop :=
  ∀ n, P15183538963480486259.a n = A132048 n

end A132048

/-! ## A132048.P7679555084233811385

`A103451(n)+A132047(n)-1`
-/

namespace A132048.P7679555084233811385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + (A132047 n - 1)

end

end A132048.P7679555084233811385

namespace A132048

/-- `A103451(n)+A132047(n)-1` -/
def P7679555084233811385.Spec : Prop :=
  ∀ n, P7679555084233811385.a n = A132048 n

end A132048

/-! ## A132048.P12348442209386795407

`A109128(n)+A132735(n)-1`
-/

namespace A132048.P12348442209386795407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (A132735 n - 1)

end

end A132048.P12348442209386795407

namespace A132048

/-- `A109128(n)+A132735(n)-1` -/
def P12348442209386795407.Spec : Prop :=
  ∀ n, P12348442209386795407.a n = A132048 n

end A132048

/-! ## A132048.P16027182231579628647

`A132044(n)+A132737(n)-1`
-/

namespace A132048.P16027182231579628647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n + (A132737 n - 1)

end

end A132048.P16027182231579628647

namespace A132048

/-- `A132044(n)+A132737(n)-1` -/
def P16027182231579628647.Spec : Prop :=
  ∀ n, P16027182231579628647.a n = A132048 n

end A132048

/-! ## A132048.P8991622527168642434

`A028326(n)+A132735(n)-2`
-/

namespace A132048.P8991622527168642434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + (A132735 n - 2)

end

end A132048.P8991622527168642434

namespace A132048

/-- `A028326(n)+A132735(n)-2` -/
def P8991622527168642434.Spec : Prop :=
  ∀ n, P8991622527168642434.a n = A132048 n

end A132048

/-! ## A132048.P16336538543088286746

`A132735(n)+2*A014473(n)`
-/

namespace A132048.P16336538543088286746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132735 n + 2 * A014473 n

end

end A132048.P16336538543088286746

namespace A132048

/-- `A132735(n)+2*A014473(n)` -/
def P16336538543088286746.Spec : Prop :=
  ∀ n, P16336538543088286746.a n = A132048 n

end A132048

/-! ## A132048.P2782888519606312934

`2*A109128(n)-A132044(n)`
-/

namespace A132048.P2782888519606312934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109128 n - A132044 n

end

end A132048.P2782888519606312934

namespace A132048

/-- `2*A109128(n)-A132044(n)` -/
def P2782888519606312934.Spec : Prop :=
  ∀ n, P2782888519606312934.a n = A132048 n

end A132048

/-! ## A132048.P9951946683162259678

`2*A132046(n)-A132735(n)`
-/

namespace A132048.P9951946683162259678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132046 n - A132735 n

end

end A132048.P9951946683162259678

namespace A132048

/-- `2*A132046(n)-A132735(n)` -/
def P9951946683162259678.Spec : Prop :=
  ∀ n, P9951946683162259678.a n = A132048 n

end A132048

/-! ## A132048.P8650085252005747208

`gcd(1-A134059(n), A103452(n))`
-/

namespace A132048.P8650085252005747208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A134059 n) (A103452 n)

end

end A132048.P8650085252005747208

namespace A132048

/-- `gcd(1-A134059(n), A103452(n))` -/
def P8650085252005747208.Spec : Prop :=
  ∀ n, (P8650085252005747208.a n : ℤ) = A132048 n

end A132048

/-! ## A132048.P9742539110166495055

`xor(1, A132731(n))+A007318(n)`
-/

namespace A132048.P9742539110166495055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A132731 n) + A007318 n

end

end A132048.P9742539110166495055

namespace A132048

/-- `xor(1, A132731(n))+A007318(n)` -/
def P9742539110166495055.Spec : Prop :=
  ∀ n, P9742539110166495055.a n = A132048 n

end A132048

/-! ## A132048.P9415237076292711112

`A103452(n)²+A132047(n)-1`
-/

namespace A132048.P9415237076292711112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n ^ 2 + (A132047 n - 1)

end

end A132048.P9415237076292711112

namespace A132048

/-- `A103452(n)²+A132047(n)-1` -/
def P9415237076292711112.Spec : Prop :=
  ∀ n, P9415237076292711112.a n = A132048 n

end A132048

/-! ## A132048.P5693151269911205159

`A132731(n)+A132737(n)-A007318(n)`
-/

namespace A132048.P5693151269911205159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132731 n + (A132737 n - A007318 n)

end

end A132048.P5693151269911205159

namespace A132048

/-- `A132731(n)+A132737(n)-A007318(n)` -/
def P5693151269911205159.Spec : Prop :=
  ∀ n, P5693151269911205159.a n = A132048 n

end A132048

/-! ## A132048.P2928218039494961679

`A132731(n)+A132735(n)-A103451(n)`
-/

namespace A132048.P2928218039494961679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132731 n + (A132735 n - A103451 n)

end

end A132048.P2928218039494961679

namespace A132048

/-- `A132731(n)+A132735(n)-A103451(n)` -/
def P2928218039494961679.Spec : Prop :=
  ∀ n, P2928218039494961679.a n = A132048 n

end A132048

/-! ## A132048.P14950592932573132424

`A132737(n)+A132823(n)-A103451(n)`
-/

namespace A132048.P14950592932573132424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132737 n + (A132823 n - A103451 n)

end

end A132048.P14950592932573132424

namespace A132048

/-- `A132737(n)+A132823(n)-A103451(n)` -/
def P14950592932573132424.Spec : Prop :=
  ∀ n, P14950592932573132424.a n = A132048 n

end A132048

/-! ## A132048.P6354538913472267262

`A132729(n)+A173740(n)-A103451(n)`
-/

namespace A132048.P6354538913472267262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132729 n + (A173740 n - A103451 n)

end

end A132048.P6354538913472267262

namespace A132048

/-- `A132729(n)+A173740(n)-A103451(n)` -/
def P6354538913472267262.Spec : Prop :=
  ∀ n, P6354538913472267262.a n = A132048 n

end A132048

/-! ## A132048.P3811068747184565964

`3*A007318(n)-A000108(C(2, A007318(n)))`
-/

namespace A132048.P3811068747184565964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007318 n - A000108 (Nat.choose 2 (A007318 n).toNat)

end

end A132048.P3811068747184565964

namespace A132048

/-- `3*A007318(n)-A000108(C(2, A007318(n)))` -/
def P3811068747184565964.Spec : Prop :=
  ∀ n, P3811068747184565964.a n = A132048 n

end A132048

/-! ## A132048.P15734702268013420847

`A131060(n)+A001221(3-C(2, A007318(n)²))`
-/

namespace A132048.P15734702268013420847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + A001221 (3 - Nat.choose 2 (A007318 n ^ 2).toNat)

end

end A132048.P15734702268013420847

namespace A132048

/-- `A131060(n)+A001221(3-C(2, A007318(n)²))` -/
def P15734702268013420847.Spec : Prop :=
  ∀ n, P15734702268013420847.a n = A132048 n

end A132048

/-! ## A132048.P17512060732257377681

`3*A007318(n)-A007318(C(2, A007318(n))²)`
-/

namespace A132048.P17512060732257377681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007318 n - A007318 (Nat.choose 2 (A007318 n).toNat ^ 2)

end

end A132048.P17512060732257377681

namespace A132048

/-- `3*A007318(n)-A007318(C(2, A007318(n))²)` -/
def P17512060732257377681.Spec : Prop :=
  ∀ n, P17512060732257377681.a n = A132048 n

end A132048

/-!
# A132049: Numerator of 2*n*A000111(n-1)/A000111(n): approximations of Pi, using Euler (up/down) numbers.

The programs for A132049, there is no canonical definition to state claims against.
-/

/-! ## A132049.P11972796736230499833

`A014695(A133494(n))*A065619(n+1)`
-/

namespace A132049.P11972796736230499833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A133494 n).toNat * A065619 (n + 1)

end

end A132049.P11972796736230499833

/-! ## A132049.P160432059329534837

`A006340(A013588(n+1))*A065619(n+1)`
-/

namespace A132049.P160432059329534837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006340 (A013588 (n + 1)).toNat * A065619 (n + 1)

end

end A132049.P160432059329534837

/-! ## A132049.P11512861693107326738

`A000027(lcm(A065619(n+1), A224783(n+1)))`
-/

namespace A132049.P11512861693107326738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm (A065619 (n + 1)) (A224783 (n + 1)))

end

end A132049.P11512861693107326738

/-! ## A132049.P15077351965614469063

`A065619(n+1)*A323116(A103580(2*(n+2)))`
-/

namespace A132049.P15077351965614469063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065619 (n + 1) * A323116 (A103580 (2 * (n + 2))).toNat

end

end A132049.P15077351965614469063

/-!
# A132050: Denominator of 2*n*A000111(n-1)/A000111(n): approximations of Pi using Euler (up/down) numbers.

The programs for A132050, there is no canonical definition to state claims against.
-/

/-! ## A132050.P2987644161010244468

`A000111(n+1)/A040001(A000583(n))`
-/

namespace A132050.P2987644161010244468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000111 (n + 1) : ℚ) / (A040001 (A000583 n).toNat : ℚ)

end

end A132050.P2987644161010244468

/-! ## A132050.P17245034700201449336

`ceil(A000111(n+1)/A006519(A003724(n)+1))`
-/

namespace A132050.P17245034700201449336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000111 (n + 1) : ℚ) / (A006519 (A003724 n + 1).toNat : ℚ)⌉

end

end A132050.P17245034700201449336

/-! ## A132050.P6902000788575472368

`A000111(n+1)/A071625(A055225(2*(n+1)))`
-/

namespace A132050.P6902000788575472368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000111 (n + 1) : ℚ) / (A071625 (A055225 (2 * (n + 1))).toNat : ℚ)

end

end A132050.P6902000788575472368

/-! ## A132050.P5854158207192406933

`A273943(lcm(2, A000111(n+1)))`
-/

namespace A132050.P5854158207192406933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A000111 (n + 1)))

end

end A132050.P5854158207192406933

/-!
# A132051: Sixth column of triangle A035342.

The programs for A132051, there is no canonical definition to state claims against.
-/

/-! ## A132051.P15962981168606163060

`A035342(∑[n+5]+16)`
-/

namespace A132051.P15962981168606163060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A132051.P15962981168606163060

/-!
# A132052: Seventh column of triangle A035342.

The programs for A132052, there is no canonical definition to state claims against.
-/

/-! ## A132052.P9095718912980593893

`A035342(eq[11, A066657(n)])`
-/

namespace A132052.P9095718912980593893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A132052.P9095718912980593893

/-! ## A132052.P1946247968086200024

`A035342(A166136(n+5)+1)`
-/

namespace A132052.P1946247968086200024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (A166136 (n + 5) + 1).toNat

end

end A132052.P1946247968086200024

/-! ## A132052.P7880383862304297707

`A035342(eq[6, A002262(n)]+1)`
-/

namespace A132052.P7880383862304297707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A132052.P7880383862304297707

/-! ## A132052.P2424080699252126917

`A035342(eq[8, A131818(n+1)])`
-/

namespace A132052.P2424080699252126917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A132052.P2424080699252126917

/-! ## A132052.P17023665661315382520

`A035342(A046691(n+6)-4-2*n)`
-/

namespace A132052.P17023665661315382520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (A046691 (n + 6) - 4 - (2 * n : ℤ)).toNat

end

end A132052.P17023665661315382520

/-!
# A132053: Eighth column of triangle A035342.

The programs for A132053, there is no canonical definition to state claims against.
-/

/-! ## A132053.P3281596035609355549

`A035342(C(n+9, 2)-n)`
-/

namespace A132053.P3281596035609355549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (Nat.choose (n + 9) 2 - n)

end

end A132053.P3281596035609355549

/-! ## A132053.P16242308266908030993

`A035342(eq[13, A066657(n)])`
-/

namespace A132053.P16242308266908030993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A132053.P16242308266908030993

/-! ## A132053.P3260952971875421631

`A035342(A167499(n+6)+3)`
-/

namespace A132053.P3260952971875421631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (A167499 (n + 6) + 3).toNat

end

end A132053.P3260952971875421631

/-! ## A132053.P15726254109946094275

`A035342(eq[7, A002262(n)]+1)`
-/

namespace A132053.P15726254109946094275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A132053.P15726254109946094275

/-! ## A132053.P12562929632158590694

`A035342(eq[9, A131818(n+1)])`
-/

namespace A132053.P12562929632158590694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A132053.P12562929632158590694

/-! ## A132053.P12606169061876651884

`A035342(A000096(n+7)-n+1)`
-/

namespace A132053.P12606169061876651884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (A000096 (n + 7) - (n : ℤ) + 1).toNat

end

end A132053.P12606169061876651884

/-!
# A132054: Ninth column of triangle A035342.

The programs for A132054, there is no canonical definition to state claims against.
-/

/-! ## A132054.P10488275886053391505

`A035342(A056126(n)+45)`
-/

namespace A132054.P10488275886053391505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (A056126 n + 45).toNat

end

end A132054.P10488275886053391505

/-! ## A132054.P4796381276958656391

`A035342(eq[8, A002262(n)]+1)`
-/

namespace A132054.P4796381276958656391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A132054.P4796381276958656391

/-! ## A132054.P14309098000572920059

`A035342(eq[10, A131818(n+1)])`
-/

namespace A132054.P14309098000572920059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A132054.P14309098000572920059

/-! ## A132054.P7250828972349262097

`A035342(eq[10, A135223(n+1)])`
-/

namespace A132054.P7250828972349262097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A132054.P7250828972349262097

/-! ## A132054.P13332966656844906125

`A035342(eq[8, A144328(n+1)]+1)`
-/

namespace A132054.P13332966656844906125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A132054.P13332966656844906125

/-!
# A132055: Tenth column of triangle A035342.

The programs for A132055, there is no canonical definition to state claims against.
-/

/-! ## A132055.P12356757411452969381

`A035342(A000217(n+9)+10)`
-/

namespace A132055.P12356757411452969381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (A000217 (n + 9) + 10).toNat

end

end A132055.P12356757411452969381

/-! ## A132055.P8302325882221021148

`A035342(eq[9, A002262(n)]+1)`
-/

namespace A132055.P8302325882221021148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A132055.P8302325882221021148

/-! ## A132055.P15803754864419471830

`A035342(eq[10, A130270(n+1)])`
-/

namespace A132055.P15803754864419471830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A132055.P15803754864419471830

/-! ## A132055.P4382324985977139921

`A035342(eq[11, A131818(n+1)])`
-/

namespace A132055.P4382324985977139921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A132055.P4382324985977139921

/-!
# A132062: Sheffer triangle (1,1-sqrt(1-2*x)). Extended Bessel triangle A001497.

The programs for A132062, the canonical program `A132062.P6944061714416031410` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132062 has offset 0).

The definition of A132062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132062.P9933839977644275870

`abs(A122850(n))`
-/

namespace A132062.P9933839977644275870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122850 n|

end

end A132062.P9933839977644275870

namespace A132062

/-- `abs(A122850(n))` -/
def P9933839977644275870.Spec : Prop :=
  ∀ n, P9933839977644275870.a n = A132062 n

end A132062

/-! ## A132062.P16471509723672917883

`A097807(n)*A122850(n)`
-/

namespace A132062.P16471509723672917883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A122850 n

end

end A132062.P16471509723672917883

namespace A132062

/-- `A097807(n)*A122850(n)` -/
def P16471509723672917883.Spec : Prop :=
  ∀ n, P16471509723672917883.a n = A132062 n

end A132062

/-! ## A132062.P6089896974538452669

`gcd(A000038(n), A122850(n))`
-/

namespace A132062.P6089896974538452669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A122850 n)

end

end A132062.P6089896974538452669

namespace A132062

/-- `gcd(A000038(n), A122850(n))` -/
def P6089896974538452669.Spec : Prop :=
  ∀ n, (P6089896974538452669.a n : ℤ) = A132062 n

end A132062

/-! ## A132062.P16903801275369939938

`lcm(A020985(n), A122850(n))`
-/

namespace A132062.P16903801275369939938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A122850 n)

end

end A132062.P16903801275369939938

namespace A132062

/-- `lcm(A020985(n), A122850(n))` -/
def P16903801275369939938.Spec : Prop :=
  ∀ n, (P16903801275369939938.a n : ℤ) = A132062 n

end A132062

/-! ## A132062.P11755489593621475477

`A001498(A056943(n))-char[∑[n+1]]`
-/

namespace A132062.P11755489593621475477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (A056943 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A132062.P11755489593621475477

namespace A132062

/-- `A001498(A056943(n))-char[∑[n+1]]` -/
def P11755489593621475477.Spec : Prop :=
  ∀ n, P11755489593621475477.a n = A132062 n

end A132062

/-! ## A132062.P3564444337611555366

`A144331(A386206(n))`
-/

namespace A132062.P3564444337611555366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144331 (A386206 n).toNat

end

end A132062.P3564444337611555366

namespace A132062

/-- `A144331(A386206(n))` -/
def P3564444337611555366.Spec : Prop :=
  ∀ n, P3564444337611555366.a n = A132062 n

end A132062

/-! ## A132062.P8163952889241237419

`A144331(A292564(n)-2*n)`
-/

namespace A132062.P8163952889241237419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144331 (A292564 n - (2 * n : ℤ)).toNat

end

end A132062.P8163952889241237419

namespace A132062

/-- `A144331(A292564(n)-2*n)` -/
def P8163952889241237419.Spec : Prop :=
  ∀ n, P8163952889241237419.a n = A132062 n

end A132062

/-! ## A132062.P10531512236714250883

`A144331(A292564(n)-n-n)`
-/

namespace A132062.P10531512236714250883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144331 (A292564 n - (n : ℤ) - (n : ℤ)).toNat

end

end A132062.P10531512236714250883

namespace A132062

/-- `A144331(A292564(n)-n-n)` -/
def P10531512236714250883.Spec : Prop :=
  ∀ n, P10531512236714250883.a n = A132062 n

end A132062

/-! ## A132062.P235755642201067326

`A144331(A292564(n)%A004277(n))`
-/

namespace A132062.P235755642201067326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144331 (Int.tmod (A292564 n) (A004277 n)).toNat

end

end A132062.P235755642201067326

namespace A132062

/-- `A144331(A292564(n)%A004277(n))` -/
def P235755642201067326.Spec : Prop :=
  ∀ n, P235755642201067326.a n = A132062 n

end A132062

/-! ## A132062.P6944061714416031410

`A001147(A025581(n))*A121314(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A132062

/-- `A001147(A025581(n))*A121314(n)` -/
def P6944061714416031410.Spec : Prop :=
  ∀ n, P6944061714416031410.a n = A132062 n

theorem P6944061714416031410.correct : P6944061714416031410.Spec := by
  intro n
  simp only [A132062]

end A132062

/-! ## A132062.P9039589816609233635

`A104548(A038722(n+2))`
-/

namespace A132062.P9039589816609233635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104548 (A038722 (n + 2)).toNat

end

end A132062.P9039589816609233635

namespace A132062

/-- `A104548(A038722(n+2))` -/
def P9039589816609233635.Spec : Prop :=
  ∀ n, P9039589816609233635.a n = A132062 n

end A132062

/-!
# A132063: Alternating row sums of Jabotinsky type triangle S2p(-3):= A000369.

The programs for A132063, there is no canonical definition to state claims against.
-/

/-! ## A132063.P2723181937779767296

`A025502(n*A295257(n))`
-/

namespace A132063.P2723181937779767296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025502 ((n : ℤ) * A295257 n).toNat

end

end A132063.P2723181937779767296

/-!
# A132064: Numbers multiplied by 4 and written backwards.

The programs for A132064, there is no canonical definition to state claims against.
-/

/-! ## A132064.P5023545272572116045

`A248423(a(n-1))` with `a(0)=1`
-/

namespace A132064.P5023545272572116045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A248423 (a (n - 1)).toNat

end

end A132064.P5023545272572116045

/-! ## A132064.P17971886759361298602

`A004086(4*a(n-1))` with `a(0)=1`
-/

namespace A132064.P17971886759361298602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (4 * a (n - 1)).toNat

end

end A132064.P17971886759361298602

/-!
# A132066: Irregular array: the sum of the first m terms of row n is the m-th positive divisor of n.

The programs for A132066, there is no canonical definition to state claims against.
-/

/-! ## A132066.P8918639697209582237

`Δ[lt[A051010(n+1), 2]]`
-/

namespace A132066.P8918639697209582237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051010 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132066.P8918639697209582237

/-!
# A132068: Irregular array: row n has A000010(n) terms: the sum of the first m terms of row n is the m-th positive integer which is coprime to n.

The programs for A132068, the canonical program `A132068.P1201751376170146837` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132068 has offset 1).

The definition of A132068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132068.P12296380230721104474

`Δ[comp[A076537(n+1)+1]]`
-/

namespace A132068.P12296380230721104474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076537 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132068.P12296380230721104474

namespace A132068

/-- `Δ[comp[A076537(n+1)+1]]` -/
def P12296380230721104474.Spec : Prop :=
  ∀ n, P12296380230721104474.a n = A132068 (n + 1)

end A132068

/-! ## A132068.P17887672183969956243

`Δ[comp[lt[1, A003989(n+1)]+2]]`
-/

namespace A132068.P17887672183969956243
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132068.P17887672183969956243

namespace A132068

/-- `Δ[comp[lt[1, A003989(n+1)]+2]]` -/
def P17887672183969956243.Spec : Prop :=
  ∀ n, P17887672183969956243.a n = A132068 (n + 1)

end A132068

/-! ## A132068.P1201751376170146837

`Δ[eq[1, A300294(A028310(n))]]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A132068

/-- `Δ[eq[1, A300294(A028310(n))]]` -/
def P1201751376170146837.Spec : Prop :=
  ∀ n, P1201751376170146837.a n = A132068 (n + 1)

theorem P1201751376170146837.correct : P1201751376170146837.Spec := by
  intro n
  simp only [A132068, Nat.add_sub_cancel]

end A132068

/-! ## A132068.P5969598896142169655

`Δ[comp[A020725(A076537(n+1))]]`
-/

namespace A132068.P5969598896142169655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A076537 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132068.P5969598896142169655

namespace A132068

/-- `Δ[comp[A020725(A076537(n+1))]]` -/
def P5969598896142169655.Spec : Prop :=
  ∀ n, P5969598896142169655.a n = A132068 (n + 1)

end A132068

/-! ## A132068.P18360988590086514626

`Δ[eq[1, A300294(A233583(n+1))]]`
-/

namespace A132068.P18360988590086514626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300294 (A233583 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132068.P18360988590086514626

namespace A132068

/-- `Δ[eq[1, A300294(A233583(n+1))]]` -/
def P18360988590086514626.Spec : Prop :=
  ∀ n, P18360988590086514626.a n = A132068 (n + 1)

end A132068

/-!
# A132069: Expansion of eta(q) * eta(q^2)^2 * eta(q^5)^3 / eta(q^10)^2 in powers of q.

The programs for A132069, there is no canonical definition to state claims against.
-/

/-! ## A132069.P11089773966695174046

`(-1)^n*A113185(n)`
-/

namespace A132069.P11089773966695174046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113185 n

end

end A132069.P11089773966695174046

/-! ## A132069.P15903318251830254970

`A113185(n)*A332814(A000040(n+1))`
-/

namespace A132069.P15903318251830254970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113185 n * A332814 (A000040 (n + 1)).toNat

end

end A132069.P15903318251830254970

/-! ## A132069.P14975406055282173934

`A113185(n)*A209615(2*n+1)`
-/

namespace A132069.P14975406055282173934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113185 n * A209615 (2 * n + 1)

end

end A132069.P14975406055282173934

/-! ## A132069.P3322593737144489598

`A113185(n)*A327767(2*n+3)*A033999(n)`
-/

namespace A132069.P3322593737144489598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113185 n * A327767 (2 * n + 3) * A033999 n

end

end A132069.P3322593737144489598

/-! ## A132069.P17512671251965815427

`(A113185(2*n)+A113185(4*n))/2`
-/

namespace A132069.P17512671251965815427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113185 (2 * n) + A113185 (4 * n) : ℚ) / 2

end

end A132069.P17512671251965815427

/-!
# A132070: G.f. satisfies: A(x) = 1 + x*A(x) * A(x*A(x)) + x^2*A(x)^2 * A'(x*A(x)).

The programs for A132070, there is no canonical definition to state claims against.
-/

/-! ## A132070.P11345274984271879137

`A113882(n+1)/(n+1)`
-/

namespace A132070.P11345274984271879137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113882 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A132070.P11345274984271879137

/-! ## A132070.P4808021872296884974

`A000720(A338613(n))-A000788(n)`
-/

namespace A132070.P4808021872296884974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A338613 n).toNat - A000788 n

end

end A132070.P4808021872296884974

/-!
# A132071: A007318 + A002024 - A103451 as infinite lower triangular matrices.

The programs for A132071, the canonical program `A132071.P11945813341508066537` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132071 has offset 0).

The definition of A132071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132071.P5843121604659658947

`A132735(n)+∑[char[∑[n+1]]]`
-/

namespace A132071.P5843121604659658947
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132735 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A132071.P5843121604659658947

namespace A132071

/-- `A132735(n)+∑[char[∑[n+1]]]` -/
def P5843121604659658947.Spec : Prop :=
  ∀ n, P5843121604659658947.a n = A132071 n

end A132071

/-! ## A132071.P11945813341508066537

`A063712(n+1)+A014473(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A132071

/-- `A063712(n+1)+A014473(n)` -/
def P11945813341508066537.Spec : Prop :=
  ∀ n, P11945813341508066537.a n = A132071 n

theorem P11945813341508066537.correct : P11945813341508066537.Spec := by
  intro n
  simp only [A132071]

end A132071

/-! ## A132071.P17992037114435636841

`A131923(n)+1-A103451(n)`
-/

namespace A132071.P17992037114435636841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131923 n + (1 - A103451 n)

end

end A132071.P17992037114435636841

namespace A132071

/-- `A131923(n)+1-A103451(n)` -/
def P17992037114435636841.Spec : Prop :=
  ∀ n, P17992037114435636841.a n = A132071 n

end A132071

/-! ## A132071.P10904956960395236667

`A063712(n+1)+A007318(n)-1`
-/

namespace A132071.P10904956960395236667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063712 (n + 1) + (A007318 n - 1)

end

end A132071.P10904956960395236667

namespace A132071

/-- `A063712(n+1)+A007318(n)-1` -/
def P10904956960395236667.Spec : Prop :=
  ∀ n, P10904956960395236667.a n = A132071 n

end A132071

/-! ## A132071.P11158274765285357895

`∑[char[∑[n]]]+A007318(n)%A008288(n)`
-/

namespace A132071.P11158274765285357895
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A007318 n) (A008288 n)

end

end A132071.P11158274765285357895

namespace A132071

/-- `∑[char[∑[n]]]+A007318(n)%A008288(n)` -/
def P11158274765285357895.Spec : Prop :=
  ∀ n, P11158274765285357895.a n = A132071 n

end A132071

/-! ## A132071.P17897291804113611405

`A131923(n)+A001222(A098802(n))`
-/

namespace A132071.P17897291804113611405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131923 n + A001222 (A098802 n).toNat

end

end A132071.P17897291804113611405

namespace A132071

/-- `A131923(n)+A001222(A098802(n))` -/
def P17897291804113611405.Spec : Prop :=
  ∀ n, P17897291804113611405.a n = A132071 n

end A132071

/-! ## A132071.P6084039381833810195

`A002024(n+1)+A007318(n)-A103451(n)`
-/

namespace A132071.P6084039381833810195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A007318 n - A103451 n)

end

end A132071.P6084039381833810195

namespace A132071

/-- `A002024(n+1)+A007318(n)-A103451(n)` -/
def P6084039381833810195.Spec : Prop :=
  ∀ n, P6084039381833810195.a n = A132071 n

end A132071

/-! ## A132071.P3441233993734151831

`A065475(A007318(n))+A003056(n)`
-/

namespace A132071.P3441233993734151831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A007318 n).toNat + A003056 n

end

end A132071.P3441233993734151831

namespace A132071

/-- `A065475(A007318(n))+A003056(n)` -/
def P3441233993734151831.Spec : Prop :=
  ∀ n, P3441233993734151831.a n = A132071 n

end A132071

/-!
# A132072: Row sums of triangle A132071.

The programs for A132072, the canonical program `A132072.P3732937728297969953` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132072 has offset 0).

The definition of A132072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132072.P3732937728297969953

`n*(n+2)-or(1, -2^n)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132072

/-- `n*(n+2)-or(1, -2^n)` -/
def P3732937728297969953.Spec : Prop :=
  ∀ n, P3732937728297969953.a n = A132072 n

theorem P3732937728297969953.correct : P3732937728297969953.Spec := by
  intro n
  simp only [A132072]

end A132072

/-! ## A132072.P144492694023302282

`or(1, 2^n-1)+n*(n+2)`
-/

namespace A132072.P144492694023302282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 ^ n : ℤ) - 1) + (n * (n + 2) : ℤ)

end

end A132072.P144492694023302282

namespace A132072

/-- `or(1, 2^n-1)+n*(n+2)` -/
def P144492694023302282.Spec : Prop :=
  ∀ n, P144492694023302282.a n = A132072 n

end A132072

/-! ## A132072.P13759556425074634256

`(n+1)²-(or(1, -2^n)+1)`
-/

namespace A132072.P13759556425074634256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (Int.lor 1 (-(2 ^ n : ℤ)) + 1)

end

end A132072.P13759556425074634256

namespace A132072

/-- `(n+1)²-(or(1, -2^n)+1)` -/
def P13759556425074634256.Spec : Prop :=
  ∀ n, P13759556425074634256.a n = A132072 n

theorem P13759556425074634256.correct : P13759556425074634256.Spec := by
  intro n
  simp only [A132072, Nat.add_sub_cancel, A132072.P13759556425074634256.a, A132072.P3732937728297969953.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A132072

/-! ## A132072.P12921042956867519538

`∑[∑[2*(a(n-1)-1)]]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=4`
-/

namespace A132072.P12921042956867519538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 4] fun n f2 =>
  2 * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132072.P12921042956867519538

namespace A132072

/-- `∑[∑[2*(a(n-1)-1)]]` -/
def P12921042956867519538.Spec : Prop :=
  ∀ n, P12921042956867519538.a n = A132072 n

end A132072

/-! ## A132072.P15629969539333674241

`∑[floor(2^(n-1))-char[1]+n+n+1]`
-/

namespace A132072.P15629969539333674241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132072.P15629969539333674241

namespace A132072

/-- `∑[floor(2^(n-1))-char[1]+n+n+1]` -/
def P15629969539333674241.Spec : Prop :=
  ∀ n, P15629969539333674241.a n = A132072 n

end A132072

/-! ## A132072.P5073623671672064209

`A081494(n+1)+n²`
-/

namespace A132072.P5073623671672064209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081494 (n + 1) + (n ^ 2 : ℤ)

end

end A132072.P5073623671672064209

namespace A132072

/-- `A081494(n+1)+n²` -/
def P5073623671672064209.Spec : Prop :=
  ∀ n, P5073623671672064209.a n = A132072 n

end A132072

/-! ## A132072.P8025386924233788846

`A132736(n)+∑[2*n]`
-/

namespace A132072.P8025386924233788846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132736 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A132072.P8025386924233788846

namespace A132072

/-- `A132736(n)+∑[2*n]` -/
def P8025386924233788846.Spec : Prop :=
  ∀ n, P8025386924233788846.a n = A132072 n

end A132072

/-! ## A132072.P14515679564850672489

`n²-n+A132074(n)`
-/

namespace A132072.P14515679564850672489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ) + A132074 n

end

end A132072.P14515679564850672489

namespace A132072

/-- `n²-n+A132074(n)` -/
def P14515679564850672489.Spec : Prop :=
  ∀ n, P14515679564850672489.a n = A132072 n

end A132072

/-! ## A132072.P17346694101880960282

`A255047(n)+n*(n+2)`
-/

namespace A132072.P17346694101880960282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n + (n * (n + 2) : ℤ)

end

end A132072.P17346694101880960282

namespace A132072

/-- `A255047(n)+n*(n+2)` -/
def P17346694101880960282.Spec : Prop :=
  ∀ n, P17346694101880960282.a n = A132072 n

end A132072

/-! ## A132072.P8290437515424482664

`A004273(n)+A001580(n)`
-/

namespace A132072.P8290437515424482664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + A001580 n

end

end A132072.P8290437515424482664

namespace A132072

/-- `A004273(n)+A001580(n)` -/
def P8290437515424482664.Spec : Prop :=
  ∀ n, P8290437515424482664.a n = A132072 n

end A132072

/-! ## A132072.P1687538941644281361

`A132209(n)+A024012(n)`
-/

namespace A132072.P1687538941644281361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 n + A024012 n

end

end A132072.P1687538941644281361

namespace A132072

/-- `A132209(n)+A024012(n)` -/
def P1687538941644281361.Spec : Prop :=
  ∀ n, P1687538941644281361.a n = A132072 n

end A132072

/-! ## A132072.P14283805457725757633

`A220425(n)+A057428(n)`
-/

namespace A132072.P14283805457725757633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220425 n + A057428 n

end

end A132072.P14283805457725757633

namespace A132072

/-- `A220425(n)+A057428(n)` -/
def P14283805457725757633.Spec : Prop :=
  ∀ n, P14283805457725757633.a n = A132072 n

end A132072

/-! ## A132072.P17760045182053163396

`A253909(n)+A061761(n)`
-/

namespace A132072.P17760045182053163396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n + A061761 n

end

end A132072.P17760045182053163396

namespace A132072

/-- `A253909(n)+A061761(n)` -/
def P17760045182053163396.Spec : Prop :=
  ∀ n, P17760045182053163396.a n = A132072 n

end A132072

/-! ## A132072.P14760428969435229608

`A324172(n)+A084849(n)`
-/

namespace A132072.P14760428969435229608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324172 n + A084849 n

end

end A132072.P14760428969435229608

namespace A132072

/-- `A324172(n)+A084849(n)` -/
def P14760428969435229608.Spec : Prop :=
  ∀ n, P14760428969435229608.a n = A132072 n

end A132072

/-! ## A132072.P4959749488328223469

`A020873(n)-A112335(n)`
-/

namespace A132072.P4959749488328223469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020873 n - A112335 n

end

end A132072.P4959749488328223469

namespace A132072

/-- `A020873(n)-A112335(n)` -/
def P4959749488328223469.Spec : Prop :=
  ∀ n, P4959749488328223469.a n = A132072 n

end A132072

/-! ## A132072.P14286289925028441849

`A220425(n)-A057427(n)`
-/

namespace A132072.P14286289925028441849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220425 n - A057427 n

end

end A132072.P14286289925028441849

namespace A132072

/-- `A220425(n)-A057427(n)` -/
def P14286289925028441849.Spec : Prop :=
  ∀ n, P14286289925028441849.a n = A132072 n

end A132072

/-! ## A132072.P11221068557342954873

`A321123(n)-A010000(n)`
-/

namespace A132072.P11221068557342954873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321123 n - A010000 n

end

end A132072.P11221068557342954873

namespace A132072

/-- `A321123(n)-A010000(n)` -/
def P11221068557342954873.Spec : Prop :=
  ∀ n, P11221068557342954873.a n = A132072 n

end A132072

/-! ## A132072.P6761980753408190190

`A131951(n)-A087156(n+1)`
-/

namespace A132072.P6761980753408190190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131951 n - A087156 (n + 1)

end

end A132072.P6761980753408190190

namespace A132072

/-- `A131951(n)-A087156(n+1)` -/
def P6761980753408190190.Spec : Prop :=
  ∀ n, P6761980753408190190.a n = A132072 n

end A132072

/-! ## A132072.P4321917954265019898

`A217748(n+3)+A000295(n)`
-/

namespace A132072.P4321917954265019898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217748 (n + 3) + A000295 n

end

end A132072.P4321917954265019898

namespace A132072

/-- `A217748(n+3)+A000295(n)` -/
def P4321917954265019898.Spec : Prop :=
  ∀ n, P4321917954265019898.a n = A132072 n

end A132072

/-!
# A132073: A007318 + A131821 - A103451 as infinite lower triangular matrices.

The programs for A132073, the canonical program `A132073.P1418040610760282867` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132073 has offset 0).

The definition of A132073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132073.P9085981343818555007

`A131830(n)+log2(A154325(n))`
-/

namespace A132073.P9085981343818555007
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A131830 n : ℝ) + Real.logb 2 (A154325 n : ℝ)

end

end A132073.P9085981343818555007

namespace A132073

/-- `A131830(n)+log2(A154325(n))` -/
def P9085981343818555007.Spec : Prop :=
  ∀ n, P9085981343818555007.a n = (A132073 n : ℝ)

end A132073

/-! ## A132073.P53368164610321350

`A144217(n+1)+A132735(n)`
-/

namespace A132073.P53368164610321350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + A132735 n

end

end A132073.P53368164610321350

namespace A132073

/-- `A144217(n+1)+A132735(n)` -/
def P53368164610321350.Spec : Prop :=
  ∀ n, P53368164610321350.a n = A132073 n

end A132073

/-! ## A132073.P1418040610760282867

`A131830(n)+1-A103451(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A132073

/-- `A131830(n)+1-A103451(n)` -/
def P1418040610760282867.Spec : Prop :=
  ∀ n, P1418040610760282867.a n = A132073 n

theorem P1418040610760282867.correct : P1418040610760282867.Spec := by
  intro n
  simp only [A132073]

end A132073

/-! ## A132073.P14663829834035353489

`A131821(n+1)*A132735(n)`
-/

namespace A132073.P14663829834035353489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) * A132735 n

end

end A132073.P14663829834035353489

namespace A132073

/-- `A131821(n+1)*A132735(n)` -/
def P14663829834035353489.Spec : Prop :=
  ∀ n, P14663829834035353489.a n = A132073 n

end A132073

/-! ## A132073.P14051334136200026885

`2*A131830(n)-A128715(n)`
-/

namespace A132073.P14051334136200026885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131830 n - A128715 n

end

end A132073.P14051334136200026885

namespace A132073

/-- `2*A131830(n)-A128715(n)` -/
def P14051334136200026885.Spec : Prop :=
  ∀ n, P14051334136200026885.a n = A132073 n

end A132073

/-! ## A132073.P3923500405192252454

`A007318(n)+abs(1-A103516(n))`
-/

namespace A132073.P3923500405192252454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + |1 - A103516 n|

end

end A132073.P3923500405192252454

namespace A132073

/-- `A007318(n)+abs(1-A103516(n))` -/
def P3923500405192252454.Spec : Prop :=
  ∀ n, P3923500405192252454.a n = A132073 n

end A132073

/-! ## A132073.P8512513031886842020

`A131830(n)+1-A103452(n)²`
-/

namespace A132073.P8512513031886842020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131830 n + (1 - A103452 n ^ 2)

end

end A132073.P8512513031886842020

namespace A132073

/-- `A131830(n)+1-A103452(n)²` -/
def P8512513031886842020.Spec : Prop :=
  ∀ n, P8512513031886842020.a n = A132073 n

end A132073

/-! ## A132073.P7567319840004086232

`A128715(n)+2%A007318(n)²`
-/

namespace A132073.P7567319840004086232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128715 n + Int.tmod 2 (A007318 n ^ 2)

end

end A132073.P7567319840004086232

namespace A132073

/-- `A128715(n)+2%A007318(n)²` -/
def P7567319840004086232.Spec : Prop :=
  ∀ n, P7567319840004086232.a n = A132073 n

end A132073

/-! ## A132073.P5251911126129281178

`A131821(n+1)+A007318(n)-A103451(n)`
-/

namespace A132073.P5251911126129281178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131821 (n + 1) + (A007318 n - A103451 n)

end

end A132073.P5251911126129281178

namespace A132073

/-- `A131821(n+1)+A007318(n)-A103451(n)` -/
def P5251911126129281178.Spec : Prop :=
  ∀ n, P5251911126129281178.a n = A132073 n

end A132073

/-! ## A132073.P12097694765413258129

`A131830(n)+A001221(A103444(n))`
-/

namespace A132073.P12097694765413258129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131830 n + A001221 (A103444 n).toNat

end

end A132073.P12097694765413258129

namespace A132073

/-- `A131830(n)+A001221(A103444(n))` -/
def P12097694765413258129.Spec : Prop :=
  ∀ n, P12097694765413258129.a n = A132073 n

end A132073

/-!
# A132074: Row sums of triangle A132073.

The programs for A132074, the canonical program `A132074.P9196204890536684823` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132074 has offset 0).

The definition of A132074 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132074.P9196204890536684823

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=16`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132074

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P9196204890536684823.Spec : Prop :=
  ∀ n, P9196204890536684823.a n = A132074 n

theorem P9196204890536684823.correct : P9196204890536684823.Spec := by
  intro n
  simp only [A132074]

end A132074

/-! ## A132074.P6499730178424704575

`ogf((-1+2x^2+2x^3)/(-1+4x-5x^2+2x^3))`
-/

namespace A132074.P6499730178424704575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, -2] [1, -4, 5, -2] n

end

end A132074.P6499730178424704575

namespace A132074

/-- `ogf((-1+2x^2+2x^3)/(-1+4x-5x^2+2x^3))` -/
def P6499730178424704575.Spec : Prop :=
  ∀ n, P6499730178424704575.a n = A132074 n

end A132074

/-! ## A132074.P13927394959295459664

`or(1, 2^n-1)+3*n`
-/

namespace A132074.P13927394959295459664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 ^ n : ℤ) - 1) + (3 * n : ℤ)

end

end A132074.P13927394959295459664

namespace A132074

/-- `or(1, 2^n-1)+3*n` -/
def P13927394959295459664.Spec : Prop :=
  ∀ n, P13927394959295459664.a n = A132074 n

end A132074

/-! ## A132074.P10485014154589591787

`∑[2*a(n-1)-3]` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A132074.P10485014154589591787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  2 * f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132074.P10485014154589591787

namespace A132074

/-- `∑[2*a(n-1)-3]` -/
def P10485014154589591787.Spec : Prop :=
  ∀ n, P10485014154589591787.a n = A132074 n

end A132074

/-! ## A132074.P17743115992452482928

`comp[2*(n+1)]+2^n+n`
-/

namespace A132074.P17743115992452482928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2 ^ n + n

end

end A132074.P17743115992452482928

namespace A132074

/-- `comp[2*(n+1)]+2^n+n` -/
def P17743115992452482928.Spec : Prop :=
  ∀ n, (P17743115992452482928.a n : ℤ) = A132074 n

end A132074

/-! ## A132074.P18033192367439346093

`∑[a(n-1)+a(n-1)-3]` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A132074.P18033192367439346093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132074.P18033192367439346093

namespace A132074

/-- `∑[a(n-1)+a(n-1)-3]` -/
def P18033192367439346093.Spec : Prop :=
  ∀ n, P18033192367439346093.a n = A132074 n

end A132074

/-! ## A132074.P7692114364631091352

`∑[a(n-1)-(3-a(n-1))]` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A132074.P7692114364631091352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  f1 (n - 1) - (3 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132074.P7692114364631091352

namespace A132074

/-- `∑[a(n-1)-(3-a(n-1))]` -/
def P7692114364631091352.Spec : Prop :=
  ∀ n, P7692114364631091352.a n = A132074 n

end A132074

/-! ## A132074.P11130986049937270487

`∑[∑[A171869(n+2)]-1]`
-/

namespace A132074.P11130986049937270487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171869 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132074.P11130986049937270487

namespace A132074

/-- `∑[∑[A171869(n+2)]-1]` -/
def P11130986049937270487.Spec : Prop :=
  ∀ n, P11130986049937270487.a n = A132074 n

end A132074

/-! ## A132074.P11236707739646317693

`abs(A155559(n)+2*n+n-1)`
-/

namespace A132074.P11236707739646317693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155559 n + (2 * n : ℤ) + (n : ℤ) - 1|

end

end A132074.P11236707739646317693

namespace A132074

/-- `abs(A155559(n)+2*n+n-1)` -/
def P11236707739646317693.Spec : Prop :=
  ∀ n, P11236707739646317693.a n = A132074 n

end A132074

/-!
# A132076: a(1)=1, a(2)=2. a(n), for every positive integer n, is such that Product_{k=1..n} (Sum_{j=1..k} a(j)) = Sum_{k=1..n} Product_{j=1..k} a(j).

The programs for A132076, there is no canonical definition to state claims against.
-/

/-! ## A132076.P17796518690973516751

`-Δ[a(n-1)²]` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A132076.P17796518690973516751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A132076.P17796518690973516751

/-! ## A132076.P17561070658800778372

`Δ[-A077966(A131577(n))]`
-/

namespace A132076.P17561070658800778372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A077966 (A131577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132076.P17561070658800778372

/-! ## A132076.P7409381668698741680

`Δ[-A077966(Δ[A011782(n)])]`
-/

namespace A132076.P7409381668698741680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A077966 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132076.P7409381668698741680

/-! ## A132076.P12071795023345621960

`A000007(n)-Δ[A077966(A011782(n))]`
-/

namespace A132076.P12071795023345621960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (A011782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (f1 (n + 1) - f1 n)

end

end A132076.P12071795023345621960

/-!
# A132077: Numbers having in decimal representation exactly the same number of distinct digits as number of divisors.

The programs for A132077, the canonical program `A132077.P1434144127974677461` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132077 has offset 1).

The definition of A132077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132077.P1434144127974677461

`eq[A000005(n+1), A043537(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A132077

/-- `eq[A000005(n+1), A043537(n+1)]+1` -/
def P1434144127974677461.Spec : Prop :=
  ∀ n, (P1434144127974677461.a n : ℤ) = A132077 (n + 1)

theorem P1434144127974677461.correct : P1434144127974677461.Spec := by
  intro n
  simp only [A132077, Nat.add_sub_cancel]

end A132077

/-! ## A132077.P451071386665088563

`eq[A062011(n+1)/2, A043537(n+1)]+1`
-/

namespace A132077.P451071386665088563
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A132077.P451071386665088563

namespace A132077

/-- `eq[A062011(n+1)/2, A043537(n+1)]+1` -/
def P451071386665088563.Spec : Prop :=
  ∀ n, (P451071386665088563.a n : ℤ) = A132077 (n + 1)

end A132077

/-! ## A132077.P12995865458287113355

`eq[A043537(n+1), A183063(2*(n+1))]+1`
-/

namespace A132077.P12995865458287113355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A132077.P12995865458287113355

namespace A132077

/-- `eq[A043537(n+1), A183063(2*(n+1))]+1` -/
def P12995865458287113355.Spec : Prop :=
  ∀ n, (P12995865458287113355.a n : ℤ) = A132077 (n + 1)

end A132077

/-! ## A132077.P4226530724335618746

`eq[A043537(A233583(n+1)), A077462(n)]`
-/

namespace A132077.P4226530724335618746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132077.P4226530724335618746

namespace A132077

/-- `eq[A043537(A233583(n+1)), A077462(n)]` -/
def P4226530724335618746.Spec : Prop :=
  ∀ n, (P4226530724335618746.a n : ℤ) = A132077 (n + 1)

end A132077

/-! ## A132077.P17860044001366709579

`eq[A043537(n+1), A326842(n+1)]+1`
-/

namespace A132077.P17860044001366709579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A132077.P17860044001366709579

namespace A132077

/-- `eq[A043537(n+1), A326842(n+1)]+1` -/
def P17860044001366709579.Spec : Prop :=
  ∀ n, (P17860044001366709579.a n : ℤ) = A132077 (n + 1)

end A132077

/-!
# A132078: Multiply previous term by 6 and reverse.

The programs for A132078, there is no canonical definition to state claims against.
-/

/-! ## A132078.P15630356669784265125

`A004086(6*a(n-1))` with `a(0)=1`
-/

namespace A132078.P15630356669784265125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (6 * a (n - 1)).toNat

end

end A132078.P15630356669784265125

/-! ## A132078.P8152501951818068932

`A004086(6/a(n-1)^-1)` with `a(0)=1`
-/

namespace A132078.P8152501951818068932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (SequenceMachineLib.roundAway (6 / (a (n - 1) : ℚ) ^ (-1 : ℤ))).toNat

end

end A132078.P8152501951818068932

/-! ## A132078.P13690852184239027405

`A004086(A008458(a(n-1)))` with `a(0)=1`
-/

namespace A132078.P13690852184239027405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (A008458 (a (n - 1)).toNat).toNat

end

end A132078.P13690852184239027405

/-!
# A132079: a(n) = (5^n + 3)/2.

The programs for A132079, the canonical program `A132079.P12034479368124335240` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132079 has offset 0).

The definition of A132079 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n+3)/2` (program `A132079.P6235752725014462406`, by `A132079.P6235752725014462406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132079.P6235752725014462406

`(5^n+3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132079.P6235752725014462406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n + 3 : ℚ) / 2

end

end A132079.P6235752725014462406

namespace A132079

/-- `(5^n+3)/2` -/
def P6235752725014462406.Spec : Prop :=
  ∀ n, P6235752725014462406.a n = (A132079 n : ℚ)

theorem P6235752725014462406.correct : P6235752725014462406.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A132079, Nat.add_sub_cancel, A132079.P6235752725014462406.a, A132079.P12034479368124335240.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A132079, Nat.add_sub_cancel, A132079.P6235752725014462406.a, A132079.P12034479368124335240.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132079

/-! ## A132079.P12034479368124335240

`5*a(n-1)-6` with `a(0)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132079

/-- `5*a(n-1)-6` -/
def P12034479368124335240.Spec : Prop :=
  ∀ n, P12034479368124335240.a n = A132079 n

theorem P12034479368124335240.correct : P12034479368124335240.Spec := by
  intro n
  simp only [A132079]

end A132079

/-! ## A132079.P17816246342624609134

`2*A047850(n)`
-/

namespace A132079.P17816246342624609134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047850 n

end

end A132079.P17816246342624609134

namespace A132079

/-- `2*A047850(n)` -/
def P17816246342624609134.Spec : Prop :=
  ∀ n, P17816246342624609134.a n = A132079 n

end A132079

/-! ## A132079.P10309301996277446811

`ogf((2-8x)/(1-6x+5x^2))`
-/

namespace A132079.P10309301996277446811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -8] [1, -6, 5] n

end

end A132079.P10309301996277446811

namespace A132079

/-- `ogf((2-8x)/(1-6x+5x^2))` -/
def P10309301996277446811.Spec : Prop :=
  ∀ n, P10309301996277446811.a n = A132079 n

end A132079

/-! ## A132079.P18413658356392258164

`ceil(or(2, 5^n)/2)`
-/

namespace A132079.P18413658356392258164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 2 (5 ^ n) : ℚ) / 2⌉

end

end A132079.P18413658356392258164

namespace A132079

/-- `ceil(or(2, 5^n)/2)` -/
def P18413658356392258164.Spec : Prop :=
  ∀ n, P18413658356392258164.a n = A132079 n

end A132079

/-! ## A132079.P13756748723334920241

`round(or(2, 5^n)/2)`
-/

namespace A132079.P13756748723334920241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 (5 ^ n) : ℚ) / 2)

end

end A132079.P13756748723334920241

namespace A132079

/-- `round(or(2, 5^n)/2)` -/
def P13756748723334920241.Spec : Prop :=
  ∀ n, P13756748723334920241.a n = A132079 n

end A132079

/-! ## A132079.P6406741635525502122

`ceil(xor(2, 5^n)/2)`
-/

namespace A132079.P6406741635525502122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 2 (5 ^ n) : ℚ) / 2⌉

end

end A132079.P6406741635525502122

namespace A132079

/-- `ceil(xor(2, 5^n)/2)` -/
def P6406741635525502122.Spec : Prop :=
  ∀ n, P6406741635525502122.a n = A132079 n

end A132079

/-! ## A132079.P8105530573376740045

`round(xor(2, 5^n)/2)`
-/

namespace A132079.P8105530573376740045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (5 ^ n) : ℚ) / 2)

end

end A132079.P8105530573376740045

namespace A132079

/-- `round(xor(2, 5^n)/2)` -/
def P8105530573376740045.Spec : Prop :=
  ∀ n, P8105530573376740045.a n = A132079 n

end A132079

/-! ## A132079.P692350699458842979

`lcm(5, a(n-1))-6` with `a(0)=2`
-/

namespace A132079.P692350699458842979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - 6

end

end A132079.P692350699458842979

namespace A132079

/-- `lcm(5, a(n-1))-6` -/
def P692350699458842979.Spec : Prop :=
  ∀ n, P692350699458842979.a n = A132079 n

end A132079

/-! ## A132079.P15502097208395853623

`∑[2*5^((n-1)%(n+1))]`
-/

namespace A132079.P15502097208395853623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (5 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132079.P15502097208395853623

namespace A132079

/-- `∑[2*5^((n-1)%(n+1))]` -/
def P15502097208395853623.Spec : Prop :=
  ∀ n, P15502097208395853623.a n = (A132079 n : ℚ)

end A132079

/-! ## A132079.P16525819481136295732

`∑[a(n-1)/(1-4/5)]` with `a(0)=2, a(1)=2`
-/

namespace A132079.P16525819481136295732
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 1) / (1 - (4 : ℚ) / 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132079.P16525819481136295732

namespace A132079

/-- `∑[a(n-1)/(1-4/5)]` -/
def P16525819481136295732.Spec : Prop :=
  ∀ n, P16525819481136295732.a n = (A132079 n : ℚ)

end A132079

/-! ## A132079.P12753455768567547931

`A034478(n)+1`
-/

namespace A132079.P12753455768567547931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n + 1

end

end A132079.P12753455768567547931

namespace A132079

/-- `A034478(n)+1` -/
def P12753455768567547931.Spec : Prop :=
  ∀ n, P12753455768567547931.a n = A132079 n

end A132079

/-! ## A132079.P10584335651810900572

`A137410(n)+3`
-/

namespace A132079.P10584335651810900572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137410 n + 3

end

end A132079.P10584335651810900572

namespace A132079

/-- `A137410(n)+3` -/
def P10584335651810900572.Spec : Prop :=
  ∀ n, P10584335651810900572.a n = A132079 n

end A132079

/-! ## A132079.P11180991531966793079

`∑[A020699(n)]+1`
-/

namespace A132079.P11180991531966793079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A132079.P11180991531966793079

namespace A132079

/-- `∑[A020699(n)]+1` -/
def P11180991531966793079.Spec : Prop :=
  ∀ n, P11180991531966793079.a n = A132079 n

end A132079

/-! ## A132079.P9023292167953093226

`Δ[A185055(n)]+2`
-/

namespace A132079.P9023292167953093226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A132079.P9023292167953093226

namespace A132079

/-- `Δ[A185055(n)]+2` -/
def P9023292167953093226.Spec : Prop :=
  ∀ n, P9023292167953093226.a n = A132079 n

end A132079

/-! ## A132079.P6453484759264368890

`A121177(n+1)+2`
-/

namespace A132079.P6453484759264368890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 1) + 2

end

end A132079.P6453484759264368890

namespace A132079

/-- `A121177(n+1)+2` -/
def P6453484759264368890.Spec : Prop :=
  ∀ n, P6453484759264368890.a n = A132079 n

end A132079

/-! ## A132079.P3335269202702312858

`2*(A003463(n)+1)`
-/

namespace A132079.P3335269202702312858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003463 n + 1)

end

end A132079.P3335269202702312858

namespace A132079

/-- `2*(A003463(n)+1)` -/
def P3335269202702312858.Spec : Prop :=
  ∀ n, P3335269202702312858.a n = A132079 n

end A132079

/-! ## A132079.P10772601355842616261

`A034474(n)/2+1`
-/

namespace A132079.P10772601355842616261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034474 n : ℚ) / 2 + 1

end

end A132079.P10772601355842616261

namespace A132079

/-- `A034474(n)/2+1` -/
def P10772601355842616261.Spec : Prop :=
  ∀ n, P10772601355842616261.a n = (A132079 n : ℚ)

end A132079

/-! ## A132079.P10938943360161016201

`A024049(n)/2+2`
-/

namespace A132079.P10938943360161016201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024049 n : ℚ) / 2 + 2

end

end A132079.P10938943360161016201

namespace A132079

/-- `A024049(n)/2+2` -/
def P10938943360161016201.Spec : Prop :=
  ∀ n, P10938943360161016201.a n = (A132079 n : ℚ)

end A132079

/-!
# A132080: Numbers having in decimal representation no common digits with all their proper divisors.

The programs for A132080, there is no canonical definition to state claims against.
-/

/-! ## A132080.P9072042006546989756

`record[A121042(n+2)]%A113915(n+2)`
-/

namespace A132080.P9072042006546989756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121042 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A113915 (n + 2))

end

end A132080.P9072042006546989756

/-! ## A132080.P7308200765948794786

`record[A121042(n+2)]^A000079(A256974(n))`
-/

namespace A132080.P7308200765948794786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121042 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A000079 (A256974 n).toNat : ℤ)

end

end A132080.P7308200765948794786

/-! ## A132080.P1442385141286786556

`record[A121042(n+2)]%A039484(A121576(n))`
-/

namespace A132080.P1442385141286786556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121042 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A039484 (A121576 n).toNat)

end

end A132080.P1442385141286786556

/-! ## A132080.P2216693975153519343

`A383749(n+2)%A045535(A096111(n))`
-/

namespace A132080.P2216693975153519343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A383749 (n + 2)) (A045535 (A096111 n).toNat)

end

end A132080.P2216693975153519343

/-! ## A132080.P12337751331254383036

`A351870(A383749(n+2))`
-/

namespace A132080.P12337751331254383036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A383749 (n + 2)).toNat

end

end A132080.P12337751331254383036

/-!
# A132081: Triangle (read by rows) with row sums = Motzkin sums (also called Riordan numbers) (A005043): T(n,s) = (1/n)*C(n,s)*(C(n-s,s+1) - C(n-s-2,s-1)).

The programs for A132081, there is no canonical definition to state claims against.
-/

/-! ## A132081.P9230197145126536913

`A108263(A049068(n+2))`
-/

namespace A132081.P9230197145126536913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108263 (A049068 (n + 2)).toNat

end

end A132081.P9230197145126536913

/-! ## A132081.P9411863814934922928

`A108263(lt[1, A344391(n)])`
-/

namespace A132081.P9411863814934922928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132081.P9411863814934922928

/-! ## A132081.P7902057940333389412

`A033282(A056536(n+2)+2)`
-/

namespace A132081.P7902057940333389412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (A056536 (n + 2) + 2).toNat

end

end A132081.P7902057940333389412

/-! ## A132081.P13968643476677339161

`A033282(A091018(n+1)+3)`
-/

namespace A132081.P13968643476677339161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (A091018 (n + 1) + 3).toNat

end

end A132081.P13968643476677339161

/-! ## A132081.P2369922915207119741

`A108263(lt[A023531(n), A108263(n)])`
-/

namespace A132081.P2369922915207119741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108263 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A132081.P2369922915207119741

/-!
# A132082: Triangle read by rows: row n contains the n smallest positive integers which are coprime to (2^n +1).

The programs for A132082, there is no canonical definition to state claims against.
-/

/-! ## A132082.P11088610781851559721

`A007302(A123020(A131225(n+1)))`
-/

namespace A132082.P11088610781851559721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A123020 (A131225 (n + 1)).toNat).toNat

end

end A132082.P11088610781851559721

/-! ## A132082.P11112501386339309548

`A072768(A119265(n+1)^A091407(n+1))`
-/

namespace A132082.P11112501386339309548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072768 (SequenceMachineLib.roundAway ((A119265 (n + 1) : ℚ) ^ (A091407 (n + 1) : ℤ))).toNat

end

end A132082.P11112501386339309548

/-! ## A132082.P8184525242725042121

`A113473(A119265(n+1)^A091407(n+1))`
-/

namespace A132082.P8184525242725042121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (SequenceMachineLib.roundAway ((A119265 (n + 1) : ℚ) ^ (A091407 (n + 1) : ℤ))).toNat

end

end A132082.P8184525242725042121

/-! ## A132082.P2188874141536169290

`A028920(A249027(n+1)-A318449(n+1)²)`
-/

namespace A132082.P2188874141536169290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A249027 (n + 1) - A318449 (n + 1) ^ 2).toNat

end

end A132082.P2188874141536169290

/-! ## A132082.P12547435597097603073

`A070939(A119265(n+1)%A287142(2*(n+1)))`
-/

namespace A132082.P12547435597097603073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A119265 (n + 1)) (A287142 (2 * (n + 1)))).toNat

end

end A132082.P12547435597097603073

/-!
# A132083: a(n) = n-th positive integer which is coprime to (2^n +1). Also, a(n) = final term of row n in triangle A132082.

The programs for A132083, there is no canonical definition to state claims against.
-/

/-! ## A132083.P3583796025186850680

`A015996(A016018(n))+n-gcd(n, ∑[n])`
-/

namespace A132083.P3583796025186850680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015996 (A016018 n).toNat + ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A132083.P3583796025186850680

/-! ## A132083.P12861343811950239069

`A374993(A290679(n))+A025480(n)`
-/

namespace A132083.P12861343811950239069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374993 (A290679 n).toNat + A025480 n

end

end A132083.P12861343811950239069

/-! ## A132083.P16137836364395858036

`A003602(n+1)-A083918(A111792(2*n+5)+1)+n`
-/

namespace A132083.P16137836364395858036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) - A083918 (A111792 (2 * n + 5) + 1).toNat + (n : ℤ)

end

end A132083.P16137836364395858036

/-! ## A132083.P15521014588025962345

`A132082(∑[n+1])`
-/

namespace A132083.P15521014588025962345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132082 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132083.P15521014588025962345

/-! ## A132083.P10041292273864119171

`A132082(A025747(n))%18`
-/

namespace A132083.P10041292273864119171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132082 (A025747 n).toNat) 18

end

end A132083.P10041292273864119171

/-!
# A132084: A051717(2n).

The programs for A132084, the canonical program `A132084.P7606522136446694232` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132084 has offset 0).

The definition of A132084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 646 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132084.P18295544301934769147

`A051717(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132084.P18295544301934769147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (2 * n)

end

end A132084.P18295544301934769147

namespace A132084

/-- `A051717(2*n)` -/
def P18295544301934769147.Spec : Prop :=
  ∀ n, P18295544301934769147.a n = A132084 n

end A132084

/-! ## A132084.P4448953704610242911

`A002445(n)/(char[1]+1)`
-/

namespace A132084.P4448953704610242911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)

end

end A132084.P4448953704610242911

namespace A132084

/-- `A002445(n)/(char[1]+1)` -/
def P4448953704610242911.Spec : Prop :=
  ∀ n, P4448953704610242911.a n = (A132084 n : ℚ)

end A132084

/-! ## A132084.P10409461277136633657

`gcd(A002445(n), A140812(n))`
-/

namespace A132084.P10409461277136633657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002445 n) (A140812 n)

end

end A132084.P10409461277136633657

namespace A132084

/-- `gcd(A002445(n), A140812(n))` -/
def P10409461277136633657.Spec : Prop :=
  ∀ n, (P10409461277136633657.a n : ℤ) = A132084 n

end A132084

/-! ## A132084.P3791634839731312888

`gcd(A140814(n), A169585(n))`
-/

namespace A132084.P3791634839731312888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140814 n) (A169585 n)

end

end A132084.P3791634839731312888

namespace A132084

/-- `gcd(A140814(n), A169585(n))` -/
def P3791634839731312888.Spec : Prop :=
  ∀ n, (P3791634839731312888.a n : ℤ) = A132084 n

end A132084

/-! ## A132084.P8924467101558811847

`lcm(A001897(n), A084100(n))`
-/

namespace A132084.P8924467101558811847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001897 n) (A084100 n)

end

end A132084.P8924467101558811847

namespace A132084

/-- `lcm(A001897(n), A084100(n))` -/
def P8924467101558811847.Spec : Prop :=
  ∀ n, (P8924467101558811847.a n : ℤ) = A132084 n

end A132084

/-! ## A132084.P7606522136446694232

`2*A001897(n)/A141044(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A132084

/-- `2*A001897(n)/A141044(n)` -/
def P7606522136446694232.Spec : Prop :=
  ∀ n, P7606522136446694232.a n = (A132084 n : ℚ)

end A132084

/-! ## A132084.P14127829015137241023

`A027642(2*n)/A373565(n)`
-/

namespace A132084.P14127829015137241023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (2 * n) : ℚ) / (A373565 n : ℚ)

end

end A132084.P14127829015137241023

namespace A132084

/-- `A027642(2*n)/A373565(n)` -/
def P14127829015137241023.Spec : Prop :=
  ∀ n, P14127829015137241023.a n = (A132084 n : ℚ)

end A132084

/-! ## A132084.P2228849793111199220

`A141056(2*n)/A373565(n)`
-/

namespace A132084.P2228849793111199220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 (2 * n) : ℚ) / (A373565 n : ℚ)

end

end A132084.P2228849793111199220

namespace A132084

/-- `A141056(2*n)/A373565(n)` -/
def P2228849793111199220.Spec : Prop :=
  ∀ n, P2228849793111199220.a n = (A132084 n : ℚ)

end A132084

/-! ## A132084.P16760227953633476302

`A176289(2*n)/A373565(n)`
-/

namespace A132084.P16760227953633476302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176289 (2 * n) : ℚ) / (A373565 n : ℚ)

end

end A132084.P16760227953633476302

namespace A132084

/-- `A176289(2*n)/A373565(n)` -/
def P16760227953633476302.Spec : Prop :=
  ∀ n, P16760227953633476302.a n = (A132084 n : ℚ)

end A132084

/-! ## A132084.P3321532120820175243

`round(A141056(2*n)/A141044(n))`
-/

namespace A132084.P3321532120820175243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A141056 (2 * n) : ℚ) / (A141044 n : ℚ))

end

end A132084.P3321532120820175243

namespace A132084

/-- `round(A141056(2*n)/A141044(n))` -/
def P3321532120820175243.Spec : Prop :=
  ∀ n, P3321532120820175243.a n = A132084 n

end A132084

/-! ## A132084.P11426590164764453839

`A027642(2*n)/A000108(C(2, n))`
-/

namespace A132084.P11426590164764453839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (2 * n) : ℚ) / (A000108 (Nat.choose 2 n) : ℚ)

end

end A132084.P11426590164764453839

namespace A132084

/-- `A027642(2*n)/A000108(C(2, n))` -/
def P11426590164764453839.Spec : Prop :=
  ∀ n, P11426590164764453839.a n = (A132084 n : ℚ)

end A132084

/-! ## A132084.P3224612469073243776

`A106458(2*n)/(A091225(2*n)+1)`
-/

namespace A132084.P3224612469073243776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106458 (2 * n) : ℚ) / (A091225 (2 * n) + 1 : ℚ)

end

end A132084.P3224612469073243776

namespace A132084

/-- `A106458(2*n)/(A091225(2*n)+1)` -/
def P3224612469073243776.Spec : Prop :=
  ∀ n, P3224612469073243776.a n = (A132084 n : ℚ)

end A132084

/-! ## A132084.P15017830232774058012

`A176289(2*n)/(A055029(2*n)+1)`
-/

namespace A132084.P15017830232774058012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176289 (2 * n) : ℚ) / (A055029 (2 * n) + 1 : ℚ)

end

end A132084.P15017830232774058012

namespace A132084

/-- `A176289(2*n)/(A055029(2*n)+1)` -/
def P15017830232774058012.Spec : Prop :=
  ∀ n, P15017830232774058012.a n = (A132084 n : ℚ)

end A132084

/-! ## A132084.P7672466848597419180

`A141056(A004277(n))/A141044(n)`
-/

namespace A132084.P7672466848597419180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 (A004277 n).toNat : ℚ) / (A141044 n : ℚ)

end

end A132084.P7672466848597419180

namespace A132084

/-- `A141056(A004277(n))/A141044(n)` -/
def P7672466848597419180.Spec : Prop :=
  ∀ n, P7672466848597419180.a n = (A132084 n : ℚ)

end A132084

/-! ## A132084.P13287989233118295497

`A020639(A000010(n+1))*A001897(n)`
-/

namespace A132084.P13287989233118295497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1)).toNat * A001897 n

end

end A132084.P13287989233118295497

namespace A132084

/-- `A020639(A000010(n+1))*A001897(n)` -/
def P13287989233118295497.Spec : Prop :=
  ∀ n, P13287989233118295497.a n = A132084 n

end A132084

/-! ## A132084.P8120050746845673478

`A002445(n)/A027642(n)*A176289(n)`
-/

namespace A132084.P8120050746845673478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 n : ℚ) / (A027642 n : ℚ) * (A176289 n : ℚ)

end

end A132084.P8120050746845673478

namespace A132084

/-- `A002445(n)/A027642(n)*A176289(n)` -/
def P8120050746845673478.Spec : Prop :=
  ∀ n, P8120050746845673478.a n = (A132084 n : ℚ)

end A132084

/-! ## A132084.P1760958972309387910

`A106458(2*n)/A000045(A014963(∑[n+1]))`
-/

namespace A132084.P1760958972309387910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106458 (2 * n) : ℚ) / (A000045 (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ)

end

end A132084.P1760958972309387910

namespace A132084

/-- `A106458(2*n)/A000045(A014963(∑[n+1]))` -/
def P1760958972309387910.Spec : Prop :=
  ∀ n, P1760958972309387910.a n = (A132084 n : ℚ)

end A132084

/-! ## A132084.P12451825147329316005

`A027642(2*n)/A014963(A067664(n+1))`
-/

namespace A132084.P12451825147329316005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (2 * n) : ℚ) / (A014963 (A067664 (n + 1)).toNat : ℚ)

end

end A132084.P12451825147329316005

namespace A132084

/-- `A027642(2*n)/A014963(A067664(n+1))` -/
def P12451825147329316005.Spec : Prop :=
  ∀ n, P12451825147329316005.a n = (A132084 n : ℚ)

end A132084

/-! ## A132084.P4933147821828427732

`A001897(n)*A084100(n²)`
-/

namespace A132084.P4933147821828427732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001897 n * A084100 (n ^ 2)

end

end A132084.P4933147821828427732

namespace A132084

/-- `A001897(n)*A084100(n²)` -/
def P4933147821828427732.Spec : Prop :=
  ∀ n, P4933147821828427732.a n = A132084 n

end A132084

/-! ## A132084.P10549993020737296078

`A084100(n²)*A141459(2*n)`
-/

namespace A132084.P10549993020737296078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084100 (n ^ 2) * A141459 (2 * n)

end

end A132084.P10549993020737296078

namespace A132084

/-- `A084100(n²)*A141459(2*n)` -/
def P10549993020737296078.Spec : Prop :=
  ∀ n, P10549993020737296078.a n = A132084 n

end A132084

/-!
# A132085: Number of partitions of n into distinct parts such that (u+1)^2 <= v for all pairs (u,v) of parts with u

The programs for A132085, there is no canonical definition to state claims against.
-/

/-! ## A132085.P4903298128858257589

`A111850(round(n-sqrt(n))+2)`
-/

namespace A132085.P4903298128858257589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111850 (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ)) + 2).toNat

end

end A132085.P4903298128858257589

/-! ## A132085.P16690553933794552874

`∑[C(A325169(n+1), A246005(2*(n+2)))]`
-/

namespace A132085.P16690553933794552874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325169 (n + 1)).toNat (A246005 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132085.P16690553933794552874

/-! ## A132085.P5540491701209244490

`A111857(lt[7, A113326(n+2)])`
-/

namespace A132085.P5540491701209244490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132085.P5540491701209244490

/-! ## A132085.P5294505208911681409

`∑[A010054(A350029(2*n+5))]`
-/

namespace A132085.P5294505208911681409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A350029 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132085.P5294505208911681409

/-!
# A132086: 

The programs for A132086, there is no canonical definition to state claims against.
-/

/-! ## A132086.P12579942673578411392

`A376663(A376702(3*(n+1)))+n`
-/

namespace A132086.P12579942673578411392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376663 (A376702 (3 * (n + 1))).toNat + (n : ℤ)

end

end A132086.P12579942673578411392

/-!
# A132087: Where record values occur in A132085.

The programs for A132087, there is no canonical definition to state claims against.
-/

/-! ## A132087.P15442873212986584275

`A132088(n)+a(n-1)` with `a(0)=1`
-/

namespace A132087.P15442873212986584275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132088 n + a (n - 1)

end

end A132087.P15442873212986584275

/-! ## A132087.P7774970853629316141

`∑[A132088(round(sqrt(n²+1)))]-3`
-/

namespace A132087.P7774970853629316141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132088 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A132087.P7774970853629316141

/-! ## A132087.P16490923307726454273

`∑[A132088(n-A000007(a(n-1)))]` with `a(0)=1`
-/

namespace A132087.P16490923307726454273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A132088 ((n : ℤ) - A000007 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132087.P16490923307726454273

/-! ## A132087.P14891850889371221415

`∑[A132088(A028310(n))^round(n/(n+1))]`
-/

namespace A132087.P14891850889371221415
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132088 (A028310 n).toNat : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132087.P14891850889371221415

/-! ## A132087.P11705802349713079937

`∑[A132088(A028310(n))%A004767(n)]`
-/

namespace A132087.P11705802349713079937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132088 (A028310 n).toNat) (A004767 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132087.P11705802349713079937

/-! ## A132087.P15873126191085924383

`∑[A132088(A004273(n)+1-n)%A004767(n)]`
-/

namespace A132087.P15873126191085924383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132088 (A004273 n + (1 - (n : ℤ))).toNat) (A004767 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132087.P15873126191085924383

/-! ## A132087.P11058561235212192989

`∑[A132088(n+1)]+1-A132088(n+1)`
-/

namespace A132087.P11058561235212192989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A132088 (n + 1)

end

end A132087.P11058561235212192989

/-! ## A132087.P12070530043078716002

`A024000(A132088(n+1))+∑[A132088(n+1)]`
-/

namespace A132087.P12070530043078716002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A132088 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132087.P12070530043078716002

/-!
# A132088: Number of times record values occur in A132085.

The programs for A132088, there is no canonical definition to state claims against.
-/

/-! ## A132088.P5589661549551695494

`Δ[A132087(n+1)]`
-/

namespace A132088.P5589661549551695494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132088.P5589661549551695494

/-! ## A132088.P9581162411550379187

`Δ[record[A132087(A126759(n))]]`
-/

namespace A132088.P9581162411550379187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132087 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132088.P9581162411550379187

/-! ## A132088.P4840629478951422479

`Δ[record[A132087(A133310(n))]]`
-/

namespace A132088.P4840629478951422479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132087 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132088.P4840629478951422479

/-! ## A132088.P4054550131147598338

`Δ[record[A132087(A291769(n))]]`
-/

namespace A132088.P4054550131147598338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132087 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132088.P4054550131147598338

/-! ## A132088.P7530302974316450471

`Δ[record[A132087(A344180(n))]]`
-/

namespace A132088.P7530302974316450471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132087 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132088.P7530302974316450471

/-! ## A132088.P114412607451638067

`A132087(n+2)-A132087(n+1)`
-/

namespace A132088.P114412607451638067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132087 (n + 2) - A132087 (n + 1)

end

end A132088.P114412607451638067

/-!
# A132089: Triangle T, read by rows, equal to the matrix square of Losanitsch's triangle (A034851).

The programs for A132089, there is no canonical definition to state claims against.
-/

/-! ## A132089.P13315505354424214119

`A321155(n+1)-A210713(A171229(n))`
-/

namespace A132089.P13315505354424214119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321155 (n + 1) - A210713 (A171229 n).toNat

end

end A132089.P13315505354424214119

/-! ## A132089.P14433256037942687697

`A102530(A321155(n+1)^A080934(n))`
-/

namespace A132089.P14433256037942687697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102530 (SequenceMachineLib.roundAway ((A321155 (n + 1) : ℚ) ^ (A080934 n : ℤ))).toNat

end

end A132089.P14433256037942687697

/-! ## A132089.P16525179165070465024

`A102530(A321155(n+1)^A303940(n))`
-/

namespace A132089.P16525179165070465024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102530 (SequenceMachineLib.roundAway ((A321155 (n + 1) : ℚ) ^ (A303940 n : ℤ))).toNat

end

end A132089.P16525179165070465024

/-! ## A132089.P416476306454172890

`and(A321155(n+1), A365212(A023893(n)))`
-/

namespace A132089.P416476306454172890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A321155 (n + 1)) (A365212 (A023893 n).toNat)

end

end A132089.P416476306454172890

/-! ## A132089.P2171330508542660412

`A102530(A146591(n+1)*A321155(n+1))`
-/

namespace A132089.P2171330508542660412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102530 (A146591 (n + 1) * A321155 (n + 1)).toNat

end

end A132089.P2171330508542660412

/-!
# A132090: a(n) = pi(pi(n)), where pi = A000720.

The programs for A132090, the canonical program `A132090.P14228668176940392471` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132090 has offset 1).

The definition of A132090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132090.P5290120368746859624

`∑[A111406(n)]`
-/

namespace A132090.P5290120368746859624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132090.P5290120368746859624

namespace A132090

/-- `∑[A111406(n)]` -/
def P5290120368746859624.Spec : Prop :=
  ∀ n, P5290120368746859624.a n = A132090 (n + 1)

end A132090

/-! ## A132090.P16438634182115599389

`∑[char[A141138(n+1)]]`
-/

namespace A132090.P16438634182115599389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132090.P16438634182115599389

namespace A132090

/-- `∑[char[A141138(n+1)]]` -/
def P16438634182115599389.Spec : Prop :=
  ∀ n, (P16438634182115599389.a n : ℤ) = A132090 (n + 1)

end A132090

/-! ## A132090.P11831354290208592321

`∑[char[A006450(n+1)-1]]`
-/

namespace A132090.P11831354290208592321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132090.P11831354290208592321

namespace A132090

/-- `∑[char[A006450(n+1)-1]]` -/
def P11831354290208592321.Spec : Prop :=
  ∀ n, (P11831354290208592321.a n : ℤ) = A132090 (n + 1)

end A132090

/-! ## A132090.P14228668176940392471

`A064557(A070320(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A132090

/-- `A064557(A070320(n+1))` -/
def P14228668176940392471.Spec : Prop :=
  ∀ n, P14228668176940392471.a n = A132090 (n + 1)

theorem P14228668176940392471.correct : P14228668176940392471.Spec := by
  intro n
  simp only [A132090, Nat.add_sub_cancel]

end A132090

/-! ## A132090.P17300808537649188450

`A230980(A000720(n+1))`
-/

namespace A132090.P17300808537649188450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A000720 (n + 1)).toNat

end

end A132090.P17300808537649188450

namespace A132090

/-- `A230980(A000720(n+1))` -/
def P17300808537649188450.Spec : Prop :=
  ∀ n, P17300808537649188450.a n = A132090 (n + 1)

end A132090

/-! ## A132090.P12756594982498398824

`∑[char[A006093(A007918(n))]]`
-/

namespace A132090.P12756594982498398824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A007918 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132090.P12756594982498398824

namespace A132090

/-- `∑[char[A006093(A007918(n))]]` -/
def P12756594982498398824.Spec : Prop :=
  ∀ n, (P12756594982498398824.a n : ℤ) = A132090 (n + 1)

end A132090

/-! ## A132090.P16008271259261193355

`∑[char[A006093(A151800(n))]]`
-/

namespace A132090.P16008271259261193355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A151800 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132090.P16008271259261193355

namespace A132090

/-- `∑[char[A006093(A151800(n))]]` -/
def P16008271259261193355.Spec : Prop :=
  ∀ n, (P16008271259261193355.a n : ℤ) = A132090 (n + 1)

end A132090

/-! ## A132090.P7881872576889284445

`∑[char[A006093(A162753(n))]]`
-/

namespace A132090.P7881872576889284445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A162753 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132090.P7881872576889284445

namespace A132090

/-- `∑[char[A006093(A162753(n))]]` -/
def P7881872576889284445.Spec : Prop :=
  ∀ n, (P7881872576889284445.a n : ℤ) = A132090 (n + 1)

end A132090

/-! ## A132090.P16935959893009764353

`A000720(∑[A080545(n+1)])`
-/

namespace A132090.P16935959893009764353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A132090.P16935959893009764353

namespace A132090

/-- `A000720(∑[A080545(n+1)])` -/
def P16935959893009764353.Spec : Prop :=
  ∀ n, P16935959893009764353.a n = A132090 (n + 1)

end A132090

/-! ## A132090.P5624581873230349831

`∑[A257994(A014973(n+1))]`
-/

namespace A132090.P5624581873230349831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A014973 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132090.P5624581873230349831

namespace A132090

/-- `∑[A257994(A014973(n+1))]` -/
def P5624581873230349831.Spec : Prop :=
  ∀ n, P5624581873230349831.a n = A132090 (n + 1)

end A132090

/-! ## A132090.P16141230667193473445

`∑[A257994(A089026(n+1))]`
-/

namespace A132090.P16141230667193473445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A089026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132090.P16141230667193473445

namespace A132090

/-- `∑[A257994(A089026(n+1))]` -/
def P16141230667193473445.Spec : Prop :=
  ∀ n, P16141230667193473445.a n = A132090 (n + 1)

end A132090

/-! ## A132090.P3312010415962737218

`A000720(A033270(n+1)+1)`
-/

namespace A132090.P3312010415962737218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A033270 (n + 1) + 1).toNat

end

end A132090.P3312010415962737218

namespace A132090

/-- `A000720(A033270(n+1)+1)` -/
def P3312010415962737218.Spec : Prop :=
  ∀ n, P3312010415962737218.a n = A132090 (n + 1)

end A132090

/-! ## A132090.P8167412441146064383

`∑{d}[A000720(n+1), A062778(#)]`
-/

namespace A132090.P8167412441146064383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062778 d

end

end A132090.P8167412441146064383

namespace A132090

/-- `∑{d}[A000720(n+1), A062778(#)]` -/
def P8167412441146064383.Spec : Prop :=
  ∀ n, P8167412441146064383.a n = A132090 (n + 1)

end A132090

/-! ## A132090.P4073900306149461681

`∑[char[A006093(A000040(n+1))]]`
-/

namespace A132090.P4073900306149461681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A000040 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132090.P4073900306149461681

namespace A132090

/-- `∑[char[A006093(A000040(n+1))]]` -/
def P4073900306149461681.Spec : Prop :=
  ∀ n, (P4073900306149461681.a n : ℤ) = A132090 (n + 1)

end A132090

/-! ## A132090.P17099378587799984032

`∑[char[A006093(A093074(n+1))]]`
-/

namespace A132090.P17099378587799984032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A093074 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132090.P17099378587799984032

namespace A132090

/-- `∑[char[A006093(A093074(n+1))]]` -/
def P17099378587799984032.Spec : Prop :=
  ∀ n, (P17099378587799984032.a n : ℤ) = A132090 (n + 1)

end A132090

/-! ## A132090.P12770412909566010108

`∑[char[A006093(A020639(n+2))]]`
-/

namespace A132090.P12770412909566010108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A020639 (n + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132090.P12770412909566010108

namespace A132090

/-- `∑[char[A006093(A020639(n+2))]]` -/
def P12770412909566010108.Spec : Prop :=
  ∀ n, (P12770412909566010108.a n : ℤ) = A132090 (n + 1)

end A132090

/-! ## A132090.P6764136194031074008

`A000720(∑[and(1, A257727(n+1))])`
-/

namespace A132090.P6764136194031074008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A257727 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A132090.P6764136194031074008

namespace A132090

/-- `A000720(∑[and(1, A257727(n+1))])` -/
def P6764136194031074008.Spec : Prop :=
  ∀ n, P6764136194031074008.a n = A132090 (n + 1)

end A132090

/-! ## A132090.P8842946410704612673

`A036234(A033270(n+1)+1)-1`
-/

namespace A132090.P8842946410704612673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A033270 (n + 1) + 1).toNat - 1

end

end A132090.P8842946410704612673

namespace A132090

/-- `A036234(A033270(n+1)+1)-1` -/
def P8842946410704612673.Spec : Prop :=
  ∀ n, P8842946410704612673.a n = A132090 (n + 1)

end A132090

/-! ## A132090.P13243694679243529418

`A056172(2*A000720(n+1)+1)`
-/

namespace A132090.P13243694679243529418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A000720 (n + 1) + 1).toNat

end

end A132090.P13243694679243529418

namespace A132090

/-- `A056172(2*A000720(n+1)+1)` -/
def P13243694679243529418.Spec : Prop :=
  ∀ n, P13243694679243529418.a n = A132090 (n + 1)

end A132090

/-! ## A132090.P1276176371554952914

`∑[char[A006093(A302445(n+2))]]`
-/

namespace A132090.P1276176371554952914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A302445 (n + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132090.P1276176371554952914

namespace A132090

/-- `∑[char[A006093(A302445(n+2))]]` -/
def P1276176371554952914.Spec : Prop :=
  ∀ n, (P1276176371554952914.a n : ℤ) = A132090 (n + 1)

end A132090

/-!
# A132091: Expansion of psi(x^3) * chi(-x^9) / f(-x^2) in powers of x where psi(), chi(), f() are Ramanujan theta functions.

The programs for A132091, there is no canonical definition to state claims against.
-/

/-! ## A132091.P2484453403804169742

`A123975(A052938(A187829(n+1)))`
-/

namespace A132091.P2484453403804169742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123975 (A052938 (A187829 (n + 1)).toNat).toNat

end

end A132091.P2484453403804169742

/-! ## A132091.P2708473486594524066

`A113220(A262090(n)%A256103(3*n+5))`
-/

namespace A132091.P2708473486594524066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113220 (Int.tmod (A262090 n) (A256103 (3 * n + 5))).toNat

end

end A132091.P2708473486594524066

/-! ## A132091.P11295222827639220474

`A000701(A028242(n)+A001498(A001497(n)))`
-/

namespace A132091.P11295222827639220474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (A028242 n + A001498 (A001497 n).toNat).toNat

end

end A132091.P11295222827639220474

/-! ## A132091.P3963497671226774131

`A000701(A028242(n)+A000188(A096342(n+1)))`
-/

namespace A132091.P3963497671226774131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (A028242 n + A000188 (A096342 (n + 1)).toNat).toNat

end

end A132091.P3963497671226774131

/-! ## A132091.P571314803023380947

`A008742(n)-A086011(abs(1-(-2)^n))`
-/

namespace A132091.P571314803023380947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n - A086011 |1 - (-2) ^ n|.toNat

end

end A132091.P571314803023380947

/-!
# A132092: Numerators of Blandin-Diaz compositional Bernoulli numbers (B^sin)_3,n.

The programs for A132092, there is no canonical definition to state claims against.
-/

/-! ## A132092.P8589152230989314309

`A001815(n)-A302044(A021092(n))`
-/

namespace A132092.P8589152230989314309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n - A302044 (A021092 n).toNat

end

end A132092.P8589152230989314309

/-!
# A132093: Denominators of Blandin-Diaz compositional Bernoulli numbers (B^sin)_3,n.

The programs for A132093, there is no canonical definition to state claims against.
-/

/-! ## A132093.P1024862493569281204

`lcm(A003163(2*n), A246661(A226261(n)))`
-/

namespace A132093.P1024862493569281204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003163 (2 * n)) (A246661 (A226261 n).toNat)

end

end A132093.P1024862493569281204

/-!
# A132094: Numerators of expansion of e.g.f. x^2/(2*(cos(x)-1)), even powers only.

The programs for A132094, there is no canonical definition to state claims against.
-/

/-! ## A132094.P5269238854778292810

`-gcd(A003245(3*n+2), A100615(2*n))`
-/

namespace A132094.P5269238854778292810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.gcd (A003245 (3 * n + 2)) (A100615 (2 * n)) : ℤ)

end

end A132094.P5269238854778292810

/-! ## A132094.P13882954507712390729

`xor(abs(A027643(2*n+1)), -2)`
-/

namespace A132094.P13882954507712390729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |A027643 (2 * n + 1)| (-2)

end

end A132094.P13882954507712390729

/-! ## A132094.P14245374640219762380

`A027643(2*n+1)*A033999(n+1)`
-/

namespace A132094.P14245374640219762380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027643 (2 * n + 1) * A033999 (n + 1)

end

end A132094.P14245374640219762380

/-! ## A132094.P11212859497923359446

`-(A027643(A004273(n+1))*A033999(n))`
-/

namespace A132094.P11212859497923359446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A027643 (A004273 (n + 1)).toNat * A033999 n)

end

end A132094.P11212859497923359446

/-! ## A132094.P16077138650089779887

`A008683(4*(n+1))-abs(A027643(A004273(n+1)))`
-/

namespace A132094.P16077138650089779887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - |A027643 (A004273 (n + 1)).toNat|

end

end A132094.P16077138650089779887

/-!
# A132095: Denominators of expansion of e.g.f. x^2/(2*(cos(x)-1)), even powers only.

The programs for A132095, the canonical program `A132095.P11457684862104196906` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132095 has offset 0).

The definition of A132095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132095.P11457684862104196906

`A176591(2*n)/gcd(A014681(2*n), A176591(2*n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A132095

/-- `A176591(2*n)/gcd(A014681(2*n), A176591(2*n))` -/
def P11457684862104196906.Spec : Prop :=
  ∀ n, P11457684862104196906.a n = (A132095 n : ℚ)

end A132095

/-! ## A132095.P5037588690413417838

`A100616(2*n)`
-/

namespace A132095.P5037588690413417838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 (2 * n)

end

end A132095.P5037588690413417838

namespace A132095

/-- `A100616(2*n)` -/
def P5037588690413417838.Spec : Prop :=
  ∀ n, P5037588690413417838.a n = A132095 n

end A132095

/-! ## A132095.P8551480689822253950

`xor(1, xor(1, A100616(n+n)))`
-/

namespace A132095.P8551480689822253950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A100616 (n + n)))

end

end A132095.P8551480689822253950

namespace A132095

/-- `xor(1, xor(1, A100616(n+n)))` -/
def P8551480689822253950.Spec : Prop :=
  ∀ n, P8551480689822253950.a n = A132095 n

end A132095

/-! ## A132095.P9298790693812952154

`A100616(n+n)+A080224(A006530(n+1))`
-/

namespace A132095.P9298790693812952154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 (n + n) + A080224 (A006530 (n + 1)).toNat

end

end A132095.P9298790693812952154

namespace A132095

/-- `A100616(n+n)+A080224(A006530(n+1))` -/
def P9298790693812952154.Spec : Prop :=
  ∀ n, P9298790693812952154.a n = A132095 n

end A132095

/-! ## A132095.P12735388056720421985

`or(A020639(A033496(n+1)), A100616(n+n))`
-/

namespace A132095.P12735388056720421985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A033496 (n + 1)).toNat) (A100616 (n + n))

end

end A132095.P12735388056720421985

namespace A132095

/-- `or(A020639(A033496(n+1)), A100616(n+n))` -/
def P12735388056720421985.Spec : Prop :=
  ∀ n, P12735388056720421985.a n = A132095 n

end A132095

/-! ## A132095.P9781496995604867355

`A027644(2*n+1)/4`
-/

namespace A132095.P9781496995604867355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027644 (2 * n + 1) : ℚ) / 4

end

end A132095.P9781496995604867355

namespace A132095

/-- `A027644(2*n+1)/4` -/
def P9781496995604867355.Spec : Prop :=
  ∀ n, P9781496995604867355.a n = (A132095 n : ℚ)

end A132095

/-!
# A132099: Denominators of Blandin-Diaz compositional Bernoulli numbers (B^Z^2)_1,n.

The programs for A132099, there is no canonical definition to state claims against.
-/

/-! ## A132099.P3632596507821466919

`A088430(A332311(n+1))*A338622(n+1)`
-/

namespace A132099.P3632596507821466919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088430 (A332311 (n + 1)).toNat * A338622 (n + 1)

end

end A132099.P3632596507821466919

