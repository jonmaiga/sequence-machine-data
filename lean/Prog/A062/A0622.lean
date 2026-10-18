import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C006
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
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A062200: Number of compositions of n such that two adjacent parts are not equal modulo 2.

The programs for A062200, the canonical program `A062200.P4781825540259619090` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062200 has offset 0).

The definition of A062200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062200.P4781825540259619090

`2*a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062200

/-- `2*a(n-2)+a(n-3)-a(n-4)` -/
def P4781825540259619090.Spec : Prop :=
  ∀ n, P4781825540259619090.a n = A062200 n

theorem P4781825540259619090.correct : P4781825540259619090.Spec := by
  intro n
  simp only [A062200]

end A062200

/-! ## A062200.P5689222012707706538

`a(n-2)+a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A062200.P5689222012707706538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 3) - a (n - 4)))

end

end A062200.P5689222012707706538

namespace A062200

/-- `a(n-2)+a(n-2)+a(n-3)-a(n-4)` -/
def P5689222012707706538.Spec : Prop :=
  ∀ n, P5689222012707706538.a n = A062200 n

theorem P5689222012707706538.correct : P5689222012707706538.Spec := by
  intro n
  simp only [A062200, Nat.add_sub_cancel, A062200.P5689222012707706538.a, A062200.P4781825540259619090.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062200

/-! ## A062200.P5980297064082597372

`a(n-2)-(a(n-4)-a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A062200.P5980297064082597372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  a (n - 2) - (a (n - 4) - a (n - 2) - a (n - 3))

end

end A062200.P5980297064082597372

namespace A062200

/-- `a(n-2)-(a(n-4)-a(n-2)-a(n-3))` -/
def P5980297064082597372.Spec : Prop :=
  ∀ n, P5980297064082597372.a n = A062200 n

end A062200

/-! ## A062200.P16438745641683324865

`A017817(2*(n+2))`
-/

namespace A062200.P16438745641683324865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (2 * (n + 2))

end

end A062200.P16438745641683324865

namespace A062200

/-- `A017817(2*(n+2))` -/
def P16438745641683324865.Spec : Prop :=
  ∀ n, P16438745641683324865.a n = A062200 n

end A062200

/-! ## A062200.P7958080697750178325

`A127838(2*n+9)`
-/

namespace A062200.P7958080697750178325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (2 * n + 9)

end

end A062200.P7958080697750178325

namespace A062200

/-- `A127838(2*n+9)` -/
def P7958080697750178325.Spec : Prop :=
  ∀ n, P7958080697750178325.a n = A062200 n

end A062200

/-! ## A062200.P17962251895627680881

`A175790(2*n+7)+1`
-/

namespace A062200.P17962251895627680881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175790 (2 * n + 7) + 1

end

end A062200.P17962251895627680881

namespace A062200

/-- `A175790(2*n+7)+1` -/
def P17962251895627680881.Spec : Prop :=
  ∀ n, P17962251895627680881.a n = A062200 n

end A062200

/-! ## A062200.P12522503624120140039

`1-A177825(2*n+7)`
-/

namespace A062200.P12522503624120140039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A177825 (2 * n + 7)

end

end A062200.P12522503624120140039

namespace A062200

/-- `1-A177825(2*n+7)` -/
def P12522503624120140039.Spec : Prop :=
  ∀ n, P12522503624120140039.a n = A062200 n

end A062200

/-! ## A062200.P11532391349915023630

`A122514(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A062200.P11532391349915023630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A122514 n + a (n - 2)

end

end A062200.P11532391349915023630

namespace A062200

/-- `A122514(n)+a(n-2)` -/
def P11532391349915023630.Spec : Prop :=
  ∀ n, P11532391349915023630.a n = A062200 n

end A062200

/-! ## A062200.P13849294700308766739

`A376730(n+2)+A376727(n)`
-/

namespace A062200.P13849294700308766739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376730 (n + 2) + A376727 n

end

end A062200.P13849294700308766739

namespace A062200

/-- `A376730(n+2)+A376727(n)` -/
def P13849294700308766739.Spec : Prop :=
  ∀ n, P13849294700308766739.a n = A062200 n

end A062200

/-! ## A062200.P4334362507701197821

`A122514(n+3)-A122514(n+1)`
-/

namespace A062200.P4334362507701197821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122514 (n + 3) - A122514 (n + 1)

end

end A062200.P4334362507701197821

namespace A062200

/-- `A122514(n+3)-A122514(n+1)` -/
def P4334362507701197821.Spec : Prop :=
  ∀ n, P4334362507701197821.a n = A062200 n

end A062200

/-! ## A062200.P9294880091839717279

`Δ[A027947(n+1)]`
-/

namespace A062200.P9294880091839717279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062200.P9294880091839717279

namespace A062200

/-- `Δ[A027947(n+1)]` -/
def P9294880091839717279.Spec : Prop :=
  ∀ n, P9294880091839717279.a n = A062200 n

end A062200

/-! ## A062200.P6726065460184025069

`Δ[A079398(2*(n+2))]`
-/

namespace A062200.P6726065460184025069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062200.P6726065460184025069

namespace A062200

/-- `Δ[A079398(2*(n+2))]` -/
def P6726065460184025069.Spec : Prop :=
  ∀ n, P6726065460184025069.a n = A062200 n

end A062200

/-! ## A062200.P5670515862070509619

`Δ[A122521(4*(n+2))]`
-/

namespace A062200.P5670515862070509619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122521 (4 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062200.P5670515862070509619

namespace A062200

/-- `Δ[A122521(4*(n+2))]` -/
def P5670515862070509619.Spec : Prop :=
  ∀ n, P5670515862070509619.a n = A062200 n

end A062200

/-! ## A062200.P11876433839292734158

`A027947(n+2)-A027947(n+1)`
-/

namespace A062200.P11876433839292734158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027947 (n + 2) - A027947 (n + 1)

end

end A062200.P11876433839292734158

namespace A062200

/-- `A027947(n+2)-A027947(n+1)` -/
def P11876433839292734158.Spec : Prop :=
  ∀ n, P11876433839292734158.a n = A062200 n

end A062200

/-!
# A062201: Number of compositions of n such that two adjacent parts are not equal modulo 3.

The programs for A062201, there is no canonical definition to state claims against.
-/

/-! ## A062201.P13522514464942739414

`or(A345197(n²)², A010752(n))`
-/

namespace A062201.P13522514464942739414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A345197 (n ^ 2) ^ 2) (A010752 n)

end

end A062201.P13522514464942739414

/-! ## A062201.P8237885667985935532

`or(A010752(n), A333810(A000322(n)))`
-/

namespace A062201.P8237885667985935532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010752 n) (A333810 (A000322 n).toNat)

end

end A062201.P8237885667985935532

/-!
# A062202: Number of compositions of n such that two adjacent parts are not equal modulo 4.

The programs for A062202, there is no canonical definition to state claims against.
-/

/-! ## A062202.P11055933327507189791

`A335376(A108700(n+1))`
-/

namespace A062202.P11055933327507189791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335376 (A108700 (n + 1)).toNat

end

end A062202.P11055933327507189791

/-! ## A062202.P9568386962514246966

`A089870(or(A000035(n), A329671(n)))`
-/

namespace A062202.P9568386962514246966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (Int.lor (A000035 n) (A329671 n)).toNat

end

end A062202.P9568386962514246966

/-! ## A062202.P14932567658326936371

`A300305(A032143(n+1))`
-/

namespace A062202.P14932567658326936371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300305 (A032143 (n + 1)).toNat

end

end A062202.P14932567658326936371

/-! ## A062202.P12768062406178187827

`A333358(A329666(n)+1)`
-/

namespace A062202.P12768062406178187827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333358 (A329666 n + 1).toNat

end

end A062202.P12768062406178187827

/-! ## A062202.P8190828338363514602

`A055181(A297872(n+2))`
-/

namespace A062202.P8190828338363514602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055181 (A297872 (n + 2)).toNat

end

end A062202.P8190828338363514602

/-!
# A062203: Number of compositions of n such that two adjacent parts are not equal modulo 5.

The programs for A062203, there is no canonical definition to state claims against.
-/

/-! ## A062203.P9411077380753070379

`A003242(n)-A077402(A077394(n+1))`
-/

namespace A062203.P9411077380753070379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n - A077402 (A077394 (n + 1)).toNat

end

end A062203.P9411077380753070379

/-! ## A062203.P9978967093441843670

`A295164(A322439(n)+1)`
-/

namespace A062203.P9978967093441843670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295164 (A322439 n + 1).toNat

end

end A062203.P9978967093441843670

/-! ## A062203.P2173287163647518902

`A254629(A018046(n)+n)`
-/

namespace A062203.P2173287163647518902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254629 (A018046 n + (n : ℤ)).toNat

end

end A062203.P2173287163647518902

/-! ## A062203.P15355123607786937423

`A003242(n)-val(A139065(2*n+5), 3)`
-/

namespace A062203.P15355123607786937423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n - (SequenceMachineLib.valuation (A139065 (2 * n + 5)).toNat 3 : ℤ)

end

end A062203.P15355123607786937423

/-! ## A062203.P13199952743609070752

`A003242(n)-A124762(A398200(n))`
-/

namespace A062203.P13199952743609070752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n - A124762 (A398200 n).toNat

end

end A062203.P13199952743609070752

/-!
# A062204: 

The programs for A062204, there is no canonical definition to state claims against.
-/

/-! ## A062204.P9615627992001009736

`A262809(A141214(n+4)+10)`
-/

namespace A062204.P9615627992001009736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A141214 (n + 4) + 10).toNat

end

end A062204.P9615627992001009736

/-! ## A062204.P290714662694967602

`A262809(eq[8, A002260(n+1)])`
-/

namespace A062204.P290714662694967602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062204.P290714662694967602

/-!
# A062205: Number of alignments of n strings of length 4.

The programs for A062205, there is no canonical definition to state claims against.
-/

/-! ## A062205.P9530714917067569341

`A262809(eq[4, A002262(n)])`
-/

namespace A062205.P9530714917067569341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062205.P9530714917067569341

/-! ## A062205.P14412881521650194267

`A262809(A167614(n+3)+1)`
-/

namespace A062205.P14412881521650194267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A167614 (n + 3) + 1).toNat

end

end A062205.P14412881521650194267

/-! ## A062205.P51658459033827355

`A262809(A000217(n+4)+4)`
-/

namespace A062205.P51658459033827355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A000217 (n + 4) + 4).toNat

end

end A062205.P51658459033827355

/-! ## A062205.P3791153247663697095

`A262809(eq[5, A002260(n+1)])`
-/

namespace A062205.P3791153247663697095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062205.P3791153247663697095

/-!
# A062206: a(n) = n^(2n).

The programs for A062206, the canonical program `A062206.P5453830458880387527` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062206 has offset 0).

The definition of A062206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(2*n)` (program `A062206.P5453830458880387527`, by `A062206.P5453830458880387527.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062206.P5453830458880387527

`n^(2*n)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062206

/-- `n^(2*n)` -/
def P5453830458880387527.Spec : Prop :=
  ∀ n, (P5453830458880387527.a n : ℤ) = A062206 n

theorem P5453830458880387527.correct : P5453830458880387527.Spec := by
  intro n
  simp only [A062206]

end A062206

/-!
# A062207: a(n) = 2*n^n-1.

The programs for A062207, the canonical program `A062207.P11714223683232020553` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062207 has offset 0).

The definition of A062207 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^n-1` (program `A062207.P11714223683232020553`, by `A062207.P11714223683232020553.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062207.P11714223683232020553

`2*n^n-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062207

/-- `2*n^n-1` -/
def P11714223683232020553.Spec : Prop :=
  ∀ n, P11714223683232020553.a n = A062207 n

theorem P11714223683232020553.correct : P11714223683232020553.Spec := by
  intro n
  simp only [A062207]

end A062207

/-! ## A062207.P9844581620396788637

`abs(xor(1, -2*n^n))`
-/

namespace A062207.P9844581620396788637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(2 * n ^ n : ℤ))|

end

end A062207.P9844581620396788637

namespace A062207

/-- `abs(xor(1, -2*n^n))` -/
def P9844581620396788637.Spec : Prop :=
  ∀ n, P9844581620396788637.a n = A062207 n

end A062207

/-! ## A062207.P858987753188258336

`-xor(1, -2*n^n)`
-/

namespace A062207.P858987753188258336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(2 * n ^ n : ℤ))

end

end A062207.P858987753188258336

namespace A062207

/-- `-xor(1, -2*n^n)` -/
def P858987753188258336.Spec : Prop :=
  ∀ n, P858987753188258336.a n = A062207 n

end A062207

/-! ## A062207.P11442972566227569972

`xor(2*n^n/A244895(5*n+3), log2(1/2))`
-/

namespace A062207.P11442972566227569972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (2 * ((n ^ n : ℚ) / (A244895 (5 * n + 3) : ℚ)))) (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ)))

end

end A062207.P11442972566227569972

namespace A062207

/-- `xor(2*n^n/A244895(5*n+3), log2(1/2))` -/
def P11442972566227569972.Spec : Prop :=
  ∀ n, P11442972566227569972.a n = A062207 n

end A062207

/-! ## A062207.P4154143556787722587

`abs(2-(A014566(n)+A000312(n))%A342930(n+3))`
-/

namespace A062207.P4154143556787722587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - Int.tmod (A014566 n + A000312 n) (A342930 (n + 3))|

end

end A062207.P4154143556787722587

namespace A062207

/-- `abs(2-(A014566(n)+A000312(n))%A342930(n+3))` -/
def P4154143556787722587.Spec : Prop :=
  ∀ n, P4154143556787722587.a n = A062207 n

end A062207

/-!
# A062208: a(n) = Sum_{m>=0} binomial(m,3)^n*2^(-m-1).

The programs for A062208, there is no canonical definition to state claims against.
-/

/-! ## A062208.P5879479962465327225

`A262809(A167614(n+2))`
-/

namespace A062208.P5879479962465327225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A167614 (n + 2)).toNat

end

end A062208.P5879479962465327225

/-! ## A062208.P9604226195271420652

`A262809(A141214(n)+6)`
-/

namespace A062208.P9604226195271420652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A141214 n + 6).toNat

end

end A062208.P9604226195271420652

/-! ## A062208.P10541595511268848350

`A262809(A052905(n)+8)`
-/

namespace A062208.P10541595511268848350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A052905 n + 8).toNat

end

end A062208.P10541595511268848350

/-! ## A062208.P7801808428868831442

`A262809(A055999(n)+9)`
-/

namespace A062208.P7801808428868831442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (A055999 n + 9).toNat

end

end A062208.P7801808428868831442

/-! ## A062208.P10791517268728928796

`A262809(eq[3, A002262(n)])`
-/

namespace A062208.P10791517268728928796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062208.P10791517268728928796

/-!
# A062209: Numbers k such that the smoothly undulating palindromic number (4*10^k-7)/33 = 121...21 is a prime (or PRP).

The programs for A062209, there is no canonical definition to state claims against.
-/

/-! ## A062209.P274970955205094659

`A153328(n+1)+1`
-/

namespace A062209.P274970955205094659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153328 (n + 1) + 1

end

end A062209.P274970955205094659

/-! ## A062209.P10467988014944312373

`2*A056803(n+1)+1`
-/

namespace A062209.P10467988014944312373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056803 (n + 1) + 1

end

end A062209.P10467988014944312373

/-! ## A062209.P17655519806336293713

`xor(1, A153328(comp[14*n²]))`
-/

namespace A062209.P17655519806336293713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A153328 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A062209.P17655519806336293713

/-! ## A062209.P17993868190456453553

`or(1, A153328(A005496(n)))`
-/

namespace A062209.P17993868190456453553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A153328 (A005496 n).toNat)

end

end A062209.P17993868190456453553

/-! ## A062209.P11925336751100169557

`A005408(A056803(n+1))`
-/

namespace A062209.P11925336751100169557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A056803 (n + 1)).toNat

end

end A062209.P11925336751100169557

/-!
# A062210: Numbers k such that the smoothly undulating palindromic number (14*10^k - 41)/99 is a prime.

The programs for A062210, there is no canonical definition to state claims against.
-/

/-! ## A062210.P2624980176367567230

`A153331(n+1)+1`
-/

namespace A062210.P2624980176367567230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153331 (n + 1) + 1

end

end A062210.P2624980176367567230

/-! ## A062210.P13619916282505534113

`xor(1, A153331(comp[14*n²]))`
-/

namespace A062210.P13619916282505534113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A153331 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A062210.P13619916282505534113

/-!
# A062211: Numbers k such that the smoothly undulating palindromic number (15*10^k - 51)/99 is a prime.

The programs for A062211, there is no canonical definition to state claims against.
-/

/-! ## A062211.P4332376775600061844

`A153332(n+1)+1`
-/

namespace A062211.P4332376775600061844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153332 (n + 1) + 1

end

end A062211.P4332376775600061844

/-! ## A062211.P9538660775714288753

`or(1, A153332(A005496(n)))`
-/

namespace A062211.P9538660775714288753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A153332 (A005496 n).toNat)

end

end A062211.P9538660775714288753

/-! ## A062211.P8658897200225642320

`or(1, A153332(A008728(n)))`
-/

namespace A062211.P8658897200225642320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A153332 (A008728 n).toNat)

end

end A062211.P8658897200225642320

/-! ## A062211.P3595924695317887258

`A004442(A153332(n+1))`
-/

namespace A062211.P3595924695317887258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A153332 (n + 1)).toNat

end

end A062211.P3595924695317887258

/-!
# A062212: Numbers k such that the smoothly undulating palindromic number (16*10^k - 61)/99 is a prime.

The programs for A062212, there is no canonical definition to state claims against.
-/

/-! ## A062212.P4807687789449676615

`A153333(n+1)+1`
-/

namespace A062212.P4807687789449676615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153333 (n + 1) + 1

end

end A062212.P4807687789449676615

/-!
# A062219: Numbers k such that the smoothly undulating palindromic number (37*10^k - 73)/99 is a prime.

The programs for A062219, there is no canonical definition to state claims against.
-/

/-! ## A062219.P10789858738412267675

`∏{e}[A290594(2*n+3)+24, 2*#+1]`
-/

namespace A062219.P10789858738412267675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290594 (2 * n + 3) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (2 * Nat.factorization (f1 n).natAbs p + 1)

end

end A062219.P10789858738412267675

/-!
# A062224: Numbers k such that the smoothly undulating palindromic number (75*10^k - 57)/99 is a prime.

The programs for A062224, there is no canonical definition to state claims against.
-/

/-! ## A062224.P2657030422283171652

`A003963(p?[∑[(n+1)²%A146205(n+1)]+4])`
-/

namespace A062224.P2657030422283171652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A146205 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062224.P2657030422283171652

/-!
# A062234: From Bertrand's postulate: a(n) = 2*prime(n) - prime(n+1).

The programs for A062234, the canonical program `A062234.P8592873382335253705` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062234 has offset 1).

The definition of A062234 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062234.P14944959605421816953

`A000040(n+1)-A001223(n+1)`
-/

namespace A062234.P14944959605421816953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A001223 (n + 1)

end

end A062234.P14944959605421816953

namespace A062234

/-- `A000040(n+1)-A001223(n+1)` -/
def P14944959605421816953.Spec : Prop :=
  ∀ n, P14944959605421816953.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P15543298775795181073

`A098764(n+1)-A000040(n+1)`
-/

namespace A062234.P15543298775795181073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098764 (n + 1) - A000040 (n + 1)

end

end A062234.P15543298775795181073

namespace A062234

/-- `A098764(n+1)-A000040(n+1)` -/
def P15543298775795181073.Spec : Prop :=
  ∀ n, P15543298775795181073.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P8592873382335253705

`2*A000040(n+1)-A000040(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062234

/-- `2*A000040(n+1)-A000040(n+2)` -/
def P8592873382335253705.Spec : Prop :=
  ∀ n, P8592873382335253705.a n = A062234 (n + 1)

theorem P8592873382335253705.correct : P8592873382335253705.Spec := by
  intro n
  simp only [A062234, Nat.add_sub_cancel]

end A062234

/-! ## A062234.P14736646144469324965

`A124115(n+1)-2`
-/

namespace A062234.P14736646144469324965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124115 (n + 1) - 2

end

end A062234.P14736646144469324965

namespace A062234

/-- `A124115(n+1)-2` -/
def P14736646144469324965.Spec : Prop :=
  ∀ n, P14736646144469324965.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P16650216403440697180

`Δ[A007504(n)]-A001223(n+1)`
-/

namespace A062234.P16650216403440697180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001223 (n + 1)

end

end A062234.P16650216403440697180

namespace A062234

/-- `Δ[A007504(n)]-A001223(n+1)` -/
def P16650216403440697180.Spec : Prop :=
  ∀ n, P16650216403440697180.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P8419951534892281198

`A098764(n+1)-Δ[A007504(n)]`
-/

namespace A062234.P8419951534892281198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098764 (n + 1) - (f1 (n + 1) - f1 n)

end

end A062234.P8419951534892281198

namespace A062234

/-- `A098764(n+1)-Δ[A007504(n)]` -/
def P8419951534892281198.Spec : Prop :=
  ∀ n, P8419951534892281198.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P6556515042777596235

`A037165(n+1)%Δ[A007504(n)]`
-/

namespace A062234.P6556515042777596235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037165 (n + 1)) (f1 (n + 1) - f1 n)

end

end A062234.P6556515042777596235

namespace A062234

/-- `A037165(n+1)%Δ[A007504(n)]` -/
def P6556515042777596235.Spec : Prop :=
  ∀ n, P6556515042777596235.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P14509949110291410215

`A037167(n+1)%Δ[A007504(n)]`
-/

namespace A062234.P14509949110291410215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037167 (n + 1)) (f1 (n + 1) - f1 n)

end

end A062234.P14509949110291410215

namespace A062234

/-- `A037167(n+1)%Δ[A007504(n)]` -/
def P14509949110291410215.Spec : Prop :=
  ∀ n, P14509949110291410215.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P7080784121899275654

`A107471(n+1)+A001223(n+1)`
-/

namespace A062234.P7080784121899275654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107471 (n + 1) + A001223 (n + 1)

end

end A062234.P7080784121899275654

namespace A062234

/-- `A107471(n+1)+A001223(n+1)` -/
def P7080784121899275654.Spec : Prop :=
  ∀ n, P7080784121899275654.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P18135208568827700098

`A096379(n+1)+A036263(n+1)`
-/

namespace A062234.P18135208568827700098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 1) + A036263 (n + 1)

end

end A062234.P18135208568827700098

namespace A062234

/-- `A096379(n+1)+A036263(n+1)` -/
def P18135208568827700098.Spec : Prop :=
  ∀ n, P18135208568827700098.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P8188129294695571372

`A147965(n+1)+A065890(n+1)`
-/

namespace A062234.P8188129294695571372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147965 (n + 1) + A065890 (n + 1)

end

end A062234.P8188129294695571372

namespace A062234

/-- `A147965(n+1)+A065890(n+1)` -/
def P8188129294695571372.Spec : Prop :=
  ∀ n, P8188129294695571372.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P10106550612657959558

`A001748(n+1)-A001043(n+1)`
-/

namespace A062234.P10106550612657959558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - A001043 (n + 1)

end

end A062234.P10106550612657959558

namespace A062234

/-- `A001748(n+1)-A001043(n+1)` -/
def P10106550612657959558.Spec : Prop :=
  ∀ n, P10106550612657959558.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P3266613306477348428

`A006093(n+1)-A046933(n+1)`
-/

namespace A062234.P3266613306477348428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A046933 (n + 1)

end

end A062234.P3266613306477348428

namespace A062234

/-- `A006093(n+1)-A046933(n+1)` -/
def P3266613306477348428.Spec : Prop :=
  ∀ n, P3266613306477348428.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P12449366529618895155

`A093667(n+1)-A031131(n+1)`
-/

namespace A062234.P12449366529618895155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1) - A031131 (n + 1)

end

end A062234.P12449366529618895155

namespace A062234

/-- `A093667(n+1)-A031131(n+1)` -/
def P12449366529618895155.Spec : Prop :=
  ∀ n, P12449366529618895155.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P8636291506689007001

`A014688(n+1)-A123128(n+1)`
-/

namespace A062234.P8636291506689007001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A123128 (n + 1)

end

end A062234.P8636291506689007001

namespace A062234

/-- `A014688(n+1)-A123128(n+1)` -/
def P8636291506689007001.Spec : Prop :=
  ∀ n, P8636291506689007001.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P6271473642191964192

`A089241(n+1)-A048974(n+1)`
-/

namespace A062234.P6271473642191964192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - A048974 (n + 1)

end

end A062234.P6271473642191964192

namespace A062234

/-- `A089241(n+1)-A048974(n+1)` -/
def P6271473642191964192.Spec : Prop :=
  ∀ n, P6271473642191964192.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P16702149564453336451

`A100484(n+1)-A065091(n+1)`
-/

namespace A062234.P16702149564453336451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A065091 (n + 1)

end

end A062234.P16702149564453336451

namespace A062234

/-- `A100484(n+1)-A065091(n+1)` -/
def P16702149564453336451.Spec : Prop :=
  ∀ n, P16702149564453336451.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P7131314928498735023

`A100021(n+1)-A086801(n+1)`
-/

namespace A062234.P7131314928498735023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100021 (n + 1) - A086801 (n + 1)

end

end A062234.P7131314928498735023

namespace A062234

/-- `A100021(n+1)-A086801(n+1)` -/
def P7131314928498735023.Spec : Prop :=
  ∀ n, P7131314928498735023.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P7078262194587040152

`A001043(n+1)-A210497(n+1)`
-/

namespace A062234.P7078262194587040152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A210497 (n + 1)

end

end A062234.P7078262194587040152

namespace A062234

/-- `A001043(n+1)-A210497(n+1)` -/
def P7078262194587040152.Spec : Prop :=
  ∀ n, P7078262194587040152.a n = A062234 (n + 1)

end A062234

/-! ## A062234.P8732810476825266305

`A062235(n+1)%A000040(n+1)`
-/

namespace A062234.P8732810476825266305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062235 (n + 1)) (A000040 (n + 1))

end

end A062234.P8732810476825266305

namespace A062234

/-- `A062235(n+1)%A000040(n+1)` -/
def P8732810476825266305.Spec : Prop :=
  ∀ n, P8732810476825266305.a n = A062234 (n + 1)

end A062234

/-!
# A062235: a(n) = prime(n)^2 - prime(n+1).

The programs for A062235, the canonical program `A062235.P6585490763339673002` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062235 has offset 1).

The definition of A062235 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A065091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062235.P6585490763339673002

`A001248(n+1)-A065091(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062235

/-- `A001248(n+1)-A065091(n+1)` -/
def P6585490763339673002.Spec : Prop :=
  ∀ n, P6585490763339673002.a n = A062235 (n + 1)

theorem P6585490763339673002.correct : P6585490763339673002.Spec := by
  intro n
  simp only [A062235, Nat.add_sub_cancel]

end A062235

/-! ## A062235.P16604463540202539242

`A036690(n+1)-A001043(n+1)`
-/

namespace A062235.P16604463540202539242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) - A001043 (n + 1)

end

end A062235.P16604463540202539242

namespace A062235

/-- `A036690(n+1)-A001043(n+1)` -/
def P16604463540202539242.Spec : Prop :=
  ∀ n, P16604463540202539242.a n = A062235 (n + 1)

end A062235

/-! ## A062235.P5231963722256125777

`A036689(n+1)-A001223(n+1)`
-/

namespace A062235.P5231963722256125777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) - A001223 (n + 1)

end

end A062235.P5231963722256125777

namespace A062235

/-- `A036689(n+1)-A001223(n+1)` -/
def P5231963722256125777.Spec : Prop :=
  ∀ n, P5231963722256125777.a n = A062235 (n + 1)

end A062235

/-! ## A062235.P11763998286940101203

`A061725(n+1)-A048974(n+1)`
-/

namespace A062235.P11763998286940101203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) - A048974 (n + 1)

end

end A062235.P11763998286940101203

namespace A062235

/-- `A061725(n+1)-A048974(n+1)` -/
def P11763998286940101203.Spec : Prop :=
  ∀ n, P11763998286940101203.a n = A062235 (n + 1)

end A062235

/-! ## A062235.P1935661083270419846

`A060800(n+1)-A092949(n+1)`
-/

namespace A062235.P1935661083270419846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) - A092949 (n + 1)

end

end A062235.P1935661083270419846

namespace A062235

/-- `A060800(n+1)-A092949(n+1)` -/
def P1935661083270419846.Spec : Prop :=
  ∀ n, P1935661083270419846.a n = A062235 (n + 1)

end A062235

/-! ## A062235.P11835690134006837735

`A037167(n+1)-A291463(n+1)`
-/

namespace A062235.P11835690134006837735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037167 (n + 1) - A291463 (n + 1)

end

end A062235.P11835690134006837735

namespace A062235

/-- `A037167(n+1)-A291463(n+1)` -/
def P11835690134006837735.Spec : Prop :=
  ∀ n, P11835690134006837735.a n = A062235 (n + 1)

end A062235

/-! ## A062235.P1715022925288849966

`A182200(n+1)-A154115(n+1)`
-/

namespace A062235.P1715022925288849966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182200 (n + 1) - A154115 (n + 1)

end

end A062235.P1715022925288849966

namespace A062235

/-- `A182200(n+1)-A154115(n+1)` -/
def P1715022925288849966.Spec : Prop :=
  ∀ n, P1715022925288849966.a n = A062235 (n + 1)

end A062235

/-! ## A062235.P2626246721855486002

`A306190(n+1)-A046933(n+1)`
-/

namespace A062235.P2626246721855486002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1) - A046933 (n + 1)

end

end A062235.P2626246721855486002

namespace A062235

/-- `A306190(n+1)-A046933(n+1)` -/
def P2626246721855486002.Spec : Prop :=
  ∀ n, P2626246721855486002.a n = A062235 (n + 1)

end A062235

/-! ## A062235.P9547834513956995972

`A079704(n+1)-A352851(n+1)`
-/

namespace A062235.P9547834513956995972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) - A352851 (n + 1)

end

end A062235.P9547834513956995972

namespace A062235

/-- `A079704(n+1)-A352851(n+1)` -/
def P9547834513956995972.Spec : Prop :=
  ∀ n, P9547834513956995972.a n = A062235 (n + 1)

end A062235

/-! ## A062235.P1781329784505450321

`Δ[A007504(n)]²-A065091(n+1)`
-/

namespace A062235.P1781329784505450321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A065091 (n + 1)

end

end A062235.P1781329784505450321

namespace A062235

/-- `Δ[A007504(n)]²-A065091(n+1)` -/
def P1781329784505450321.Spec : Prop :=
  ∀ n, P1781329784505450321.a n = A062235 (n + 1)

end A062235

/-! ## A062235.P9272447230891702632

`Δ[A008348(n)]²-A065091(n+1)`
-/

namespace A062235.P9272447230891702632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A065091 (n + 1)

end

end A062235.P9272447230891702632

namespace A062235

/-- `Δ[A008348(n)]²-A065091(n+1)` -/
def P9272447230891702632.Spec : Prop :=
  ∀ n, P9272447230891702632.a n = A062235 (n + 1)

end A062235

/-! ## A062235.P9799554498654599957

`Δ[A022837(n)]²-A065091(n+1)`
-/

namespace A062235.P9799554498654599957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A065091 (n + 1)

end

end A062235.P9799554498654599957

namespace A062235

/-- `Δ[A022837(n)]²-A065091(n+1)` -/
def P9799554498654599957.Spec : Prop :=
  ∀ n, P9799554498654599957.a n = A062235 (n + 1)

end A062235

/-! ## A062235.P14885990914061340656

`Δ[A064365(n)]²-A065091(n+1)`
-/

namespace A062235.P14885990914061340656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A065091 (n + 1)

end

end A062235.P14885990914061340656

namespace A062235

/-- `Δ[A064365(n)]²-A065091(n+1)` -/
def P14885990914061340656.Spec : Prop :=
  ∀ n, P14885990914061340656.a n = A062235 (n + 1)

end A062235

/-! ## A062235.P1055162891460947225

`A000040(n+1)²-A065091(n+1)`
-/

namespace A062235.P1055162891460947225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A065091 (n + 1)

end

end A062235.P1055162891460947225

namespace A062235

/-- `A000040(n+1)²-A065091(n+1)` -/
def P1055162891460947225.Spec : Prop :=
  ∀ n, P1055162891460947225.a n = A062235 (n + 1)

end A062235

/-! ## A062235.P521100023186969985

`A273960(n+1)²-A065091(n+1)`
-/

namespace A062235.P521100023186969985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 2 - A065091 (n + 1)

end

end A062235.P521100023186969985

namespace A062235

/-- `A273960(n+1)²-A065091(n+1)` -/
def P521100023186969985.Spec : Prop :=
  ∀ n, P521100023186969985.a n = A062235 (n + 1)

end A062235

/-! ## A062235.P6463935322253830492

`sqrt(A030514(n+1))-A065091(n+1)`
-/

namespace A062235.P6463935322253830492
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030514 (n + 1) : ℝ) - (A065091 (n + 1) : ℝ)

end

end A062235.P6463935322253830492

namespace A062235

/-- `sqrt(A030514(n+1))-A065091(n+1)` -/
def P6463935322253830492.Spec : Prop :=
  ∀ n, P6463935322253830492.a n = (A062235 (n + 1) : ℝ)

end A062235

/-! ## A062235.P17342362607794065226

`A001248(n+1)-(A006254(n+1)+A005097(n+1))`
-/

namespace A062235.P17342362607794065226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - (A006254 (n + 1) + A005097 (n + 1))

end

end A062235.P17342362607794065226

namespace A062235

/-- `A001248(n+1)-(A006254(n+1)+A005097(n+1))` -/
def P17342362607794065226.Spec : Prop :=
  ∀ n, P17342362607794065226.a n = A062235 (n + 1)

end A062235

/-! ## A062235.P13618937349105230506

`A001223(n+1)+A001248(n+1)-A210497(n+1)`
-/

namespace A062235.P13618937349105230506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A001248 (n + 1) - A210497 (n + 1))

end

end A062235.P13618937349105230506

namespace A062235

/-- `A001223(n+1)+A001248(n+1)-A210497(n+1)` -/
def P13618937349105230506.Spec : Prop :=
  ∀ n, P13618937349105230506.a n = A062235 (n + 1)

end A062235

/-! ## A062235.P7740569537053122562

`A001248(n+1)-(A167770(n+1)+A113396(n+1))`
-/

namespace A062235.P7740569537053122562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - (A167770 (n + 1) + A113396 (n + 1))

end

end A062235.P7740569537053122562

namespace A062235

/-- `A001248(n+1)-(A167770(n+1)+A113396(n+1))` -/
def P7740569537053122562.Spec : Prop :=
  ∀ n, P7740569537053122562.a n = A062235 (n + 1)

end A062235

/-! ## A062235.P4956406821405328393

`A261465(n+1)-(A069482(n+1)+A001223(n+1))`
-/

namespace A062235.P4956406821405328393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261465 (n + 1) - (A069482 (n + 1) + A001223 (n + 1))

end

end A062235.P4956406821405328393

namespace A062235

/-- `A261465(n+1)-(A069482(n+1)+A001223(n+1))` -/
def P4956406821405328393.Spec : Prop :=
  ∀ n, P4956406821405328393.a n = A062235 (n + 1)

end A062235

/-!
# A062236: Sum of the levels of all nodes in all noncrossing trees with n edges.

The programs for A062236, there is no canonical definition to state claims against.
-/

/-! ## A062236.P8607101270681050126

`A386617(n)+A036829(n+1)`
-/

namespace A062236.P8607101270681050126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386617 n + A036829 (n + 1)

end

end A062236.P8607101270681050126

/-! ## A062236.P4343984537900907378

`A395708(n)/(n+1)`
-/

namespace A062236.P4343984537900907378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395708 n : ℚ) / (n + 1 : ℚ)

end

end A062236.P4343984537900907378

/-! ## A062236.P13269276459003902654

`A106516(A081267(n+1))`
-/

namespace A062236.P13269276459003902654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 (A081267 (n + 1)).toNat

end

end A062236.P13269276459003902654

/-! ## A062236.P11737192423180032869

`A106516(A000096(3*(n+1))-n)`
-/

namespace A062236.P11737192423180032869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 (A000096 (3 * (n + 1)) - (n : ℤ)).toNat

end

end A062236.P11737192423180032869

/-! ## A062236.P12592989432178616237

`A106516(A000217(3*n+4)-(n+1))`
-/

namespace A062236.P12592989432178616237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 (A000217 (3 * n + 4) - (n + 1 : ℤ)).toNat

end

end A062236.P12592989432178616237

/-!
# A062237: Numbers k which are (sum of digits of k) concatenated with (product of digits of k).

The programs for A062237, there is no canonical definition to state claims against.
-/

/-! ## A062237.P8968394895204222592

`eq[n, A380873(n)]`
-/

namespace A062237.P8968394895204222592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062237.P8968394895204222592

/-! ## A062237.P4202493193862511021

`eq[A131361(n), A216100(n)]`
-/

namespace A062237.P4202493193862511021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062237.P4202493193862511021

/-! ## A062237.P17150192524101992493

`eq[A076313(A057147(n)), A118881(n)]`
-/

namespace A062237.P17150192524101992493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (A057147 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062237.P17150192524101992493

/-! ## A062237.P165103192739100729

`eq[A059995(n), A355222(A088133(n))]`
-/

namespace A062237.P165103192739100729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355222 (A088133 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062237.P165103192739100729

/-!
# A062239: Numbers n with property that every digit is a prime factor of n.

The programs for A062239, there is no canonical definition to state claims against.
-/

/-! ## A062239.P9566285663885832558

`∩[A034838(n+1), A046034(n+1)]`
-/

namespace A062239.P9566285663885832558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062239.P9566285663885832558

/-! ## A062239.P15159855440232779145

`∩[A002796(n+1), A046034(n+1)]`
-/

namespace A062239.P15159855440232779145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062239.P15159855440232779145

/-! ## A062239.P12993764291950082712

`∩[A085557(n+1), A344550(n+1)]`
-/

namespace A062239.P12993764291950082712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062239.P12993764291950082712

/-! ## A062239.P4115116530432014996

`∩[A260181(n+1), A344550(n+1)]`
-/

namespace A062239.P4115116530432014996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062239.P4115116530432014996

/-! ## A062239.P13389875173308148990

`A010785(A028834(n+1)%A103395(3*n+2))`
-/

namespace A062239.P13389875173308148990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (Int.tmod (A028834 (n + 1)) (A103395 (3 * n + 2))).toNat

end

end A062239.P13389875173308148990

/-!
# A062241: Smallest integer >= 2 that is not the sum of 2 positive integers whose prime factors are all <= prime(n), the n-th prime.

The programs for A062241, there is no canonical definition to state claims against.
-/

/-! ## A062241.P12576653000393711156

`A045535(n-and(1, a(n-1)))` with `a(0)=3`
-/

namespace A062241.P12576653000393711156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A045535 ((n : ℤ) - Int.land 1 (a (n - 1))).toNat

end

end A062241.P12576653000393711156

/-! ## A062241.P2553712484460112386

`A045535(n-A091396(C(3, a(n-1))+1))` with `a(0)=3`
-/

namespace A062241.P2553712484460112386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A045535 ((n : ℤ) - A091396 (Nat.choose 3 (a (n - 1)).toNat + 1)).toNat

end

end A062241.P2553712484460112386

/-!
# A062242: McKay-Thompson series of class 18D for the Monster group.

The programs for A062242, there is no canonical definition to state claims against.
-/

/-! ## A062242.P9498463296655288103

`(-1)^n*A062244(n)`
-/

namespace A062242.P9498463296655288103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A062244 n

end

end A062242.P9498463296655288103

/-! ## A062242.P7380025594062763154

`A062244(n)/A033999(n)`
-/

namespace A062242.P7380025594062763154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062244 n : ℚ) / (A033999 n : ℚ)

end

end A062242.P7380025594062763154

/-! ## A062242.P14349478612358136997

`A263526(n)/A010684(n)`
-/

namespace A062242.P14349478612358136997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263526 n : ℚ) / (A010684 n : ℚ)

end

end A062242.P14349478612358136997

/-! ## A062242.P6959886362217901563

`2*A062244(n)-A132301(n)`
-/

namespace A062242.P6959886362217901563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062244 n - A132301 n

end

end A062242.P6959886362217901563

/-! ## A062242.P13286447242719230638

`(A263526(n)+A062244(n))/2`
-/

namespace A062242.P13286447242719230638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263526 n + A062244 n : ℚ) / 2

end

end A062242.P13286447242719230638

/-! ## A062242.P6480309881317427282

`A263526(n)/(2-A033999(n))`
-/

namespace A062242.P6480309881317427282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263526 n : ℚ) / (2 - A033999 n : ℚ)

end

end A062242.P6480309881317427282

/-! ## A062242.P1269678346107917539

`A062244(n)/A062244(Δ[A008619(n)])`
-/

namespace A062242.P1269678346107917539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062244 n : ℚ) / (A062244 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A062242.P1269678346107917539

/-! ## A062242.P4207831617142490750

`A062244(n)/A132972(n)*A141094(n)`
-/

namespace A062242.P4207831617142490750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062244 n : ℚ) / (A132972 n : ℚ) * (A141094 n : ℚ)

end

end A062242.P4207831617142490750

/-! ## A062242.P8048764757017817553

`A132180(n)/A141094(n)*A132301(n)`
-/

namespace A062242.P8048764757017817553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132180 n : ℚ) / (A141094 n : ℚ) * (A132301 n : ℚ)

end

end A062242.P8048764757017817553

/-! ## A062242.P7128663022559671214

`A062244(n)/A062244(Δ[A004526(n)])`
-/

namespace A062242.P7128663022559671214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062244 n : ℚ) / (A062244 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A062242.P7128663022559671214

/-! ## A062242.P3172561955271406941

`A124243(n+1)/A132180(n+1)*A132301(n)`
-/

namespace A062242.P3172561955271406941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124243 (n + 1) : ℚ) / (A132180 (n + 1) : ℚ) * (A132301 n : ℚ)

end

end A062242.P3172561955271406941

/-! ## A062242.P1269264192358397134

`A062244(n)*A219977(n²)`
-/

namespace A062242.P1269264192358397134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062244 n * A219977 (n ^ 2)

end

end A062242.P1269264192358397134

/-!
# A062243: McKay-Thompson series of class 24c for the Monster group.

The programs for A062243, there is no canonical definition to state claims against.
-/

/-! ## A062243.P11018343718650215734

`(-1)^n*A058487(n)`
-/

namespace A062243.P11018343718650215734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A058487 n

end

end A062243.P11018343718650215734

/-! ## A062243.P9839621583206562167

`A057079(n)*A112176(n)`
-/

namespace A062243.P9839621583206562167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A112176 n

end

end A062243.P9839621583206562167

/-! ## A062243.P11045802017712912816

`A112205(n)*A131713(n)`
-/

namespace A062243.P11045802017712912816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112205 n * A131713 n

end

end A062243.P11045802017712912816

/-! ## A062243.P2895102537913249346

`A058487(n)/A033999(n)`
-/

namespace A062243.P2895102537913249346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058487 n : ℚ) / (A033999 n : ℚ)

end

end A062243.P2895102537913249346

/-! ## A062243.P5762895103084259902

`(2-A057079(n)²)*A112205(n)`
-/

namespace A062243.P5762895103084259902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057079 n ^ 2) * A112205 n

end

end A062243.P5762895103084259902

/-! ## A062243.P5598151229311590881

`A058487(n)/A217771(n)*A261321(n)`
-/

namespace A062243.P5598151229311590881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058487 n : ℚ) / (A217771 n : ℚ) * (A261321 n : ℚ)

end

end A062243.P5598151229311590881

/-!
# A062244: McKay-Thompson series of class 36B for the Monster group.

The programs for A062244, there is no canonical definition to state claims against.
-/

/-! ## A062244.P5207245964745314871

`(-1)^n*A062242(n)`
-/

namespace A062244.P5207245964745314871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A062242 n

end

end A062244.P5207245964745314871

/-! ## A062244.P11200815504927474778

`A062242(n)/A033999(n)`
-/

namespace A062244.P11200815504927474778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062242 n : ℚ) / (A033999 n : ℚ)

end

end A062244.P11200815504927474778

/-! ## A062244.P12241181554753125925

`A132301(n)/A010684(n)`
-/

namespace A062244.P12241181554753125925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132301 n : ℚ) / (A010684 n : ℚ)

end

end A062244.P12241181554753125925

/-! ## A062244.P13651194667412492476

`(A132301(n)+A062242(n))/2`
-/

namespace A062244.P13651194667412492476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132301 n + A062242 n : ℚ) / 2

end

end A062244.P13651194667412492476

/-! ## A062244.P1074643435752141486

`2*A062242(n)-A263526(n)`
-/

namespace A062244.P1074643435752141486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062242 n - A263526 n

end

end A062244.P1074643435752141486

/-! ## A062244.P17009523828913961030

`A132301(n)/(2-A033999(n))`
-/

namespace A062244.P17009523828913961030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132301 n : ℚ) / (2 - A033999 n : ℚ)

end

end A062244.P17009523828913961030

/-! ## A062244.P7038529990708724375

`A132301(n)-(A062242(n)-A263526(n))`
-/

namespace A062244.P7038529990708724375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132301 n - (A062242 n - A263526 n)

end

end A062244.P7038529990708724375

/-! ## A062244.P10726626013845130874

`A062242(n)/A132972(n)*A141094(n)`
-/

namespace A062244.P10726626013845130874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062242 n : ℚ) / (A132972 n : ℚ) * (A141094 n : ℚ)

end

end A062244.P10726626013845130874

/-! ## A062244.P12728918717347685295

`A132975(n+1)/A132180(n+1)*A132301(n)`
-/

namespace A062244.P12728918717347685295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132975 (n + 1) : ℚ) / (A132180 (n + 1) : ℚ) * (A132301 n : ℚ)

end

end A062244.P12728918717347685295

/-! ## A062244.P15378139644250352755

`A213267(n+1)/A132180(n+1)*A132301(n)`
-/

namespace A062244.P15378139644250352755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213267 (n + 1) : ℚ) / (A132180 (n + 1) : ℚ) * (A132301 n : ℚ)

end

end A062244.P15378139644250352755

/-! ## A062244.P9184180021045875808

`A062242(n)/A128128(n)*A294387(n)`
-/

namespace A062244.P9184180021045875808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062242 n : ℚ) / (A128128 n : ℚ) * (A294387 n : ℚ)

end

end A062244.P9184180021045875808

/-! ## A062244.P11739223593637417019

`A062242(n)*A209615(2*n+1)`
-/

namespace A062244.P11739223593637417019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062242 n * A209615 (2 * n + 1)

end

end A062244.P11739223593637417019

/-! ## A062244.P15968429146106486584

`A062242(n)*A100051(A004273(n)+n)`
-/

namespace A062244.P15968429146106486584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062242 n * A100051 (A004273 n + (n : ℤ)).toNat

end

end A062244.P15968429146106486584

/-! ## A062244.P12535156443422733011

`A062242(n)*A100051(n²+1)`
-/

namespace A062244.P12535156443422733011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062242 n * A100051 (n ^ 2 + 1)

end

end A062244.P12535156443422733011

/-!
# A062245: Expansion of Hauptmodul for group G'_{27|3}.

The programs for A062245, there is no canonical definition to state claims against.
-/

/-! ## A062245.P5821608244946684585

`(-1)^n*A062246(n)`
-/

namespace A062245.P5821608244946684585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A062246 n

end

end A062245.P5821608244946684585

/-! ## A062245.P15748828397116622307

`A062246(n)/A033999(n)`
-/

namespace A062245.P15748828397116622307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062246 n : ℚ) / (A033999 n : ℚ)

end

end A062245.P15748828397116622307

/-! ## A062245.P7645937505313880559

`A062246(n)/A009001(A005843(n))`
-/

namespace A062245.P7645937505313880559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062246 n : ℚ) / (A009001 (A005843 n).toNat : ℚ)

end

end A062245.P7645937505313880559

/-! ## A062245.P13573671328653379745

`A062246(n)/A009001(A008458(n))`
-/

namespace A062245.P13573671328653379745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062246 n : ℚ) / (A009001 (A008458 n).toNat : ℚ)

end

end A062245.P13573671328653379745

/-! ## A062245.P13479178339995407110

`A062246(n)/A009001(A008596(n))`
-/

namespace A062245.P13479178339995407110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062246 n : ℚ) / (A009001 (A008596 n).toNat : ℚ)

end

end A062245.P13479178339995407110

/-! ## A062245.P17832931123594836923

`A062246(n)*A112465(∑[n])`
-/

namespace A062245.P17832931123594836923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062246 n * A112465 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062245.P17832931123594836923

/-!
# A062246: McKay-Thompson series of class 27c for the Monster group.

The programs for A062246, there is no canonical definition to state claims against.
-/

/-! ## A062246.P12118456307666581663

`(-1)^n*A062245(n)`
-/

namespace A062246.P12118456307666581663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A062245 n

end

end A062246.P12118456307666581663

/-! ## A062246.P15873640759978210907

`A062245(n)/ratio[A057077(n)]`
-/

namespace A062246.P15873640759978210907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062245 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A062246.P15873640759978210907

/-! ## A062246.P8195802666685411333

`A062245(n)/A057077(A005843(n))`
-/

namespace A062246.P8195802666685411333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062245 n : ℚ) / (A057077 (A005843 n).toNat : ℚ)

end

end A062246.P8195802666685411333

/-! ## A062246.P14118693809234899265

`A062245(n)/A057077(A008458(n))`
-/

namespace A062246.P14118693809234899265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062245 n : ℚ) / (A057077 (A008458 n).toNat : ℚ)

end

end A062246.P14118693809234899265

/-! ## A062246.P11745870485862237407

`A062245(n)/A057077(A008596(n))`
-/

namespace A062246.P11745870485862237407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062245 n : ℚ) / (A057077 (A008596 n).toNat : ℚ)

end

end A062246.P11745870485862237407

/-! ## A062246.P15314576210501911509

`A062245(n)/A062245(A072865(∑[n+1]))^n`
-/

namespace A062246.P15314576210501911509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062245 n : ℚ) / (A062245 (A072865 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat ^ n : ℚ)

end

end A062246.P15314576210501911509

/-!
# A062247: Let f(h) = A141900(h) = 2^h * 3^i * 5^j * ... be the smallest term in A141586 that is divisible by 2^h but not by 2^(h+1). Sequence gives values of h where i increases.

The programs for A062247, there is no canonical definition to state claims against.
-/

/-! ## A062247.P9293740099263556767

`lt[A056595(A003961(n+1)), A298735(3*n+3)]`
-/

namespace A062247.P9293740099263556767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (A003961 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (3 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062247.P9293740099263556767

/-! ## A062247.P6008897307393769853

`lt[A056595(A064988(n+1)), A298735(3*n+3)]`
-/

namespace A062247.P6008897307393769853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (A064988 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (3 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062247.P6008897307393769853

/-! ## A062247.P14388057715582147178

`eq[(A113447(n+1)+n)%2, A324837(n+1)]`
-/

namespace A062247.P14388057715582147178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113447 (n + 1) + (n : ℤ)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324837 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062247.P14388057715582147178

/-! ## A062247.P9522434947440368643

`eq[A033676(n+1), A060775(A233583(3*n+4))]`
-/

namespace A062247.P9522434947440368643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A233583 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062247.P9522434947440368643

/-! ## A062247.P6267811876418741807

`eq[A080744(n+1), A136549(n+1)]`
-/

namespace A062247.P6267811876418741807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136549 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062247.P6267811876418741807

/-!
# A062249: a(n) = n + d(n), where d(n) = number of divisors of n, cf. A000005.

The programs for A062249, the canonical program `A062249.P5473932307129171226` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062249 has offset 1).

The definition of A062249 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062249.P5473932307129171226

`n+1+A000005(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062249

/-- `n+1+A000005(n+1)` -/
def P5473932307129171226.Spec : Prop :=
  ∀ n, P5473932307129171226.a n = A062249 (n + 1)

theorem P5473932307129171226.correct : P5473932307129171226.Spec := by
  intro n
  simp only [A062249, Nat.add_sub_cancel]

end A062249

/-! ## A062249.P10867620960106820372

`∑{d}[n+1, ceil(2/#)]+n`
-/

namespace A062249.P10867620960106820372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈2 / (d : ℚ)⌉ + (n : ℤ)

end

end A062249.P10867620960106820372

namespace A062249

/-- `∑{d}[n+1, ceil(2/#)]+n` -/
def P10867620960106820372.Spec : Prop :=
  ∀ n, P10867620960106820372.a n = A062249 (n + 1)

end A062249

/-! ## A062249.P5758191114509824983

`∏{e}[n+1, #+1]+1+n`
-/

namespace A062249.P5758191114509824983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1 + n

end

end A062249.P5758191114509824983

namespace A062249

/-- `∏{e}[n+1, #+1]+1+n` -/
def P5758191114509824983.Spec : Prop :=
  ∀ n, (P5758191114509824983.a n : ℤ) = A062249 (n + 1)

end A062249

/-! ## A062249.P10606178303231444607

`n+1-∑{d}[n+1, or(#, -1)]`
-/

namespace A062249.P10606178303231444607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1)

end

end A062249.P10606178303231444607

namespace A062249

/-- `n+1-∑{d}[n+1, or(#, -1)]` -/
def P10606178303231444607.Spec : Prop :=
  ∀ n, P10606178303231444607.a n = A062249 (n + 1)

end A062249

/-! ## A062249.P4091377237807846612

`∑{d}[n+1, (n+2)^floor(1/#)]`
-/

namespace A062249.P4091377237807846612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 2 : ℚ) ^ (⌊1 / (d : ℚ)⌋ : ℤ)

end

end A062249.P4091377237807846612

namespace A062249

/-- `∑{d}[n+1, (n+2)^floor(1/#)]` -/
def P4091377237807846612.Spec : Prop :=
  ∀ n, P4091377237807846612.a n = (A062249 (n + 1) : ℚ)

end A062249

/-! ## A062249.P2010962528730571584

`abs(∑{d}[n+1, #+1]-(∑{d}[n+1, #]-(n+1)))`
-/

namespace A062249.P2010962528730571584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 1 : ℤ))|

end

end A062249.P2010962528730571584

namespace A062249

/-- `abs(∑{d}[n+1, #+1]-(∑{d}[n+1, #]-(n+1)))` -/
def P2010962528730571584.Spec : Prop :=
  ∀ n, P2010962528730571584.a n = A062249 (n + 1)

end A062249

/-! ## A062249.P16245614975187457332

`A158907(n+1)+1`
-/

namespace A062249.P16245614975187457332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158907 (n + 1) + 1

end

end A062249.P16245614975187457332

namespace A062249

/-- `A158907(n+1)+1` -/
def P16245614975187457332.Spec : Prop :=
  ∀ n, P16245614975187457332.a n = A062249 (n + 1)

end A062249

/-! ## A062249.P3946040946219522107

`A334954(n+1)+n`
-/

namespace A062249.P3946040946219522107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) + (n : ℤ)

end

end A062249.P3946040946219522107

namespace A062249

/-- `A334954(n+1)+n` -/
def P3946040946219522107.Spec : Prop :=
  ∀ n, P3946040946219522107.a n = A062249 (n + 1)

end A062249

/-! ## A062249.P6330543361036076705

`∑[A341062(n+1)+1]`
-/

namespace A062249.P6330543361036076705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062249.P6330543361036076705

namespace A062249

/-- `∑[A341062(n+1)+1]` -/
def P6330543361036076705.Spec : Prop :=
  ∀ n, P6330543361036076705.a n = A062249 (n + 1)

end A062249

/-! ## A062249.P8646598872927680358

`Δ[A006218(n)]+1+n`
-/

namespace A062249.P8646598872927680358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A062249.P8646598872927680358

namespace A062249

/-- `Δ[A006218(n)]+1+n` -/
def P8646598872927680358.Spec : Prop :=
  ∀ n, P8646598872927680358.a n = A062249 (n + 1)

end A062249

/-! ## A062249.P16859052501753912935

`Δ[A054519(n)]+1+n`
-/

namespace A062249.P16859052501753912935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A062249.P16859052501753912935

namespace A062249

/-- `Δ[A054519(n)]+1+n` -/
def P16859052501753912935.Spec : Prop :=
  ∀ n, P16859052501753912935.a n = A062249 (n + 1)

end A062249

/-! ## A062249.P9726604117213132270

`A032741(n+1)+2+n`
-/

namespace A062249.P9726604117213132270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 2 + (n : ℤ)

end

end A062249.P9726604117213132270

namespace A062249

/-- `A032741(n+1)+2+n` -/
def P9726604117213132270.Spec : Prop :=
  ∀ n, P9726604117213132270.a n = A062249 (n + 1)

end A062249

/-! ## A062249.P6283674268094442449

`A140482(n+1)-(n+1)`
-/

namespace A062249.P6283674268094442449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140482 (n + 1) - (n + 1 : ℤ)

end

end A062249.P6283674268094442449

namespace A062249

/-- `A140482(n+1)-(n+1)` -/
def P6283674268094442449.Spec : Prop :=
  ∀ n, P6283674268094442449.a n = A062249 (n + 1)

end A062249

/-! ## A062249.P13690208772419488160

`3-A378216(n+1)+n`
-/

namespace A062249.P13690208772419488160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A378216 (n + 1) + (n : ℤ)

end

end A062249.P13690208772419488160

namespace A062249

/-- `3-A378216(n+1)+n` -/
def P13690208772419488160.Spec : Prop :=
  ∀ n, P13690208772419488160.a n = A062249 (n + 1)

end A062249

/-! ## A062249.P2985892572852291580

`abs(A329484(n+1))+1+n`
-/

namespace A062249.P2985892572852291580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A329484 (n + 1)| + 1 + (n : ℤ)

end

end A062249.P2985892572852291580

namespace A062249

/-- `abs(A329484(n+1))+1+n` -/
def P2985892572852291580.Spec : Prop :=
  ∀ n, P2985892572852291580.a n = A062249 (n + 1)

end A062249

/-! ## A062249.P10679857963056619811

`sqrt(A035116(n+1))+1+n`
-/

namespace A062249.P10679857963056619811
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035116 (n + 1) : ℝ) + 1 + (n : ℝ)

end

end A062249.P10679857963056619811

namespace A062249

/-- `sqrt(A035116(n+1))+1+n` -/
def P10679857963056619811.Spec : Prop :=
  ∀ n, P10679857963056619811.a n = (A062249 (n + 1) : ℝ)

end A062249

/-! ## A062249.P11354567786498103083

`log2(A338506(n+1))+1+n`
-/

namespace A062249.P11354567786498103083
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A338506 (n + 1) : ℝ) + 1 + (n : ℝ)

end

end A062249.P11354567786498103083

namespace A062249

/-- `log2(A338506(n+1))+1+n` -/
def P11354567786498103083.Spec : Prop :=
  ∀ n, P11354567786498103083.a n = (A062249 (n + 1) : ℝ)

end A062249

/-! ## A062249.P7661230328824817765

`log2(A100577(n+1))+2+n`
-/

namespace A062249.P7661230328824817765
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A100577 (n + 1) : ℝ) + 2 + (n : ℝ)

end

end A062249.P7661230328824817765

namespace A062249

/-- `log2(A100577(n+1))+2+n` -/
def P7661230328824817765.Spec : Prop :=
  ∀ n, P7661230328824817765.a n = (A062249 (n + 1) : ℝ)

end A062249

/-! ## A062249.P11240947007096972979

`A320111(2*(n+1))+n+1`
-/

namespace A062249.P11240947007096972979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A062249.P11240947007096972979

namespace A062249

/-- `A320111(2*(n+1))+n+1` -/
def P11240947007096972979.Spec : Prop :=
  ∀ n, P11240947007096972979.a n = A062249 (n + 1)

end A062249

/-! ## A062249.P7684028663068595141

`2*(n+1)-A049820(n+1)`
-/

namespace A062249.P7684028663068595141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A049820 (n + 1)

end

end A062249.P7684028663068595141

namespace A062249

/-- `2*(n+1)-A049820(n+1)` -/
def P7684028663068595141.Spec : Prop :=
  ∀ n, P7684028663068595141.a n = A062249 (n + 1)

end A062249

/-!
# A062251: Take minimal prime q such that n(q+1)-1 is prime (A060324), that is, the smallest prime q so that n = (p+1)/(q+1) with p prime; sequence gives values of p.

The programs for A062251, there is no canonical definition to state claims against.
-/

/-! ## A062251.P5226785795239944609

`(A060324(n+1)+1)*(n+1)-1`
-/

namespace A062251.P5226785795239944609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060324 (n + 1) + 1) * (n + 1 : ℤ) - 1

end

end A062251.P5226785795239944609

/-! ## A062251.P7489654541721809060

`(n+1)*A060324(n+1)+n`
-/

namespace A062251.P7489654541721809060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060324 (n + 1) + (n : ℤ)

end

end A062251.P7489654541721809060

/-! ## A062251.P13347911563333272223

`A020639(A038700(3*(n+1))*A038700(4*(n+1)))`
-/

namespace A062251.P13347911563333272223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A038700 (3 * (n + 1)) * A038700 (4 * (n + 1))).toNat

end

end A062251.P13347911563333272223

/-! ## A062251.P2296600834267878139

`A020639(A038699(3*(n+1))*A038699(4*(n+1)))`
-/

namespace A062251.P2296600834267878139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A038699 (3 * (n + 1)) * A038699 (4 * (n + 1))).toNat

end

end A062251.P2296600834267878139

/-! ## A062251.P4223226455593617314

`A077342(n+1)*A255598(A077342(n+1))+n`
-/

namespace A062251.P4223226455593617314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077342 (n + 1) * A255598 (A077342 (n + 1)).toNat + (n : ℤ)

end

end A062251.P4223226455593617314

/-!
# A062252: Record-setting values of q(n), the minimal prime q such that n(q+1)-1 is a prime p (i.e., q(n) > q(j) for all 0 < j < n).

The programs for A062252, there is no canonical definition to state claims against.
-/

/-! ## A062252.P17497833683616625817

`floor(A062256(n+1)/A060424(n+1))`
-/

namespace A062252.P17497833683616625817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062256 (n + 1) : ℚ) / (A060424 (n + 1) : ℚ)⌋

end

end A062252.P17497833683616625817

/-! ## A062252.P746235262761330203

`record[A060324(n+1)]`
-/

namespace A062252.P746235262761330203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062252.P746235262761330203

/-! ## A062252.P16765674434304755153

`record[(A062251(n+1)-n)/(n+1)]`
-/

namespace A062252.P16765674434304755153
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062251 (n + 1) - (n : ℤ) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062252.P16765674434304755153

/-! ## A062252.P17898168957017916081

`A060324(A060424(n+1))`
-/

namespace A062252.P17898168957017916081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (A060424 (n + 1)).toNat

end

end A062252.P17898168957017916081

/-! ## A062252.P16033933496119267960

`p?[record[A060324(A028310(n))]]`
-/

namespace A062252.P16033933496119267960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062252.P16033933496119267960

/-!
# A062254: 3rd level triangle related to Eulerian numbers and binomial transforms (A062253 is second level, triangle of Eulerian numbers is first level and triangle with Z(0,0)=1 and Z(n,k)=0 otherwise is 0th level).

The programs for A062254, there is no canonical definition to state claims against.
-/

/-! ## A062254.P2197980376990262244

`A293616(A112355(n+1)+A032551(n+1))`
-/

namespace A062254.P2197980376990262244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293616 (A112355 (n + 1) + A032551 (n + 1)).toNat

end

end A062254.P2197980376990262244

/-!
# A062255: 4th level triangle related to Eulerian numbers and binomial transforms (A062254 is third level, A062253 is second level, triangle of Eulerian numbers is first level and triangle with Z(0,0)=1 and Z(n,k)=0 otherwise is 0th level).

The programs for A062255, there is no canonical definition to state claims against.
-/

/-! ## A062255.P8907297344384308323

`A293616(2*n+∑[n+3]+7)`
-/

namespace A062255.P8907297344384308323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293616 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 7))

end

end A062255.P8907297344384308323

/-! ## A062255.P6391040520423447459

`A293616(A052905(n+2))^ceil(acot(n))`
-/

namespace A062255.P6391040520423447459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293616 (A052905 (n + 2)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A062255.P6391040520423447459

/-! ## A062255.P10617968797483900218

`A293616(A052905(n+2))+A025444(n)`
-/

namespace A062255.P10617968797483900218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293616 (A052905 (n + 2)).toNat + A025444 n

end

end A062255.P10617968797483900218

/-! ## A062255.P4454087727868500801

`A084602(n²)*A293616(A052905(n+2))`
-/

namespace A062255.P4454087727868500801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084602 (n ^ 2) * A293616 (A052905 (n + 2)).toNat

end

end A062255.P4454087727868500801

/-!
# A062256: Record-setting values of q(n), the minimal prime q such that n(q+1)-1 is a prime p (i.e., q(n) > q(j) for all 0 < j < n).

The programs for A062256, there is no canonical definition to state claims against.
-/

/-! ## A062256.P5433512672813596906

`A060424(n+1)*(A062252(n+1)+1)-1`
-/

namespace A062256.P5433512672813596906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060424 (n + 1) * (A062252 (n + 1) + 1) - 1

end

end A062256.P5433512672813596906

/-! ## A062256.P9841106381300023826

`A062251(A060424(n+1))`
-/

namespace A062256.P9841106381300023826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062251 (A060424 (n + 1)).toNat

end

end A062256.P9841106381300023826

/-! ## A062256.P13472533871112304967

`A062251(or(A001055(2*n+1)², A293627(3*n+2)))`
-/

namespace A062256.P13472533871112304967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062251 (Int.lor (A001055 (2 * n + 1) ^ 2) (A293627 (3 * n + 2))).toNat

end

end A062256.P13472533871112304967

/-!
# A062257: Number of (0,1)-strings of length n with no occurrences of the substrings 10101101 and 1110101.

The programs for A062257, the canonical program `A062257.P16029541370984414990` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062257 has offset 0).

The definition of A062257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062257.P16029541370984414990

`2*a(n-1)-a(n-5)+a(n-6)+a(n-8)+a(n-9)-a(n-10)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=64, a(7)=127, a(8)=251, a(9)=496`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062257

/-- `2*a(n-1)-a(n-5)+a(n-6)+a(n-8)+a(n-9)-a(n-10)` -/
def P16029541370984414990.Spec : Prop :=
  ∀ n, P16029541370984414990.a n = A062257 n

theorem P16029541370984414990.correct : P16029541370984414990.Spec := by
  intro n
  simp only [A062257]

end A062257

/-! ## A062257.P13237182235167242517

`∑[A239558(A351870(n)+1)]`
-/

namespace A062257.P13237182235167242517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239558 (A351870 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062257.P13237182235167242517

namespace A062257

/-- `∑[A239558(A351870(n)+1)]` -/
def P13237182235167242517.Spec : Prop :=
  ∀ n, P13237182235167242517.a n = A062257 n

end A062257

/-! ## A062257.P17240136211748649074

`A151975(n+1)+A062259(A351870(n))`
-/

namespace A062257.P17240136211748649074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151975 (n + 1) + A062259 (A351870 n).toNat

end

end A062257.P17240136211748649074

namespace A062257

/-- `A151975(n+1)+A062259(A351870(n))` -/
def P17240136211748649074.Spec : Prop :=
  ∀ n, P17240136211748649074.a n = A062257 n

end A062257

/-! ## A062257.P3712018837519951927

`A062259(n)+A151975(n+1)^A014963(29*n+18)`
-/

namespace A062257.P3712018837519951927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062259 n : ℚ) + (A151975 (n + 1) : ℚ) ^ (A014963 (29 * n + 18) : ℤ)

end

end A062257.P3712018837519951927

namespace A062257

/-- `A062259(n)+A151975(n+1)^A014963(29*n+18)` -/
def P3712018837519951927.Spec : Prop :=
  ∀ n, P3712018837519951927.a n = (A062257 n : ℚ)

end A062257

/-! ## A062257.P3940653228480447973

`A062259(n)+A143662(n)+A069531(A006131(n)+1)`
-/

namespace A062257.P3940653228480447973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062259 n + (A143662 n + A069531 (A006131 n + 1).toNat)

end

end A062257.P3940653228480447973

namespace A062257

/-- `A062259(n)+A143662(n)+A069531(A006131(n)+1)` -/
def P3940653228480447973.Spec : Prop :=
  ∀ n, P3940653228480447973.a n = A062257 n

end A062257

/-!
# A062258: Number of (0,1)-strings of length n not containing the substring 0100100.

The programs for A062258, the canonical program `A062258.P15400896243979999918` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062258 has offset 0).

The definition of A062258 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062258.P15400896243979999918

`2*a(n-1)-a(n-3)+2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=64`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062258

/-- `2*a(n-1)-a(n-3)+2*a(n-4)-a(n-6)+a(n-7)` -/
def P15400896243979999918.Spec : Prop :=
  ∀ n, P15400896243979999918.a n = A062258 n

theorem P15400896243979999918.correct : P15400896243979999918.Spec := by
  intro n
  simp only [A062258]

end A062258

/-! ## A062258.P6960819759683052467

`A172317(n+1)-A258009(A172319(n))`
-/

namespace A062258.P6960819759683052467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172317 (n + 1) - A258009 (A172319 n).toNat

end

end A062258.P6960819759683052467

namespace A062258

/-- `A172317(n+1)-A258009(A172319(n))` -/
def P6960819759683052467.Spec : Prop :=
  ∀ n, P6960819759683052467.a n = A062258 n

end A062258

/-! ## A062258.P17756915893634195688

`∩[A172317(n+1), A234589(n)]-A172319(n)`
-/

namespace A062258.P17756915893634195688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234589 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A172319 n

end

end A062258.P17756915893634195688

namespace A062258

/-- `∩[A172317(n+1), A234589(n)]-A172319(n)` -/
def P17756915893634195688.Spec : Prop :=
  ∀ n, P17756915893634195688.a n = A062258 n

end A062258

/-! ## A062258.P8264622810684958056

`∩[A172317(n+1), A234589(n)]-A234591(n)`
-/

namespace A062258.P8264622810684958056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234589 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A234591 n

end

end A062258.P8264622810684958056

namespace A062258

/-- `∩[A172317(n+1), A234589(n)]-A234591(n)` -/
def P8264622810684958056.Spec : Prop :=
  ∀ n, P8264622810684958056.a n = A062258 n

end A062258

/-! ## A062258.P5568305180863777203

`A185238(A001949(n))+A172316(n)`
-/

namespace A062258.P5568305180863777203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A001949 n).toNat + A172316 n

end

end A062258.P5568305180863777203

namespace A062258

/-- `A185238(A001949(n))+A172316(n)` -/
def P5568305180863777203.Spec : Prop :=
  ∀ n, P5568305180863777203.a n = A062258 n

end A062258

/-!
# A062259: Number of (0,1)-strings of length n that avoid the substrings of substrings 11101011 and 101111.

The programs for A062259, there is no canonical definition to state claims against.
-/

/-! ## A062259.P6523899276455952807

`∑[A038567(∑[A242781(n)])]`
-/

namespace A062259.P6523899276455952807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242781 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062259.P6523899276455952807

/-! ## A062259.P13097344866173019008

`A062257(n)-A351870(A151975(n+1))`
-/

namespace A062259.P13097344866173019008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062257 n - A351870 (A151975 (n + 1)).toNat

end

end A062259.P13097344866173019008

/-! ## A062259.P1616400838241089320

`A108955(A141199(n+2)-A108950(n+2))`
-/

namespace A062259.P1616400838241089320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108955 (A141199 (n + 2) - A108950 (n + 2)).toNat

end

end A062259.P1616400838241089320

/-! ## A062259.P2398901828924889546

`∑[floor(root(A217805(n+1), 4))]`
-/

namespace A062259.P2398901828924889546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A217805 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062259.P2398901828924889546

/-! ## A062259.P13651403063211683134

`floor(sqrt(A005117(ceil(3^n/2)+(2^n+4^n)/2)))`
-/

namespace A062259.P13651403063211683134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005117 (SequenceMachineLib.roundAway ((⌈(3 ^ n : ℚ) / 2⌉ : ℚ) + (2 ^ n + 4 ^ n : ℚ) / 2)).toNat)

end

end A062259.P13651403063211683134

/-!
# A062260: Third (unsigned) column sequence of triangle A062140 (generalized a=4 Laguerre).

The programs for A062260, there is no canonical definition to state claims against.
-/

/-! ## A062260.P3650666860966887900

`∑[n+1]/6*∏[n+6]`
-/

namespace A062260.P3650666860966887900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6 * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A062260.P3650666860966887900

/-! ## A062260.P3539604117691473561

`(n+2)!*C(n+6, 6)/2`
-/

namespace A062260.P3539604117691473561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) * Nat.choose (n + 6) 6 : ℚ) / 2

end

end A062260.P3539604117691473561

/-! ## A062260.P12161337507398186427

`A062140(∑[n+2]+3)`
-/

namespace A062260.P12161337507398186427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062140 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A062260.P12161337507398186427

/-! ## A062260.P13357907455542118987

`A267849(eq[6, A025581(n)])`
-/

namespace A062260.P13357907455542118987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062260.P13357907455542118987

/-! ## A062260.P872738495875654380

`A062142(n)/(n/3+1)`
-/

namespace A062260.P872738495875654380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062142 n : ℚ) / ((n : ℚ) / 3 + 1)

end

end A062260.P872738495875654380

/-!
# A062261: Fourth (unsigned) column sequence of triangle A062140 (generalized a=4 Laguerre).

The programs for A062261, there is no canonical definition to state claims against.
-/

/-! ## A062261.P1225526796806925289

`∑[∑[n+1]]*∑[∑[∑[∑[∑[∑[n+1]]]]]]*n!`
-/

namespace A062261.P1225526796806925289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f3 j) * Nat.factorial n

end

end A062261.P1225526796806925289

/-! ## A062261.P14342799801021448469

`n!*A105250(n)`
-/

namespace A062261.P14342799801021448469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A105250 n

end

end A062261.P14342799801021448469

/-! ## A062261.P11655561981936064035

`∑[∑[n+1]]*A049388(n)`
-/

namespace A062261.P11655561981936064035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A049388 n

end

end A062261.P11655561981936064035

/-! ## A062261.P13499596261363356748

`∏[n+3]/3*A000580(n+7)`
-/

namespace A062261.P13499596261363356748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3 * (A000580 (n + 7) : ℚ)

end

end A062261.P13499596261363356748

/-! ## A062261.P9050038884208450122

`abs(A062140(A167614(n+2)))`
-/

namespace A062261.P9050038884208450122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062140 (A167614 (n + 2)).toNat|

end

end A062261.P9050038884208450122

/-! ## A062261.P12291535483821798986

`A000580(n+7)*A001715(n+3)`
-/

namespace A062261.P12291535483821798986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A001715 (n + 3)

end

end A062261.P12291535483821798986

/-! ## A062261.P11840790271848619330

`C(n+7, 7)*A173333(A167614(n+1))`
-/

namespace A062261.P11840790271848619330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) * A173333 (A167614 (n + 1)).toNat

end

end A062261.P11840790271848619330

/-! ## A062261.P1804876366081264044

`A049388(n)*A074909(A167614(n+1))`
-/

namespace A062261.P1804876366081264044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049388 n * A074909 (A167614 (n + 1)).toNat

end

end A062261.P1804876366081264044

/-! ## A062261.P6413798475334569347

`lcm(A062140(A167614(n+2)), A098361(n))`
-/

namespace A062261.P6413798475334569347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062140 (A167614 (n + 2)).toNat) (A098361 n)

end

end A062261.P6413798475334569347

/-! ## A062261.P15778011953452919691

`A000580(n+7)*A173333(A167614(n+1))`
-/

namespace A062261.P15778011953452919691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A173333 (A167614 (n + 1)).toNat

end

end A062261.P15778011953452919691

/-!
# A062262: Fifth (unsigned) column sequence of triangle A062140 (generalized a=4 Laguerre).

The programs for A062262, there is no canonical definition to state claims against.
-/

/-! ## A062262.P14884809410119278924

`∏[n+4]/4*C(n+8, 8)`
-/

namespace A062262.P14884809410119278924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4 * (Nat.choose (n + 8) 8 : ℚ)

end

end A062262.P14884809410119278924

/-! ## A062262.P431933755024268841

`C(n+8, 8)*∏[3%(n+3)+n+1]`
-/

namespace A062262.P431933755024268841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (n + 3) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 8) 8 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A062262.P431933755024268841

/-! ## A062262.P1633051174207265939

`C(n+8, 8)*∏[gcd(2, (n+1)!)²+n]`
-/

namespace A062262.P1633051174207265939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.factorial (n + 1)) ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 8) 8 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A062262.P1633051174207265939

/-! ## A062262.P1150732187013453952

`n!*A105251(n)`
-/

namespace A062262.P1150732187013453952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A105251 n

end

end A062262.P1150732187013453952

/-! ## A062262.P15888280383408492759

`C(n+8, 8)*A001720(n+4)`
-/

namespace A062262.P15888280383408492759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 8 : ℤ) * A001720 (n + 4)

end

end A062262.P15888280383408492759

/-! ## A062262.P14188026265380117469

`A062140(eq[4, A002262(n)])`
-/

namespace A062262.P14188026265380117469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062140 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062262.P14188026265380117469

/-! ## A062262.P15108282972941414421

`A062140(eq[16, A059268(n)])`
-/

namespace A062262.P15108282972941414421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062140 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062262.P15108282972941414421

/-! ## A062262.P3246471545723044576

`A062140(A167614(n+3)+1)`
-/

namespace A062262.P3246471545723044576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062140 (A167614 (n + 3) + 1).toNat

end

end A062262.P3246471545723044576

/-! ## A062262.P4236479287962828646

`A062140(A055998(n+2)+7)`
-/

namespace A062262.P4236479287962828646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062140 (A055998 (n + 2) + 7).toNat

end

end A062262.P4236479287962828646

/-! ## A062262.P7097476118133906661

`A062140(A055999(n+1)+10)`
-/

namespace A062262.P7097476118133906661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062140 (A055999 (n + 1) + 10).toNat

end

end A062262.P7097476118133906661

/-!
# A062263: Sixth (unsigned) column of triangle A062140 (generalized a=4 Laguerre).

The programs for A062263, there is no canonical definition to state claims against.
-/

/-! ## A062263.P2307690718866415999

`n!*C(n+5, 5)*C(n+9, 9)`
-/

namespace A062263.P2307690718866415999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (n + 5) 5 * Nat.choose (n + 9) 9

end

end A062263.P2307690718866415999

/-! ## A062263.P1573311114349867309

`n!*A105252(n)`
-/

namespace A062263.P1573311114349867309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A105252 n

end

end A062263.P1573311114349867309

/-! ## A062263.P5578743632158646406

`C(n+9, 9)*A001725(n+5)`
-/

namespace A062263.P5578743632158646406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) * A001725 (n + 5)

end

end A062263.P5578743632158646406

/-! ## A062263.P1221874612479991376

`A000142(n)*A105252(n)`
-/

namespace A062263.P1221874612479991376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A105252 n

end

end A062263.P1221874612479991376

/-! ## A062263.P8731182104757303532

`∏[A028310(n)]*A105252(n)`
-/

namespace A062263.P8731182104757303532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A105252 n

end

end A062263.P8731182104757303532

/-! ## A062263.P6747071099256338804

`A081123(2*n)*A105252(n)`
-/

namespace A062263.P6747071099256338804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (2 * n) * A105252 n

end

end A062263.P6747071099256338804

/-! ## A062263.P8027302095996259823

`∑[∑[A000580(n+7)]]*A001725(n+5)`
-/

namespace A062263.P8027302095996259823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001725 (n + 5)

end

end A062263.P8027302095996259823

/-! ## A062263.P13476018182188372894

`A094587(A000124(n))*A105252(n)`
-/

namespace A062263.P13476018182188372894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A000124 n).toNat * A105252 n

end

end A062263.P13476018182188372894

/-! ## A062263.P949183107450215377

`A001725(n+5)/A000142(n)*A049398(n)`
-/

namespace A062263.P949183107450215377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001725 (n + 5) : ℚ) / (A000142 n : ℚ) * (A049398 n : ℚ)

end

end A062263.P949183107450215377

/-!
# A062264: Coefficient triangle of certain polynomials N(4; m,x).

The programs for A062264, the canonical program `A062264.P7481327833970405594` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062264 has offset 0).

The definition of A062264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9721 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062264.P7481327833970405594

`A007318(n)*A209518(lt[1, A007318(n+1)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A062264

/-- `A007318(n)*A209518(lt[1, A007318(n+1)])` -/
def P7481327833970405594.Spec : Prop :=
  ∀ n, P7481327833970405594.a n = A062264 n

theorem P7481327833970405594.correct : P7481327833970405594.Spec := by
  intro n
  simp only [A062264]

end A062264

/-! ## A062264.P7841912137795224133

`A007318(lt[3, A025581(n)])*A007318(n)`
-/

namespace A062264.P7841912137795224133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A007318 n

end

end A062264.P7841912137795224133

namespace A062264

/-- `A007318(lt[3, A025581(n)])*A007318(n)` -/
def P7841912137795224133.Spec : Prop :=
  ∀ n, P7841912137795224133.a n = A062264 n

end A062264

/-! ## A062264.P12503657472876772769

`(A275490(n+2)*A303484(n))%p?[A253412(n)]`
-/

namespace A062264.P12503657472876772769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275490 (n + 2) * A303484 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A062264.P12503657472876772769

namespace A062264

/-- `(A275490(n+2)*A303484(n))%p?[A253412(n)]` -/
def P12503657472876772769.Spec : Prop :=
  ∀ n, P12503657472876772769.a n = A062264 n

end A062264

/-! ## A062264.P10965968372008532266

`A275490(n+2)*A303484(n)*A340087(n!)`
-/

namespace A062264.P10965968372008532266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275490 (n + 2) * A303484 n * A340087 (Nat.factorial n)

end

end A062264.P10965968372008532266

namespace A062264

/-- `A275490(n+2)*A303484(n)*A340087(n!)` -/
def P10965968372008532266.Spec : Prop :=
  ∀ n, P10965968372008532266.a n = A062264 n

end A062264

/-!
# A062265: Row sums of signed triangle A062140 (generalized a=4 Laguerre).

The programs for A062265, the canonical program `A062265.P4682716995517165373` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062265 has offset 0).

The definition of A062265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062265.P4682716995517165373

`2*(n+1)*a(n-1)-(n-1)*(n+3)*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062265

/-- `2*(n+1)*a(n-1)-(n-1)*(n+3)*a(n-2)` -/
def P4682716995517165373.Spec : Prop :=
  ∀ n, P4682716995517165373.a n = A062265 n

theorem P4682716995517165373.correct : P4682716995517165373.Spec := by
  intro n
  simp only [A062265]

end A062265

/-! ## A062265.P13419173866138426580

`A062146(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A062265.P13419173866138426580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062146 n + (n : ℤ) * a (n - 1)

end

end A062265.P13419173866138426580

namespace A062265

/-- `A062146(n)+n*a(n-1)` -/
def P13419173866138426580.Spec : Prop :=
  ∀ n, P13419173866138426580.a n = A062265 n

end A062265

/-!
# A062266: Row sums of unsigned triangle A062140 (generalized a=4 Laguerre).

The programs for A062266, the canonical program `A062266.P16021700477051926453` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062266 has offset 0).

The definition of A062266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062266.P16021700477051926453

`2*(n+2)*a(n-1)-(n-1)*(n+3)*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062266

/-- `2*(n+2)*a(n-1)-(n-1)*(n+3)*a(n-2)` -/
def P16021700477051926453.Spec : Prop :=
  ∀ n, P16021700477051926453.a n = A062266 n

theorem P16021700477051926453.correct : P16021700477051926453.Spec := by
  intro n
  simp only [A062266]

end A062266

/-! ## A062266.P8927303296827711932

`A062147(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A062266.P8927303296827711932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062147 n + (n : ℤ) * a (n - 1)

end

end A062266.P8927303296827711932

namespace A062266

/-- `A062147(n)+n*a(n-1)` -/
def P8927303296827711932.Spec : Prop :=
  ∀ n, P8927303296827711932.a n = A062266 n

end A062266

/-! ## A062266.P773367563005822255

`A293985(Δ[A026054(n+3)])`
-/

namespace A062266.P773367563005822255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (f1 (n + 1) - f1 n).toNat

end

end A062266.P773367563005822255

namespace A062266

/-- `A293985(Δ[A026054(n+3)])` -/
def P773367563005822255.Spec : Prop :=
  ∀ n, P773367563005822255.a n = A062266 n

end A062266

/-! ## A062266.P17042540678290458563

`A176120(A000217(n+5)-5)`
-/

namespace A062266.P17042540678290458563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (A000217 (n + 5) - 5).toNat

end

end A062266.P17042540678290458563

namespace A062266

/-- `A176120(A000217(n+5)-5)` -/
def P17042540678290458563.Spec : Prop :=
  ∀ n, P17042540678290458563.a n = A062266 n

end A062266

/-! ## A062266.P16372741761579347197

`A293985(A055998(n+3)+n+3)`
-/

namespace A062266.P16372741761579347197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A055998 (n + 3) + (n + 3 : ℤ)).toNat

end

end A062266.P16372741761579347197

namespace A062266

/-- `A293985(A055998(n+3)+n+3)` -/
def P16372741761579347197.Spec : Prop :=
  ∀ n, P16372741761579347197.a n = A062266 n

end A062266

/-! ## A062266.P14868701665429795305

`A176120(A167614(n+2)+Δ[n²])`
-/

namespace A062266.P14868701665429795305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (A167614 (n + 2) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A062266.P14868701665429795305

namespace A062266

/-- `A176120(A167614(n+2)+Δ[n²])` -/
def P14868701665429795305.Spec : Prop :=
  ∀ n, P14868701665429795305.a n = A062266 n

end A062266

/-! ## A062266.P8153362905751224822

`A293985(A055999(n+2)+A020715(n))`
-/

namespace A062266.P8153362905751224822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A055999 (n + 2) + A020715 n).toNat

end

end A062266.P8153362905751224822

namespace A062266

/-- `A293985(A055999(n+2)+A020715(n))` -/
def P8153362905751224822.Spec : Prop :=
  ∀ n, P8153362905751224822.a n = A062266 n

end A062266

/-!
# A062267: Row sums of (signed) triangle A060821 (Hermite polynomials).

The programs for A062267, the canonical program `A062267.P14587891122031919640` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062267 has offset 0).

The definition of A062267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062267.P14587891122031919640

`2*(a(n-1)-(n-1)*a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062267

/-- `2*(a(n-1)-(n-1)*a(n-2))` -/
def P14587891122031919640.Spec : Prop :=
  ∀ n, P14587891122031919640.a n = A062267 n

theorem P14587891122031919640.correct : P14587891122031919640.Spec := by
  intro n
  simp only [A062267]

end A062267

/-! ## A062267.P6710067679921208971

`∏[2-2*(n-1)/a(n-1)]` with `a(0)=1`
-/

namespace A062267.P6710067679921208971
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - (2 * ((n : ℤ) - 1) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A062267.P6710067679921208971

namespace A062267

/-- `∏[2-2*(n-1)/a(n-1)]` -/
def P6710067679921208971.Spec : Prop :=
  ∀ n, P6710067679921208971.a n = (A062267 n : ℚ)

end A062267

/-! ## A062267.P14778378799278784282

`A122033(n+1)/2`
-/

namespace A062267.P14778378799278784282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122033 (n + 1) : ℚ) / 2

end

end A062267.P14778378799278784282

namespace A062267

/-- `A122033(n+1)/2` -/
def P14778378799278784282.Spec : Prop :=
  ∀ n, P14778378799278784282.a n = (A062267 n : ℚ)

end A062267

/-! ## A062267.P7688417020457107533

`2^floor(n/2)*A025165(n)`
-/

namespace A062267.P7688417020457107533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A025165 n : ℚ)

end

end A062267.P7688417020457107533

namespace A062267

/-- `2^floor(n/2)*A025165(n)` -/
def P7688417020457107533.Spec : Prop :=
  ∀ n, P7688417020457107533.a n = (A062267 n : ℚ)

end A062267

/-! ## A062267.P8636604237868569253

`A025165(n)*A200675(2*n)`
-/

namespace A062267.P8636604237868569253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025165 n * A200675 (2 * n)

end

end A062267.P8636604237868569253

namespace A062267

/-- `A025165(n)*A200675(2*n)` -/
def P8636604237868569253.Spec : Prop :=
  ∀ n, P8636604237868569253.a n = A062267 n

end A062267

/-!
# A062268: Numbers k such that floor(k*e) is a square.

The programs for A062268, there is no canonical definition to state claims against.
-/

/-! ## A062268.P7236882922141069390

`lt[A262678(floor(e*n)), 1]`
-/

namespace A062268.P7236882922141069390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262678 ⌊Real.exp 1 * (n : ℝ)⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062268.P7236882922141069390

/-! ## A062268.P2002076693968213577

`lt[A002828(floor(e*n)), 2]`
-/

namespace A062268.P2002076693968213577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 ⌊Real.exp 1 * (n : ℝ)⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062268.P2002076693968213577

/-! ## A062268.P9973939808219466511

`eq[A002828(A022843(n)), A057427(n)]`
-/

namespace A062268.P9973939808219466511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A022843 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062268.P9973939808219466511

/-! ## A062268.P18269208265355697980

`eq[0, A053188(A022843(n))]`
-/

namespace A062268.P18269208265355697980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A022843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062268.P18269208265355697980

/-!
# A062269: Numbers k such that floor(gamma * k) is a square, where gamma is the Euler-Mascheroni constant (A001620).

The programs for A062269, the canonical program `A062269.P6653936082748876429` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062269 has offset 0).

The definition of A062269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062269.P6653936082748876429

`eq[0, A053188(A038128(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062269

/-- `eq[0, A053188(A038128(n))]` -/
def P6653936082748876429.Spec : Prop :=
  ∀ n, (P6653936082748876429.a n : ℤ) = A062269 n

theorem P6653936082748876429.correct : P6653936082748876429.Spec := by
  intro n
  simp only [A062269]

end A062269

/-! ## A062269.P2870184867109056570

`eq[2, A000122(A000267(A008724(n)))]`
-/

namespace A062269.P2870184867109056570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000267 (A008724 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062269.P2870184867109056570

namespace A062269

/-- `eq[2, A000122(A000267(A008724(n)))]` -/
def P2870184867109056570.Spec : Prop :=
  ∀ n, (P2870184867109056570.a n : ℤ) = A062269 n

end A062269

/-!
# A062270: Numerators in partial products of the twin prime constant.

The programs for A062270, there is no canonical definition to state claims against.
-/

/-! ## A062270.P2289633621872678514

`A191996(n+2)`
-/

namespace A062270.P2289633621872678514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191996 (n + 2)

end

end A062270.P2289633621872678514

/-!
# A062271: Denominators in partial products of the twin prime constant.

The programs for A062271, there is no canonical definition to state claims against.
-/

/-! ## A062271.P17518852435394203428

`2*A191997(n+2)`
-/

namespace A062271.P17518852435394203428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191997 (n + 2)

end

end A062271.P17518852435394203428

/-! ## A062271.P2082216848151798359

`A177241(A151163(n+1))`
-/

namespace A062271.P2082216848151798359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177241 (A151163 (n + 1)).toNat

end

end A062271.P2082216848151798359

/-!
# A062272: Boustrophedon transform of (n+1) mod 2.

The programs for A062272, there is no canonical definition to state claims against.
-/

/-! ## A062272.P16643500003899755146

`(A000667(n)+A062162(n))/2`
-/

namespace A062272.P16643500003899755146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000667 n + A062162 n : ℚ) / 2

end

end A062272.P16643500003899755146

/-! ## A062272.P11432401818880261230

`A062162(n)+A062161(n)`
-/

namespace A062272.P11432401818880261230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062162 n + A062161 n

end

end A062272.P11432401818880261230

/-! ## A062272.P268844220357913374

`A000667(n)-A062161(n)`
-/

namespace A062272.P268844220357913374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000667 n - A062161 n

end

end A062272.P268844220357913374

/-! ## A062272.P14460378765502373509

`A062161(n)+abs(Δ[A009334(n)])`
-/

namespace A062272.P14460378765502373509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062161 n + |f1 (n + 1) - f1 n|

end

end A062272.P14460378765502373509

/-! ## A062272.P3749148556616154600

`A292975(A034856(n+1))-A062161(n)`
-/

namespace A062272.P3749148556616154600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A034856 (n + 1)).toNat - A062161 n

end

end A062272.P3749148556616154600

/-!
# A062274: Number of prime divisors (with repetition) of (n!)!, A000197.

The programs for A062274, there is no canonical definition to state claims against.
-/

/-! ## A062274.P12056408459024468088

`a(n!!)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=7, a(4)=45, a(5)=291`
-/

namespace A062274.P12056408459024468088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 7, 45, 291] fun n a =>
  a (Nat.factorial (Nat.factorial n))

end

end A062274.P12056408459024468088

/-! ## A062274.P1060662465175439742

`A022559(n!)`
-/

namespace A062274.P1060662465175439742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (Nat.factorial n)

end

end A062274.P1060662465175439742

/-! ## A062274.P4159301584402140699

`A022559(∏[round(1/acot(n))])`
-/

namespace A062274.P4159301584402140699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062274.P4159301584402140699

/-! ## A062274.P1694656480710149800

`A022559(∏[ceil(abs(γ-n))])`
-/

namespace A062274.P1694656480710149800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062274.P1694656480710149800

/-! ## A062274.P8468682140158815532

`and(-1, A022559(-∏[n-C(2, n+2)]))`
-/

namespace A062274.P8468682140158815532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A022559 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A062274.P8468682140158815532

/-!
# A062275: Array A(n, k) = n^k * k^n, n, k >= 0, read by antidiagonals.

The programs for A062275, the canonical program `A062275.P1482484100513315619` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062275 has offset 0).

The definition of A062275 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003992, A004248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062275.P1482484100513315619

`A003992(n)*A004248(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062275

/-- `A003992(n)*A004248(n)` -/
def P1482484100513315619.Spec : Prop :=
  ∀ n, P1482484100513315619.a n = A062275 n

theorem P1482484100513315619.correct : P1482484100513315619.Spec := by
  intro n
  simp only [A062275]

end A062275

/-! ## A062275.P7465034496965929239

`A003992(n)*A003992(A061579(n))`
-/

namespace A062275.P7465034496965929239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n * A003992 (A061579 n).toNat

end

end A062275.P7465034496965929239

namespace A062275

/-- `A003992(n)*A003992(A061579(n))` -/
def P7465034496965929239.Spec : Prop :=
  ∀ n, P7465034496965929239.a n = A062275 n

end A062275

/-! ## A062275.P3146314971122517515

`A004248(n)*A004248(A061579(n))`
-/

namespace A062275.P3146314971122517515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A004248 (A061579 n).toNat

end

end A062275.P3146314971122517515

namespace A062275

/-- `A004248(n)*A004248(A061579(n))` -/
def P3146314971122517515.Spec : Prop :=
  ∀ n, P3146314971122517515.a n = A062275 n

end A062275

/-! ## A062275.P3170230115021541733

`A003992(A038722(n+2))*A003992(n)`
-/

namespace A062275.P3170230115021541733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (A038722 (n + 2)).toNat * A003992 n

end

end A062275.P3170230115021541733

namespace A062275

/-- `A003992(A038722(n+2))*A003992(n)` -/
def P3170230115021541733.Spec : Prop :=
  ∀ n, P3170230115021541733.a n = A062275 n

end A062275

/-! ## A062275.P2355643908941576443

`(A055651(n)+A004248(n))*A004248(n)`
-/

namespace A062275.P2355643908941576443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055651 n + A004248 n) * A004248 n

end

end A062275.P2355643908941576443

namespace A062275

/-- `(A055651(n)+A004248(n))*A004248(n)` -/
def P2355643908941576443.Spec : Prop :=
  ∀ n, P2355643908941576443.a n = A062275 n

end A062275

/-! ## A062275.P4674540361057285277

`(A003992(n)-A055651(n))*A003992(n)`
-/

namespace A062275.P4674540361057285277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003992 n - A055651 n) * A003992 n

end

end A062275.P4674540361057285277

namespace A062275

/-- `(A003992(n)-A055651(n))*A003992(n)` -/
def P4674540361057285277.Spec : Prop :=
  ∀ n, P4674540361057285277.a n = A062275 n

end A062275

/-! ## A062275.P15483385579013242181

`(A055652(n)-A003992(n))*A003992(n)`
-/

namespace A062275.P15483385579013242181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055652 n - A003992 n) * A003992 n

end

end A062275.P15483385579013242181

namespace A062275

/-- `(A055652(n)-A003992(n))*A003992(n)` -/
def P15483385579013242181.Spec : Prop :=
  ∀ n, P15483385579013242181.a n = A062275 n

end A062275

/-! ## A062275.P13550529719757034460

`(A055652(n)-A004248(n))*A004248(n)`
-/

namespace A062275.P13550529719757034460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055652 n - A004248 n) * A004248 n

end

end A062275.P13550529719757034460

namespace A062275

/-- `(A055652(n)-A004248(n))*A004248(n)` -/
def P13550529719757034460.Spec : Prop :=
  ∀ n, P13550529719757034460.a n = A062275 n

end A062275

/-! ## A062275.P11500584229975801522

`A004248(A038722(n+1)-1)*A004248(n)`
-/

namespace A062275.P11500584229975801522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A038722 (n + 1) - 1).toNat * A004248 n

end

end A062275.P11500584229975801522

namespace A062275

/-- `A004248(A038722(n+1)-1)*A004248(n)` -/
def P11500584229975801522.Spec : Prop :=
  ∀ n, P11500584229975801522.a n = A062275 n

end A062275

/-!
# A062276: a(n) = floor(n^(n+1) / (n+1)^n).

The programs for A062276, the canonical program `A062276.P14062172987696455111` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062276 has offset 0).

The definition of A062276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062276.P7371357862625032848

`floor(sqrt(∑[2*n])/e)`
-/

namespace A062276.P7371357862625032848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.exp 1⌋

end

end A062276.P7371357862625032848

namespace A062276

/-- `floor(sqrt(∑[2*n])/e)` -/
def P7371357862625032848.Spec : Prop :=
  ∀ n, P7371357862625032848.a n = A062276 n

end A062276

/-! ## A062276.P5472412297122431965

`ceil((n+1)/exp(sqrt(acot(n)+1)))-1`
-/

namespace A062276.P5472412297122431965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.exp (Real.sqrt (SequenceMachineLib.acot (n : ℝ) + 1))⌉ - 1

end

end A062276.P5472412297122431965

namespace A062276

/-- `ceil((n+1)/exp(sqrt(acot(n)+1)))-1` -/
def P5472412297122431965.Spec : Prop :=
  ∀ n, P5472412297122431965.a n = A062276 n

end A062276

/-! ## A062276.P14062172987696455111

`n%floor(n+1-n*(n/(n+1))^n)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062276

/-- `n%floor(n+1-n*(n/(n+1))^n)` -/
def P14062172987696455111.Spec : Prop :=
  ∀ n, P14062172987696455111.a n = A062276 n

theorem P14062172987696455111.correct : P14062172987696455111.Spec := by
  intro n
  simp only [A062276]

end A062276

/-! ## A062276.P80401081141989811

`∑[char[A022852(n+1)]]`
-/

namespace A062276.P80401081141989811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022852 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062276.P80401081141989811

namespace A062276

/-- `∑[char[A022852(n+1)]]` -/
def P80401081141989811.Spec : Prop :=
  ∀ n, (P80401081141989811.a n : ℤ) = A062276 n

end A062276

/-! ## A062276.P16073341782034319803

`∑[char[A022852(n)]]-1`
-/

namespace A062276.P16073341782034319803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022852 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A062276.P16073341782034319803

namespace A062276

/-- `∑[char[A022852(n)]]-1` -/
def P16073341782034319803.Spec : Prop :=
  ∀ n, P16073341782034319803.a n = A062276 n

end A062276

/-! ## A062276.P6485950662036021749

`A004526(A032634(2*n+1))`
-/

namespace A062276.P6485950662036021749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A032634 (2 * n + 1)).toNat

end

end A062276.P6485950662036021749

namespace A062276

/-- `A004526(A032634(2*n+1))` -/
def P6485950662036021749.Spec : Prop :=
  ∀ n, P6485950662036021749.a n = A062276 n

end A062276

/-! ## A062276.P13552367700790697659

`A002265(2*A032634(2*n+1))`
-/

namespace A062276.P13552367700790697659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A032634 (2 * n + 1)).toNat

end

end A062276.P13552367700790697659

namespace A062276

/-- `A002265(2*A032634(2*n+1))` -/
def P13552367700790697659.Spec : Prop :=
  ∀ n, P13552367700790697659.a n = A062276 n

end A062276

/-! ## A062276.P6147978838697990528

`A002264(A032634(2*n+1)+A032634(n+1))`
-/

namespace A062276.P6147978838697990528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A032634 (2 * n + 1) + A032634 (n + 1)).toNat

end

end A062276.P6147978838697990528

namespace A062276

/-- `A002264(A032634(2*n+1)+A032634(n+1))` -/
def P6147978838697990528.Spec : Prop :=
  ∀ n, P6147978838697990528.a n = A062276 n

end A062276

/-! ## A062276.P1975637256670297592

`A065033(A006594(2*n+1))-(n+1)`
-/

namespace A062276.P1975637256670297592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A006594 (2 * n + 1)).toNat - (n + 1 : ℤ)

end

end A062276.P1975637256670297592

namespace A062276

/-- `A065033(A006594(2*n+1))-(n+1)` -/
def P1975637256670297592.Spec : Prop :=
  ∀ n, P1975637256670297592.a n = A062276 n

end A062276

/-! ## A062276.P5666775219660537848

`A028310(n)-A209081(n+1)`
-/

namespace A062276.P5666775219660537848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A209081 (n + 1)

end

end A062276.P5666775219660537848

namespace A062276

/-- `A028310(n)-A209081(n+1)` -/
def P5666775219660537848.Spec : Prop :=
  ∀ n, P5666775219660537848.a n = A062276 n

end A062276

/-!
# A062277: a(n) = floor(e^n / n^e).

The programs for A062277, the canonical program `A062277.P11362201675275334104` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062277 has offset 1).

The definition of A062277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(e^(n+1)/(n+1)^e)` (program `A062277.P11362201675275334104`, by `A062277.P11362201675275334104.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062277.P11362201675275334104

`floor(e^(n+1)/(n+1)^e)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062277

/-- `floor(e^(n+1)/(n+1)^e)` -/
def P11362201675275334104.Spec : Prop :=
  ∀ n, P11362201675275334104.a n = A062277 (n + 1)

theorem P11362201675275334104.correct : P11362201675275334104.Spec := by
  intro n
  simp only [A062277, Nat.add_sub_cancel]

end A062277

/-! ## A062277.P7369277744141602447

`A342762(n)+A000007(n^4)`
-/

namespace A062277.P7369277744141602447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342762 n + A000007 (n ^ 4)

end

end A062277.P7369277744141602447

namespace A062277

/-- `A342762(n)+A000007(n^4)` -/
def P7369277744141602447.Spec : Prop :=
  ∀ n, P7369277744141602447.a n = A062277 (n + 1)

end A062277

/-! ## A062277.P4332727108705062783

`A117173(A001612(n))+A047999(n)`
-/

namespace A062277.P4332727108705062783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117173 (A001612 n).toNat + A047999 n

end

end A062277.P4332727108705062783

namespace A062277

/-- `A117173(A001612(n))+A047999(n)` -/
def P4332727108705062783.Spec : Prop :=
  ∀ n, P4332727108705062783.a n = A062277 (n + 1)

end A062277

/-! ## A062277.P16120712385346611390

`A342762(n)+A008683(A304940(n))`
-/

namespace A062277.P16120712385346611390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342762 n + A008683 (A304940 n).toNat

end

end A062277.P16120712385346611390

namespace A062277

/-- `A342762(n)+A008683(A304940(n))` -/
def P16120712385346611390.Spec : Prop :=
  ∀ n, P16120712385346611390.a n = A062277 (n + 1)

end A062277

/-! ## A062277.P14058532589311467627

`A358777(A363441(n))+A342762(n)`
-/

namespace A062277.P14058532589311467627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358777 (A363441 n).toNat + A342762 n

end

end A062277.P14058532589311467627

namespace A062277

/-- `A358777(A363441(n))+A342762(n)` -/
def P14058532589311467627.Spec : Prop :=
  ∀ n, P14058532589311467627.a n = A062277 (n + 1)

end A062277

/-!
# A062278: a(n) = floor(3^n / n^3).

The programs for A062278, the canonical program `A062278.P2503660228534661179` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062278 has offset 1).

The definition of A062278 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3^(n+1)/(n+1)^3)` (program `A062278.P2503660228534661179`, by `A062278.P2503660228534661179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062278.P2503660228534661179

`floor(3^(n+1)/(n+1)^3)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062278

/-- `floor(3^(n+1)/(n+1)^3)` -/
def P2503660228534661179.Spec : Prop :=
  ∀ n, P2503660228534661179.a n = A062278 (n + 1)

theorem P2503660228534661179.correct : P2503660228534661179.Spec := by
  intro n
  simp only [A062278, Nat.add_sub_cancel]

end A062278

/-! ## A062278.P3910647664519018231

`A062283(∑[n+2]+4)`
-/

namespace A062278.P3910647664519018231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062283 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A062278.P3910647664519018231

namespace A062278

/-- `A062283(∑[n+2]+4)` -/
def P3910647664519018231.Spec : Prop :=
  ∀ n, P3910647664519018231.a n = A062278 (n + 1)

end A062278

/-! ## A062278.P13916115666288661319

`A062283(A167614(n+1))+A000035(2*n)`
-/

namespace A062278.P13916115666288661319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062283 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A062278.P13916115666288661319

namespace A062278

/-- `A062283(A167614(n+1))+A000035(2*n)` -/
def P13916115666288661319.Spec : Prop :=
  ∀ n, P13916115666288661319.a n = A062278 (n + 1)

end A062278

/-! ## A062278.P2523389158357525198

`A062283(A167614(n+1))*A257993(2*n+3)`
-/

namespace A062278.P2523389158357525198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062283 (A167614 (n + 1)).toNat * A257993 (2 * n + 3)

end

end A062278.P2523389158357525198

namespace A062278

/-- `A062283(A167614(n+1))*A257993(2*n+3)` -/
def P2523389158357525198.Spec : Prop :=
  ∀ n, P2523389158357525198.a n = A062278 (n + 1)

end A062278

/-! ## A062278.P13791673885158971760

`A062283(A167614(n+1))%A001933(n+4)`
-/

namespace A062278.P13791673885158971760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062283 (A167614 (n + 1)).toNat) (A001933 (n + 4))

end

end A062278.P13791673885158971760

namespace A062278

/-- `A062283(A167614(n+1))%A001933(n+4)` -/
def P13791673885158971760.Spec : Prop :=
  ∀ n, P13791673885158971760.a n = A062278 (n + 1)

end A062278

/-!
# A062279: Smallest multiple k*n of n which is a palindrome or becomes a palindrome when 0's are added on the left (e.g. 10 becomes 010 which is a palindrome).

The programs for A062279, there is no canonical definition to state claims against.
-/

/-! ## A062279.P8233464643266608081

`n*A061674(n)`
-/

namespace A062279.P8233464643266608081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061674 n

end

end A062279.P8233464643266608081

/-! ## A062279.P8160695652516269494

`lcm(A061674(n), A241173(A241174(n)))`
-/

namespace A062279.P8160695652516269494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061674 n) (A241173 (A241174 n).toNat)

end

end A062279.P8160695652516269494

/-! ## A062279.P17713192310583267015

`∑{d}[A011782(n), A061674(n)%(A046092(n)+#)]`
-/

namespace A062279.P17713192310583267015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A061674 n) (A046092 n + (d : ℤ))

end

end A062279.P17713192310583267015

/-! ## A062279.P8143218009804750719

`lcm(n, gcd(A061674(n), A205295(n)))`
-/

namespace A062279.P8143218009804750719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Int.gcd (A061674 n) (A205295 n))

end

end A062279.P8143218009804750719

/-! ## A062279.P3188200944546477449

`n*A153289(A036600(n))`
-/

namespace A062279.P3188200944546477449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A153289 (A036600 n).toNat

end

end A062279.P3188200944546477449

/-!
# A062280: a(1) = 1; a(n) = smallest multiple of n-th prime (n>1) with all odd digits.

The programs for A062280, there is no canonical definition to state claims against.
-/

/-! ## A062280.P16487802030816314123

`A061808(A111333(n+1))`
-/

namespace A062280.P16487802030816314123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061808 (A111333 (n + 1)).toNat

end

end A062280.P16487802030816314123

/-! ## A062280.P16007096339639437217

`A061808(A102781(n+1)+1)`
-/

namespace A062280.P16007096339639437217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061808 (A102781 (n + 1) + 1).toNat

end

end A062280.P16007096339639437217

/-! ## A062280.P318334586931678211

`A061808(record[A020639(2*n+1)-n])`
-/

namespace A062280.P318334586931678211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062280.P318334586931678211

/-! ## A062280.P16680655921251297249

`A061808(lt[A001222(2*n+1), 2]+1)`
-/

namespace A062280.P16680655921251297249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061808 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A062280.P16680655921251297249

/-! ## A062280.P14974852927662413354

`A061808(floor(record[A000010(n+1)]/2)+1)`
-/

namespace A062280.P14974852927662413354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061808 (⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌋ + 1).toNat

end

end A062280.P14974852927662413354

/-! ## A062280.P7908438339629629796

`A061808(record[A104512(n+1)+1])`
-/

namespace A062280.P7908438339629629796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104512 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062280.P7908438339629629796

/-! ## A062280.P9034720914591315429

`A061808(record[abs(A349134(n+1))])`
-/

namespace A062280.P9034720914591315429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349134 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062280.P9034720914591315429

/-! ## A062280.P5255799601450557244

`A061808(record[A003960(n+1)])`
-/

namespace A062280.P5255799601450557244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062280.P5255799601450557244

/-! ## A062280.P15830399363056297887

`A061808(record[A057022(n+1)])`
-/

namespace A062280.P15830399363056297887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062280.P15830399363056297887

/-!
# A062281: Smallest multiple of n-th prime with all even digits.

The programs for A062281, there is no canonical definition to state claims against.
-/

/-! ## A062281.P12811848156761898359

`A061807(p?[comp[n²]])`
-/

namespace A062281.P12811848156761898359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061807 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A062281.P12811848156761898359

/-! ## A062281.P16514808962563987361

`A061807(A000040(n+1))`
-/

namespace A062281.P16514808962563987361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061807 (A000040 (n + 1)).toNat

end

end A062281.P16514808962563987361

/-! ## A062281.P4717776317450045287

`A061807(A006005(n+1))`
-/

namespace A062281.P4717776317450045287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061807 (A006005 (n + 1)).toNat

end

end A062281.P4717776317450045287

/-! ## A062281.P6885266694929359991

`A061807(A008578(n+2))`
-/

namespace A062281.P6885266694929359991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061807 (A008578 (n + 2)).toNat

end

end A062281.P6885266694929359991

/-! ## A062281.P11855252979901726337

`A061807(A075643(n+2))`
-/

namespace A062281.P11855252979901726337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061807 (A075643 (n + 2)).toNat

end

end A062281.P11855252979901726337

/-! ## A062281.P11371698076457548112

`A061807(A182986(n+2))`
-/

namespace A062281.P11371698076457548112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061807 (A182986 (n + 2)).toNat

end

end A062281.P11371698076457548112

/-! ## A062281.P14754845927308422097

`A061807(record[A006530(n+2)])`
-/

namespace A062281.P14754845927308422097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061807 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062281.P14754845927308422097

/-! ## A062281.P5005913019751988016

`A061807(record[A014963(n+2)])`
-/

namespace A062281.P5005913019751988016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061807 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062281.P5005913019751988016

/-! ## A062281.P5064878699702401226

`A061807(record[A020639(n+2)])`
-/

namespace A062281.P5064878699702401226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061807 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062281.P5064878699702401226

/-! ## A062281.P16536437193641138475

`A061807(A077017(n+2)/2)`
-/

namespace A062281.P16536437193641138475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061807 (SequenceMachineLib.roundAway ((A077017 (n + 2) : ℚ) / 2)).toNat

end

end A062281.P16536437193641138475

/-! ## A062281.P279756537474243002

`A350538(record[A006530(2*n+1)])`
-/

namespace A062281.P279756537474243002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350538 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062281.P279756537474243002

/-! ## A062281.P5408891800388669388

`A350538(record[A014963(2*n+1)])`
-/

namespace A062281.P5408891800388669388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350538 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062281.P5408891800388669388

/-! ## A062281.P4653916718698331872

`A350538(record[A020639(2*n+1)])`
-/

namespace A062281.P4653916718698331872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350538 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062281.P4653916718698331872

/-! ## A062281.P12326856581896032470

`A061807(A077017(n+2))`
-/

namespace A062281.P12326856581896032470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061807 (A077017 (n + 2)).toNat

end

end A062281.P12326856581896032470

/-!
# A062282: Number of permutations of n elements with an even number of fixed points.

The programs for A062282, there is no canonical definition to state claims against.
-/

/-! ## A062282.P16669182670100136782

`n*a(n-1)-(-2)^(n-1)` with `a(0)=1`
-/

namespace A062282.P16669182670100136782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * a (n - 1) - (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A062282.P16669182670100136782

/-! ## A062282.P6253141694802130189

`A063083(n)+A000023(n)`
-/

namespace A062282.P6253141694802130189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063083 n + A000023 n

end

end A062282.P6253141694802130189

/-! ## A062282.P10835547833290801488

`A088336(n)+A088506(n)-A063083(n)`
-/

namespace A062282.P10835547833290801488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088336 n + (A088506 n - A063083 n)

end

end A062282.P10835547833290801488

/-! ## A062282.P7472823417393247909

`A000142(n)-A063083(n)`
-/

namespace A062282.P7472823417393247909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A063083 n

end

end A062282.P7472823417393247909

/-! ## A062282.P9842915798013323210

`A028421(∑[n])-A063083(n)`
-/

namespace A062282.P9842915798013323210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (∑ j ∈ Finset.range (n + 1), f1 j) - A063083 n

end

end A062282.P9842915798013323210

/-! ## A062282.P17062171617949631030

`A123361(∑[n])-A063083(n)`
-/

namespace A062282.P17062171617949631030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123361 (∑ j ∈ Finset.range (n + 1), f1 j) - A063083 n

end

end A062282.P17062171617949631030

/-! ## A062282.P15234017565158567259

`Δ[A003422(n)]-A063083(n)`
-/

namespace A062282.P15234017565158567259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A063083 n

end

end A062282.P15234017565158567259

/-! ## A062282.P8686921690909278122

`A047920(A000217(n))-A063083(n)`
-/

namespace A062282.P8686921690909278122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000217 n).toNat - A063083 n

end

end A062282.P8686921690909278122

/-!
# A062283: Square array read by descending antidiagonals: T(n,k) = floor(n^k/k^n).

The programs for A062283, the canonical program `A062283.P13738707114894275720` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062283 has offset 1).

The definition of A062283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4677 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062283.P13738707114894275720

`floor(A060155(n+1)/A009999(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A062283

/-- `floor(A060155(n+1)/A009999(n))` -/
def P13738707114894275720.Spec : Prop :=
  ∀ n, P13738707114894275720.a n = A062283 (n + 1)

theorem P13738707114894275720.correct : P13738707114894275720.Spec := by
  intro n
  simp only [A062283, Nat.add_sub_cancel]

end A062283

/-! ## A062283.P15483987236720930169

`floor(A051129(n+1)/A051128(n+1))`
-/

namespace A062283.P15483987236720930169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051129 (n + 1) : ℚ) / (A051128 (n + 1) : ℚ)⌋

end

end A062283.P15483987236720930169

namespace A062283

/-- `floor(A051129(n+1)/A051128(n+1))` -/
def P15483987236720930169.Spec : Prop :=
  ∀ n, P15483987236720930169.a n = A062283 (n + 1)

end A062283

/-! ## A062283.P14608087633816971725

`floor(A009998(A007401(n+1))/A051128(n+1))`
-/

namespace A062283.P14608087633816971725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A009998 (A007401 (n + 1)).toNat : ℚ) / (A051128 (n + 1) : ℚ)⌋

end

end A062283.P14608087633816971725

namespace A062283

/-- `floor(A009998(A007401(n+1))/A051128(n+1))` -/
def P14608087633816971725.Spec : Prop :=
  ∀ n, P14608087633816971725.a n = A062283 (n + 1)

end A062283

/-! ## A062283.P10862424078440225191

`floor(A051129(n+1)/A009999(A014132(n+1)))`
-/

namespace A062283.P10862424078440225191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051129 (n + 1) : ℚ) / (A009999 (A014132 (n + 1)).toNat : ℚ)⌋

end

end A062283.P10862424078440225191

namespace A062283

/-- `floor(A051129(n+1)/A009999(A014132(n+1)))` -/
def P10862424078440225191.Spec : Prop :=
  ∀ n, P10862424078440225191.a n = A062283 (n + 1)

end A062283

/-! ## A062283.P6988658332303864166

`floor(A002260(n+1)*A009998(n)/A051128(n+1))`
-/

namespace A062283.P6988658332303864166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) * A009998 n : ℚ) / (A051128 (n + 1) : ℚ)⌋

end

end A062283.P6988658332303864166

namespace A062283

/-- `floor(A002260(n+1)*A009998(n)/A051128(n+1))` -/
def P6988658332303864166.Spec : Prop :=
  ∀ n, P6988658332303864166.a n = A062283 (n + 1)

end A062283

/-! ## A062283.P3394395797392591166

`floor(A004248(2*A080036(n)-n)/A051128(n+1))`
-/

namespace A062283.P3394395797392591166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004248 (2 * A080036 n - (n : ℤ)).toNat : ℚ) / (A051128 (n + 1) : ℚ)⌋

end

end A062283.P3394395797392591166

namespace A062283

/-- `floor(A004248(2*A080036(n)-n)/A051128(n+1))` -/
def P3394395797392591166.Spec : Prop :=
  ∀ n, P3394395797392591166.a n = A062283 (n + 1)

end A062283

/-! ## A062283.P10199226121858615102

`floor(A057555(2*n+1)^A004736(n+1)/A051128(n+1))`
-/

namespace A062283.P10199226121858615102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057555 (2 * n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ) / (A051128 (n + 1) : ℚ)⌋

end

end A062283.P10199226121858615102

namespace A062283

/-- `floor(A057555(2*n+1)^A004736(n+1)/A051128(n+1))` -/
def P10199226121858615102.Spec : Prop :=
  ∀ n, P10199226121858615102.a n = A062283 (n + 1)

end A062283

/-! ## A062283.P16294467307247510689

`floor(A051128(A038722(n+1))/A051128(n+1))`
-/

namespace A062283.P16294467307247510689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051128 (A038722 (n + 1)).toNat : ℚ) / (A051128 (n + 1) : ℚ)⌋

end

end A062283.P16294467307247510689

namespace A062283

/-- `floor(A051128(A038722(n+1))/A051128(n+1))` -/
def P16294467307247510689.Spec : Prop :=
  ∀ n, P16294467307247510689.a n = A062283 (n + 1)

end A062283

/-! ## A062283.P14997730926224875877

`floor(A051129(n+1)/A051129(A038722(n+1)))`
-/

namespace A062283.P14997730926224875877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051129 (n + 1) : ℚ) / (A051129 (A038722 (n + 1)).toNat : ℚ)⌋

end

end A062283.P14997730926224875877

namespace A062283

/-- `floor(A051129(n+1)/A051129(A038722(n+1)))` -/
def P14997730926224875877.Spec : Prop :=
  ∀ n, P14997730926224875877.a n = A062283 (n + 1)

end A062283

/-! ## A062283.P8689410922938078142

`floor(A009999(A099375(n)+1+n)/A051128(n+1))`
-/

namespace A062283.P8689410922938078142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A009999 (A099375 n + 1 + (n : ℤ)).toNat : ℚ) / (A051128 (n + 1) : ℚ)⌋

end

end A062283.P8689410922938078142

namespace A062283

/-- `floor(A009999(A099375(n)+1+n)/A051128(n+1))` -/
def P8689410922938078142.Spec : Prop :=
  ∀ n, P8689410922938078142.a n = A062283 (n + 1)

end A062283

/-!
# A062284: Primes p such that p + 50 is also prime.

The programs for A062284, the canonical program `A062284.P17247942179405604773` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062284 has offset 1).

The definition of A062284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062284.P17247942179405604773

`A000040(A062288(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A062284

/-- `A000040(A062288(n+1))` -/
def P17247942179405604773.Spec : Prop :=
  ∀ n, P17247942179405604773.a n = A062284 (n + 1)

theorem P17247942179405604773.correct : P17247942179405604773.Spec := by
  intro n
  simp only [A062284, Nat.add_sub_cancel]

end A062284

/-! ## A062284.P2656425547438086369

`A008864(A062288(n+1))-A054977(n+1)`
-/

namespace A062284.P2656425547438086369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A062288 (n + 1)).toNat - A054977 (n + 1)

end

end A062284.P2656425547438086369

namespace A062284

/-- `A008864(A062288(n+1))-A054977(n+1)` -/
def P2656425547438086369.Spec : Prop :=
  ∀ n, P2656425547438086369.a n = A062284 (n + 1)

end A062284

/-! ## A062284.P9945468920074584550

`A033999(2*n+3)+A008864(A062288(n+1))`
-/

namespace A062284.P9945468920074584550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 3) + A008864 (A062288 (n + 1)).toNat

end

end A062284.P9945468920074584550

namespace A062284

/-- `A033999(2*n+3)+A008864(A062288(n+1))` -/
def P9945468920074584550.Spec : Prop :=
  ∀ n, P9945468920074584550.a n = A062284 (n + 1)

end A062284

/-! ## A062284.P12166994847153840117

`p?[p?[2*n+1]-50]`
-/

namespace A062284.P12166994847153840117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062284.P12166994847153840117

namespace A062284

/-- `p?[p?[2*n+1]-50]` -/
def P12166994847153840117.Spec : Prop :=
  ∀ n, P12166994847153840117.a n = A062284 (n + 1)

end A062284

/-! ## A062284.P1380184841198548229

`p?[A040976(n+1)-48]`
-/

namespace A062284.P1380184841198548229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 48

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062284.P1380184841198548229

namespace A062284

/-- `p?[A040976(n+1)-48]` -/
def P1380184841198548229.Spec : Prop :=
  ∀ n, P1380184841198548229.a n = A062284 (n + 1)

end A062284

/-! ## A062284.P6934029671980375294

`p?[A006093(n+1)-49]`
-/

namespace A062284.P6934029671980375294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062284.P6934029671980375294

namespace A062284

/-- `p?[A006093(n+1)-49]` -/
def P6934029671980375294.Spec : Prop :=
  ∀ n, P6934029671980375294.a n = A062284 (n + 1)

end A062284

/-! ## A062284.P2871453507742099868

`p?[A000040(n+1)-50]`
-/

namespace A062284.P2871453507742099868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062284.P2871453507742099868

namespace A062284

/-- `p?[A000040(n+1)-50]` -/
def P2871453507742099868.Spec : Prop :=
  ∀ n, P2871453507742099868.a n = A062284 (n + 1)

end A062284

/-! ## A062284.P8547013185325194278

`p?[record[A006530(n+2)]-50]`
-/

namespace A062284.P8547013185325194278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062284.P8547013185325194278

namespace A062284

/-- `p?[record[A006530(n+2)]-50]` -/
def P8547013185325194278.Spec : Prop :=
  ∀ n, P8547013185325194278.a n = A062284 (n + 1)

end A062284

/-! ## A062284.P8974348430209018740

`p?[record[A020639(n+2)]-50]`
-/

namespace A062284.P8974348430209018740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062284.P8974348430209018740

namespace A062284

/-- `p?[record[A020639(n+2)]-50]` -/
def P8974348430209018740.Spec : Prop :=
  ∀ n, P8974348430209018740.a n = A062284 (n + 1)

end A062284

/-! ## A062284.P17728525004279606581

`p?[A225648(n+1)-50]`
-/

namespace A062284.P17728525004279606581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225648 (n + 1) - 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062284.P17728525004279606581

namespace A062284

/-- `p?[A225648(n+1)-50]` -/
def P17728525004279606581.Spec : Prop :=
  ∀ n, P17728525004279606581.a n = A062284 (n + 1)

end A062284

/-! ## A062284.P3595645231956834304

`p?[record[A014963(n+2)]-50]`
-/

namespace A062284.P3595645231956834304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062284.P3595645231956834304

namespace A062284

/-- `p?[record[A014963(n+2)]-50]` -/
def P3595645231956834304.Spec : Prop :=
  ∀ n, P3595645231956834304.a n = A062284 (n + 1)

end A062284

/-! ## A062284.P4438280839474133515

`record[p?[n%A014963(n+50)]]`
-/

namespace A062284.P4438280839474133515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A014963 (n + 50))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062284.P4438280839474133515

namespace A062284

/-- `record[p?[n%A014963(n+50)]]` -/
def P4438280839474133515.Spec : Prop :=
  ∀ n, P4438280839474133515.a n = A062284 (n + 1)

end A062284

/-! ## A062284.P11181528898080392238

`p?[n-A319966(A283463(n+1))²]`
-/

namespace A062284.P11181528898080392238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A319966 (A283463 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062284.P11181528898080392238

namespace A062284

/-- `p?[n-A319966(A283463(n+1))²]` -/
def P11181528898080392238.Spec : Prop :=
  ∀ n, P11181528898080392238.a n = A062284 (n + 1)

end A062284

/-!
# A062285: Numbers with the most significant digit even and alternating parity of digits.

The programs for A062285, there is no canonical definition to state claims against.
-/

/-! ## A062285.P6144338429218649259

`xor(1, record[xor(1, A098951(n+1))])`
-/

namespace A062285.P6144338429218649259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A098951 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A062285.P6144338429218649259

/-! ## A062285.P10652301401259998512

`record[floor(A098951(n+1)/10)]`
-/

namespace A062285.P10652301401259998512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098951 (n + 1) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062285.P10652301401259998512

/-! ## A062285.P17465295092241053642

`eq[A000030(n), A001613(A003100(n))]`
-/

namespace A062285.P17465295092241053642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A003100 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062285.P17465295092241053642

/-! ## A062285.P16685383004414954879

`eq[A028920(A004086(n)), A228710(n)]`
-/

namespace A062285.P16685383004414954879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062285.P16685383004414954879

/-! ## A062285.P4666001192428248165

`A004442(record[A004442(A098951(n+1))])`
-/

namespace A062285.P4666001192428248165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A098951 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062285.P4666001192428248165

/-! ## A062285.P14764024944732710601

`A306436(record[A306436(n*A228710(n))])`
-/

namespace A062285.P14764024944732710601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306436 ((n : ℤ) * A228710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306436 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062285.P14764024944732710601

/-! ## A062285.P2450424464133578089

`A228723(record[A098951(n+1)-A000035(n)])`
-/

namespace A062285.P2450424464133578089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098951 (n + 1) - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062285.P2450424464133578089

/-! ## A062285.P233448289318136890

`filter[A273892(n+1), A228710(#)]`
-/

namespace A062285.P233448289318136890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A062285.P233448289318136890

/-! ## A062285.P12153909147984828676

`∩[A030141(n+1), A273892(n+1)]`
-/

namespace A062285.P12153909147984828676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062285.P12153909147984828676

/-! ## A062285.P8754953290710957193

`filter[A355504(2*n+1), A228710(#)]`
-/

namespace A062285.P8754953290710957193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355504 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A062285.P8754953290710957193

/-!
# A062287: Palindromic numbers with even digits.

The programs for A062287, there is no canonical definition to state claims against.
-/

/-! ## A062287.P9559591687233014382

`2*A118596(n+1)`
-/

namespace A062287.P9559591687233014382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118596 (n + 1)

end

end A062287.P9559591687233014382

/-! ## A062287.P13210947209094782903

`2*∩[A118597(n+1), A367807(n+1)]`
-/

namespace A062287.P13210947209094782903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062287.P13210947209094782903

/-! ## A062287.P13737489340736370134

`2*∩[A118598(n+1), A367807(n+1)]`
-/

namespace A062287.P13737489340736370134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062287.P13737489340736370134

/-! ## A062287.P16206484809411948699

`2*∩[A118599(n+1), A367807(n+1)]`
-/

namespace A062287.P16206484809411948699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062287.P16206484809411948699

/-! ## A062287.P14042601258407236818

`∩[2*A002113(n+1), A002113(n+1)]`
-/

namespace A062287.P14042601258407236818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062287.P14042601258407236818

/-! ## A062287.P5036972666763812049

`∩[2*A118600(n+1), A118600(n+1)]`
-/

namespace A062287.P5036972666763812049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062287.P5036972666763812049

/-! ## A062287.P9051417125818030015

`2*∩[A061917(n+1), A367807(n+1)]`
-/

namespace A062287.P9051417125818030015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062287.P9051417125818030015

/-! ## A062287.P10689156341612846896

`2*∩[A306273(n+1), A367807(n+1)]`
-/

namespace A062287.P10689156341612846896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062287.P10689156341612846896

/-! ## A062287.P15894038952963951105

`2*∩[A278328(n+1), A367807(n+1)]`
-/

namespace A062287.P15894038952963951105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062287.P15894038952963951105

/-! ## A062287.P6293063211418586428

`A071241(A029952(n+1))`
-/

namespace A062287.P6293063211418586428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071241 (A029952 (n + 1)).toNat

end

end A062287.P6293063211418586428

/-! ## A062287.P98171526870052407

`A071241(eq[n, A030104(n)])`
-/

namespace A062287.P98171526870052407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071241 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062287.P98171526870052407

/-! ## A062287.P10251821239666884909

`A071241(lt[A055951(n)², 1])`
-/

namespace A062287.P10251821239666884909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071241 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A062287.P10251821239666884909

/-! ## A062287.P16559256433907661277

`A014263(A029952(n+1)+1)`
-/

namespace A062287.P16559256433907661277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (A029952 (n + 1) + 1).toNat

end

end A062287.P16559256433907661277

/-! ## A062287.P10441795563269684443

`2*A007091(eq[n, A030104(n)])`
-/

namespace A062287.P10441795563269684443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062287.P10441795563269684443

/-! ## A062287.P10676172594815971513

`∩[A014263(n+1), A067030(n)]`
-/

namespace A062287.P10676172594815971513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062287.P10676172594815971513

/-! ## A062287.P8405461258209960572

`record[gcd(A014263(n+1), A071241(n))]`
-/

namespace A062287.P8405461258209960572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014263 (n + 1)) (A071241 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062287.P8405461258209960572

/-! ## A062287.P14774694532386971319

`∩[A002113(n+1), A014263(n+1)]`
-/

namespace A062287.P14774694532386971319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062287.P14774694532386971319

/-! ## A062287.P1567509803355934743

`∩[A014263(n+1), A029951(n+1)]`
-/

namespace A062287.P1567509803355934743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062287.P1567509803355934743

/-! ## A062287.P3044102934308432005

`∩[A014263(n+1), A068062(n+1)]`
-/

namespace A062287.P3044102934308432005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062287.P3044102934308432005

/-! ## A062287.P7674014129438883660

`∩[A014263(n+1), A118600(n+1)]`
-/

namespace A062287.P7674014129438883660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062287.P7674014129438883660

/-!
# A062288: Numbers k such that prime(k)+50 is also prime.

The programs for A062288, the canonical program `A062288.P13832936887169585839` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062288 has offset 1).

The definition of A062288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1645 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062288.P16904839760423094561

`A000720(A062284(n+1))`
-/

namespace A062288.P16904839760423094561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A062284 (n + 1)).toNat

end

end A062288.P16904839760423094561

namespace A062288

/-- `A000720(A062284(n+1))` -/
def P16904839760423094561.Spec : Prop :=
  ∀ n, P16904839760423094561.a n = A062288 (n + 1)

end A062288

/-! ## A062288.P4004135145688264409

`A000720(p?[A000040(n+1)-50])`
-/

namespace A062288.P4004135145688264409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062288.P4004135145688264409

namespace A062288

/-- `A000720(p?[A000040(n+1)-50])` -/
def P4004135145688264409.Spec : Prop :=
  ∀ n, P4004135145688264409.a n = A062288 (n + 1)

end A062288

/-! ## A062288.P4809246698586236682

`A000720(p?[A008578(n+1)-50])`
-/

namespace A062288.P4809246698586236682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062288.P4809246698586236682

namespace A062288

/-- `A000720(p?[A008578(n+1)-50])` -/
def P4809246698586236682.Spec : Prop :=
  ∀ n, P4809246698586236682.a n = A062288 (n + 1)

end A062288

/-! ## A062288.P13832936887169585839

`A061395(p?[A008578(n+1)-50])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A062288

/-- `A061395(p?[A008578(n+1)-50])` -/
def P13832936887169585839.Spec : Prop :=
  ∀ n, P13832936887169585839.a n = A062288 (n + 1)

theorem P13832936887169585839.correct : P13832936887169585839.Spec := by
  intro n
  simp only [A062288, Nat.add_sub_cancel]

end A062288

/-! ## A062288.P1393044300506081588

`lt[A000005(A158611(n+2)+50), 3]`
-/

namespace A062288.P1393044300506081588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A158611 (n + 2) + 50).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062288.P1393044300506081588

namespace A062288

/-- `lt[A000005(A158611(n+2)+50), 3]` -/
def P1393044300506081588.Spec : Prop :=
  ∀ n, (P1393044300506081588.a n : ℤ) = A062288 (n + 1)

end A062288

/-! ## A062288.P12815953588185696431

`A000720(p?[A128059(n)-50])`
-/

namespace A062288.P12815953588185696431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n - 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062288.P12815953588185696431

namespace A062288

/-- `A000720(p?[A128059(n)-50])` -/
def P12815953588185696431.Spec : Prop :=
  ∀ n, P12815953588185696431.a n = A062288 (n + 1)

end A062288

/-! ## A062288.P14952896664058970689

`A003963(p?[A000040(n+1)-50])`
-/

namespace A062288.P14952896664058970689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062288.P14952896664058970689

namespace A062288

/-- `A003963(p?[A000040(n+1)-50])` -/
def P14952896664058970689.Spec : Prop :=
  ∀ n, P14952896664058970689.a n = A062288 (n + 1)

end A062288

/-! ## A062288.P9225924593239953150

`A056239(p?[A000040(n+1)-50])`
-/

namespace A062288.P9225924593239953150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062288.P9225924593239953150

namespace A062288

/-- `A056239(p?[A000040(n+1)-50])` -/
def P9225924593239953150.Spec : Prop :=
  ∀ n, P9225924593239953150.a n = A062288 (n + 1)

end A062288

/-! ## A062288.P13620224408897638614

`A064839(p?[A000040(n+1)-50])`
-/

namespace A062288.P13620224408897638614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062288.P13620224408897638614

namespace A062288

/-- `A064839(p?[A000040(n+1)-50])` -/
def P13620224408897638614.Spec : Prop :=
  ∀ n, P13620224408897638614.a n = A062288 (n + 1)

end A062288

/-!
# A062289: Numbers n such that n-th row in Pascal triangle contains an even number, i.e., A048967(n) > 0.

The programs for A062289, the canonical program `A062289.P3760834885258552887` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062289 has offset 1).

The definition of A062289 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062289.P3760834885258552887

`A057716(n+1)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062289

/-- `A057716(n+1)-1` -/
def P3760834885258552887.Spec : Prop :=
  ∀ n, P3760834885258552887.a n = A062289 (n + 1)

theorem P3760834885258552887.correct : P3760834885258552887.Spec := by
  intro n
  simp only [A062289, Nat.add_sub_cancel]

end A062289

/-! ## A062289.P12714923637467090681

`comp[2^n-1]`
-/

namespace A062289.P12714923637467090681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A062289.P12714923637467090681

namespace A062289

/-- `comp[2^n-1]` -/
def P12714923637467090681.Spec : Prop :=
  ∀ n, (P12714923637467090681.a n : ℤ) = A062289 (n + 1)

end A062289

/-! ## A062289.P4202827704438035559

`lt[0, and(n, n+1)]`
-/

namespace A062289.P4202827704438035559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062289.P4202827704438035559

namespace A062289

/-- `lt[0, and(n, n+1)]` -/
def P4202827704438035559.Spec : Prop :=
  ∀ n, (P4202827704438035559.a n : ℤ) = A062289 (n + 1)

end A062289

/-! ## A062289.P11651437819309209564

`lt[xor(n, n+1), n]`
-/

namespace A062289.P11651437819309209564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062289.P11651437819309209564

namespace A062289

/-- `lt[xor(n, n+1), n]` -/
def P11651437819309209564.Spec : Prop :=
  ∀ n, (P11651437819309209564.a n : ℤ) = A062289 (n + 1)

end A062289

/-! ## A062289.P2297285225833085764

`comp[and(n, -n)]-1`
-/

namespace A062289.P2297285225833085764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A062289.P2297285225833085764

namespace A062289

/-- `comp[and(n, -n)]-1` -/
def P2297285225833085764.Spec : Prop :=
  ∀ n, P2297285225833085764.a n = A062289 (n + 1)

end A062289

/-! ## A062289.P1057834565972988346

`lt[and(n, -n), n]-1`
-/

namespace A062289.P1057834565972988346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A062289.P1057834565972988346

namespace A062289

/-- `lt[and(n, -n), n]-1` -/
def P1057834565972988346.Spec : Prop :=
  ∀ n, P1057834565972988346.a n = A062289 (n + 1)

end A062289

/-! ## A062289.P13968958114083345132

`lt[n, or(n, floor(n/2))]`
-/

namespace A062289.P13968958114083345132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062289.P13968958114083345132

namespace A062289

/-- `lt[n, or(n, floor(n/2))]` -/
def P13968958114083345132.Spec : Prop :=
  ∀ n, (P13968958114083345132.a n : ℤ) = A062289 (n + 1)

end A062289

/-! ## A062289.P12284955973523766078

`lt[0, and(n, n-1)]-1`
-/

namespace A062289.P12284955973523766078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A062289.P12284955973523766078

namespace A062289

/-- `lt[0, and(n, n-1)]-1` -/
def P12284955973523766078.Spec : Prop :=
  ∀ n, P12284955973523766078.a n = A062289 (n + 1)

end A062289

/-! ## A062289.P1478928967546833583

`lt[2^val(n+1, 2), n]`
-/

namespace A062289.P1478928967546833583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062289.P1478928967546833583

namespace A062289

/-- `lt[2^val(n+1, 2), n]` -/
def P1478928967546833583.Spec : Prop :=
  ∀ n, (P1478928967546833583.a n : ℤ) = A062289 (n + 1)

end A062289

/-! ## A062289.P5830994442012816101

`lt[or(n, n+1), 2*n]`
-/

namespace A062289.P5830994442012816101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062289.P5830994442012816101

namespace A062289

/-- `lt[or(n, n+1), 2*n]` -/
def P5830994442012816101.Spec : Prop :=
  ∀ n, (P5830994442012816101.a n : ℤ) = A062289 (n + 1)

end A062289

/-! ## A062289.P1948927626277734757

`lt[or(n, n+1)/2, n]`
-/

namespace A062289.P1948927626277734757
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A062289.P1948927626277734757

namespace A062289

/-- `lt[or(n, n+1)/2, n]` -/
def P1948927626277734757.Spec : Prop :=
  ∀ n, (P1948927626277734757.a n : ℤ) = A062289 (n + 1)

end A062289

/-! ## A062289.P12095382977777093467

`lt[2, xor(n, 2*n)-n]`
-/

namespace A062289.P12095382977777093467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062289.P12095382977777093467

namespace A062289

/-- `lt[2, xor(n, 2*n)-n]` -/
def P12095382977777093467.Spec : Prop :=
  ∀ n, (P12095382977777093467.a n : ℤ) = A062289 (n + 1)

end A062289

/-! ## A062289.P7083114444239364375

`lt[1, -or(2*n, -n)]`
-/

namespace A062289.P7083114444239364375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062289.P7083114444239364375

namespace A062289

/-- `lt[1, -or(2*n, -n)]` -/
def P7083114444239364375.Spec : Prop :=
  ∀ n, (P7083114444239364375.a n : ℤ) = A062289 (n + 1)

end A062289

/-! ## A062289.P14743243049105966926

`lt[or(n, n+1)-n, n]`
-/

namespace A062289.P14743243049105966926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062289.P14743243049105966926

namespace A062289

/-- `lt[or(n, n+1)-n, n]` -/
def P14743243049105966926.Spec : Prop :=
  ∀ n, (P14743243049105966926.a n : ℤ) = A062289 (n + 1)

end A062289

/-! ## A062289.P16348824944893871501

`comp[xor(n, n+1)-1]+1`
-/

namespace A062289.P16348824944893871501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A062289.P16348824944893871501

namespace A062289

/-- `comp[xor(n, n+1)-1]+1` -/
def P16348824944893871501.Spec : Prop :=
  ∀ n, (P16348824944893871501.a n : ℤ) = A062289 (n + 1)

end A062289

/-! ## A062289.P14238122143176476912

`lt[val(n+1, 2), log2(n+1)]`
-/

namespace A062289.P14238122143176476912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A062289.P14238122143176476912

namespace A062289

/-- `lt[val(n+1, 2), log2(n+1)]` -/
def P14238122143176476912.Spec : Prop :=
  ∀ n, (P14238122143176476912.a n : ℤ) = A062289 (n + 1)

end A062289

/-! ## A062289.P16099766097810859490

`comp[xor(1, xor(n, n+1))]+1`
-/

namespace A062289.P16099766097810859490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor n (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A062289.P16099766097810859490

namespace A062289

/-- `comp[xor(1, xor(n, n+1))]+1` -/
def P16099766097810859490.Spec : Prop :=
  ∀ n, (P16099766097810859490.a n : ℤ) = A062289 (n + 1)

end A062289

/-! ## A062289.P5572578897876640756

`eq[0, C(2, and(n, n+1)²)]`
-/

namespace A062289.P5572578897876640756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land n (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062289.P5572578897876640756

namespace A062289

/-- `eq[0, C(2, and(n, n+1)²)]` -/
def P5572578897876640756.Spec : Prop :=
  ∀ n, (P5572578897876640756.a n : ℤ) = A062289 (n + 1)

end A062289

/-! ## A062289.P4469669428215368603

`comp[2*a(n-1)]-1` with `a(0)=0, a(1)=1`
-/

namespace A062289.P4469669428215368603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1

end

end A062289.P4469669428215368603

namespace A062289

/-- `comp[2*a(n-1)]-1` -/
def P4469669428215368603.Spec : Prop :=
  ∀ n, P4469669428215368603.a n = A062289 (n + 1)

end A062289

/-!
# A062291: Primes p = prime(k) such that k*p - 1 is also a prime.

The programs for A062291, there is no canonical definition to state claims against.
-/

/-! ## A062291.P3393280682888351241

`A031215(A086173(n+1)/2)`
-/

namespace A062291.P3393280682888351241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (SequenceMachineLib.roundAway ((A086173 (n + 1) : ℚ) / 2)).toNat

end

end A062291.P3393280682888351241

/-! ## A062291.P10801427255366325621

`A000040(A086173(n+1))`
-/

namespace A062291.P10801427255366325621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A086173 (n + 1)).toNat

end

end A062291.P10801427255366325621

/-! ## A062291.P2941412738689560938

`A008578(A086173(n+1)+1)`
-/

namespace A062291.P2941412738689560938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A086173 (n + 1) + 1).toNat

end

end A062291.P2941412738689560938

/-! ## A062291.P9999949808004410808

`A065091(A086173(n+1)-1)`
-/

namespace A062291.P9999949808004410808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A086173 (n + 1) - 1).toNat

end

end A062291.P9999949808004410808

/-! ## A062291.P4396806623213244896

`A158611(A086173(n+1)+2)`
-/

namespace A062291.P4396806623213244896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A086173 (n + 1) + 2).toNat

end

end A062291.P4396806623213244896

/-! ## A062291.P1320897224909661879

`or(A006005(A086173(n+1)), A103451(n))`
-/

namespace A062291.P1320897224909661879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006005 (A086173 (n + 1)).toNat) (A103451 n)

end

end A062291.P1320897224909661879

/-! ## A062291.P13217973484230822721

`A006005(A086173(n+1)%sqrt(A016840(n)))`
-/

namespace A062291.P13217973484230822721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.tmod (A086173 (n + 1)) (SequenceMachineLib.roundAway (Real.sqrt (A016840 n : ℝ)))).toNat

end

end A062291.P13217973484230822721

/-! ## A062291.P4198447841350080143

`A006005(A086173(n+1))%A086169(n+1)`
-/

namespace A062291.P4198447841350080143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (A086173 (n + 1)).toNat) (A086169 (n + 1))

end

end A062291.P4198447841350080143

/-! ## A062291.P3149434838348301297

`A006005(A086173(n+1)%A023493(n))`
-/

namespace A062291.P3149434838348301297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.tmod (A086173 (n + 1)) (A023493 n)).toNat

end

end A062291.P3149434838348301297

/-!
# A062292: A B_2 sequence: a(n) is the smallest cube such that the pairwise sums of {a(1)...a(n)} are all distinct.

The programs for A062292, there is no canonical definition to state claims against.
-/

/-! ## A062292.P1342705326285689918

`A000578(lt[A177201(2*(n+2)), A216912(n+1)])`
-/

namespace A062292.P1342705326285689918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177201 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A062292.P1342705326285689918

/-! ## A062292.P12330009458258595216

`comp[4*(∑[a(n-1)-(1-a(n-2))]-n+1)]^3` with `a(0)=5, a(1)=1, a(2)=-1, a(3)=0, a(4)=-2, a(5)=1`
-/

namespace A062292.P12330009458258595216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 1, -1, 0, -2, 1] fun n f2 =>
  f2 (n - 1) - (1 - f2 (n - 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 3

end

end A062292.P12330009458258595216

/-! ## A062292.P10626176427780423555

`comp[A151760(A235387(3*n+5))]^3`
-/

namespace A062292.P10626176427780423555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151760 (A235387 (3 * n + 5)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 3

end

end A062292.P10626176427780423555

/-! ## A062292.P12819592246200420904

`A000578(lt[A296611(n+1), A296611(3*n+5)])`
-/

namespace A062292.P12819592246200420904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296611 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A062292.P12819592246200420904

/-! ## A062292.P8156954256338019889

`A000578(lt[A277994(3*n+4), A060680(2*n+3)])`
-/

namespace A062292.P8156954256338019889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277994 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A062292.P8156954256338019889

/-!
# A062293: Smallest multiple k*n of n which has even digits and is a palindrome or becomes a palindrome when 0's are added on the left (e.g., 10 becomes 010, which is a palindrome).

The programs for A062293, there is no canonical definition to state claims against.
-/

/-! ## A062293.P6104909822414710427

`n*A061797(n)`
-/

namespace A062293.P6104909822414710427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061797 n

end

end A062293.P6104909822414710427

/-! ## A062293.P4648760648967772894

`A329249(n^A006723(n))`
-/

namespace A062293.P4648760648967772894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329249 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A006723 n : ℤ))).toNat

end

end A062293.P4648760648967772894

/-! ## A062293.P11630232666548330915

`A329249(n^A058058(n+1))`
-/

namespace A062293.P11630232666548330915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329249 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A058058 (n + 1) : ℤ))).toNat

end

end A062293.P11630232666548330915

/-! ## A062293.P16576438997938860152

`A329249(n^A146598(n+1))`
-/

namespace A062293.P16576438997938860152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329249 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A146598 (n + 1) : ℤ))).toNat

end

end A062293.P16576438997938860152

/-!
# A062294: A B_2 sequence: a(n) is the smallest prime such that the pairwise sums of distinct elements are all distinct.

The programs for A062294, there is no canonical definition to state claims against.
-/

/-! ## A062294.P931013298908747287

`A079848(n+1)-A133096(n+1)`
-/

namespace A062294.P931013298908747287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079848 (n + 1) - A133096 (n + 1)

end

end A062294.P931013298908747287

/-! ## A062294.P8980145402027705460

`∑[A079849(abs(1-n)+1)]-A133096(n+1)`
-/

namespace A062294.P8980145402027705460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079849 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A133096 (n + 1)

end

end A062294.P8980145402027705460

/-! ## A062294.P16700928571542980693

`∑[A079849(n+1-round(n/(n+1)))]+1-A133096(n+1)`
-/

namespace A062294.P16700928571542980693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079849 ((n + 1 : ℤ) - SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A133096 (n + 1)

end

end A062294.P16700928571542980693

/-! ## A062294.P219340297758897439

`∑[A079849(A028310(n))]-A133096(n+1)+1`
-/

namespace A062294.P219340297758897439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079849 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A133096 (n + 1) + 1

end

end A062294.P219340297758897439

/-! ## A062294.P1840204836073528758

`p?[∑[A003056(A262082(n))]]`
-/

namespace A062294.P1840204836073528758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A262082 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062294.P1840204836073528758

/-!
# A062295: A B_2 sequence: a(n) is the smallest square such that pairwise sums of not necessarily distinct elements are all distinct.

The programs for A062295, there is no canonical definition to state claims against.
-/

/-! ## A062295.P17720469454654713733

`A133744(n+1)+A133743(n+1)`
-/

namespace A062295.P17720469454654713733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133744 (n + 1) + A133743 (n + 1)

end

end A062295.P17720469454654713733

/-! ## A062295.P16647065663540301053

`A133744(n+1)+∑[A162319(A049934(n+1))]²`
-/

namespace A062295.P16647065663540301053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162319 (A049934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133744 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A062295.P16647065663540301053

/-! ## A062295.P2920240226704858704

`∑[A115583(A068921(n))]²`
-/

namespace A062295.P2920240226704858704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115583 (A068921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A062295.P2920240226704858704

/-! ## A062295.P10140278736285252070

`lt[A301505(n)², A210941(n+1)]²`
-/

namespace A062295.P10140278736285252070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301505 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210941 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A062295.P10140278736285252070

/-! ## A062295.P9041366351288436163

`lt[A320232(n), A175505(3*n+1)]²`
-/

namespace A062295.P9041366351288436163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320232 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175505 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A062295.P9041366351288436163

/-!
# A062296: a(n) = number of entries in n-th row of Pascal's triangle divisible by 3.

The programs for A062296, the canonical program `A062296.P1311595272100863139` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062296 has offset 0).

The definition of A062296 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062296.P1311595272100863139

`n+1-A006047(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062296

/-- `n+1-A006047(n)` -/
def P1311595272100863139.Spec : Prop :=
  ∀ n, P1311595272100863139.a n = A062296 n

theorem P1311595272100863139.correct : P1311595272100863139.Spec := by
  intro n
  simp only [A062296]

end A062296

/-! ## A062296.P2046194315599674125

`n+1-A206424(n)-A227428(n)`
-/

namespace A062296.P2046194315599674125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 - A206424 n) - A227428 n

end

end A062296.P2046194315599674125

namespace A062296

/-- `n+1-A206424(n)-A227428(n)` -/
def P2046194315599674125.Spec : Prop :=
  ∀ n, P2046194315599674125.a n = A062296 n

end A062296

/-! ## A062296.P2257133703419759715

`1-A061898(A120879(n))+n`
-/

namespace A062296.P2257133703419759715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A061898 (A120879 n).toNat + (n : ℤ)

end

end A062296.P2257133703419759715

namespace A062296

/-- `1-A061898(A120879(n))+n` -/
def P2257133703419759715.Spec : Prop :=
  ∀ n, P2257133703419759715.a n = A062296 n

end A062296

/-! ## A062296.P17871006487821756081

`1-A122111(A331279(n))+n`
-/

namespace A062296.P17871006487821756081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A122111 (A331279 n).toNat + (n : ℤ)

end

end A062296.P17871006487821756081

namespace A062296

/-- `1-A122111(A331279(n))+n` -/
def P17871006487821756081.Spec : Prop :=
  ∀ n, P17871006487821756081.a n = A062296 n

end A062296

/-! ## A062296.P5260508104736420

`1-(A006047(3*n)-n)`
-/

namespace A062296.P5260508104736420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A006047 (3 * n) - (n : ℤ))

end

end A062296.P5260508104736420

namespace A062296

/-- `1-(A006047(3*n)-n)` -/
def P5260508104736420.Spec : Prop :=
  ∀ n, P5260508104736420.a n = A062296 n

end A062296

/-! ## A062296.P11900384965069660270

`1-A120879(A137305(n))+n`
-/

namespace A062296.P11900384965069660270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A120879 (A137305 n).toNat + (n : ℤ)

end

end A062296.P11900384965069660270

namespace A062296

/-- `1-A120879(A137305(n))+n` -/
def P11900384965069660270.Spec : Prop :=
  ∀ n, P11900384965069660270.a n = A062296 n

end A062296

/-! ## A062296.P13892401082449879200

`1-A120879(A004488(n))+n`
-/

namespace A062296.P13892401082449879200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A120879 (A004488 n).toNat + (n : ℤ)

end

end A062296.P13892401082449879200

namespace A062296

/-- `1-A120879(A004488(n))+n` -/
def P13892401082449879200.Spec : Prop :=
  ∀ n, P13892401082449879200.a n = A062296 n

end A062296

/-! ## A062296.P16651758197622936916

`1-A120879(A357616(n))+n`
-/

namespace A062296.P16651758197622936916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A120879 (A357616 n).toNat + (n : ℤ)

end

end A062296.P16651758197622936916

namespace A062296

/-- `1-A120879(A357616(n))+n` -/
def P16651758197622936916.Spec : Prop :=
  ∀ n, P16651758197622936916.a n = A062296 n

end A062296

/-! ## A062296.P6699453500966589136

`A008619(2*n)-A006047(n)`
-/

namespace A062296.P6699453500966589136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A006047 n

end

end A062296.P6699453500966589136

namespace A062296

/-- `A008619(2*n)-A006047(n)` -/
def P6699453500966589136.Spec : Prop :=
  ∀ n, P6699453500966589136.a n = A062296 n

end A062296

/-! ## A062296.P1306801649623116007

`1-A268444(A023717(n))+n`
-/

namespace A062296.P1306801649623116007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A268444 (A023717 n).toNat + (n : ℤ)

end

end A062296.P1306801649623116007

namespace A062296

/-- `1-A268444(A023717(n))+n` -/
def P1306801649623116007.Spec : Prop :=
  ∀ n, P1306801649623116007.a n = A062296 n

end A062296

/-! ## A062296.P1816744754793389014

`n+1-A338854(record[A006015(n)])`
-/

namespace A062296.P1816744754793389014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A338854 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062296.P1816744754793389014

namespace A062296

/-- `n+1-A338854(record[A006015(n)])` -/
def P1816744754793389014.Spec : Prop :=
  ∀ n, P1816744754793389014.a n = A062296 n

end A062296

/-! ## A062296.P17244641963920810885

`1-A338854(A023709(n+1))+n`
-/

namespace A062296.P17244641963920810885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A338854 (A023709 (n + 1)).toNat + (n : ℤ)

end

end A062296.P17244641963920810885

namespace A062296

/-- `1-A338854(A023709(n+1))+n` -/
def P17244641963920810885.Spec : Prop :=
  ∀ n, P17244641963920810885.a n = A062296 n

end A062296

/-! ## A062296.P7994100981357716793

`1-A286633(A254104(n))+n`
-/

namespace A062296.P7994100981357716793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286633 (A254104 n).toNat + (n : ℤ)

end

end A062296.P7994100981357716793

namespace A062296

/-- `1-A286633(A254104(n))+n` -/
def P7994100981357716793.Spec : Prop :=
  ∀ n, P7994100981357716793.a n = A062296 n

end A062296

/-! ## A062296.P1194981650418572260

`A215501(A215366(n))-A006047(n)`
-/

namespace A062296.P1194981650418572260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215501 (A215366 n).toNat - A006047 n

end

end A062296.P1194981650418572260

namespace A062296

/-- `A215501(A215366(n))-A006047(n)` -/
def P1194981650418572260.Spec : Prop :=
  ∀ n, P1194981650418572260.a n = A062296 n

end A062296

/-! ## A062296.P8478862136723721353

`1-A353330(A005940(n+1))+n`
-/

namespace A062296.P8478862136723721353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A353330 (A005940 (n + 1)).toNat + (n : ℤ)

end

end A062296.P8478862136723721353

namespace A062296

/-- `1-A353330(A005940(n+1))+n` -/
def P8478862136723721353.Spec : Prop :=
  ∀ n, P8478862136723721353.a n = A062296 n

end A062296

/-! ## A062296.P5300933667946230079

`1-A000005(A101278(n))+n`
-/

namespace A062296.P5300933667946230079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000005 (A101278 n).toNat + (n : ℤ)

end

end A062296.P5300933667946230079

namespace A062296

/-- `1-A000005(A101278(n))+n` -/
def P5300933667946230079.Spec : Prop :=
  ∀ n, P5300933667946230079.a n = A062296 n

end A062296

/-! ## A062296.P580318508282183322

`1-A089898(A038586(n))+n`
-/

namespace A062296.P580318508282183322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A089898 (A038586 n).toNat + (n : ℤ)

end

end A062296.P580318508282183322

namespace A062296

/-- `1-A089898(A038586(n))+n` -/
def P580318508282183322.Spec : Prop :=
  ∀ n, P580318508282183322.a n = A062296 n

end A062296

/-! ## A062296.P801822027524133809

`A118759(1-(A006047(n)-n))`
-/

namespace A062296.P801822027524133809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (1 - (A006047 n - (n : ℤ))).toNat

end

end A062296.P801822027524133809

namespace A062296

/-- `A118759(1-(A006047(n)-n))` -/
def P801822027524133809.Spec : Prop :=
  ∀ n, P801822027524133809.a n = A062296 n

end A062296

/-!
# A062297: Number of distinct Abelian subgroups of the symmetric group S_n.

The programs for A062297, there is no canonical definition to state claims against.
-/

/-! ## A062297.P14329937928776997085

`A191147(A191241(n+1))+n`
-/

namespace A062297.P14329937928776997085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191147 (A191241 (n + 1)).toNat + (n : ℤ)

end

end A062297.P14329937928776997085

/-! ## A062297.P6114200321138272287

`A130936(A099251(n))+A089843(n)`
-/

namespace A062297.P6114200321138272287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130936 (A099251 n).toNat + A089843 n

end

end A062297.P6114200321138272287

/-!
# A062298: Number of nonprimes <= n.

The programs for A062298, the canonical program `A062298.P8226643735375377344` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062298 has offset 1).

The definition of A062298 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062298.P12066187266940640269

`1+A065855(n+1)`
-/

namespace A062298.P12066187266940640269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A065855 (n + 1)

end

end A062298.P12066187266940640269

namespace A062298

/-- `1+A065855(n+1)` -/
def P12066187266940640269.Spec : Prop :=
  ∀ n, P12066187266940640269.a n = A062298 (n + 1)

end A062298

/-! ## A062298.P8226643735375377344

`n+1-A000720(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062298

/-- `n+1-A000720(n+1)` -/
def P8226643735375377344.Spec : Prop :=
  ∀ n, P8226643735375377344.a n = A062298 (n + 1)

theorem P8226643735375377344.correct : P8226643735375377344.Spec := by
  intro n
  simp only [A062298, Nat.add_sub_cancel]

end A062298

/-! ## A062298.P8583671875403691410

`∑[∏{p}[n+1, C(#%n, #)]]`
-/

namespace A062298.P8583671875403691410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062298.P8583671875403691410

namespace A062298

/-- `∑[∏{p}[n+1, C(#%n, #)]]` -/
def P8583671875403691410.Spec : Prop :=
  ∀ n, (P8583671875403691410.a n : ℤ) = A062298 (n + 1)

end A062298

/-! ## A062298.P17977348232280962022

`∑[C(n, ∑{p}[n+1, C(#, n)])]`
-/

namespace A062298.P17977348232280962022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062298.P17977348232280962022

namespace A062298

/-- `∑[C(n, ∑{p}[n+1, C(#, n)])]` -/
def P17977348232280962022.Spec : Prop :=
  ∀ n, (P17977348232280962022.a n : ℤ) = A062298 (n + 1)

end A062298

/-! ## A062298.P2322154693017639826

`∑[∏{p}[n+1, C(n, C(#, n))]]`
-/

namespace A062298.P2322154693017639826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose n (Nat.choose p n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062298.P2322154693017639826

namespace A062298

/-- `∑[∏{p}[n+1, C(n, C(#, n))]]` -/
def P2322154693017639826.Spec : Prop :=
  ∀ n, (P2322154693017639826.a n : ℤ) = A062298 (n + 1)

end A062298

/-! ## A062298.P11558986700605762439

`∑[1-char[eq[1, ∑{e}[n+1, #]]]]`
-/

namespace A062298.P11558986700605762439
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062298.P11558986700605762439

namespace A062298

/-- `∑[1-char[eq[1, ∑{e}[n+1, #]]]]` -/
def P11558986700605762439.Spec : Prop :=
  ∀ n, P11558986700605762439.a n = A062298 (n + 1)

end A062298

/-! ## A062298.P7493735151737382587

`∑[1-∑{p}[n+1, val(#, n+1)]]`
-/

namespace A062298.P7493735151737382587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062298.P7493735151737382587

namespace A062298

/-- `∑[1-∑{p}[n+1, val(#, n+1)]]` -/
def P7493735151737382587.Spec : Prop :=
  ∀ n, P7493735151737382587.a n = A062298 (n + 1)

end A062298

/-! ## A062298.P16624539056585837739

`∑[∏{p}[n+1, 1-val(#, n+1)]]`
-/

namespace A062298.P16624539056585837739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (1 - (SequenceMachineLib.valuation p (n + 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062298.P16624539056585837739

namespace A062298

/-- `∑[∏{p}[n+1, 1-val(#, n+1)]]` -/
def P16624539056585837739.Spec : Prop :=
  ∀ n, P16624539056585837739.a n = A062298 (n + 1)

end A062298

/-! ## A062298.P17914679891495291074

`∑[A005171(n+1)]`
-/

namespace A062298.P17914679891495291074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062298.P17914679891495291074

namespace A062298

/-- `∑[A005171(n+1)]` -/
def P17914679891495291074.Spec : Prop :=
  ∀ n, P17914679891495291074.a n = A062298 (n + 1)

end A062298

/-! ## A062298.P12227954890254376926

`∑[A066247(n+1)]+1`
-/

namespace A062298.P12227954890254376926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A062298.P12227954890254376926

namespace A062298

/-- `∑[A066247(n+1)]+1` -/
def P12227954890254376926.Spec : Prop :=
  ∀ n, P12227954890254376926.a n = A062298 (n + 1)

end A062298

/-! ## A062298.P14583169593906585209

`∑[1-A010051(n+1)]`
-/

namespace A062298.P14583169593906585209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062298.P14583169593906585209

namespace A062298

/-- `∑[1-A010051(n+1)]` -/
def P14583169593906585209.Spec : Prop :=
  ∀ n, P14583169593906585209.a n = A062298 (n + 1)

end A062298

/-! ## A062298.P13859846795291820687

`∑[C(2, A055671(n+1))]`
-/

namespace A062298.P13859846795291820687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A055671 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062298.P13859846795291820687

namespace A062298

/-- `∑[C(2, A055671(n+1))]` -/
def P13859846795291820687.Spec : Prop :=
  ∀ n, (P13859846795291820687.a n : ℤ) = A062298 (n + 1)

end A062298

/-! ## A062298.P14060765833022981026

`∑[A014684(n+1)-n]`
-/

namespace A062298.P14060765833022981026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062298.P14060765833022981026

namespace A062298

/-- `∑[A014684(n+1)-n]` -/
def P14060765833022981026.Spec : Prop :=
  ∀ n, P14060765833022981026.a n = A062298 (n + 1)

end A062298

/-! ## A062298.P2778567147471107711

`A256885(n+1)-∑[n]`
-/

namespace A062298.P2778567147471107711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256885 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A062298.P2778567147471107711

namespace A062298

/-- `A256885(n+1)-∑[n]` -/
def P2778567147471107711.Spec : Prop :=
  ∀ n, P2778567147471107711.a n = A062298 (n + 1)

end A062298

/-! ## A062298.P5056118334232408428

`2-A036234(n+1)+n`
-/

namespace A062298.P5056118334232408428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036234 (n + 1) + (n : ℤ)

end

end A062298.P5056118334232408428

namespace A062298

/-- `2-A036234(n+1)+n` -/
def P5056118334232408428.Spec : Prop :=
  ∀ n, P5056118334232408428.a n = A062298 (n + 1)

end A062298

/-! ## A062298.P12933251157894990982

`(A118777(n+1)+n)/2`
-/

namespace A062298.P12933251157894990982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118777 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A062298.P12933251157894990982

namespace A062298

/-- `(A118777(n+1)+n)/2` -/
def P12933251157894990982.Spec : Prop :=
  ∀ n, P12933251157894990982.a n = (A062298 (n + 1) : ℚ)

end A062298

/-! ## A062298.P15586711982304659086

`∑[1-abs(A129950(n+1))]`
-/

namespace A062298.P15586711982304659086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A129950 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062298.P15586711982304659086

namespace A062298

/-- `∑[1-abs(A129950(n+1))]` -/
def P15586711982304659086.Spec : Prop :=
  ∀ n, P15586711982304659086.a n = A062298 (n + 1)

end A062298

/-! ## A062298.P7495047573832703380

`∑[(1-A061007(n+1))²]`
-/

namespace A062298.P7495047573832703380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A061007 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062298.P7495047573832703380

namespace A062298

/-- `∑[(1-A061007(n+1))²]` -/
def P7495047573832703380.Spec : Prop :=
  ∀ n, P7495047573832703380.a n = A062298 (n + 1)

end A062298

/-! ## A062298.P6442777954253057434

`∑[(1-A105661(n+1))²]`
-/

namespace A062298.P6442777954253057434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A105661 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062298.P6442777954253057434

namespace A062298

/-- `∑[(1-A105661(n+1))²]` -/
def P6442777954253057434.Spec : Prop :=
  ∀ n, P6442777954253057434.a n = A062298 (n + 1)

end A062298

/-! ## A062298.P18154975028595273679

`∑[(1-A105700(n+1))²]`
-/

namespace A062298.P18154975028595273679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A105700 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062298.P18154975028595273679

namespace A062298

/-- `∑[(1-A105700(n+1))²]` -/
def P18154975028595273679.Spec : Prop :=
  ∀ n, P18154975028595273679.a n = A062298 (n + 1)

end A062298

/-!
# A062299: a(n) = floor(cot(Pi/(n+1))).

The programs for A062299, there is no canonical definition to state claims against.
-/

/-! ## A062299.P6498946548377886130

`floor(sqrt(∑[A331904(n+1)]))`
-/

namespace A062299.P6498946548377886130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062299.P6498946548377886130

/-! ## A062299.P1006362404910574278

`floor(record[A135607(n)-A019429(n)]/(n+2))`
-/

namespace A062299.P1006362404910574278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135607 n - A019429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 2 : ℚ)⌋

end

end A062299.P1006362404910574278

/-! ## A062299.P12802621177610951811

`A000196(∑[A331904(n+1)])`
-/

namespace A062299.P12802621177610951811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A062299.P12802621177610951811

/-! ## A062299.P15883580935516502837

`A059995(A108611(n+3)+A016789(n+1))`
-/

namespace A062299.P15883580935516502837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A108611 (n + 3) + A016789 (n + 1)).toNat

end

end A062299.P15883580935516502837

/-! ## A062299.P11354352945511034079

`A059995(A186331(n+1)+A103202(n+1))`
-/

namespace A062299.P11354352945511034079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A186331 (n + 1) + A103202 (n + 1)).toNat

end

end A062299.P11354352945511034079

/-! ## A062299.P12677722043214663082

`A059995(A163563(n+1)+A016789(n))`
-/

namespace A062299.P12677722043214663082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A163563 (n + 1) + A016789 n).toNat

end

end A062299.P12677722043214663082

