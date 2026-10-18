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
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B006.C002
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
# A348500: a(n) = A348494(A276086(n)).

The programs for A348500, there is no canonical definition to state claims against.
-/

/-! ## A348500.P14057213230093271205

`gcd(A342002(n), A348501(n))`
-/

namespace A348500.P14057213230093271205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A342002 n) (A348501 n)

end

end A348500.P14057213230093271205

/-! ## A348500.P13016135060990799556

`gcd(A026741(A348501(n)), A348502(n))`
-/

namespace A348500.P13016135060990799556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 (A348501 n).toNat) (A348502 n)

end

end A348500.P13016135060990799556

/-! ## A348500.P14223285227292081046

`A348492(A276086(n))/A328572(n)`
-/

namespace A348500.P14223285227292081046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348492 (A276086 n).toNat : ℚ) / (A328572 n : ℚ)

end

end A348500.P14223285227292081046

/-! ## A348500.P770878909711967031

`gcd(A348502(n)², A348492(A276086(n)))`
-/

namespace A348500.P770878909711967031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A348502 n ^ 2) (A348492 (A276086 n).toNat)

end

end A348500.P770878909711967031

/-! ## A348500.P12272166591495882700

`A348494(A276086(n)%A176876(n+1))`
-/

namespace A348500.P12272166591495882700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348494 (Int.tmod (A276086 n) (A176876 (n + 1))).toNat

end

end A348500.P12272166591495882700

/-!
# A348501: a(n) = A348496(A276086(n)), where A348496(n) = A348495(n) / A003557(n).

The programs for A348501, there is no canonical definition to state claims against.
-/

/-! ## A348501.P16232126763047677745

`A348496(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348501.P16232126763047677745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348496 (A276086 n).toNat

end

end A348501.P16232126763047677745

/-! ## A348501.P275416460206007788

`A348496(A351225(n)+n)`
-/

namespace A348501.P275416460206007788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348496 (A351225 n + (n : ℤ)).toNat

end

end A348501.P275416460206007788

/-! ## A348501.P12351393656709625344

`A348496(A328580(n)+A328476(n))`
-/

namespace A348501.P12351393656709625344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348496 (A328580 n + A328476 n).toNat

end

end A348501.P12351393656709625344

/-! ## A348501.P8412509355698392554

`A348496(A328844(n)+A328843(n))`
-/

namespace A348501.P8412509355698392554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348496 (A328844 n + A328843 n).toNat

end

end A348501.P8412509355698392554

/-! ## A348501.P9871670925222609921

`A348495(A276086(n))/A328572(n)`
-/

namespace A348501.P9871670925222609921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348495 (A276086 n).toNat : ℚ) / (A328572 n : ℚ)

end

end A348501.P9871670925222609921

/-! ## A348501.P782479603256054542

`gcd(A347126(n), A347128(A276086(n)))`
-/

namespace A348501.P782479603256054542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A347126 n) (A347128 (A276086 n).toNat)

end

end A348501.P782479603256054542

/-!
# A348502: a(n) = A348498(A276086(n)).

The programs for A348502, there is no canonical definition to state claims against.
-/

/-! ## A348502.P17248974182733576859

`A348498(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348502.P17248974182733576859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348498 (A276086 n).toNat

end

end A348502.P17248974182733576859

/-! ## A348502.P1336325315812687295

`gcd(A342002(n), A347126(n))`
-/

namespace A348502.P1336325315812687295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A342002 n) (A347126 n)

end

end A348502.P1336325315812687295

/-! ## A348502.P6020934735161195335

`A342002(n/A000034(A324655(n)))`
-/

namespace A348502.P6020934735161195335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 (SequenceMachineLib.roundAway ((n : ℚ) / (A000034 (A324655 n).toNat : ℚ))).toNat

end

end A348502.P6020934735161195335

/-! ## A348502.P5866137884676108110

`A347126(n)/A026741(A324655(n))`
-/

namespace A348502.P5866137884676108110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347126 n : ℚ) / (A026741 (A324655 n).toNat : ℚ)

end

end A348502.P5866137884676108110

/-! ## A348502.P14992051942382957970

`A342002(n/A158464(A278226(n)))`
-/

namespace A348502.P14992051942382957970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 (SequenceMachineLib.roundAway ((n : ℚ) / (A158464 (A278226 n).toNat : ℚ))).toNat

end

end A348502.P14992051942382957970

/-!
# A348503: a(n) = gcd(sigma(n), usigma(n)), where sigma is the sum of divisors function, A000203, and usigma is the unitary sigma, A034448.

The programs for A348503, the canonical program `A348503.P10322559957490935708` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348503 has offset 1).

The definition of A348503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348503.P1183957647067898739

`A000203(n+1)/A348504(n+1)`
-/

namespace A348503.P1183957647067898739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348504 (n + 1) : ℚ)

end

end A348503.P1183957647067898739

namespace A348503

/-- `A000203(n+1)/A348504(n+1)` -/
def P1183957647067898739.Spec : Prop :=
  ∀ n, P1183957647067898739.a n = (A348503 (n + 1) : ℚ)

end A348503

/-! ## A348503.P6085700263614257657

`A034448(n+1)/A348505(n+1)`
-/

namespace A348503.P6085700263614257657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A348505 (n + 1) : ℚ)

end

end A348503.P6085700263614257657

namespace A348503

/-- `A034448(n+1)/A348505(n+1)` -/
def P6085700263614257657.Spec : Prop :=
  ∀ n, P6085700263614257657.a n = (A348503 (n + 1) : ℚ)

end A348503

/-! ## A348503.P10322559957490935708

`gcd(∑{d}[n+1, #], A048146(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A348503

/-- `gcd(∑{d}[n+1, #], A048146(n+1))` -/
def P10322559957490935708.Spec : Prop :=
  ∀ n, (P10322559957490935708.a n : ℤ) = A348503 (n + 1)

theorem P10322559957490935708.correct : P10322559957490935708.Spec := by
  intro n
  simp only [A348503, Nat.add_sub_cancel]

end A348503

/-! ## A348503.P3448610931766539207

`Δ[A160664(n)]/A348504(n+1)`
-/

namespace A348503.P3448610931766539207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A348504 (n + 1) : ℚ)

end

end A348503.P3448610931766539207

namespace A348503

/-- `Δ[A160664(n)]/A348504(n+1)` -/
def P3448610931766539207.Spec : Prop :=
  ∀ n, P3448610931766539207.a n = (A348503 (n + 1) : ℚ)

end A348503

/-! ## A348503.P17312065981592262270

`gcd(Δ[A160664(n)], A034448(n+1))`
-/

namespace A348503.P17312065981592262270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A034448 (n + 1))

end

end A348503.P17312065981592262270

namespace A348503

/-- `gcd(Δ[A160664(n)], A034448(n+1))` -/
def P17312065981592262270.Spec : Prop :=
  ∀ n, (P17312065981592262270.a n : ℤ) = A348503 (n + 1)

end A348503

/-! ## A348503.P10953606679423681368

`(A345451(n+1)+1)/A348505(n+1)`
-/

namespace A348503.P10953606679423681368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345451 (n + 1) + 1 : ℚ) / (A348505 (n + 1) : ℚ)

end

end A348503.P10953606679423681368

namespace A348503

/-- `(A345451(n+1)+1)/A348505(n+1)` -/
def P10953606679423681368.Spec : Prop :=
  ∀ n, P10953606679423681368.a n = (A348503 (n + 1) : ℚ)

end A348503

/-! ## A348503.P2684208768657248549

`gcd(A088580(n+1)-1, A034448(A000027(n+1)))`
-/

namespace A348503.P2684208768657248549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088580 (n + 1) - 1) (A034448 (A000027 (n + 1)).toNat)

end

end A348503.P2684208768657248549

namespace A348503

/-- `gcd(A088580(n+1)-1, A034448(A000027(n+1)))` -/
def P2684208768657248549.Spec : Prop :=
  ∀ n, (P2684208768657248549.a n : ℤ) = A348503 (n + 1)

end A348503

/-! ## A348503.P15775920650869273395

`(A048146(n+1)+A034448(n+1))/A348504(n+1)`
-/

namespace A348503.P15775920650869273395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048146 (n + 1) + A034448 (n + 1) : ℚ) / (A348504 (n + 1) : ℚ)

end

end A348503.P15775920650869273395

namespace A348503

/-- `(A048146(n+1)+A034448(n+1))/A348504(n+1)` -/
def P15775920650869273395.Spec : Prop :=
  ∀ n, P15775920650869273395.a n = (A348503 (n + 1) : ℚ)

end A348503

/-! ## A348503.P4900853518429008757

`A348047(n+1)*A348048(n+1)/A348504(n+1)`
-/

namespace A348503.P4900853518429008757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348047 (n + 1) * A348048 (n + 1) : ℚ) / (A348504 (n + 1) : ℚ)

end

end A348503.P4900853518429008757

namespace A348503

/-- `A348047(n+1)*A348048(n+1)/A348504(n+1)` -/
def P4900853518429008757.Spec : Prop :=
  ∀ n, P4900853518429008757.a n = (A348503 (n + 1) : ℚ)

end A348503

/-! ## A348503.P11750813603779462524

`gcd(A001065(n+1)+1+n, A048146(A000027(n+1)))`
-/

namespace A348503.P11750813603779462524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001065 (n + 1) + 1 + (n : ℤ)) (A048146 (A000027 (n + 1)).toNat)

end

end A348503.P11750813603779462524

namespace A348503

/-- `gcd(A001065(n+1)+1+n, A048146(A000027(n+1)))` -/
def P11750813603779462524.Spec : Prop :=
  ∀ n, (P11750813603779462524.a n : ℤ) = A348503 (n + 1)

end A348503

/-! ## A348503.P5748583515004201017

`gcd(A064212(n+1), A216627(A000124(n)))`
-/

namespace A348503.P5748583515004201017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064212 (n + 1)) (A216627 (A000124 n).toNat)

end

end A348503.P5748583515004201017

namespace A348503

/-- `gcd(A064212(n+1), A216627(A000124(n)))` -/
def P5748583515004201017.Spec : Prop :=
  ∀ n, (P5748583515004201017.a n : ℤ) = A348503 (n + 1)

end A348503

/-! ## A348503.P8624825929172983038

`A127057(A000124(n))/A348504(n+1)`
-/

namespace A348503.P8624825929172983038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127057 (A000124 n).toNat : ℚ) / (A348504 (n + 1) : ℚ)

end

end A348503.P8624825929172983038

namespace A348503

/-- `A127057(A000124(n))/A348504(n+1)` -/
def P8624825929172983038.Spec : Prop :=
  ∀ n, P8624825929172983038.a n = (A348503 (n + 1) : ℚ)

end A348503

/-! ## A348503.P9722667381995677046

`gcd(A048146(n+1), A127057(A000124(n)))`
-/

namespace A348503.P9722667381995677046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048146 (n + 1)) (A127057 (A000124 n).toNat)

end

end A348503.P9722667381995677046

namespace A348503

/-- `gcd(A048146(n+1), A127057(A000124(n)))` -/
def P9722667381995677046.Spec : Prop :=
  ∀ n, (P9722667381995677046.a n : ℤ) = A348503 (n + 1)

end A348503

/-!
# A348504: a(n) = sigma(n) / gcd(sigma(n), usigma(n)), where sigma is the sum of divisors function, A000203, and usigma is the unitary sigma, A034448.

The programs for A348504, the canonical program `A348504.P8886190148475080709` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348504 has offset 1).

The definition of A348504 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348503, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348504.P8886190148475080709

`A000203(n+1)/A348503(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A348504

/-- `A000203(n+1)/A348503(n+1)` -/
def P8886190148475080709.Spec : Prop :=
  ∀ n, P8886190148475080709.a n = (A348504 (n + 1) : ℚ)

end A348504

/-! ## A348504.P1901694339497622403

`Δ[A160664(n)]/A348503(n+1)`
-/

namespace A348504.P1901694339497622403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348504.P1901694339497622403

namespace A348504

/-- `Δ[A160664(n)]/A348503(n+1)` -/
def P1901694339497622403.Spec : Prop :=
  ∀ n, P1901694339497622403.a n = (A348504 (n + 1) : ℚ)

end A348504

/-! ## A348504.P7904039183377688852

`A245092(2*n+1)/A348503(n+1)`
-/

namespace A348504.P7904039183377688852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (2 * n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348504.P7904039183377688852

namespace A348504

/-- `A245092(2*n+1)/A348503(n+1)` -/
def P7904039183377688852.Spec : Prop :=
  ∀ n, P7904039183377688852.a n = (A348504 (n + 1) : ℚ)

end A348504

/-! ## A348504.P1952918532783232638

`floor(A064987(n+1)/(n+1))/A348503(n+1)`
-/

namespace A348504.P1952918532783232638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A064987 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348504.P1952918532783232638

namespace A348504

/-- `floor(A064987(n+1)/(n+1))/A348503(n+1)` -/
def P1952918532783232638.Spec : Prop :=
  ∀ n, P1952918532783232638.a n = (A348504 (n + 1) : ℚ)

end A348504

/-! ## A348504.P17875674330769873617

`(A051612(n+1)+A000010(n+1))/A348503(n+1)`
-/

namespace A348504.P17875674330769873617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051612 (n + 1) + A000010 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348504.P17875674330769873617

namespace A348504

/-- `(A051612(n+1)+A000010(n+1))/A348503(n+1)` -/
def P17875674330769873617.Spec : Prop :=
  ∀ n, P17875674330769873617.a n = (A348504 (n + 1) : ℚ)

end A348504

/-! ## A348504.P14987049556951072524

`(A048146(n+1)+A034448(n+1))/A348503(n+1)`
-/

namespace A348504.P14987049556951072524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048146 (n + 1) + A034448 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348504.P14987049556951072524

namespace A348504

/-- `(A048146(n+1)+A034448(n+1))/A348503(n+1)` -/
def P14987049556951072524.Spec : Prop :=
  ∀ n, P14987049556951072524.a n = (A348504 (n + 1) : ℚ)

end A348504

/-! ## A348504.P6753509656116950574

`A348505(n+1)+A048146(n+1)/A348503(n+1)`
-/

namespace A348504.P6753509656116950574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348505 (n + 1) : ℚ) + (A048146 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348504.P6753509656116950574

namespace A348504

/-- `A348505(n+1)+A048146(n+1)/A348503(n+1)` -/
def P6753509656116950574.Spec : Prop :=
  ∀ n, P6753509656116950574.a n = (A348504 (n + 1) : ℚ)

end A348504

/-! ## A348504.P13216004479783387481

`A000203(n+1)/A034448(n+1)*A348505(n+1)`
-/

namespace A348504.P13216004479783387481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A034448 (n + 1) : ℚ) * (A348505 (n + 1) : ℚ)

end

end A348504.P13216004479783387481

namespace A348504

/-- `A000203(n+1)/A034448(n+1)*A348505(n+1)` -/
def P13216004479783387481.Spec : Prop :=
  ∀ n, P13216004479783387481.a n = (A348504 (n + 1) : ℚ)

end A348504

/-! ## A348504.P16128379492418894771

`A348047(n+1)*A348048(n+1)/A348503(n+1)`
-/

namespace A348504.P16128379492418894771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348047 (n + 1) * A348048 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348504.P16128379492418894771

namespace A348504

/-- `A348047(n+1)*A348048(n+1)/A348503(n+1)` -/
def P16128379492418894771.Spec : Prop :=
  ∀ n, P16128379492418894771.a n = (A348504 (n + 1) : ℚ)

end A348504

/-! ## A348504.P14285362069254576598

`A348946(n+1)/A348503(n+1)*A348948(n+1)`
-/

namespace A348504.P14285362069254576598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348946 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ) * (A348948 (n + 1) : ℚ)

end

end A348504.P14285362069254576598

namespace A348504

/-- `A348946(n+1)/A348503(n+1)*A348948(n+1)` -/
def P14285362069254576598.Spec : Prop :=
  ∀ n, P14285362069254576598.a n = (A348504 (n + 1) : ℚ)

end A348504

/-! ## A348504.P3262530474421131597

`A000027(A064987(n+1)/(n+1))/A348503(n+1)`
-/

namespace A348504.P3262530474421131597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348504.P3262530474421131597

namespace A348504

/-- `A000027(A064987(n+1)/(n+1))/A348503(n+1)` -/
def P3262530474421131597.Spec : Prop :=
  ∀ n, P3262530474421131597.a n = (A348504 (n + 1) : ℚ)

end A348504

/-! ## A348504.P6379337216946081952

`A064987(n+1)/gcd(A064971(n+1), A064987(n+1))`
-/

namespace A348504.P6379337216946081952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (Int.gcd (A064971 (n + 1)) (A064987 (n + 1)) : ℚ)

end

end A348504.P6379337216946081952

namespace A348504

/-- `A064987(n+1)/gcd(A064971(n+1), A064987(n+1))` -/
def P6379337216946081952.Spec : Prop :=
  ∀ n, P6379337216946081952.a n = (A348504 (n + 1) : ℚ)

end A348504

/-! ## A348504.P4013209676488359049

`lcm(A034448(n+1), A143348(n+1))/A034448(n+1)`
-/

namespace A348504.P4013209676488359049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A034448 (n + 1)) (A143348 (n + 1)) : ℚ) / (A034448 (n + 1) : ℚ)

end

end A348504.P4013209676488359049

namespace A348504

/-- `lcm(A034448(n+1), A143348(n+1))/A034448(n+1)` -/
def P4013209676488359049.Spec : Prop :=
  ∀ n, P4013209676488359049.a n = (A348504 (n + 1) : ℚ)

end A348504

/-! ## A348504.P13512892319501626340

`A245093(∑[n+1])/A348503(n+1)`
-/

namespace A348504.P13512892319501626340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245093 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348504.P13512892319501626340

namespace A348504

/-- `A245093(∑[n+1])/A348503(n+1)` -/
def P13512892319501626340.Spec : Prop :=
  ∀ n, P13512892319501626340.a n = (A348504 (n + 1) : ℚ)

end A348504

/-! ## A348504.P16248249915222482499

`A127057(A000124(n))/A348503(n+1)`
-/

namespace A348504.P16248249915222482499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127057 (A000124 n).toNat : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348504.P16248249915222482499

namespace A348504

/-- `A127057(A000124(n))/A348503(n+1)` -/
def P16248249915222482499.Spec : Prop :=
  ∀ n, P16248249915222482499.a n = (A348504 (n + 1) : ℚ)

end A348504

/-!
# A348505: a(n) = usigma(n) / gcd(sigma(n), usigma(n)), where sigma is the sum of divisors function, A000203, and usigma is the unitary sigma, A034448.

The programs for A348505, the canonical program `A348505.P18197901835979243919` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348505 has offset 1).

The definition of A348505 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A348503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348505.P18197901835979243919

`A034448(n+1)/A348503(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A348505

/-- `A034448(n+1)/A348503(n+1)` -/
def P18197901835979243919.Spec : Prop :=
  ∀ n, P18197901835979243919.a n = (A348505 (n + 1) : ℚ)

end A348505

/-! ## A348505.P10314074488942521294

`(A345451(n+1)+1)/A348503(n+1)`
-/

namespace A348505.P10314074488942521294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345451 (n + 1) + 1 : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348505.P10314074488942521294

namespace A348505

/-- `(A345451(n+1)+1)/A348503(n+1)` -/
def P10314074488942521294.Spec : Prop :=
  ∀ n, P10314074488942521294.a n = (A348505 (n + 1) : ℚ)

end A348505

/-! ## A348505.P9772868712983140212

`(A034460(n+1)+1+n)/A348503(n+1)`
-/

namespace A348505.P9772868712983140212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034460 (n + 1) + 1 + (n : ℤ) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348505.P9772868712983140212

namespace A348505

/-- `(A034460(n+1)+1+n)/A348503(n+1)` -/
def P9772868712983140212.Spec : Prop :=
  ∀ n, P9772868712983140212.a n = (A348505 (n + 1) : ℚ)

end A348505

/-! ## A348505.P1925522596371547147

`(A000203(n+1)-A048146(n+1))/A348503(n+1)`
-/

namespace A348505.P1925522596371547147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A048146 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348505.P1925522596371547147

namespace A348505

/-- `(A000203(n+1)-A048146(n+1))/A348503(n+1)` -/
def P1925522596371547147.Spec : Prop :=
  ∀ n, P1925522596371547147.a n = (A348505 (n + 1) : ℚ)

end A348505

/-! ## A348505.P10658275359207628049

`(A003959(n+1)-A348732(n+1))/A348503(n+1)`
-/

namespace A348505.P10658275359207628049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) - A348732 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348505.P10658275359207628049

namespace A348505

/-- `(A003959(n+1)-A348732(n+1))/A348503(n+1)` -/
def P10658275359207628049.Spec : Prop :=
  ∀ n, P10658275359207628049.a n = (A348505 (n + 1) : ℚ)

end A348505

/-! ## A348505.P18256706262041410701

`A348504(n+1)-A048146(n+1)/A348503(n+1)`
-/

namespace A348505.P18256706262041410701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348504 (n + 1) : ℚ) - (A048146 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348505.P18256706262041410701

namespace A348505

/-- `A348504(n+1)-A048146(n+1)/A348503(n+1)` -/
def P18256706262041410701.Spec : Prop :=
  ∀ n, P18256706262041410701.a n = (A348505 (n + 1) : ℚ)

end A348505

/-! ## A348505.P5161407622014334247

`A034448(n+1)/A000203(n+1)*A348504(n+1)`
-/

namespace A348505.P5161407622014334247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A348504 (n + 1) : ℚ)

end

end A348505.P5161407622014334247

namespace A348505

/-- `A034448(n+1)/A000203(n+1)*A348504(n+1)` -/
def P5161407622014334247.Spec : Prop :=
  ∀ n, P5161407622014334247.a n = (A348505 (n + 1) : ℚ)

end A348505

/-! ## A348505.P6955386418882315024

`A348733(n+1)/A348503(n+1)*A348735(n+1)`
-/

namespace A348505.P6955386418882315024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348733 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ) * (A348735 (n + 1) : ℚ)

end

end A348505.P6955386418882315024

namespace A348505

/-- `A348733(n+1)/A348503(n+1)*A348735(n+1)` -/
def P6955386418882315024.Spec : Prop :=
  ∀ n, P6955386418882315024.a n = (A348505 (n + 1) : ℚ)

end A348505

/-! ## A348505.P9810904524395730601

`A034448(n+1)/gcd(A034448(n+1), A048146(n+1))`
-/

namespace A348505.P9810904524395730601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (Int.gcd (A034448 (n + 1)) (A048146 (n + 1)) : ℚ)

end

end A348505.P9810904524395730601

namespace A348505

/-- `A034448(n+1)/gcd(A034448(n+1), A048146(n+1))` -/
def P9810904524395730601.Spec : Prop :=
  ∀ n, P9810904524395730601.a n = (A348505 (n + 1) : ℚ)

end A348505

/-! ## A348505.P12384006486644977677

`A064971(n+1)/gcd(A064971(n+1), A064987(n+1))`
-/

namespace A348505.P12384006486644977677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (Int.gcd (A064971 (n + 1)) (A064987 (n + 1)) : ℚ)

end

end A348505.P12384006486644977677

namespace A348505

/-- `A064971(n+1)/gcd(A064971(n+1), A064987(n+1))` -/
def P12384006486644977677.Spec : Prop :=
  ∀ n, P12384006486644977677.a n = (A348505 (n + 1) : ℚ)

end A348505

/-! ## A348505.P5942582205314109335

`abs(A048146(n+1)-A245092(2*n+1))/A348503(n+1)`
-/

namespace A348505.P5942582205314109335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A048146 (n + 1) - A245092 (2 * n + 1)| : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348505.P5942582205314109335

namespace A348505

/-- `abs(A048146(n+1)-A245092(2*n+1))/A348503(n+1)` -/
def P5942582205314109335.Spec : Prop :=
  ∀ n, P5942582205314109335.a n = (A348505 (n + 1) : ℚ)

end A348505

/-! ## A348505.P8682349233841940023

`(A001065(n+1)+1+n-A048146(n+1))/A348503(n+1)`
-/

namespace A348505.P8682349233841940023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + 1 + (n : ℤ) - A048146 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348505.P8682349233841940023

namespace A348505

/-- `(A001065(n+1)+1+n-A048146(n+1))/A348503(n+1)` -/
def P8682349233841940023.Spec : Prop :=
  ∀ n, P8682349233841940023.a n = (A348505 (n + 1) : ℚ)

end A348505

/-! ## A348505.P17320918969211939028

`abs(A048146(n+1)-A064987(n+1)/(n+1))/A348503(n+1)`
-/

namespace A348505.P17320918969211939028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A048146 (n + 1) : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)| / (A348503 (n + 1) : ℚ)

end

end A348505.P17320918969211939028

namespace A348505

/-- `abs(A048146(n+1)-A064987(n+1)/(n+1))/A348503(n+1)` -/
def P17320918969211939028.Spec : Prop :=
  ∀ n, P17320918969211939028.a n = (A348505 (n + 1) : ℚ)

end A348505

/-! ## A348505.P14167631559643914792

`(A051612(n+1)+A000010(n+1)-A048146(n+1))/A348503(n+1)`
-/

namespace A348505.P14167631559643914792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051612 (n + 1) + A000010 (n + 1) - A048146 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348505.P14167631559643914792

namespace A348505

/-- `(A051612(n+1)+A000010(n+1)-A048146(n+1))/A348503(n+1)` -/
def P14167631559643914792.Spec : Prop :=
  ∀ n, P14167631559643914792.a n = (A348505 (n + 1) : ℚ)

end A348505

/-! ## A348505.P16045190606190053822

`A117658(A064549(n+1))/A348503(n+1)`
-/

namespace A348505.P16045190606190053822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117658 (A064549 (n + 1)).toNat : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348505.P16045190606190053822

namespace A348505

/-- `A117658(A064549(n+1))/A348503(n+1)` -/
def P16045190606190053822.Spec : Prop :=
  ∀ n, P16045190606190053822.a n = (A348505 (n + 1) : ℚ)

end A348505

/-!
# A348506: Numbers k such that sigma(k) is a multiple of usigma(k), where sigma is the sum of divisors function, A000203, and usigma is the unitary sigma, A034448.

The programs for A348506, the canonical program `A348506.P12741970557584612085` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348506 has offset 1).

The definition of A348506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348506.P16919174348091103996

`eq[1, A348505(n+1)]+1`
-/

namespace A348506.P16919174348091103996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348505 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348506.P16919174348091103996

namespace A348506

/-- `eq[1, A348505(n+1)]+1` -/
def P16919174348091103996.Spec : Prop :=
  ∀ n, (P16919174348091103996.a n : ℤ) = A348506 (n + 1)

end A348506

/-! ## A348506.P13369204939477497624

`lt[n, A348503(n+1)]+1`
-/

namespace A348506.P13369204939477497624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348506.P13369204939477497624

namespace A348506

/-- `lt[n, A348503(n+1)]+1` -/
def P13369204939477497624.Spec : Prop :=
  ∀ n, (P13369204939477497624.a n : ℤ) = A348506 (n + 1)

end A348506

/-! ## A348506.P13354274434936355414

`record[A348503(n+1)-A034460(n+1)]`
-/

namespace A348506.P13354274434936355414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348503 (n + 1) - A034460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348506.P13354274434936355414

namespace A348506

/-- `record[A348503(n+1)-A034460(n+1)]` -/
def P13354274434936355414.Spec : Prop :=
  ∀ n, P13354274434936355414.a n = A348506 (n + 1)

end A348506

/-! ## A348506.P93684556117634886

`record[A000027(n+1)/A348505(n+1)]`
-/

namespace A348506.P93684556117634886
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A348505 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348506.P93684556117634886

namespace A348506

/-- `record[A000027(n+1)/A348505(n+1)]` -/
def P93684556117634886.Spec : Prop :=
  ∀ n, P93684556117634886.a n = (A348506 (n + 1) : ℚ)

end A348506

/-! ## A348506.P12741970557584612085

`eq[A161942(n+1), A161946(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A348506

/-- `eq[A161942(n+1), A161946(n+1)]+1` -/
def P12741970557584612085.Spec : Prop :=
  ∀ n, (P12741970557584612085.a n : ℤ) = A348506 (n + 1)

theorem P12741970557584612085.correct : P12741970557584612085.Spec := by
  intro n
  simp only [A348506, Nat.add_sub_cancel]

end A348506

/-! ## A348506.P11087616800977165833

`eq[A054977(n), A348505(A065033(2*n))]`
-/

namespace A348506.P11087616800977165833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348505 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348506.P11087616800977165833

namespace A348506

/-- `eq[A054977(n), A348505(A065033(2*n))]` -/
def P11087616800977165833.Spec : Prop :=
  ∀ n, (P11087616800977165833.a n : ℤ) = A348506 (n + 1)

end A348506

/-! ## A348506.P1838725184918388884

`eq[A054977(n), A348505(A123108(2*n))]`
-/

namespace A348506.P1838725184918388884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348505 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348506.P1838725184918388884

namespace A348506

/-- `eq[A054977(n), A348505(A123108(2*n))]` -/
def P1838725184918388884.Spec : Prop :=
  ∀ n, (P1838725184918388884.a n : ℤ) = A348506 (n + 1)

end A348506

/-! ## A348506.P3733700916741663624

`record[(n+1)/A000194(A348504(n+1))]`
-/

namespace A348506.P3733700916741663624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000194 (A348504 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348506.P3733700916741663624

namespace A348506

/-- `record[(n+1)/A000194(A348504(n+1))]` -/
def P3733700916741663624.Spec : Prop :=
  ∀ n, P3733700916741663624.a n = (A348506 (n + 1) : ℚ)

end A348506

/-! ## A348506.P3716717998335633600

`eq[A057427(n), A346736(A105570(n))]`
-/

namespace A348506.P3716717998335633600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346736 (A105570 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348506.P3716717998335633600

namespace A348506

/-- `eq[A057427(n), A346736(A105570(n))]` -/
def P3716717998335633600.Spec : Prop :=
  ∀ n, (P3716717998335633600.a n : ℤ) = A348506 (n + 1)

end A348506

/-!
# A348507: a(n) = A003959(n) - n, where A003959 is multiplicative with a(p^e) = (p+1)^e.

The programs for A348507, the canonical program `A348507.P8468116905144779811` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348507 has offset 1).

The definition of A348507 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348507.P12201933599611008998

`A348508(n+1)+n+1`
-/

namespace A348507.P12201933599611008998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348508 (n + 1) + (n + 1 : ℤ)

end

end A348507.P12201933599611008998

namespace A348507

/-- `A348508(n+1)+n+1` -/
def P12201933599611008998.Spec : Prop :=
  ∀ n, P12201933599611008998.a n = A348507 (n + 1)

end A348507

/-! ## A348507.P8468116905144779811

`A003959(n+1)-(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348507

/-- `A003959(n+1)-(n+1)` -/
def P8468116905144779811.Spec : Prop :=
  ∀ n, P8468116905144779811.a n = A348507 (n + 1)

theorem P8468116905144779811.correct : P8468116905144779811.Spec := by
  intro n
  simp only [A348507, Nat.add_sub_cancel]

end A348507

/-! ## A348507.P4523706765049384519

`A001065(n+1)+A348029(n+1)`
-/

namespace A348507.P4523706765049384519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + A348029 (n + 1)

end

end A348507.P4523706765049384519

namespace A348507

/-- `A001065(n+1)+A348029(n+1)` -/
def P4523706765049384519.Spec : Prop :=
  ∀ n, P4523706765049384519.a n = A348507 (n + 1)

end A348507

/-! ## A348507.P4636538873046834123

`A003415(n+1)+A348970(n+1)`
-/

namespace A348507.P4636538873046834123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + A348970 (n + 1)

end

end A348507.P4636538873046834123

namespace A348507

/-- `A003415(n+1)+A348970(n+1)` -/
def P4636538873046834123.Spec : Prop :=
  ∀ n, P4636538873046834123.a n = A348507 (n + 1)

end A348507

/-! ## A348507.P14762549233522123425

`a(A032742(n+1)-1)*(1+A020639(n+1))+A032742(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A348507.P14762549233522123425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A032742 (n + 1) - 1).toNat * (1 + A020639 (n + 1)) + A032742 (n + 1)

end

end A348507.P14762549233522123425

namespace A348507

/-- `a(A032742(n+1)-1)*(1+A020639(n+1))+A032742(n+1)` -/
def P14762549233522123425.Spec : Prop :=
  ∀ n, P14762549233522123425.a n = A348507 (n + 1)

end A348507

/-! ## A348507.P17544804987671496430

`∑{d}[n+1, A348971(#)]`
-/

namespace A348507.P17544804987671496430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A348971 d

end

end A348507.P17544804987671496430

namespace A348507

/-- `∑{d}[n+1, A348971(#)]` -/
def P17544804987671496430.Spec : Prop :=
  ∀ n, P17544804987671496430.a n = A348507 (n + 1)

end A348507

/-! ## A348507.P10106282288890408375

`sqrt(A167349(n+1))-(n+1)`
-/

namespace A348507.P10106282288890408375
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167349 (n + 1) : ℝ) - (n + 1 : ℝ)

end

end A348507.P10106282288890408375

namespace A348507

/-- `sqrt(A167349(n+1))-(n+1)` -/
def P10106282288890408375.Spec : Prop :=
  ∀ n, P10106282288890408375.a n = (A348507 (n + 1) : ℝ)

end A348507

/-! ## A348507.P15482509954292287748

`A167338(n+1)/(n+1)-(n+1)`
-/

namespace A348507.P15482509954292287748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167338 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A348507.P15482509954292287748

namespace A348507

/-- `A167338(n+1)/(n+1)-(n+1)` -/
def P15482509954292287748.Spec : Prop :=
  ∀ n, P15482509954292287748.a n = (A348507 (n + 1) : ℚ)

end A348507

/-! ## A348507.P6593939717215977130

`A348732(n+1)+A034460(n+1)`
-/

namespace A348507.P6593939717215977130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348732 (n + 1) + A034460 (n + 1)

end

end A348507.P6593939717215977130

namespace A348507

/-- `A348732(n+1)+A034460(n+1)` -/
def P6593939717215977130.Spec : Prop :=
  ∀ n, P6593939717215977130.a n = A348507 (n + 1)

end A348507

/-! ## A348507.P8079700339579223701

`2*A168066(n+1)-A322582(n+1)`
-/

namespace A348507.P8079700339579223701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168066 (n + 1) - A322582 (n + 1)

end

end A348507.P8079700339579223701

namespace A348507

/-- `2*A168066(n+1)-A322582(n+1)` -/
def P8079700339579223701.Spec : Prop :=
  ∀ n, P8079700339579223701.a n = A348507 (n + 1)

end A348507

/-! ## A348507.P11684668487831668157

`∏{d}[n+1, A000203(A014963(#))]-(n+1)`
-/

namespace A348507.P11684668487831668157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000203 (A014963 d).toNat - (n + 1 : ℤ)

end

end A348507.P11684668487831668157

namespace A348507

/-- `∏{d}[n+1, A000203(A014963(#))]-(n+1)` -/
def P11684668487831668157.Spec : Prop :=
  ∀ n, P11684668487831668157.a n = A348507 (n + 1)

end A348507

/-! ## A348507.P11713276954167249641

`∑{d}[n+1, A023900(#)*A349141((n+1)/#)]`
-/

namespace A348507.P11713276954167249641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A349141 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348507.P11713276954167249641

namespace A348507

/-- `∑{d}[n+1, A023900(#)*A349141((n+1)/#)]` -/
def P11713276954167249641.Spec : Prop :=
  ∀ n, P11713276954167249641.a n = A348507 (n + 1)

end A348507

/-! ## A348507.P17064630710614082069

`∑{d}[n+1, A055615(#)*A349140((n+1)/#)]`
-/

namespace A348507.P17064630710614082069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A349140 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348507.P17064630710614082069

namespace A348507

/-- `∑{d}[n+1, A055615(#)*A349140((n+1)/#)]` -/
def P17064630710614082069.Spec : Prop :=
  ∀ n, P17064630710614082069.a n = A348507 (n + 1)

end A348507

/-! ## A348507.P80530596913069263

`∑{d}[n+1, A323363(#)*A349142((n+1)/#)]`
-/

namespace A348507.P80530596913069263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323363 d * A349142 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348507.P80530596913069263

namespace A348507

/-- `∑{d}[n+1, A323363(#)*A349142((n+1)/#)]` -/
def P80530596913069263.Spec : Prop :=
  ∀ n, P80530596913069263.a n = A348507 (n + 1)

end A348507

/-! ## A348507.P15043625475512641016

`∑{d}[n+1, A328722(#)*A349143((n+1)/#)]`
-/

namespace A348507.P15043625475512641016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328722 d * A349143 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348507.P15043625475512641016

namespace A348507

/-- `∑{d}[n+1, A328722(#)*A349143((n+1)/#)]` -/
def P15043625475512641016.Spec : Prop :=
  ∀ n, P15043625475512641016.a n = A348507 (n + 1)

end A348507

/-! ## A348507.P9415312011169441461

`A034460(n+1)+A348029(n+1)+A048146(n+1)`
-/

namespace A348507.P9415312011169441461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + (A348029 (n + 1) + A048146 (n + 1))

end

end A348507.P9415312011169441461

namespace A348507

/-- `A034460(n+1)+A348029(n+1)+A048146(n+1)` -/
def P9415312011169441461.Spec : Prop :=
  ∀ n, P9415312011169441461.a n = A348507 (n + 1)

end A348507

/-! ## A348507.P17503059528109541275

`A322582(n+1)+A348975(n+1)+A348970(n+1)`
-/

namespace A348507.P17503059528109541275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322582 (n + 1) + (A348975 (n + 1) + A348970 (n + 1))

end

end A348507.P17503059528109541275

namespace A348507

/-- `A322582(n+1)+A348975(n+1)+A348970(n+1)` -/
def P17503059528109541275.Spec : Prop :=
  ∀ n, P17503059528109541275.a n = A348507 (n + 1)

end A348507

/-! ## A348507.P12964989964771167690

`(A166643(n+1)-A166624(n+1))/A165824(n+1)`
-/

namespace A348507.P12964989964771167690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166643 (n + 1) - A166624 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A348507.P12964989964771167690

namespace A348507

/-- `(A166643(n+1)-A166624(n+1))/A165824(n+1)` -/
def P12964989964771167690.Spec : Prop :=
  ∀ n, P12964989964771167690.a n = (A348507 (n + 1) : ℚ)

end A348507

/-! ## A348507.P1296414324991936622

`(A166644(n+1)-A166625(n+1))/A165825(n+1)`
-/

namespace A348507.P1296414324991936622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166644 (n + 1) - A166625 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)

end

end A348507.P1296414324991936622

namespace A348507

/-- `(A166644(n+1)-A166625(n+1))/A165825(n+1)` -/
def P1296414324991936622.Spec : Prop :=
  ∀ n, P1296414324991936622.a n = (A348507 (n + 1) : ℚ)

end A348507

/-! ## A348507.P11881295872158898620

`(A166645(n+1)-A166626(n+1))/A165826(n+1)`
-/

namespace A348507.P11881295872158898620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166645 (n + 1) - A166626 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ)

end

end A348507.P11881295872158898620

namespace A348507

/-- `(A166645(n+1)-A166626(n+1))/A165826(n+1)` -/
def P11881295872158898620.Spec : Prop :=
  ∀ n, P11881295872158898620.a n = (A348507 (n + 1) : ℚ)

end A348507

/-!
# A348508: a(n) = A003959(n) - 2*n, where A003959 is multiplicative with a(p^e) = (p+1)^e.

The programs for A348508, the canonical program `A348508.P7080885370460745572` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348508 has offset 1).

The definition of A348508 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348508.P9003671016016312762

`A348507(n+1)-(n+1)`
-/

namespace A348508.P9003671016016312762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (n + 1) - (n + 1 : ℤ)

end

end A348508.P9003671016016312762

namespace A348508

/-- `A348507(n+1)-(n+1)` -/
def P9003671016016312762.Spec : Prop :=
  ∀ n, P9003671016016312762.a n = A348508 (n + 1)

end A348508

/-! ## A348508.P7080885370460745572

`A003959(n+1)-2*(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348508

/-- `A003959(n+1)-2*(n+1)` -/
def P7080885370460745572.Spec : Prop :=
  ∀ n, P7080885370460745572.a n = A348508 (n + 1)

theorem P7080885370460745572.correct : P7080885370460745572.Spec := by
  intro n
  simp only [A348508, Nat.add_sub_cancel]

end A348508

/-! ## A348508.P7352791292622434368

`A168036(n+1)+A348970(n+1)`
-/

namespace A348508.P7352791292622434368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (n + 1) + A348970 (n + 1)

end

end A348508.P7352791292622434368

namespace A348508

/-- `A168036(n+1)+A348970(n+1)` -/
def P7352791292622434368.Spec : Prop :=
  ∀ n, P7352791292622434368.a n = A348508 (n + 1)

end A348508

/-! ## A348508.P5725089705091095538

`A348029(n+1)-A033879(n+1)`
-/

namespace A348508.P5725089705091095538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348029 (n + 1) - A033879 (n + 1)

end

end A348508.P5725089705091095538

namespace A348508

/-- `A348029(n+1)-A033879(n+1)` -/
def P5725089705091095538.Spec : Prop :=
  ∀ n, P5725089705091095538.a n = A348508 (n + 1)

end A348508

/-! ## A348508.P5800146592612343604

`∑{d}[n+1, A348971(#)]-(n+1)`
-/

namespace A348508.P5800146592612343604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A348971 d - (n + 1 : ℤ)

end

end A348508.P5800146592612343604

namespace A348508

/-- `∑{d}[n+1, A348971(#)]-(n+1)` -/
def P5800146592612343604.Spec : Prop :=
  ∀ n, P5800146592612343604.a n = A348508 (n + 1)

end A348508

/-! ## A348508.P7884028365596280558

`A348029(n+1)+A033880(n+1)`
-/

namespace A348508.P7884028365596280558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348029 (n + 1) + A033880 (n + 1)

end

end A348508.P7884028365596280558

namespace A348508

/-- `A348029(n+1)+A033880(n+1)` -/
def P7884028365596280558.Spec : Prop :=
  ∀ n, P7884028365596280558.a n = A348508 (n + 1)

end A348508

/-! ## A348508.P17587682720090224877

`A348732(n+1)+A129468(n+1)`
-/

namespace A348508.P17587682720090224877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348732 (n + 1) + A129468 (n + 1)

end

end A348508.P17587682720090224877

namespace A348508

/-- `A348732(n+1)+A129468(n+1)` -/
def P17587682720090224877.Spec : Prop :=
  ∀ n, P17587682720090224877.a n = A348508 (n + 1)

end A348508

/-! ## A348508.P15904871971187322821

`A348970(n+1)+A348975(n+1)-A003958(n+1)`
-/

namespace A348508.P15904871971187322821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348970 (n + 1) + (A348975 (n + 1) - A003958 (n + 1))

end

end A348508.P15904871971187322821

namespace A348508

/-- `A348970(n+1)+A348975(n+1)-A003958(n+1)` -/
def P15904871971187322821.Spec : Prop :=
  ∀ n, P15904871971187322821.a n = A348508 (n + 1)

end A348508

/-! ## A348508.P7686670522095870453

`A064478(n+1)-(A181440(2*n+1)+1)`
-/

namespace A348508.P7686670522095870453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064478 (n + 1) - (A181440 (2 * n + 1) + 1)

end

end A348508.P7686670522095870453

namespace A348508

/-- `A064478(n+1)-(A181440(2*n+1)+1)` -/
def P7686670522095870453.Spec : Prop :=
  ∀ n, P7686670522095870453.a n = A348508 (n + 1)

end A348508

/-!
# A348509: a(n) is the numerator of the harmonic mean of the divisors of A003961(n).

The programs for A348509, the canonical program `A348509.P17820867973263177752` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348509 has offset 1).

The definition of A348509 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A099377, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348509.P16647937166032452255

`A336845(n+1)/A336846(n+1)`
-/

namespace A348509.P16647937166032452255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (n + 1) : ℚ) / (A336846 (n + 1) : ℚ)

end

end A348509.P16647937166032452255

namespace A348509

/-- `A336845(n+1)/A336846(n+1)` -/
def P16647937166032452255.Spec : Prop :=
  ∀ n, P16647937166032452255.a n = (A348509 (n + 1) : ℚ)

end A348509

/-! ## A348509.P17820867973263177752

`A099377(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A348509

/-- `A099377(A003961(n+1))` -/
def P17820867973263177752.Spec : Prop :=
  ∀ n, P17820867973263177752.a n = A348509 (n + 1)

theorem P17820867973263177752.correct : P17820867973263177752.Spec := by
  intro n
  simp only [A348509, Nat.add_sub_cancel]

end A348509

/-! ## A348509.P1679835689768087578

`A336845(n+1)/(A003973(n+1)-A336847(n+1))`
-/

namespace A348509.P1679835689768087578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (n + 1) : ℚ) / (A003973 (n + 1) - A336847 (n + 1) : ℚ)

end

end A348509.P1679835689768087578

namespace A348509

/-- `A336845(n+1)/(A003973(n+1)-A336847(n+1))` -/
def P1679835689768087578.Spec : Prop :=
  ∀ n, P1679835689768087578.a n = (A348509 (n + 1) : ℚ)

end A348509

/-! ## A348509.P3264109942821933632

`A336845(n+1)/A003973(n+1)*A336848(n+1)`
-/

namespace A348509.P3264109942821933632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (n + 1) : ℚ) / (A003973 (n + 1) : ℚ) * (A336848 (n + 1) : ℚ)

end

end A348509.P3264109942821933632

namespace A348509

/-- `A336845(n+1)/A003973(n+1)*A336848(n+1)` -/
def P3264109942821933632.Spec : Prop :=
  ∀ n, P3264109942821933632.a n = (A348509 (n + 1) : ℚ)

end A348509

/-! ## A348509.P6424618854843831520

`A099377(A253885(n)+1)`
-/

namespace A348509.P6424618854843831520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (A253885 n + 1).toNat

end

end A348509.P6424618854843831520

namespace A348509

/-- `A099377(A253885(n)+1)` -/
def P6424618854843831520.Spec : Prop :=
  ∀ n, P6424618854843831520.a n = A348509 (n + 1)

end A348509

/-! ## A348509.P9308147474070202622

`A099377(or(1, A253885(n)))`
-/

namespace A348509.P9308147474070202622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (Int.lor 1 (A253885 n)).toNat

end

end A348509.P9308147474070202622

namespace A348509

/-- `A099377(or(1, A253885(n)))` -/
def P9308147474070202622.Spec : Prop :=
  ∀ n, P9308147474070202622.a n = A348509 (n + 1)

end A348509

/-! ## A348509.P12166844979058026360

`A099377(xor(1, A253885(n)))`
-/

namespace A348509.P12166844979058026360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (Int.xor 1 (A253885 n)).toNat

end

end A348509.P12166844979058026360

namespace A348509

/-- `A099377(xor(1, A253885(n)))` -/
def P12166844979058026360.Spec : Prop :=
  ∀ n, P12166844979058026360.a n = A348509 (n + 1)

end A348509

/-! ## A348509.P17045616268883940014

`A099377(A243501(n+1)-1)`
-/

namespace A348509.P17045616268883940014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (A243501 (n + 1) - 1).toNat

end

end A348509.P17045616268883940014

namespace A348509

/-- `A099377(A243501(n+1)-1)` -/
def P17045616268883940014.Spec : Prop :=
  ∀ n, P17045616268883940014.a n = A348509 (n + 1)

end A348509

/-! ## A348509.P1471802844163913829

`A099377(A249734(n+1)/3)`
-/

namespace A348509.P1471802844163913829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (SequenceMachineLib.roundAway ((A249734 (n + 1) : ℚ) / 3)).toNat

end

end A348509.P1471802844163913829

namespace A348509

/-- `A099377(A249734(n+1)/3)` -/
def P1471802844163913829.Spec : Prop :=
  ∀ n, P1471802844163913829.a n = A348509 (n + 1)

end A348509

/-! ## A348509.P15542663115241203501

`A099377(A191002(n+1)/(n+1))`
-/

namespace A348509.P15542663115241203501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (SequenceMachineLib.roundAway ((A191002 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A348509.P15542663115241203501

namespace A348509

/-- `A099377(A191002(n+1)/(n+1))` -/
def P15542663115241203501.Spec : Prop :=
  ∀ n, P15542663115241203501.a n = A348509 (n + 1)

end A348509

/-! ## A348509.P3945743018138059304

`A038040(A003961(n+1))/A336846(n+1)`
-/

namespace A348509.P3945743018138059304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (A003961 (n + 1)).toNat : ℚ) / (A336846 (n + 1) : ℚ)

end

end A348509.P3945743018138059304

namespace A348509

/-- `A038040(A003961(n+1))/A336846(n+1)` -/
def P3945743018138059304.Spec : Prop :=
  ∀ n, P3945743018138059304.a n = (A348509 (n + 1) : ℚ)

end A348509

/-! ## A348509.P1642714499421319605

`A099377(A336845(n+1)/A000005(n+1))`
-/

namespace A348509.P1642714499421319605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (SequenceMachineLib.roundAway ((A336845 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ))).toNat

end

end A348509.P1642714499421319605

namespace A348509

/-- `A099377(A336845(n+1)/A000005(n+1))` -/
def P1642714499421319605.Spec : Prop :=
  ∀ n, P1642714499421319605.a n = A348509 (n + 1)

end A348509

/-! ## A348509.P6987598795605049774

`A099377(A097246((n+1)²))`
-/

namespace A348509.P6987598795605049774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (A097246 ((n + 1) ^ 2)).toNat

end

end A348509.P6987598795605049774

namespace A348509

/-- `A099377(A097246((n+1)²))` -/
def P6987598795605049774.Spec : Prop :=
  ∀ n, P6987598795605049774.a n = A348509 (n + 1)

end A348509

/-!
# A348510: a(n) = A099377(n) - n, where A099377(n) is the numerator of the harmonic mean of the divisors of n.

The programs for A348510, the canonical program `A348510.P5400953250786089322` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348510 has offset 1).

The definition of A348510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348510.P9117605113874141124

`A099377(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348510.P9117605113874141124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 (n + 1) - (n + 1 : ℤ)

end

end A348510.P9117605113874141124

namespace A348510

/-- `A099377(n+1)-(n+1)` -/
def P9117605113874141124.Spec : Prop :=
  ∀ n, P9117605113874141124.a n = A348510 (n + 1)

end A348510

/-! ## A348510.P11067910631970653945

`A057021(n+1)*A348968(n+1)-(n+1)`
-/

namespace A348510.P11067910631970653945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1) * A348968 (n + 1) - (n + 1 : ℤ)

end

end A348510.P11067910631970653945

namespace A348510

/-- `A057021(n+1)*A348968(n+1)-(n+1)` -/
def P11067910631970653945.Spec : Prop :=
  ∀ n, P11067910631970653945.a n = A348510 (n + 1)

end A348510

/-! ## A348510.P5400953250786089322

`A038040(n+1)/A324121(n+1)-(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A348510

/-- `A038040(n+1)/A324121(n+1)-(n+1)` -/
def P5400953250786089322.Spec : Prop :=
  ∀ n, P5400953250786089322.a n = (A348510 (n + 1) : ℚ)

end A348510

/-! ## A348510.P2419758869647869511

`(n+1)*A000005(n+1)/A324121(n+1)-(n+1)`
-/

namespace A348510.P2419758869647869511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A000005 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)) - (n + 1 : ℚ)

end

end A348510.P2419758869647869511

namespace A348510

/-- `(n+1)*A000005(n+1)/A324121(n+1)-(n+1)` -/
def P2419758869647869511.Spec : Prop :=
  ∀ n, P2419758869647869511.a n = (A348510 (n + 1) : ℚ)

end A348510

/-! ## A348510.P7809348930133339802

`A001478(n+1)+A038040(n+1)/A324121(n+1)`
-/

namespace A348510.P7809348930133339802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001478 (n + 1) : ℚ) + (A038040 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A348510.P7809348930133339802

namespace A348510

/-- `A001478(n+1)+A038040(n+1)/A324121(n+1)` -/
def P7809348930133339802.Spec : Prop :=
  ∀ n, P7809348930133339802.a n = (A348510 (n + 1) : ℚ)

end A348510

/-! ## A348510.P845063046017936869

`A001478(n+1)+(n+1)*A000005(n+1)/A324121(n+1)`
-/

namespace A348510.P845063046017936869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001478 (n + 1) : ℚ) + (n + 1 : ℚ) * ((A000005 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ))

end

end A348510.P845063046017936869

namespace A348510

/-- `A001478(n+1)+(n+1)*A000005(n+1)/A324121(n+1)` -/
def P845063046017936869.Spec : Prop :=
  ∀ n, P845063046017936869.a n = (A348510 (n + 1) : ℚ)

end A348510

/-! ## A348510.P11647199975296033001

`A001478(n+1)+(A094471(n+1)+A000203(n+1))/A324121(n+1)`
-/

namespace A348510.P11647199975296033001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001478 (n + 1) : ℚ) + (A094471 (n + 1) + A000203 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A348510.P11647199975296033001

namespace A348510

/-- `A001478(n+1)+(A094471(n+1)+A000203(n+1))/A324121(n+1)` -/
def P11647199975296033001.Spec : Prop :=
  ∀ n, P11647199975296033001.a n = (A348510 (n + 1) : ℚ)

end A348510

/-! ## A348510.P2546827026696615261

`A023443(A099377(n+1))-n`
-/

namespace A348510.P2546827026696615261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A099377 (n + 1)).toNat - (n : ℤ)

end

end A348510.P2546827026696615261

namespace A348510

/-- `A023443(A099377(n+1))-n` -/
def P2546827026696615261.Spec : Prop :=
  ∀ n, P2546827026696615261.a n = A348510 (n + 1)

end A348510

/-! ## A348510.P7433197407526327913

`A028310(A099377(n+1))+A001478(n+1)`
-/

namespace A348510.P7433197407526327913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A099377 (n + 1)).toNat + A001478 (n + 1)

end

end A348510.P7433197407526327913

namespace A348510

/-- `A028310(A099377(n+1))+A001478(n+1)` -/
def P7433197407526327913.Spec : Prop :=
  ∀ n, P7433197407526327913.a n = A348510 (n + 1)

end A348510

/-! ## A348510.P4452925073277334003

`A023443((n+1)*A000005(n+1)/A324121(n+1))-n`
-/

namespace A348510.P4452925073277334003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((A000005 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ)))).toNat - (n : ℤ)

end

end A348510.P4452925073277334003

namespace A348510

/-- `A023443((n+1)*A000005(n+1)/A324121(n+1))-n` -/
def P4452925073277334003.Spec : Prop :=
  ∀ n, P4452925073277334003.a n = A348510 (n + 1)

end A348510

/-!
# A348511: Numbers k for which 2k+1 can be obtained with successive prime shifts towards larger primes (by iterating A003961, starting from k).

The programs for A348511, the canonical program `A348511.P16032306020572469586` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348511 has offset 1).

The definition of A348511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348511.P2728815114647167493

`eq[A072480(A064216(n+1)), A072480(n)]`
-/

namespace A348511.P2728815114647167493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A064216 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348511.P2728815114647167493

namespace A348511

/-- `eq[A072480(A064216(n+1)), A072480(n)]` -/
def P2728815114647167493.Spec : Prop :=
  ∀ n, (P2728815114647167493.a n : ℤ) = A348511 (n + 1)

end A348511

/-! ## A348511.P15010053303576407008

`eq[A210442(A064216(n+1)), A210442(n)]`
-/

namespace A348511.P15010053303576407008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (A064216 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348511.P15010053303576407008

namespace A348511

/-- `eq[A210442(A064216(n+1)), A210442(n)]` -/
def P15010053303576407008.Spec : Prop :=
  ∀ n, (P15010053303576407008.a n : ℤ) = A348511 (n + 1)

end A348511

/-! ## A348511.P16032306020572469586

`eq[A246277(2*n+3), A246277(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A348511

/-- `eq[A246277(2*n+3), A246277(n+1)]+1` -/
def P16032306020572469586.Spec : Prop :=
  ∀ n, (P16032306020572469586.a n : ℤ) = A348511 (n + 1)

theorem P16032306020572469586.correct : P16032306020572469586.Spec := by
  intro n
  simp only [A348511, Nat.add_sub_cancel]

end A348511

/-! ## A348511.P17367779168952021092

`eq[A322993(2*n+3), A322993(n+1)]+1`
-/

namespace A348511.P17367779168952021092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348511.P17367779168952021092

namespace A348511

/-- `eq[A322993(2*n+3), A322993(n+1)]+1` -/
def P17367779168952021092.Spec : Prop :=
  ∀ n, (P17367779168952021092.a n : ℤ) = A348511 (n + 1)

end A348511

/-! ## A348511.P15678170759417474951

`eq[A324118(2*n+3), A324118(n+1)]+1`
-/

namespace A348511.P15678170759417474951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348511.P15678170759417474951

namespace A348511

/-- `eq[A324118(2*n+3), A324118(n+1)]+1` -/
def P15678170759417474951.Spec : Prop :=
  ∀ n, (P15678170759417474951.a n : ℤ) = A348511 (n + 1)

end A348511

/-!
# A348512: a(n) = A003959(sigma(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors function.

The programs for A348512, the canonical program `A348512.P14338787327035426851` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348512 has offset 1).

The definition of A348512 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348512.P14338787327035426851

`A003959(A000203(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348512

/-- `A003959(A000203(n+1))` -/
def P14338787327035426851.Spec : Prop :=
  ∀ n, P14338787327035426851.a n = A348512 (n + 1)

theorem P14338787327035426851.correct : P14338787327035426851.Spec := by
  intro n
  simp only [A348512, Nat.add_sub_cancel]

end A348512

/-! ## A348512.P7710684610633855826

`A003959(∑{d}[n+1, #])`
-/

namespace A348512.P7710684610633855826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A348512.P7710684610633855826

namespace A348512

/-- `A003959(∑{d}[n+1, #])` -/
def P7710684610633855826.Spec : Prop :=
  ∀ n, P7710684610633855826.a n = A348512 (n + 1)

end A348512

/-! ## A348512.P4992637078805900048

`A003959(Δ[A160664(n)])`
-/

namespace A348512.P4992637078805900048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (f1 (n + 1) - f1 n).toNat

end

end A348512.P4992637078805900048

namespace A348512

/-- `A003959(Δ[A160664(n)])` -/
def P4992637078805900048.Spec : Prop :=
  ∀ n, P4992637078805900048.a n = A348512 (n + 1)

end A348512

/-! ## A348512.P5013192331666419119

`A003959(abs(Δ[A330725(n)]))`
-/

namespace A348512.P5013192331666419119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 |f1 (n + 1) - f1 n|.toNat

end

end A348512.P5013192331666419119

namespace A348512

/-- `A003959(abs(Δ[A330725(n)]))` -/
def P5013192331666419119.Spec : Prop :=
  ∀ n, P5013192331666419119.a n = A348512 (n + 1)

end A348512

/-! ## A348512.P14274893958871013398

`A003959(A245092(Δ[n²]))`
-/

namespace A348512.P14274893958871013398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A348512.P14274893958871013398

namespace A348512

/-- `A003959(A245092(Δ[n²]))` -/
def P14274893958871013398.Spec : Prop :=
  ∀ n, P14274893958871013398.a n = A348512 (n + 1)

end A348512

/-! ## A348512.P17153288198797392231

`A003959(A088580(n+1)-1)`
-/

namespace A348512.P17153288198797392231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A088580 (n + 1) - 1).toNat

end

end A348512.P17153288198797392231

namespace A348512

/-- `A003959(A088580(n+1)-1)` -/
def P17153288198797392231.Spec : Prop :=
  ∀ n, P17153288198797392231.a n = A348512 (n + 1)

end A348512

/-! ## A348512.P10534865860011693746

`A003959(A001065(n+1)+n+1)`
-/

namespace A348512.P10534865860011693746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A348512.P10534865860011693746

namespace A348512

/-- `A003959(A001065(n+1)+n+1)` -/
def P10534865860011693746.Spec : Prop :=
  ∀ n, P10534865860011693746.a n = A348512 (n + 1)

end A348512

/-! ## A348512.P1970411383289478814

`A003959(A048146(n+1)+A034448(n+1))`
-/

namespace A348512.P1970411383289478814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A048146 (n + 1) + A034448 (n + 1)).toNat

end

end A348512.P1970411383289478814

namespace A348512

/-- `A003959(A048146(n+1)+A034448(n+1))` -/
def P1970411383289478814.Spec : Prop :=
  ∀ n, P1970411383289478814.a n = A348512 (n + 1)

end A348512

/-! ## A348512.P13765781556983564666

`A003959(A162296(n+1)+A048250(n+1))`
-/

namespace A348512.P13765781556983564666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A162296 (n + 1) + A048250 (n + 1)).toNat

end

end A348512.P13765781556983564666

namespace A348512

/-- `A003959(A162296(n+1)+A048250(n+1))` -/
def P13765781556983564666.Spec : Prop :=
  ∀ n, P13765781556983564666.a n = A348512 (n + 1)

end A348512

/-! ## A348512.P7992841722984387476

`A003959(A325974(n+1)+A325973(n+1))`
-/

namespace A348512.P7992841722984387476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A325974 (n + 1) + A325973 (n + 1)).toNat

end

end A348512.P7992841722984387476

namespace A348512

/-- `A003959(A325974(n+1)+A325973(n+1))` -/
def P7992841722984387476.Spec : Prop :=
  ∀ n, P7992841722984387476.a n = A348512 (n + 1)

end A348512

/-! ## A348512.P2552575248783530310

`A003959(A003959(n+1)-A348029(n+1))`
-/

namespace A348512.P2552575248783530310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A003959 (n + 1) - A348029 (n + 1)).toNat

end

end A348512.P2552575248783530310

namespace A348512

/-- `A003959(A003959(n+1)-A348029(n+1))` -/
def P2552575248783530310.Spec : Prop :=
  ∀ n, P2552575248783530310.a n = A348512 (n + 1)

end A348512

/-! ## A348512.P13246121950546527855

`A003959(A348944(n+1)-A348945(n+1))`
-/

namespace A348512.P13246121950546527855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A348944 (n + 1) - A348945 (n + 1)).toNat

end

end A348512.P13246121950546527855

namespace A348512

/-- `A003959(A348944(n+1)-A348945(n+1))` -/
def P13246121950546527855.Spec : Prop :=
  ∀ n, P13246121950546527855.a n = A348512 (n + 1)

end A348512

/-! ## A348512.P2155360766118429048

`A003959(A348047(n+1)*A348048(n+1))`
-/

namespace A348512.P2155360766118429048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A348047 (n + 1) * A348048 (n + 1)).toNat

end

end A348512.P2155360766118429048

namespace A348512

/-- `A003959(A348047(n+1)*A348048(n+1))` -/
def P2155360766118429048.Spec : Prop :=
  ∀ n, P2155360766118429048.a n = A348512 (n + 1)

end A348512

/-! ## A348512.P5675739760098888902

`A003959(A348946(n+1)*A348948(n+1))`
-/

namespace A348512.P5675739760098888902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A348946 (n + 1) * A348948 (n + 1)).toNat

end

end A348512.P5675739760098888902

namespace A348512

/-- `A003959(A348946(n+1)*A348948(n+1))` -/
def P5675739760098888902.Spec : Prop :=
  ∀ n, P5675739760098888902.a n = A348512 (n + 1)

end A348512

/-! ## A348512.P11253605438244706216

`sqrt(A167349(∑{d}[n+1, #]))`
-/

namespace A348512.P11253605438244706216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167349 (∑ d ∈ Nat.divisors (f1 n), d) : ℝ)

end

end A348512.P11253605438244706216

namespace A348512

/-- `sqrt(A167349(∑{d}[n+1, #]))` -/
def P11253605438244706216.Spec : Prop :=
  ∀ n, P11253605438244706216.a n = (A348512 (n + 1) : ℝ)

end A348512

/-! ## A348512.P13507799047708048259

`∑{d}[∑{d}[n+1, #], A003968(#)]`
-/

namespace A348512.P13507799047708048259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003968 d

end

end A348512.P13507799047708048259

namespace A348512

/-- `∑{d}[∑{d}[n+1, #], A003968(#)]` -/
def P13507799047708048259.Spec : Prop :=
  ∀ n, P13507799047708048259.a n = A348512 (n + 1)

end A348512

/-! ## A348512.P11067409460636133727

`A064478(∑{d}[n+1, #]-floor(acot(n)))`
-/

namespace A348512.P11067409460636133727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064478 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A348512.P11067409460636133727

namespace A348512

/-- `A064478(∑{d}[n+1, #]-floor(acot(n)))` -/
def P11067409460636133727.Spec : Prop :=
  ∀ n, P11067409460636133727.a n = A348512 (n + 1)

end A348512

/-! ## A348512.P5015451012479766835

`A348507(∑{d}[n+1, #])+∑{d}[n+1, #]`
-/

namespace A348512.P5015451012479766835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (∑ d ∈ Nat.divisors (f1 n), d) + ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A348512.P5015451012479766835

namespace A348512

/-- `A348507(∑{d}[n+1, #])+∑{d}[n+1, #]` -/
def P5015451012479766835.Spec : Prop :=
  ∀ n, P5015451012479766835.a n = A348512 (n + 1)

end A348512

/-! ## A348512.P8390766545593863302

`∑{d}[A000203(n+1), A003968(#)]`
-/

namespace A348512.P8390766545593863302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003968 d

end

end A348512.P8390766545593863302

namespace A348512

/-- `∑{d}[A000203(n+1), A003968(#)]` -/
def P8390766545593863302.Spec : Prop :=
  ∀ n, P8390766545593863302.a n = A348512 (n + 1)

end A348512

/-! ## A348512.P5671447482339135085

`∏{d}[A000203(n+1), A000203(A014963(#))]`
-/

namespace A348512.P5671447482339135085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000203 (A014963 d).toNat

end

end A348512.P5671447482339135085

namespace A348512

/-- `∏{d}[A000203(n+1), A000203(A014963(#))]` -/
def P5671447482339135085.Spec : Prop :=
  ∀ n, P5671447482339135085.a n = A348512 (n + 1)

end A348512

/-!
# A348513: Möbius transform of A048146, the sum of non-unitary divisors of n.

The programs for A348513, the canonical program `A348513.P206487317806841830` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348513 has offset 1).

The definition of A348513 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254503, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348513.P206487317806841830

`n+1-A254503(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A348513

/-- `n+1-A254503(n+1)` -/
def P206487317806841830.Spec : Prop :=
  ∀ n, P206487317806841830.a n = A348513 (n + 1)

theorem P206487317806841830.correct : P206487317806841830.Spec := by
  intro n
  simp only [A348513, Nat.add_sub_cancel]

end A348513

/-! ## A348513.P18276194894643220891

`∏{p}[n+1, #]*A051953((n+1)/∏{p}[n+1, #])`
-/

namespace A348513.P18276194894643220891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A051953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A348513.P18276194894643220891

namespace A348513

/-- `∏{p}[n+1, #]*A051953((n+1)/∏{p}[n+1, #])` -/
def P18276194894643220891.Spec : Prop :=
  ∀ n, P18276194894643220891.a n = A348513 (n + 1)

end A348513

/-! ## A348513.P4787509639863580343

`A024000(A254503(n+1))+n`
-/

namespace A348513.P4787509639863580343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A254503 (n + 1)).toNat + (n : ℤ)

end

end A348513.P4787509639863580343

namespace A348513

/-- `A024000(A254503(n+1))+n` -/
def P4787509639863580343.Spec : Prop :=
  ∀ n, P4787509639863580343.a n = A348513 (n + 1)

end A348513

/-! ## A348513.P9122181524902204289

`-(A254503(n+1)+A001478(n+1))`
-/

namespace A348513.P9122181524902204289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A254503 (n + 1) + A001478 (n + 1))

end

end A348513.P9122181524902204289

namespace A348513

/-- `-(A254503(n+1)+A001478(n+1))` -/
def P9122181524902204289.Spec : Prop :=
  ∀ n, P9122181524902204289.a n = A348513 (n + 1)

end A348513

/-! ## A348513.P2139266776286844054

`∏{p}[n+1, #]*A051953(A003557(n+1))`
-/

namespace A348513.P2139266776286844054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A051953 (A003557 (n + 1)).toNat

end

end A348513.P2139266776286844054

namespace A348513

/-- `∏{p}[n+1, #]*A051953(A003557(n+1))` -/
def P2139266776286844054.Spec : Prop :=
  ∀ n, P2139266776286844054.a n = A348513 (n + 1)

end A348513

/-! ## A348513.P14372031159751882639

`∑{d}[n+1, A008683(#)*A048146((n+1)/#)]`
-/

namespace A348513.P14372031159751882639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A048146 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348513.P14372031159751882639

namespace A348513

/-- `∑{d}[n+1, A008683(#)*A048146((n+1)/#)]` -/
def P14372031159751882639.Spec : Prop :=
  ∀ n, P14372031159751882639.a n = A348513 (n + 1)

end A348513

/-! ## A348513.P8783479571187268387

`A007947(n+1)*A051953(A003557(n+1))`
-/

namespace A348513.P8783479571187268387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A051953 (A003557 (n + 1)).toNat

end

end A348513.P8783479571187268387

namespace A348513

/-- `A007947(n+1)*A051953(A003557(n+1))` -/
def P8783479571187268387.Spec : Prop :=
  ∀ n, P8783479571187268387.a n = A348513 (n + 1)

end A348513

/-! ## A348513.P10724861039689965155

`(A000188(n+1)-A000010(A000188(n+1)))*A019554(n+1)`
-/

namespace A348513.P10724861039689965155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000188 (n + 1) - A000010 (A000188 (n + 1)).toNat) * A019554 (n + 1)

end

end A348513.P10724861039689965155

namespace A348513

/-- `(A000188(n+1)-A000010(A000188(n+1)))*A019554(n+1)` -/
def P10724861039689965155.Spec : Prop :=
  ∀ n, P10724861039689965155.a n = A348513 (n + 1)

end A348513

/-! ## A348513.P4800861299276926020

`(A000189(n+1)-A000010(A000189(n+1)))*A019555(n+1)`
-/

namespace A348513.P4800861299276926020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000189 (n + 1) - A000010 (A000189 (n + 1)).toNat) * A019555 (n + 1)

end

end A348513.P4800861299276926020

namespace A348513

/-- `(A000189(n+1)-A000010(A000189(n+1)))*A019555(n+1)` -/
def P4800861299276926020.Spec : Prop :=
  ∀ n, P4800861299276926020.a n = A348513 (n + 1)

end A348513

/-! ## A348513.P18205157111224444438

`(A008833(n+1)-A000010(A008833(n+1)))*A007913(n+1)`
-/

namespace A348513.P18205157111224444438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008833 (n + 1) - A000010 (A008833 (n + 1)).toNat) * A007913 (n + 1)

end

end A348513.P18205157111224444438

namespace A348513

/-- `(A008833(n+1)-A000010(A008833(n+1)))*A007913(n+1)` -/
def P18205157111224444438.Spec : Prop :=
  ∀ n, P18205157111224444438.a n = A348513 (n + 1)

end A348513

/-! ## A348513.P4125270369538772738

`(A000190(n+1)-A000010(A000190(n+1)))*A053166(n+1)`
-/

namespace A348513.P4125270369538772738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000190 (n + 1) - A000010 (A000190 (n + 1)).toNat) * A053166 (n + 1)

end

end A348513.P4125270369538772738

namespace A348513

/-- `(A000190(n+1)-A000010(A000190(n+1)))*A053166(n+1)` -/
def P4125270369538772738.Spec : Prop :=
  ∀ n, P4125270369538772738.a n = A348513 (n + 1)

end A348513

/-! ## A348513.P17211433073223909321

`(A057521(n+1)-A000010(A057521(n+1)))*A055231(n+1)`
-/

namespace A348513.P17211433073223909321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057521 (n + 1) - A000010 (A057521 (n + 1)).toNat) * A055231 (n + 1)

end

end A348513.P17211433073223909321

namespace A348513

/-- `(A057521(n+1)-A000010(A057521(n+1)))*A055231(n+1)` -/
def P17211433073223909321.Spec : Prop :=
  ∀ n, P17211433073223909321.a n = A348513 (n + 1)

end A348513

/-! ## A348513.P7315969667494371809

`(A085731(n+1)-A000010(A085731(n+1)))*A083346(n+1)`
-/

namespace A348513.P7315969667494371809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085731 (n + 1) - A000010 (A085731 (n + 1)).toNat) * A083346 (n + 1)

end

end A348513.P7315969667494371809

namespace A348513

/-- `(A085731(n+1)-A000010(A085731(n+1)))*A083346(n+1)` -/
def P7315969667494371809.Spec : Prop :=
  ∀ n, P7315969667494371809.a n = A348513 (n + 1)

end A348513

/-!
# A348514: Numbers k for which A003961(k) = 2k+1, where A003961 shifts the prime factorization of n one step towards larger primes.

The programs for A348514, there is no canonical definition to state claims against.
-/

/-! ## A348514.P6130544179970158624

`∩[A337372(n+1), A348511(n+1)]`
-/

namespace A348514.P6130544179970158624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348514.P6130544179970158624

/-!
# A348515: a(n) = Sum_{d|n, d <= sqrt(n)} (-1)^(n/d + 1).

The programs for A348515, there is no canonical definition to state claims against.
-/

/-! ## A348515.P10685432239600732966

`A048272(n+1)-A333809(n+1)`
-/

namespace A348515.P10685432239600732966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) - A333809 (n + 1)

end

end A348515.P10685432239600732966

/-! ## A348515.P10253693060032057815

`A258998(n+1)-A348951(n+1)`
-/

namespace A348515.P10253693060032057815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 (n + 1) - A348951 (n + 1)

end

end A348515.P10253693060032057815

/-! ## A348515.P109680408254274301

`∑{digits}[A303818(n+1), A131554(#²)]`
-/

namespace A348515.P109680408254274301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A131554 (x ^ 2)).sum

end

end A348515.P109680408254274301

/-! ## A348515.P13544886408392267899

`∑{digits}[A303818(n+1), A055870(#+2)]`
-/

namespace A348515.P13544886408392267899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055870 (x + 2)).sum

end

end A348515.P13544886408392267899

/-! ## A348515.P16246308538355993703

`2*A341675(n+1)-A038548(n+1)`
-/

namespace A348515.P16246308538355993703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341675 (n + 1) - A038548 (n + 1)

end

end A348515.P16246308538355993703

/-! ## A348515.P13915729494390911893

`A048272(n+1)%2-A348951(n+1)`
-/

namespace A348515.P13915729494390911893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048272 (n + 1)) 2 - A348951 (n + 1)

end

end A348515.P13915729494390911893

/-! ## A348515.P12800375053247098746

`∑{digits}[A303818(n+1), A008683(A101399(#-1))]`
-/

namespace A348515.P12800375053247098746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008683 (A101399 (x - 1)).toNat).sum

end

end A348515.P12800375053247098746

/-! ## A348515.P863647928075719639

`∑{digits}[A303818(n+1), A008683(A000051(#)-2)]`
-/

namespace A348515.P863647928075719639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008683 (A000051 x - 2).toNat).sum

end

end A348515.P863647928075719639

/-! ## A348515.P11980458796153805324

`∑{digits}[A303818(n+1), 2-A303818(A003991(#))]`
-/

namespace A348515.P11980458796153805324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 - A303818 (A003991 x).toNat).sum

end

end A348515.P11980458796153805324

/-! ## A348515.P15712852550859594102

`∑{digits}[A303818(n+1), 2-A303818(A008619(#))]`
-/

namespace A348515.P15712852550859594102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 - A303818 (A008619 x).toNat).sum

end

end A348515.P15712852550859594102

/-! ## A348515.P2280310793511456574

`A010052(n+1)*A033999(n)-A348951(n+1)`
-/

namespace A348515.P2280310793511456574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) * A033999 n - A348951 (n + 1)

end

end A348515.P2280310793511456574

/-! ## A348515.P7453139750849436205

`A333781(n+1)-(A348951(n+1)+A333809(n+1))`
-/

namespace A348515.P7453139750849436205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333781 (n + 1) - (A348951 (n + 1) + A333809 (n + 1))

end

end A348515.P7453139750849436205

/-! ## A348515.P2009331462885073255

`A048272(n+1)+A258998(n+1)-A333781(n+1)`
-/

namespace A348515.P2009331462885073255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) + (A258998 (n + 1) - A333781 (n + 1))

end

end A348515.P2009331462885073255

/-!
# A348517: Positive integers m with the property that there are 4 positive integers b_1 < b_2 < b_3 < b_4 such that b_1 divides b_2, b_2 divides b_3, b_3 divides b_4, and m = b_1 + b_2 + b_3 + b_4.

The programs for A348517, there is no canonical definition to state claims against.
-/

/-! ## A348517.P11648850187282105452

`lt[3, A167439(n)]`
-/

namespace A348517.P11648850187282105452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348517.P11648850187282105452

/-! ## A348517.P14003529239436511107

`lt[1, and(5, A167866(2*n))]`
-/

namespace A348517.P14003529239436511107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A167866 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348517.P14003529239436511107

/-! ## A348517.P9486783934335726287

`eq[2, A004524(A167866(2*n))]`
-/

namespace A348517.P9486783934335726287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A167866 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348517.P9486783934335726287

/-! ## A348517.P13641122644179714624

`lt[1, A108044(A167866(2*n)²)]`
-/

namespace A348517.P13641122644179714624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108044 (A167866 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348517.P13641122644179714624

/-! ## A348517.P4672926660200555072

`lt[1, A111526(A167866(2*n)²)]`
-/

namespace A348517.P4672926660200555072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111526 (A167866 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348517.P4672926660200555072

/-! ## A348517.P249099760183313261

`lt[A236191(A167866(2*n)), A033665(n)]`
-/

namespace A348517.P249099760183313261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 (A167866 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348517.P249099760183313261

/-! ## A348517.P17617480491139784266

`lt[A236191(A167866(2*n)), A093998(n+1)]`
-/

namespace A348517.P17617480491139784266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 (A167866 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348517.P17617480491139784266

/-!
# A348518: Positive integers m with the property that there are 5 positive integers b_1 < b_2 < b_3 < b_4 < b_5 such that b_1 divides b_2, b_2 divides b_3, b_3 divides b_4, b_4 divides b_5, and m = b_1 + b_2 + b_3 + b_4 + b_5.

The programs for A348518, there is no canonical definition to state claims against.
-/

/-! ## A348518.P1486043763298567127

`comp[A348520(n+1)-1]+1`
-/

namespace A348518.P1486043763298567127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348520 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A348518.P1486043763298567127

/-! ## A348518.P5053692141304220532

`eq[1, A002266(A167866(2*n))]`
-/

namespace A348518.P5053692141304220532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A167866 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348518.P5053692141304220532

/-! ## A348518.P3859164714401001967

`comp[A023443(A348520(n+1))]+1`
-/

namespace A348518.P3859164714401001967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A348520 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A348518.P3859164714401001967

/-! ## A348518.P14028956689498584831

`lt[2, A064989(A167866(2*n)!)]`
-/

namespace A348518.P14028956689498584831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Nat.factorial (A167866 (2 * n)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348518.P14028956689498584831

/-! ## A348518.P15860394969211799156

`eq[2, A325225(A167866(2*n)+28)]`
-/

namespace A348518.P15860394969211799156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (A167866 (2 * n) + 28).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348518.P15860394969211799156

/-! ## A348518.P13394769223365944971

`eq[4, A000005(A167866(2*n)+28)]`
-/

namespace A348518.P13394769223365944971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A167866 (2 * n) + 28).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348518.P13394769223365944971

/-! ## A348518.P17706471282280907227

`comp[A348520(n+1)%A168333(n+1)]`
-/

namespace A348518.P17706471282280907227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348520 (n + 1)) (A168333 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A348518.P17706471282280907227

/-!
# A348519: Tetraphobe or 4-phobe numbers: integers that are not tetraphile numbers.

The programs for A348519, there is no canonical definition to state claims against.
-/

/-! ## A348519.P9437653031026358224

`lt[0, sin(A167439(n))]`
-/

namespace A348519.P9437653031026358224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A167439 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A348519.P9437653031026358224

/-! ## A348519.P11646652247116544678

`lt[A167439(n+1), 4]+1`
-/

namespace A348519.P11646652247116544678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A348519.P11646652247116544678

/-! ## A348519.P15926063834382676410

`comp[A348517(n+1)-1]+1`
-/

namespace A348519.P15926063834382676410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348517 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A348519.P15926063834382676410

/-! ## A348519.P16764579758048301168

`lt[abs(A167866(2*n)/2-1), 1]`
-/

namespace A348519.P16764579758048301168
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A167866 (2 * n) : ℚ) / 2 - 1|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A348519.P16764579758048301168

/-! ## A348519.P13800798049135817374

`eq[1, A000196(A167866(2*n)-char[24])]`
-/

namespace A348519.P13800798049135817374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A167866 (2 * n) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348519.P13800798049135817374

/-!
# A348520: Pentaphobe or 5-phobe numbers: integers that are not pentaphile numbers.

The programs for A348520, there is no canonical definition to state claims against.
-/

/-! ## A348520.P2711789887770263863

`lt[(n-1)*a(A167439(n)), 6*n]` with `a(0)=1, a(1)=2`
-/

namespace A348520.P2711789887770263863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ((n : ℤ) - 1) * f1 (A167439 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A348520.P2711789887770263863

/-! ## A348520.P15081897096159313806

`lt[cos(A167439(n)), A167393(3*n+2)]`
-/

namespace A348520.P15081897096159313806
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A167439 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167393 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A348520.P15081897096159313806

/-! ## A348520.P17452355617128068460

`eq[char[A348518(n+1)], A151878(n)]`
-/

namespace A348520.P17452355617128068460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348518 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A348520.P17452355617128068460

/-! ## A348520.P11859818117517926995

`eq[char[A348518(n+1)], A151933(n)]`
-/

namespace A348520.P11859818117517926995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348518 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A348520.P11859818117517926995

/-! ## A348520.P3992434208134713385

`lt[A167837(n+1), A167858(A167866(2*n))]`
-/

namespace A348520.P3992434208134713385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167858 (A167866 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348520.P3992434208134713385

/-!
# A348522: Number of partitions of n into two or more cubes.

The programs for A348522, there is no canonical definition to state claims against.
-/

/-! ## A348522.P2452829378087130778

`A003108(n)-char[n^3]`
-/

namespace A348522.P2452829378087130778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A348522.P2452829378087130778

/-! ## A348522.P9522475394466079795

`abs(A003108(n)-A010057(n))`
-/

namespace A348522.P9522475394466079795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003108 n - A010057 n|

end

end A348522.P9522475394466079795

/-! ## A348522.P7743751229567719126

`lcm(A003108(n)-A010057(n), A008836(n+1))`
-/

namespace A348522.P7743751229567719126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003108 n - A010057 n) (A008836 (n + 1))

end

end A348522.P7743751229567719126

/-! ## A348522.P16236859248038560572

`(A003108(n)-A010057(n))*A000040(n+1)%2`
-/

namespace A348522.P16236859248038560572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003108 n - A010057 n) * Int.tmod (A000040 (n + 1)) 2

end

end A348522.P16236859248038560572

/-! ## A348522.P3051430321527909191

`(A003108(n)-A010057(n))*A001221(A001316(n))`
-/

namespace A348522.P3051430321527909191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003108 n - A010057 n) * A001221 (A001316 n).toNat

end

end A348522.P3051430321527909191

/-! ## A348522.P10911984544708613048

`(A003108(n)-A010057(n))*(1-A001221(A000015(n+1)))!`
-/

namespace A348522.P10911984544708613048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003108 n - A010057 n) * (Nat.factorial (1 - A001221 (A000015 (n + 1)).toNat).toNat : ℤ)

end

end A348522.P10911984544708613048

/-! ## A348522.P334787225613711998

`A000007(n+1)+A003108(n)-A010057(n)`
-/

namespace A348522.P334787225613711998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A003108 n - A010057 n)

end

end A348522.P334787225613711998

/-! ## A348522.P10651984258670644267

`(A003108(n)-A010057(n))%A000041(n)`
-/

namespace A348522.P10651984258670644267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003108 n - A010057 n) (A000041 n)

end

end A348522.P10651984258670644267

/-! ## A348522.P3286684929128901924

`(A003108(n)-A010057(n))*A000034(2*n)`
-/

namespace A348522.P3286684929128901924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003108 n - A010057 n) * A000034 (2 * n)

end

end A348522.P3286684929128901924

/-! ## A348522.P7559853495232705537

`A118112(4*(n+1))+A003108(n)-A010057(n)`
-/

namespace A348522.P7559853495232705537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118112 (4 * (n + 1)) + (A003108 n - A010057 n)

end

end A348522.P7559853495232705537

/-! ## A348522.P12032170610025951889

`A000194((A003108(n)-A010057(n))²)`
-/

namespace A348522.P12032170610025951889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((A003108 n - A010057 n) ^ 2).toNat

end

end A348522.P12032170610025951889

/-! ## A348522.P1466573008234758467

`(A003108(n)-A010057(n))*A014963(∑[n+1])`
-/

namespace A348522.P1466573008234758467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003108 n - A010057 n) * A014963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348522.P1466573008234758467

/-! ## A348522.P5379068589027914927

`(A003108(n)-A010057(n))*A118111(n²)`
-/

namespace A348522.P5379068589027914927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003108 n - A010057 n) * A118111 (n ^ 2)

end

end A348522.P5379068589027914927

/-!
# A348523: Numbers that are both infinitary and noninfinitary abundant numbers.

The programs for A348523, there is no canonical definition to state claims against.
-/

/-! ## A348523.P2358921935618779089

`∩[A129656(n+1), A348274(n+1)]`
-/

namespace A348523.P2358921935618779089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348523.P2358921935618779089

/-!
# A348524: Number of compositions (ordered partitions) of n into two or more cubes.

The programs for A348524, there is no canonical definition to state claims against.
-/

/-! ## A348524.P6189951395720612699

`A023358(n)-A010057(n)`
-/

namespace A348524.P6189951395720612699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 n - A010057 n

end

end A348524.P6189951395720612699

/-! ## A348524.P6810959327930938940

`A023358(n)-char[A000578(n)]`
-/

namespace A348524.P6810959327930938940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348524.P6810959327930938940

/-! ## A348524.P9894289644816114441

`A023358(n)-char[A018797(n)]`
-/

namespace A348524.P9894289644816114441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018797 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348524.P9894289644816114441

/-! ## A348524.P15993743412432397206

`A023358(n)-char[A048762(n)]`
-/

namespace A348524.P15993743412432397206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348524.P15993743412432397206

/-! ## A348524.P10944696107257431156

`A023358(n)-char[A048763(n)]`
-/

namespace A348524.P10944696107257431156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348524.P10944696107257431156

/-! ## A348524.P12559942141172321853

`A023358(n)-char[A077107(n)]`
-/

namespace A348524.P12559942141172321853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077107 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348524.P12559942141172321853

/-! ## A348524.P14858647678063120390

`A023358(n)-char[A178983(n)]`
-/

namespace A348524.P14858647678063120390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178983 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348524.P14858647678063120390

/-! ## A348524.P784737358303236734

`A023358(n)-A000007(A055400(n))`
-/

namespace A348524.P784737358303236734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 n - A000007 (A055400 n).toNat

end

end A348524.P784737358303236734

/-! ## A348524.P14588516218505733078

`A023358(n)-A000007(A074989(n))`
-/

namespace A348524.P14588516218505733078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 n - A000007 (A074989 n).toNat

end

end A348524.P14588516218505733078

/-! ## A348524.P3719885898957209794

`A339420(n)+A339421(n)-A010057(n)`
-/

namespace A348524.P3719885898957209794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339420 n + (A339421 n - A010057 n)

end

end A348524.P3719885898957209794

/-!
# A348526: Number of partitions of n into two or more triangular numbers.

The programs for A348526, there is no canonical definition to state claims against.
-/

/-! ## A348526.P2481618727793996897

`A007294(n)-char[∑[n]]`
-/

namespace A348526.P2481618727793996897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A348526.P2481618727793996897

/-! ## A348526.P16311363961960306343

`∑[A303906(n)]-char[∑[n]]`
-/

namespace A348526.P16311363961960306343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303906 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A348526.P16311363961960306343

/-! ## A348526.P1109252799811464277

`abs(Δ[A302835(abs(1-n))])-char[∑[n]]`
-/

namespace A348526.P1109252799811464277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302835 |1 - (n : ℤ)|.toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A348526.P1109252799811464277

/-! ## A348526.P14364256447274184547

`abs(A007294(n)-A010054(n))`
-/

namespace A348526.P14364256447274184547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007294 n - A010054 n|

end

end A348526.P14364256447274184547

/-! ## A348526.P6377514913226385543

`A007294(n)+1-A035214(n)`
-/

namespace A348526.P6377514913226385543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 n + 1 - A035214 n

end

end A348526.P6377514913226385543

/-! ## A348526.P203961428036060785

`abs(A010054(n)-∑[A303906(n)])`
-/

namespace A348526.P203961428036060785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010054 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A348526.P203961428036060785

/-! ## A348526.P15091322508285289009

`abs(char[A000217(n)]-A007294(n))`
-/

namespace A348526.P15091322508285289009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A007294 n|

end

end A348526.P15091322508285289009

/-! ## A348526.P15389244581927292643

`abs(A007294(n)-A124927(n)%2)`
-/

namespace A348526.P15389244581927292643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007294 n - Int.tmod (A124927 n) 2|

end

end A348526.P15389244581927292643

/-! ## A348526.P12891850013898300000

`abs(and(1, A000005(8*n+1))-A007294(n))`
-/

namespace A348526.P12891850013898300000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land 1 (A000005 (8 * n + 1)) - A007294 n|

end

end A348526.P12891850013898300000

/-! ## A348526.P1553977586484852871

`abs(and(1, A000203(8*n+1))-A007294(n))`
-/

namespace A348526.P1553977586484852871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land 1 (A000203 (8 * n + 1)) - A007294 n|

end

end A348526.P1553977586484852871

/-!
# A348527: Noninfinitary Zumkeller numbers: numbers whose set of noninfinitary divisors is nonempty and can be partitioned into two disjoint sets of equal sum.

The programs for A348527, there is no canonical definition to state claims against.
-/

/-! ## A348527.P11440954392512844765

`∩[A088364(n+1), A335142(n+1)]`
-/

namespace A348527.P11440954392512844765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348527.P11440954392512844765

/-!
# A348528: Number of partitions of n into two or more distinct triangular numbers.

The programs for A348528, there is no canonical definition to state claims against.
-/

/-! ## A348528.P14434219140873794479

`A024940(n)-char[∑[n]]`
-/

namespace A348528.P14434219140873794479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A348528.P14434219140873794479

/-! ## A348528.P6291867297575165594

`abs(A010054(n)-A024940(n))`
-/

namespace A348528.P6291867297575165594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010054 n - A024940 n|

end

end A348528.P6291867297575165594

/-! ## A348528.P4565270304248013028

`abs(A024940(n)-abs(A106459(n)))`
-/

namespace A348528.P4565270304248013028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A024940 n - |A106459 n|)|

end

end A348528.P4565270304248013028

/-! ## A348528.P12822578869291662318

`abs(2-A238303(n)-A024940(n))`
-/

namespace A348528.P12822578869291662318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A238303 n - A024940 n|

end

end A348528.P12822578869291662318

/-! ## A348528.P16017350051156511920

`A292518(n)+2*A339376(n)-char[∑[n]]`
-/

namespace A348528.P16017350051156511920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292518 n + 2 * A339376 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A348528.P16017350051156511920

/-! ## A348528.P15958638129899752914

`abs(and(1, A000005(8*n+1))-A024940(n))`
-/

namespace A348528.P15958638129899752914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land 1 (A000005 (8 * n + 1)) - A024940 n|

end

end A348528.P15958638129899752914

/-! ## A348528.P13931771173055326796

`abs(and(1, A000203(8*n+1))-A024940(n))`
-/

namespace A348528.P13931771173055326796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land 1 (A000203 (8 * n + 1)) - A024940 n|

end

end A348528.P13931771173055326796

/-!
# A348529: Number of compositions (ordered partitions) of n into two or more triangular numbers.

The programs for A348529, there is no canonical definition to state claims against.
-/

/-! ## A348529.P3714600390465403543

`A023361(n)-A010054(n)`
-/

namespace A348529.P3714600390465403543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023361 n - A010054 n

end

end A348529.P3714600390465403543

/-! ## A348529.P11946896370783464957

`A023361(n)-A197870(n)²`
-/

namespace A348529.P11946896370783464957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023361 n - A197870 n ^ 2

end

end A348529.P11946896370783464957

/-! ## A348529.P8499102119812886127

`1-(A035214(n)-A023361(n))`
-/

namespace A348529.P8499102119812886127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A035214 n - A023361 n)

end

end A348529.P8499102119812886127

/-! ## A348529.P12716566530057856481

`abs(and(1, A000005(8*n+1))-A023361(n))`
-/

namespace A348529.P12716566530057856481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land 1 (A000005 (8 * n + 1)) - A023361 n|

end

end A348529.P12716566530057856481

/-! ## A348529.P6472791876535465030

`abs(and(1, A000203(8*n+1))-A023361(n))`
-/

namespace A348529.P6472791876535465030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land 1 (A000203 (8 * n + 1)) - A023361 n|

end

end A348529.P6472791876535465030

/-! ## A348529.P9563226622216408430

`A339416(n)+A339417(n)-A010054(n)`
-/

namespace A348529.P9563226622216408430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339416 n + (A339417 n - A010054 n)

end

end A348529.P9563226622216408430

/-!
# A348531: Number of partitions of n into 3 parts where at least one of the parts divides the product of the other two.

The programs for A348531, there is no canonical definition to state claims against.
-/

/-! ## A348531.P10901830513815767888

`A343246(n+1)+A185284(A264120(n+1))`
-/

namespace A348531.P10901830513815767888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343246 (n + 1) + A185284 (A264120 (n + 1)).toNat

end

end A348531.P10901830513815767888

/-! ## A348531.P7661843424327966866

`A343246(n+1)+A185284(2*n+1)`
-/

namespace A348531.P7661843424327966866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343246 (n + 1) + A185284 (2 * n + 1)

end

end A348531.P7661843424327966866

/-! ## A348531.P16626611060108474606

`A343246(n+1)+A055641(A157134(n))`
-/

namespace A348531.P16626611060108474606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343246 (n + 1) + A055641 (A157134 n).toNat

end

end A348531.P16626611060108474606

/-! ## A348531.P7843188863713560513

`A343246(n+1)+A185284(A001399(n))²`
-/

namespace A348531.P7843188863713560513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343246 (n + 1) + A185284 (A001399 n).toNat ^ 2

end

end A348531.P7843188863713560513

/-! ## A348531.P7592553439369017442

`A343246(n+1)+A070109(A325302(n+1))`
-/

namespace A348531.P7592553439369017442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343246 (n + 1) + A070109 (A325302 (n + 1)).toNat

end

end A348531.P7592553439369017442

/-!
# A348533: Generalized Josephus problem: Let T(m,k), k>=2, m=1,2,3,.., be the number of people on a circle such that the survivor is one of the first k-1 people after every k-th person has been removed.

The programs for A348533, there is no canonical definition to state claims against.
-/

/-! ## A348533.P7168330732412132413

`A321166(A089606(n+1))`
-/

namespace A348533.P7168330732412132413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321166 (A089606 (n + 1)).toNat

end

end A348533.P7168330732412132413

/-! ## A348533.P11785376374886805694

`A253572(A038722(n+1)%A089494(n+1))`
-/

namespace A348533.P11785376374886805694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253572 (Int.tmod (A038722 (n + 1)) (A089494 (n + 1))).toNat

end

end A348533.P11785376374886805694

/-! ## A348533.P12391541818410801612

`A253572(A038722(n+1))%A111227(n+1)`
-/

namespace A348533.P12391541818410801612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253572 (A038722 (n + 1)).toNat) (A111227 (n + 1))

end

end A348533.P12391541818410801612

/-! ## A348533.P5237999617100189063

`A253572(A278818(n)%A339881(2*(n+2)))`
-/

namespace A348533.P5237999617100189063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253572 (Int.tmod (A278818 n) (A339881 (2 * (n + 2)))).toNat

end

end A348533.P5237999617100189063

/-! ## A348533.P8314492857527868388

`A003557(A371164(n+1))`
-/

namespace A348533.P8314492857527868388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A371164 (n + 1)).toNat

end

end A348533.P8314492857527868388

/-!
# A348536: Number of partitions of n into 3 parts that divide n.

The programs for A348536, the canonical program `A348536.P17381535826471102850` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348536 has offset 1).

The definition of A348536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348536.P17381535826471102850

`floor(sqrt(10%gcd(12, n+1)))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A348536

/-- `floor(sqrt(10%gcd(12, n+1)))` -/
def P17381535826471102850.Spec : Prop :=
  ∀ n, (P17381535826471102850.a n : ℤ) = A348536 (n + 1)

theorem P17381535826471102850.correct : P17381535826471102850.Spec := by
  intro n
  simp only [A348536, Nat.add_sub_cancel]

end A348536

/-!
# A348537: Number of partitions of n into 3 parts whose largest part divides n.

The programs for A348537, the canonical program `A348537.P2961436534222365017` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348537 has offset 1).

The definition of A348537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348537.P2961436534222365017

`Δ[floor((floor(n/2)/2+1)²)-round(xor(1, n)/6)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A348537

/-- `Δ[floor((floor(n/2)/2+1)²)-round(xor(1, n)/6)]` -/
def P2961436534222365017.Spec : Prop :=
  ∀ n, P2961436534222365017.a n = A348537 (n + 1)

theorem P2961436534222365017.correct : P2961436534222365017.Spec := by
  intro n
  simp only [A348537, Nat.add_sub_cancel]

end A348537

/-! ## A348537.P14911520905570601224

`floor((n%3-A186421(n)+n)/2)`
-/

namespace A348537.P14911520905570601224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n % 3 : ℕ) : ℤ) - A186421 n + (n : ℤ) : ℚ) / 2⌋

end

end A348537.P14911520905570601224

namespace A348537

/-- `floor((n%3-A186421(n)+n)/2)` -/
def P14911520905570601224.Spec : Prop :=
  ∀ n, P14911520905570601224.a n = A348537 (n + 1)

end A348537

/-! ## A348537.P6123616233158834426

`Δ[floor((floor(n/2)/2+1)²)-A008615(n)]`
-/

namespace A348537.P6123616233158834426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((⌊(n : ℚ) / 2⌋ : ℚ) / 2 + 1) ^ 2⌋ - A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348537.P6123616233158834426

namespace A348537

/-- `Δ[floor((floor(n/2)/2+1)²)-A008615(n)]` -/
def P6123616233158834426.Spec : Prop :=
  ∀ n, P6123616233158834426.a n = A348537 (n + 1)

end A348537

/-! ## A348537.P9096116187602797789

`A004526(A152271(n))+char[3*n-1]`
-/

namespace A348537.P9096116187602797789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A152271 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348537.P9096116187602797789

namespace A348537

/-- `A004526(A152271(n))+char[3*n-1]` -/
def P9096116187602797789.Spec : Prop :=
  ∀ n, P9096116187602797789.a n = A348537 (n + 1)

end A348537

/-! ## A348537.P15270287020615899388

`Δ[A008642(n)-Δ[A069905(n)]]`
-/

namespace A348537.P15270287020615899388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348537.P15270287020615899388

namespace A348537

/-- `Δ[A008642(n)-Δ[A069905(n)]]` -/
def P15270287020615899388.Spec : Prop :=
  ∀ n, P15270287020615899388.a n = A348537 (n + 1)

end A348537

/-! ## A348537.P16891849905431302911

`Δ[A001399(n)-A325691(n+1)]`
-/

namespace A348537.P16891849905431302911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A325691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348537.P16891849905431302911

namespace A348537

/-- `Δ[A001399(n)-A325691(n+1)]` -/
def P16891849905431302911.Spec : Prop :=
  ∀ n, P16891849905431302911.a n = A348537 (n + 1)

end A348537

/-! ## A348537.P596756314646622543

`A002265(A133265(n))+Δ[floor(n/3)]`
-/

namespace A348537.P596756314646622543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A133265 n).toNat + (f1 (n + 1) - f1 n)

end

end A348537.P596756314646622543

namespace A348537

/-- `A002265(A133265(n))+Δ[floor(n/3)]` -/
def P596756314646622543.Spec : Prop :=
  ∀ n, P596756314646622543.a n = A348537 (n + 1)

end A348537

/-! ## A348537.P34487483828194431

`Δ[A008742(n)+A005044(n+2)]`
-/

namespace A348537.P34487483828194431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n + A005044 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348537.P34487483828194431

namespace A348537

/-- `Δ[A008742(n)+A005044(n+2)]` -/
def P34487483828194431.Spec : Prop :=
  ∀ n, P34487483828194431.a n = A348537 (n + 1)

end A348537

/-! ## A348537.P17319596761102156992

`Δ[A325691(2*n)-A325691(n+1)]`
-/

namespace A348537.P17319596761102156992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325691 (2 * n) - A325691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348537.P17319596761102156992

namespace A348537

/-- `Δ[A325691(2*n)-A325691(n+1)]` -/
def P17319596761102156992.Spec : Prop :=
  ∀ n, P17319596761102156992.a n = A348537 (n + 1)

end A348537

/-! ## A348537.P7315948123675048514

`Δ[A024165(3*n+1)+floor(n/3)]`
-/

namespace A348537.P7315948123675048514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024165 (3 * n + 1) + ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348537.P7315948123675048514

namespace A348537

/-- `Δ[A024165(3*n+1)+floor(n/3)]` -/
def P7315948123675048514.Spec : Prop :=
  ∀ n, P7315948123675048514.a n = A348537 (n + 1)

end A348537

/-!
# A348539: Triangle T(n, m) = binomial(n+2, m)*binomial(n+2, n-m), read by rows.

The programs for A348539, there is no canonical definition to state claims against.
-/

/-! ## A348539.P16591819634958896307

`A094305(n)²/A098358(n)`
-/

namespace A348539.P16591819634958896307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094305 n ^ 2 : ℚ) / (A098358 n : ℚ)

end

end A348539.P16591819634958896307

/-! ## A348539.P12408823299823489239

`A104712(n+2)*A209518(n)`
-/

namespace A348539.P12408823299823489239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) * A209518 n

end

end A348539.P12408823299823489239

/-! ## A348539.P12283655453733620094

`A135278(comp[∑[n]])*A209518(n)`
-/

namespace A348539.P12283655453733620094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A209518 n

end

end A348539.P12283655453733620094

/-! ## A348539.P4417690402019494248

`A153861(comp[∑[n]])*A209518(n)`
-/

namespace A348539.P4417690402019494248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A209518 n

end

end A348539.P4417690402019494248

/-! ## A348539.P14147920465895712790

`A074909(comp[∑[n]]+1)*A209518(n)`
-/

namespace A348539.P14147920465895712790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) * A209518 n

end

end A348539.P14147920465895712790

/-! ## A348539.P12049256493345949483

`A074909(comp[∑[n-1]])*A104712(n+2)`
-/

namespace A348539.P12049256493345949483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) * A104712 (n + 2)

end

end A348539.P12049256493345949483

/-! ## A348539.P2825084771552092294

`A104712(n+2)*A135278(comp[∑[n]-2])`
-/

namespace A348539.P2825084771552092294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) * A135278 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A348539.P2825084771552092294

/-! ## A348539.P15254858440142699348

`A209518(A061579(n))*A209518(n)`
-/

namespace A348539.P15254858440142699348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 (A061579 n).toNat * A209518 n

end

end A348539.P15254858440142699348

/-! ## A348539.P13465931658187859878

`A209518(A038722(n+2))*A209518(n)`
-/

namespace A348539.P13465931658187859878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 (A038722 (n + 2)).toNat * A209518 n

end

end A348539.P13465931658187859878

/-! ## A348539.P15476322133787142096

`(A194118(n)-A209518(n))*A209518(n)`
-/

namespace A348539.P15476322133787142096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A194118 n - A209518 n) * A209518 n

end

end A348539.P15476322133787142096

/-!
# A348540: Number of partitions of n into 3 parts whose smallest part divides the largest part.

The programs for A348540, the canonical program `A348540.P1296944890108127661` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348540 has offset 1).

The definition of A348540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1903 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348540.P6183376914422015046

`∑[∑{d}[n+1, 2%#/2]-∑{d}[n, (#%#²)%2]]`
-/

namespace A348540.P6183376914422015046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((2 % d : ℕ) : ℚ) / 2 - ((∑ d ∈ Nat.divisors (f3 n), d % d ^ 2 % 2 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348540.P6183376914422015046

namespace A348540

/-- `∑[∑{d}[n+1, 2%#/2]-∑{d}[n, (#%#²)%2]]` -/
def P6183376914422015046.Spec : Prop :=
  ∀ n, P6183376914422015046.a n = (A348540 (n + 1) : ℚ)

end A348540

/-! ## A348540.P16703444676574068548

`∑[∑{d}[n+1, 2%#/2]-A069283(n)]`
-/

namespace A348540.P16703444676574068548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((2 % d : ℕ) : ℚ) / 2 - (A069283 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348540.P16703444676574068548

namespace A348540

/-- `∑[∑{d}[n+1, 2%#/2]-A069283(n)]` -/
def P16703444676574068548.Spec : Prop :=
  ∀ n, P16703444676574068548.a n = (A348540 (n + 1) : ℚ)

end A348540

/-! ## A348540.P1296944890108127661

`∑[A023645(n+1)-∑{d}[n, (#%#²)%2]]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A348540

/-- `∑[A023645(n+1)-∑{d}[n, (#%#²)%2]]` -/
def P1296944890108127661.Spec : Prop :=
  ∀ n, P1296944890108127661.a n = A348540 (n + 1)

theorem P1296944890108127661.correct : P1296944890108127661.Spec := by
  intro n
  simp only [A348540, Nat.add_sub_cancel]

end A348540

/-! ## A348540.P14115720914627885706

`A366968(n+1)-A248517(n)`
-/

namespace A348540.P14115720914627885706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366968 (n + 1) - A248517 n

end

end A348540.P14115720914627885706

namespace A348540

/-- `A366968(n+1)-A248517(n)` -/
def P14115720914627885706.Spec : Prop :=
  ∀ n, P14115720914627885706.a n = A348540 (n + 1)

end A348540

/-! ## A348540.P10536122555800209879

`∑[A023645(n+1)-A069283(n)]`
-/

namespace A348540.P10536122555800209879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) - A069283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348540.P10536122555800209879

namespace A348540

/-- `∑[A023645(n+1)-A069283(n)]` -/
def P10536122555800209879.Spec : Prop :=
  ∀ n, P10536122555800209879.a n = A348540 (n + 1)

end A348540

/-! ## A348540.P9711404138267167916

`∑[A023645(n+1)]-A248517(n)`
-/

namespace A348540.P9711404138267167916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A248517 n

end

end A348540.P9711404138267167916

namespace A348540

/-- `∑[A023645(n+1)]-A248517(n)` -/
def P9711404138267167916.Spec : Prop :=
  ∀ n, P9711404138267167916.a n = A348540 (n + 1)

end A348540

/-! ## A348540.P12247408049990561080

`Δ[A281376(n+1)]-A248517(n)`
-/

namespace A348540.P12247408049990561080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A248517 n

end

end A348540.P12247408049990561080

namespace A348540

/-- `Δ[A281376(n+1)]-A248517(n)` -/
def P12247408049990561080.Spec : Prop :=
  ∀ n, P12247408049990561080.a n = A348540 (n + 1)

end A348540

/-! ## A348540.P9395095472642612188

`∑[A076984(n+1)-1]-A248517(n)`
-/

namespace A348540.P9395095472642612188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A248517 n

end

end A348540.P9395095472642612188

namespace A348540

/-- `∑[A076984(n+1)-1]-A248517(n)` -/
def P9395095472642612188.Spec : Prop :=
  ∀ n, P9395095472642612188.a n = A348540 (n + 1)

end A348540

/-! ## A348540.P18207877327455276944

`∑[A000005(n+1)-(n%2+1)]-A248517(n)`
-/

namespace A348540.P18207877327455276944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - ((n % 2 + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A248517 n

end

end A348540.P18207877327455276944

namespace A348540

/-- `∑[A000005(n+1)-(n%2+1)]-A248517(n)` -/
def P18207877327455276944.Spec : Prop :=
  ∀ n, P18207877327455276944.a n = A348540 (n + 1)

end A348540

/-! ## A348540.P3896618140518021879

`A006218(floor(n/2))-(1-floor(A000005(n+1)-n/2))`
-/

namespace A348540.P3896618140518021879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ⌊(n : ℚ) / 2⌋.toNat - (1 - ⌊(A000005 (n + 1) : ℚ) - (n : ℚ) / 2⌋)

end

end A348540.P3896618140518021879

namespace A348540

/-- `A006218(floor(n/2))-(1-floor(A000005(n+1)-n/2))` -/
def P3896618140518021879.Spec : Prop :=
  ∀ n, P3896618140518021879.a n = A348540 (n + 1)

end A348540

/-!
# A348542: Number of partitions of n into 3 parts where at least one part is even.

The programs for A348542, the canonical program `A348542.P1268332564017095622` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348542 has offset 1).

The definition of A348542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348542.P1268332564017095622

`∑[A008615(n)]-A005044(A141310(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A348542

/-- `∑[A008615(n)]-A005044(A141310(n))` -/
def P1268332564017095622.Spec : Prop :=
  ∀ n, P1268332564017095622.a n = A348542 (n + 1)

theorem P1268332564017095622.correct : P1268332564017095622.Spec := by
  intro n
  simp only [A348542, Nat.add_sub_cancel]

end A348542

/-! ## A348542.P15153731478188999284

`Δ[A181120(n)-A181120(A080513(n))]`
-/

namespace A348542.P15153731478188999284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n - A181120 (A080513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348542.P15153731478188999284

namespace A348542

/-- `Δ[A181120(n)-A181120(A080513(n))]` -/
def P15153731478188999284.Spec : Prop :=
  ∀ n, P15153731478188999284.a n = A348542 (n + 1)

end A348542

/-! ## A348542.P17929915169645946987

`A069905(n+1)-A069905(A027656(n)+1)`
-/

namespace A348542.P17929915169645946987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) - A069905 (A027656 n + 1).toNat

end

end A348542.P17929915169645946987

namespace A348542

/-- `A069905(n+1)-A069905(A027656(n)+1)` -/
def P17929915169645946987.Spec : Prop :=
  ∀ n, P17929915169645946987.a n = A348542 (n + 1)

end A348542

/-! ## A348542.P9608678969477163385

`A348543(n+4)-(ceil(n/2)+1)`
-/

namespace A348542.P9608678969477163385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348543 (n + 4) - (⌈(n : ℚ) / 2⌉ + 1)

end

end A348542.P9608678969477163385

namespace A348542

/-- `A348543(n+4)-(ceil(n/2)+1)` -/
def P9608678969477163385.Spec : Prop :=
  ∀ n, P9608678969477163385.a n = A348542 (n + 1)

end A348542

/-! ## A348542.P17866057402712702723

`abs(A348543(n+4)-A080513(n))`
-/

namespace A348542.P17866057402712702723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A348543 (n + 4) - A080513 n|

end

end A348542.P17866057402712702723

namespace A348542

/-- `abs(A348543(n+4)-A080513(n))` -/
def P17866057402712702723.Spec : Prop :=
  ∀ n, P17866057402712702723.a n = A348542 (n + 1)

end A348542

/-! ## A348542.P7488373474851791881

`A005044(2*(n+1))-A005044(A141310(n))`
-/

namespace A348542.P7488373474851791881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 * (n + 1)) - A005044 (A141310 n).toNat

end

end A348542.P7488373474851791881

namespace A348542

/-- `A005044(2*(n+1))-A005044(A141310(n))` -/
def P7488373474851791881.Spec : Prop :=
  ∀ n, P7488373474851791881.a n = A348542 (n + 1)

end A348542

/-! ## A348542.P12066925208352554723

`floor(A073254(∑[A008624(n)])/3)`
-/

namespace A348542.P12066925208352554723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073254 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 3⌋

end

end A348542.P12066925208352554723

namespace A348542

/-- `floor(A073254(∑[A008624(n)])/3)` -/
def P12066925208352554723.Spec : Prop :=
  ∀ n, P12066925208352554723.a n = A348542 (n + 1)

end A348542

/-! ## A348542.P14965244141580618111

`floor(A073254(∑[A110655(n)])/3)`
-/

namespace A348542.P14965244141580618111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073254 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 3⌋

end

end A348542.P14965244141580618111

namespace A348542

/-- `floor(A073254(∑[A110655(n)])/3)` -/
def P14965244141580618111.Spec : Prop :=
  ∀ n, P14965244141580618111.a n = A348542 (n + 1)

end A348542

/-! ## A348542.P17477884755205838774

`A002264(A073254(∑[A008624(n)]))`
-/

namespace A348542.P17477884755205838774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A073254 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A348542.P17477884755205838774

namespace A348542

/-- `A002264(A073254(∑[A008624(n)]))` -/
def P17477884755205838774.Spec : Prop :=
  ∀ n, P17477884755205838774.a n = A348542 (n + 1)

end A348542

/-! ## A348542.P14095676506284241219

`A002264(A073254(∑[A110655(n)]))`
-/

namespace A348542.P14095676506284241219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A073254 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A348542.P14095676506284241219

namespace A348542

/-- `A002264(A073254(∑[A110655(n)]))` -/
def P14095676506284241219.Spec : Prop :=
  ∀ n, P14095676506284241219.a n = A348542 (n + 1)

end A348542

/-!
# A348543: Number of partitions of n into 3 parts with at least 1 odd part.

The programs for A348543, the canonical program `A348543.P15095564787934928745` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348543 has offset 1).

The definition of A348543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5540 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348543.P15095564787934928745

`round(A308422(n+1)/12)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A348543

/-- `round(A308422(n+1)/12)` -/
def P15095564787934928745.Spec : Prop :=
  ∀ n, P15095564787934928745.a n = A348543 (n + 1)

theorem P15095564787934928745.correct : P15095564787934928745.Spec := by
  intro n
  simp only [A348543, Nat.add_sub_cancel]

end A348543

/-! ## A348543.P1610972479759024102

`floor(∑[A028242(n)]/A010702(n))`
-/

namespace A348543.P1610972479759024102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A010702 n : ℚ)⌋

end

end A348543.P1610972479759024102

namespace A348543

/-- `floor(∑[A028242(n)]/A010702(n))` -/
def P1610972479759024102.Spec : Prop :=
  ∀ n, P1610972479759024102.a n = A348543 (n + 1)

end A348543

/-! ## A348543.P12178214190588473072

`floor(∑[A065033(n)]/A010702(n))`
-/

namespace A348543.P12178214190588473072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A010702 n : ℚ)⌋

end

end A348543.P12178214190588473072

namespace A348543

/-- `floor(∑[A065033(n)]/A010702(n))` -/
def P12178214190588473072.Spec : Prop :=
  ∀ n, P12178214190588473072.a n = A348543 (n + 1)

end A348543

/-! ## A348543.P3533033211154803215

`round(∑[A110654(n)]/A010702(n))`
-/

namespace A348543.P3533033211154803215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A010702 n : ℚ))

end

end A348543.P3533033211154803215

namespace A348543

/-- `round(∑[A110654(n)]/A010702(n))` -/
def P3533033211154803215.Spec : Prop :=
  ∀ n, P3533033211154803215.a n = A348543 (n + 1)

end A348543

/-! ## A348543.P9220221538660256462

`round(Δ[A173196(n)]/A010702(n))`
-/

namespace A348543.P9220221538660256462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A010702 n : ℚ))

end

end A348543.P9220221538660256462

namespace A348543

/-- `round(Δ[A173196(n)]/A010702(n))` -/
def P9220221538660256462.Spec : Prop :=
  ∀ n, P9220221538660256462.a n = A348543 (n + 1)

end A348543

/-! ## A348543.P16632529250599418834

`A001400(A109613(n))-∑[A008743(n)]`
-/

namespace A348543.P16632529250599418834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (A109613 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348543.P16632529250599418834

namespace A348543

/-- `A001400(A109613(n))-∑[A008743(n)]` -/
def P16632529250599418834.Spec : Prop :=
  ∀ n, P16632529250599418834.a n = A348543 (n + 1)

end A348543

/-! ## A348543.P1090458912670971908

`∑[A008615(n)]-A005044(A133265(n))`
-/

namespace A348543.P1090458912670971908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005044 (A133265 n).toNat

end

end A348543.P1090458912670971908

namespace A348543

/-- `∑[A008615(n)]-A005044(A133265(n))` -/
def P1090458912670971908.Spec : Prop :=
  ∀ n, P1090458912670971908.a n = A348543 (n + 1)

end A348543

/-! ## A348543.P17443720397036775926

`Δ[A181120(n)]-A005044(A133265(n))`
-/

namespace A348543.P17443720397036775926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005044 (A133265 n).toNat

end

end A348543.P17443720397036775926

namespace A348543

/-- `Δ[A181120(n)]-A005044(A133265(n))` -/
def P17443720397036775926.Spec : Prop :=
  ∀ n, P17443720397036775926.a n = A348543 (n + 1)

end A348543

/-! ## A348543.P11194568391192513391

`A069905(n+1)-A069905(A142150(n+1))`
-/

namespace A348543.P11194568391192513391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) - A069905 (A142150 (n + 1)).toNat

end

end A348543.P11194568391192513391

namespace A348543

/-- `A069905(n+1)-A069905(A142150(n+1))` -/
def P11194568391192513391.Spec : Prop :=
  ∀ n, P11194568391192513391.a n = A348543 (n + 1)

end A348543

/-! ## A348543.P14738633759317447132

`A069905(n+1)-A000035(n)*A005044(n+1)`
-/

namespace A348543.P14738633759317447132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) - A000035 n * A005044 (n + 1)

end

end A348543.P14738633759317447132

namespace A348543

/-- `A069905(n+1)-A000035(n)*A005044(n+1)` -/
def P14738633759317447132.Spec : Prop :=
  ∀ n, P14738633759317447132.a n = A348543 (n + 1)

end A348543

/-! ## A348543.P156220921671135413

`A308303(A042964(n+1))`
-/

namespace A348543.P156220921671135413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308303 (A042964 (n + 1)).toNat

end

end A348543.P156220921671135413

namespace A348543

/-- `A308303(A042964(n+1))` -/
def P156220921671135413.Spec : Prop :=
  ∀ n, P156220921671135413.a n = A348543 (n + 1)

end A348543

/-! ## A348543.P10323808490563267197

`A308303(A053438(n+1))`
-/

namespace A348543.P10323808490563267197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308303 (A053438 (n + 1)).toNat

end

end A348543.P10323808490563267197

namespace A348543

/-- `A308303(A053438(n+1))` -/
def P10323808490563267197.Spec : Prop :=
  ∀ n, P10323808490563267197.a n = A348543 (n + 1)

end A348543

/-! ## A348543.P2921271866213822356

`A008615(A004525(A308422(n+1)))`
-/

namespace A348543.P2921271866213822356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A004525 (A308422 (n + 1)).toNat).toNat

end

end A348543.P2921271866213822356

namespace A348543

/-- `A008615(A004525(A308422(n+1)))` -/
def P2921271866213822356.Spec : Prop :=
  ∀ n, P2921271866213822356.a n = A348543 (n + 1)

end A348543

/-!
# A348544: Positive integers that are equal both to the product of two integers ending with 3 and to that of two integers ending with 7.

The programs for A348544, there is no canonical definition to state claims against.
-/

/-! ## A348544.P2866952319138766092

`∩[A017377(3*(n+1)), A348054(n+1)]`
-/

namespace A348544.P2866952319138766092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348544.P2866952319138766092

/-! ## A348544.P8806554177036101138

`∩[A348054(n+1), A346950(n+5)]`
-/

namespace A348544.P8806554177036101138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346950 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348544.P8806554177036101138

/-! ## A348544.P1480226567596640989

`∩[A190876(3*(n+1)), A348054(n+1)]`
-/

namespace A348544.P1480226567596640989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190876 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348544.P1480226567596640989

/-! ## A348544.P7755299333561630120

`∩[A348054(n+1), A017377(A346951(n+5))]`
-/

namespace A348544.P7755299333561630120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A346951 (n + 5)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348544.P7755299333561630120

/-! ## A348544.P7592592491404862748

`∩[10*A346951(n+1)+9, A348054(n+1)]`
-/

namespace A348544.P7592592491404862748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A346951 (n + 1) + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348544.P7592592491404862748

/-!
# A348545: Positive integers with final digit 9 that are equal to the product of two integers ending with the same digit.

The programs for A348545, there is no canonical definition to state claims against.
-/

/-! ## A348545.P3340981125011552369

`∩[A239435(n+1), A017377(n)]`
-/

namespace A348545.P3340981125011552369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348545.P3340981125011552369

/-! ## A348545.P16285851981222550892

`∩[A053181(n+1), A239435(n+1)]`
-/

namespace A348545.P16285851981222550892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348545.P16285851981222550892

/-! ## A348545.P5285846986705982137

`∩[A239435(n+1), A268044(n+1)]`
-/

namespace A348545.P5285846986705982137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348545.P5285846986705982137

/-! ## A348545.P7879832291054137274

`∩[A239435(n+1), A273669(n+1)]`
-/

namespace A348545.P7879832291054137274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348545.P7879832291054137274

/-! ## A348545.P8132897951143390637

`∪[A346950(n+1), A348054(n+1)]`
-/

namespace A348545.P8132897951143390637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348545.P8132897951143390637

/-! ## A348545.P14037128543372212946

`∩[A239435(n+2)-2, A239435(n+2)]`
-/

namespace A348545.P14037128543372212946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239435 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239435 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348545.P14037128543372212946

/-!
# A348546: Number of positive integers with n digits that are equal both to the product of two integers ending with 3 and to that of two integers ending with 7.

The programs for A348546, there is no canonical definition to state claims against.
-/

/-! ## A348546.P2494545144145282338

`A346952(n+1)+A348055(n+1)-A348547(n+1)`
-/

namespace A348546.P2494545144145282338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346952 (n + 1) + A348055 (n + 1) - A348547 (n + 1)

end

end A348546.P2494545144145282338

/-!
# A348547: Number of positive integers with n digits and final digit 9 that are equal to the product of two integers ending with the same digit.

The programs for A348547, there is no canonical definition to state claims against.
-/

/-! ## A348547.P15692383682303764313

`A346952(n+1)+A348055(n+1)-A348546(n+1)`
-/

namespace A348547.P15692383682303764313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346952 (n + 1) + A348055 (n + 1) - A348546 (n + 1)

end

end A348547.P15692383682303764313

/-!
# A348548: Positive integers that are the product of two integers ending with 8.

The programs for A348548, there is no canonical definition to state claims against.
-/

/-! ## A348548.P3252417761075999655

`∩[A360558(n+1), A017317(n)]`
-/

namespace A348548.P3252417761075999655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348548.P3252417761075999655

/-! ## A348548.P14234563313182027297

`∩[A063143(n+1), A335248(n+1)]`
-/

namespace A348548.P14234563313182027297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348548.P14234563313182027297

/-!
# A348549: Number of positive integers with n digits that are the product of two integers ending with 8.

The programs for A348549, there is no canonical definition to state claims against.
-/

/-! ## A348549.P17378934092154111427

`n*A321450(A277203(n+1))`
-/

namespace A348549.P17378934092154111427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A321450 (A277203 (n + 1)).toNat

end

end A348549.P17378934092154111427

/-!
# A348550: Heinz numbers of integer partitions whose length is 2/3 their sum, rounded down.

The programs for A348550, there is no canonical definition to state claims against.
-/

/-! ## A348550.P2319670757619967564

`or(A068068(A056010(n)), A356232(n+1))`
-/

namespace A348550.P2319670757619967564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A068068 (A056010 n).toNat) (A356232 (n + 1))

end

end A348550.P2319670757619967564

/-! ## A348550.P8653407708546285477

`record[A128629(A187793(n+1))]`
-/

namespace A348550.P8653407708546285477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128629 (A187793 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348550.P8653407708546285477

/-! ## A348550.P6766681968293640701

`A246347(n+1)+A025474(A113179(n))`
-/

namespace A348550.P6766681968293640701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246347 (n + 1) + A025474 (A113179 n).toNat

end

end A348550.P6766681968293640701

/-! ## A348550.P15546823118078437100

`record[A328484(A194543(n)+A003056(3*n))]`
-/

namespace A348550.P15546823118078437100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328484 (A194543 n + A003056 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348550.P15546823118078437100

/-! ## A348550.P8306238327017882303

`∩[A000005(A002182(n+1)), A188163(n+1)]`
-/

namespace A348550.P8306238327017882303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002182 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348550.P8306238327017882303

/-!
# A348551: Heinz numbers of integer partitions whose mean is not an integer.

The programs for A348551, there is no canonical definition to state claims against.
-/

/-! ## A348551.P12776065950633441320

`comp[A316413(n+1)-1]+1`
-/

namespace A348551.P12776065950633441320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A348551.P12776065950633441320

/-! ## A348551.P10685748350399637856

`comp[A316413(n-floor(a(n-1)/6))]` with `a(0)=0`
-/

namespace A348551.P10685748350399637856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A316413 ((n : ℤ) - ⌊(f1 (n - 1) : ℚ) / 6⌋).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A348551.P10685748350399637856

/-! ## A348551.P6466474814742383050

`comp[A023443(A316413(n+1))]+1`
-/

namespace A348551.P6466474814742383050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A316413 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A348551.P6466474814742383050

/-! ## A348551.P3064542619286366669

`comp[∪[A316413(n+1), A048396(n)]]`
-/

namespace A348551.P3064542619286366669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048396 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A348551.P3064542619286366669

/-! ## A348551.P11534254730797605188

`comp[∪[A316413(n+1), A097256(n)]]`
-/

namespace A348551.P11534254730797605188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A348551.P11534254730797605188

/-! ## A348551.P7242598316386074558

`comp[A316413(n+1)%A196202(n+2)]`
-/

namespace A348551.P7242598316386074558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316413 (n + 1)) (A196202 (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A348551.P7242598316386074558

/-! ## A348551.P7774788278090597146

`eq[char[A316413(n+1)], A266220(2*n)]`
-/

namespace A348551.P7774788278090597146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A348551.P7774788278090597146

/-! ## A348551.P15229421492550416

`eq[A055756(n)%2, char[A316413(n+1)]]`
-/

namespace A348551.P15229421492550416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055756 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A348551.P15229421492550416

/-! ## A348551.P4359797272057168957

`eq[A164146(n)%2, char[A316413(n+1)]]`
-/

namespace A348551.P4359797272057168957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164146 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A348551.P4359797272057168957

/-! ## A348551.P4697641946000890501

`lt[char[A316413(n+1)]*A075334(n+1), n]`
-/

namespace A348551.P4697641946000890501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A075334 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A348551.P4697641946000890501

/-!
# A348552: Number of integer partitions of n with the same alternating product as alternating sum.

The programs for A348552, there is no canonical definition to state claims against.
-/

/-! ## A348552.P3965132587676657085

`A056556(A191391(n))+A005044(n)`
-/

namespace A348552.P3965132587676657085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A191391 n).toNat + A005044 n

end

end A348552.P3965132587676657085

/-! ## A348552.P1930606510712879632

`A353866(A073576(n))-A222735(n+7)`
-/

namespace A348552.P1930606510712879632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353866 (A073576 n).toNat - A222735 (n + 7)

end

end A348552.P1930606510712879632

/-! ## A348552.P14816384251098401901

`A227568(A039862(n+1))+A157685(A035957(n+1))`
-/

namespace A348552.P14816384251098401901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A039862 (n + 1)).toNat + A157685 (A035957 (n + 1)).toNat

end

end A348552.P14816384251098401901

/-! ## A348552.P16442953881048475449

`A103298(A293937(n+1))`
-/

namespace A348552.P16442953881048475449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A293937 (n + 1)).toNat

end

end A348552.P16442953881048475449

/-! ## A348552.P15899273401018291

`A353090(Δ[A000041(n+4)])`
-/

namespace A348552.P15899273401018291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353090 (f1 (n + 1) - f1 n).toNat

end

end A348552.P15899273401018291

/-!
# A348553: Number of digits in 11^n.

The programs for A348553, there is no canonical definition to state claims against.
-/

/-! ## A348553.P2205344107686574681

`record[(n+1)%A003549(A030104(n)+3)]`
-/

namespace A348553.P2205344107686574681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A003549 (A030104 n + 3).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348553.P2205344107686574681

/-!
# A348554: Irregular triangle read by rows: row n gives the divisors d of 2*n with 1 < d < 2*n, for n >= 2.

The programs for A348554, there is no canonical definition to state claims against.
-/

/-! ## A348554.P9745289464529342197

`A289508(n+1)+A289508(A248230(n+5))`
-/

namespace A348554.P9745289464529342197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1) + A289508 (A248230 (n + 5)).toNat

end

end A348554.P9745289464529342197

/-! ## A348554.P7214801358512741247

`A124010(A232589(3*n+2))+A055396(n+1)`
-/

namespace A348554.P7214801358512741247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A232589 (3 * n + 2)).toNat + A055396 (n + 1)

end

end A348554.P7214801358512741247

/-! ## A348554.P3308955953386019187

`A297173(A090634(n+1))+2`
-/

namespace A348554.P3308955953386019187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (A090634 (n + 1)).toNat + 2

end

end A348554.P3308955953386019187

/-! ## A348554.P9807151621935729956

`A391813(A286501(n))+A286469(n+1)`
-/

namespace A348554.P9807151621935729956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391813 (A286501 n).toNat + A286469 (n + 1)

end

end A348554.P9807151621935729956

/-! ## A348554.P2246815440570041517

`A347466(A091936(n+1))+A339662(n+1)`
-/

namespace A348554.P2246815440570041517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347466 (A091936 (n + 1)).toNat + A339662 (n + 1)

end

end A348554.P2246815440570041517

/-!
# A348555: Numbers k that divide the sum of the digits of 3^k * k!.

The programs for A348555, there is no canonical definition to state claims against.
-/

/-! ## A348555.P7515676972083287639

`A364847(A295963(n))`
-/

namespace A348555.P7515676972083287639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364847 (A295963 n).toNat

end

end A348555.P7515676972083287639

/-! ## A348555.P3263897407847066428

`A256544(A007092(4^n))`
-/

namespace A348555.P3263897407847066428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256544 (A007092 (4 ^ n)).toNat

end

end A348555.P3263897407847066428

/-!
# A348556: Binary expansion contains 4 adjacent 1's.

The programs for A348556, the canonical program `A348556.P1449905922643619445` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348556 has offset 1).

The definition of A348556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348556.P1449905922643619445

`lt[0, A014083(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A348556

/-- `lt[0, A014083(n)]` -/
def P1449905922643619445.Spec : Prop :=
  ∀ n, (P1449905922643619445.a n : ℤ) = A348556 (n + 1)

theorem P1449905922643619445.correct : P1449905922643619445.Spec := by
  intro n
  simp only [A348556, Nat.add_sub_cancel]

end A348556

/-! ## A348556.P2063192759505535446

`eq[2, A000005(a(and(n, 2*n)))]` with `a(0)=44`
-/

namespace A348556.P2063192759505535446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [44] fun n f2 =>
  A000005 (f2 (Nat.land n (2 * n))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348556.P2063192759505535446

namespace A348556

/-- `eq[2, A000005(a(and(n, 2*n)))]` -/
def P2063192759505535446.Spec : Prop :=
  ∀ n, (P2063192759505535446.a n : ℤ) = A348556 (n + 1)

end A348556

/-! ## A348556.P7253466483609494951

`eq[1, A008683(2*A000040(A014083(n)+1))]`
-/

namespace A348556.P7253466483609494951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000040 (A014083 n + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348556.P7253466483609494951

namespace A348556

/-- `eq[1, A008683(2*A000040(A014083(n)+1))]` -/
def P7253466483609494951.Spec : Prop :=
  ∀ n, (P7253466483609494951.a n : ℤ) = A348556 (n + 1)

end A348556

/-! ## A348556.P13317400759242146816

`eq[4, A000005(2*A000040(A014083(n)+1))]`
-/

namespace A348556.P13317400759242146816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A000040 (A014083 n + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348556.P13317400759242146816

namespace A348556

/-- `eq[4, A000005(2*A000040(A014083(n)+1))]` -/
def P13317400759242146816.Spec : Prop :=
  ∀ n, (P13317400759242146816.a n : ℤ) = A348556 (n + 1)

end A348556

/-! ## A348556.P18028657911794957829

`eq[1, A323956(a(A213370(n)))]` with `a(0)=7`
-/

namespace A348556.P18028657911794957829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  A323956 (f2 (A213370 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348556.P18028657911794957829

namespace A348556

/-- `eq[1, A323956(a(A213370(n)))]` -/
def P18028657911794957829.Spec : Prop :=
  ∀ n, (P18028657911794957829.a n : ℤ) = A348556 (n + 1)

end A348556

/-! ## A348556.P2432430991887553225

`eq[1, A029922(a(A213370(n)))]` with `a(0)=8`
-/

namespace A348556.P2432430991887553225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f2 =>
  A029922 (f2 (A213370 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348556.P2432430991887553225

namespace A348556

/-- `eq[1, A029922(a(A213370(n)))]` -/
def P2432430991887553225.Spec : Prop :=
  ∀ n, (P2432430991887553225.a n : ℤ) = A348556 (n + 1)

end A348556

/-! ## A348556.P6770503952455350408

`eq[1, A000010(a(A213370(n)))]` with `a(0)=11`
-/

namespace A348556.P6770503952455350408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f2 =>
  A000010 (f2 (A213370 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348556.P6770503952455350408

namespace A348556

/-- `eq[1, A000010(a(A213370(n)))]` -/
def P6770503952455350408.Spec : Prop :=
  ∀ n, (P6770503952455350408.a n : ℤ) = A348556 (n + 1)

end A348556

/-! ## A348556.P13513975387484196779

`lt[2, A048726(A048735(and(n, 4*n)))]`
-/

namespace A348556.P13513975387484196779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048726 (A048735 (Nat.land n (4 * n))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348556.P13513975387484196779

namespace A348556

/-- `lt[2, A048726(A048735(and(n, 4*n)))]` -/
def P13513975387484196779.Spec : Prop :=
  ∀ n, (P13513975387484196779.a n : ℤ) = A348556 (n + 1)

end A348556

/-! ## A348556.P15327080079498672876

`lt[1, A048729(A048735(n))]`
-/

namespace A348556.P15327080079498672876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048729 (A048735 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348556.P15327080079498672876

namespace A348556

/-- `lt[1, A048729(A048735(n))]` -/
def P15327080079498672876.Spec : Prop :=
  ∀ n, (P15327080079498672876.a n : ℤ) = A348556 (n + 1)

end A348556

/-! ## A348556.P4065899035798760461

`lt[1, A038374(A028310(n))-2]`
-/

namespace A348556.P4065899035798760461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348556.P4065899035798760461

namespace A348556

/-- `lt[1, A038374(A028310(n))-2]` -/
def P4065899035798760461.Spec : Prop :=
  ∀ n, (P4065899035798760461.a n : ℤ) = A348556 (n + 1)

end A348556

/-! ## A348556.P12804199781139984144

`lt[1, A061395(A246029(n))-2]`
-/

namespace A348556.P12804199781139984144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A246029 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348556.P12804199781139984144

namespace A348556

/-- `lt[1, A061395(A246029(n))-2]` -/
def P12804199781139984144.Spec : Prop :=
  ∀ n, (P12804199781139984144.a n : ℤ) = A348556 (n + 1)

end A348556

/-! ## A348556.P3849180844131488586

`eq[1, gcd(A014083(n), A050265(n+1))]`
-/

namespace A348556.P3849180844131488586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014083 n) (A050265 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348556.P3849180844131488586

namespace A348556

/-- `eq[1, gcd(A014083(n), A050265(n+1))]` -/
def P3849180844131488586.Spec : Prop :=
  ∀ n, (P3849180844131488586.a n : ℤ) = A348556 (n + 1)

end A348556

/-! ## A348556.P14569213124208336254

`lt[4, A331985(A048728(n))]`
-/

namespace A348556.P14569213124208336254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331985 (A048728 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348556.P14569213124208336254

namespace A348556

/-- `lt[4, A331985(A048728(n))]` -/
def P14569213124208336254.Spec : Prop :=
  ∀ n, (P14569213124208336254.a n : ℤ) = A348556 (n + 1)

end A348556

/-! ## A348556.P9439423634752907045

`lt[1, A087117(A010078(n+1))-2]`
-/

namespace A348556.P9439423634752907045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A010078 (n + 1)).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348556.P9439423634752907045

namespace A348556

/-- `lt[1, A087117(A010078(n+1))-2]` -/
def P9439423634752907045.Spec : Prop :=
  ∀ n, (P9439423634752907045.a n : ℤ) = A348556 (n + 1)

end A348556

/-! ## A348556.P9985612440678853353

`eq[0, A007428(A278222(n))]`
-/

namespace A348556.P9985612440678853353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007428 (A278222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348556.P9985612440678853353

namespace A348556

/-- `eq[0, A007428(A278222(n))]` -/
def P9985612440678853353.Spec : Prop :=
  ∀ n, (P9985612440678853353.a n : ℤ) = A348556 (n + 1)

end A348556

/-!
# A348557: List of indices k such that A327267(k) is less than A328666(k).

The programs for A348557, there is no canonical definition to state claims against.
-/

/-! ## A348557.P14167993230440294569

`filter[A145092(3*n+1), A275305(#)]`
-/

namespace A348557.P14167993230440294569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145092 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A275305 (f1 j).toNat = 1) n)

end

end A348557.P14167993230440294569

/-!
# A348558: Primes where every other digit is 1 starting with the rightmost digit, and no other digit is 1.

The programs for A348558, there is no canonical definition to state claims against.
-/

/-! ## A348558.P13826744826366747272

`∩[10*n+1, A032758(n+1)]`
-/

namespace A348558.P13826744826366747272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348558.P13826744826366747272

/-! ## A348558.P3442667678430529849

`A040969(A032555(n+1))`
-/

namespace A348558.P3442667678430529849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040969 (A032555 (n + 1)).toNat

end

end A348558.P3442667678430529849

/-! ## A348558.P7165634982102907239

`A040969(A032559(n+1))`
-/

namespace A348558.P7165634982102907239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040969 (A032559 (n + 1)).toNat

end

end A348558.P7165634982102907239

/-! ## A348558.P13216082484460846991

`A040969(A077739(n+1))`
-/

namespace A348558.P13216082484460846991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040969 (A077739 (n + 1)).toNat

end

end A348558.P13216082484460846991

/-! ## A348558.P9046625296099642584

`A040969(A078213(n+1))`
-/

namespace A348558.P9046625296099642584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040969 (A078213 (n + 1)).toNat

end

end A348558.P9046625296099642584

/-!
# A348559: Primes where every other digit is 3 starting with the rightmost digit, and no other digit is 3.

The programs for A348559, there is no canonical definition to state claims against.
-/

/-! ## A348559.P13607396249392020004

`∩[10*n+3, A032758(n+1)]`
-/

namespace A348559.P13607396249392020004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348559.P13607396249392020004

/-! ## A348559.P14744962846646170973

`∩[A032758(n+1), A016885(n)]`
-/

namespace A348559.P14744962846646170973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348559.P14744962846646170973

/-! ## A348559.P14804235120958228509

`∩[A032758(n+1), A017305(n)]`
-/

namespace A348559.P14804235120958228509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348559.P14804235120958228509

/-! ## A348559.P8921486945319635257

`∩[A242541(n+1), A016885(n)]`
-/

namespace A348559.P8921486945319635257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348559.P8921486945319635257

/-! ## A348559.P12151278106611808417

`∩[A242541(n+1), A017305(n)]`
-/

namespace A348559.P12151278106611808417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348559.P12151278106611808417

/-!
# A348560: Primes where every other digit is 7 starting with the rightmost digit, and no other digit is 7.

The programs for A348560, there is no canonical definition to state claims against.
-/

/-! ## A348560.P2796733712553278004

`filter[A032758(n+1), A185708(#)]`
-/

namespace A348560.P2796733712553278004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A348560.P2796733712553278004

/-! ## A348560.P3700158367175500810

`filter[A242541(n+1), A185708(#)]`
-/

namespace A348560.P3700158367175500810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A348560.P3700158367175500810

/-! ## A348560.P17911423374200913988

`∩[A030432(n+1), A032758(n+1)]`
-/

namespace A348560.P17911423374200913988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348560.P17911423374200913988

/-! ## A348560.P18123308723416425370

`∩[A032758(n+1), A090652(n+1)]`
-/

namespace A348560.P18123308723416425370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348560.P18123308723416425370

/-! ## A348560.P3739093524888540895

`∩[A030432(n+1), A242541(n+1)]`
-/

namespace A348560.P3739093524888540895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348560.P3739093524888540895

/-!
# A348561: Primes where every other digit is 9 starting with the rightmost digit, and no other digit is 9.

The programs for A348561, there is no canonical definition to state claims against.
-/

/-! ## A348561.P11980971515540010819

`filter[A032758(n+1), A185709(#)]`
-/

namespace A348561.P11980971515540010819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185709 (f1 j).toNat = 1) n)

end

end A348561.P11980971515540010819

/-! ## A348561.P17150353438623294198

`filter[A242541(n+1), A185709(#)]`
-/

namespace A348561.P17150353438623294198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185709 (f1 j).toNat = 1) n)

end

end A348561.P17150353438623294198

/-! ## A348561.P14624103428801178621

`p?[record[A151360(A087082(n+1))]]`
-/

namespace A348561.P14624103428801178621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151360 (A087082 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A348561.P14624103428801178621

/-!
# A348567: Number of fully symmetric recurrent sandpiles on an n X n grid.

The programs for A348567, there is no canonical definition to state claims against.
-/

/-! ## A348567.P8793235698965438232

`A032544(A282206(n+1)+A073641(n+1))`
-/

namespace A348567.P8793235698965438232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032544 (A282206 (n + 1) + A073641 (n + 1)).toNat

end

end A348567.P8793235698965438232

/-! ## A348567.P9434229037743389171

`A032544(A282206(n+1)+A075609(n+1))`
-/

namespace A348567.P9434229037743389171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032544 (A282206 (n + 1) + A075609 (n + 1)).toNat

end

end A348567.P9434229037743389171

/-!
# A348568: Highly composite numbers (A002182) such that the exponents of 2 and 3 in their prime factorization are equal.

The programs for A348568, there is no canonical definition to state claims against.
-/

/-! ## A348568.P14192917437239414217

`∩[A002182(n+1), A056153(n+1)]`
-/

namespace A348568.P14192917437239414217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348568.P14192917437239414217

/-! ## A348568.P14785160767785688039

`∩[A002182(n+1), A025487(A329897(n+1))]`
-/

namespace A348568.P14785160767785688039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A329897 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348568.P14785160767785688039

/-! ## A348568.P10031926400964825862

`∩[A135372(n+1)-1, A025487(A329897(n+1))]`
-/

namespace A348568.P10031926400964825862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A329897 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348568.P10031926400964825862

/-! ## A348568.P6155096981121059315

`∩[A056153(n+1), A094348(n+1)]`
-/

namespace A348568.P6155096981121059315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348568.P6155096981121059315

/-!
# A348569: a(n) = (prime(n) + prime(n+2))^2 + prime(n+1)^2.

The programs for A348569, the canonical program `A348569.P9711021300508659903` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348569 has offset 1).

The definition of A348569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348569.P9475738596348309768

`A133529(n+1)+2*A090076(n+1)`
-/

namespace A348569.P9475738596348309768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133529 (n + 1) + 2 * A090076 (n + 1)

end

end A348569.P9475738596348309768

namespace A348569

/-- `A133529(n+1)+2*A090076(n+1)` -/
def P9475738596348309768.Spec : Prop :=
  ∀ n, P9475738596348309768.a n = A348569 (n + 1)

end A348569

/-! ## A348569.P9711021300508659903

`A133529(n+1)+A100484(n+1)*A215848(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A348569

/-- `A133529(n+1)+A100484(n+1)*A215848(n+1)` -/
def P9711021300508659903.Spec : Prop :=
  ∀ n, P9711021300508659903.a n = A348569 (n + 1)

theorem P9711021300508659903.correct : P9711021300508659903.Spec := by
  intro n
  simp only [A348569, Nat.add_sub_cancel]

end A348569

/-! ## A348569.P10914041570866014398

`A001248(n+2)+A048448(n+2)²`
-/

namespace A348569.P10914041570866014398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) + A048448 (n + 2) ^ 2

end

end A348569.P10914041570866014398

namespace A348569

/-- `A001248(n+2)+A048448(n+2)²` -/
def P10914041570866014398.Spec : Prop :=
  ∀ n, P10914041570866014398.a n = A348569 (n + 1)

end A348569

/-! ## A348569.P10659902784564787793

`A000040(n+2)²+A048448(n+2)²`
-/

namespace A348569.P10659902784564787793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) ^ 2 + A048448 (n + 2) ^ 2

end

end A348569.P10659902784564787793

namespace A348569

/-- `A000040(n+2)²+A048448(n+2)²` -/
def P10659902784564787793.Spec : Prop :=
  ∀ n, P10659902784564787793.a n = A348569 (n + 1)

end A348569

/-! ## A348569.P9400422177196516005

`A006005(n+2)²+A176099(n+3)²`
-/

namespace A348569.P9400422177196516005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2) ^ 2 + A176099 (n + 3) ^ 2

end

end A348569.P9400422177196516005

namespace A348569

/-- `A006005(n+2)²+A176099(n+3)²` -/
def P9400422177196516005.Spec : Prop :=
  ∀ n, P9400422177196516005.a n = A348569 (n + 1)

end A348569

/-!
# A348576: Triangle read by rows: T(n,k) is the number of ordered partitions of [n] into k nonempty subsets, in which the first subset has size at least 2, n >= 1 and 1 <= k <= n.

The programs for A348576, there is no canonical definition to state claims against.
-/

/-! ## A348576.P3697485295950737034

`A019538(n+1)-A002024(n+1)*A131689(n)`
-/

namespace A348576.P3697485295950737034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (n + 1) - A002024 (n + 1) * A131689 n

end

end A348576.P3697485295950737034

/-! ## A348576.P14436603543169860114

`A350656(A269939(n+1))`
-/

namespace A348576.P14436603543169860114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350656 (A269939 (n + 1)).toNat

end

end A348576.P14436603543169860114

/-! ## A348576.P8581386388197406431

`A191845(A222060(n+1)+1)`
-/

namespace A348576.P8581386388197406431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191845 (A222060 (n + 1) + 1).toNat

end

end A348576.P8581386388197406431

/-!
# A348577: Positive integers that are not the perimeter of any integer-sided right triangle.

The programs for A348577, there is no canonical definition to state claims against.
-/

/-! ## A348577.P6830740367288689640

`comp[A136000(n+1)]+1`
-/

namespace A348577.P6830740367288689640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A348577.P6830740367288689640

/-! ## A348577.P12465747974447915303

`comp[2*comp[A174905(n+1)]]`
-/

namespace A348577.P12465747974447915303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A348577.P12465747974447915303

/-! ## A348577.P4630171343858190652

`comp[A009096(n+1)-1]+1`
-/

namespace A348577.P4630171343858190652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009096 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A348577.P4630171343858190652

/-! ## A348577.P14739741678023636514

`eq[2, sqrt(a(A024155(n)))]` with `a(0)=4`
-/

namespace A348577.P14739741678023636514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f2 =>
  Real.sqrt (f2 (A024155 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A348577.P14739741678023636514

/-! ## A348577.P5794888618547590630

`eq[0, A024155(n+1)]+1`
-/

namespace A348577.P5794888618547590630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348577.P5794888618547590630

/-! ## A348577.P8769077786916104715

`eq[2, A000032(a(A024155(n)))]` with `a(0)=0`
-/

namespace A348577.P8769077786916104715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A024155 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348577.P8769077786916104715

/-!
# A348578: Primes that begin a record list of consecutive primes whose sum of any 2 consecutive terms is divisible by 3.

The programs for A348578, there is no canonical definition to state claims against.
-/

/-! ## A348578.P6794110567933881965

`record[A289119(n+1)-char[1]]`
-/

namespace A348578.P6794110567933881965
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289119 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348578.P6794110567933881965

/-! ## A348578.P3430675484697757658

`record[A289119((n%4+n)/2+1)]`
-/

namespace A348578.P3430675484697757658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289119 (SequenceMachineLib.roundAway (((n % 4 + n : ℕ) : ℚ) / 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348578.P3430675484697757658

/-! ## A348578.P879856479090429913

`record[A289119((n+1)/4^val(n+1, 4))]`
-/

namespace A348578.P879856479090429913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289119 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348578.P879856479090429913

/-! ## A348578.P2405079467225050606

`record[A289119(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A348578.P2405079467225050606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289119 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348578.P2405079467225050606

/-! ## A348578.P14608454814849748925

`record[A289119(A203814(n))]`
-/

namespace A348578.P14608454814849748925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289119 (A203814 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348578.P14608454814849748925

/-!
# A348579: Triangle T(n, k), n > 0, 0 < k <= n, read by rows; the n-th row contains, in ascending order, the numbers m such that A307730(m) = n.

The programs for A348579, there is no canonical definition to state claims against.
-/

/-! ## A348579.P8659124301858982683

`lt[A307730(n+1), 6]+1`
-/

namespace A348579.P8659124301858982683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307730 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A348579.P8659124301858982683

/-! ## A348579.P10973863216657237828

`A343344(∏[char[∑[n]]+1])+n+1`
-/

namespace A348579.P10973863216657237828
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 (∏ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A348579.P10973863216657237828

/-! ## A348579.P14810050691955479754

`∑[A224697(A061312(n))]`
-/

namespace A348579.P14810050691955479754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 (A061312 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348579.P14810050691955479754

/-! ## A348579.P9674215755611954871

`∑[A224697(A152391(n))]`
-/

namespace A348579.P9674215755611954871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 (A152391 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348579.P9674215755611954871

/-! ## A348579.P15811258665806323590

`∑[A000188(A297388(n))]`
-/

namespace A348579.P15811258665806323590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A297388 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348579.P15811258665806323590

/-!
# A348580: Expansion of e.g.f. exp(x) / (1 - sin(x)).

The programs for A348580, there is no canonical definition to state claims against.
-/

/-! ## A348580.P17652299095782582514

`Δ[A000667(n)]`
-/

namespace A348580.P17652299095782582514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348580.P17652299095782582514

/-! ## A348580.P5379732863380489278

`ceil(A292756(n)/2)`
-/

namespace A348580.P5379732863380489278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A292756 n : ℚ) / 2⌉

end

end A348580.P5379732863380489278

/-! ## A348580.P11586762173458090419

`Δ[A292975(A027379(n)+1)]`
-/

namespace A348580.P11586762173458090419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A027379 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348580.P11586762173458090419

/-! ## A348580.P2314893730050288874

`Δ[A292975(A034856(n+1))]`
-/

namespace A348580.P2314893730050288874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348580.P2314893730050288874

/-! ## A348580.P7963998551606898045

`Δ[A009739(n)+A003701(n)]`
-/

namespace A348580.P7963998551606898045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009739 n + A003701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348580.P7963998551606898045

/-! ## A348580.P3590072013306149761

`Δ[A062272(n)+A062161(n)]`
-/

namespace A348580.P3590072013306149761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062272 n + A062161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348580.P3590072013306149761

/-! ## A348580.P5092005571222771692

`Δ[A230951(n)+A230950(n)]`
-/

namespace A348580.P5092005571222771692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230951 n + A230950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348580.P5092005571222771692

/-! ## A348580.P1502781807317091420

`A000667(n+1)-A000667(n)`
-/

namespace A348580.P1502781807317091420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000667 (n + 1) - A000667 n

end

end A348580.P1502781807317091420

/-! ## A348580.P6810081029249135564

`A186364(n)+2*A352906(n)`
-/

namespace A348580.P6810081029249135564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186364 n + 2 * A352906 n

end

end A348580.P6810081029249135564

/-! ## A348580.P1295035028885619029

`Δ[A062162(n)+2*A062161(n)]`
-/

namespace A348580.P1295035028885619029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062162 n + 2 * A062161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348580.P1295035028885619029

/-!
# A348581: a(n) is the least factor among all the products A307720(k) * A307720(k+1) equal to n.

The programs for A348581, there is no canonical definition to state claims against.
-/

/-! ## A348581.P12754317884198570442

`(n+1)/A348582(n+1)`
-/

namespace A348581.P12754317884198570442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348582 (n + 1) : ℚ)

end

end A348581.P12754317884198570442

/-! ## A348581.P4484085755541183286

`A219158(A348582(n+1)+A000217(n))`
-/

namespace A348581.P4484085755541183286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A348582 (n + 1) + A000217 n).toNat

end

end A348581.P4484085755541183286

/-! ## A348581.P13808217617746425733

`A234575(A348582(n+1)+∑[n])`
-/

namespace A348581.P13808217617746425733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A348582 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A348581.P13808217617746425733

/-! ## A348581.P18033899416097374938

`A126988(A348582(n+1)+∑[n])`
-/

namespace A348581.P18033899416097374938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A348582 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A348581.P18033899416097374938

/-! ## A348581.P1737613161436250600

`A010766(A348582(n+1)+A000217(n))`
-/

namespace A348581.P1737613161436250600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A348582 (n + 1) + A000217 n).toNat

end

end A348581.P1737613161436250600

/-! ## A348581.P17901799445996917313

`A049834(A348582(n+1)+A000217(n))`
-/

namespace A348581.P17901799445996917313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A348582 (n + 1) + A000217 n).toNat

end

end A348581.P17901799445996917313

/-! ## A348581.P6756854464143963722

`A051537(A348582(n+1)+A000217(n))`
-/

namespace A348581.P6756854464143963722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A348582 (n + 1) + A000217 n).toNat

end

end A348581.P6756854464143963722

/-! ## A348581.P11370037117903412961

`A054531(A348582(n+1)+A000217(n))`
-/

namespace A348581.P11370037117903412961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A348582 (n + 1) + A000217 n).toNat

end

end A348581.P11370037117903412961

/-!
# A348582: a(n) is the greatest factor among all the products A307720(k) * A307720(k+1) equal to n.

The programs for A348582, there is no canonical definition to state claims against.
-/

/-! ## A348582.P12916363458744115640

`(n+1)/A348581(n+1)`
-/

namespace A348582.P12916363458744115640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348581 (n + 1) : ℚ)

end

end A348582.P12916363458744115640

/-! ## A348582.P5444954184140252466

`(n+1)*A348581(n+1)^A008683(A020484(n))`
-/

namespace A348582.P5444954184140252466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A348581 (n + 1) : ℚ) ^ (A008683 (A020484 n).toNat : ℤ)

end

end A348582.P5444954184140252466

/-! ## A348582.P9289167723023697680

`A219158(A348581(n+1)+A000217(n))`
-/

namespace A348582.P9289167723023697680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A348581 (n + 1) + A000217 n).toNat

end

end A348582.P9289167723023697680

/-! ## A348582.P1064512153799147332

`A234575(A348581(n+1)+A000217(n))`
-/

namespace A348582.P1064512153799147332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A348581 (n + 1) + A000217 n).toNat

end

end A348582.P1064512153799147332

/-! ## A348582.P4213419748934749452

`A051537(A348581(n+1)+∑[n])`
-/

namespace A348582.P4213419748934749452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A348581 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A348582.P4213419748934749452

/-! ## A348582.P10480732020174415415

`A054531(A348581(n+1)+∑[n])`
-/

namespace A348582.P10480732020174415415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A348581 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A348582.P10480732020174415415

/-! ## A348582.P3858062461085519476

`A126988(A348581(n+1)+A000217(n))`
-/

namespace A348582.P3858062461085519476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A348581 (n + 1) + A000217 n).toNat

end

end A348582.P3858062461085519476

/-!
# A348583: Numbers k such that k | A002129(k).

The programs for A348583, there is no canonical definition to state claims against.
-/

/-! ## A348583.P7204256446597722309

`A000203((∑[∑[C(3*2^n, 2)]]-2)*2^n)`
-/

namespace A348583.P7204256446597722309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * 2 ^ n) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2) * (2 ^ n : ℤ)).toNat

end

end A348583.P7204256446597722309

/-!
# A348584: Numbers k such that k | A328258(k).

The programs for A348584, there is no canonical definition to state claims against.
-/

/-! ## A348584.P18427945212733698289

`record[A325636(A026262(3*n+2))]`
-/

namespace A348584.P18427945212733698289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325636 (A026262 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348584.P18427945212733698289

/-! ## A348584.P11942853870435849824

`A000203(A330532(n+1))/A327857(n)`
-/

namespace A348584.P11942853870435849824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A330532 (n + 1)).toNat : ℚ) / (A327857 n : ℚ)

end

end A348584.P11942853870435849824

/-!
# A348589: a(n) = (10^n+2)^2 / 6.

The programs for A348589, the canonical program `A348589.P5274366174518620815` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348589 has offset 1).

The definition of A348589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348589.P5274366174518620815

`(10^(n+1)+2)²/6`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A348589

/-- `(10^(n+1)+2)²/6` -/
def P5274366174518620815.Spec : Prop :=
  ∀ n, P5274366174518620815.a n = (A348589 (n + 1) : ℚ)

end A348589

/-! ## A348589.P12029385597056693103

`6*A126109(n)²`
-/

namespace A348589.P12029385597056693103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A126109 n ^ 2

end

end A348589.P12029385597056693103

namespace A348589

/-- `6*A126109(n)²` -/
def P12029385597056693103.Spec : Prop :=
  ∀ n, P12029385597056693103.a n = A348589 (n + 1)

end A348589

/-! ## A348589.P8491326727889896745

`3/2*A102807(n+1)`
-/

namespace A348589.P8491326727889896745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A102807 (n + 1) : ℚ)

end

end A348589.P8491326727889896745

namespace A348589

/-- `3/2*A102807(n+1)` -/
def P8491326727889896745.Spec : Prop :=
  ∀ n, P8491326727889896745.a n = (A348589 (n + 1) : ℚ)

end A348589

/-! ## A348589.P16579423013849163511

`A126109(n)*A133384(n)`
-/

namespace A348589.P16579423013849163511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126109 n * A133384 n

end

end A348589.P16579423013849163511

namespace A348589

/-- `A126109(n)*A133384(n)` -/
def P16579423013849163511.Spec : Prop :=
  ∀ n, P16579423013849163511.a n = A348589 (n + 1)

end A348589

/-! ## A348589.P912261155710517613

`2*A126109(n)*A199685(n)`
-/

namespace A348589.P912261155710517613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A126109 n * A199685 n)

end

end A348589.P912261155710517613

namespace A348589

/-- `2*A126109(n)*A199685(n)` -/
def P912261155710517613.Spec : Prop :=
  ∀ n, P912261155710517613.a n = A348589 (n + 1)

end A348589

/-! ## A348589.P5116563286617494

`(A199682(n)-A093137(n))*A133384(n)`
-/

namespace A348589.P5116563286617494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A199682 n - A093137 n) * A133384 n

end

end A348589.P5116563286617494

namespace A348589

/-- `(A199682(n)-A093137(n))*A133384(n)` -/
def P5116563286617494.Spec : Prop :=
  ∀ n, P5116563286617494.a n = A348589 (n + 1)

end A348589

/-!
# A348590: Number of endofunctions on [n] with exactly one isolated fixed point.

The programs for A348590, there is no canonical definition to state claims against.
-/

/-! ## A348590.P3376480921571534447

`A350212(∑[n]+1)`
-/

namespace A348590.P3376480921571534447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350212 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A348590.P3376480921571534447

/-! ## A348590.P8462810897317115919

`n*A350212(A161680(n))`
-/

namespace A348590.P8462810897317115919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A350212 (A161680 n).toNat

end

end A348590.P8462810897317115919

/-! ## A348590.P13141064549893156642

`lcm(n, A350212(A000124(n)))`
-/

namespace A348590.P13141064549893156642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A350212 (A000124 n).toNat)

end

end A348590.P13141064549893156642

/-! ## A348590.P16253011299580234464

`n*A350212(A000217(n)-n)`
-/

namespace A348590.P16253011299580234464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A350212 (A000217 n - (n : ℤ)).toNat

end

end A348590.P16253011299580234464

/-! ## A348590.P4159926506116648386

`A054977(n)*A350212(A000124(n))`
-/

namespace A348590.P4159926506116648386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A350212 (A000124 n).toNat

end

end A348590.P4159926506116648386

/-! ## A348590.P1240284733839676327

`A057427(n)*A350212(A000124(n))`
-/

namespace A348590.P1240284733839676327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A350212 (A000124 n).toNat

end

end A348590.P1240284733839676327

/-! ## A348590.P1635895490066563066

`A350212(A000124(n))+A204065(A000040(n+1))`
-/

namespace A348590.P1635895490066563066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350212 (A000124 n).toNat + A204065 (A000040 (n + 1)).toNat

end

end A348590.P1635895490066563066

/-!
# A348591: a(n) = L(n)*L(n+1) mod F(n+2) where F=A000045 is the Fibonacci numbers and L = A000032 is the Lucas numbers.

The programs for A348591, the canonical program `A348591.P3402861072940696725` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348591 has offset 0).

The definition of A348591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348591.P18199907025651442994

`A001906(n)%A373566(n)`
-/

namespace A348591.P18199907025651442994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001906 n) (A373566 n)

end

end A348591.P18199907025651442994

namespace A348591

/-- `A001906(n)%A373566(n)` -/
def P18199907025651442994.Spec : Prop :=
  ∀ n, P18199907025651442994.a n = A348591 n

end A348591

/-! ## A348591.P14358951878353945254

`A088305(n)%A373566(n)`
-/

namespace A348591.P14358951878353945254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088305 n) (A373566 n)

end

end A348591.P14358951878353945254

namespace A348591

/-- `A088305(n)%A373566(n)` -/
def P14358951878353945254.Spec : Prop :=
  ∀ n, P14358951878353945254.a n = A348591 n

end A348591

/-! ## A348591.P3402861072940696725

`A000045(2*n)%A000045(n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A348591

/-- `A000045(2*n)%A000045(n+2)` -/
def P3402861072940696725.Spec : Prop :=
  ∀ n, P3402861072940696725.a n = A348591 n

theorem P3402861072940696725.correct : P3402861072940696725.Spec := by
  intro n
  simp only [A348591]

end A348591

/-! ## A348591.P16976210848693487361

`A212804(2*n+1)%record[A212804(n)]`
-/

namespace A348591.P16976210848693487361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212804 (2 * n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A348591.P16976210848693487361

namespace A348591

/-- `A212804(2*n+1)%record[A212804(n)]` -/
def P16976210848693487361.Spec : Prop :=
  ∀ n, P16976210848693487361.a n = A348591 n

end A348591

/-! ## A348591.P7777636835586685906

`A000045(A004277(n))%A212804(n+3)`
-/

namespace A348591.P7777636835586685906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A004277 n).toNat) (A212804 (n + 3))

end

end A348591.P7777636835586685906

namespace A348591

/-- `A000045(A004277(n))%A212804(n+3)` -/
def P7777636835586685906.Spec : Prop :=
  ∀ n, P7777636835586685906.a n = A348591 n

end A348591

/-! ## A348591.P3705570481557413953

`Δ[A001519(n)]%A000045(n+2)`
-/

namespace A348591.P3705570481557413953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000045 (n + 2))

end

end A348591.P3705570481557413953

namespace A348591

/-- `Δ[A001519(n)]%A000045(n+2)` -/
def P3705570481557413953.Spec : Prop :=
  ∀ n, P3705570481557413953.a n = A348591 n

end A348591

/-!
# A348592: a(n) = F(n)*F(n+1) mod L(n+2) where F=A000045 is the Fibonacci numbers and L = A000032 is the Lucas numbers.

The programs for A348592, the canonical program `A348592.P14213497984520142954` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348592 has offset 0).

The definition of A348592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348592.P14213497984520142954

`A001654(n)%A288219(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A348592

/-- `A001654(n)%A288219(n)` -/
def P14213497984520142954.Spec : Prop :=
  ∀ n, P14213497984520142954.a n = A348592 n

theorem P14213497984520142954.correct : P14213497984520142954.Spec := by
  intro n
  simp only [A348592]

end A348592

/-! ## A348592.P5382823283723148817

`∑[A007598(n)]%A075193(n+1)`
-/

namespace A348592.P5382823283723148817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A075193 (n + 1))

end

end A348592.P5382823283723148817

namespace A348592

/-- `∑[A007598(n)]%A075193(n+1)` -/
def P5382823283723148817.Spec : Prop :=
  ∀ n, P5382823283723148817.a n = A348592 n

end A348592

/-! ## A348592.P609713967768558506

`∑[A000045(n)²]%A000204(n+2)`
-/

namespace A348592.P609713967768558506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000204 (n + 2))

end

end A348592.P609713967768558506

namespace A348592

/-- `∑[A000045(n)²]%A000204(n+2)` -/
def P609713967768558506.Spec : Prop :=
  ∀ n, P609713967768558506.a n = A348592 n

end A348592

/-! ## A348592.P16180563653764555817

`∑[A212804(n+1)²]%A000204(n+2)`
-/

namespace A348592.P16180563653764555817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000204 (n + 2))

end

end A348592.P16180563653764555817

namespace A348592

/-- `∑[A212804(n+1)²]%A000204(n+2)` -/
def P16180563653764555817.Spec : Prop :=
  ∀ n, P16180563653764555817.a n = A348592 n

end A348592

/-! ## A348592.P11036838382476797204

`(A000045(n+1)*A000045(n))%A000204(n+2)`
-/

namespace A348592.P11036838382476797204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 1) * A000045 n) (A000204 (n + 2))

end

end A348592.P11036838382476797204

namespace A348592

/-- `(A000045(n+1)*A000045(n))%A000204(n+2)` -/
def P11036838382476797204.Spec : Prop :=
  ∀ n, P11036838382476797204.a n = A348592 n

end A348592

/-! ## A348592.P15166817096184773304

`A192914(n+1)%A000032(n+2)`
-/

namespace A348592.P15166817096184773304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192914 (n + 1)) (A000032 (n + 2))

end

end A348592.P15166817096184773304

namespace A348592

/-- `A192914(n+1)%A000032(n+2)` -/
def P15166817096184773304.Spec : Prop :=
  ∀ n, P15166817096184773304.a n = A348592 n

end A348592

/-!
# A348594: Numbers m such that m^2 + 1 = p*q with p, q primes and m = (p + q)/2 - 1.

The programs for A348594, there is no canonical definition to state claims against.
-/

/-! ## A348594.P13033076867980329269

`2*A075577(n+1)`
-/

namespace A348594.P13033076867980329269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075577 (n + 1)

end

end A348594.P13033076867980329269

/-! ## A348594.P6301187297567294380

`2*A109306(n+1)²`
-/

namespace A348594.P6301187297567294380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109306 (n + 1) ^ 2

end

end A348594.P6301187297567294380

/-! ## A348594.P12442220201876603510

`2*(A238222(n+1)+1)²`
-/

namespace A348594.P12442220201876603510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A238222 (n + 1) + 1) ^ 2

end

end A348594.P12442220201876603510

/-! ## A348594.P15633385814829843720

`2*root(A075577(Δ[n²]-n), 2)²`
-/

namespace A348594.P15633385814829843720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * ((A075577 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A348594.P15633385814829843720

/-! ## A348594.P2314079079869145667

`A001105(A109306(n+1))`
-/

namespace A348594.P2314079079869145667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A109306 (n + 1)).toNat

end

end A348594.P2314079079869145667

/-!
# A348595: Triangle read by rows: Number of walks from (0,0) to (3n,3k) on the square lattice with up and right steps where squares (x,y)=(1,1) mod 3 or (x,y)=(2,2) mod 3 are not entered.

The programs for A348595, there is no canonical definition to state claims against.
-/

/-! ## A348595.P4585720395021793032

`A256389(A191714(n+1))`
-/

namespace A348595.P4585720395021793032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256389 (A191714 (n + 1)).toNat

end

end A348595.P4585720395021793032

/-! ## A348595.P8320494995769038086

`A108730(A050848(n+1))+A100235(n)`
-/

namespace A348595.P8320494995769038086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108730 (A050848 (n + 1)).toNat + A100235 n

end

end A348595.P8320494995769038086

/-! ## A348595.P18288436022504055452

`A341027(A100232(n+4))+A100235(n)`
-/

namespace A348595.P18288436022504055452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341027 ((A100232 (n + 4)).toNat + 220) + A100235 n

end

end A348595.P18288436022504055452

/-! ## A348595.P15229708368854811298

`A161207(C(A319714(n+1), A002262(n)))`
-/

namespace A348595.P15229708368854811298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (Nat.choose (A319714 (n + 1)).toNat (A002262 n).toNat)

end

end A348595.P15229708368854811298

/-! ## A348595.P3056362437736505672

`A331935(or(A121444(n), A176122(n+1)))`
-/

namespace A348595.P3056362437736505672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (Int.lor (A121444 n) (A176122 (n + 1))).toNat

end

end A348595.P3056362437736505672

/-!
# A348596: a(n) = A068527(2*n+1).

The programs for A348596, the canonical program `A348596.P12357676089723283375` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348596 has offset 0).

The definition of A348596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348596.P16796212778510055057

`ceil(sqrt(2*n+1))²-(2*n+1)`
-/

namespace A348596.P16796212778510055057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n + 1 : ℝ)⌉ ^ 2 - (2 * n + 1 : ℤ)

end

end A348596.P16796212778510055057

namespace A348596

/-- `ceil(sqrt(2*n+1))²-(2*n+1)` -/
def P16796212778510055057.Spec : Prop :=
  ∀ n, P16796212778510055057.a n = A348596 n

end A348596

/-! ## A348596.P12357676089723283375

`A068527(2*n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A348596

/-- `A068527(2*n+1)` -/
def P12357676089723283375.Spec : Prop :=
  ∀ n, P12357676089723283375.a n = A348596 n

theorem P12357676089723283375.correct : P12357676089723283375.Spec := by
  intro n
  simp only [A348596]

end A348596

/-! ## A348596.P15359964196832631856

`ceil(sqrt(Δ[n²]))²%Δ[n²]`
-/

namespace A348596.P15359964196832631856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌉ ^ 2) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A348596.P15359964196832631856

namespace A348596

/-- `ceil(sqrt(Δ[n²]))²%Δ[n²]` -/
def P15359964196832631856.Spec : Prop :=
  ∀ n, P15359964196832631856.a n = A348596 n

end A348596

/-! ## A348596.P4219306479440980991

`abs((floor(sqrt(2*n))+1)²-n-C(n+1, n))`
-/

namespace A348596.P4219306479440980991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.sqrt (2 * n) + 1) ^ 2 : ℤ) - (n : ℤ) - (Nat.choose (n + 1) n : ℤ)|

end

end A348596.P4219306479440980991

namespace A348596

/-- `abs((floor(sqrt(2*n))+1)²-n-C(n+1, n))` -/
def P4219306479440980991.Spec : Prop :=
  ∀ n, P4219306479440980991.a n = A348596 n

end A348596

/-! ## A348596.P13868404239618622825

`(C(2, n+2)-1)*(n+1-((floor(sqrt(2*n))+1)²-n))`
-/

namespace A348596.P13868404239618622825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 (n + 2) : ℤ) - 1) * ((n + 1 : ℤ) - (((Nat.sqrt (2 * n) + 1) ^ 2 : ℤ) - (n : ℤ)))

end

end A348596.P13868404239618622825

namespace A348596

/-- `(C(2, n+2)-1)*(n+1-((floor(sqrt(2*n))+1)²-n))` -/
def P13868404239618622825.Spec : Prop :=
  ∀ n, P13868404239618622825.a n = A348596 n

end A348596

/-! ## A348596.P7337177468603995485

`abs(1-A278818(n)+n)`
-/

namespace A348596.P7337177468603995485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A278818 n + (n : ℤ)|

end

end A348596.P7337177468603995485

namespace A348596

/-- `abs(1-A278818(n)+n)` -/
def P7337177468603995485.Spec : Prop :=
  ∀ n, P7337177468603995485.a n = A348596 n

end A348596

/-! ## A348596.P1217205267078522932

`A068527(comp[2*n])^C(2, n)!`
-/

namespace A348596.P1217205267078522932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ Nat.factorial (Nat.choose 2 n)

end

end A348596.P1217205267078522932

namespace A348596

/-- `A068527(comp[2*n])^C(2, n)!` -/
def P1217205267078522932.Spec : Prop :=
  ∀ n, P1217205267078522932.a n = A348596 n

end A348596

/-! ## A348596.P10349715066044067644

`A053186(A020703(2*(n+1)))`
-/

namespace A348596.P10349715066044067644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A020703 (2 * (n + 1))).toNat

end

end A348596.P10349715066044067644

namespace A348596

/-- `A053186(A020703(2*(n+1)))` -/
def P10349715066044067644.Spec : Prop :=
  ∀ n, P10349715066044067644.a n = A348596 n

end A348596

/-! ## A348596.P655766801404088009

`A179753(A078358(2*n+1)+1)`
-/

namespace A348596.P655766801404088009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179753 (A078358 (2 * n + 1) + 1).toNat

end

end A348596.P655766801404088009

namespace A348596

/-- `A179753(A078358(2*n+1)+1)` -/
def P655766801404088009.Spec : Prop :=
  ∀ n, P655766801404088009.a n = A348596 n

end A348596

/-! ## A348596.P11089286818457379602

`A179753(A003059(2*n+1)+2*n+1)`
-/

namespace A348596.P11089286818457379602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179753 (A003059 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A348596.P11089286818457379602

namespace A348596

/-- `A179753(A003059(2*n+1)+2*n+1)` -/
def P11089286818457379602.Spec : Prop :=
  ∀ n, P11089286818457379602.a n = A348596 n

end A348596

/-! ## A348596.P10343379543043609620

`A179753(A135034(2*n+1)+2*n+1)`
-/

namespace A348596.P10343379543043609620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179753 (A135034 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A348596.P10343379543043609620

namespace A348596

/-- `A179753(A135034(2*n+1)+2*n+1)` -/
def P10343379543043609620.Spec : Prop :=
  ∀ n, P10343379543043609620.a n = A348596 n

end A348596

/-! ## A348596.P12685689239956735159

`A025581(2*A064801(n+1))`
-/

namespace A348596.P12685689239956735159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A064801 (n + 1)).toNat

end

end A348596.P12685689239956735159

namespace A348596

/-- `A025581(2*A064801(n+1))` -/
def P12685689239956735159.Spec : Prop :=
  ∀ n, P12685689239956735159.a n = A348596 n

end A348596

/-! ## A348596.P15400081547456905328

`A025581(2*(A004202(n+1)-1))`
-/

namespace A348596.P15400081547456905328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * (A004202 (n + 1) - 1)).toNat

end

end A348596.P15400081547456905328

namespace A348596

/-- `A025581(2*(A004202(n+1)-1))` -/
def P15400081547456905328.Spec : Prop :=
  ∀ n, P15400081547456905328.a n = A348596 n

end A348596

/-! ## A348596.P8905790204475586361

`A213088(A080883(2*n)²)`
-/

namespace A348596.P8905790204475586361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213088 (A080883 (2 * n) ^ 2).toNat

end

end A348596.P8905790204475586361

namespace A348596

/-- `A213088(A080883(2*n)²)` -/
def P8905790204475586361.Spec : Prop :=
  ∀ n, P8905790204475586361.a n = A348596 n

end A348596

/-!
# A348597: a(n) = n! * Sum_{k=0..floor(n/3)} (-1)^k / (3*k)!.

The programs for A348597, there is no canonical definition to state claims against.
-/

/-! ## A348597.P4196952953580559177

`n*a(n-1)-A131531(n)` with `a(0)=1`
-/

namespace A348597.P4196952953580559177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - A131531 n

end

end A348597.P4196952953580559177

/-! ## A348597.P8670919583444190970

`A092220(n²+5)+n*a(n-1)` with `a(0)=1`
-/

namespace A348597.P8670919583444190970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092220 (n ^ 2 + 5) + (n : ℤ) * a (n - 1)

end

end A348597.P8670919583444190970

/-! ## A348597.P16806805036708550501

`∑[A092220(n+1)]+n*a(n-1)` with `a(0)=1`
-/

namespace A348597.P16806805036708550501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * a (n - 1)

end

end A348597.P16806805036708550501

/-! ## A348597.P5581507581933991374

`n*a(n-1)-A056594(A250470(2*n+3))` with `a(0)=1`
-/

namespace A348597.P5581507581933991374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - A056594 (A250470 (2 * n + 3)).toNat

end

end A348597.P5581507581933991374

/-! ## A348597.P15417699718126095705

`n*a(n-1)+A010892(n+1)*A049347(n)` with `a(0)=1`
-/

namespace A348597.P15417699718126095705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + A010892 (n + 1) * A049347 n

end

end A348597.P15417699718126095705

/-!
# A348598: Least prime p of the form k^2+1 such that p == A002496(n) (mod A002496(n+1)) with p>A002496(n), or 0 if no such p exists.

The programs for A348598, there is no canonical definition to state claims against.
-/

/-! ## A348598.P11648884753671335871

`A002496(A352582(Δ[n²]))`
-/

namespace A348598.P11648884753671335871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (A352582 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A348598.P11648884753671335871

/-! ## A348598.P17129220846327489990

`A121326(A352582(2*n+1)-1)`
-/

namespace A348598.P17129220846327489990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (A352582 (2 * n + 1) - 1).toNat

end

end A348598.P17129220846327489990

/-! ## A348598.P10916327857837027685

`A002496(A352582(2*n+1)%A054840(n+1))`
-/

namespace A348598.P10916327857837027685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (Int.tmod (A352582 (2 * n + 1)) (A054840 (n + 1))).toNat

end

end A348598.P10916327857837027685

/-! ## A348598.P4473881311277093079

`A002496(A352582(2*n+1))%A014479(n+4)`
-/

namespace A348598.P4473881311277093079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002496 (A352582 (2 * n + 1)).toNat) (A014479 (n + 4))

end

end A348598.P4473881311277093079

