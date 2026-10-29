import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C041
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A070600: Largest number with n prime factors where all factors are less than or equal to n.

The programs for A070600, there is no canonical definition to state claims against.
-/

/-! ## A070600.P2266654940502577917

`A078773(A151800(n+1))^(n+1)`
-/

namespace A070600.P2266654940502577917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078773 (A151800 (n + 1)).toNat ^ (n + 1)

end

end A070600.P2266654940502577917

/-! ## A070600.P5665513287718398213

`A001414(A136548(n+2))^(n+1)`
-/

namespace A070600.P5665513287718398213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A136548 (n + 2)).toNat ^ (n + 1)

end

end A070600.P5665513287718398213

/-! ## A070600.P8516629439795277925

`(A006530(A083717(n+1))%(2*n+1))^(n+1)`
-/

namespace A070600.P8516629439795277925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A083717 (n + 1)).toNat) (2 * n + 1 : ℤ) ^ (n + 1)

end

end A070600.P8516629439795277925

/-! ## A070600.P12928153614621787

`(A006530(A342766(n+1))%A311379(n))^(n+1)`
-/

namespace A070600.P12928153614621787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A342766 (n + 1)).toNat) (A311379 n) ^ (n + 1)

end

end A070600.P12928153614621787

/-! ## A070600.P7913814548166763688

`(A000040(A033270(n+1)+1)%A010017(n))^(n+1)`
-/

namespace A070600.P7913814548166763688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A033270 (n + 1) + 1).toNat) (A010017 n) ^ (n + 1)

end

end A070600.P7913814548166763688

/-!
# A070601: n^5 mod 17.

The programs for A070601, the canonical program `A070601.P15890532136264960557` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070601 has offset 0).

The definition of A070601 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%17` (program `A070601.P15890532136264960557`, by `A070601.P15890532136264960557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070601.P15890532136264960557

`(n^5)%17`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070601

/-- `(n^5)%17` -/
def P15890532136264960557.Spec : Prop :=
  ∀ n, (P15890532136264960557.a n : ℤ) = A070601 n

theorem P15890532136264960557.correct : P15890532136264960557.Spec := by
  intro n
  simp only [A070601]

end A070601

/-!
# A070602: a(n) = n^5 mod 18.

The programs for A070602, the canonical program `A070602.P10752447907995977523` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070602 has offset 0).

The definition of A070602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%18` (program `A070602.P10752447907995977523`, by `A070602.P10752447907995977523.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070602.P10752447907995977523

`(n^5)%18`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070602

/-- `(n^5)%18` -/
def P10752447907995977523.Spec : Prop :=
  ∀ n, (P10752447907995977523.a n : ℤ) = A070602 n

theorem P10752447907995977523.correct : P10752447907995977523.Spec := by
  intro n
  simp only [A070602]

end A070602

/-!
# A070603: a(n) = n^5 mod 19.

The programs for A070603, the canonical program `A070603.P480176259783977788` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070603 has offset 0).

The definition of A070603 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%19` (program `A070603.P480176259783977788`, by `A070603.P480176259783977788.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070603.P480176259783977788

`(n^5)%19`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070603

/-- `(n^5)%19` -/
def P480176259783977788.Spec : Prop :=
  ∀ n, (P480176259783977788.a n : ℤ) = A070603 n

theorem P480176259783977788.correct : P480176259783977788.Spec := by
  intro n
  simp only [A070603]

end A070603

/-!
# A070604: a(n) = n^5 mod 20.

The programs for A070604, the canonical program `A070604.P17152098815249427293` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070604 has offset 0).

The definition of A070604 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%20` (program `A070604.P17152098815249427293`, by `A070604.P17152098815249427293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070604.P17152098815249427293

`(n^5)%20`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070604

/-- `(n^5)%20` -/
def P17152098815249427293.Spec : Prop :=
  ∀ n, (P17152098815249427293.a n : ℤ) = A070604 n

theorem P17152098815249427293.correct : P17152098815249427293.Spec := by
  intro n
  simp only [A070604]

end A070604

/-!
# A070605: n^5 mod 21.

The programs for A070605, the canonical program `A070605.P5615555639683985544` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070605 has offset 0).

The definition of A070605 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%21` (program `A070605.P5615555639683985544`, by `A070605.P5615555639683985544.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070605.P5615555639683985544

`(n^5)%21`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070605

/-- `(n^5)%21` -/
def P5615555639683985544.Spec : Prop :=
  ∀ n, (P5615555639683985544.a n : ℤ) = A070605 n

theorem P5615555639683985544.correct : P5615555639683985544.Spec := by
  intro n
  simp only [A070605]

end A070605

/-!
# A070606: a(n) = n^5 mod 22.

The programs for A070606, the canonical program `A070606.P10540796150880092643` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070606 has offset 0).

The definition of A070606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%22` (program `A070606.P10540796150880092643`, by `A070606.P10540796150880092643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070606.P10540796150880092643

`(n^5)%22`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070606

/-- `(n^5)%22` -/
def P10540796150880092643.Spec : Prop :=
  ∀ n, (P10540796150880092643.a n : ℤ) = A070606 n

theorem P10540796150880092643.correct : P10540796150880092643.Spec := by
  intro n
  simp only [A070606]

end A070606

/-!
# A070607: a(n) = n^5 mod 23.

The programs for A070607, the canonical program `A070607.P15348654201308153211` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070607 has offset 0).

The definition of A070607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%23` (program `A070607.P15348654201308153211`, by `A070607.P15348654201308153211.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070607.P15348654201308153211

`(n^5)%23`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070607

/-- `(n^5)%23` -/
def P15348654201308153211.Spec : Prop :=
  ∀ n, (P15348654201308153211.a n : ℤ) = A070607 n

theorem P15348654201308153211.correct : P15348654201308153211.Spec := by
  intro n
  simp only [A070607]

end A070607

/-!
# A070609: a(n) = n^5 mod 25.

The programs for A070609, the canonical program `A070609.P10232034111706142340` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070609 has offset 0).

The definition of A070609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%25` (program `A070609.P10232034111706142340`, by `A070609.P10232034111706142340.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070609.P10232034111706142340

`(n^5)%25`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070609

/-- `(n^5)%25` -/
def P10232034111706142340.Spec : Prop :=
  ∀ n, (P10232034111706142340.a n : ℤ) = A070609 n

theorem P10232034111706142340.correct : P10232034111706142340.Spec := by
  intro n
  simp only [A070609]

end A070609

/-!
# A070610: Number of positive integers k such that sigma(k) divides sigma(n).

The programs for A070610, the canonical program `A070610.P5818742011114903418` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070610 has offset 1).

The definition of A070610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070610.P5818742011114903418

`A074754(A000203(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070610

/-- `A074754(A000203(n+1))` -/
def P5818742011114903418.Spec : Prop :=
  ∀ n, P5818742011114903418.a n = A070610 (n + 1)

theorem P5818742011114903418.correct : P5818742011114903418.Spec := by
  intro n
  simp only [A070610, Nat.add_sub_cancel]

end A070610

/-! ## A070610.P322265166540509447

`A074754(∑{d}[n+1, #])`
-/

namespace A070610.P322265166540509447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074754 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A070610.P322265166540509447

namespace A070610

/-- `A074754(∑{d}[n+1, #])` -/
def P322265166540509447.Spec : Prop :=
  ∀ n, P322265166540509447.a n = A070610 (n + 1)

end A070610

/-! ## A070610.P17511197397581690843

`A074754(A039653(n+1)+1)`
-/

namespace A070610.P17511197397581690843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074754 (A039653 (n + 1) + 1).toNat

end

end A070610.P17511197397581690843

namespace A070610

/-- `A074754(A039653(n+1)+1)` -/
def P17511197397581690843.Spec : Prop :=
  ∀ n, P17511197397581690843.a n = A070610 (n + 1)

end A070610

/-! ## A070610.P14940101371585992684

`A074754(A088580(n+1)-1)`
-/

namespace A070610.P14940101371585992684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074754 (A088580 (n + 1) - 1).toNat

end

end A070610.P14940101371585992684

namespace A070610

/-- `A074754(A088580(n+1)-1)` -/
def P14940101371585992684.Spec : Prop :=
  ∀ n, P14940101371585992684.a n = A070610 (n + 1)

theorem P14940101371585992684.correct : P14940101371585992684.Spec := by
  intro n
  simp only [A070610, Nat.add_sub_cancel, A070610.P14940101371585992684.a, A070610.P5818742011114903418.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074754, A074754.P14534040090181209810.f1, A074754.P14534040090181209810.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070610

/-! ## A070610.P10404457592525436062

`A074754(A239050(n+1)/4)`
-/

namespace A070610.P10404457592525436062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074754 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 4)).toNat

end

end A070610.P10404457592525436062

namespace A070610

/-- `A074754(A239050(n+1)/4)` -/
def P10404457592525436062.Spec : Prop :=
  ∀ n, P10404457592525436062.a n = A070610 (n + 1)

end A070610

/-! ## A070610.P3071970521174861335

`A074754(A274535(n+1)/5)`
-/

namespace A070610.P3071970521174861335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074754 (SequenceMachineLib.roundAway ((A274535 (n + 1) : ℚ) / 5)).toNat

end

end A070610.P3071970521174861335

namespace A070610

/-- `A074754(A274535(n+1)/5)` -/
def P3071970521174861335.Spec : Prop :=
  ∀ n, P3071970521174861335.a n = A070610 (n + 1)

end A070610

/-! ## A070610.P8629081102026229895

`A074754(A326122(n+1)/10)`
-/

namespace A070610.P8629081102026229895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074754 (SequenceMachineLib.roundAway ((A326122 (n + 1) : ℚ) / 10)).toNat

end

end A070610.P8629081102026229895

namespace A070610

/-- `A074754(A326122(n+1)/10)` -/
def P8629081102026229895.Spec : Prop :=
  ∀ n, P8629081102026229895.a n = A070610 (n + 1)

end A070610

/-! ## A070610.P6114585860892064341

`A074754(A001065(n+1)+1+n)`
-/

namespace A070610.P6114585860892064341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074754 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A070610.P6114585860892064341

namespace A070610

/-- `A074754(A001065(n+1)+1+n)` -/
def P6114585860892064341.Spec : Prop :=
  ∀ n, P6114585860892064341.a n = A070610 (n + 1)

theorem P6114585860892064341.correct : P6114585860892064341.Spec := by
  intro n
  simp only [A070610, Nat.add_sub_cancel, A070610.P6114585860892064341.a, A070610.P5818742011114903418.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A074754, A074754.P14534040090181209810.f1, A074754.P14534040090181209810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070610

/-! ## A070610.P1635615554051833733

`A074754(A064987(n+1)/(n+1))`
-/

namespace A070610.P1635615554051833733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074754 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A070610.P1635615554051833733

namespace A070610

/-- `A074754(A064987(n+1)/(n+1))` -/
def P1635615554051833733.Spec : Prop :=
  ∀ n, P1635615554051833733.a n = A070610 (n + 1)

end A070610

/-! ## A070610.P9726543018243363800

`∑{d}[A000203(n+1), A054973(#)]`
-/

namespace A070610.P9726543018243363800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054973 d

end

end A070610.P9726543018243363800

namespace A070610

/-- `∑{d}[A000203(n+1), A054973(#)]` -/
def P9726543018243363800.Spec : Prop :=
  ∀ n, P9726543018243363800.a n = A070610 (n + 1)

end A070610

/-! ## A070610.P7613779147305873046

`∑{d}[1-A088580(n+1), A054973(#)]`
-/

namespace A070610.P7613779147305873046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054973 d

end

end A070610.P7613779147305873046

namespace A070610

/-- `∑{d}[1-A088580(n+1), A054973(#)]` -/
def P7613779147305873046.Spec : Prop :=
  ∀ n, P7613779147305873046.a n = A070610 (n + 1)

end A070610

/-! ## A070610.P5179000413319857037

`∑{d}[A245092(2*n+1), A054973(#)]`
-/

namespace A070610.P5179000413319857037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054973 d

end

end A070610.P5179000413319857037

namespace A070610

/-- `∑{d}[A245092(2*n+1), A054973(#)]` -/
def P5179000413319857037.Spec : Prop :=
  ∀ n, P5179000413319857037.a n = A070610 (n + 1)

end A070610

/-! ## A070610.P6052818439480919445

`∑{d}[A001065(n+1)+1+n, A054973(#)]`
-/

namespace A070610.P6052818439480919445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054973 d

end

end A070610.P6052818439480919445

namespace A070610

/-- `∑{d}[A001065(n+1)+1+n, A054973(#)]` -/
def P6052818439480919445.Spec : Prop :=
  ∀ n, P6052818439480919445.a n = A070610 (n + 1)

end A070610

/-! ## A070610.P477211770626986333

`∑{d}[A155085(n+1)-(n+1), A054973(#)]`
-/

namespace A070610.P477211770626986333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054973 d

end

end A070610.P477211770626986333

namespace A070610

/-- `∑{d}[A155085(n+1)-(n+1), A054973(#)]` -/
def P477211770626986333.Spec : Prop :=
  ∀ n, P477211770626986333.a n = A070610 (n + 1)

end A070610

/-! ## A070610.P8240728789754367727

`∑{d}[A064987(n+1)/(n+1), A054973(#)]`
-/

namespace A070610.P8240728789754367727
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A054973 d

end

end A070610.P8240728789754367727

namespace A070610

/-- `∑{d}[A064987(n+1)/(n+1), A054973(#)]` -/
def P8240728789754367727.Spec : Prop :=
  ∀ n, P8240728789754367727.a n = A070610 (n + 1)

end A070610

/-! ## A070610.P6141771886080029317

`∑{d}[A088001(n+1)+A088000(n+1), A054973(#)]`
-/

namespace A070610.P6141771886080029317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088001 (n + 1) + A088000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054973 d

end

end A070610.P6141771886080029317

namespace A070610

/-- `∑{d}[A088001(n+1)+A088000(n+1), A054973(#)]` -/
def P6141771886080029317.Spec : Prop :=
  ∀ n, P6141771886080029317.a n = A070610 (n + 1)

end A070610

/-! ## A070610.P11621804924914404926

`∑{d}[A162296(n+1)+A048250(n+1), A054973(#)]`
-/

namespace A070610.P11621804924914404926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1) + A048250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054973 d

end

end A070610.P11621804924914404926

namespace A070610

/-- `∑{d}[A162296(n+1)+A048250(n+1), A054973(#)]` -/
def P11621804924914404926.Spec : Prop :=
  ∀ n, P11621804924914404926.a n = A070610 (n + 1)

end A070610

/-!
# A070611: a(n) = n^5 mod 27.

The programs for A070611, the canonical program `A070611.P11658201062847179891` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070611 has offset 0).

The definition of A070611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%27` (program `A070611.P11658201062847179891`, by `A070611.P11658201062847179891.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070611.P11658201062847179891

`(n^5)%27`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070611

/-- `(n^5)%27` -/
def P11658201062847179891.Spec : Prop :=
  ∀ n, (P11658201062847179891.a n : ℤ) = A070611 n

theorem P11658201062847179891.correct : P11658201062847179891.Spec := by
  intro n
  simp only [A070611]

end A070611

/-!
# A070612: n^5 mod 28.

The programs for A070612, the canonical program `A070612.P3663876166421854294` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070612 has offset 0).

The definition of A070612 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%28` (program `A070612.P3663876166421854294`, by `A070612.P3663876166421854294.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070612.P3663876166421854294

`(n^5)%28`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070612

/-- `(n^5)%28` -/
def P3663876166421854294.Spec : Prop :=
  ∀ n, (P3663876166421854294.a n : ℤ) = A070612 n

theorem P3663876166421854294.correct : P3663876166421854294.Spec := by
  intro n
  simp only [A070612]

end A070612

/-!
# A070613: a(n) = n^5 mod 29.

The programs for A070613, the canonical program `A070613.P9604283639497680894` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070613 has offset 0).

The definition of A070613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%29` (program `A070613.P9604283639497680894`, by `A070613.P9604283639497680894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070613.P9604283639497680894

`(n^5)%29`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070613

/-- `(n^5)%29` -/
def P9604283639497680894.Spec : Prop :=
  ∀ n, (P9604283639497680894.a n : ℤ) = A070613 n

theorem P9604283639497680894.correct : P9604283639497680894.Spec := by
  intro n
  simp only [A070613]

end A070613

/-!
# A070614: a(n) = n^5 mod 31.

The programs for A070614, the canonical program `A070614.P1153951477243074511` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070614 has offset 0).

The definition of A070614 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%31` (program `A070614.P1153951477243074511`, by `A070614.P1153951477243074511.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070614.P1153951477243074511

`(n^5)%31`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070614

/-- `(n^5)%31` -/
def P1153951477243074511.Spec : Prop :=
  ∀ n, (P1153951477243074511.a n : ℤ) = A070614 n

theorem P1153951477243074511.correct : P1153951477243074511.Spec := by
  intro n
  simp only [A070614]

end A070614

/-!
# A070615: Minimal difference between any two digits of n in base 10.

The programs for A070615, there is no canonical definition to state claims against.
-/

/-! ## A070615.P11635710601381469059

`A080465(n)%A001536(A151878(n))`
-/

namespace A070615.P11635710601381469059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080465 (n + 10)) (A001536 (A151878 n).toNat)

end

end A070615.P11635710601381469059

/-! ## A070615.P3772898084647412897

`A007954(or(A080465(n), A151878(n)))`
-/

namespace A070615.P3772898084647412897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (Int.lor (A080465 (n + 10)) (A151878 n)).toNat

end

end A070615.P3772898084647412897

/-! ## A070615.P4314570648908637792

`A007954(A080465(n))*A307156(A307118(n+1))`
-/

namespace A070615.P4314570648908637792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A080465 (n + 10)).toNat * A307156 (A307118 (n + 1)).toNat

end

end A070615.P4314570648908637792

/-! ## A070615.P8509223374997430428

`A007954(A080465(n))%A119249(A193564(n+1)+1)`
-/

namespace A070615.P8509223374997430428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007954 (A080465 (n + 10)).toNat) (A119249 (A193564 (n + 1) + 1).toNat)

end

end A070615.P8509223374997430428

/-!
# A070616: a(n) = n^5 mod 33.

The programs for A070616, the canonical program `A070616.P9172666136454872006` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070616 has offset 0).

The definition of A070616 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%33` (program `A070616.P9172666136454872006`, by `A070616.P9172666136454872006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070616.P9172666136454872006

`(n^5)%33`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070616

/-- `(n^5)%33` -/
def P9172666136454872006.Spec : Prop :=
  ∀ n, (P9172666136454872006.a n : ℤ) = A070616 n

theorem P9172666136454872006.correct : P9172666136454872006.Spec := by
  intro n
  simp only [A070616]

end A070616

/-!
# A070617: a(n) = n^5 mod 34.

The programs for A070617, the canonical program `A070617.P6815704200243328263` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070617 has offset 0).

The definition of A070617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%34` (program `A070617.P6815704200243328263`, by `A070617.P6815704200243328263.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070617.P6815704200243328263

`(n^5)%34`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070617

/-- `(n^5)%34` -/
def P6815704200243328263.Spec : Prop :=
  ∀ n, (P6815704200243328263.a n : ℤ) = A070617 n

theorem P6815704200243328263.correct : P6815704200243328263.Spec := by
  intro n
  simp only [A070617]

end A070617

/-!
# A070618: a(n) = n^5 mod 35.

The programs for A070618, the canonical program `A070618.P5472341875136748655` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070618 has offset 0).

The definition of A070618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%35` (program `A070618.P5472341875136748655`, by `A070618.P5472341875136748655.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070618.P5472341875136748655

`(n^5)%35`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070618

/-- `(n^5)%35` -/
def P5472341875136748655.Spec : Prop :=
  ∀ n, (P5472341875136748655.a n : ℤ) = A070618 n

theorem P5472341875136748655.correct : P5472341875136748655.Spec := by
  intro n
  simp only [A070618]

end A070618

/-!
# A070619: a(n) = n^5 mod 36.

The programs for A070619, the canonical program `A070619.P3909071996074613635` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070619 has offset 0).

The definition of A070619 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%36` (program `A070619.P3909071996074613635`, by `A070619.P3909071996074613635.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070619.P3909071996074613635

`(n^5)%36`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070619

/-- `(n^5)%36` -/
def P3909071996074613635.Spec : Prop :=
  ∀ n, (P3909071996074613635.a n : ℤ) = A070619 n

theorem P3909071996074613635.correct : P3909071996074613635.Spec := by
  intro n
  simp only [A070619]

end A070619

/-!
# A070620: a(n) = n^5 mod 37.

The programs for A070620, the canonical program `A070620.P10817786413629746444` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070620 has offset 0).

The definition of A070620 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%37` (program `A070620.P10817786413629746444`, by `A070620.P10817786413629746444.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070620.P10817786413629746444

`(n^5)%37`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070620

/-- `(n^5)%37` -/
def P10817786413629746444.Spec : Prop :=
  ∀ n, (P10817786413629746444.a n : ℤ) = A070620 n

theorem P10817786413629746444.correct : P10817786413629746444.Spec := by
  intro n
  simp only [A070620]

end A070620

/-!
# A070621: a(n) = n^5 mod 38.

The programs for A070621, the canonical program `A070621.P613864729482269334` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070621 has offset 0).

The definition of A070621 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%38` (program `A070621.P613864729482269334`, by `A070621.P613864729482269334.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070621.P613864729482269334

`(n^5)%38`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070621

/-- `(n^5)%38` -/
def P613864729482269334.Spec : Prop :=
  ∀ n, (P613864729482269334.a n : ℤ) = A070621 n

theorem P613864729482269334.correct : P613864729482269334.Spec := by
  intro n
  simp only [A070621]

end A070621

/-!
# A070622: a(n) = n^5 mod 39.

The programs for A070622, the canonical program `A070622.P5989575180887111861` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070622 has offset 0).

The definition of A070622 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%39` (program `A070622.P5989575180887111861`, by `A070622.P5989575180887111861.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070622.P5989575180887111861

`(n^5)%39`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070622

/-- `(n^5)%39` -/
def P5989575180887111861.Spec : Prop :=
  ∀ n, (P5989575180887111861.a n : ℤ) = A070622 n

theorem P5989575180887111861.correct : P5989575180887111861.Spec := by
  intro n
  simp only [A070622]

end A070622

/-!
# A070623: a(n) = n^5 mod 40.

The programs for A070623, the canonical program `A070623.P16155948804434859538` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070623 has offset 0).

The definition of A070623 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%40` (program `A070623.P16155948804434859538`, by `A070623.P16155948804434859538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070623.P16155948804434859538

`(n^5)%40`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070623

/-- `(n^5)%40` -/
def P16155948804434859538.Spec : Prop :=
  ∀ n, (P16155948804434859538.a n : ℤ) = A070623 n

theorem P16155948804434859538.correct : P16155948804434859538.Spec := by
  intro n
  simp only [A070623]

end A070623

/-!
# A070624: a(n) = n^5 mod 41.

The programs for A070624, the canonical program `A070624.P12215836320204559886` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070624 has offset 0).

The definition of A070624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%41` (program `A070624.P12215836320204559886`, by `A070624.P12215836320204559886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070624.P12215836320204559886

`(n^5)%41`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070624

/-- `(n^5)%41` -/
def P12215836320204559886.Spec : Prop :=
  ∀ n, (P12215836320204559886.a n : ℤ) = A070624 n

theorem P12215836320204559886.correct : P12215836320204559886.Spec := by
  intro n
  simp only [A070624]

end A070624

/-!
# A070625: a(n) = n^5 mod 42.

The programs for A070625, the canonical program `A070625.P7186550585686977704` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070625 has offset 0).

The definition of A070625 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%42` (program `A070625.P7186550585686977704`, by `A070625.P7186550585686977704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070625.P7186550585686977704

`(n^5)%42`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070625

/-- `(n^5)%42` -/
def P7186550585686977704.Spec : Prop :=
  ∀ n, (P7186550585686977704.a n : ℤ) = A070625 n

theorem P7186550585686977704.correct : P7186550585686977704.Spec := by
  intro n
  simp only [A070625]

end A070625

/-!
# A070626: a(n) = n^5 mod 43.

The programs for A070626, the canonical program `A070626.P6219294263075521353` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070626 has offset 0).

The definition of A070626 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%43` (program `A070626.P6219294263075521353`, by `A070626.P6219294263075521353.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070626.P6219294263075521353

`(n^5)%43`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070626

/-- `(n^5)%43` -/
def P6219294263075521353.Spec : Prop :=
  ∀ n, (P6219294263075521353.a n : ℤ) = A070626 n

theorem P6219294263075521353.correct : P6219294263075521353.Spec := by
  intro n
  simp only [A070626]

end A070626

/-!
# A070627: a(n) = n^5 mod 44.

The programs for A070627, the canonical program `A070627.P7012231911529578705` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070627 has offset 0).

The definition of A070627 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%44` (program `A070627.P7012231911529578705`, by `A070627.P7012231911529578705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070627.P7012231911529578705

`(n^5)%44`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070627

/-- `(n^5)%44` -/
def P7012231911529578705.Spec : Prop :=
  ∀ n, (P7012231911529578705.a n : ℤ) = A070627 n

theorem P7012231911529578705.correct : P7012231911529578705.Spec := by
  intro n
  simp only [A070627]

end A070627

/-!
# A070628: a(n) = n^5 mod 45.

The programs for A070628, the canonical program `A070628.P2215670471522195395` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070628 has offset 0).

The definition of A070628 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%45` (program `A070628.P2215670471522195395`, by `A070628.P2215670471522195395.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070628.P2215670471522195395

`(n^5)%45`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070628

/-- `(n^5)%45` -/
def P2215670471522195395.Spec : Prop :=
  ∀ n, (P2215670471522195395.a n : ℤ) = A070628 n

theorem P2215670471522195395.correct : P2215670471522195395.Spec := by
  intro n
  simp only [A070628]

end A070628

/-!
# A070629: a(n) = n^5 mod 46.

The programs for A070629, the canonical program `A070629.P11584025810604400116` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070629 has offset 0).

The definition of A070629 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%46` (program `A070629.P11584025810604400116`, by `A070629.P11584025810604400116.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070629.P11584025810604400116

`(n^5)%46`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070629

/-- `(n^5)%46` -/
def P11584025810604400116.Spec : Prop :=
  ∀ n, (P11584025810604400116.a n : ℤ) = A070629 n

theorem P11584025810604400116.correct : P11584025810604400116.Spec := by
  intro n
  simp only [A070629]

end A070629

/-!
# A070630: a(n) = n^5 mod 47.

The programs for A070630, the canonical program `A070630.P4103104186709486095` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070630 has offset 0).

The definition of A070630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%47` (program `A070630.P4103104186709486095`, by `A070630.P4103104186709486095.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070630.P4103104186709486095

`(n^5)%47`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070630

/-- `(n^5)%47` -/
def P4103104186709486095.Spec : Prop :=
  ∀ n, (P4103104186709486095.a n : ℤ) = A070630 n

theorem P4103104186709486095.correct : P4103104186709486095.Spec := by
  intro n
  simp only [A070630]

end A070630

/-!
# A070631: a(n) = n^5 mod 48.

The programs for A070631, the canonical program `A070631.P8401728629825013714` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070631 has offset 0).

The definition of A070631 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%48` (program `A070631.P8401728629825013714`, by `A070631.P8401728629825013714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070631.P8401728629825013714

`(n^5)%48`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070631

/-- `(n^5)%48` -/
def P8401728629825013714.Spec : Prop :=
  ∀ n, (P8401728629825013714.a n : ℤ) = A070631 n

theorem P8401728629825013714.correct : P8401728629825013714.Spec := by
  intro n
  simp only [A070631]

end A070631

/-!
# A070633: a(n) is the number of k>0 such that phi(k) divides n.

The programs for A070633, there is no canonical definition to state claims against.
-/

/-! ## A070633.P18097904578615604633

`∑{d}[n+1, A014197(#)]`
-/

namespace A070633.P18097904578615604633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014197 d

end

end A070633.P18097904578615604633

/-! ## A070633.P9934994739972282569

`∑{d}[n+1, A001511(#)*A280712((n+1)/#)]`
-/

namespace A070633.P9934994739972282569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A280712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070633.P9934994739972282569

/-! ## A070633.P5391279538638017268

`A071181(A319048(n+1))%A272580(A000720((2*n+1)²))`
-/

namespace A070633.P5391279538638017268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071181 (A319048 (n + 1)).toNat) (A272580 (A000720 ((2 * n + 1) ^ 2)).toNat)

end

end A070633.P5391279538638017268

/-! ## A070633.P11231193994610905205

`A071181(A319048(n+1))%p?[A014848(n)]`
-/

namespace A070633.P11231193994610905205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071181 (A319048 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A070633.P11231193994610905205

/-! ## A070633.P165351183798892087

`lcm(A071181(A319048(n+1)), A155040(n))`
-/

namespace A070633.P165351183798892087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071181 (A319048 (n + 1)).toNat) (A155040 n)

end

end A070633.P165351183798892087

/-! ## A070633.P4588188306340732223

`A071181(A155040(n)²*A319048(n+1))`
-/

namespace A070633.P4588188306340732223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071181 (A155040 n ^ 2 * A319048 (n + 1)).toNat

end

end A070633.P4588188306340732223

/-! ## A070633.P2104350517852293566

`A071181(A319048(n+1)/A155040(n)²)`
-/

namespace A070633.P2104350517852293566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071181 (SequenceMachineLib.roundAway ((A319048 (n + 1) : ℚ) / (A155040 n ^ 2 : ℚ))).toNat

end

end A070633.P2104350517852293566

/-! ## A070633.P3934818817373456360

`A071181(A319048(n+1)+n*A151909(n))`
-/

namespace A070633.P3934818817373456360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071181 (A319048 (n + 1) + (n : ℤ) * A151909 n).toNat

end

end A070633.P3934818817373456360

/-! ## A070633.P568190987462675179

`A007140(A151909(n))*A071181(A319048(n+1))`
-/

namespace A070633.P568190987462675179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007140 (A151909 n).toNat * A071181 (A319048 (n + 1)).toNat

end

end A070633.P568190987462675179

/-! ## A070633.P10235845391460558929

`A071181(A155040(n)*A319048(n+1)*A155040(n))`
-/

namespace A070633.P10235845391460558929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071181 (A155040 n * A319048 (n + 1) * A155040 n).toNat

end

end A070633.P10235845391460558929

/-!
# A070634: a(n) = n^6 mod 11.

The programs for A070634, the canonical program `A070634.P5221792269490572766` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070634 has offset 0).

The definition of A070634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%11` (program `A070634.P5221792269490572766`, by `A070634.P5221792269490572766.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070634.P5221792269490572766

`(n^6)%11`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070634

/-- `(n^6)%11` -/
def P5221792269490572766.Spec : Prop :=
  ∀ n, (P5221792269490572766.a n : ℤ) = A070634 n

theorem P5221792269490572766.correct : P5221792269490572766.Spec := by
  intro n
  simp only [A070634]

end A070634

/-!
# A070635: a(n) = n mod (sum of digits of n).

The programs for A070635, the canonical program `A070635.P9037631964849950479` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070635 has offset 1).

The definition of A070635 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070635.P9037631964849950479

`(n+1)%A007953(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070635

/-- `(n+1)%A007953(n+1)` -/
def P9037631964849950479.Spec : Prop :=
  ∀ n, P9037631964849950479.a n = A070635 (n + 1)

theorem P9037631964849950479.correct : P9037631964849950479.Spec := by
  intro n
  simp only [A070635, Nat.add_sub_cancel]

end A070635

/-! ## A070635.P8407493001577331723

`(n+1)%∑{digits}[n+1, #]`
-/

namespace A070635.P8407493001577331723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A070635.P8407493001577331723

namespace A070635

/-- `(n+1)%∑{digits}[n+1, #]` -/
def P8407493001577331723.Spec : Prop :=
  ∀ n, (P8407493001577331723.a n : ℤ) = A070635 (n + 1)

end A070635

/-! ## A070635.P13141136926212035973

`(n+1)%Δ[A037123(n)]`
-/

namespace A070635.P13141136926212035973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A070635.P13141136926212035973

namespace A070635

/-- `(n+1)%Δ[A037123(n)]` -/
def P13141136926212035973.Spec : Prop :=
  ∀ n, P13141136926212035973.a n = A070635 (n + 1)

end A070635

/-! ## A070635.P255864315833845014

`n+1-A007953(n+1)*A066578(n+1)`
-/

namespace A070635.P255864315833845014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007953 (n + 1) * A066578 (n + 1)

end

end A070635.P255864315833845014

namespace A070635

/-- `n+1-A007953(n+1)*A066578(n+1)` -/
def P255864315833845014.Spec : Prop :=
  ∀ n, P255864315833845014.a n = A070635 (n + 1)

end A070635

/-! ## A070635.P1155852829320992099

`A062028(n+1)%(n+1-A062028(n+1))`
-/

namespace A070635.P1155852829320992099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062028 (n + 1)) ((n + 1 : ℤ) - A062028 (n + 1))

end

end A070635.P1155852829320992099

namespace A070635

/-- `A062028(n+1)%(n+1-A062028(n+1))` -/
def P1155852829320992099.Spec : Prop :=
  ∀ n, P1155852829320992099.a n = A070635 (n + 1)

end A070635

/-! ## A070635.P18322886941722517428

`A125960(n+1)%A115299(n+1)`
-/

namespace A070635.P18322886941722517428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125960 (n + 1)) (A115299 (n + 1))

end

end A070635.P18322886941722517428

namespace A070635

/-- `A125960(n+1)%A115299(n+1)` -/
def P18322886941722517428.Spec : Prop :=
  ∀ n, P18322886941722517428.a n = A070635 (n + 1)

end A070635

/-!
# A070636: a(n) = n^6 mod 13.

The programs for A070636, the canonical program `A070636.P458347136884930074` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070636 has offset 0).

The definition of A070636 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%13` (program `A070636.P458347136884930074`, by `A070636.P458347136884930074.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070636.P458347136884930074

`(n^6)%13`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070636

/-- `(n^6)%13` -/
def P458347136884930074.Spec : Prop :=
  ∀ n, (P458347136884930074.a n : ℤ) = A070636 n

theorem P458347136884930074.correct : P458347136884930074.Spec := by
  intro n
  simp only [A070636]

end A070636

/-!
# A070637: a(n) = n^6 mod 14.

The programs for A070637, the canonical program `A070637.P13297676816007351529` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070637 has offset 0).

The definition of A070637 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%14` (program `A070637.P13297676816007351529`, by `A070637.P13297676816007351529.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070637.P13297676816007351529

`(n^6)%14`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070637

/-- `(n^6)%14` -/
def P13297676816007351529.Spec : Prop :=
  ∀ n, (P13297676816007351529.a n : ℤ) = A070637 n

theorem P13297676816007351529.correct : P13297676816007351529.Spec := by
  intro n
  simp only [A070637]

end A070637

/-!
# A070639: a(n) = (1/phi(n))*Sum_{k=1..n} phi(n*k).

The programs for A070639, the canonical program `A070639.P15383179853556692180` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070639 has offset 1).

The definition of A070639 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070639.P15383179853556692180

`1/A000010(n+1)*∑{#}[n, A000010((n+1)*(#+1))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A070639

/-- `1/A000010(n+1)*∑{#}[n, A000010((n+1)*(#+1))]` -/
def P15383179853556692180.Spec : Prop :=
  ∀ n, P15383179853556692180.a n = (A070639 (n + 1) : ℚ)

end A070639

/-! ## A070639.P12138034659439877190

`A372608(n+1)/A000010(n+1)`
-/

namespace A070639.P12138034659439877190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372608 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A070639.P12138034659439877190

namespace A070639

/-- `A372608(n+1)/A000010(n+1)` -/
def P12138034659439877190.Spec : Prop :=
  ∀ n, P12138034659439877190.a n = (A070639 (n + 1) : ℚ)

end A070639

/-! ## A070639.P18296614024569771241

`A372608(n+1)/(A002088(n+1)-A002088(n))`
-/

namespace A070639.P18296614024569771241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372608 (n + 1) : ℚ) / (A002088 (n + 1) - A002088 n : ℚ)

end

end A070639.P18296614024569771241

namespace A070639

/-- `A372608(n+1)/(A002088(n+1)-A002088(n))` -/
def P18296614024569771241.Spec : Prop :=
  ∀ n, P18296614024569771241.a n = (A070639 (n + 1) : ℚ)

end A070639

/-! ## A070639.P11142681360590338406

`A372608(n+1)/(A076363(n+1)+A061498(n+1))`
-/

namespace A070639.P11142681360590338406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372608 (n + 1) : ℚ) / (A076363 (n + 1) + A061498 (n + 1) : ℚ)

end

end A070639.P11142681360590338406

namespace A070639

/-- `A372608(n+1)/(A076363(n+1)+A061498(n+1))` -/
def P11142681360590338406.Spec : Prop :=
  ∀ n, P11142681360590338406.a n = (A070639 (n + 1) : ℚ)

end A070639

/-! ## A070639.P3116336700701608398

`A372608(n+1)/(A000040(n+1)-A104192(n+1))`
-/

namespace A070639.P3116336700701608398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372608 (n + 1) : ℚ) / (A000040 (n + 1) - A104192 (n + 1) : ℚ)

end

end A070639.P3116336700701608398

namespace A070639

/-- `A372608(n+1)/(A000040(n+1)-A104192(n+1))` -/
def P3116336700701608398.Spec : Prop :=
  ∀ n, P3116336700701608398.a n = (A070639 (n + 1) : ℚ)

end A070639

/-! ## A070639.P13373444527546473409

`A372608(n+1)/A067541(2*n+1)`
-/

namespace A070639.P13373444527546473409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372608 (n + 1) : ℚ) / (A067541 (2 * n + 1) : ℚ)

end

end A070639.P13373444527546473409

namespace A070639

/-- `A372608(n+1)/A067541(2*n+1)` -/
def P13373444527546473409.Spec : Prop :=
  ∀ n, P13373444527546473409.a n = (A070639 (n + 1) : ℚ)

end A070639

/-! ## A070639.P12605123101078579876

`A372608(n+1)/(A345674(n+1)+A046144(n+1))`
-/

namespace A070639.P12605123101078579876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372608 (n + 1) : ℚ) / (A345674 (n + 1) + A046144 (n + 1) : ℚ)

end

end A070639.P12605123101078579876

namespace A070639

/-- `A372608(n+1)/(A345674(n+1)+A046144(n+1))` -/
def P12605123101078579876.Spec : Prop :=
  ∀ n, P12605123101078579876.a n = (A070639 (n + 1) : ℚ)

end A070639

/-! ## A070639.P6045993529231584300

`A372619((n+1)²+n²)`
-/

namespace A070639.P6045993529231584300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372619 ((n + 1) ^ 2 + n ^ 2)

end

end A070639.P6045993529231584300

namespace A070639

/-- `A372619((n+1)²+n²)` -/
def P6045993529231584300.Spec : Prop :=
  ∀ n, P6045993529231584300.a n = A070639 (n + 1)

end A070639

/-!
# A070640: a(n) = n^6 mod 17.

The programs for A070640, the canonical program `A070640.P13352665983296541484` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070640 has offset 0).

The definition of A070640 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%17` (program `A070640.P13352665983296541484`, by `A070640.P13352665983296541484.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070640.P13352665983296541484

`(n^6)%17`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070640

/-- `(n^6)%17` -/
def P13352665983296541484.Spec : Prop :=
  ∀ n, (P13352665983296541484.a n : ℤ) = A070640 n

theorem P13352665983296541484.correct : P13352665983296541484.Spec := by
  intro n
  simp only [A070640]

end A070640

/-!
# A070641: a(n) = n^6 mod 18.

The programs for A070641, the canonical program `A070641.P1536320297944298394` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070641 has offset 0).

The definition of A070641 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%18` (program `A070641.P1536320297944298394`, by `A070641.P1536320297944298394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070641.P1536320297944298394

`(n^6)%18`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070641

/-- `(n^6)%18` -/
def P1536320297944298394.Spec : Prop :=
  ∀ n, (P1536320297944298394.a n : ℤ) = A070641 n

theorem P1536320297944298394.correct : P1536320297944298394.Spec := by
  intro n
  simp only [A070641]

end A070641

/-!
# A070642: a(n) = n^6 mod 19.

The programs for A070642, the canonical program `A070642.P13065058208812181642` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070642 has offset 0).

The definition of A070642 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%19` (program `A070642.P13065058208812181642`, by `A070642.P13065058208812181642.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070642.P13065058208812181642

`(n^6)%19`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070642

/-- `(n^6)%19` -/
def P13065058208812181642.Spec : Prop :=
  ∀ n, (P13065058208812181642.a n : ℤ) = A070642 n

theorem P13065058208812181642.correct : P13065058208812181642.Spec := by
  intro n
  simp only [A070642]

end A070642

/-!
# A070644: a(n) = n^6 mod 21.

The programs for A070644, the canonical program `A070644.P1859451650697066523` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070644 has offset 0).

The definition of A070644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%21` (program `A070644.P1859451650697066523`, by `A070644.P1859451650697066523.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070644.P1859451650697066523

`(n^6)%21`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070644

/-- `(n^6)%21` -/
def P1859451650697066523.Spec : Prop :=
  ∀ n, (P1859451650697066523.a n : ℤ) = A070644 n

theorem P1859451650697066523.correct : P1859451650697066523.Spec := by
  intro n
  simp only [A070644]

end A070644

/-!
# A070645: a(n) = n^6 mod 22.

The programs for A070645, the canonical program `A070645.P7843175072023001332` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070645 has offset 0).

The definition of A070645 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%22` (program `A070645.P7843175072023001332`, by `A070645.P7843175072023001332.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070645.P7843175072023001332

`(n^6)%22`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070645

/-- `(n^6)%22` -/
def P7843175072023001332.Spec : Prop :=
  ∀ n, (P7843175072023001332.a n : ℤ) = A070645 n

theorem P7843175072023001332.correct : P7843175072023001332.Spec := by
  intro n
  simp only [A070645]

end A070645

/-!
# A070646: a(n) = n^6 mod 23.

The programs for A070646, the canonical program `A070646.P5507643922852492635` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070646 has offset 0).

The definition of A070646 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%23` (program `A070646.P5507643922852492635`, by `A070646.P5507643922852492635.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070646.P5507643922852492635

`(n^6)%23`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070646

/-- `(n^6)%23` -/
def P5507643922852492635.Spec : Prop :=
  ∀ n, (P5507643922852492635.a n : ℤ) = A070646 n

theorem P5507643922852492635.correct : P5507643922852492635.Spec := by
  intro n
  simp only [A070646]

end A070646

/-!
# A070647: Largest prime factor of sequence of numbers of the form p*q (p, q distinct primes).

The programs for A070647, the canonical program `A070647.P17414815730449283584` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070647 has offset 1).

The definition of A070647 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, A096916, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070647.P17414815730449283584

`A006881(n+1)/A096916(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A070647

/-- `A006881(n+1)/A096916(n+1)` -/
def P17414815730449283584.Spec : Prop :=
  ∀ n, P17414815730449283584.a n = (A070647 (n + 1) : ℚ)

end A070647

/-! ## A070647.P12283254049077224816

`A343004(2*(n+1))`
-/

namespace A070647.P12283254049077224816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 (2 * (n + 1))

end

end A070647.P12283254049077224816

namespace A070647

/-- `A343004(2*(n+1))` -/
def P12283254049077224816.Spec : Prop :=
  ∀ n, P12283254049077224816.a n = A070647 (n + 1)

end A070647

/-! ## A070647.P13917952152653473459

`p?[gcd(n+1, ((n+1)/A020639(n+1))²)]`
-/

namespace A070647.P13917952152653473459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (A020639 (n + 1) : ℚ)) ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A070647.P13917952152653473459

namespace A070647

/-- `p?[gcd(n+1, ((n+1)/A020639(n+1))²)]` -/
def P13917952152653473459.Spec : Prop :=
  ∀ n, (P13917952152653473459.a n : ℤ) = A070647 (n + 1)

end A070647

/-! ## A070647.P14502680554312559808

`A006530(A006881(n+1))`
-/

namespace A070647.P14502680554312559808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006881 (n + 1)).toNat

end

end A070647.P14502680554312559808

namespace A070647

/-- `A006530(A006881(n+1))` -/
def P14502680554312559808.Spec : Prop :=
  ∀ n, P14502680554312559808.a n = A070647 (n + 1)

end A070647

/-! ## A070647.P12273228833058695356

`A006530(eq[4, A077462(n)])`
-/

namespace A070647.P12273228833058695356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070647.P12273228833058695356

namespace A070647

/-- `A006530(eq[4, A077462(n)])` -/
def P12273228833058695356.Spec : Prop :=
  ∀ n, P12273228833058695356.a n = A070647 (n + 1)

end A070647

/-! ## A070647.P9794587397364103210

`A006530(sqrt(A085986(n+1)))`
-/

namespace A070647.P9794587397364103210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A085986 (n + 1) : ℝ))).toNat

end

end A070647.P9794587397364103210

namespace A070647

/-- `A006530(sqrt(A085986(n+1)))` -/
def P9794587397364103210.Spec : Prop :=
  ∀ n, P9794587397364103210.a n = A070647 (n + 1)

end A070647

/-! ## A070647.P4075945832627816487

`A006530(eq[2, A046645(n+1)]+1)`
-/

namespace A070647.P4075945832627816487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A070647.P4075945832627816487

namespace A070647

/-- `A006530(eq[2, A046645(n+1)]+1)` -/
def P4075945832627816487.Spec : Prop :=
  ∀ n, P4075945832627816487.a n = A070647 (n + 1)

end A070647

/-! ## A070647.P5419240529142020425

`A228578(n+1)-A096916(n+1)`
-/

namespace A070647.P5419240529142020425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228578 (n + 1) - A096916 (n + 1)

end

end A070647.P5419240529142020425

namespace A070647

/-- `A228578(n+1)-A096916(n+1)` -/
def P5419240529142020425.Spec : Prop :=
  ∀ n, P5419240529142020425.a n = A070647 (n + 1)

end A070647

/-! ## A070647.P10065471437498506728

`A034699(A006881(2*n+1-n))`
-/

namespace A070647.P10065471437498506728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A006881 (2 * n + 1 - n)).toNat

end

end A070647.P10065471437498506728

namespace A070647

/-- `A034699(A006881(2*n+1-n))` -/
def P10065471437498506728.Spec : Prop :=
  ∀ n, P10065471437498506728.a n = A070647 (n + 1)

end A070647

/-! ## A070647.P10375637526916366760

`A006530(eq[3, A074206(n)])`
-/

namespace A070647.P10375637526916366760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070647.P10375637526916366760

namespace A070647

/-- `A006530(eq[3, A074206(n)])` -/
def P10375637526916366760.Spec : Prop :=
  ∀ n, P10375637526916366760.a n = A070647 (n + 1)

end A070647

/-! ## A070647.P2755733026496388863

`A081812(A161918(n+2))`
-/

namespace A070647.P2755733026496388863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081812 (A161918 (n + 2)).toNat

end

end A070647.P2755733026496388863

namespace A070647

/-- `A081812(A161918(n+2))` -/
def P2755733026496388863.Spec : Prop :=
  ∀ n, P2755733026496388863.a n = A070647 (n + 1)

end A070647

/-! ## A070647.P5719122133472255733

`A002034(A006881(n+1))`
-/

namespace A070647.P5719122133472255733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A006881 (n + 1)).toNat

end

end A070647.P5719122133472255733

namespace A070647

/-- `A002034(A006881(n+1))` -/
def P5719122133472255733.Spec : Prop :=
  ∀ n, P5719122133472255733.a n = A070647 (n + 1)

end A070647

/-! ## A070647.P6567362582976709024

`A006530(eq[2, A066882(n)])`
-/

namespace A070647.P6567362582976709024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070647.P6567362582976709024

namespace A070647

/-- `A006530(eq[2, A066882(n)])` -/
def P6567362582976709024.Spec : Prop :=
  ∀ n, P6567362582976709024.a n = A070647 (n + 1)

end A070647

/-! ## A070647.P17999310892085630285

`A032742(eq[2, A066882(n)])`
-/

namespace A070647.P17999310892085630285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070647.P17999310892085630285

namespace A070647

/-- `A032742(eq[2, A066882(n)])` -/
def P17999310892085630285.Spec : Prop :=
  ∀ n, P17999310892085630285.a n = A070647 (n + 1)

end A070647

/-! ## A070647.P1234952264612495534

`A306264(eq[2, A066882(n)])-1`
-/

namespace A070647.P1234952264612495534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A070647.P1234952264612495534

namespace A070647

/-- `A306264(eq[2, A066882(n)])-1` -/
def P1234952264612495534.Spec : Prop :=
  ∀ n, P1234952264612495534.a n = A070647 (n + 1)

end A070647

/-! ## A070647.P10854691705968529158

`p?[A032742(record[A007947(n+1)])]`
-/

namespace A070647.P10854691705968529158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070647.P10854691705968529158

namespace A070647

/-- `p?[A032742(record[A007947(n+1)])]` -/
def P10854691705968529158.Spec : Prop :=
  ∀ n, P10854691705968529158.a n = A070647 (n + 1)

end A070647

/-!
# A070648: a(n) = n^6 mod 25.

The programs for A070648, the canonical program `A070648.P3587089535205217080` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070648 has offset 0).

The definition of A070648 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%25` (program `A070648.P3587089535205217080`, by `A070648.P3587089535205217080.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070648.P3587089535205217080

`(n^6)%25`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070648

/-- `(n^6)%25` -/
def P3587089535205217080.Spec : Prop :=
  ∀ n, (P3587089535205217080.a n : ℤ) = A070648 n

theorem P3587089535205217080.correct : P3587089535205217080.Spec := by
  intro n
  simp only [A070648]

end A070648

/-!
# A070649: a(n) = n^6 mod 26.

The programs for A070649, the canonical program `A070649.P5497107033750592366` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070649 has offset 0).

The definition of A070649 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%26` (program `A070649.P5497107033750592366`, by `A070649.P5497107033750592366.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070649.P5497107033750592366

`(n^6)%26`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070649

/-- `(n^6)%26` -/
def P5497107033750592366.Spec : Prop :=
  ∀ n, (P5497107033750592366.a n : ℤ) = A070649 n

theorem P5497107033750592366.correct : P5497107033750592366.Spec := by
  intro n
  simp only [A070649]

end A070649

/-!
# A070650: a(n) = n^6 mod 27.

The programs for A070650, the canonical program `A070650.P11488115335532773492` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070650 has offset 0).

The definition of A070650 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%27` (program `A070650.P11488115335532773492`, by `A070650.P11488115335532773492.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070650.P11488115335532773492

`(n^6)%27`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070650

/-- `(n^6)%27` -/
def P11488115335532773492.Spec : Prop :=
  ∀ n, (P11488115335532773492.a n : ℤ) = A070650 n

theorem P11488115335532773492.correct : P11488115335532773492.Spec := by
  intro n
  simp only [A070650]

end A070650

/-!
# A070651: a(n) = n^6 mod 28.

The programs for A070651, the canonical program `A070651.P6834262170941446172` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070651 has offset 0).

The definition of A070651 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%28` (program `A070651.P6834262170941446172`, by `A070651.P6834262170941446172.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070651.P6834262170941446172

`(n^6)%28`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070651

/-- `(n^6)%28` -/
def P6834262170941446172.Spec : Prop :=
  ∀ n, (P6834262170941446172.a n : ℤ) = A070651 n

theorem P6834262170941446172.correct : P6834262170941446172.Spec := by
  intro n
  simp only [A070651]

end A070651

/-!
# A070652: a(n) = n^6 mod 29.

The programs for A070652, the canonical program `A070652.P310716294929853020` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070652 has offset 0).

The definition of A070652 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%29` (program `A070652.P310716294929853020`, by `A070652.P310716294929853020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070652.P310716294929853020

`(n^6)%29`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070652

/-- `(n^6)%29` -/
def P310716294929853020.Spec : Prop :=
  ∀ n, (P310716294929853020.a n : ℤ) = A070652 n

theorem P310716294929853020.correct : P310716294929853020.Spec := by
  intro n
  simp only [A070652]

end A070652

/-!
# A070654: a(n) = n^6 mod 31.

The programs for A070654, the canonical program `A070654.P12274703441497918566` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070654 has offset 0).

The definition of A070654 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%31` (program `A070654.P12274703441497918566`, by `A070654.P12274703441497918566.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070654.P12274703441497918566

`(n^6)%31`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070654

/-- `(n^6)%31` -/
def P12274703441497918566.Spec : Prop :=
  ∀ n, (P12274703441497918566.a n : ℤ) = A070654 n

theorem P12274703441497918566.correct : P12274703441497918566.Spec := by
  intro n
  simp only [A070654]

end A070654

/-!
# A070656: a(n) = n^6 mod 33.

The programs for A070656, the canonical program `A070656.P6639742064117952948` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070656 has offset 0).

The definition of A070656 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%33` (program `A070656.P6639742064117952948`, by `A070656.P6639742064117952948.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070656.P6639742064117952948

`(n^6)%33`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070656

/-- `(n^6)%33` -/
def P6639742064117952948.Spec : Prop :=
  ∀ n, (P6639742064117952948.a n : ℤ) = A070656 n

theorem P6639742064117952948.correct : P6639742064117952948.Spec := by
  intro n
  simp only [A070656]

end A070656

/-!
# A070657: a(n) = n^6 mod 34.

The programs for A070657, the canonical program `A070657.P16779415762482396601` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070657 has offset 0).

The definition of A070657 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%34` (program `A070657.P16779415762482396601`, by `A070657.P16779415762482396601.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070657.P16779415762482396601

`(n^6)%34`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070657

/-- `(n^6)%34` -/
def P16779415762482396601.Spec : Prop :=
  ∀ n, (P16779415762482396601.a n : ℤ) = A070657 n

theorem P16779415762482396601.correct : P16779415762482396601.Spec := by
  intro n
  simp only [A070657]

end A070657

/-!
# A070658: a(n) = n^6 mod 35.

The programs for A070658, the canonical program `A070658.P18190876774045248567` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070658 has offset 0).

The definition of A070658 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%35` (program `A070658.P18190876774045248567`, by `A070658.P18190876774045248567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070658.P18190876774045248567

`(n^6)%35`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070658

/-- `(n^6)%35` -/
def P18190876774045248567.Spec : Prop :=
  ∀ n, (P18190876774045248567.a n : ℤ) = A070658 n

theorem P18190876774045248567.correct : P18190876774045248567.Spec := by
  intro n
  simp only [A070658]

end A070658

/-!
# A070659: a(n) = n^6 mod 36.

The programs for A070659, the canonical program `A070659.P1785876431740346656` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070659 has offset 0).

The definition of A070659 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%36` (program `A070659.P1785876431740346656`, by `A070659.P1785876431740346656.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070659.P1785876431740346656

`(n^6)%36`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070659

/-- `(n^6)%36` -/
def P1785876431740346656.Spec : Prop :=
  ∀ n, (P1785876431740346656.a n : ℤ) = A070659 n

theorem P1785876431740346656.correct : P1785876431740346656.Spec := by
  intro n
  simp only [A070659]

end A070659

/-!
# A070660: a(n) = n^6 mod 37.

The programs for A070660, the canonical program `A070660.P1805974761973614416` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070660 has offset 0).

The definition of A070660 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%37` (program `A070660.P1805974761973614416`, by `A070660.P1805974761973614416.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070660.P1805974761973614416

`(n^6)%37`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070660

/-- `(n^6)%37` -/
def P1805974761973614416.Spec : Prop :=
  ∀ n, (P1805974761973614416.a n : ℤ) = A070660 n

theorem P1805974761973614416.correct : P1805974761973614416.Spec := by
  intro n
  simp only [A070660]

end A070660

/-!
# A070661: a(n) = n^6 mod 38.

The programs for A070661, the canonical program `A070661.P16583307289542981959` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070661 has offset 0).

The definition of A070661 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%38` (program `A070661.P16583307289542981959`, by `A070661.P16583307289542981959.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070661.P16583307289542981959

`(n^6)%38`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070661

/-- `(n^6)%38` -/
def P16583307289542981959.Spec : Prop :=
  ∀ n, (P16583307289542981959.a n : ℤ) = A070661 n

theorem P16583307289542981959.correct : P16583307289542981959.Spec := by
  intro n
  simp only [A070661]

end A070661

/-!
# A070662: a(n) = n^6 mod 39.

The programs for A070662, the canonical program `A070662.P8335392568474009620` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070662 has offset 0).

The definition of A070662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%39` (program `A070662.P8335392568474009620`, by `A070662.P8335392568474009620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070662.P8335392568474009620

`(n^6)%39`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070662

/-- `(n^6)%39` -/
def P8335392568474009620.Spec : Prop :=
  ∀ n, (P8335392568474009620.a n : ℤ) = A070662 n

theorem P8335392568474009620.correct : P8335392568474009620.Spec := by
  intro n
  simp only [A070662]

end A070662

/-!
# A070663: a(n) = n^6 mod 40.

The programs for A070663, the canonical program `A070663.P2197963365928174202` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070663 has offset 0).

The definition of A070663 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%40` (program `A070663.P2197963365928174202`, by `A070663.P2197963365928174202.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070663.P2197963365928174202

`(n^6)%40`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070663

/-- `(n^6)%40` -/
def P2197963365928174202.Spec : Prop :=
  ∀ n, (P2197963365928174202.a n : ℤ) = A070663 n

theorem P2197963365928174202.correct : P2197963365928174202.Spec := by
  intro n
  simp only [A070663]

end A070663

/-!
# A070664: a(n) = n^6 mod 41.

The programs for A070664, the canonical program `A070664.P5376344737634216751` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070664 has offset 0).

The definition of A070664 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%41` (program `A070664.P5376344737634216751`, by `A070664.P5376344737634216751.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070664.P5376344737634216751

`(n^6)%41`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070664

/-- `(n^6)%41` -/
def P5376344737634216751.Spec : Prop :=
  ∀ n, (P5376344737634216751.a n : ℤ) = A070664 n

theorem P5376344737634216751.correct : P5376344737634216751.Spec := by
  intro n
  simp only [A070664]

end A070664

/-!
# A070665: a(n) = n^6 mod 42.

The programs for A070665, the canonical program `A070665.P6349313733821803319` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070665 has offset 0).

The definition of A070665 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%42` (program `A070665.P6349313733821803319`, by `A070665.P6349313733821803319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070665.P6349313733821803319

`(n^6)%42`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070665

/-- `(n^6)%42` -/
def P6349313733821803319.Spec : Prop :=
  ∀ n, (P6349313733821803319.a n : ℤ) = A070665 n

theorem P6349313733821803319.correct : P6349313733821803319.Spec := by
  intro n
  simp only [A070665]

end A070665

/-!
# A070666: n^6 mod 43.

The programs for A070666, the canonical program `A070666.P18326583946273921184` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070666 has offset 0).

The definition of A070666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%43` (program `A070666.P18326583946273921184`, by `A070666.P18326583946273921184.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070666.P18326583946273921184

`(n^6)%43`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070666

/-- `(n^6)%43` -/
def P18326583946273921184.Spec : Prop :=
  ∀ n, (P18326583946273921184.a n : ℤ) = A070666 n

theorem P18326583946273921184.correct : P18326583946273921184.Spec := by
  intro n
  simp only [A070666]

end A070666

/-!
# A070667: Smallest m in range 2..n-1 such that m^2 == 1 mod n, or 1 if no such number exists.

The programs for A070667, there is no canonical definition to state claims against.
-/

/-! ## A070667.P14241224201585525814

`A215653(n+1)-C(2, n²)`
-/

namespace A070667.P14241224201585525814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215653 (n + 1) - (Nat.choose 2 (n ^ 2) : ℤ)

end

end A070667.P14241224201585525814

/-! ## A070667.P15882559516669768605

`A215653(n+1)-A130706(n)`
-/

namespace A070667.P15882559516669768605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215653 (n + 1) - A130706 n

end

end A070667.P15882559516669768605

/-! ## A070667.P14305830928738928569

`A215653(lcm(n+1, a(A000034(n))))` with `a(0)=1, a(1)=1`
-/

namespace A070667.P14305830928738928569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A215653 (Int.lcm (n + 1 : ℤ) (a (A000034 n).toNat))

end

end A070667.P14305830928738928569

/-! ## A070667.P9217129151967708084

`A215653(n+1)%(a(n-1)*A215653(n+2))` with `a(0)=1`
-/

namespace A070667.P9217129151967708084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A215653 (n + 1)) (a (n - 1) * A215653 (n + 2))

end

end A070667.P9217129151967708084

/-! ## A070667.P9139405816098842872

`gcd(A215653(n+1), A318909(n+1))`
-/

namespace A070667.P9139405816098842872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215653 (n + 1)) (A318909 (n + 1))

end

end A070667.P9139405816098842872

/-! ## A070667.P5826202720414382578

`A228179(∑[A060594(n+1)]-A060594(n+1)+2)`
-/

namespace A070667.P5826202720414382578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228179 (∑ j ∈ Finset.range (n + 1), f1 j - A060594 (n + 1) + 2).toNat

end

end A070667.P5826202720414382578

/-! ## A070667.P3260168224601815367

`A215653(n+1)^A001222(A060594(A033948(n+1)))`
-/

namespace A070667.P3260168224601815367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215653 (n + 1) : ℚ) ^ (A001222 (A060594 (A033948 (n + 1)).toNat).toNat : ℤ)

end

end A070667.P3260168224601815367

/-! ## A070667.P4173367838594388795

`gcd(A002944(n+1), A215653(n+1))`
-/

namespace A070667.P4173367838594388795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002944 (n + 1)) (A215653 (n + 1))

end

end A070667.P4173367838594388795

/-! ## A070667.P11389135948787591586

`gcd(A003418(n), A215653(n+1))`
-/

namespace A070667.P11389135948787591586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A215653 (n + 1))

end

end A070667.P11389135948787591586

/-! ## A070667.P17816164034636858892

`A002262(A215653(n+1)+∑[n])`
-/

namespace A070667.P17816164034636858892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A215653 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A070667.P17816164034636858892

/-!
# A070668: Smallest m in range 2..n-1 such that m^3 == 1 mod n, or 1 if no such number exists.

The programs for A070668, there is no canonical definition to state claims against.
-/

/-! ## A070668.P11002708243290876967

`(A091733(n+1)-1)%(n+1)+1`
-/

namespace A070668.P11002708243290876967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091733 (n + 1) - 1) (n + 1 : ℤ) + 1

end

end A070668.P11002708243290876967

/-! ## A070668.P2917499517198212684

`A028310(A091733(n+1)%(n+1))`
-/

namespace A070668.P2917499517198212684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A091733 (n + 1)) (n + 1 : ℤ)).toNat

end

end A070668.P2917499517198212684

/-! ## A070668.P7060524516737788904

`A091733(n+1)^A260728(A343783(n+1))`
-/

namespace A070668.P7060524516737788904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091733 (n + 1) : ℚ) ^ (A260728 (A343783 (n + 1)).toNat : ℤ)

end

end A070668.P7060524516737788904

/-! ## A070668.P7045722432347652939

`gcd(A047918(A060839(n+1)), A091733(n+1))`
-/

namespace A070668.P7045722432347652939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047918 (A060839 (n + 1)).toNat) (A091733 (n + 1))

end

end A070668.P7045722432347652939

/-! ## A070668.P10812407828839904268

`A091733(A233583(n+2))%A233583(n+2)`
-/

namespace A070668.P10812407828839904268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091733 (A233583 (n + 2)).toNat) (A233583 (n + 2))

end

end A070668.P10812407828839904268

/-! ## A070668.P14706484924323291038

`A002260(A091733(n+1)+∑[n])`
-/

namespace A070668.P14706484924323291038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A091733 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A070668.P14706484924323291038

/-! ## A070668.P124757051643237611

`A002262(A091733(n+1)+∑[n])`
-/

namespace A070668.P124757051643237611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A091733 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A070668.P124757051643237611

/-! ## A070668.P14896877661394968648

`A051162(A091733(n+1)+∑[n+1])-(n+1)`
-/

namespace A070668.P14896877661394968648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A091733 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat - (n + 1 : ℤ)

end

end A070668.P14896877661394968648

/-!
# A070669: Smallest m in range 2..n-1 such that m^4 == 1 mod n, or 1 if no such number exists.

The programs for A070669, there is no canonical definition to state claims against.
-/

/-! ## A070669.P7535329181198915683

`A070673(n+1)*A072909(A047874(n+1))`
-/

namespace A070669.P7535329181198915683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070673 (n + 1) * A072909 (A047874 (n + 1)).toNat

end

end A070669.P7535329181198915683

/-! ## A070669.P1464061382906065229

`A070673(n+1)^A014963(A220478(2*n+1))`
-/

namespace A070669.P1464061382906065229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070673 (n + 1) : ℚ) ^ (A014963 (A220478 (2 * n + 1)).toNat : ℤ)

end

end A070669.P1464061382906065229

/-! ## A070669.P12704419202828850122

`A070673(n+1)^A128762(A047758(n+1))`
-/

namespace A070669.P12704419202828850122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070673 (n + 1) : ℚ) ^ (A128762 (A047758 (n + 1)).toNat : ℤ)

end

end A070669.P12704419202828850122

/-! ## A070669.P17535270841360522288

`A070673(n+1)^A094673(A043306(n+2))`
-/

namespace A070669.P17535270841360522288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070673 (n + 1) : ℚ) ^ (A094673 (A043306 (n + 2)).toNat : ℤ)

end

end A070669.P17535270841360522288

/-! ## A070669.P2472136136575808491

`A070672(A111795(n+1))*A070673(n+1)`
-/

namespace A070669.P2472136136575808491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070672 (A111795 (n + 1)).toNat * A070673 (n + 1)

end

end A070669.P2472136136575808491

/-!
# A070670: Smallest m in range 2..n-1 such that m^5 == 1 mod n, or 1 if no such number exists.

The programs for A070670, there is no canonical definition to state claims against.
-/

/-! ## A070670.P7698563144169776532

`gcd(A159847(n+1), A367666(n))`
-/

namespace A070670.P7698563144169776532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159847 (n + 1)) (A367666 n)

end

end A070670.P7698563144169776532

/-! ## A070670.P7394252088255843148

`A159847(n+1)^A046080(A000010(n+1))`
-/

namespace A070670.P7394252088255843148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159847 (n + 1) : ℚ) ^ (A046080 (A000010 (n + 1)).toNat : ℤ)

end

end A070670.P7394252088255843148

/-! ## A070670.P5516290027371730737

`A218577(A328062(lcm(4, n+1)))`
-/

namespace A070670.P5516290027371730737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218577 (A328062 (Nat.lcm 4 (n + 1))).toNat

end

end A070670.P5516290027371730737

/-! ## A070670.P11951162592528932922

`gcd(A139316(n+1), A146937(n+1))`
-/

namespace A070670.P11951162592528932922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139316 (n + 1)) (A146937 (n + 1))

end

end A070670.P11951162592528932922

/-! ## A070670.P10779377746913952392

`A326029(A124331(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])²))`
-/

namespace A070670.P10779377746913952392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326029 (A124331 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ 2)).toNat).toNat

end

end A070670.P10779377746913952392

/-!
# A070672: Smallest m in range 2..n-1 such that m^7 == 1 mod n, or 1 if no such number exists.

The programs for A070672, there is no canonical definition to state claims against.
-/

/-! ## A070672.P3980691127101836802

`dr(A319101(n+1)^A026725(n))`
-/

namespace A070672.P3980691127101836802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A319101 (n + 1) : ℚ) ^ (A026725 n : ℤ)))

end

end A070672.P3980691127101836802

/-! ## A070672.P17704570071584314286

`dr(A319101(n+1)^A007318(n+1))`
-/

namespace A070672.P17704570071584314286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A319101 (n + 1) : ℚ) ^ (A007318 (n + 1) : ℤ)))

end

end A070672.P17704570071584314286

/-! ## A070672.P9300429386890595006

`A000288(A079071(n)%A121420(n))`
-/

namespace A070672.P9300429386890595006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 (Int.tmod (A079071 n) (A121420 n)).toNat

end

end A070672.P9300429386890595006

/-! ## A070672.P4736528091781264261

`A182535(A319101(n+1)^A182535(n+1))`
-/

namespace A070672.P4736528091781264261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182535 (SequenceMachineLib.roundAway ((A319101 (n + 1) : ℚ) ^ (A182535 (n + 1) : ℤ))).toNat

end

end A070672.P4736528091781264261

/-! ## A070672.P9921865544518807333

`A320486(A319101(n+1)^A316893(n+2))`
-/

namespace A070672.P9921865544518807333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (SequenceMachineLib.roundAway ((A319101 (n + 1) : ℚ) ^ (A316893 (n + 2) : ℤ))).toNat

end

end A070672.P9921865544518807333

/-!
# A070673: Smallest m in range 2..n-1 such that m^8 == 1 mod n, or 1 if no such number exists.

The programs for A070673, there is no canonical definition to state claims against.
-/

/-! ## A070673.P12656490677860439833

`A070669(n+1)/A072909(A047874(n+1))`
-/

namespace A070673.P12656490677860439833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070669 (n + 1) : ℚ) / (A072909 (A047874 (n + 1)).toNat : ℚ)

end

end A070673.P12656490677860439833

/-! ## A070673.P10592547261107458876

`A204843(A054031(A000124(n)))+A070669(n+1)`
-/

namespace A070673.P10592547261107458876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (A054031 (A000124 n).toNat).toNat + A070669 (n + 1)

end

end A070673.P10592547261107458876

/-! ## A070673.P16919598905119887264

`A204843(A054031(A057661(n+1)))+A070669(n+1)`
-/

namespace A070673.P16919598905119887264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (A054031 (A057661 (n + 1)).toNat).toNat + A070669 (n + 1)

end

end A070673.P16919598905119887264

/-! ## A070673.P814235678296583458

`gcd(A070669(n+1), A111332(A033948(n+1)))`
-/

namespace A070673.P814235678296583458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070669 (n + 1)) (A111332 (A033948 (n + 1)).toNat)

end

end A070673.P814235678296583458

/-! ## A070673.P15985463971035581092

`gcd(A001172(A015068(n)), A070669(n+1))`
-/

namespace A070673.P15985463971035581092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001172 (A015068 n).toNat) (A070669 (n + 1))

end

end A070673.P15985463971035581092

/-!
# A070675: Smallest m in range 2..n-1 such that m^10 == 1 mod n, or 1 if no such number exists.

The programs for A070675, there is no canonical definition to state claims against.
-/

/-! ## A070675.P830711879483781807

`A070667(n+1)%A000005(A197208(n+2))`
-/

namespace A070675.P830711879483781807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070667 (n + 1)) (A000005 (A197208 (n + 2)).toNat)

end

end A070675.P830711879483781807

/-! ## A070675.P6194743863588984817

`(A215653(n+1)-C(2, n²))%A000005(A197208(n+2))`
-/

namespace A070675.P6194743863588984817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215653 (n + 1) - (Nat.choose 2 (n ^ 2) : ℤ)) (A000005 (A197208 (n + 2)).toNat)

end

end A070675.P6194743863588984817

/-! ## A070675.P11741024895559548821

`A070667(n+1)/A304042((n+1)^3)`
-/

namespace A070675.P11741024895559548821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070667 (n + 1) : ℚ) / (A304042 ((n + 1) ^ 3) : ℚ)

end

end A070675.P11741024895559548821

/-! ## A070675.P11705047785670919064

`gcd(A060069(A070670(3*(n+1))), A070667(n+1))`
-/

namespace A070675.P11705047785670919064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060069 (A070670 (3 * (n + 1))).toNat) (A070667 (n + 1))

end

end A070675.P11705047785670919064

/-! ## A070675.P2193584012979254131

`A070667(n+1)%A014612(A300946(n))`
-/

namespace A070675.P2193584012979254131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070667 (n + 1)) (A014612 (A300946 n).toNat)

end

end A070675.P2193584012979254131

/-!
# A070676: Smallest m in range 1..phi(n) such that 3^m == 1 mod n, or 0 if no such number exists.

The programs for A070676, there is no canonical definition to state claims against.
-/

/-! ## A070676.P16106301049320133207

`A007734(n+1)%A303054(n+1)`
-/

namespace A070676.P16106301049320133207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007734 (n + 1)) (A303054 (n + 1))

end

end A070676.P16106301049320133207

/-! ## A070676.P7291868495747100575

`A054704(n+1)%A303054(n+1)`
-/

namespace A070676.P7291868495747100575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054704 (n + 1)) (A303054 (n + 1))

end

end A070676.P7291868495747100575

/-! ## A070676.P8129412634780489363

`char[∑[A000034(n)]]*A054704(n+1)`
-/

namespace A070676.P8129412634780489363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A054704 (n + 1)

end

end A070676.P8129412634780489363

/-! ## A070676.P2681713619802743906

`A054704(n+1)*A080545(A003417(n))`
-/

namespace A070676.P2681713619802743906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (n + 1) * A080545 (A003417 n).toNat

end

end A070676.P2681713619802743906

/-! ## A070676.P14083061517885857192

`A007734(n+1)%A000041(A117909(n))`
-/

namespace A070676.P14083061517885857192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007734 (n + 1)) (A000041 (A117909 n).toNat)

end

end A070676.P14083061517885857192

/-! ## A070676.P5189234110412796620

`A054704(n+1)%A000041(A117909(n))`
-/

namespace A070676.P5189234110412796620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054704 (n + 1)) (A000041 (A117909 n).toNat)

end

end A070676.P5189234110412796620

/-! ## A070676.P8788602805167624021

`A007734(n+1)*A131735(A014681(n))`
-/

namespace A070676.P8788602805167624021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (n + 1) * A131735 (A014681 n).toNat

end

end A070676.P8788602805167624021

/-! ## A070676.P542316600323063904

`lcm(A007734(n+1), A070679(n+1))`
-/

namespace A070676.P542316600323063904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007734 (n + 1)) (A070679 (n + 1))

end

end A070676.P542316600323063904

/-! ## A070676.P7151450096739422089

`A139366(∑[n]+3)`
-/

namespace A070676.P7151450096739422089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139366 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A070676.P7151450096739422089

/-! ## A070676.P16959940985729891871

`A139366(A152950(n+1))%A000124(n)`
-/

namespace A070676.P16959940985729891871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139366 (A152950 (n + 1)).toNat) (A000124 n)

end

end A070676.P16959940985729891871

/-!
# A070677: Smallest m in range 1..phi(n) such that 5^m == 1 mod n, or 0 if no such number exists.

The programs for A070677, there is no canonical definition to state claims against.
-/

/-! ## A070677.P8531711572127913212

`lcm(A007736(n+1), A103491(n+1))`
-/

namespace A070677.P8531711572127913212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007736 (n + 1)) (A103491 (n + 1))

end

end A070677.P8531711572127913212

/-! ## A070677.P1165453381664304537

`char[A001068(n+1)]*A007736(n+1)`
-/

namespace A070677.P1165453381664304537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007736 (n + 1)

end

end A070677.P1165453381664304537

/-! ## A070677.P3905347545922777474

`char[A001068(n+1)]*A054706(n+1)`
-/

namespace A070677.P3905347545922777474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A054706 (n + 1)

end

end A070677.P3905347545922777474

/-! ## A070677.P11214324706996772333

`lcm(A054706(n+1), A103491(A000027(n+1)))`
-/

namespace A070677.P11214324706996772333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054706 (n + 1)) (A103491 (A000027 (n + 1)).toNat)

end

end A070677.P11214324706996772333

/-! ## A070677.P14860612095463551945

`A007736(n+1)%A216478(n+1)`
-/

namespace A070677.P14860612095463551945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007736 (n + 1)) (A216478 (n + 1))

end

end A070677.P14860612095463551945

/-! ## A070677.P16495787137969415805

`A054706(n+1)%A216478(n+1)`
-/

namespace A070677.P16495787137969415805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054706 (n + 1)) (A216478 (n + 1))

end

end A070677.P16495787137969415805

/-!
# A070678: Smallest m in range 1..phi(n) such that 7^m == 1 mod n, or 0 if no such number exists.

The programs for A070678, there is no canonical definition to state claims against.
-/

/-! ## A070678.P12892810029610462444

`char[A047368(n+2)]*A007738(n+1)`
-/

namespace A070678.P12892810029610462444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047368 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007738 (n + 1)

end

end A070678.P12892810029610462444

/-! ## A070678.P10382038671758430133

`char[A047368(n+2)]*A054708(n+1)`
-/

namespace A070678.P10382038671758430133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047368 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A054708 (n + 1)

end

end A070678.P10382038671758430133

/-! ## A070678.P3127271594102171307

`A007738(n+1)%A017401(A226785(n+1))`
-/

namespace A070678.P3127271594102171307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007738 (n + 1)) (A017401 (A226785 (n + 1)).toNat)

end

end A070678.P3127271594102171307

/-! ## A070678.P18094010712634372140

`A054708(n+1)%A010016(A226785(n+1))`
-/

namespace A070678.P18094010712634372140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054708 (n + 1)) (A010016 (A226785 (n + 1)).toNat)

end

end A070678.P18094010712634372140

/-! ## A070678.P12391230270399227067

`lcm(A007738(n+1), A103493(n+1))`
-/

namespace A070678.P12391230270399227067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007738 (n + 1)) (A103493 (n + 1))

end

end A070678.P12391230270399227067

/-!
# A070679: Smallest m in range 1..phi(n) such that 9^m == 1 mod n, or 0 if no such number exists.

The programs for A070679, there is no canonical definition to state claims against.
-/

/-! ## A070679.P276778661262338987

`A026741(A070676(n+1))`
-/

namespace A070679.P276778661262338987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A070676 (n + 1)).toNat

end

end A070679.P276778661262338987

/-! ## A070679.P8625252964179574223

`floor(A007740(n+1)/A003417(n))`
-/

namespace A070679.P8625252964179574223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007740 (n + 1) : ℚ) / (A003417 n : ℚ)⌋

end

end A070679.P8625252964179574223

/-! ## A070679.P4184147863276102384

`A007740(n+1)%A303054(n+1)`
-/

namespace A070679.P4184147863276102384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007740 (n + 1)) (A303054 (n + 1))

end

end A070679.P4184147863276102384

/-! ## A070679.P8264791841225180627

`A054717(n+1)%A303054(n+1)`
-/

namespace A070679.P8264791841225180627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054717 (n + 1)) (A303054 (n + 1))

end

end A070679.P8264791841225180627

/-! ## A070679.P2389554427186050584

`char[∑[A000034(n)]]*A007740(n+1)`
-/

namespace A070679.P2389554427186050584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007740 (n + 1)

end

end A070679.P2389554427186050584

/-! ## A070679.P3945673669133074076

`char[∑[A000034(n)]]*A054717(n+1)`
-/

namespace A070679.P3945673669133074076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A054717 (n + 1)

end

end A070679.P3945673669133074076

/-! ## A070679.P2108706530212163189

`char[A080513(n)+n]*A007740(n+1)`
-/

namespace A070679.P2108706530212163189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007740 (n + 1)

end

end A070679.P2108706530212163189

/-! ## A070679.P11583517926398658461

`char[A080513(n)+n]*A054717(n+1)`
-/

namespace A070679.P11583517926398658461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A054717 (n + 1)

end

end A070679.P11583517926398658461

/-! ## A070679.P3803727139807399897

`lcm(A007740(n+1), A131736(A014681(n)))`
-/

namespace A070679.P3803727139807399897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007740 (n + 1)) (A131736 (A014681 n).toNat)

end

end A070679.P3803727139807399897

/-! ## A070679.P1418181689033716848

`char[A080513(3*n)]*A007740(n+1)`
-/

namespace A070679.P1418181689033716848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007740 (n + 1)

end

end A070679.P1418181689033716848

/-! ## A070679.P3599859947250305005

`char[A080513(3*n)]*A054717(n+1)`
-/

namespace A070679.P3599859947250305005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A054717 (n + 1)

end

end A070679.P3599859947250305005

/-! ## A070679.P4283178809938701707

`lcm(A054717(n+1), A131736(A103517(n)))`
-/

namespace A070679.P4283178809938701707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054717 (n + 1)) (A131736 (A103517 n).toNat)

end

end A070679.P4283178809938701707

/-! ## A070679.P7619936230722605675

`A007740(n+1)%A117909(n)!`
-/

namespace A070679.P7619936230722605675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007740 (n + 1)) (Nat.factorial (A117909 n).toNat : ℤ)

end

end A070679.P7619936230722605675

/-! ## A070679.P17163905731319578977

`A054717(n+1)%A117909(n)!`
-/

namespace A070679.P17163905731319578977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054717 (n + 1)) (Nat.factorial (A117909 n).toNat : ℤ)

end

end A070679.P17163905731319578977

/-!
# A070680: Smallest m in range 1..phi(n) such that 11^m == 1 mod n, or 0 if no such number exists.

The programs for A070680, there is no canonical definition to state claims against.
-/

/-! ## A070680.P7898363158553928672

`lcm(A103497(n+1), A351524(n+1))`
-/

namespace A070680.P7898363158553928672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103497 (n + 1)) (A351524 (n + 1))

end

end A070680.P7898363158553928672

/-! ## A070680.P14168593145991503704

`A103497(lcm(5, A131209(n)))`
-/

namespace A070680.P14168593145991503704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103497 (Int.lcm 5 (A131209 n))

end

end A070680.P14168593145991503704

/-! ## A070680.P15826587823741257933

`A351524(n+1)%A202841(A351495(2*(n+1)))`
-/

namespace A070680.P15826587823741257933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351524 (n + 1)) (A202841 (A351495 (2 * (n + 1))).toNat)

end

end A070680.P15826587823741257933

/-! ## A070680.P2849600377541642011

`A351524(n+1)%A033948(A061509(n))`
-/

namespace A070680.P2849600377541642011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351524 (n + 1)) (A033948 (A061509 n).toNat)

end

end A070680.P2849600377541642011

/-!
# A070681: Smallest m in range 1..phi(2n+1) such that 6^m == 1 mod 2n+1, or 0 if no such number exists.

The programs for A070681, there is no canonical definition to state claims against.
-/

/-! ## A070681.P17293869253927567384

`char[A294732(n+3)]*A054707(2*n+1)`
-/

namespace A070681.P17293869253927567384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294732 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A054707 (2 * n + 1)

end

end A070681.P17293869253927567384

/-! ## A070681.P3030688063130058420

`A007737(Δ[n²])*A057427(A070683(n))`
-/

namespace A070681.P3030688063130058420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A057427 (A070683 n).toNat

end

end A070681.P3030688063130058420

/-! ## A070681.P13927730168887874578

`A054707(A005408(n))%A054707(A190035(n+1))`
-/

namespace A070681.P13927730168887874578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054707 (A005408 n).toNat) (A054707 (A190035 (n + 1)).toNat)

end

end A070681.P13927730168887874578

/-! ## A070681.P6143478554864097461

`lcm(A007737(2*n+1), A103492(n))`
-/

namespace A070681.P6143478554864097461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007737 (2 * n + 1)) (A103492 n)

end

end A070681.P6143478554864097461

/-! ## A070681.P634966250853125550

`lcm(A054707(A005408(n)), A103492(n))`
-/

namespace A070681.P634966250853125550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054707 (A005408 n).toNat) (A103492 n)

end

end A070681.P634966250853125550

/-!
# A070682: Smallest m in range 1..phi(2n+1) such that 10^m == 1 mod 2n+1, or 0 if no such number exists.

The programs for A070682, there is no canonical definition to state claims against.
-/

/-! ## A070682.P2633674695894734935

`A084680(comp[2*(n+1)]+2)`
-/

namespace A070682.P2633674695894734935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A070682.P2633674695894734935

/-! ## A070682.P17627656177547183489

`A084680(2*n+1)%(2*n+1)`
-/

namespace A070682.P17627656177547183489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084680 (2 * n + 1)) (2 * n + 1 : ℤ)

end

end A070682.P17627656177547183489

/-! ## A070682.P12763811563529256654

`A084680(2*n+1)-A000007(n)`
-/

namespace A070682.P12763811563529256654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (2 * n + 1) - A000007 n

end

end A070682.P12763811563529256654

/-! ## A070682.P169863088126671453

`A051626(2*n+1)*A179850(n)`
-/

namespace A070682.P169863088126671453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (2 * n + 1) * A179850 n

end

end A070682.P169863088126671453

/-! ## A070682.P11901768225928560971

`char[A060000(n+1)]*A084680(2*n+1)`
-/

namespace A070682.P11901768225928560971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A084680 (2 * n + 1)

end

end A070682.P11901768225928560971

/-! ## A070682.P15496465070247159600

`A084680(2*n+1)-A209229(2*n+1)`
-/

namespace A070682.P15496465070247159600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (2 * n + 1) - A209229 (2 * n + 1)

end

end A070682.P15496465070247159600

/-! ## A070682.P4927763908260946885

`A084680(2*n+1)-char[A084680(2*(n+1))]`
-/

namespace A070682.P4927763908260946885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (2 * n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A070682.P4927763908260946885

/-! ## A070682.P14862599685087671806

`and(1, A076511(2*n+1))*A084680(2*n+1)`
-/

namespace A070682.P14862599685087671806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A076511 (2 * n + 1)) * A084680 (2 * n + 1)

end

end A070682.P14862599685087671806

/-! ## A070682.P11134696193349949748

`char[A059893(n+1)]*A084680(Δ[n²])`
-/

namespace A070682.P11134696193349949748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A084680 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A070682.P11134696193349949748

/-! ## A070682.P1559544131408213522

`char[A288538(n+1)]*A084680(2*n+1)`
-/

namespace A070682.P1559544131408213522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288538 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A084680 (2 * n + 1)

end

end A070682.P1559544131408213522

/-! ## A070682.P4816890087121854188

`char[A003602(n+1)]*A084680(2*n+1)`
-/

namespace A070682.P4816890087121854188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A084680 (2 * n + 1)

end

end A070682.P4816890087121854188

/-! ## A070682.P754043645392989007

`A216415(abs(1-n)+2)`
-/

namespace A070682.P754043645392989007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216415 (|1 - (n : ℤ)| + 2).toNat

end

end A070682.P754043645392989007

/-! ## A070682.P6836831374467723035

`A216415(n+1)%Δ[n²]`
-/

namespace A070682.P6836831374467723035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216415 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A070682.P6836831374467723035

/-! ## A070682.P15920791609755861000

`A216415(n+1)-A000007(n)`
-/

namespace A070682.P15920791609755861000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216415 (n + 1) - A000007 n

end

end A070682.P15920791609755861000

/-! ## A070682.P4006328211085682216

`A057427(n)*A216415(n+1)`
-/

namespace A070682.P4006328211085682216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A216415 (n + 1)

end

end A070682.P4006328211085682216

/-! ## A070682.P6072627729775787738

`A178334(n)*A216415(n+1)`
-/

namespace A070682.P6072627729775787738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A216415 (n + 1)

end

end A070682.P6072627729775787738

/-! ## A070682.P9475441474743045568

`A216415(n+1)*A294619(n)`
-/

namespace A070682.P9475441474743045568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216415 (n + 1) * A294619 n

end

end A070682.P9475441474743045568

/-! ## A070682.P17788461081183840925

`and(A000225(n), A216415(n+1))`
-/

namespace A070682.P17788461081183840925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A216415 (n + 1))

end

end A070682.P17788461081183840925

/-! ## A070682.P16313420339038223422

`and(A024036(n), A216415(n+1))`
-/

namespace A070682.P16313420339038223422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024036 n) (A216415 (n + 1))

end

end A070682.P16313420339038223422

/-! ## A070682.P2943675834590917491

`and(A057428(n), A216415(n+1))`
-/

namespace A070682.P2943675834590917491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A216415 (n + 1))

end

end A070682.P2943675834590917491

/-!
# A070683: Smallest m in range 1..phi(2n+1) such that 12^m == 1 mod 2n+1, or 0 if no such number exists.

The programs for A070683, there is no canonical definition to state claims against.
-/

/-! ## A070683.P3874802241458277864

`A204418(n)*A246004(2*n+1)`
-/

namespace A070683.P3874802241458277864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 n * A246004 (2 * n + 1)

end

end A070683.P3874802241458277864

/-! ## A070683.P12915882001080514762

`char[A008619(3*n)+1]*A246004(2*n+1)`
-/

namespace A070683.P12915882001080514762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 * n) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A246004 (2 * n + 1)

end

end A070683.P12915882001080514762

/-! ## A070683.P15927922133928736424

`A246004(gcd(A047259(n+1), A099721(n)))`
-/

namespace A070683.P15927922133928736424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246004 (Int.gcd (A047259 (n + 1)) (A099721 n))

end

end A070683.P15927922133928736424

/-! ## A070683.P7935461613091184344

`Δ[A008620(2*n+1)]*A246004(2*n+1)`
-/

namespace A070683.P7935461613091184344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A246004 (2 * n + 1)

end

end A070683.P7935461613091184344

/-! ## A070683.P7403313892059693306

`Δ[A008615(4*n+1)]*A246004(2*n+1)`
-/

namespace A070683.P7403313892059693306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A246004 (2 * n + 1)

end

end A070683.P7403313892059693306

/-!
# A070684: n^6 mod 44.

The programs for A070684, the canonical program `A070684.P15363693857418800498` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070684 has offset 0).

The definition of A070684 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%44` (program `A070684.P15363693857418800498`, by `A070684.P15363693857418800498.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070684.P15363693857418800498

`(n^6)%44`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070684

/-- `(n^6)%44` -/
def P15363693857418800498.Spec : Prop :=
  ∀ n, (P15363693857418800498.a n : ℤ) = A070684 n

theorem P15363693857418800498.correct : P15363693857418800498.Spec := by
  intro n
  simp only [A070684]

end A070684

/-!
# A070685: n^6 mod 45.

The programs for A070685, the canonical program `A070685.P359627259987455179` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070685 has offset 0).

The definition of A070685 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%45` (program `A070685.P359627259987455179`, by `A070685.P359627259987455179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070685.P359627259987455179

`(n^6)%45`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070685

/-- `(n^6)%45` -/
def P359627259987455179.Spec : Prop :=
  ∀ n, (P359627259987455179.a n : ℤ) = A070685 n

theorem P359627259987455179.correct : P359627259987455179.Spec := by
  intro n
  simp only [A070685]

end A070685

/-!
# A070686: n^6 mod 46.

The programs for A070686, the canonical program `A070686.P1552370197948955069` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070686 has offset 0).

The definition of A070686 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%46` (program `A070686.P1552370197948955069`, by `A070686.P1552370197948955069.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070686.P1552370197948955069

`(n^6)%46`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070686

/-- `(n^6)%46` -/
def P1552370197948955069.Spec : Prop :=
  ∀ n, (P1552370197948955069.a n : ℤ) = A070686 n

theorem P1552370197948955069.correct : P1552370197948955069.Spec := by
  intro n
  simp only [A070686]

end A070686

/-!
# A070687: n^6 mod 47.

The programs for A070687, the canonical program `A070687.P4975730223566079817` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070687 has offset 0).

The definition of A070687 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%47` (program `A070687.P4975730223566079817`, by `A070687.P4975730223566079817.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070687.P4975730223566079817

`(n^6)%47`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070687

/-- `(n^6)%47` -/
def P4975730223566079817.Spec : Prop :=
  ∀ n, (P4975730223566079817.a n : ℤ) = A070687 n

theorem P4975730223566079817.correct : P4975730223566079817.Spec := by
  intro n
  simp only [A070687]

end A070687

/-!
# A070688: a(n) = n^6 mod 48.

The programs for A070688, the canonical program `A070688.P10431114025521317803` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070688 has offset 0).

The definition of A070688 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6)%48` (program `A070688.P10431114025521317803`, by `A070688.P10431114025521317803.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070688.P10431114025521317803

`(n^6)%48`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070688

/-- `(n^6)%48` -/
def P10431114025521317803.Spec : Prop :=
  ∀ n, (P10431114025521317803.a n : ℤ) = A070688 n

theorem P10431114025521317803.correct : P10431114025521317803.Spec := by
  intro n
  simp only [A070688]

end A070688

/-!
# A070689: Numbers k such that k+1 and k^2+1 are primes.

The programs for A070689, the canonical program `A070689.P1393312578879141227` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070689 has offset 1).

The definition of A070689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6961 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070689.P16019837887818442806

`A127435(n+1)-1`
-/

namespace A070689.P16019837887818442806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127435 (n + 1) - 1

end

end A070689.P16019837887818442806

namespace A070689

/-- `A127435(n+1)-1` -/
def P16019837887818442806.Spec : Prop :=
  ∀ n, P16019837887818442806.a n = A070689 (n + 1)

theorem P16019837887818442806.correct : P16019837887818442806.Spec := by
  intro n
  simp only [A070689, Nat.add_sub_cancel, A070689.P16019837887818442806.a, A070689.P1393312578879141227.f1, A070689.P1393312578879141227.a, A067720, A067720.P10605338190023800648.f1, A067720.P10605338190023800648.f2, A067720.P10605338190023800648.a, A127435, A127435.P10299367039698529313.a, A001065, A001065.P4097147489331274860.a, A053000, A053000.P7278427673394138104.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A013632, A013632.P6559946879985956067.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070689

/-! ## A070689.P9489138497007725816

`floor(sqrt(A127436(n+1)))`
-/

namespace A070689.P9489138497007725816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A127436 (n + 1))

end

end A070689.P9489138497007725816

namespace A070689

/-- `floor(sqrt(A127436(n+1)))` -/
def P9489138497007725816.Spec : Prop :=
  ∀ n, P9489138497007725816.a n = A070689 (n + 1)

end A070689

/-! ## A070689.P1393312578879141227

`p?[A067720(n+1)+1]-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A070689

/-- `p?[A067720(n+1)+1]-1` -/
def P1393312578879141227.Spec : Prop :=
  ∀ n, P1393312578879141227.a n = A070689 (n + 1)

theorem P1393312578879141227.correct : P1393312578879141227.Spec := by
  intro n
  simp only [A070689, Nat.add_sub_cancel]

end A070689

/-! ## A070689.P8101207838828212213

`p?[A090693(n+1)]-1`
-/

namespace A070689.P8101207838828212213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A070689.P8101207838828212213

namespace A070689

/-- `p?[A090693(n+1)]-1` -/
def P8101207838828212213.Spec : Prop :=
  ∀ n, P8101207838828212213.a n = A070689 (n + 1)

end A070689

/-! ## A070689.P12083163332499711272

`p?[A005574(n+1)+1]-1`
-/

namespace A070689.P12083163332499711272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A070689.P12083163332499711272

namespace A070689

/-- `p?[A005574(n+1)+1]-1` -/
def P12083163332499711272.Spec : Prop :=
  ∀ n, P12083163332499711272.a n = A070689 (n + 1)

end A070689

/-! ## A070689.P10702346270583919874

`p?[A089593(n+1)+2]-1`
-/

namespace A070689.P10702346270583919874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A070689.P10702346270583919874

namespace A070689

/-- `p?[A089593(n+1)+2]-1` -/
def P10702346270583919874.Spec : Prop :=
  ∀ n, P10702346270583919874.a n = A070689 (n + 1)

end A070689

/-! ## A070689.P4127953533845504697

`p?[ceil(sqrt(A002496(n+1)))]-1`
-/

namespace A070689.P4127953533845504697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002496 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A070689.P4127953533845504697

namespace A070689

/-- `p?[ceil(sqrt(A002496(n+1)))]-1` -/
def P4127953533845504697.Spec : Prop :=
  ∀ n, P4127953533845504697.a n = A070689 (n + 1)

end A070689

/-! ## A070689.P8499071432631461670

`∩[A005574(n+1), A067720(n+1)]`
-/

namespace A070689.P8499071432631461670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070689.P8499071432631461670

namespace A070689

/-- `∩[A005574(n+1), A067720(n+1)]` -/
def P8499071432631461670.Spec : Prop :=
  ∀ n, (P8499071432631461670.a n : ℤ) = A070689 (n + 1)

end A070689

/-! ## A070689.P8762807985258252190

`∩[A042986(n+1), A090693(n+1)]-1`
-/

namespace A070689.P8762807985258252190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A070689.P8762807985258252190

namespace A070689

/-- `∩[A042986(n+1), A090693(n+1)]-1` -/
def P8762807985258252190.Spec : Prop :=
  ∀ n, P8762807985258252190.a n = A070689 (n + 1)

end A070689

/-! ## A070689.P16084192291795430016

`∩[A005574(n+1), A226381(n+1)]`
-/

namespace A070689.P16084192291795430016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070689.P16084192291795430016

namespace A070689

/-- `∩[A005574(n+1), A226381(n+1)]` -/
def P16084192291795430016.Spec : Prop :=
  ∀ n, (P16084192291795430016.a n : ℤ) = A070689 (n + 1)

end A070689

/-! ## A070689.P10768794602631264283

`∩[A005574(n+1), A006093(n+1)]`
-/

namespace A070689.P10768794602631264283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070689.P10768794602631264283

namespace A070689

/-- `∩[A005574(n+1), A006093(n+1)]` -/
def P10768794602631264283.Spec : Prop :=
  ∀ n, (P10768794602631264283.a n : ℤ) = A070689 (n + 1)

end A070689

/-! ## A070689.P12624755102518538898

`∩[A006093(n+1), A067720(n+1)]`
-/

namespace A070689.P12624755102518538898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070689.P12624755102518538898

namespace A070689

/-- `∩[A006093(n+1), A067720(n+1)]` -/
def P12624755102518538898.Spec : Prop :=
  ∀ n, (P12624755102518538898.a n : ℤ) = A070689 (n + 1)

end A070689

/-! ## A070689.P6122396027970947484

`∩[A005574(n+1), A068499(n+1)]`
-/

namespace A070689.P6122396027970947484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070689.P6122396027970947484

namespace A070689

/-- `∩[A005574(n+1), A068499(n+1)]` -/
def P6122396027970947484.Spec : Prop :=
  ∀ n, (P6122396027970947484.a n : ℤ) = A070689 (n + 1)

end A070689

/-! ## A070689.P17756000507555322626

`∩[A067720(n+1), A068499(n+1)]`
-/

namespace A070689.P17756000507555322626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070689.P17756000507555322626

namespace A070689

/-- `∩[A067720(n+1), A068499(n+1)]` -/
def P17756000507555322626.Spec : Prop :=
  ∀ n, (P17756000507555322626.a n : ℤ) = A070689 (n + 1)

end A070689

/-! ## A070689.P6575683115690709376

`∩[A006093(n+1), A226381(n+1)]`
-/

namespace A070689.P6575683115690709376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070689.P6575683115690709376

namespace A070689

/-- `∩[A006093(n+1), A226381(n+1)]` -/
def P6575683115690709376.Spec : Prop :=
  ∀ n, (P6575683115690709376.a n : ℤ) = A070689 (n + 1)

end A070689

/-! ## A070689.P9580994422103974267

`∩[A000040(n+1), A090693(n+1)]-1`
-/

namespace A070689.P9580994422103974267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A070689.P9580994422103974267

namespace A070689

/-- `∩[A000040(n+1), A090693(n+1)]-1` -/
def P9580994422103974267.Spec : Prop :=
  ∀ n, P9580994422103974267.a n = A070689 (n + 1)

end A070689

/-! ## A070689.P7517665926323255846

`∩[A008578(n+1), A090693(n+1)]-1`
-/

namespace A070689.P7517665926323255846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A070689.P7517665926323255846

namespace A070689

/-- `∩[A008578(n+1), A090693(n+1)]-1` -/
def P7517665926323255846.Spec : Prop :=
  ∀ n, P7517665926323255846.a n = A070689 (n + 1)

end A070689

/-! ## A070689.P2615234137139455869

`∩[A046022(n+1), A090693(n+1)]-1`
-/

namespace A070689.P2615234137139455869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A070689.P2615234137139455869

namespace A070689

/-- `∩[A046022(n+1), A090693(n+1)]-1` -/
def P2615234137139455869.Spec : Prop :=
  ∀ n, P2615234137139455869.a n = A070689 (n + 1)

end A070689

/-! ## A070689.P3554239785313204883

`∩[A051948(n+1), A090693(n+1)]-1`
-/

namespace A070689.P3554239785313204883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A070689.P3554239785313204883

namespace A070689

/-- `∩[A051948(n+1), A090693(n+1)]-1` -/
def P3554239785313204883.Spec : Prop :=
  ∀ n, P3554239785313204883.a n = A070689 (n + 1)

end A070689

/-! ## A070689.P1333750424110114519

`∩[A053813(n+1), A090693(n+1)]-1`
-/

namespace A070689.P1333750424110114519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A070689.P1333750424110114519

namespace A070689

/-- `∩[A053813(n+1), A090693(n+1)]-1` -/
def P1333750424110114519.Spec : Prop :=
  ∀ n, P1333750424110114519.a n = A070689 (n + 1)

end A070689

/-!
# A070691: (Sum of digits of n)^n.

The programs for A070691, there is no canonical definition to state claims against.
-/

/-! ## A070691.P298398289133937092

`∑{digits}[n+1, #]^(n+1)`
-/

namespace A070691.P298398289133937092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ (n + 1)

end

end A070691.P298398289133937092

/-! ## A070691.P14074886463118562464

`root(∑{digits}[n+1, #], 1/(n+1))`
-/

namespace A070691.P14074886463118562464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℝ) ^ (1 / (1 / (n + 1 : ℚ) : ℝ))

end

end A070691.P14074886463118562464

/-! ## A070691.P15957006482419237867

`log2(∏{digits}[n+1, 2^#])^(n+1)`
-/

namespace A070691.P15957006482419237867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ) ^ (n + 1)

end

end A070691.P15957006482419237867

/-! ## A070691.P5793956823880464967

`Δ[A037123(n)]^(n+1)`
-/

namespace A070691.P5793956823880464967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (n + 1)

end

end A070691.P5793956823880464967

/-! ## A070691.P16642647365941127442

`A007953(n+1)^(n+1)`
-/

namespace A070691.P16642647365941127442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) ^ (n + 1)

end

end A070691.P16642647365941127442

/-! ## A070691.P1806427647054610252

`A033930(n+1)^(n+1)`
-/

namespace A070691.P1806427647054610252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (n + 1) ^ (n + 1)

end

end A070691.P1806427647054610252

/-! ## A070691.P5281190091633452357

`A076314(n+1)^(n+1)`
-/

namespace A070691.P5281190091633452357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (n + 1) ^ (n + 1)

end

end A070691.P5281190091633452357

/-! ## A070691.P15013571127416379278

`A209685(n+1)^(n+1)`
-/

namespace A070691.P15013571127416379278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209685 (n + 1) ^ (n + 1)

end

end A070691.P15013571127416379278

/-! ## A070691.P5220701376234973616

`A001222(∏{digits}[n+1, 2^#])^(n+1)`
-/

namespace A070691.P5220701376234973616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod ^ (n + 1)

end

end A070691.P5220701376234973616

/-!
# A070692: a(n) = n^7 mod 9.

The programs for A070692, the canonical program `A070692.P370804864202959523` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070692 has offset 0).

The definition of A070692 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%9` (program `A070692.P370804864202959523`, by `A070692.P370804864202959523.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070692.P370804864202959523

`(n^7)%9`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070692

/-- `(n^7)%9` -/
def P370804864202959523.Spec : Prop :=
  ∀ n, (P370804864202959523.a n : ℤ) = A070692 n

theorem P370804864202959523.correct : P370804864202959523.Spec := by
  intro n
  simp only [A070692]

end A070692

/-!
# A070693: a(n) = n^7 mod 11.

The programs for A070693, the canonical program `A070693.P10884968805276210041` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070693 has offset 0).

The definition of A070693 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%11` (program `A070693.P10884968805276210041`, by `A070693.P10884968805276210041.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070693.P10884968805276210041

`(n^7)%11`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070693

/-- `(n^7)%11` -/
def P10884968805276210041.Spec : Prop :=
  ∀ n, (P10884968805276210041.a n : ℤ) = A070693 n

theorem P10884968805276210041.correct : P10884968805276210041.Spec := by
  intro n
  simp only [A070693]

end A070693

/-!
# A070694: Numbers b such that b+1, b^2+1, b^4+1, b^8+1 and b^16+1 are primes.

The programs for A070694, there is no canonical definition to state claims against.
-/

/-! ## A070694.P10509624770310118797

`∩[A070655(n+1), A188698(n+1)]`
-/

namespace A070694.P10509624770310118797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070694.P10509624770310118797

/-!
# A070695: a(n) = n^7 mod 13.

The programs for A070695, the canonical program `A070695.P18227276242851458959` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070695 has offset 0).

The definition of A070695 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%13` (program `A070695.P18227276242851458959`, by `A070695.P18227276242851458959.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070695.P18227276242851458959

`(n^7)%13`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070695

/-- `(n^7)%13` -/
def P18227276242851458959.Spec : Prop :=
  ∀ n, (P18227276242851458959.a n : ℤ) = A070695 n

theorem P18227276242851458959.correct : P18227276242851458959.Spec := by
  intro n
  simp only [A070695]

end A070695

/-!
# A070696: a(n) = n mod 14.

The programs for A070696, the canonical program `A070696.P17461699990521764694` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070696 has offset 0).

The definition of A070696 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n%14` (program `A070696.P17461699990521764694`, by `A070696.P17461699990521764694.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070696.P17461699990521764694

`n%14`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070696

/-- `n%14` -/
def P17461699990521764694.Spec : Prop :=
  ∀ n, (P17461699990521764694.a n : ℤ) = A070696 n

theorem P17461699990521764694.correct : P17461699990521764694.Spec := by
  intro n
  simp only [A070696]

end A070696

/-!
# A070698: Numbers n such that reverse(n) sets a record (that is, n such that reverse(n) > reverse(k) for all k < n).

The programs for A070698, there is no canonical definition to state claims against.
-/

/-! ## A070698.P10603757851279774059

`A004086(A076643(n+1))`
-/

namespace A070698.P10603757851279774059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A076643 (n + 1)).toNat

end

end A070698.P10603757851279774059

/-! ## A070698.P4817752265618089806

`A004086(record[A004086(n+1)])`
-/

namespace A070698.P4817752265618089806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070698.P4817752265618089806

/-! ## A070698.P14917767294359974598

`record[A340835(abs(1-n))]`
-/

namespace A070698.P14917767294359974598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340835 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070698.P14917767294359974598

/-! ## A070698.P3856701086669473658

`record[A068636(record[A068637(n+1)])]`
-/

namespace A070698.P3856701086669473658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068637 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068636 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070698.P3856701086669473658

/-! ## A070698.P9317764277014343318

`A340835(A076643(2*n+1-n))`
-/

namespace A070698.P9317764277014343318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340835 (A076643 (2 * n + 1 - n)).toNat

end

end A070698.P9317764277014343318

/-! ## A070698.P8617068903769360406

`A135020(2*A076643(n+1))`
-/

namespace A070698.P8617068903769360406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (2 * A076643 (n + 1)).toNat

end

end A070698.P8617068903769360406

/-! ## A070698.P7128277174763376965

`A135020(record[2*A135020(2*(n+1))])`
-/

namespace A070698.P7128277174763376965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135020 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070698.P7128277174763376965

/-! ## A070698.P2245568116311664740

`A135020(A076643(n+1)+A076643(n+1))`
-/

namespace A070698.P2245568116311664740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (A076643 (n + 1) + A076643 (n + 1)).toNat

end

end A070698.P2245568116311664740

/-! ## A070698.P6286149289854948098

`A004093(5*A076643(n+1))`
-/

namespace A070698.P6286149289854948098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * A076643 (n + 1)).toNat

end

end A070698.P6286149289854948098

/-!
# A070699: a(n) = n^7 mod 17.

The programs for A070699, the canonical program `A070699.P13261662225779214439` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070699 has offset 0).

The definition of A070699 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^7)%17` (program `A070699.P13261662225779214439`, by `A070699.P13261662225779214439.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070699.P13261662225779214439

`(n^7)%17`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A070699

/-- `(n^7)%17` -/
def P13261662225779214439.Spec : Prop :=
  ∀ n, (P13261662225779214439.a n : ℤ) = A070699 n

theorem P13261662225779214439.correct : P13261662225779214439.Spec := by
  intro n
  simp only [A070699]

end A070699

