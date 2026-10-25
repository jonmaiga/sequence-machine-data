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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
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
# A365400: a(n) = 64 + A000720(n) - A365339(n).

The programs for A365400, there is no canonical definition to state claims against.
-/

/-! ## A365400.P7228112164380146027

`64+A000720(n+1)-A365339(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365400.P7228112164380146027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 + A000720 (n + 1) - A365339 (n + 1)

end

end A365400.P7228112164380146027

/-! ## A365400.P18305880475324689529

`A365397(n+1)+A365398(n+1)-A365339(n+1)`
-/

namespace A365400.P18305880475324689529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365397 (n + 1) + (A365398 (n + 1) - A365339 (n + 1))

end

end A365400.P18305880475324689529

/-! ## A365400.P16675177143251493767

`63-A287170(A004148(n))`
-/

namespace A365400.P16675177143251493767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  63 - A287170 (A004148 n).toNat

end

end A365400.P16675177143251493767

/-! ## A365400.P10443096238349247412

`64-A374209(A322924(n))`
-/

namespace A365400.P10443096238349247412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 - A374209 (A322924 n).toNat

end

end A365400.P10443096238349247412

/-! ## A365400.P4168802290695642867

`A365397(A073667(n+1))`
-/

namespace A365400.P4168802290695642867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365397 (A073667 (n + 1)).toNat

end

end A365400.P4168802290695642867

/-!
# A365401: The number of divisors of the largest unitary divisor of n that is a square.

The programs for A365401, the canonical program `A365401.P6488308132055047037` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365401 has offset 1).

The definition of A365401 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A365402, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365401.P10173890974625854470

`A000005(A350388(n+1))`
-/

namespace A365401.P10173890974625854470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A350388 (n + 1)).toNat

end

end A365401.P10173890974625854470

namespace A365401

/-- `A000005(A350388(n+1))` -/
def P10173890974625854470.Spec : Prop :=
  ∀ n, P10173890974625854470.a n = A365401 (n + 1)

end A365401

/-! ## A365401.P6488308132055047037

`A000005(n+1)/A365402(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A365401

/-- `A000005(n+1)/A365402(n+1)` -/
def P6488308132055047037.Spec : Prop :=
  ∀ n, P6488308132055047037.a n = (A365401 (n + 1) : ℚ)

end A365401

/-! ## A365401.P10831194126960752989

`A048691(A071974(n+1))`
-/

namespace A365401.P10831194126960752989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A071974 (n + 1)).toNat

end

end A365401.P10831194126960752989

namespace A365401

/-- `A048691(A071974(n+1))` -/
def P10831194126960752989.Spec : Prop :=
  ∀ n, P10831194126960752989.a n = A365401 (n + 1)

end A365401

/-! ## A365401.P3874388073917640597

`A000005(A071974(n+1)²)`
-/

namespace A365401.P3874388073917640597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A071974 (n + 1) ^ 2).toNat

end

end A365401.P3874388073917640597

namespace A365401

/-- `A000005(A071974(n+1)²)` -/
def P3874388073917640597.Spec : Prop :=
  ∀ n, P3874388073917640597.a n = A365401 (n + 1)

end A365401

/-! ## A365401.P12167804537961254713

`A000005((n+1)/A350389(n+1))`
-/

namespace A365401.P12167804537961254713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350389 (n + 1) : ℚ))).toNat

end

end A365401.P12167804537961254713

namespace A365401

/-- `A000005((n+1)/A350389(n+1))` -/
def P12167804537961254713.Spec : Prop :=
  ∀ n, P12167804537961254713.a n = A365401 (n + 1)

end A365401

/-! ## A365401.P13255631349853115123

`A357669(n+1)/A368169(n+1)`
-/

namespace A365401.P13255631349853115123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357669 (n + 1) : ℚ) / (A368169 (n + 1) : ℚ)

end

end A365401.P13255631349853115123

namespace A365401

/-- `A357669(n+1)/A368169(n+1)` -/
def P13255631349853115123.Spec : Prop :=
  ∀ n, P13255631349853115123.a n = (A365401 (n + 1) : ℚ)

end A365401

/-! ## A365401.P17662885901987529752

`A365331(n+1)/A370079(n+1)`
-/

namespace A365401.P17662885901987529752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365331 (n + 1) : ℚ) / (A370079 (n + 1) : ℚ)

end

end A365401.P17662885901987529752

namespace A365401

/-- `A365331(n+1)/A370079(n+1)` -/
def P17662885901987529752.Spec : Prop :=
  ∀ n, P17662885901987529752.a n = (A365401 (n + 1) : ℚ)

end A365401

/-! ## A365401.P11770188514984461746

`A212181(A350388(2*n+1-n))`
-/

namespace A365401.P11770188514984461746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212181 (A350388 (2 * n + 1 - n)).toNat

end

end A365401.P11770188514984461746

namespace A365401

/-- `A212181(A350388(2*n+1-n))` -/
def P11770188514984461746.Spec : Prop :=
  ∀ n, P11770188514984461746.a n = A365401 (n + 1)

end A365401

/-! ## A365401.P455599446066680154

`∑{d}[n+1, A008836(#)*A365348((n+1)/#)]`
-/

namespace A365401.P455599446066680154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A365348 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365401.P455599446066680154

namespace A365401

/-- `∑{d}[n+1, A008836(#)*A365348((n+1)/#)]` -/
def P455599446066680154.Spec : Prop :=
  ∀ n, P455599446066680154.a n = A365401 (n + 1)

end A365401

/-! ## A365401.P15480408696601296983

`∑{d}[n+1, A189022(#)*A369308((n+1)/#)]`
-/

namespace A365401.P15480408696601296983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189022 d * A369308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365401.P15480408696601296983

namespace A365401

/-- `∑{d}[n+1, A189022(#)*A369308((n+1)/#)]` -/
def P15480408696601296983.Spec : Prop :=
  ∀ n, P15480408696601296983.a n = A365401 (n + 1)

end A365401

/-! ## A365401.P8361148645731057100

`A000005(A071974(n+1)*A071974(n+1))`
-/

namespace A365401.P8361148645731057100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A071974 (n + 1) * A071974 (n + 1)).toNat

end

end A365401.P8361148645731057100

namespace A365401

/-- `A000005(A071974(n+1)*A071974(n+1))` -/
def P8361148645731057100.Spec : Prop :=
  ∀ n, P8361148645731057100.a n = A365401 (n + 1)

end A365401

/-! ## A365401.P17040422465882321687

`A046951(A350388(n+1)²)`
-/

namespace A365401.P17040422465882321687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A350388 (n + 1) ^ 2).toNat

end

end A365401.P17040422465882321687

namespace A365401

/-- `A046951(A350388(n+1)²)` -/
def P17040422465882321687.Spec : Prop :=
  ∀ n, P17040422465882321687.a n = A365401 (n + 1)

end A365401

/-! ## A365401.P11409925024714667680

`A367987(A350388(n+1)²)`
-/

namespace A365401.P11409925024714667680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367987 (A350388 (n + 1) ^ 2).toNat

end

end A365401.P11409925024714667680

namespace A365401

/-- `A367987(A350388(n+1)²)` -/
def P11409925024714667680.Spec : Prop :=
  ∀ n, P11409925024714667680.a n = A365401 (n + 1)

end A365401

/-! ## A365401.P16709834917786237875

`A046951(A071974(n+1)²²)`
-/

namespace A365401.P16709834917786237875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((A071974 (n + 1) ^ 2) ^ 2).toNat

end

end A365401.P16709834917786237875

namespace A365401

/-- `A046951(A071974(n+1)²²)` -/
def P16709834917786237875.Spec : Prop :=
  ∀ n, P16709834917786237875.a n = A365401 (n + 1)

end A365401

/-! ## A365401.P569969348185659556

`A367987(A071974(n+1)²²)`
-/

namespace A365401.P569969348185659556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367987 ((A071974 (n + 1) ^ 2) ^ 2).toNat

end

end A365401.P569969348185659556

namespace A365401

/-- `A367987(A071974(n+1)²²)` -/
def P569969348185659556.Spec : Prop :=
  ∀ n, P569969348185659556.a n = A365401 (n + 1)

end A365401

/-! ## A365401.P17069624202001099915

`A367987((n+1)*A008833(n+1))`
-/

namespace A365401.P17069624202001099915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367987 ((n + 1 : ℤ) * A008833 (n + 1)).toNat

end

end A365401.P17069624202001099915

namespace A365401

/-- `A367987((n+1)*A008833(n+1))` -/
def P17069624202001099915.Spec : Prop :=
  ∀ n, P17069624202001099915.a n = A365401 (n + 1)

end A365401

/-! ## A365401.P14344594464207539688

`A367987((n+1)*A056623(n+1))`
-/

namespace A365401.P14344594464207539688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367987 ((n + 1 : ℤ) * A056623 (n + 1)).toNat

end

end A365401.P14344594464207539688

namespace A365401

/-- `A367987((n+1)*A056623(n+1))` -/
def P14344594464207539688.Spec : Prop :=
  ∀ n, P14344594464207539688.a n = A365401 (n + 1)

end A365401

/-! ## A365401.P2617507649078955415

`A367987((n+1)*A350388(n+1))`
-/

namespace A365401.P2617507649078955415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367987 ((n + 1 : ℤ) * A350388 (n + 1)).toNat

end

end A365401.P2617507649078955415

namespace A365401

/-- `A367987((n+1)*A350388(n+1))` -/
def P2617507649078955415.Spec : Prop :=
  ∀ n, P2617507649078955415.a n = A365401 (n + 1)

end A365401

/-! ## A365401.P7445930754552510474

`A368470(A350390(A350388(n+1)²))`
-/

namespace A365401.P7445930754552510474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368470 (A350390 (A350388 (n + 1) ^ 2).toNat).toNat

end

end A365401.P7445930754552510474

namespace A365401

/-- `A368470(A350390(A350388(n+1)²))` -/
def P7445930754552510474.Spec : Prop :=
  ∀ n, P7445930754552510474.a n = A365401 (n + 1)

end A365401

/-! ## A365401.P11747494138157470627

`A046951(A350388((n+1)*A056623(n+1)))`
-/

namespace A365401.P11747494138157470627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A350388 ((n + 1 : ℤ) * A056623 (n + 1)).toNat).toNat

end

end A365401.P11747494138157470627

namespace A365401

/-- `A046951(A350388((n+1)*A056623(n+1)))` -/
def P11747494138157470627.Spec : Prop :=
  ∀ n, P11747494138157470627.a n = A365401 (n + 1)

end A365401

/-!
# A365402: The number of divisors of the largest unitary divisor of n that is an exponentially odd number.

The programs for A365402, the canonical program `A365402.P6850757992274722782` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365402 has offset 1).

The definition of A365402 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365402.P6850757992274722782

`A000005(A350389(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A365402

/-- `A000005(A350389(n+1))` -/
def P6850757992274722782.Spec : Prop :=
  ∀ n, P6850757992274722782.a n = A365402 (n + 1)

theorem P6850757992274722782.correct : P6850757992274722782.Spec := by
  intro n
  simp only [A365402, Nat.add_sub_cancel]

end A365402

/-! ## A365402.P6298750132823990525

`A000005(n+1)/A365401(n+1)`
-/

namespace A365402.P6298750132823990525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A365401 (n + 1) : ℚ)

end

end A365402.P6298750132823990525

namespace A365402

/-- `A000005(n+1)/A365401(n+1)` -/
def P6298750132823990525.Spec : Prop :=
  ∀ n, P6298750132823990525.a n = (A365402 (n + 1) : ℚ)

end A365402

/-! ## A365402.P8881655115046090174

`∏{e}[A071975(n+1), 2*#]`
-/

namespace A365402.P8881655115046090174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 * Nat.factorization (f1 n).natAbs p

end

end A365402.P8881655115046090174

namespace A365402

/-- `∏{e}[A071975(n+1), 2*#]` -/
def P8881655115046090174.Spec : Prop :=
  ∀ n, (P8881655115046090174.a n : ℤ) = A365402 (n + 1)

end A365402

/-! ## A365402.P12729228454882194048

`A056671(n+1)*A368169(n+1)`
-/

namespace A365402.P12729228454882194048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1) * A368169 (n + 1)

end

end A365402.P12729228454882194048

namespace A365402

/-- `A056671(n+1)*A368169(n+1)` -/
def P12729228454882194048.Spec : Prop :=
  ∀ n, P12729228454882194048.a n = A365402 (n + 1)

end A365402

/-! ## A365402.P303160970782176623

`A000005((n+1)/A350388(n+1))`
-/

namespace A365402.P303160970782176623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350388 (n + 1) : ℚ))).toNat

end

end A365402.P303160970782176623

namespace A365402

/-- `A000005((n+1)/A350388(n+1))` -/
def P303160970782176623.Spec : Prop :=
  ∀ n, P303160970782176623.a n = A365402 (n + 1)

end A365402

/-! ## A365402.P6289252367380914888

`A286324((n+1)/A350388(n+1))`
-/

namespace A365402.P6289252367380914888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350388 (n + 1) : ℚ))).toNat

end

end A365402.P6289252367380914888

namespace A365402

/-- `A286324((n+1)/A350388(n+1))` -/
def P6289252367380914888.Spec : Prop :=
  ∀ n, P6289252367380914888.a n = A365402 (n + 1)

end A365402

/-! ## A365402.P7739031585318006950

`A286324(n+1)/A370080(n+1)`
-/

namespace A365402.P7739031585318006950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286324 (n + 1) : ℚ) / (A370080 (n + 1) : ℚ)

end

end A365402.P7739031585318006950

namespace A365402

/-- `A286324(n+1)/A370080(n+1)` -/
def P7739031585318006950.Spec : Prop :=
  ∀ n, P7739031585318006950.a n = (A365402 (n + 1) : ℚ)

end A365402

/-! ## A365402.P14402855401188855242

`A286324(A350389(2*n+1-n))`
-/

namespace A365402.P14402855401188855242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (A350389 (2 * n + 1 - n)).toNat

end

end A365402.P14402855401188855242

namespace A365402

/-- `A286324(A350389(2*n+1-n))` -/
def P14402855401188855242.Spec : Prop :=
  ∀ n, P14402855401188855242.a n = A365402 (n + 1)

end A365402

/-! ## A365402.P5996889018051800907

`∑{d}[n+1, A008836(#)*A365345((n+1)/#)]`
-/

namespace A365402.P5996889018051800907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A365345 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365402.P5996889018051800907

namespace A365402

/-- `∑{d}[n+1, A008836(#)*A365345((n+1)/#)]` -/
def P5996889018051800907.Spec : Prop :=
  ∀ n, P5996889018051800907.a n = A365402 (n + 1)

end A365402

/-! ## A365402.P1404467597005774340

`A055076(n+1)*A325837(A368167(n+1))`
-/

namespace A365402.P1404467597005774340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (n + 1) * A325837 (A368167 (n + 1)).toNat

end

end A365402.P1404467597005774340

namespace A365402

/-- `A055076(n+1)*A325837(A368167(n+1))` -/
def P1404467597005774340.Spec : Prop :=
  ∀ n, P1404467597005774340.a n = A365402 (n + 1)

end A365402

/-! ## A365402.P15831681109069253033

`A000005(n+1)/A000005(A071974(n+1)²)`
-/

namespace A365402.P15831681109069253033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A000005 (A071974 (n + 1) ^ 2).toNat : ℚ)

end

end A365402.P15831681109069253033

namespace A365402

/-- `A000005(n+1)/A000005(A071974(n+1)²)` -/
def P15831681109069253033.Spec : Prop :=
  ∀ n, P15831681109069253033.a n = (A365402 (n + 1) : ℚ)

end A365402

/-! ## A365402.P13076865926396767756

`A286324(n+1)/A005361(n+1)*A370079(n+1)`
-/

namespace A365402.P13076865926396767756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286324 (n + 1) : ℚ) / (A005361 (n + 1) : ℚ) * (A370079 (n + 1) : ℚ)

end

end A365402.P13076865926396767756

namespace A365402

/-- `A286324(n+1)/A005361(n+1)*A370079(n+1)` -/
def P13076865926396767756.Spec : Prop :=
  ∀ n, P13076865926396767756.a n = (A365402 (n + 1) : ℚ)

end A365402

/-! ## A365402.P16867685530196359511

`∏{e}[A071975(n+1)², #]`
-/

namespace A365402.P16867685530196359511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A365402.P16867685530196359511

namespace A365402

/-- `∏{e}[A071975(n+1)², #]` -/
def P16867685530196359511.Spec : Prop :=
  ∀ n, (P16867685530196359511.a n : ℤ) = A365402 (n + 1)

end A365402

/-! ## A365402.P3641237637033992846

`A286324(A331737(A350389(n+1)²))`
-/

namespace A365402.P3641237637033992846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (A331737 (A350389 (n + 1) ^ 2).toNat).toNat

end

end A365402.P3641237637033992846

namespace A365402

/-- `A286324(A331737(A350389(n+1)²))` -/
def P3641237637033992846.Spec : Prop :=
  ∀ n, P3641237637033992846.a n = A365402 (n + 1)

end A365402

/-! ## A365402.P18270367281819402372

`A370080(A011262(n+1))`
-/

namespace A365402.P18270367281819402372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370080 (A011262 (n + 1)).toNat

end

end A365402.P18270367281819402372

namespace A365402

/-- `A370080(A011262(n+1))` -/
def P18270367281819402372.Spec : Prop :=
  ∀ n, P18270367281819402372.a n = A365402 (n + 1)

end A365402

/-! ## A365402.P2731048878749708242

`A370080(A064549(n+1))`
-/

namespace A365402.P2731048878749708242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370080 (A064549 (n + 1)).toNat

end

end A365402.P2731048878749708242

namespace A365402

/-- `A370080(A064549(n+1))` -/
def P2731048878749708242.Spec : Prop :=
  ∀ n, P2731048878749708242.a n = A365402 (n + 1)

end A365402

/-! ## A365402.P1256203167204336696

`A322483(A350389(n+1)²)`
-/

namespace A365402.P1256203167204336696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A350389 (n + 1) ^ 2).toNat

end

end A365402.P1256203167204336696

namespace A365402

/-- `A322483(A350389(n+1)²)` -/
def P1256203167204336696.Spec : Prop :=
  ∀ n, P1256203167204336696.a n = A365402 (n + 1)

end A365402

/-! ## A365402.P2876473292199153861

`A367987(A350389(n+1)²)`
-/

namespace A365402.P2876473292199153861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367987 (A350389 (n + 1) ^ 2).toNat

end

end A365402.P2876473292199153861

namespace A365402

/-- `A367987(A350389(n+1)²)` -/
def P2876473292199153861.Spec : Prop :=
  ∀ n, P2876473292199153861.a n = A365402 (n + 1)

end A365402

/-! ## A365402.P17714474802170763608

`∑{d}[A350389(n+1), A350389(#²)]`
-/

namespace A365402.P17714474802170763608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A350389 (d ^ 2)

end

end A365402.P17714474802170763608

namespace A365402

/-- `∑{d}[A350389(n+1), A350389(#²)]` -/
def P17714474802170763608.Spec : Prop :=
  ∀ n, P17714474802170763608.a n = A365402 (n + 1)

end A365402

/-! ## A365402.P3333386706956847816

`A365173(A350390(A350389(n+1)²))`
-/

namespace A365402.P3333386706956847816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365173 (A350390 (A350389 (n + 1) ^ 2).toNat).toNat

end

end A365402.P3333386706956847816

namespace A365402

/-- `A365173(A350390(A350389(n+1)²))` -/
def P3333386706956847816.Spec : Prop :=
  ∀ n, P3333386706956847816.a n = A365402 (n + 1)

end A365402

/-!
# A365403: The sum of the unitary divisors of the largest square dividing n.

The programs for A365403, the canonical program `A365403.P12086530719845818001` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365403 has offset 1).

The definition of A365403 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365403.P12086530719845818001

`A034448(A008833(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A365403

/-- `A034448(A008833(n+1))` -/
def P12086530719845818001.Spec : Prop :=
  ∀ n, P12086530719845818001.a n = A365403 (n + 1)

theorem P12086530719845818001.correct : P12086530719845818001.Spec := by
  intro n
  simp only [A365403, Nat.add_sub_cancel]

end A365403

/-! ## A365403.P708629563674242891

`A034676(A000188(n+1))`
-/

namespace A365403.P708629563674242891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (A000188 (n + 1)).toNat

end

end A365403.P708629563674242891

namespace A365403

/-- `A034676(A000188(n+1))` -/
def P708629563674242891.Spec : Prop :=
  ∀ n, P708629563674242891.a n = A365403 (n + 1)

end A365403

/-! ## A365403.P16268000425207713660

`A365479(A003557(n+1))`
-/

namespace A365403.P16268000425207713660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365479 (A003557 (n + 1)).toNat

end

end A365403.P16268000425207713660

namespace A365403

/-- `A365479(A003557(n+1))` -/
def P16268000425207713660.Spec : Prop :=
  ∀ n, P16268000425207713660.a n = A365403 (n + 1)

end A365403

/-! ## A365403.P17564643868293718597

`A034448(A000188(n+1)²)`
-/

namespace A365403.P17564643868293718597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A000188 (n + 1) ^ 2).toNat

end

end A365403.P17564643868293718597

namespace A365403

/-- `A034448(A000188(n+1)²)` -/
def P17564643868293718597.Spec : Prop :=
  ∀ n, P17564643868293718597.a n = A365403 (n + 1)

end A365403

/-! ## A365403.P3266524886211838873

`A365479(A000188(n+1)²)`
-/

namespace A365403.P3266524886211838873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365479 (A000188 (n + 1) ^ 2).toNat

end

end A365403.P3266524886211838873

namespace A365403

/-- `A365479(A000188(n+1)²)` -/
def P3266524886211838873.Spec : Prop :=
  ∀ n, P3266524886211838873.a n = A365403 (n + 1)

end A365403

/-! ## A365403.P12869921375672204125

`A034448((A057918(n+1)+1)²)`
-/

namespace A365403.P12869921375672204125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 ((A057918 (n + 1) + 1) ^ 2).toNat

end

end A365403.P12869921375672204125

namespace A365403

/-- `A034448((A057918(n+1)+1)²)` -/
def P12869921375672204125.Spec : Prop :=
  ∀ n, P12869921375672204125.a n = A365403 (n + 1)

end A365403

/-! ## A365403.P10178973213974895893

`A365479((n+1)/A007913(n+1))`
-/

namespace A365403.P10178973213974895893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365479 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A365403.P10178973213974895893

namespace A365403

/-- `A365479((n+1)/A007913(n+1))` -/
def P10178973213974895893.Spec : Prop :=
  ∀ n, P10178973213974895893.a n = A365403 (n + 1)

end A365403

/-! ## A365403.P6331617327679555351

`A360720(A008833(2*n+1-n))`
-/

namespace A365403.P6331617327679555351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360720 (A008833 (2 * n + 1 - n)).toNat

end

end A365403.P6331617327679555351

namespace A365403

/-- `A360720(A008833(2*n+1-n))` -/
def P6331617327679555351.Spec : Prop :=
  ∀ n, P6331617327679555351.a n = A365403 (n + 1)

end A365403

/-! ## A365403.P29590040086240152

`∑{d}[n+1, A061019(#)*A365170((n+1)/#)]`
-/

namespace A365403.P29590040086240152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d * A365170 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365403.P29590040086240152

namespace A365403

/-- `∑{d}[n+1, A061019(#)*A365170((n+1)/#)]` -/
def P29590040086240152.Spec : Prop :=
  ∀ n, P29590040086240152.a n = A365403 (n + 1)

end A365403

/-! ## A365403.P16206634130743679361

`A034448(A000188(n+1)*A000188(n+1))`
-/

namespace A365403.P16206634130743679361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A000188 (n + 1) * A000188 (n + 1)).toNat

end

end A365403.P16206634130743679361

namespace A365403

/-- `A034448(A000188(n+1)*A000188(n+1))` -/
def P16206634130743679361.Spec : Prop :=
  ∀ n, P16206634130743679361.a n = A365403 (n + 1)

end A365403

/-! ## A365403.P16550629466902929646

`A305461(A008833(n+1)²)`
-/

namespace A365403.P16550629466902929646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 (A008833 (n + 1) ^ 2).toNat

end

end A365403.P16550629466902929646

namespace A365403

/-- `A305461(A008833(n+1)²)` -/
def P16550629466902929646.Spec : Prop :=
  ∀ n, P16550629466902929646.a n = A365403 (n + 1)

end A365403

/-! ## A365403.P18319442128936075535

`A365404(A008833(n+1)²)`
-/

namespace A365403.P18319442128936075535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365404 (A008833 (n + 1) ^ 2).toNat

end

end A365403.P18319442128936075535

namespace A365403

/-- `A365404(A008833(n+1)²)` -/
def P18319442128936075535.Spec : Prop :=
  ∀ n, P18319442128936075535.a n = A365403 (n + 1)

end A365403

/-! ## A365403.P4216192328922795126

`A305461(A000188(n+1)²²)`
-/

namespace A365403.P4216192328922795126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 ((A000188 (n + 1) ^ 2) ^ 2).toNat

end

end A365403.P4216192328922795126

namespace A365403

/-- `A305461(A000188(n+1)²²)` -/
def P4216192328922795126.Spec : Prop :=
  ∀ n, P4216192328922795126.a n = A365403 (n + 1)

end A365403

/-! ## A365403.P9348733106582464066

`A365404(A000188(n+1)²²)`
-/

namespace A365403.P9348733106582464066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365404 ((A000188 (n + 1) ^ 2) ^ 2).toNat

end

end A365403.P9348733106582464066

namespace A365403

/-- `A365404(A000188(n+1)²²)` -/
def P9348733106582464066.Spec : Prop :=
  ∀ n, P9348733106582464066.a n = A365403 (n + 1)

end A365403

/-! ## A365403.P17190580317002853973

`A365481(A000188(n+1)²²)`
-/

namespace A365403.P17190580317002853973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365481 ((A000188 (n + 1) ^ 2) ^ 2).toNat

end

end A365403.P17190580317002853973

namespace A365403

/-- `A365481(A000188(n+1)²²)` -/
def P17190580317002853973.Spec : Prop :=
  ∀ n, P17190580317002853973.a n = A365403 (n + 1)

end A365403

/-! ## A365403.P5960032081491752614

`A365404((n+1)*A008833(n+1))`
-/

namespace A365403.P5960032081491752614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365404 ((n + 1 : ℤ) * A008833 (n + 1)).toNat

end

end A365403.P5960032081491752614

namespace A365403

/-- `A365404((n+1)*A008833(n+1))` -/
def P5960032081491752614.Spec : Prop :=
  ∀ n, P5960032081491752614.a n = A365403 (n + 1)

end A365403

/-!
# A365404: The sum of the unitary divisors of the square root of the largest square dividing n.

The programs for A365404, the canonical program `A365404.P8504261663982695233` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365404 has offset 1).

The definition of A365404 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365404.P8504261663982695233

`A034448(A000188(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A365404

/-- `A034448(A000188(n+1))` -/
def P8504261663982695233.Spec : Prop :=
  ∀ n, P8504261663982695233.a n = A365404 (n + 1)

theorem P8504261663982695233.correct : P8504261663982695233.Spec := by
  intro n
  simp only [A365404, Nat.add_sub_cancel]

end A365404

/-! ## A365404.P11944544747194116509

`A305461(A008833(n+1))`
-/

namespace A365404.P11944544747194116509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 (A008833 (n + 1)).toNat

end

end A365404.P11944544747194116509

namespace A365404

/-- `A305461(A008833(n+1))` -/
def P11944544747194116509.Spec : Prop :=
  ∀ n, P11944544747194116509.a n = A365404 (n + 1)

end A365404

/-! ## A365404.P6380176702953188225

`A305461(A057521(n+1))`
-/

namespace A365404.P6380176702953188225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 (A057521 (n + 1)).toNat

end

end A365404.P6380176702953188225

namespace A365404

/-- `A305461(A057521(n+1))` -/
def P6380176702953188225.Spec : Prop :=
  ∀ n, P6380176702953188225.a n = A365404 (n + 1)

end A365404

/-! ## A365404.P17834107798748408501

`A365481(A003557(n+1))`
-/

namespace A365404.P17834107798748408501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365481 (A003557 (n + 1)).toNat

end

end A365404.P17834107798748408501

namespace A365404

/-- `A365481(A003557(n+1))` -/
def P17834107798748408501.Spec : Prop :=
  ∀ n, P17834107798748408501.a n = A365404 (n + 1)

end A365404

/-! ## A365404.P2264057100536548881

`A305461(A000188(n+1)²)`
-/

namespace A365404.P2264057100536548881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 (A000188 (n + 1) ^ 2).toNat

end

end A365404.P2264057100536548881

namespace A365404

/-- `A305461(A000188(n+1)²)` -/
def P2264057100536548881.Spec : Prop :=
  ∀ n, P2264057100536548881.a n = A365404 (n + 1)

end A365404

/-! ## A365404.P11021544841892400944

`A365481(A000188(n+1)²)`
-/

namespace A365404.P11021544841892400944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365481 (A000188 (n + 1) ^ 2).toNat

end

end A365404.P11021544841892400944

namespace A365404

/-- `A365481(A000188(n+1)²)` -/
def P11021544841892400944.Spec : Prop :=
  ∀ n, P11021544841892400944.a n = A365404 (n + 1)

end A365404

/-! ## A365404.P11005026804219655478

`A034448(A057918(n+1)+1)`
-/

namespace A365404.P11005026804219655478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A057918 (n + 1) + 1).toNat

end

end A365404.P11005026804219655478

namespace A365404

/-- `A034448(A057918(n+1)+1)` -/
def P11005026804219655478.Spec : Prop :=
  ∀ n, P11005026804219655478.a n = A365404 (n + 1)

theorem P11005026804219655478.correct : P11005026804219655478.Spec := by
  intro n
  simp only [A365404, Nat.add_sub_cancel, A365404.P11005026804219655478.a, A365404.P8504261663982695233.a, A000188, A000188.P7486858720566838181.a, A034448, A034448.P17017727775393200719.a, A057918, A057918.P8779601029509101892.a, A008833, A008833.P18388074464065390543.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A007913, A007913.P11359412940648999332.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A059479, A059479.P17464652159649958448.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A365404

/-! ## A365404.P13203650509358494237

`A034448((n+1)/A019554(n+1))`
-/

namespace A365404.P13203650509358494237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A365404.P13203650509358494237

namespace A365404

/-- `A034448((n+1)/A019554(n+1))` -/
def P13203650509358494237.Spec : Prop :=
  ∀ n, P13203650509358494237.a n = A365404 (n + 1)

end A365404

/-! ## A365404.P17969958440717841023

`A305461(n+1)/A056671(n+1)`
-/

namespace A365404.P17969958440717841023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305461 (n + 1) : ℚ) / (A056671 (n + 1) : ℚ)

end

end A365404.P17969958440717841023

namespace A365404

/-- `A305461(n+1)/A056671(n+1)` -/
def P17969958440717841023.Spec : Prop :=
  ∀ n, P17969958440717841023.a n = (A365404 (n + 1) : ℚ)

end A365404

/-! ## A365404.P15274241266809089353

`A305461(A000188(n+1)*A000188(n+1))`
-/

namespace A365404.P15274241266809089353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 (A000188 (n + 1) * A000188 (n + 1)).toNat

end

end A365404.P15274241266809089353

namespace A365404

/-- `A305461(A000188(n+1)*A000188(n+1))` -/
def P15274241266809089353.Spec : Prop :=
  ∀ n, P15274241266809089353.a n = A365404 (n + 1)

end A365404

/-! ## A365404.P1998533473166744554

`A305461(A011264(n+1))`
-/

namespace A365404.P1998533473166744554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 (A011264 (n + 1)).toNat

end

end A365404.P1998533473166744554

namespace A365404

/-- `A305461(A011264(n+1))` -/
def P1998533473166744554.Spec : Prop :=
  ∀ n, P1998533473166744554.a n = A365404 (n + 1)

end A365404

/-!
# A365406: Numbers j whose largest divisor <= sqrt(j) is a power of 2.

The programs for A365406, there is no canonical definition to state claims against.
-/

/-! ## A365406.P15316725232066973640

`eq[1, A365716(n+1)]+1`
-/

namespace A365406.P15316725232066973640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A365406.P15316725232066973640

/-! ## A365406.P6253139017988190099

`filter[A265999(n+1), A365716(#)]`
-/

namespace A365406.P6253139017988190099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A365406.P6253139017988190099

/-! ## A365406.P16088901294223440192

`filter[n+1, A365716(#)]`
-/

namespace A365406.P16088901294223440192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j) = 1) n)

end

end A365406.P16088901294223440192

/-! ## A365406.P17122910997158637079

`eq[2, A051664(A033676(n+1))]+1`
-/

namespace A365406.P17122910997158637079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (A033676 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A365406.P17122910997158637079

/-! ## A365406.P2093999802427001071

`record[lcm(A006519(n+1), A033677(n+1))]`
-/

namespace A365406.P2093999802427001071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A033677 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365406.P2093999802427001071

/-!
# A365408: Numbers j whose largest divisor <= sqrt(j) is not a power of 2.

The programs for A365408, there is no canonical definition to state claims against.
-/

/-! ## A365408.P16784586318127800456

`eq[0, A365716(n+1)]+1`
-/

namespace A365408.P16784586318127800456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A365408.P16784586318127800456

/-! ## A365408.P9749009233184616516

`comp[A365406(n+1)-1]+1`
-/

namespace A365408.P9749009233184616516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365406 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A365408.P9749009233184616516

/-! ## A365408.P7491674190813737582

`lt[2, A007947(A033676(n+1))]+1`
-/

namespace A365408.P7491674190813737582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A033676 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A365408.P7491674190813737582

/-! ## A365408.P13020820666910126759

`lt[A062402(A033676(n+1)²)%2, 1]+1`
-/

namespace A365408.P13020820666910126759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062402 (A033676 (n + 1) ^ 2).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A365408.P13020820666910126759

/-! ## A365408.P13337717859752284792

`lt[A371761(3*n+1), A295342(A171565(2*n))]`
-/

namespace A365408.P13337717859752284792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371761 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295342 (A171565 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A365408.P13337717859752284792

/-!
# A365409: a(n) = Sum_{k=1..n} binomial(floor(n/k)+3,4).

The programs for A365409, the canonical program `A365409.P15440935900468717618` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365409 has offset 1).

The definition of A365409 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A064603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365409.P15440935900468717618

`(A064603(n+1)+3*A064602(n+1)+2*A024916(n+1))/6`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A365409

/-- `(A064603(n+1)+3*A064602(n+1)+2*A024916(n+1))/6` -/
def P15440935900468717618.Spec : Prop :=
  ∀ n, P15440935900468717618.a n = (A365409 (n + 1) : ℚ)

end A365409

/-! ## A365409.P12719150080268499595

`∑[∑{d}[n+1, C(#+2, 3)]]`
-/

namespace A365409.P12719150080268499595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose (d + 2) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365409.P12719150080268499595

namespace A365409

/-- `∑[∑{d}[n+1, C(#+2, 3)]]` -/
def P12719150080268499595.Spec : Prop :=
  ∀ n, (P12719150080268499595.a n : ℤ) = A365409 (n + 1)

end A365409

/-! ## A365409.P3015538454743077594

`A366971(n+1)+A064602(n+1)`
-/

namespace A365409.P3015538454743077594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366971 (n + 1) + A064602 (n + 1)

end

end A365409.P3015538454743077594

namespace A365409

/-- `A366971(n+1)+A064602(n+1)` -/
def P3015538454743077594.Spec : Prop :=
  ∀ n, P3015538454743077594.a n = A365409 (n + 1)

end A365409

/-! ## A365409.P4108376591830603651

`A366985(n+1)-A366984(n+1)`
-/

namespace A365409.P4108376591830603651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366985 (n + 1) - A366984 (n + 1)

end

end A365409.P4108376591830603651

namespace A365409

/-- `A366985(n+1)-A366984(n+1)` -/
def P4108376591830603651.Spec : Prop :=
  ∀ n, P4108376591830603651.a n = A365409 (n + 1)

end A365409

/-! ## A365409.P1045620550030799691

`∑[A363604(n+1)+A007437(n+1)]`
-/

namespace A365409.P1045620550030799691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363604 (n + 1) + A007437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365409.P1045620550030799691

namespace A365409

/-- `∑[A363604(n+1)+A007437(n+1)]` -/
def P1045620550030799691.Spec : Prop :=
  ∀ n, P1045620550030799691.a n = A365409 (n + 1)

end A365409

/-! ## A365409.P16460513534378820054

`A064602(n+1)+∑[A363607(n+1)]`
-/

namespace A365409.P16460513534378820054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064602 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365409.P16460513534378820054

namespace A365409

/-- `A064602(n+1)+∑[A363607(n+1)]` -/
def P16460513534378820054.Spec : Prop :=
  ∀ n, P16460513534378820054.a n = A365409 (n + 1)

end A365409

/-! ## A365409.P11467206300894019963

`∑[A116963(n+1)]-(A366983(n+1)+A364970(n+1))`
-/

namespace A365409.P11467206300894019963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A366983 (n + 1) + A364970 (n + 1))

end

end A365409.P11467206300894019963

namespace A365409

/-- `∑[A116963(n+1)]-(A366983(n+1)+A364970(n+1))` -/
def P11467206300894019963.Spec : Prop :=
  ∀ n, P11467206300894019963.a n = A365409 (n + 1)

end A365409

/-! ## A365409.P985118713894531916

`∑[4/(n+1)*A343545(n+1)]-(A366983(n+1)+A364970(n+1))`
-/

namespace A365409.P985118713894531916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (n + 1 : ℚ) * (A343545 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A366983 (n + 1) + A364970 (n + 1) : ℚ)

end

end A365409.P985118713894531916

namespace A365409

/-- `∑[4/(n+1)*A343545(n+1)]-(A366983(n+1)+A364970(n+1))` -/
def P985118713894531916.Spec : Prop :=
  ∀ n, P985118713894531916.a n = (A365409 (n + 1) : ℚ)

end A365409

/-! ## A365409.P10530107123454062091

`∑[A059358(n+1)]`
-/

namespace A365409.P10530107123454062091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365409.P10530107123454062091

namespace A365409

/-- `∑[A059358(n+1)]` -/
def P10530107123454062091.Spec : Prop :=
  ∀ n, P10530107123454062091.a n = A365409 (n + 1)

end A365409

/-!
# A365410: Parity of A000070.

The programs for A365410, there is no canonical definition to state claims against.
-/

/-! ## A365410.P10764850737686292451

`A000035(A000070(n))`
-/

namespace A365410.P10764850737686292451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000070 n).toNat

end

end A365410.P10764850737686292451

/-! ## A365410.P10467760186345985355

`A071754(n)%2`
-/

namespace A365410.P10467760186345985355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071754 n) 2

end

end A365410.P10467760186345985355

/-! ## A365410.P11569136396160332991

`A101417(n)%2`
-/

namespace A365410.P11569136396160332991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101417 n) 2

end

end A365410.P11569136396160332991

/-! ## A365410.P13521306487860703717

`A304631(n)%2`
-/

namespace A365410.P13521306487860703717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304631 n) 2

end

end A365410.P13521306487860703717

/-! ## A365410.P7153841404267440567

`and(1, ∑[A000700(n)])`
-/

namespace A365410.P7153841404267440567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365410.P7153841404267440567

/-! ## A365410.P8588598057952391231

`and(1, ∑[A081362(n)])`
-/

namespace A365410.P8588598057952391231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365410.P8588598057952391231

/-! ## A365410.P3425163502248036964

`and(1, ∑[A178743(n)])`
-/

namespace A365410.P3425163502248036964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365410.P3425163502248036964

/-! ## A365410.P11431348059142262261

`and(1, ∑[A260221(n)])`
-/

namespace A365410.P11431348059142262261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365410.P11431348059142262261

/-! ## A365410.P4039316427139029195

`(a(n-1)-A040051(n))²` with `a(0)=1`
-/

namespace A365410.P4039316427139029195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - A040051 n) ^ 2

end

end A365410.P4039316427139029195

/-! ## A365410.P15877662888974825525

`A000035(A071754(n))`
-/

namespace A365410.P15877662888974825525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A071754 n).toNat

end

end A365410.P15877662888974825525

/-! ## A365410.P6821746625287448211

`and(A060576(n), A071754(n))`
-/

namespace A365410.P6821746625287448211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A071754 n)

end

end A365410.P6821746625287448211

/-! ## A365410.P10745275094753971890

`A087787(n)%2`
-/

namespace A365410.P10745275094753971890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087787 n) 2

end

end A365410.P10745275094753971890

/-! ## A365410.P18317080901621326295

`A092306(n)%2`
-/

namespace A365410.P18317080901621326295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092306 n) 2

end

end A365410.P18317080901621326295

/-! ## A365410.P9389058823754559697

`A182712(n+2)%2`
-/

namespace A365410.P9389058823754559697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182712 (n + 2)) 2

end

end A365410.P9389058823754559697

/-! ## A365410.P11257896185556000526

`A090794(n+1)%2`
-/

namespace A365410.P11257896185556000526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090794 (n + 1)) 2

end

end A365410.P11257896185556000526

/-! ## A365410.P8929999853524967469

`A331165(n)%2`
-/

namespace A365410.P8929999853524967469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331165 n) 2

end

end A365410.P8929999853524967469

/-! ## A365410.P13162179916757694212

`and(1, A058884(n))`
-/

namespace A365410.P13162179916757694212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A058884 n)

end

end A365410.P13162179916757694212

/-! ## A365410.P2905835426262356201

`and(1, ∑[A000041(n)])`
-/

namespace A365410.P2905835426262356201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365410.P2905835426262356201

/-! ## A365410.P15164929058341370510

`and(1, ∑[∑[A002865(n)]])`
-/

namespace A365410.P15164929058341370510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365410.P15164929058341370510

/-! ## A365410.P14229624246912315447

`and(A000070(n), A060576(n))`
-/

namespace A365410.P14229624246912315447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000070 n) (A060576 n)

end

end A365410.P14229624246912315447

/-!
# A365411: Numbers k such that 4*k-1 and 4*k+1 are both prime powers (A246655).

The programs for A365411, there is no canonical definition to state claims against.
-/

/-! ## A365411.P6894059040218392218

`eq[3, A001221(A299279(2*n))]`
-/

namespace A365411.P6894059040218392218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A299279 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A365411.P6894059040218392218

/-!
# A365412: a(n) = sigma(6*n+2). Sum of the divisors of 6*n+2, n >= 0.

The programs for A365412, the canonical program `A365412.P2623690394463438513` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365412 has offset 0).

The definition of A365412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365412.P2623690394463438513

`A000203(6*n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A365412

/-- `A000203(6*n+2)` -/
def P2623690394463438513.Spec : Prop :=
  ∀ n, P2623690394463438513.a n = A365412 n

theorem P2623690394463438513.correct : P2623690394463438513.Spec := by
  intro n
  simp only [A365412]

end A365412

/-! ## A365412.P10952857605471997051

`∑{d}[6*n+2, #]`
-/

namespace A365412.P10952857605471997051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A365412.P10952857605471997051

namespace A365412

/-- `∑{d}[6*n+2, #]` -/
def P10952857605471997051.Spec : Prop :=
  ∀ n, (P10952857605471997051.a n : ℤ) = A365412 n

theorem P10952857605471997051.correct : P10952857605471997051.Spec := by
  intro n
  simp only [A365412, Nat.add_sub_cancel, A365412.P10952857605471997051.f1, A365412.P10952857605471997051.a, A365412.P2623690394463438513.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365412

/-! ## A365412.P9444410649789578843

`3*A033686(2*n)`
-/

namespace A365412.P9444410649789578843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033686 (2 * n)

end

end A365412.P9444410649789578843

namespace A365412

/-- `3*A033686(2*n)` -/
def P9444410649789578843.Spec : Prop :=
  ∀ n, P9444410649789578843.a n = A365412 n

end A365412

/-! ## A365412.P1664438262848500271

`A062731(3*n+1)`
-/

namespace A365412.P1664438262848500271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (3 * n + 1)

end

end A365412.P1664438262848500271

namespace A365412

/-- `A062731(3*n+1)` -/
def P1664438262848500271.Spec : Prop :=
  ∀ n, P1664438262848500271.a n = A365412 n

end A365412

/-! ## A365412.P12621509277724842749

`A144615(2*n)`
-/

namespace A365412.P12621509277724842749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144615 (2 * n)

end

end A365412.P12621509277724842749

namespace A365412

/-- `A144615(2*n)` -/
def P12621509277724842749.Spec : Prop :=
  ∀ n, P12621509277724842749.a n = A365412 n

theorem P12621509277724842749.correct : P12621509277724842749.Spec := by
  intro n
  simp only [A365412, Nat.add_sub_cancel, A365412.P12621509277724842749.a, A365412.P2623690394463438513.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A144615, A144615.P1433595682718935894.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365412

/-! ## A365412.P16077120916900717693

`3*A134079(2*n)`
-/

namespace A365412.P16077120916900717693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A134079 (2 * n)

end

end A365412.P16077120916900717693

namespace A365412

/-- `3*A134079(2*n)` -/
def P16077120916900717693.Spec : Prop :=
  ∀ n, P16077120916900717693.a n = A365412 n

end A365412

/-! ## A365412.P856561461808862690

`A363890(2*n+1)+A363514(2*n+1)`
-/

namespace A365412.P856561461808862690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363890 (2 * n + 1) + A363514 (2 * n + 1)

end

end A365412.P856561461808862690

namespace A365412

/-- `A363890(2*n+1)+A363514(2*n+1)` -/
def P856561461808862690.Spec : Prop :=
  ∀ n, P856561461808862690.a n = A365412 n

end A365412

/-! ## A365412.P5549593068482071237

`A008486(A033686(2*n))`
-/

namespace A365412.P5549593068482071237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A033686 (2 * n)).toNat

end

end A365412.P5549593068482071237

namespace A365412

/-- `A008486(A033686(2*n))` -/
def P5549593068482071237.Spec : Prop :=
  ∀ n, P5549593068482071237.a n = A365412 n

end A365412

/-! ## A365412.P10543100917044179603

`A046913(6*n+2)`
-/

namespace A365412.P10543100917044179603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (6 * n + 2)

end

end A365412.P10543100917044179603

namespace A365412

/-- `A046913(6*n+2)` -/
def P10543100917044179603.Spec : Prop :=
  ∀ n, P10543100917044179603.a n = A365412 n

end A365412

/-! ## A365412.P985952642311873301

`A245092(A017557(n))`
-/

namespace A365412.P985952642311873301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A017557 n).toNat

end

end A365412.P985952642311873301

namespace A365412

/-- `A245092(A017557(n))` -/
def P985952642311873301.Spec : Prop :=
  ∀ n, P985952642311873301.a n = A365412 n

end A365412

/-! ## A365412.P14799268880441495244

`A245092(A017533(n)+2)`
-/

namespace A365412.P14799268880441495244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A017533 n + 2).toNat

end

end A365412.P14799268880441495244

namespace A365412

/-- `A245092(A017533(n)+2)` -/
def P14799268880441495244.Spec : Prop :=
  ∀ n, P14799268880441495244.a n = A365412 n

end A365412

/-! ## A365412.P5580256815974841349

`A078708(2*A016777(n))`
-/

namespace A365412.P5580256815974841349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (2 * A016777 n).toNat

end

end A365412.P5580256815974841349

namespace A365412

/-- `A078708(2*A016777(n))` -/
def P5580256815974841349.Spec : Prop :=
  ∀ n, P5580256815974841349.a n = A365412 n

end A365412

/-! ## A365412.P3672905425694375178

`A229615(A017569(n))`
-/

namespace A365412.P3672905425694375178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229615 (A017569 n).toNat

end

end A365412.P3672905425694375178

namespace A365412

/-- `A229615(A017569(n))` -/
def P3672905425694375178.Spec : Prop :=
  ∀ n, P3672905425694375178.a n = A365412 n

end A365412

/-! ## A365412.P192498419562842110

`A262610(A316320(n+1))`
-/

namespace A365412.P192498419562842110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262610 (A316320 (n + 1)).toNat

end

end A365412.P192498419562842110

namespace A365412

/-- `A262610(A316320(n+1))` -/
def P192498419562842110.Spec : Prop :=
  ∀ n, P192498419562842110.a n = A365412 n

end A365412

/-! ## A365412.P14287374765456901484

`A229615(2*A016933(n))`
-/

namespace A365412.P14287374765456901484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229615 (2 * A016933 n).toNat

end

end A365412.P14287374765456901484

namespace A365412

/-- `A229615(2*A016933(n))` -/
def P14287374765456901484.Spec : Prop :=
  ∀ n, P14287374765456901484.a n = A365412 n

end A365412

/-!
# A365413: a(1) = 2, a(n) = k - 1, where k is the least number greater than a(n-1) such that rad(k) | a(n-1), where rad(n) = A007947(n).

The programs for A365413, there is no canonical definition to state claims against.
-/

/-! ## A365413.P12077692376043222096

`A289280(a(n-1))-1` with `a(0)=2`
-/

namespace A365413.P12077692376043222096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A289280 (a (n - 1)).toNat - 1

end

end A365413.P12077692376043222096

/-!
# A365414: a(n) = sigma(6*n+4). Sum of the divisors of 6*n+4, n >= 0.

The programs for A365414, the canonical program `A365414.P5972711009261170404` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365414 has offset 0).

The definition of A365414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365414.P5972711009261170404

`A000203(6*n+4)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A365414

/-- `A000203(6*n+4)` -/
def P5972711009261170404.Spec : Prop :=
  ∀ n, P5972711009261170404.a n = A365414 n

theorem P5972711009261170404.correct : P5972711009261170404.Spec := by
  intro n
  simp only [A365414]

end A365414

/-! ## A365414.P14234457731765057625

`∑{d}[6*n+4, #]`
-/

namespace A365414.P14234457731765057625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A365414.P14234457731765057625

namespace A365414

/-- `∑{d}[6*n+4, #]` -/
def P14234457731765057625.Spec : Prop :=
  ∀ n, (P14234457731765057625.a n : ℤ) = A365414 n

theorem P14234457731765057625.correct : P14234457731765057625.Spec := by
  intro n
  simp only [A365414, Nat.add_sub_cancel, A365414.P14234457731765057625.f1, A365414.P14234457731765057625.a, A365414.P5972711009261170404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365414

/-! ## A365414.P13090962702333139619

`A062731(3*n+2)`
-/

namespace A365414.P13090962702333139619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (3 * n + 2)

end

end A365414.P13090962702333139619

namespace A365414

/-- `A062731(3*n+2)` -/
def P13090962702333139619.Spec : Prop :=
  ∀ n, P13090962702333139619.a n = A365414 n

end A365414

/-! ## A365414.P1333148859280574449

`A144614(Δ[n²])`
-/

namespace A365414.P1333148859280574449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144614 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A365414.P1333148859280574449

namespace A365414

/-- `A144614(Δ[n²])` -/
def P1333148859280574449.Spec : Prop :=
  ∀ n, P1333148859280574449.a n = A365414 n

end A365414

/-! ## A365414.P15601520920878112052

`A144614(2*n+1)+A000007(n+1)`
-/

namespace A365414.P15601520920878112052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144614 (2 * n + 1) + A000007 (n + 1)

end

end A365414.P15601520920878112052

namespace A365414

/-- `A144614(2*n+1)+A000007(n+1)` -/
def P15601520920878112052.Spec : Prop :=
  ∀ n, P15601520920878112052.a n = A365414 n

theorem P15601520920878112052.correct : P15601520920878112052.Spec := by
  intro n
  simp only [A365414, Nat.add_sub_cancel, A365414.P15601520920878112052.a, A365414.P5972711009261170404.a, A000007, A000007.P6599383543502402472.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A144614, A144614.P17938140406171166888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365414

/-! ## A365414.P8260710670333395807

`A363891(2*(n+1))+A363889(2*(n+1))`
-/

namespace A365414.P8260710670333395807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363891 (2 * (n + 1)) + A363889 (2 * (n + 1))

end

end A365414.P8260710670333395807

namespace A365414

/-- `A363891(2*(n+1))+A363889(2*(n+1))` -/
def P8260710670333395807.Spec : Prop :=
  ∀ n, P8260710670333395807.a n = A365414 n

end A365414

/-! ## A365414.P2482998138965590241

`filter[A144614(2*n+1), A175192(#)]`
-/

namespace A365414.P2482998138965590241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144614 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A365414.P2482998138965590241

namespace A365414

/-- `filter[A144614(2*n+1), A175192(#)]` -/
def P2482998138965590241.Spec : Prop :=
  ∀ n, P2482998138965590241.a n = A365414 n

end A365414

/-! ## A365414.P13810213005204855214

`filter[A144614(2*n+1), A347523(#)]`
-/

namespace A365414.P13810213005204855214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144614 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A365414.P13810213005204855214

namespace A365414

/-- `filter[A144614(2*n+1), A347523(#)]` -/
def P13810213005204855214.Spec : Prop :=
  ∀ n, P13810213005204855214.a n = A365414 n

end A365414

/-! ## A365414.P14879304128027484370

`A073255(A065896(2*n+n+2))`
-/

namespace A365414.P14879304128027484370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073255 (A065896 (2 * n + (n + 2))).toNat

end

end A365414.P14879304128027484370

namespace A365414

/-- `A073255(A065896(2*n+n+2))` -/
def P14879304128027484370.Spec : Prop :=
  ∀ n, P14879304128027484370.a n = A365414 n

end A365414

/-! ## A365414.P991585179684285944

`A078708(6*n+4)`
-/

namespace A365414.P991585179684285944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (6 * n + 4)

end

end A365414.P991585179684285944

namespace A365414

/-- `A078708(6*n+4)` -/
def P991585179684285944.Spec : Prop :=
  ∀ n, P991585179684285944.a n = A365414 n

end A365414

/-! ## A365414.P17514736020010457405

`A245092(A017605(n))`
-/

namespace A365414.P17514736020010457405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A017605 n).toNat

end

end A365414.P17514736020010457405

namespace A365414

/-- `A245092(A017605(n))` -/
def P17514736020010457405.Spec : Prop :=
  ∀ n, P17514736020010457405.a n = A365414 n

end A365414

/-! ## A365414.P17536282172860269723

`A046913(2*A016789(n))`
-/

namespace A365414.P17536282172860269723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (2 * A016789 n).toNat

end

end A365414.P17536282172860269723

namespace A365414

/-- `A046913(2*A016789(n))` -/
def P17536282172860269723.Spec : Prop :=
  ∀ n, P17536282172860269723.a n = A365414 n

end A365414

/-! ## A365414.P14221644312714433459

`A046913(A016777(2*n+1))`
-/

namespace A365414.P14221644312714433459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (A016777 (2 * n + 1)).toNat

end

end A365414.P14221644312714433459

namespace A365414

/-- `A046913(A016777(2*n+1))` -/
def P14221644312714433459.Spec : Prop :=
  ∀ n, P14221644312714433459.a n = A365414 n

end A365414

/-! ## A365414.P3154233165537484887

`A245092(A016921(2*n+1))`
-/

namespace A365414.P3154233165537484887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A016921 (2 * n + 1)).toNat

end

end A365414.P3154233165537484887

namespace A365414

/-- `A245092(A016921(2*n+1))` -/
def P3154233165537484887.Spec : Prop :=
  ∀ n, P3154233165537484887.a n = A365414 n

end A365414

/-! ## A365414.P13186029541924145332

`A245092(A016969(2*n)+2)`
-/

namespace A365414.P13186029541924145332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A016969 (2 * n) + 2).toNat

end

end A365414.P13186029541924145332

namespace A365414

/-- `A245092(A016969(2*n)+2)` -/
def P13186029541924145332.Spec : Prop :=
  ∀ n, P13186029541924145332.a n = A365414 n

end A365414

/-! ## A365414.P13458040017957773973

`A046913(A008585(2*n+1)+1)`
-/

namespace A365414.P13458040017957773973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (A008585 (2 * n + 1) + 1).toNat

end

end A365414.P13458040017957773973

namespace A365414

/-- `A046913(A008585(2*n+1)+1)` -/
def P13458040017957773973.Spec : Prop :=
  ∀ n, P13458040017957773973.a n = A365414 n

end A365414

/-! ## A365414.P8287742229751428327

`A229615(A017617(n))`
-/

namespace A365414.P8287742229751428327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229615 (A017617 n).toNat

end

end A365414.P8287742229751428327

namespace A365414

/-- `A229615(A017617(n))` -/
def P8287742229751428327.Spec : Prop :=
  ∀ n, P8287742229751428327.a n = A365414 n

end A365414

/-! ## A365414.P6085286060334616958

`A229615(A016933(2*n+1))`
-/

namespace A365414.P6085286060334616958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229615 (A016933 (2 * n + 1)).toNat

end

end A365414.P6085286060334616958

namespace A365414

/-- `A229615(A016933(2*n+1))` -/
def P6085286060334616958.Spec : Prop :=
  ∀ n, P6085286060334616958.a n = A365414 n

end A365414

/-! ## A365414.P3851289735292349072

`A262610(A271114(2*n+1))`
-/

namespace A365414.P3851289735292349072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262610 (A271114 (2 * n + 1)).toNat

end

end A365414.P3851289735292349072

namespace A365414

/-- `A262610(A271114(2*n+1))` -/
def P3851289735292349072.Spec : Prop :=
  ∀ n, P3851289735292349072.a n = A365414 n

end A365414

/-! ## A365414.P5390642523711704852

`A229615(2*A016777(2*n+1))`
-/

namespace A365414.P5390642523711704852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229615 (2 * A016777 (2 * n + 1)).toNat

end

end A365414.P5390642523711704852

namespace A365414

/-- `A229615(2*A016777(2*n+1))` -/
def P5390642523711704852.Spec : Prop :=
  ∀ n, P5390642523711704852.a n = A365414 n

end A365414

/-!
# A365415: Number of decimal digits of e after its decimal point needed to contain all digit substrings of length n.

The programs for A365415, there is no canonical definition to state claims against.
-/

/-! ## A365415.P10709740997174873834

`A152182(n+1)+n+1-2`
-/

namespace A365415.P10709740997174873834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152182 (n + 1) + (n + 1 : ℤ) - 2

end

end A365415.P10709740997174873834

/-! ## A365415.P17768961846603103102

`A036904(n+1)-1`
-/

namespace A365415.P17768961846603103102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036904 (n + 1) - 1

end

end A365415.P17768961846603103102

/-! ## A365415.P7583879391021011498

`A152182(n+1)+n-1`
-/

namespace A365415.P7583879391021011498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152182 (n + 1) + ((n : ℤ) - 1)

end

end A365415.P7583879391021011498

/-! ## A365415.P16653834493332563060

`A321800(n)+A036904(n+1)`
-/

namespace A365415.P16653834493332563060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A036904 (n + 1)

end

end A365415.P16653834493332563060

/-!
# A365416: Numbers k such that 2*k-1 and 2*k+1 are both prime powers (A246655).

The programs for A365416, there is no canonical definition to state claims against.
-/

/-! ## A365416.P8561564565446789834

`floor(A064077(n+1)/2)`
-/

namespace A365416.P8561564565446789834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064077 (n + 1) : ℚ) / 2⌋

end

end A365416.P8561564565446789834

/-! ## A365416.P3470703266905192220

`ceil(A064076(n+1)/2)`
-/

namespace A365416.P3470703266905192220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064076 (n + 1) : ℚ) / 2⌉

end

end A365416.P3470703266905192220

/-! ## A365416.P16413760246451171660

`A120432(n+3)/2`
-/

namespace A365416.P16413760246451171660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120432 (n + 3) : ℚ) / 2

end

end A365416.P16413760246451171660

/-! ## A365416.P4917416336569792263

`ceil(A120431(n+3)/2)`
-/

namespace A365416.P4917416336569792263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120431 (n + 3) : ℚ) / 2⌉

end

end A365416.P4917416336569792263

/-! ## A365416.P763029648791913413

`A000463(A064076(n+1))`
-/

namespace A365416.P763029648791913413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A064076 (n + 1)).toNat

end

end A365416.P763029648791913413

/-! ## A365416.P6135674307861280218

`A004524(A064077(n+1))`
-/

namespace A365416.P6135674307861280218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A064077 (n + 1)).toNat

end

end A365416.P6135674307861280218

/-! ## A365416.P7959635933984818618

`A078898(A064076(n+1)+1)`
-/

namespace A365416.P7959635933984818618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A064076 (n + 1) + 1).toNat

end

end A365416.P7959635933984818618

/-! ## A365416.P10402371001846656385

`A078898(A064077(n+1)-1)`
-/

namespace A365416.P10402371001846656385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A064077 (n + 1) - 1).toNat

end

end A365416.P10402371001846656385

/-! ## A365416.P12457480835257084970

`record[A005843(n+1)/A082863(2*(n+1))]`
-/

namespace A365416.P12457480835257084970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A082863 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365416.P12457480835257084970

/-! ## A365416.P17315961042557186872

`A088071(n+2)/2`
-/

namespace A365416.P17315961042557186872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088071 (n + 2) : ℚ) / 2

end

end A365416.P17315961042557186872

/-!
# A365417: Partial sums of A265036.

The programs for A365417, there is no canonical definition to state claims against.
-/

/-! ## A365417.P13049061352121250827

`∑[A265036(n)]`
-/

namespace A365417.P13049061352121250827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365417.P13049061352121250827

/-! ## A365417.P4672505504546996925

`A265036(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A365417.P4672505504546996925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265036 n + a (A023443 n).toNat

end

end A365417.P4672505504546996925

/-! ## A365417.P5130969083262785069

`A265036(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A365417.P5130969083262785069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265036 (A028310 n).toNat + a (n - 1)

end

end A365417.P5130969083262785069

/-! ## A365417.P10112633754912259998

`A265036(n)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A365417.P10112633754912259998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265036 n + a (A000027 (n + 1) - 2).toNat

end

end A365417.P10112633754912259998

/-! ## A365417.P11776904535874364619

`∑[2*A310954(n)-A311038(n)]`
-/

namespace A365417.P11776904535874364619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310954 n - A311038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365417.P11776904535874364619

/-!
# A365418: Partial sums of A301298.

The programs for A365418, the canonical program `A365418.P13244080310047598181` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365418 has offset 0).

The definition of A365418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365418.P13244080310047598181

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=6, a(2)=15, a(3)=29, a(4)=48`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A365418

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P13244080310047598181.Spec : Prop :=
  ∀ n, P13244080310047598181.a n = A365418 n

theorem P13244080310047598181.correct : P13244080310047598181.Spec := by
  intro n
  simp only [A365418]

end A365418

/-! ## A365418.P13634635078298978331

`∑[a(n-3)+14]` with `a(0)=1, a(1)=5, a(2)=9, a(3)=14`
-/

namespace A365418.P13634635078298978331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 9, 14] fun n f1 =>
  f1 (n - 3) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365418.P13634635078298978331

namespace A365418

/-- `∑[a(n-3)+14]` -/
def P13634635078298978331.Spec : Prop :=
  ∀ n, (P13634635078298978331.a n : ℤ) = A365418 n

end A365418

/-! ## A365418.P8351263115354348668

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=4, a(2)=4, a(3)=5, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A365418.P8351263115354348668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4, 5, 5] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365418.P8351263115354348668

namespace A365418

/-- `∑[∑[floor(a(n-3))]]` -/
def P8351263115354348668.Spec : Prop :=
  ∀ n, (P8351263115354348668.a n : ℤ) = A365418 n

end A365418

/-! ## A365418.P16563325714352637503

`ceil(∑[8*n/3+1])+n²`
-/

namespace A365418.P16563325714352637503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((n : ℚ) / 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ + (n ^ 2 : ℤ)

end

end A365418.P16563325714352637503

namespace A365418

/-- `ceil(∑[8*n/3+1])+n²` -/
def P16563325714352637503.Spec : Prop :=
  ∀ n, P16563325714352637503.a n = A365418 n

end A365418

/-! ## A365418.P9087013122567198992

`∑[A301298(n)]`
-/

namespace A365418.P9087013122567198992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365418.P9087013122567198992

namespace A365418

/-- `∑[A301298(n)]` -/
def P9087013122567198992.Spec : Prop :=
  ∀ n, P9087013122567198992.a n = A365418 n

end A365418

/-! ## A365418.P15958376470291328320

`∑[A008486(2*n)-A004396(2*n)]`
-/

namespace A365418.P15958376470291328320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A004396 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365418.P15958376470291328320

namespace A365418

/-- `∑[A008486(2*n)-A004396(2*n)]` -/
def P15958376470291328320.Spec : Prop :=
  ∀ n, P15958376470291328320.a n = A365418 n

end A365418

/-! ## A365418.P16902297711317423922

`∑[A004277(2*n)+A002264(2*n+1)]`
-/

namespace A365418.P16902297711317423922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + A002264 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365418.P16902297711317423922

namespace A365418

/-- `∑[A004277(2*n)+A002264(2*n+1)]` -/
def P16902297711317423922.Spec : Prop :=
  ∀ n, P16902297711317423922.a n = A365418 n

end A365418

/-! ## A365418.P9855124425838518950

`∑[A008620(2*n+1)+A004273(2*n)]`
-/

namespace A365418.P9855124425838518950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * n + 1) + A004273 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365418.P9855124425838518950

namespace A365418

/-- `∑[A008620(2*n+1)+A004273(2*n)]` -/
def P9855124425838518950.Spec : Prop :=
  ∀ n, P9855124425838518950.a n = A365418 n

end A365418

/-! ## A365418.P10455109669811657456

`∑[A042965(2*n+1)+A028310(2*n)]`
-/

namespace A365418.P10455109669811657456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (2 * n + 1) + A028310 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365418.P10455109669811657456

namespace A365418

/-- `∑[A042965(2*n+1)+A028310(2*n)]` -/
def P10455109669811657456.Spec : Prop :=
  ∀ n, P10455109669811657456.a n = A365418 n

end A365418

/-! ## A365418.P9030996721572159343

`∑[A051274(2*n+1)+A004275(2*n+1)]`
-/

namespace A365418.P9030996721572159343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (2 * n + 1) + A004275 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365418.P9030996721572159343

namespace A365418

/-- `∑[A051274(2*n+1)+A004275(2*n+1)]` -/
def P9030996721572159343.Spec : Prop :=
  ∀ n, P9030996721572159343.a n = A365418 n

end A365418

/-! ## A365418.P88170727051383148

`A115015(A047391(n+1))`
-/

namespace A365418.P88170727051383148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115015 (A047391 (n + 1)).toNat

end

end A365418.P88170727051383148

namespace A365418

/-- `A115015(A047391(n+1))` -/
def P88170727051383148.Spec : Prop :=
  ∀ n, P88170727051383148.a n = A365418 n

end A365418

/-! ## A365418.P4237932669119798513

`∑[A315538(n)-n]`
-/

namespace A365418.P4237932669119798513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315538 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365418.P4237932669119798513

namespace A365418

/-- `∑[A315538(n)-n]` -/
def P4237932669119798513.Spec : Prop :=
  ∀ n, P4237932669119798513.a n = A365418 n

end A365418

/-! ## A365418.P9449671999517141785

`∑[A004396(n)+A004396(A008458(n))]`
-/

namespace A365418.P9449671999517141785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365418.P9449671999517141785

namespace A365418

/-- `∑[A004396(n)+A004396(A008458(n))]` -/
def P9449671999517141785.Spec : Prop :=
  ∀ n, P9449671999517141785.a n = A365418 n

end A365418

/-! ## A365418.P16745152693731826322

`∑[A004396(A008458(n)+n)]`
-/

namespace A365418.P16745152693731826322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008458 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365418.P16745152693731826322

namespace A365418

/-- `∑[A004396(A008458(n)+n)]` -/
def P16745152693731826322.Spec : Prop :=
  ∀ n, P16745152693731826322.a n = A365418 n

end A365418

/-! ## A365418.P1880406044049783027

`∑[A004396(A022144(n)-n)]`
-/

namespace A365418.P1880406044049783027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A022144 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365418.P1880406044049783027

namespace A365418

/-- `∑[A004396(A022144(n)-n)]` -/
def P1880406044049783027.Spec : Prop :=
  ∀ n, P1880406044049783027.a n = A365418 n

end A365418

/-! ## A365418.P13433475537184639455

`A025782(2*7*n)`
-/

namespace A365418.P13433475537184639455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025782 (2 * (7 * n))

end

end A365418.P13433475537184639455

namespace A365418

/-- `A025782(2*7*n)` -/
def P13433475537184639455.Spec : Prop :=
  ∀ n, P13433475537184639455.a n = A365418 n

end A365418

/-! ## A365418.P7202759459140679466

`A025820(A135628(n))`
-/

namespace A365418.P7202759459140679466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025820 (A135628 n).toNat

end

end A365418.P7202759459140679466

namespace A365418

/-- `A025820(A135628(n))` -/
def P7202759459140679466.Spec : Prop :=
  ∀ n, P7202759459140679466.a n = A365418 n

end A365418

/-! ## A365418.P12212619307169450717

`A304500(∑[2*n])`
-/

namespace A365418.P12212619307169450717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304500 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365418.P12212619307169450717

namespace A365418

/-- `A304500(∑[2*n])` -/
def P12212619307169450717.Spec : Prop :=
  ∀ n, P12212619307169450717.a n = A365418 n

end A365418

/-! ## A365418.P11707404718062273479

`A047278(n²+n+1)`
-/

namespace A365418.P11707404718062273479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047278 (n ^ 2 + (n + 1))

end

end A365418.P11707404718062273479

namespace A365418

/-- `A047278(n²+n+1)` -/
def P11707404718062273479.Spec : Prop :=
  ∀ n, P11707404718062273479.a n = A365418 n

end A365418

/-! ## A365418.P5845656781928426764

`A047282(n²+n+1)`
-/

namespace A365418.P5845656781928426764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047282 (n ^ 2 + (n + 1))

end

end A365418.P5845656781928426764

namespace A365418

/-- `A047282(n²+n+1)` -/
def P5845656781928426764.Spec : Prop :=
  ∀ n, P5845656781928426764.a n = A365418 n

end A365418

/-!
# A365419: Expansion of e.g.f. exp( Sum_{k>=0} x^(5*k+2) / (5*k+2)! ).

The programs for A365419, there is no canonical definition to state claims against.
-/

/-! ## A365419.P17327468585389341837

`A123023(and(n, A293994(n)))`
-/

namespace A365419.P17327468585389341837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 (Int.land (n : ℤ) (A293994 n)).toNat

end

end A365419.P17327468585389341837

/-! ## A365419.P17701379118725628498

`A123023(n)+A010051(A024210(n))`
-/

namespace A365419.P17701379118725628498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 n + A010051 (A024210 n).toNat

end

end A365419.P17701379118725628498

/-! ## A365419.P5194847048760439234

`A123023(n)+A024326(A013989(n))`
-/

namespace A365419.P5194847048760439234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 n + A024326 (A013989 n).toNat

end

end A365419.P5194847048760439234

/-! ## A365419.P5397291994486581228

`A123023(n)+A100910(A000110(n))`
-/

namespace A365419.P5397291994486581228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 n + A100910 (A000110 n).toNat

end

end A365419.P5397291994486581228

/-! ## A365419.P18062335769340561186

`A123023(n)+A088722(A022493(n))`
-/

namespace A365419.P18062335769340561186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 n + A088722 (A022493 n).toNat

end

end A365419.P18062335769340561186

/-!
# A365420: Pick any pair of adjacent digits in a(n); their absolute difference is present in a(n).

The programs for A365420, there is no canonical definition to state claims against.
-/

/-! ## A365420.P2525904046481983469

`eq[A227362(n), A227362(A240237(n))]`
-/

namespace A365420.P2525904046481983469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A240237 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A365420.P2525904046481983469

/-! ## A365420.P16860033221164226636

`lt[A082216(A240237(n)), A195162(2*n+1)]`
-/

namespace A365420.P16860033221164226636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A240237 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195162 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A365420.P16860033221164226636

/-! ## A365420.P10096309614240015799

`lt[A082216(A240237(n)), A090788(n+1)]`
-/

namespace A365420.P10096309614240015799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A240237 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090788 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A365420.P10096309614240015799

/-!
# A365421: a(n) = 1 if n and A163511(n) have the same prime signature, otherwise 0.

The programs for A365421, there is no canonical definition to state claims against.
-/

/-! ## A365421.P833333049380334820

`A364251(lt[A061987(n), A038367(n+1)])`
-/

namespace A365421.P833333049380334820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364251 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A365421.P833333049380334820

/-! ## A365421.P15957839667671474463

`A364251(lt[A265656(n+1), A015723(3*n+1)])`
-/

namespace A365421.P15957839667671474463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015723 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364251 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A365421.P15957839667671474463

/-!
# A365422: Numbers k for which k and A163511(k) have the same prime signature.

The programs for A365422, there is no canonical definition to state claims against.
-/

/-! ## A365422.P5634339687248211274

`filter[n+1, A365421(#)]`
-/

namespace A365422.P5634339687248211274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365421 (f1 j) = 1) n)

end

end A365422.P5634339687248211274

/-! ## A365422.P2235431656524956646

`eq[1, A365421(n+1)]+1`
-/

namespace A365422.P2235431656524956646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365421 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A365422.P2235431656524956646

/-! ## A365422.P6864795044379754591

`eq[1, A365421(A022144(n))]`
-/

namespace A365422.P6864795044379754591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365421 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A365422.P6864795044379754591

/-! ## A365422.P12287179784832475515

`lt[A000122(n), A365421(A028310(n))]`
-/

namespace A365422.P12287179784832475515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365421 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A365422.P12287179784832475515

/-! ## A365422.P9022050191936588169

`lt[1, A365421(A022144(n))*A381237(n)+1]`
-/

namespace A365422.P9022050191936588169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365421 (A022144 n).toNat * A381237 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A365422.P9022050191936588169

/-! ## A365422.P6843551758238531626

`lt[1, A365421(A022144(n))*A375116(n+4)+1]`
-/

namespace A365422.P6843551758238531626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365421 (A022144 n).toNat * A375116 (n + 4) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A365422.P6843551758238531626

/-!
# A365423: Odd numbers k for which k and A163511(k) have the same prime signature.

The programs for A365423, there is no canonical definition to state claims against.
-/

/-! ## A365423.P14213855173269127357

`eq[1, A365421(n^(n%2))]`
-/

namespace A365423.P14213855173269127357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365421 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A365423.P14213855173269127357

/-! ## A365423.P6193154707244865081

`filter[A102213(n+1), A365421(#)]`
-/

namespace A365423.P6193154707244865081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365421 (f1 j).toNat = 1) n)

end

end A365423.P6193154707244865081

/-! ## A365423.P14819129827867644007

`∩[2*n+1, A365422(n+1)]`
-/

namespace A365423.P14819129827867644007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365423.P14819129827867644007

/-! ## A365423.P3407487382151964648

`record[A000265(A365422(n+1))]`
-/

namespace A365423.P3407487382151964648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A365422 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365423.P3407487382151964648

/-! ## A365423.P5460474166019275644

`filter[A365422(n+1), A000035(#)]`
-/

namespace A365423.P5460474166019275644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A365423.P5460474166019275644

/-!
# A365425: The least number with the prime signature of the odd part of A163511(n): a(n) = A046523(A000265(A163511(n))).

The programs for A365425, the canonical program `A365425.P9924222759687376323` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365425 has offset 0).

The definition of A365425 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A046523, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365425.P14764036953492507418

`A336158(A163511(n))`
-/

namespace A365425.P14764036953492507418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A163511 n).toNat

end

end A365425.P14764036953492507418

namespace A365425

/-- `A336158(A163511(n))` -/
def P14764036953492507418.Spec : Prop :=
  ∀ n, P14764036953492507418.a n = A365425 n

end A365425

/-! ## A365425.P9924222759687376323

`A046523(A000265(A163511(n)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A365425

/-- `A046523(A000265(A163511(n)))` -/
def P9924222759687376323.Spec : Prop :=
  ∀ n, P9924222759687376323.a n = A365425 n

theorem P9924222759687376323.correct : P9924222759687376323.Spec := by
  intro n
  simp only [A365425]

end A365425

/-! ## A365425.P16460725902318877940

`A366279(A030101(n)-A209229(n))`
-/

namespace A365425.P16460725902318877940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366279 (A030101 n - A209229 n).toNat

end

end A365425.P16460725902318877940

namespace A365425

/-- `A366279(A030101(n)-A209229(n))` -/
def P16460725902318877940.Spec : Prop :=
  ∀ n, P16460725902318877940.a n = A365425 n

end A365425

/-! ## A365425.P4889755936129931685

`A336158(A332817(n))`
-/

namespace A365425.P4889755936129931685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A332817 n).toNat

end

end A365425.P4889755936129931685

namespace A365425

/-- `A336158(A332817(n))` -/
def P4889755936129931685.Spec : Prop :=
  ∀ n, P4889755936129931685.a n = A365425 n

end A365425

/-! ## A365425.P3641700690556984652

`A336158(A332214(n))`
-/

namespace A365425.P3641700690556984652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A332214 n).toNat

end

end A365425.P3641700690556984652

namespace A365425

/-- `A336158(A332214(n))` -/
def P3641700690556984652.Spec : Prop :=
  ∀ n, P3641700690556984652.a n = A365425 n

end A365425

/-! ## A365425.P2246325619736880416

`A278531(A243071(A000265(A364297(2*n))))`
-/

namespace A365425.P2246325619736880416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A243071 (A000265 (A364297 (2 * n)).toNat).toNat).toNat

end

end A365425.P2246325619736880416

namespace A365425

/-- `A278531(A243071(A000265(A364297(2*n))))` -/
def P2246325619736880416.Spec : Prop :=
  ∀ n, P2246325619736880416.a n = A365425 n

end A365425

/-! ## A365425.P4275462535635499658

`A350063(A335422(n))`
-/

namespace A365425.P4275462535635499658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350063 (A335422 n).toNat

end

end A365425.P4275462535635499658

namespace A365425

/-- `A350063(A335422(n))` -/
def P4275462535635499658.Spec : Prop :=
  ∀ n, P4275462535635499658.a n = A365425 n

end A365425

/-! ## A365425.P7048977267336330397

`A046523(A064989(A064989(A163511(2*n+1))))`
-/

namespace A365425.P7048977267336330397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A064989 (A064989 (A163511 (2 * n + 1)).toNat).toNat).toNat

end

end A365425.P7048977267336330397

namespace A365425

/-- `A046523(A064989(A064989(A163511(2*n+1))))` -/
def P7048977267336330397.Spec : Prop :=
  ∀ n, P7048977267336330397.a n = A365425 n

end A365425

/-!
# A365426: a(n) = A336466(A163511(n)).

The programs for A365426, the canonical program `A365426.P3761931698884595568` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365426 has offset 0).

The definition of A365426 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365426.P3761931698884595568

`A336466(A163511(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A365426

/-- `A336466(A163511(n))` -/
def P3761931698884595568.Spec : Prop :=
  ∀ n, P3761931698884595568.a n = A365426 n

theorem P3761931698884595568.correct : P3761931698884595568.Spec := by
  intro n
  simp only [A365426]

end A365426

/-! ## A365426.P15980551706400579106

`A339876(A253565(n))`
-/

namespace A365426.P15980551706400579106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339876 (A253565 n).toNat

end

end A365426.P15980551706400579106

namespace A365426

/-- `A339876(A253565(n))` -/
def P15980551706400579106.Spec : Prop :=
  ∀ n, P15980551706400579106.a n = A365426 n

end A365426

/-! ## A365426.P8165029589747872782

`A342666(A335422(n))`
-/

namespace A365426.P8165029589747872782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342666 (A335422 n).toNat

end

end A365426.P8165029589747872782

namespace A365426

/-- `A342666(A335422(n))` -/
def P8165029589747872782.Spec : Prop :=
  ∀ n, P8165029589747872782.a n = A365426 n

end A365426

/-! ## A365426.P2124428189172062732

`gcd(A005848(n+1), A340141(n+1))`
-/

namespace A365426.P2124428189172062732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005848 (n + 1)) (A340141 (n + 1))

end

end A365426.P2124428189172062732

namespace A365426

/-- `gcd(A005848(n+1), A340141(n+1))` -/
def P2124428189172062732.Spec : Prop :=
  ∀ n, (P2124428189172062732.a n : ℤ) = A365426 n

end A365426

/-! ## A365426.P15408984115036706368

`gcd(A146915(n+1), A344763(n+1))`
-/

namespace A365426.P15408984115036706368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A146915 (n + 1)) (A344763 (n + 1))

end

end A365426.P15408984115036706368

namespace A365426

/-- `gcd(A146915(n+1), A344763(n+1))` -/
def P15408984115036706368.Spec : Prop :=
  ∀ n, (P15408984115036706368.a n : ℤ) = A365426 n

end A365426

/-!
# A365427: a(n) = A336467(A163511(n)).

The programs for A365427, the canonical program `A365427.P1911992435203789611` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365427 has offset 0).

The definition of A365427 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336467, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365427.P1911992435203789611

`A336467(A163511(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A365427

/-- `A336467(A163511(n))` -/
def P1911992435203789611.Spec : Prop :=
  ∀ n, P1911992435203789611.a n = A365427 n

theorem P1911992435203789611.correct : P1911992435203789611.Spec := by
  intro n
  simp only [A365427]

end A365427

/-! ## A365427.P9645926324302554450

`A339877(A253565(n))`
-/

namespace A365427.P9645926324302554450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339877 (A253565 n).toNat

end

end A365427.P9645926324302554450

namespace A365427

/-- `A339877(A253565(n))` -/
def P9645926324302554450.Spec : Prop :=
  ∀ n, P9645926324302554450.a n = A365427 n

end A365427

/-! ## A365427.P7212197364006704103

`A330061(A366787(n))`
-/

namespace A365427.P7212197364006704103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330061 (A366787 n).toNat

end

end A365427.P7212197364006704103

namespace A365427

/-- `A330061(A366787(n))` -/
def P7212197364006704103.Spec : Prop :=
  ∀ n, P7212197364006704103.a n = A365427 n

end A365427

/-! ## A365427.P9664140909422709637

`and(A086839(n+1), A366787(n))`
-/

namespace A365427.P9664140909422709637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086839 (n + 1)) (A366787 n)

end

end A365427.P9664140909422709637

namespace A365427

/-- `and(A086839(n+1), A366787(n))` -/
def P9664140909422709637.Spec : Prop :=
  ∀ n, P9664140909422709637.a n = A365427 n

end A365427

/-! ## A365427.P1985791934592514092

`A366787(n)+A000038(A023545(n+5))`
-/

namespace A365427.P1985791934592514092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366787 n + A000038 (A023545 (n + 5)).toNat

end

end A365427.P1985791934592514092

namespace A365427

/-- `A366787(n)+A000038(A023545(n+5))` -/
def P1985791934592514092.Spec : Prop :=
  ∀ n, P1985791934592514092.a n = A365427 n

end A365427

/-!
# A365428: Dirichlet inverse of A102283.

The programs for A365428, the canonical program `A365428.P6742084900381256507` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365428 has offset 1).

The definition of A365428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365428.P17822497872568987739

`A156277(A390691(n+1))`
-/

namespace A365428.P17822497872568987739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (A390691 (n + 1)).toNat

end

end A365428.P17822497872568987739

namespace A365428

/-- `A156277(A390691(n+1))` -/
def P17822497872568987739.Spec : Prop :=
  ∀ n, P17822497872568987739.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P15382830948295435089

`A008683(n+1)*A049347(n)`
-/

namespace A365428.P15382830948295435089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A049347 n

end

end A365428.P15382830948295435089

namespace A365428

/-- `A008683(n+1)*A049347(n)` -/
def P15382830948295435089.Spec : Prop :=
  ∀ n, P15382830948295435089.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P17080535066737191488

`A049347(n)*A085097(n+1)`
-/

namespace A365428.P17080535066737191488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A085097 (n + 1)

end

end A365428.P17080535066737191488

namespace A365428

/-- `A049347(n)*A085097(n+1)` -/
def P17080535066737191488.Spec : Prop :=
  ∀ n, P17080535066737191488.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P11484987028108393442

`A049347(n)*A117997(n+1)`
-/

namespace A365428.P11484987028108393442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A117997 (n + 1)

end

end A365428.P11484987028108393442

namespace A365428

/-- `A049347(n)*A117997(n+1)` -/
def P11484987028108393442.Spec : Prop :=
  ∀ n, P11484987028108393442.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P6742084900381256507

`A049347(n)*A156277(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A365428

/-- `A049347(n)*A156277(n+1)` -/
def P6742084900381256507.Spec : Prop :=
  ∀ n, P6742084900381256507.a n = A365428 (n + 1)

theorem P6742084900381256507.correct : P6742084900381256507.Spec := by
  intro n
  simp only [A365428, Nat.add_sub_cancel]

end A365428

/-! ## A365428.P11682467833069773192

`A156277(n+1)*A257075(n)`
-/

namespace A365428.P11682467833069773192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (n + 1) * A257075 n

end

end A365428.P11682467833069773192

namespace A365428

/-- `A156277(n+1)*A257075(n)` -/
def P11682467833069773192.Spec : Prop :=
  ∀ n, P11682467833069773192.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P13899611942620899371

`A008683(n+1)*A319448(n+1)`
-/

namespace A365428.P13899611942620899371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A319448 (n + 1)

end

end A365428.P13899611942620899371

namespace A365428

/-- `A008683(n+1)*A319448(n+1)` -/
def P13899611942620899371.Spec : Prop :=
  ∀ n, P13899611942620899371.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P11351621619330440706

`A008836(n+1)*A319448(n+1)`
-/

namespace A365428.P11351621619330440706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A319448 (n + 1)

end

end A365428.P11351621619330440706

namespace A365428

/-- `A008836(n+1)*A319448(n+1)` -/
def P11351621619330440706.Spec : Prop :=
  ∀ n, P11351621619330440706.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P17322860911402905935

`A010555(n+1)*A319448(n+1)`
-/

namespace A365428.P17322860911402905935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010555 (n + 1) * A319448 (n + 1)

end

end A365428.P17322860911402905935

namespace A365428

/-- `A010555(n+1)*A319448(n+1)` -/
def P17322860911402905935.Spec : Prop :=
  ∀ n, P17322860911402905935.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P8988668488170686387

`A064179(n+1)*A319448(n+1)`
-/

namespace A365428.P8988668488170686387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1) * A319448 (n + 1)

end

end A365428.P8988668488170686387

namespace A365428

/-- `A064179(n+1)*A319448(n+1)` -/
def P8988668488170686387.Spec : Prop :=
  ∀ n, P8988668488170686387.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P5395292650395433673

`A076479(n+1)*A319448(n+1)`
-/

namespace A365428.P5395292650395433673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A319448 (n + 1)

end

end A365428.P5395292650395433673

namespace A365428

/-- `A076479(n+1)*A319448(n+1)` -/
def P5395292650395433673.Spec : Prop :=
  ∀ n, P5395292650395433673.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P11912076901157586691

`A085097(n+1)*A319448(n+1)`
-/

namespace A365428.P11912076901157586691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085097 (n + 1) * A319448 (n + 1)

end

end A365428.P11912076901157586691

namespace A365428

/-- `A085097(n+1)*A319448(n+1)` -/
def P11912076901157586691.Spec : Prop :=
  ∀ n, P11912076901157586691.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P7154781460579023110

`A092152(n+1)*A319448(n+1)`
-/

namespace A365428.P7154781460579023110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n + 1) * A319448 (n + 1)

end

end A365428.P7154781460579023110

namespace A365428

/-- `A092152(n+1)*A319448(n+1)` -/
def P7154781460579023110.Spec : Prop :=
  ∀ n, P7154781460579023110.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P10386595782394681663

`A117997(n+1)*A319448(n+1)`
-/

namespace A365428.P10386595782394681663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117997 (n + 1) * A319448 (n + 1)

end

end A365428.P10386595782394681663

namespace A365428

/-- `A117997(n+1)*A319448(n+1)` -/
def P10386595782394681663.Spec : Prop :=
  ∀ n, P10386595782394681663.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P8935485365381648275

`A126690(n+1)*A319448(n+1)`
-/

namespace A365428.P8935485365381648275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126690 (n + 1) * A319448 (n + 1)

end

end A365428.P8935485365381648275

namespace A365428

/-- `A126690(n+1)*A319448(n+1)` -/
def P8935485365381648275.Spec : Prop :=
  ∀ n, P8935485365381648275.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P8467950178899224135

`A129667(n+1)*A319448(n+1)`
-/

namespace A365428.P8467950178899224135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129667 (n + 1) * A319448 (n + 1)

end

end A365428.P8467950178899224135

namespace A365428

/-- `A129667(n+1)*A319448(n+1)` -/
def P8467950178899224135.Spec : Prop :=
  ∀ n, P8467950178899224135.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P3396093882955911917

`A133639(n+1)*A319448(n+1)`
-/

namespace A365428.P3396093882955911917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133639 (n + 1) * A319448 (n + 1)

end

end A365428.P3396093882955911917

namespace A365428

/-- `A133639(n+1)*A319448(n+1)` -/
def P3396093882955911917.Spec : Prop :=
  ∀ n, P3396093882955911917.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P15767706289077055701

`A156277(n+1)*A319448(n+1)`
-/

namespace A365428.P15767706289077055701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (n + 1) * A319448 (n + 1)

end

end A365428.P15767706289077055701

namespace A365428

/-- `A156277(n+1)*A319448(n+1)` -/
def P15767706289077055701.Spec : Prop :=
  ∀ n, P15767706289077055701.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P10982557030868817276

`A162512(n+1)*A319448(n+1)`
-/

namespace A365428.P10982557030868817276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162512 (n + 1) * A319448 (n + 1)

end

end A365428.P10982557030868817276

namespace A365428

/-- `A162512(n+1)*A319448(n+1)` -/
def P10982557030868817276.Spec : Prop :=
  ∀ n, P10982557030868817276.a n = A365428 (n + 1)

end A365428

/-! ## A365428.P198508041051782104

`(1-A080425(n))*A008683(n+1)`
-/

namespace A365428.P198508041051782104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A080425 n) * A008683 (n + 1)

end

end A365428.P198508041051782104

namespace A365428

/-- `(1-A080425(n))*A008683(n+1)` -/
def P198508041051782104.Spec : Prop :=
  ∀ n, P198508041051782104.a n = A365428 (n + 1)

end A365428

/-!
# A365429: a(n) = 1 if the divisors of n increase by a factor of at most 2, otherwise 0.

The programs for A365429, there is no canonical definition to state claims against.
-/

/-! ## A365429.P16699501203285579937

`floor(1/A237271(n+1))`
-/

namespace A365429.P16699501203285579937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A237271 (n + 1) : ℚ)⌋

end

end A365429.P16699501203285579937

/-! ## A365429.P8593316093121196269

`char[A174973(n+1)-1]`
-/

namespace A365429.P8593316093121196269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A365429.P8593316093121196269

/-! ## A365429.P7828898641954539430

`A347950(n+1)*A379968(n+1)`
-/

namespace A365429.P7828898641954539430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (n + 1) * A379968 (n + 1)

end

end A365429.P7828898641954539430

/-! ## A365429.P5531331448907405739

`A379968(n+1)-A379968(n+1)*A379969(n+1)`
-/

namespace A365429.P5531331448907405739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379968 (n + 1) - A379968 (n + 1) * A379969 (n + 1)

end

end A365429.P5531331448907405739

/-! ## A365429.P17322919159176018357

`A244971(n+1)%2`
-/

namespace A365429.P17322919159176018357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244971 (n + 1)) 2

end

end A365429.P17322919159176018357

/-! ## A365429.P2840600553022365032

`A000035(A244971(n+1))`
-/

namespace A365429.P2840600553022365032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A244971 (n + 1)).toNat

end

end A365429.P2840600553022365032

/-! ## A365429.P8948623230021969258

`and(A010684(n), A244971(n+1))`
-/

namespace A365429.P8948623230021969258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010684 n) (A244971 (n + 1))

end

end A365429.P8948623230021969258

/-! ## A365429.P7469465214808826055

`and(A016820(n), A244971(n+1))`
-/

namespace A365429.P7469465214808826055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A244971 (n + 1))

end

end A365429.P7469465214808826055

/-! ## A365429.P17963058695522146660

`and(A017080(n), A244971(n+1))`
-/

namespace A365429.P17963058695522146660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017080 n) (A244971 (n + 1))

end

end A365429.P17963058695522146660

/-! ## A365429.P3399084323942654777

`A000007(A340502(n+1))`
-/

namespace A365429.P3399084323942654777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A340502 (n + 1)).toNat

end

end A365429.P3399084323942654777

/-! ## A365429.P8106043330380874827

`and(A195744(n), A244971(n+1))`
-/

namespace A365429.P8106043330380874827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A244971 (n + 1))

end

end A365429.P8106043330380874827

/-! ## A365429.P529067324896532337

`and(A196657(n), A244971(n+1))`
-/

namespace A365429.P529067324896532337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A244971 (n + 1))

end

end A365429.P529067324896532337

/-! ## A365429.P3956550304915462620

`and(A002064(n), A244971(n+1))`
-/

namespace A365429.P3956550304915462620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A244971 (n + 1))

end

end A365429.P3956550304915462620

/-! ## A365429.P6826278042556534104

`and(A048477(n), A244971(n+1))`
-/

namespace A365429.P6826278042556534104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048477 n) (A244971 (n + 1))

end

end A365429.P6826278042556534104

/-! ## A365429.P15599517852951252374

`and(A088578(n), A244971(n+1))`
-/

namespace A365429.P15599517852951252374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088578 n) (A244971 (n + 1))

end

end A365429.P15599517852951252374

/-! ## A365429.P8154684236639612819

`and(A048479(n), A244971(n+1))`
-/

namespace A365429.P8154684236639612819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A244971 (n + 1))

end

end A365429.P8154684236639612819

/-! ## A365429.P16223450160087035234

`and(A168298(n), A244971(n+1))`
-/

namespace A365429.P16223450160087035234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168298 n) (A244971 (n + 1))

end

end A365429.P16223450160087035234

/-! ## A365429.P2770936987747302038

`A379968(A053024(n+1))`
-/

namespace A365429.P2770936987747302038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379968 (A053024 (n + 1)).toNat

end

end A365429.P2770936987747302038

/-! ## A365429.P18214850099975488565

`and(A027608(n), A244971(n+1))`
-/

namespace A365429.P18214850099975488565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027608 n) (A244971 (n + 1))

end

end A365429.P18214850099975488565

/-! ## A365429.P2316323335742436052

`and(A211388(n), A244971(n+1))`
-/

namespace A365429.P2316323335742436052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211388 n) (A244971 (n + 1))

end

end A365429.P2316323335742436052

/-!
# A365430: a(n) = A156552(gcd(n, A005940(n))), and A156552 is the inverse of offset-0 version of Doudna-sequence A005940.

The programs for A365430, the canonical program `A365430.P6777762668441141632` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365430 has offset 1).

The definition of A365430 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365430.P1354219882067331735

`A156552(A364500(n+1))`
-/

namespace A365430.P1354219882067331735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A364500 (n + 1)).toNat

end

end A365430.P1354219882067331735

namespace A365430

/-- `A156552(A364500(n+1))` -/
def P1354219882067331735.Spec : Prop :=
  ∀ n, P1354219882067331735.a n = A365430 (n + 1)

end A365430

/-! ## A365430.P6777762668441141632

`A156552(gcd(n+1, A005940(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A365430

/-- `A156552(gcd(n+1, A005940(n+1)))` -/
def P6777762668441141632.Spec : Prop :=
  ∀ n, P6777762668441141632.a n = A365430 (n + 1)

theorem P6777762668441141632.correct : P6777762668441141632.Spec := by
  intro n
  simp only [A365430, Nat.add_sub_cancel]

end A365430

/-! ## A365430.P1861867849162456173

`A156552((n+1)/A364501(n+1))`
-/

namespace A365430.P1861867849162456173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A364501 (n + 1) : ℚ))).toNat

end

end A365430.P1861867849162456173

namespace A365430

/-- `A156552((n+1)/A364501(n+1))` -/
def P1861867849162456173.Spec : Prop :=
  ∀ n, P1861867849162456173.a n = A365430 (n + 1)

end A365430

/-! ## A365430.P9844864367993945585

`A156552(A005940(n+1)/A364502(n+1))`
-/

namespace A365430.P9844864367993945585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (SequenceMachineLib.roundAway ((A005940 (n + 1) : ℚ) / (A364502 (n + 1) : ℚ))).toNat

end

end A365430.P9844864367993945585

namespace A365430

/-- `A156552(A005940(n+1)/A364502(n+1))` -/
def P9844864367993945585.Spec : Prop :=
  ∀ n, P9844864367993945585.a n = A365430 (n + 1)

end A365430

/-! ## A365430.P11883540799955017372

`A156552(gcd(A000027(n+1), A292602(4*n+3)))`
-/

namespace A365430.P11883540799955017372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.gcd (A000027 (n + 1)) (A292602 (4 * n + 3)))

end

end A365430.P11883540799955017372

namespace A365430

/-- `A156552(gcd(A000027(n+1), A292602(4*n+3)))` -/
def P11883540799955017372.Spec : Prop :=
  ∀ n, P11883540799955017372.a n = A365430 (n + 1)

end A365430

/-!
# A365431: Lexicographically earliest infinite sequence such that a(i) = a(j) => A364502(i) = A364502(j) for all i, j >= 1, where A364502(n) is the denominator of n / A005940(n).

The programs for A365431, there is no canonical definition to state claims against.
-/

/-! ## A365431.P15549157967205119411

`A364384(A000213(floor(n/(xor(n, n+1)+1))))`
-/

namespace A365431.P15549157967205119411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364384 (A000213 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat).toNat

end

end A365431.P15549157967205119411

/-! ## A365431.P16828655613477294142

`A355534(A323349(n+2)+2)`
-/

namespace A365431.P16828655613477294142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355534 (A323349 (n + 2) + 2).toNat

end

end A365431.P16828655613477294142

/-! ## A365431.P11937407914768687376

`A000120(A242783(floor(n/2^val(n+1, 2))))`
-/

namespace A365431.P11937407914768687376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A242783 ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋.toNat).toNat

end

end A365431.P11937407914768687376

/-! ## A365431.P16543618873449534134

`gcd(A073090(A036044(n)), A367694(n+4))`
-/

namespace A365431.P16543618873449534134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073090 (A036044 n).toNat) (A367694 (n + 4))

end

end A365431.P16543618873449534134

/-! ## A365431.P2872858699673571348

`A000120(gcd(A007814(3*n+1), A242783(n)))`
-/

namespace A365431.P2872858699673571348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.gcd (A007814 (3 * n + 1)) (A242783 n))

end

end A365431.P2872858699673571348

/-!
# A365432: a(n) = A156552(A364502(n)), where A364502(n) = A005940(n) / gcd(n, A005940(n)), and A156552 is the inverse of offset-0 version of Doudna-sequence A005940.

The programs for A365432, the canonical program `A365432.P18315931064286019973` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365432 has offset 1).

The definition of A365432 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A364502, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365432.P18315931064286019973

`A156552(A364502(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A365432

/-- `A156552(A364502(n+1))` -/
def P18315931064286019973.Spec : Prop :=
  ∀ n, P18315931064286019973.a n = A365432 (n + 1)

theorem P18315931064286019973.correct : P18315931064286019973.Spec := by
  intro n
  simp only [A365432, Nat.add_sub_cancel]

end A365432

/-! ## A365432.P1587070983716289648

`A005941(A364502(2*(n+1)))-1`
-/

namespace A365432.P1587070983716289648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A364502 (2 * (n + 1))).toNat - 1

end

end A365432.P1587070983716289648

namespace A365432

/-- `A005941(A364502(2*(n+1)))-1` -/
def P1587070983716289648.Spec : Prop :=
  ∀ n, P1587070983716289648.a n = A365432 (n + 1)

end A365432

/-! ## A365432.P18017883978912020271

`A156552(A005940(n+1)/A364500(n+1))`
-/

namespace A365432.P18017883978912020271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (SequenceMachineLib.roundAway ((A005940 (n + 1) : ℚ) / (A364500 (n + 1) : ℚ))).toNat

end

end A365432.P18017883978912020271

namespace A365432

/-- `A156552(A005940(n+1)/A364500(n+1))` -/
def P18017883978912020271.Spec : Prop :=
  ∀ n, P18017883978912020271.a n = A365432 (n + 1)

theorem P18017883978912020271.correct : P18017883978912020271.Spec := by
  intro n
  simp only [A365432, Nat.add_sub_cancel, A365432.P18017883978912020271.a, A365432.P18315931064286019973.a, A005940, A005940.P5942875842694471387.a, A156552, A156552.P4268073137713085227.a, A364500, A364500.P4741976009625240050.a, A364502, A364502.P9871908459785644473.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A122111, A122111.P18124015185857335041.a, A253563, A253563.P3695549317124564486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A025480, A025480.P15873863116418380882.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A364557, A364557.P16113127302810243144.a, A005187, A005187.P3874015513960485494.a, A006519, A006519.P10435570611646570274.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A365432

/-! ## A365432.P13680919312507283745

`A156552(A364501(n+1)+A364499(n+1)/A364500(n+1))`
-/

namespace A365432.P13680919312507283745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (SequenceMachineLib.roundAway ((A364501 (n + 1) : ℚ) + (A364499 (n + 1) : ℚ) / (A364500 (n + 1) : ℚ))).toNat

end

end A365432.P13680919312507283745

namespace A365432

/-- `A156552(A364501(n+1)+A364499(n+1)/A364500(n+1))` -/
def P13680919312507283745.Spec : Prop :=
  ∀ n, P13680919312507283745.a n = A365432 (n + 1)

end A365432

/-! ## A365432.P6917982158593503158

`A005941(A364501(n+1)+A364499(n+1)/A364500(n+1))-1`
-/

namespace A365432.P6917982158593503158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (SequenceMachineLib.roundAway ((A364501 (n + 1) : ℚ) + (A364499 (n + 1) : ℚ) / (A364500 (n + 1) : ℚ))).toNat - 1

end

end A365432.P6917982158593503158

namespace A365432

/-- `A005941(A364501(n+1)+A364499(n+1)/A364500(n+1))-1` -/
def P6917982158593503158.Spec : Prop :=
  ∀ n, P6917982158593503158.a n = A365432 (n + 1)

end A365432

/-!
# A365433: Height of the ziggurat of order n described in A347186.

The programs for A365433, there is no canonical definition to state claims against.
-/

/-! ## A365433.P16262302050124650728

`or(A034555(2*(n+2)), A365195(A187829(n+1)))`
-/

namespace A365433.P16262302050124650728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034555 (2 * (n + 2))) (A365195 (A187829 (n + 1)).toNat)

end

end A365433.P16262302050124650728

/-!
# A365435: Position of A002110(n) in A005117.

The programs for A365435, there is no canonical definition to state claims against.
-/

/-! ## A365435.P6721304325586253278

`A158341(n)+1`
-/

namespace A365435.P6721304325586253278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158341 n + 1

end

end A365435.P6721304325586253278

/-! ## A365435.P5672357312442438883

`A002110(n)-(A380403(n)+A380402(n))`
-/

namespace A365435.P5672357312442438883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - (A380403 n + A380402 n)

end

end A365435.P5672357312442438883

/-! ## A365435.P5863057669497888305

`A246353(2^n-1)`
-/

namespace A365435.P5863057669497888305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246353 (2 ^ n - 1)

end

end A365435.P5863057669497888305

/-! ## A365435.P3237110904648086473

`A064273(2^n-1)+1`
-/

namespace A365435.P3237110904648086473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064273 (2 ^ n - 1) + 1

end

end A365435.P3237110904648086473

/-! ## A365435.P11829929413761345368

`record[A246353(A006068(n))]`
-/

namespace A365435.P11829929413761345368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246353 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365435.P11829929413761345368

/-!
# A365437: Number of ways of placing n non-attacking queens on an n X n board, with no three queens in a straight line.

The programs for A365437, there is no canonical definition to state claims against.
-/

/-! ## A365437.P17678337997506597218

`and(A000005(A022558(n)), A022572(n))`
-/

namespace A365437.P17678337997506597218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A022558 n).toNat) (A022572 n)

end

end A365437.P17678337997506597218

/-! ## A365437.P711179833644893777

`and(A064481(A001168(n)), A121428(n))`
-/

namespace A365437.P711179833644893777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064481 (A001168 n).toNat) (A121428 n)

end

end A365437.P711179833644893777

/-! ## A365437.P9466246544617838494

`and(A007631(n), A250120(A049606(n)))`
-/

namespace A365437.P9466246544617838494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007631 n) (A250120 (A049606 n).toNat)

end

end A365437.P9466246544617838494

/-! ## A365437.P9609692752958970159

`and(A220084(n), A220102(A000602(n)))`
-/

namespace A365437.P9609692752958970159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A220084 n) (A220102 (A000602 n).toNat)

end

end A365437.P9609692752958970159

/-! ## A365437.P16296789579622946565

`and(A002635(A229046(n)), A229046(n))`
-/

namespace A365437.P16296789579622946565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002635 (A229046 n).toNat) (A229046 n)

end

end A365437.P16296789579622946565

/-!
# A365438: E.g.f. satisfies A(x) = 1 - log(1 - x*A(x)^2)/A(x).

The programs for A365438, there is no canonical definition to state claims against.
-/

/-! ## A365438.P17785790482743032478

`A092599(a(n-1))+3` with `a(0)=1, a(1)=1`
-/

namespace A365438.P17785790482743032478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A092599 (a (n - 1)).toNat + 3

end

end A365438.P17785790482743032478

/-!
# A365439: a(n) = Sum_{k=1..n} binomial(floor(n/k)+4,5).

The programs for A365439, the canonical program `A365439.P12833997707315348155` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365439 has offset 1).

The definition of A365439 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A064603, A064604, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365439.P12833997707315348155

`(A064604(n+1)+6*A064603(n+1)+11*A064602(n+1)+6*A024916(n+1))/24`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A365439

/-- `(A064604(n+1)+6*A064603(n+1)+11*A064602(n+1)+6*A024916(n+1))/24` -/
def P12833997707315348155.Spec : Prop :=
  ∀ n, P12833997707315348155.a n = (A365439 (n + 1) : ℚ)

end A365439

/-! ## A365439.P9208588798072168092

`∑[∑{d}[n+1, C(#+3, 4)]]`
-/

namespace A365439.P9208588798072168092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose (d + 3) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365439.P9208588798072168092

namespace A365439

/-- `∑[∑{d}[n+1, C(#+3, 4)]]` -/
def P9208588798072168092.Spec : Prop :=
  ∀ n, (P9208588798072168092.a n : ℤ) = A365439 (n + 1)

end A365439

/-! ## A365439.P17118046152663010503

`∑[A073570(n+1)]`
-/

namespace A365439.P17118046152663010503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365439.P17118046152663010503

namespace A365439

/-- `∑[A073570(n+1)]` -/
def P17118046152663010503.Spec : Prop :=
  ∀ n, P17118046152663010503.a n = A365439 (n + 1)

end A365439

/-! ## A365439.P11093213258233667210

`∑[A363695(n+1)-A116963(n+1)]`
-/

namespace A365439.P11093213258233667210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363695 (n + 1) - A116963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365439.P11093213258233667210

namespace A365439

/-- `∑[A363695(n+1)-A116963(n+1)]` -/
def P11093213258233667210.Spec : Prop :=
  ∀ n, P11093213258233667210.a n = A365439 (n + 1)

end A365439

/-! ## A365439.P741710133763419448

`∑[A363695(n+1)-4/(n+1)*A343545(n+1)]`
-/

namespace A365439.P741710133763419448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363695 (n + 1) : ℚ) - 4 / (n + 1 : ℚ) * (A343545 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365439.P741710133763419448

namespace A365439

/-- `∑[A363695(n+1)-4/(n+1)*A343545(n+1)]` -/
def P741710133763419448.Spec : Prop :=
  ∀ n, P741710133763419448.a n = (A365439 (n + 1) : ℚ)

end A365439

/-! ## A365439.P492052478240020511

`∑[A363695(n+1)-(A363628(n+1)+A059358(n+1))]`
-/

namespace A365439.P492052478240020511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363695 (n + 1) - (A363628 (n + 1) + A059358 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365439.P492052478240020511

namespace A365439

/-- `∑[A363695(n+1)-(A363628(n+1)+A059358(n+1))]` -/
def P492052478240020511.Spec : Prop :=
  ∀ n, P492052478240020511.a n = A365439 (n + 1)

end A365439

/-! ## A365439.P17137711113709797615

`∑[A363695(n+1)-∑{d}[n+1, A160790(2*#+1)]]`
-/

namespace A365439.P17137711113709797615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363695 (n + 1) - ∑ d ∈ Nat.divisors (f2 n), A160790 (2 * d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365439.P17137711113709797615

namespace A365439

/-- `∑[A363695(n+1)-∑{d}[n+1, A160790(2*#+1)]]` -/
def P17137711113709797615.Spec : Prop :=
  ∀ n, P17137711113709797615.a n = A365439 (n + 1)

end A365439

/-!
# A365441: Number of partitions of [2n] whose block maxima sum to 3n.

The programs for A365441, there is no canonical definition to state claims against.
-/

/-! ## A365441.P16096749383342266249

`A368675(n)+A131577(n)`
-/

namespace A365441.P16096749383342266249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368675 n + A131577 n

end

end A365441.P16096749383342266249

/-! ## A365441.P1149809534954050481

`A368675(n)+Δ[A011782(n)]`
-/

namespace A365441.P1149809534954050481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368675 n + (f1 (n + 1) - f1 n)

end

end A365441.P1149809534954050481

/-! ## A365441.P5404307038427264350

`A368675(round(sqrt(n²+1)))+A011782(n)`
-/

namespace A365441.P5404307038427264350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368675 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A011782 n

end

end A365441.P5404307038427264350

/-! ## A365441.P1180777982207840709

`A367955(A180415(n+1))`
-/

namespace A365441.P1180777982207840709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367955 (A180415 (n + 1)).toNat

end

end A365441.P1180777982207840709

/-! ## A365441.P6244753286540287774

`A367955(A177787(n+1))`
-/

namespace A365441.P6244753286540287774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367955 (A177787 (n + 1)).toNat

end

end A365441.P6244753286540287774

/-!
# A365442: Partial sums of A365412.

The programs for A365442, the canonical program `A365442.P17826608270542364438` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365442 has offset 0).

The definition of A365442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365442.P17826608270542364438

`∑[∑{d}[6*n+2, #]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A365442

/-- `∑[∑{d}[6*n+2, #]]` -/
def P17826608270542364438.Spec : Prop :=
  ∀ n, (P17826608270542364438.a n : ℤ) = A365442 n

theorem P17826608270542364438.correct : P17826608270542364438.Spec := by
  intro n
  simp only [A365442]

end A365442

/-! ## A365442.P2297827176228568103

`∑[A365412(n)]`
-/

namespace A365442.P2297827176228568103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365442.P2297827176228568103

namespace A365442

/-- `∑[A365412(n)]` -/
def P2297827176228568103.Spec : Prop :=
  ∀ n, P2297827176228568103.a n = A365442 n

theorem P2297827176228568103.correct : P2297827176228568103.Spec := by
  intro n
  simp only [A365442, Nat.add_sub_cancel, A365442.P2297827176228568103.f1, A365442.P2297827176228568103.a, A365442.P17826608270542364438.f2, A365442.P17826608270542364438.f1, A365442.P17826608270542364438.a, A365412, A365412.P2623690394463438513.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365442

/-! ## A365442.P3474975861374776879

`∑[3*A033686(2*n)]`
-/

namespace A365442.P3474975861374776879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033686 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365442.P3474975861374776879

namespace A365442

/-- `∑[3*A033686(2*n)]` -/
def P3474975861374776879.Spec : Prop :=
  ∀ n, P3474975861374776879.a n = A365442 n

end A365442

/-! ## A365442.P390027147853583822

`∑[A000203(A016957(n)-2)]`
-/

namespace A365442.P390027147853583822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A016957 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365442.P390027147853583822

namespace A365442

/-- `∑[A000203(A016957(n)-2)]` -/
def P390027147853583822.Spec : Prop :=
  ∀ n, P390027147853583822.a n = A365442 n

end A365442

/-! ## A365442.P1225082052678324596

`∑[A000203(2*A016777(n))]`
-/

namespace A365442.P1225082052678324596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365442.P1225082052678324596

namespace A365442

/-- `∑[A000203(2*A016777(n))]` -/
def P1225082052678324596.Spec : Prop :=
  ∀ n, P1225082052678324596.a n = A365442 n

end A365442

/-! ## A365442.P2956031387913887127

`∑[A062731(3*n+1)]`
-/

namespace A365442.P2956031387913887127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365442.P2956031387913887127

namespace A365442

/-- `∑[A062731(3*n+1)]` -/
def P2956031387913887127.Spec : Prop :=
  ∀ n, P2956031387913887127.a n = A365442 n

end A365442

/-! ## A365442.P18178477944047707588

`∑[A144615(2*n)]`
-/

namespace A365442.P18178477944047707588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144615 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365442.P18178477944047707588

namespace A365442

/-- `∑[A144615(2*n)]` -/
def P18178477944047707588.Spec : Prop :=
  ∀ n, P18178477944047707588.a n = A365442 n

theorem P18178477944047707588.correct : P18178477944047707588.Spec := by
  intro n
  simp only [A365442, Nat.add_sub_cancel, A365442.P18178477944047707588.f1, A365442.P18178477944047707588.a, A365442.P17826608270542364438.f2, A365442.P17826608270542364438.f1, A365442.P17826608270542364438.a, A144615, A144615.P1433595682718935894.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365442

/-!
# A365444: Partial sums of A365414.

The programs for A365444, the canonical program `A365444.P7127417130469343253` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365444 has offset 0).

The definition of A365444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365444.P7127417130469343253

`∑[∑{d}[6*n+4, #]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A365444

/-- `∑[∑{d}[6*n+4, #]]` -/
def P7127417130469343253.Spec : Prop :=
  ∀ n, (P7127417130469343253.a n : ℤ) = A365444 n

theorem P7127417130469343253.correct : P7127417130469343253.Spec := by
  intro n
  simp only [A365444]

end A365444

/-! ## A365444.P7437073952631327133

`∑[A365414(n)]`
-/

namespace A365444.P7437073952631327133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365444.P7437073952631327133

namespace A365444

/-- `∑[A365414(n)]` -/
def P7437073952631327133.Spec : Prop :=
  ∀ n, P7437073952631327133.a n = A365444 n

theorem P7437073952631327133.correct : P7437073952631327133.Spec := by
  intro n
  simp only [A365444, Nat.add_sub_cancel, A365444.P7437073952631327133.f1, A365444.P7437073952631327133.a, A365444.P7127417130469343253.f2, A365444.P7127417130469343253.f1, A365444.P7127417130469343253.a, A365414, A365414.P5972711009261170404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365444

/-! ## A365444.P10097847503135202991

`∑[A000203(A016957(n))]`
-/

namespace A365444.P10097847503135202991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A016957 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365444.P10097847503135202991

namespace A365444

/-- `∑[A000203(A016957(n))]` -/
def P10097847503135202991.Spec : Prop :=
  ∀ n, P10097847503135202991.a n = A365444 n

end A365444

/-! ## A365444.P3877030529673358997

`∑[A062731(3*n+2)]`
-/

namespace A365444.P3877030529673358997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365444.P3877030529673358997

namespace A365444

/-- `∑[A062731(3*n+2)]` -/
def P3877030529673358997.Spec : Prop :=
  ∀ n, P3877030529673358997.a n = A365444 n

end A365444

/-! ## A365444.P8884167259067477803

`∑[A144614(2*n+1)]`
-/

namespace A365444.P8884167259067477803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144614 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365444.P8884167259067477803

namespace A365444

/-- `∑[A144614(2*n+1)]` -/
def P8884167259067477803.Spec : Prop :=
  ∀ n, P8884167259067477803.a n = A365444 n

theorem P8884167259067477803.correct : P8884167259067477803.Spec := by
  intro n
  simp only [A365444, Nat.add_sub_cancel, A365444.P8884167259067477803.f1, A365444.P8884167259067477803.a, A365444.P7127417130469343253.f2, A365444.P7127417130469343253.f1, A365444.P7127417130469343253.a, A144614, A144614.P17938140406171166888.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365444

/-! ## A365444.P13506582559077875702

`∑[A000203(A016777(2*n+1))]`
-/

namespace A365444.P13506582559077875702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A016777 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365444.P13506582559077875702

namespace A365444

/-- `∑[A000203(A016777(2*n+1))]` -/
def P13506582559077875702.Spec : Prop :=
  ∀ n, P13506582559077875702.a n = A365444 n

end A365444

/-! ## A365444.P10876128133070816110

`∑[A224613(3*n+2)/4]`
-/

namespace A365444.P10876128133070816110
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224613 (3 * n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365444.P10876128133070816110

namespace A365444

/-- `∑[A224613(3*n+2)/4]` -/
def P10876128133070816110.Spec : Prop :=
  ∀ n, P10876128133070816110.a n = (A365444 n : ℚ)

end A365444

/-!
# A365446: Partial sums of A224613.

The programs for A365446, the canonical program `A365446.P9601689612456478928` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365446 has offset 1).

The definition of A365446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365446.P9601689612456478928

`∑[∑{d}[6*(n+1), #]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A365446

/-- `∑[∑{d}[6*(n+1), #]]` -/
def P9601689612456478928.Spec : Prop :=
  ∀ n, (P9601689612456478928.a n : ℤ) = A365446 (n + 1)

theorem P9601689612456478928.correct : P9601689612456478928.Spec := by
  intro n
  simp only [A365446, Nat.add_sub_cancel]

end A365446

/-! ## A365446.P5961461809011398687

`∑[A224613(n+1)]`
-/

namespace A365446.P5961461809011398687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365446.P5961461809011398687

namespace A365446

/-- `∑[A224613(n+1)]` -/
def P5961461809011398687.Spec : Prop :=
  ∀ n, P5961461809011398687.a n = A365446 (n + 1)

end A365446

/-! ## A365446.P14651500023809120539

`∑[A000203(A016957(n)+2)]`
-/

namespace A365446.P14651500023809120539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A016957 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365446.P14651500023809120539

namespace A365446

/-- `∑[A000203(A016957(n)+2)]` -/
def P14651500023809120539.Spec : Prop :=
  ∀ n, P14651500023809120539.a n = A365446 (n + 1)

end A365446

/-! ## A365446.P14064538574952644150

`∑[A000203(Δ[A003215(n)])]`
-/

namespace A365446.P14064538574952644150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365446.P14064538574952644150

namespace A365446

/-- `∑[A000203(Δ[A003215(n)])]` -/
def P14064538574952644150.Spec : Prop :=
  ∀ n, P14064538574952644150.a n = A365446 (n + 1)

end A365446

/-! ## A365446.P17901906144777508694

`∑[A062731(3*(n+1))]`
-/

namespace A365446.P17901906144777508694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365446.P17901906144777508694

namespace A365446

/-- `∑[A062731(3*(n+1))]` -/
def P17901906144777508694.Spec : Prop :=
  ∀ n, P17901906144777508694.a n = A365446 (n + 1)

end A365446

/-! ## A365446.P3310592733543189135

`∑[A144613(2*(n+1))]`
-/

namespace A365446.P3310592733543189135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144613 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365446.P3310592733543189135

namespace A365446

/-- `∑[A144613(2*(n+1))]` -/
def P3310592733543189135.Spec : Prop :=
  ∀ n, P3310592733543189135.a n = A365446 (n + 1)

end A365446

/-! ## A365446.P18311067969821653095

`∑[A000203(A008486(2*(n+1)))]`
-/

namespace A365446.P18311067969821653095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A008486 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365446.P18311067969821653095

namespace A365446

/-- `∑[A000203(A008486(2*(n+1)))]` -/
def P18311067969821653095.Spec : Prop :=
  ∀ n, P18311067969821653095.a n = A365446 (n + 1)

end A365446

/-!
# A365451: Odd composite numbers k such that A349494(k) = A000120(k).

The programs for A365451, there is no canonical definition to state claims against.
-/

/-! ## A365451.P14857492512455842836

`∩[A110978(n), A359080(n+1)]`
-/

namespace A365451.P14857492512455842836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365451.P14857492512455842836

/-! ## A365451.P2399236387936345935

`∩[A102553(n+1), A177713(n+1)]`
-/

namespace A365451.P2399236387936345935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365451.P2399236387936345935

/-! ## A365451.P9675558526639435373

`∩[A102553(n+1), A180366(n+1)]`
-/

namespace A365451.P9675558526639435373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365451.P9675558526639435373

/-! ## A365451.P12876493661629981953

`∩[A102553(n+1), A392498(n+1)]`
-/

namespace A365451.P12876493661629981953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365451.P12876493661629981953

/-! ## A365451.P16745087141146098086

`∩[A177713(n+1), A359080(n+1)]`
-/

namespace A365451.P16745087141146098086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365451.P16745087141146098086

/-!
# A365452: Largest number whose digits, in some base, sum to n and include no zeros.

The programs for A365452, there is no canonical definition to state claims against.
-/

/-! ## A365452.P8665824084821644943

`A028310(A071913(n+1)-(floor(A071913(n+1)/6)+1))`
-/

namespace A365452.P8665824084821644943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A071913 (n + 1) - (⌊(A071913 (n + 1) : ℚ) / 6⌋ + 1)).toNat

end

end A365452.P8665824084821644943

/-! ## A365452.P5647363147049510473

`A261104(∑[6^n])`
-/

namespace A365452.P5647363147049510473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365452.P5647363147049510473

/-!
# A365454: a(n) = gcd(sigma(n), A156552(2*n)).

The programs for A365454, the canonical program `A365454.P3078564469572902487` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365454 has offset 1).

The definition of A365454 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365454.P9745075314461442265

`A000203(n+1)/A365455(n+1)`
-/

namespace A365454.P9745075314461442265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A365455 (n + 1) : ℚ)

end

end A365454.P9745075314461442265

namespace A365454

/-- `A000203(n+1)/A365455(n+1)` -/
def P9745075314461442265.Spec : Prop :=
  ∀ n, P9745075314461442265.a n = (A365454 (n + 1) : ℚ)

end A365454

/-! ## A365454.P3471026362294558736

`A156552(2*(n+1))/A365456(n+1)`
-/

namespace A365454.P3471026362294558736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156552 (2 * (n + 1)) : ℚ) / (A365456 (n + 1) : ℚ)

end

end A365454.P3471026362294558736

namespace A365454

/-- `A156552(2*(n+1))/A365456(n+1)` -/
def P3471026362294558736.Spec : Prop :=
  ∀ n, P3471026362294558736.a n = (A365454 (n + 1) : ℚ)

end A365454

/-! ## A365454.P3078564469572902487

`gcd(A000203(n+1), A156552(2*(n+1)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A365454

/-- `gcd(A000203(n+1), A156552(2*(n+1)))` -/
def P3078564469572902487.Spec : Prop :=
  ∀ n, (P3078564469572902487.a n : ℤ) = A365454 (n + 1)

theorem P3078564469572902487.correct : P3078564469572902487.Spec := by
  intro n
  simp only [A365454, Nat.add_sub_cancel]

end A365454

/-! ## A365454.P11227861803950740058

`gcd(A000203(n+1), A322993(A005843(n+1)))`
-/

namespace A365454.P11227861803950740058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A322993 (A005843 (n + 1)).toNat)

end

end A365454.P11227861803950740058

namespace A365454

/-- `gcd(A000203(n+1), A322993(A005843(n+1)))` -/
def P11227861803950740058.Spec : Prop :=
  ∀ n, (P11227861803950740058.a n : ℤ) = A365454 (n + 1)

end A365454

/-! ## A365454.P8038755674823548793

`A324054(A156552(n+1))/A365455(n+1)`
-/

namespace A365454.P8038755674823548793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324054 (A156552 (n + 1)).toNat : ℚ) / (A365455 (n + 1) : ℚ)

end

end A365454.P8038755674823548793

namespace A365454

/-- `A324054(A156552(n+1))/A365455(n+1)` -/
def P8038755674823548793.Spec : Prop :=
  ∀ n, P8038755674823548793.a n = (A365454 (n + 1) : ℚ)

end A365454

/-!
# A365455: a(n) = sigma(n) / gcd(sigma(n), A156552(2*n)).

The programs for A365455, the canonical program `A365455.P7995944567857351454` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365455 has offset 1).

The definition of A365455 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A365454, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365455.P7995944567857351454

`A000203(n+1)/A365454(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A365455

/-- `A000203(n+1)/A365454(n+1)` -/
def P7995944567857351454.Spec : Prop :=
  ∀ n, P7995944567857351454.a n = (A365455 (n + 1) : ℚ)

end A365455

/-! ## A365455.P1247456557170644580

`abs(Δ[A330725(n)])/A365454(n+1)`
-/

namespace A365455.P1247456557170644580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|f1 (n + 1) - f1 n| : ℚ) / (A365454 (n + 1) : ℚ)

end

end A365455.P1247456557170644580

namespace A365455

/-- `abs(Δ[A330725(n)])/A365454(n+1)` -/
def P1247456557170644580.Spec : Prop :=
  ∀ n, P1247456557170644580.a n = (A365455 (n + 1) : ℚ)

end A365455

/-! ## A365455.P13964568239924294482

`abs(A143348(n+1)/A365454(n+1))`
-/

namespace A365455.P13964568239924294482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A143348 (n + 1) : ℚ) / (A365454 (n + 1) : ℚ)|

end

end A365455.P13964568239924294482

namespace A365455

/-- `abs(A143348(n+1)/A365454(n+1))` -/
def P13964568239924294482.Spec : Prop :=
  ∀ n, P13964568239924294482.a n = (A365455 (n + 1) : ℚ)

end A365455

/-! ## A365455.P14546732467840261935

`sqrt(A072861(n+1))/A365454(n+1)`
-/

namespace A365455.P14546732467840261935
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) / (A365454 (n + 1) : ℝ)

end

end A365455.P14546732467840261935

namespace A365455

/-- `sqrt(A072861(n+1))/A365454(n+1)` -/
def P14546732467840261935.Spec : Prop :=
  ∀ n, P14546732467840261935.a n = (A365455 (n + 1) : ℝ)

end A365455

/-! ## A365455.P10949099771183355165

`(A039653(n+1)+1)/A365454(n+1)`
-/

namespace A365455.P10949099771183355165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039653 (n + 1) + 1 : ℚ) / (A365454 (n + 1) : ℚ)

end

end A365455.P10949099771183355165

namespace A365455

/-- `(A039653(n+1)+1)/A365454(n+1)` -/
def P10949099771183355165.Spec : Prop :=
  ∀ n, P10949099771183355165.a n = (A365455 (n + 1) : ℚ)

end A365455

/-! ## A365455.P5085336048562321094

`∑{d}[n+1, #]/gcd(A000203(n+1), A156552(2*(n+1)))`
-/

namespace A365455.P5085336048562321094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Int.gcd (A000203 (n + 1)) (A156552 (2 * (n + 1))) : ℚ)

end

end A365455.P5085336048562321094

namespace A365455

/-- `∑{d}[n+1, #]/gcd(A000203(n+1), A156552(2*(n+1)))` -/
def P5085336048562321094.Spec : Prop :=
  ∀ n, P5085336048562321094.a n = (A365455 (n + 1) : ℚ)

end A365455

/-!
# A365456: a(n) = A156552(2*n) / gcd(sigma(n), A156552(2*n)).

The programs for A365456, the canonical program `A365456.P15316815011431485056` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365456 has offset 1).

The definition of A365456 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A365454, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365456.P15316815011431485056

`A156552(2*(n+1))/A365454(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A365456

/-- `A156552(2*(n+1))/A365454(n+1)` -/
def P15316815011431485056.Spec : Prop :=
  ∀ n, P15316815011431485056.a n = (A365456 (n + 1) : ℚ)

end A365456

/-! ## A365456.P9804255805350824866

`A365457(A005941(n+1))`
-/

namespace A365456.P9804255805350824866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365457 (A005941 (n + 1)).toNat

end

end A365456.P9804255805350824866

namespace A365456

/-- `A365457(A005941(n+1))` -/
def P9804255805350824866.Spec : Prop :=
  ∀ n, P9804255805350824866.a n = A365456 (n + 1)

end A365456

/-! ## A365456.P6325351310645259017

`A365457(A156552(n+1)+1)`
-/

namespace A365456.P6325351310645259017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365457 (A156552 (n + 1) + 1).toNat

end

end A365456.P6325351310645259017

namespace A365456

/-- `A365457(A156552(n+1)+1)` -/
def P6325351310645259017.Spec : Prop :=
  ∀ n, P6325351310645259017.a n = A365456 (n + 1)

end A365456

/-!
# A365457: a(n) = A365456(A005940(n)), where A365456(n) = A156552(2*n) / gcd(sigma(n), A156552(2*n)), and A156552 is the inverse of offset-0 version of Doudna-sequence, A005940.

The programs for A365457, the canonical program `A365457.P13925812260677251012` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365457 has offset 1).

The definition of A365457 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A365456, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365457.P14092550857378012302

`(2*(n+1)-1)/gcd(2*(n+1)-1, A324054(n))`
-/

namespace A365457.P14092550857378012302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1 : ℚ) / (Int.gcd ((2 * (n + 1) : ℤ) - 1) (A324054 n) : ℚ)

end

end A365457.P14092550857378012302

namespace A365457

/-- `(2*(n+1)-1)/gcd(2*(n+1)-1, A324054(n))` -/
def P14092550857378012302.Spec : Prop :=
  ∀ n, P14092550857378012302.a n = (A365457 (n + 1) : ℚ)

end A365457

/-! ## A365457.P13925812260677251012

`A365456(A005940(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A365457

/-- `A365456(A005940(n+1))` -/
def P13925812260677251012.Spec : Prop :=
  ∀ n, P13925812260677251012.a n = A365457 (n + 1)

theorem P13925812260677251012.correct : P13925812260677251012.Spec := by
  intro n
  simp only [A365457, Nat.add_sub_cancel]

end A365457

/-! ## A365457.P10306561013250213604

`A365456(A292602(4*n+3))`
-/

namespace A365457.P10306561013250213604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365456 (A292602 (4 * n + 3)).toNat

end

end A365457.P10306561013250213604

namespace A365457

/-- `A365456(A292602(4*n+3))` -/
def P10306561013250213604.Spec : Prop :=
  ∀ n, P10306561013250213604.a n = A365457 (n + 1)

end A365457

/-! ## A365457.P5208181526272720824

`A365456(A324641(n+1)-A324640(n+1))`
-/

namespace A365457.P5208181526272720824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365456 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A365457.P5208181526272720824

namespace A365457

/-- `A365456(A324641(n+1)-A324640(n+1))` -/
def P5208181526272720824.Spec : Prop :=
  ∀ n, P5208181526272720824.a n = A365457 (n + 1)

end A365457

/-! ## A365457.P7216539589975683243

`A007913(A345949(2*(n+1))^A326851(n))`
-/

namespace A365457.P7216539589975683243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A345949 (2 * (n + 1)) : ℚ) ^ (A326851 n : ℤ))).toNat

end

end A365457.P7216539589975683243

namespace A365457

/-- `A007913(A345949(2*(n+1))^A326851(n))` -/
def P7216539589975683243.Spec : Prop :=
  ∀ n, P7216539589975683243.a n = A365457 (n + 1)

end A365457

/-!
# A365458: The largest power of 3 that is less than or equal to n.

The programs for A365458, the canonical program `A365458.P14183094372100855365` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365458 has offset 1).

The definition of A365458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365458.P17436340487630433073

`3^floor(log(n+1)/log(3))`
-/

namespace A365458.P17436340487630433073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊Real.log (n + 1 : ℝ) / Real.log (3 : ℝ)⌋ : ℤ)

end

end A365458.P17436340487630433073

namespace A365458

/-- `3^floor(log(n+1)/log(3))` -/
def P17436340487630433073.Spec : Prop :=
  ∀ n, P17436340487630433073.a n = (A365458 (n + 1) : ℚ)

end A365458

/-! ## A365458.P14183094372100855365

`3*a(floor((n-2)/3))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A365458

/-- `3*a(floor((n-2)/3))` -/
def P14183094372100855365.Spec : Prop :=
  ∀ n, (P14183094372100855365.a n : ℤ) = A365458 (n + 1)

theorem P14183094372100855365.correct : P14183094372100855365.Spec := by
  intro n
  simp only [A365458, Nat.add_sub_cancel]

end A365458

/-! ## A365458.P6420552050832554796

`lt[1, floor(a(floor(n/3)))]-(n+1)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A365458.P6420552050832554796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 2] fun n f2 =>
  f2 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n + 1 : ℤ)

end

end A365458.P6420552050832554796

namespace A365458

/-- `lt[1, floor(a(floor(n/3)))]-(n+1)` -/
def P6420552050832554796.Spec : Prop :=
  ∀ n, P6420552050832554796.a n = A365458 (n + 1)

end A365458

/-! ## A365458.P12611756471905681545

`lt[1, floor(a(floor(n/3)))]-1-n` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A365458.P12611756471905681545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 2] fun n f2 =>
  f2 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1 - (n : ℤ)

end

end A365458.P12611756471905681545

namespace A365458

/-- `lt[1, floor(a(floor(n/3)))]-1-n` -/
def P12611756471905681545.Spec : Prop :=
  ∀ n, P12611756471905681545.a n = A365458 (n + 1)

end A365458

/-! ## A365458.P13621571032609577154

`1-A365459(n+1)+n`
-/

namespace A365458.P13621571032609577154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A365459 (n + 1) + (n : ℤ)

end

end A365458.P13621571032609577154

namespace A365458

/-- `1-A365459(n+1)+n` -/
def P13621571032609577154.Spec : Prop :=
  ∀ n, P13621571032609577154.a n = A365458 (n + 1)

theorem P13621571032609577154.correct : P13621571032609577154.Spec := by
  intro n
  simp only [A365458, Nat.add_sub_cancel, A365458.P13621571032609577154.a, A365458.P14183094372100855365.a, A365459, A365459.P9893649784102911518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365458

/-! ## A365458.P8702253813479906562

`A132171(A004526(n))`
-/

namespace A365458.P8702253813479906562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A004526 n).toNat

end

end A365458.P8702253813479906562

namespace A365458

/-- `A132171(A004526(n))` -/
def P8702253813479906562.Spec : Prop :=
  ∀ n, P8702253813479906562.a n = A365458 (n + 1)

end A365458

/-! ## A365458.P8361523265076878858

`A064235(A086161(n))`
-/

namespace A365458.P8361523265076878858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064235 (A086161 n).toNat

end

end A365458.P8361523265076878858

namespace A365458

/-- `A064235(A086161(n))` -/
def P8361523265076878858.Spec : Prop :=
  ∀ n, P8361523265076878858.a n = A365458 (n + 1)

end A365458

/-! ## A365458.P17779996664122619010

`A132171(A300293(n))`
-/

namespace A365458.P17779996664122619010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A300293 n).toNat

end

end A365458.P17779996664122619010

namespace A365458

/-- `A132171(A300293(n))` -/
def P17779996664122619010.Spec : Prop :=
  ∀ n, P17779996664122619010.a n = A365458 (n + 1)

end A365458

/-! ## A365458.P1084705582803993680

`A064235(A008620(n+1))`
-/

namespace A365458.P1084705582803993680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064235 (A008620 (n + 1)).toNat

end

end A365458.P1084705582803993680

namespace A365458

/-- `A064235(A008620(n+1))` -/
def P1084705582803993680.Spec : Prop :=
  ∀ n, P1084705582803993680.a n = A365458 (n + 1)

end A365458

/-! ## A365458.P15209987064182826445

`A132171(A054861(n+1))`
-/

namespace A365458.P15209987064182826445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A054861 (n + 1)).toNat

end

end A365458.P15209987064182826445

namespace A365458

/-- `A132171(A054861(n+1))` -/
def P15209987064182826445.Spec : Prop :=
  ∀ n, P15209987064182826445.a n = A365458 (n + 1)

end A365458

/-! ## A365458.P4176127543265057561

`A132171(A189638(n+1))`
-/

namespace A365458.P4176127543265057561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A189638 (n + 1)).toNat

end

end A365458.P4176127543265057561

namespace A365458

/-- `A132171(A189638(n+1))` -/
def P4176127543265057561.Spec : Prop :=
  ∀ n, P4176127543265057561.a n = A365458 (n + 1)

end A365458

/-! ## A365458.P3487825670234839922

`A132171(A189641(n+1))`
-/

namespace A365458.P3487825670234839922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A189641 (n + 1)).toNat

end

end A365458.P3487825670234839922

namespace A365458

/-- `A132171(A189641(n+1))` -/
def P3487825670234839922.Spec : Prop :=
  ∀ n, P3487825670234839922.a n = A365458 (n + 1)

end A365458

/-! ## A365458.P11993287822953715102

`A132171(A300068(n+1))`
-/

namespace A365458.P11993287822953715102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A300068 (n + 1)).toNat

end

end A365458.P11993287822953715102

namespace A365458

/-- `A132171(A300068(n+1))` -/
def P11993287822953715102.Spec : Prop :=
  ∀ n, P11993287822953715102.a n = A365458 (n + 1)

end A365458

/-! ## A365458.P7121091598249489046

`A108411(A329194(n+1))`
-/

namespace A365458.P7121091598249489046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (A329194 (n + 1)).toNat

end

end A365458.P7121091598249489046

namespace A365458

/-- `A108411(A329194(n+1))` -/
def P7121091598249489046.Spec : Prop :=
  ∀ n, P7121091598249489046.a n = A365458 (n + 1)

end A365458

/-! ## A365458.P6173844437348480450

`A132171(A052928(n)/2)`
-/

namespace A365458.P6173844437348480450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (SequenceMachineLib.roundAway ((A052928 n : ℚ) / 2)).toNat

end

end A365458.P6173844437348480450

namespace A365458

/-- `A132171(A052928(n)/2)` -/
def P6173844437348480450.Spec : Prop :=
  ∀ n, P6173844437348480450.a n = A365458 (n + 1)

end A365458

/-! ## A365458.P3597817367545433691

`A132171(A032766(n)-n)`
-/

namespace A365458.P3597817367545433691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A032766 n - (n : ℤ)).toNat

end

end A365458.P3597817367545433691

namespace A365458

/-- `A132171(A032766(n)-n)` -/
def P3597817367545433691.Spec : Prop :=
  ∀ n, P3597817367545433691.a n = A365458 (n + 1)

end A365458

/-! ## A365458.P17938030389939898339

`A132171(A073849(n)-n)`
-/

namespace A365458.P17938030389939898339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A073849 n - (n : ℤ)).toNat

end

end A365458.P17938030389939898339

namespace A365458

/-- `A132171(A073849(n)-n)` -/
def P17938030389939898339.Spec : Prop :=
  ∀ n, P17938030389939898339.a n = A365458 (n + 1)

end A365458

/-! ## A365458.P1076970109423327166

`A132171(A127427(n)-n)`
-/

namespace A365458.P1076970109423327166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A127427 n - (n : ℤ)).toNat

end

end A365458.P1076970109423327166

namespace A365458

/-- `A132171(A127427(n)-n)` -/
def P1076970109423327166.Spec : Prop :=
  ∀ n, P1076970109423327166.a n = A365458 (n + 1)

end A365458

/-! ## A365458.P15658834651550008364

`A006047(n-A365459(n+1))`
-/

namespace A365458.P15658834651550008364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 ((n : ℤ) - A365459 (n + 1)).toNat

end

end A365458.P15658834651550008364

namespace A365458

/-- `A006047(n-A365459(n+1))` -/
def P15658834651550008364.Spec : Prop :=
  ∀ n, P15658834651550008364.a n = A365458 (n + 1)

end A365458

/-! ## A365458.P17601812074344600362

`A132171(n-A365459(n+1))`
-/

namespace A365458.P17601812074344600362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 ((n : ℤ) - A365459 (n + 1)).toNat

end

end A365458.P17601812074344600362

namespace A365458

/-- `A132171(n-A365459(n+1))` -/
def P17601812074344600362.Spec : Prop :=
  ∀ n, P17601812074344600362.a n = A365458 (n + 1)

end A365458

/-!
# A365459: a(n) = n - the largest power of 3 that is less than or equal to n.

The programs for A365459, the canonical program `A365459.P9893649784102911518` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365459 has offset 1).

The definition of A365459 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A365458, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365459.P9893649784102911518

`n+1-A365458(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A365459

/-- `n+1-A365458(n+1)` -/
def P9893649784102911518.Spec : Prop :=
  ∀ n, P9893649784102911518.a n = A365459 (n + 1)

theorem P9893649784102911518.correct : P9893649784102911518.Spec := by
  intro n
  simp only [A365459, Nat.add_sub_cancel]

end A365459

/-! ## A365459.P9945623476663127899

`1-3^floor(log(n+1)/log(3))+n`
-/

namespace A365459.P9945623476663127899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (3 : ℚ) ^ (⌊Real.log (n + 1 : ℝ) / Real.log (3 : ℝ)⌋ : ℤ) + (n : ℚ)

end

end A365459.P9945623476663127899

namespace A365459

/-- `1-3^floor(log(n+1)/log(3))+n` -/
def P9945623476663127899.Spec : Prop :=
  ∀ n, P9945623476663127899.a n = (A365459 (n + 1) : ℚ)

end A365459

/-! ## A365459.P17827139932864609102

`(a(n-1)+1)%(2*(a(n-1)-n))` with `a(0)=0`
-/

namespace A365459.P17827139932864609102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (n - 1) + 1) (2 * (a (n - 1) - (n : ℤ)))

end

end A365459.P17827139932864609102

namespace A365459

/-- `(a(n-1)+1)%(2*(a(n-1)-n))` -/
def P17827139932864609102.Spec : Prop :=
  ∀ n, P17827139932864609102.a n = A365459 (n + 1)

end A365459

/-! ## A365459.P10940386175464109197

`(a(n-2)+2)%(a(a(n-2))-n)` with `a(0)=0, a(1)=1`
-/

namespace A365459.P10940386175464109197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (a (n - 2) + 2) (a (a (n - 2)).toNat - (n : ℤ))

end

end A365459.P10940386175464109197

namespace A365459

/-- `(a(n-2)+2)%(a(a(n-2))-n)` -/
def P10940386175464109197.Spec : Prop :=
  ∀ n, P10940386175464109197.a n = A365459 (n + 1)

end A365459

/-! ## A365459.P4653544739029301518

`A255588(A257174(3*(n+1))-A255588(3*n+4))`
-/

namespace A365459.P4653544739029301518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (A257174 (3 * (n + 1)) - A255588 (3 * n + 4)).toNat

end

end A365459.P4653544739029301518

namespace A365459

/-- `A255588(A257174(3*(n+1))-A255588(3*n+4))` -/
def P4653544739029301518.Spec : Prop :=
  ∀ n, P4653544739029301518.a n = A365459 (n + 1)

end A365459

/-! ## A365459.P12215263020241967234

`A020331(n+1)%A061579(A061579(3*n+4))`
-/

namespace A365459.P12215263020241967234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020331 (n + 1)) (A061579 (A061579 (3 * n + 4)).toNat)

end

end A365459.P12215263020241967234

namespace A365459

/-- `A020331(n+1)%A061579(A061579(3*n+4))` -/
def P12215263020241967234.Spec : Prop :=
  ∀ n, P12215263020241967234.a n = A365459 (n + 1)

end A365459

/-!
# A365460: Number of distinct primorials in the greedy sum of primorials adding to A181821(n).

The programs for A365460, the canonical program `A365460.P8090352919153727838` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365460 has offset 1).

The definition of A365460 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181821, A267263, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365460.P13401569083782956958

`A329040(A122111(n+1))`
-/

namespace A365460.P13401569083782956958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329040 (A122111 (n + 1)).toNat

end

end A365460.P13401569083782956958

namespace A365460

/-- `A329040(A122111(n+1))` -/
def P13401569083782956958.Spec : Prop :=
  ∀ n, P13401569083782956958.a n = A365460 (n + 1)

end A365460

/-! ## A365460.P8090352919153727838

`A267263(A181821(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A365460

/-- `A267263(A181821(n+1))` -/
def P8090352919153727838.Spec : Prop :=
  ∀ n, P8090352919153727838.a n = A365460 (n + 1)

theorem P8090352919153727838.correct : P8090352919153727838.Spec := by
  intro n
  simp only [A365460, Nat.add_sub_cancel]

end A365460

/-! ## A365460.P17136323544842213170

`A342461(A253564(n+1))`
-/

namespace A365460.P17136323544842213170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342461 (A253564 (n + 1)).toNat

end

end A365460.P17136323544842213170

namespace A365460

/-- `A342461(A253564(n+1))` -/
def P17136323544842213170.Spec : Prop :=
  ∀ n, P17136323544842213170.a n = A365460 (n + 1)

end A365460

/-! ## A365460.P14006977948145064080

`A160520(A173937(n+1))`
-/

namespace A365460.P14006977948145064080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160520 (A173937 (n + 1)).toNat

end

end A365460.P14006977948145064080

namespace A365460

/-- `A160520(A173937(n+1))` -/
def P14006977948145064080.Spec : Prop :=
  ∀ n, P14006977948145064080.a n = A365460 (n + 1)

end A365460

/-! ## A365460.P5982069675902036899

`A229897(A383752(n+1))`
-/

namespace A365460.P5982069675902036899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229897 (A383752 (n + 1)).toNat

end

end A365460.P5982069675902036899

namespace A365460

/-- `A229897(A383752(n+1))` -/
def P5982069675902036899.Spec : Prop :=
  ∀ n, P5982069675902036899.a n = A365460 (n + 1)

end A365460

/-!
# A365461: Sum of digits when A181821(n) is written in primorial base (A049345).

The programs for A365461, the canonical program `A365461.P18377989577747298524` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365461 has offset 1).

The definition of A365461 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A324888, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365461.P18377989577747298524

`A324888(A122111(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A365461

/-- `A324888(A122111(n+1))` -/
def P18377989577747298524.Spec : Prop :=
  ∀ n, P18377989577747298524.a n = A365461 (n + 1)

theorem P18377989577747298524.correct : P18377989577747298524.Spec := by
  intro n
  simp only [A365461, Nat.add_sub_cancel]

end A365461

/-! ## A365461.P12269572025128780245

`A276150(A181821(n+1))`
-/

namespace A365461.P12269572025128780245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A181821 (n + 1)).toNat

end

end A365461.P12269572025128780245

namespace A365461

/-- `A276150(A181821(n+1))` -/
def P12269572025128780245.Spec : Prop :=
  ∀ n, P12269572025128780245.a n = A365461 (n + 1)

end A365461

/-! ## A365461.P7888532614874610578

`A324387(A361808(n+1))`
-/

namespace A365461.P7888532614874610578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324387 (A361808 (n + 1)).toNat

end

end A365461.P7888532614874610578

namespace A365461

/-- `A324387(A361808(n+1))` -/
def P7888532614874610578.Spec : Prop :=
  ∀ n, P7888532614874610578.a n = A365461 (n + 1)

end A365461

/-! ## A365461.P17462430560852534615

`A056239(n+1)-A329622(A122111(n+1))`
-/

namespace A365461.P17462430560852534615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A329622 (A122111 (n + 1)).toNat

end

end A365461.P17462430560852534615

namespace A365461

/-- `A056239(n+1)-A329622(A122111(n+1))` -/
def P17462430560852534615.Spec : Prop :=
  ∀ n, P17462430560852534615.a n = A365461 (n + 1)

end A365461

/-! ## A365461.P6127338662909898727

`∑{d}[n+1, A297109(#)]-A329622(A122111(n+1))`
-/

namespace A365461.P6127338662909898727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297109 d - A329622 (A122111 (n + 1)).toNat

end

end A365461.P6127338662909898727

namespace A365461

/-- `∑{d}[n+1, A297109(#)]-A329622(A122111(n+1))` -/
def P6127338662909898727.Spec : Prop :=
  ∀ n, P6127338662909898727.a n = A365461 (n + 1)

end A365461

/-! ## A365461.P4431174325556953487

`A316436(2*(n+1))-1-A329622(A122111(n+1))`
-/

namespace A365461.P4431174325556953487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) - 1 - A329622 (A122111 (n + 1)).toNat

end

end A365461.P4431174325556953487

namespace A365461

/-- `A316436(2*(n+1))-1-A329622(A122111(n+1))` -/
def P4431174325556953487.Spec : Prop :=
  ∀ n, P4431174325556953487.a n = A365461 (n + 1)

end A365461

/-! ## A365461.P7280205190465662242

`A325135(n+1)+A252464(n+1)-A329622(A122111(n+1))`
-/

namespace A365461.P7280205190465662242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (n + 1) + A252464 (n + 1) - A329622 (A122111 (n + 1)).toNat

end

end A365461.P7280205190465662242

namespace A365461

/-- `A325135(n+1)+A252464(n+1)-A329622(A122111(n+1))` -/
def P7280205190465662242.Spec : Prop :=
  ∀ n, P7280205190465662242.a n = A365461 (n + 1)

end A365461

/-! ## A365461.P17692898609260301904

`A346698(2*(n+1))+A346698(n+1)-A329622(A122111(n+1))`
-/

namespace A365461.P17692898609260301904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (2 * (n + 1)) + A346698 (n + 1) - A329622 (A122111 (n + 1)).toNat

end

end A365461.P17692898609260301904

namespace A365461

/-- `A346698(2*(n+1))+A346698(n+1)-A329622(A122111(n+1))` -/
def P17692898609260301904.Spec : Prop :=
  ∀ n, P17692898609260301904.a n = A365461 (n + 1)

end A365461

/-!
# A365462: a(n) = A356867(n) - n.

The programs for A365462, there is no canonical definition to state claims against.
-/

/-! ## A365462.P3388338745738671712

`A356867(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365462.P3388338745738671712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356867 (n + 1) - (n + 1 : ℤ)

end

end A365462.P3388338745738671712

/-! ## A365462.P11436962114670382221

`A365463(n+1)*A365465(n+1)-(n+1)`
-/

namespace A365462.P11436962114670382221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365463 (n + 1) * A365465 (n + 1) - (n + 1 : ℤ)

end

end A365462.P11436962114670382221

/-! ## A365462.P16490376789908483850

`A023443(A356867(n+1))-n`
-/

namespace A365462.P16490376789908483850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A356867 (n + 1)).toNat - (n : ℤ)

end

end A365462.P16490376789908483850

/-! ## A365462.P14692750923281335165

`A023443(A365463(n+1)*A365465(n+1))-n`
-/

namespace A365462.P14692750923281335165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A365463 (n + 1) * A365465 (n + 1)).toNat - (n : ℤ)

end

end A365462.P14692750923281335165

/-!
# A365463: a(n) = gcd(n, A356867(n)), where A356867 is Sycamore's Doudna variant D(3).

The programs for A365463, there is no canonical definition to state claims against.
-/

/-! ## A365463.P17784247346175963569

`(n+1)/A365464(n+1)`
-/

namespace A365463.P17784247346175963569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A365464 (n + 1) : ℚ)

end

end A365463.P17784247346175963569

/-! ## A365463.P16849999489436190222

`gcd(n+1, A356867(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365463.P16849999489436190222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A356867 (n + 1))

end

end A365463.P16849999489436190222

/-! ## A365463.P16600924479057957664

`A356867(n+1)/A365465(n+1)`
-/

namespace A365463.P16600924479057957664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356867 (n + 1) : ℚ) / (A365465 (n + 1) : ℚ)

end

end A365463.P16600924479057957664

/-! ## A365463.P13521294687630590037

`gcd(A000027(n+1), A365462(n+1))`
-/

namespace A365463.P13521294687630590037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A365462 (n + 1))

end

end A365463.P13521294687630590037

/-! ## A365463.P8437670542469090019

`(A365462(n+1)+1+n)/A365465(n+1)`
-/

namespace A365463.P8437670542469090019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365462 (n + 1) + 1 + (n : ℤ) : ℚ) / (A365465 (n + 1) : ℚ)

end

end A365463.P8437670542469090019

/-!
# A365464: a(n) = n / gcd(n, A356867(n)).

The programs for A365464, there is no canonical definition to state claims against.
-/

/-! ## A365464.P507546561879500248

`(n+1)/A365463(n+1)`
-/

namespace A365464.P507546561879500248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A365463 (n + 1) : ℚ)

end

end A365464.P507546561879500248

/-! ## A365464.P12111624226737959608

`(n+1)/gcd(n+1, A356867(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365464.P12111624226737959608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A356867 (n + 1)) : ℚ)

end

end A365464.P12111624226737959608

/-! ## A365464.P12326892444158485449

`val(A000244(n+1), A000244(A365463(n+1)))`
-/

namespace A365464.P12326892444158485449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000244 (n + 1)).toNat (A000244 (A365463 (n + 1)).toNat).toNat

end

end A365464.P12326892444158485449

/-! ## A365464.P13094233366530533892

`A365390(A365465(n+1)%A062572(n+1))`
-/

namespace A365464.P13094233366530533892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365390 (Int.tmod (A365465 (n + 1)) (A062572 (n + 1))).toNat

end

end A365464.P13094233366530533892

/-! ## A365464.P7216228144062099786

`((n+1)/3^val(n+1, 3))^A353222(A096936(2*(n+1)))`
-/

namespace A365464.P7216228144062099786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)) ^ (A353222 (A096936 (2 * (n + 1))).toNat : ℤ)

end

end A365464.P7216228144062099786

/-!
# A365465: a(n) = A356867(n) / gcd(n, A356867(n)).

The programs for A365465, there is no canonical definition to state claims against.
-/

/-! ## A365465.P17190661730271545257

`A356867(n+1)/A365463(n+1)`
-/

namespace A365465.P17190661730271545257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356867 (n + 1) : ℚ) / (A365463 (n + 1) : ℚ)

end

end A365465.P17190661730271545257

/-! ## A365465.P12175479169448894308

`A356867(n+1)/gcd(n+1, A356867(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365465.P12175479169448894308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356867 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A356867 (n + 1)) : ℚ)

end

end A365465.P12175479169448894308

/-! ## A365465.P12268343483604675396

`A365464(n+1)+A365462(n+1)/A365463(n+1)`
-/

namespace A365465.P12268343483604675396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365464 (n + 1) : ℚ) + (A365462 (n + 1) : ℚ) / (A365463 (n + 1) : ℚ)

end

end A365465.P12268343483604675396

/-!
# A365466: Lexicographically earliest infinite sequence such that a(i) = a(j) => A336466(i) = A336466(j) and A336466(A163511(i)) = A336466(A163511(j)) for all i, j >= 1, where A336466 is fully multiplicative with a(p) = oddpart(p-1) for any prime p.

The programs for A365466, there is no canonical definition to state claims against.
-/

/-! ## A365466.P9599917230482812887

`A366792(floor(n/(xor(n, n+1)+1))%A350207(2*n+5))`
-/

namespace A365466.P9599917230482812887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366792 (Int.tmod ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ (A350207 (2 * n + 5))).toNat

end

end A365466.P9599917230482812887

/-! ## A365466.P9646122837943677065

`A003602(A016116(n)*A322250(n+1))`
-/

namespace A365466.P9646122837943677065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A016116 n * A322250 (n + 1)).toNat

end

end A365466.P9646122837943677065

/-! ## A365466.P3913635135327928566

`A003602(A322250(n+1)%A235379(3*n+5))`
-/

namespace A365466.P3913635135327928566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.tmod (A322250 (n + 1)) (A235379 (3 * n + 5))).toNat

end

end A365466.P3913635135327928566

/-! ## A365466.P8064726808460967437

`A003602(A101279(A014480(A101279(n+1))))`
-/

namespace A365466.P8064726808460967437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A101279 (A014480 (A101279 (n + 1)).toNat).toNat).toNat

end

end A365466.P8064726808460967437

/-!
# A365467: Lexicographically earliest infinite sequence such that a(i) = a(j) => A336467(i) = A336467(j) and A336467(A163511(i)) = A336467(A163511(j)) for all i, j >= 1, where A336467 is fully multiplicative with a(2) = 1 and a(p) = oddpart(p+1) for odd primes p.

The programs for A365467, there is no canonical definition to state claims against.
-/

/-! ## A365467.P4898103992757634683

`A243055(24*(n+1)*∏{p}[n+1, #])`
-/

namespace A365467.P4898103992757634683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (24 * ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)))

end

end A365467.P4898103992757634683

/-! ## A365467.P4078989580593337127

`∏{e}[A333220(3*(n+1)/2^val(n+1, 2)), #]`
-/

namespace A365467.P4078989580593337127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A365467.P4078989580593337127

/-! ## A365467.P12598461367056067006

`A126760(A093968(n+1))`
-/

namespace A365467.P12598461367056067006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A093968 (n + 1)).toNat

end

end A365467.P12598461367056067006

/-! ## A365467.P5505179162561233804

`A243055(A195824(n+1))`
-/

namespace A365467.P5505179162561233804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A195824 (n + 1)).toNat

end

end A365467.P5505179162561233804

/-! ## A365467.P6873059762273846512

`A389900(A354748(n+1))`
-/

namespace A365467.P6873059762273846512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389900 (A354748 (n + 1)).toNat

end

end A365467.P6873059762273846512

/-!
# A365468: Number of n X n nonnegative integer arrays with upper left entry 0, lower right entry n - 5, every value within 4 of its king-move distance from the upper left, and every value increasing by 0 or 1 with every step right, diagonally southeast, or down.

The programs for A365468, there is no canonical definition to state claims against.
-/

/-! ## A365468.P3559582938148425059

`A356235(∑[3*C(n, 4)])`
-/

namespace A365468.P3559582938148425059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356235 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365468.P3559582938148425059

/-! ## A365468.P17911462169280351122

`A192628(C(C(n, 4)+2, 3))`
-/

namespace A365468.P17911462169280351122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192628 (Nat.choose (Nat.choose n 4 + 2) 3)

end

end A365468.P17911462169280351122

/-!
# A365469: Number of n X n nonnegative integer arrays with upper left entry 0, lower right entry n - 6, every value within 5 of its king-move distance from the upper left, and every value increasing by 0 or 1 with every step right, diagonally southeast, or down.

The programs for A365469, there is no canonical definition to state claims against.
-/

/-! ## A365469.P101119694990450204

`A240490(C(n+2, 6))`
-/

namespace A365469.P101119694990450204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240490 (Nat.choose (n + 2) 6)

end

end A365469.P101119694990450204

/-! ## A365469.P358026446020468373

`A022268(2*n+1)^a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A365469.P358026446020468373
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 0, 0, 0] fun n a =>
  (A022268 (2 * n + 1) : ℝ) ^ (a (n - 1))

end

end A365469.P358026446020468373

/-! ## A365469.P1681444817194950076

`A240490(A012855(n))`
-/

namespace A365469.P1681444817194950076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240490 (A012855 n).toNat

end

end A365469.P1681444817194950076

/-!
# A365470: (2,6)-imperfect numbers.

The programs for A365470, there is no canonical definition to state claims against.
-/

/-! ## A365470.P12854917575143395269

`A074902(A047121(n))`
-/

namespace A365470.P12854917575143395269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074902 (A047121 n).toNat

end

end A365470.P12854917575143395269

/-! ## A365470.P757571608553046338

`A120229(A004655(n+1))`
-/

namespace A365470.P757571608553046338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120229 (A004655 (n + 1)).toNat

end

end A365470.P757571608553046338

/-!
# A365471: Numbers whose digits are not all primes.

The programs for A365471, the canonical program `A365471.P9978817196578574402` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365471 has offset 1).

The definition of A365471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365471.P16165886193908089752

`comp[A046034(n+1)]`
-/

namespace A365471.P16165886193908089752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A365471.P16165886193908089752

namespace A365471

/-- `comp[A046034(n+1)]` -/
def P16165886193908089752.Spec : Prop :=
  ∀ n, (P16165886193908089752.a n : ℤ) = A365471 (n + 1)

end A365471

/-! ## A365471.P9978817196578574402

`∪[A001745(n+1), A011531(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A365471

/-- `∪[A001745(n+1), A011531(n+1)]` -/
def P9978817196578574402.Spec : Prop :=
  ∀ n, (P9978817196578574402.a n : ℤ) = A365471 (n + 1)

theorem P9978817196578574402.correct : P9978817196578574402.Spec := by
  intro n
  simp only [A365471, Nat.add_sub_cancel]

end A365471

/-! ## A365471.P12236795957766048161

`∪[A001745(n+1), A284062(n+1)]`
-/

namespace A365471.P12236795957766048161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365471.P12236795957766048161

namespace A365471

/-- `∪[A001745(n+1), A284062(n+1)]` -/
def P12236795957766048161.Spec : Prop :=
  ∀ n, (P12236795957766048161.a n : ℤ) = A365471 (n + 1)

end A365471

/-! ## A365471.P15320903728443345755

`lt[0, A276729(n)]`
-/

namespace A365471.P15320903728443345755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A365471.P15320903728443345755

namespace A365471

/-- `lt[0, A276729(n)]` -/
def P15320903728443345755.Spec : Prop :=
  ∀ n, (P15320903728443345755.a n : ℤ) = A365471 (n + 1)

end A365471

/-! ## A365471.P15861097672480632841

`lt[A193238(n), A055642(n)]`
-/

namespace A365471.P15861097672480632841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A365471.P15861097672480632841

namespace A365471

/-- `lt[A193238(n), A055642(n)]` -/
def P15861097672480632841.Spec : Prop :=
  ∀ n, (P15861097672480632841.a n : ℤ) = A365471 (n + 1)

end A365471

/-! ## A365471.P5212013729420163252

`eq[1, gcd(A007918(n), A276729(n))]`
-/

namespace A365471.P5212013729420163252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007918 n) (A276729 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A365471.P5212013729420163252

namespace A365471

/-- `eq[1, gcd(A007918(n), A276729(n))]` -/
def P5212013729420163252.Spec : Prop :=
  ∀ n, (P5212013729420163252.a n : ℤ) = A365471 (n + 1)

end A365471

/-! ## A365471.P5338206883085139296

`∪[A084984(n+1), A365589(n+1)]`
-/

namespace A365471.P5338206883085139296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365471.P5338206883085139296

namespace A365471

/-- `∪[A084984(n+1), A365589(n+1)]` -/
def P5338206883085139296.Spec : Prop :=
  ∀ n, (P5338206883085139296.a n : ℤ) = A365471 (n + 1)

end A365471

/-! ## A365471.P10478346624969128534

`∪[A085558(n+1), A365589(n+1)]`
-/

namespace A365471.P10478346624969128534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365471.P10478346624969128534

namespace A365471

/-- `∪[A085558(n+1), A365589(n+1)]` -/
def P10478346624969128534.Spec : Prop :=
  ∀ n, (P10478346624969128534.a n : ℤ) = A365471 (n + 1)

end A365471

/-! ## A365471.P9128526513205304601

`∪[A216589(n+1), A329149(n+1)]`
-/

namespace A365471.P9128526513205304601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365471.P9128526513205304601

namespace A365471

/-- `∪[A216589(n+1), A329149(n+1)]` -/
def P9128526513205304601.Spec : Prop :=
  ∀ n, (P9128526513205304601.a n : ℤ) = A365471 (n + 1)

end A365471

/-!
# A365472: Numbers whose digits are either all primes or all nonprimes.

The programs for A365472, there is no canonical definition to state claims against.
-/

/-! ## A365472.P1813337942907212428

`∪[A046034(n+1), A084984(n+1)]`
-/

namespace A365472.P1813337942907212428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A365472.P1813337942907212428

/-! ## A365472.P122727996219439923

`lt[A193238(n)*A276729(n), 1]`
-/

namespace A365472.P122727996219439923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n * A276729 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A365472.P122727996219439923

/-! ## A365472.P10153656073311003136

`comp[A365589(n+1)]`
-/

namespace A365472.P10153656073311003136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A365472.P10153656073311003136

/-! ## A365472.P3050940221441150940

`lt[0, A228348(A167678(n))]`
-/

namespace A365472.P3050940221441150940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228348 (A167678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A365472.P3050940221441150940

/-!
# A365473: Odd semiprimes p*q such that A000120(p)*A000120(q) = A000120(p*q).

The programs for A365473, there is no canonical definition to state claims against.
-/

/-! ## A365473.P15956659602964540050

`∩[A365451(n+1), A391253(n+1)]`
-/

namespace A365473.P15956659602964540050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365473.P15956659602964540050

/-! ## A365473.P5601639451363394061

`∩[A235040(n), A391253(n+1)]`
-/

namespace A365473.P5601639451363394061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365473.P5601639451363394061

/-! ## A365473.P7358731714222790594

`filter[A235040(n), A374128(#)]`
-/

namespace A365473.P7358731714222790594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A365473.P7358731714222790594

/-! ## A365473.P4626983231166875355

`filter[A235040(n+1), A354927(#)]`
-/

namespace A365473.P4626983231166875355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A365473.P4626983231166875355

/-! ## A365473.P2343564254747129608

`∩[A001358(n+1), A235040(n)]`
-/

namespace A365473.P2343564254747129608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365473.P2343564254747129608

/-! ## A365473.P15235203379629728373

`∩[A001358(n+1), A365451(n+1)]`
-/

namespace A365473.P15235203379629728373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365473.P15235203379629728373

/-! ## A365473.P18208662525697310197

`filter[A235040(n), A064911(#)]`
-/

namespace A365473.P18208662525697310197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A365473.P18208662525697310197

/-! ## A365473.P4383949460884289105

`filter[A235040(n), A101040(#)]`
-/

namespace A365473.P4383949460884289105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A365473.P4383949460884289105

/-! ## A365473.P12185467132251523596

`filter[A235040(n), A280710(#)]`
-/

namespace A365473.P12185467132251523596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A365473.P12185467132251523596

/-! ## A365473.P998665466874476243

`filter[A235040(n), A340370(#)]`
-/

namespace A365473.P998665466874476243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A365473.P998665466874476243

/-! ## A365473.P986487304401572469

`filter[A235040(n), A353471(#)]`
-/

namespace A365473.P986487304401572469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A365473.P986487304401572469

/-! ## A365473.P4151067296598375332

`filter[A235040(n), A353480(#)]`
-/

namespace A365473.P4151067296598375332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A365473.P4151067296598375332

/-! ## A365473.P1693332060867218433

`filter[A235040(n), A353481(#)]`
-/

namespace A365473.P1693332060867218433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A365473.P1693332060867218433

/-! ## A365473.P17717239197079924637

`filter[A235040(n), A353676(#)]`
-/

namespace A365473.P17717239197079924637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A365473.P17717239197079924637

/-! ## A365473.P5704023721843403438

`filter[A235040(n), A353788(#)]`
-/

namespace A365473.P5704023721843403438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A365473.P5704023721843403438

/-! ## A365473.P11868437457220685824

`filter[A235040(n+1), A123927(#)]`
-/

namespace A365473.P11868437457220685824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A365473.P11868437457220685824

/-! ## A365473.P17867002611852706370

`filter[A365451(n+1), A064911(#)]`
-/

namespace A365473.P17867002611852706370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A365473.P17867002611852706370

/-! ## A365473.P16774277239997637729

`filter[A365451(n+1), A101040(#)]`
-/

namespace A365473.P16774277239997637729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A365473.P16774277239997637729

/-! ## A365473.P9819964619407907466

`filter[A235040(n+1), A353799(#)]`
-/

namespace A365473.P9819964619407907466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A365473.P9819964619407907466

/-! ## A365473.P7520317752883601461

`filter[A365451(n+1), A280710(#)]`
-/

namespace A365473.P7520317752883601461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A365473.P7520317752883601461

/-!
# A365474: a(n) = A365339(10^n).

The programs for A365474, there is no canonical definition to state claims against.
-/

/-! ## A365474.P17341386470443212885

`A365339(10^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365474.P17341386470443212885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365339 (10 ^ n)

end

end A365474.P17341386470443212885

/-! ## A365474.P11552633763003220694

`A365741(n)+A365739(n)`
-/

namespace A365474.P11552633763003220694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365741 n + A365739 n

end

end A365474.P11552633763003220694

/-!
# A365475: a(n) is the first odd prime p such that A000120((2^n-1)*p) = n * A000120(p).

The programs for A365475, there is no canonical definition to state claims against.
-/

/-! ## A365475.P3702775902384941660

`A000695(a(floor(n/2)))` with `a(0)=3`
-/

namespace A365475.P3702775902384941660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000695 (a ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A365475.P3702775902384941660

/-! ## A365475.P17855103509687159223

`A029939(a(floor(n/2)))` with `a(0)=3`
-/

namespace A365475.P17855103509687159223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A029939 (a ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A365475.P17855103509687159223

/-! ## A365475.P200270700364860502

`A160457(a(floor(n/2)))` with `a(0)=3`
-/

namespace A365475.P200270700364860502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A160457 (a ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A365475.P200270700364860502

/-! ## A365475.P2391150983469234734

`A045544(2^ceil(log2(n+1)))`
-/

namespace A365475.P2391150983469234734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045544 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat

end

end A365475.P2391150983469234734

/-! ## A365475.P15718440430700044033

`∑{p}[A000215(ceil(log2(n+1))), #]`
-/

namespace A365475.P15718440430700044033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000215 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A365475.P15718440430700044033

/-!
# A365478: In the Collatz problem, largest value in the trajectory of n in the 3x+1 function (denoted by T(x) in the literature, and defined as T(x) = (3x+1)/2 if x is odd, T(x) = x/2 if x is even), or -1 if the trajectory is divergent.

The programs for A365478, there is no canonical definition to state claims against.
-/

/-! ## A365478.P11018984756550438297

`A087251(A328314(2*(n+1)))/2`
-/

namespace A365478.P11018984756550438297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087251 (A328314 (2 * (n + 1))).toNat : ℚ) / 2

end

end A365478.P11018984756550438297

/-! ## A365478.P2426951896133975679

`A025586(2*(n+1))/2`
-/

namespace A365478.P2426951896133975679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025586 (2 * (n + 1)) : ℚ) / 2

end

end A365478.P2426951896133975679

/-! ## A365478.P1037333526026031205

`A014682(A025586(2*(n+1)))`
-/

namespace A365478.P1037333526026031205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A025586 (2 * (n + 1))).toNat

end

end A365478.P1037333526026031205

/-! ## A365478.P10490488719639634663

`A006370(A025586(2*n+2))`
-/

namespace A365478.P10490488719639634663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A025586 (2 * n + 2)).toNat

end

end A365478.P10490488719639634663

/-! ## A365478.P8557971610253094429

`A032742(A025586(n+2+n))`
-/

namespace A365478.P8557971610253094429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A025586 (n + 2 + n)).toNat

end

end A365478.P8557971610253094429

/-! ## A365478.P2660462909733736363

`A003602(A025586(2*(n+1))-1)`
-/

namespace A365478.P2660462909733736363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A025586 (2 * (n + 1)) - 1).toNat

end

end A365478.P2660462909733736363

/-! ## A365478.P1662495292002048492

`A145051(A025586(2*(n+1))-1)`
-/

namespace A365478.P1662495292002048492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (A025586 (2 * (n + 1)) - 1).toNat

end

end A365478.P1662495292002048492

/-! ## A365478.P7634836844711496614

`A176743(A025586(2*(n+1))-2)`
-/

namespace A365478.P7634836844711496614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176743 (A025586 (2 * (n + 1)) - 2).toNat

end

end A365478.P7634836844711496614

/-! ## A365478.P2596297325107730301

`A220237(A186701(2*(n+1)))/2`
-/

namespace A365478.P2596297325107730301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220237 (A186701 (2 * (n + 1))).toNat : ℚ) / 2

end

end A365478.P2596297325107730301

/-!
# A365479: The sum of unitary divisors of the smallest square divisible by n.

The programs for A365479, the canonical program `A365479.P18110182428755733630` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365479 has offset 1).

The definition of A365479 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A053143, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365479.P18110182428755733630

`A034448(A053143(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A365479

/-- `A034448(A053143(n+1))` -/
def P18110182428755733630.Spec : Prop :=
  ∀ n, P18110182428755733630.a n = A365479 (n + 1)

theorem P18110182428755733630.correct : P18110182428755733630.Spec := by
  intro n
  simp only [A365479, Nat.add_sub_cancel]

end A365479

/-! ## A365479.P6095701370464584458

`A034676(A019554(n+1))`
-/

namespace A365479.P6095701370464584458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (A019554 (n + 1)).toNat

end

end A365479.P6095701370464584458

namespace A365479

/-- `A034676(A019554(n+1))` -/
def P6095701370464584458.Spec : Prop :=
  ∀ n, P6095701370464584458.a n = A365479 (n + 1)

end A365479

/-! ## A365479.P11524169639363337948

`A034448(((n+1)/∏{p}[n+1, #^val(n+1, #²)])²)`
-/

namespace A365479.P11524169639363337948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ 2)).toNat

end

end A365479.P11524169639363337948

namespace A365479

/-- `A034448(((n+1)/∏{p}[n+1, #^val(n+1, #²)])²)` -/
def P11524169639363337948.Spec : Prop :=
  ∀ n, P11524169639363337948.a n = A365479 (n + 1)

end A365479

/-! ## A365479.P16207420270878011709

`A365403(A064549(n+1))`
-/

namespace A365479.P16207420270878011709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365403 (A064549 (n + 1)).toNat

end

end A365479.P16207420270878011709

namespace A365479

/-- `A365403(A064549(n+1))` -/
def P16207420270878011709.Spec : Prop :=
  ∀ n, P16207420270878011709.a n = A365479 (n + 1)

end A365479

/-! ## A365479.P11207235223198946673

`A034448(A019554(n+1)²)`
-/

namespace A365479.P11207235223198946673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A019554 (n + 1) ^ 2).toNat

end

end A365479.P11207235223198946673

namespace A365479

/-- `A034448(A019554(n+1)²)` -/
def P11207235223198946673.Spec : Prop :=
  ∀ n, P11207235223198946673.a n = A365479 (n + 1)

end A365479

/-! ## A365479.P16066914366899093317

`A034448((n+1)*A007913(n+1))`
-/

namespace A365479.P16066914366899093317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 ((n + 1 : ℤ) * A007913 (n + 1)).toNat

end

end A365479.P16066914366899093317

namespace A365479

/-- `A034448((n+1)*A007913(n+1))` -/
def P16066914366899093317.Spec : Prop :=
  ∀ n, P16066914366899093317.a n = A365479 (n + 1)

end A365479

/-! ## A365479.P11074265359139761218

`A365403((n+1)*A007913(n+1))`
-/

namespace A365479.P11074265359139761218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365403 ((n + 1 : ℤ) * A007913 (n + 1)).toNat

end

end A365479.P11074265359139761218

namespace A365479

/-- `A365403((n+1)*A007913(n+1))` -/
def P11074265359139761218.Spec : Prop :=
  ∀ n, P11074265359139761218.a n = A365479 (n + 1)

end A365479

/-! ## A365479.P15957656880927748399

`A034448((n+1)²/A008833(n+1))`
-/

namespace A365479.P15957656880927748399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A365479.P15957656880927748399

namespace A365479

/-- `A034448((n+1)²/A008833(n+1))` -/
def P15957656880927748399.Spec : Prop :=
  ∀ n, P15957656880927748399.a n = A365479 (n + 1)

end A365479

/-! ## A365479.P14958062486430239263

`A365403((n+1)²/A008833(n+1))`
-/

namespace A365479.P14958062486430239263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365403 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A365479.P14958062486430239263

namespace A365479

/-- `A365403((n+1)²/A008833(n+1))` -/
def P14958062486430239263.Spec : Prop :=
  ∀ n, P14958062486430239263.a n = A365479 (n + 1)

end A365479

/-! ## A365479.P5550056640748843417

`A034448(A019554(n+1)*A019554(n+1))`
-/

namespace A365479.P5550056640748843417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A019554 (n + 1) * A019554 (n + 1)).toNat

end

end A365479.P5550056640748843417

namespace A365479

/-- `A034448(A019554(n+1)*A019554(n+1))` -/
def P5550056640748843417.Spec : Prop :=
  ∀ n, P5550056640748843417.a n = A365479 (n + 1)

theorem P5550056640748843417.correct : P5550056640748843417.Spec := by
  intro n
  simp only [A365479, Nat.add_sub_cancel, A365479.P5550056640748843417.a, A365479.P18110182428755733630.a, A019554, A019554.P934973065694448032.a, A034448, A034448.P17017727775393200719.a, A053143, A053143.P2973590149006615306.a, A007913, A007913.P11359412940648999332.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A059479, A059479.P17464652159649958448.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A365479

/-!
# A365480: The sum of unitary divisors of the smallest exponentially odd number that is divisible by n.

The programs for A365480, the canonical program `A365480.P17885018013018802404` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365480 has offset 1).

The definition of A365480 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A356191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365480.P17885018013018802404

`A034448(A356191(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A365480

/-- `A034448(A356191(n+1))` -/
def P17885018013018802404.Spec : Prop :=
  ∀ n, P17885018013018802404.a n = A365480 (n + 1)

theorem P17885018013018802404.correct : P17885018013018802404.Spec := by
  intro n
  simp only [A365480, Nat.add_sub_cancel]

end A365480

/-! ## A365480.P4252023538979624580

`A048250(n+1)*A055210(n+1)`
-/

namespace A365480.P4252023538979624580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) * A055210 (n + 1)

end

end A365480.P4252023538979624580

namespace A365480

/-- `A048250(n+1)*A055210(n+1)` -/
def P4252023538979624580.Spec : Prop :=
  ∀ n, P4252023538979624580.a n = A365480 (n + 1)

end A365480

/-! ## A365480.P12407565174878333954

`A034448(∏{p}[n+1, #^val(n+1, #²)]²*∏{p}[n+1, #])`
-/

namespace A365480.P12407565174878333954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 * (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A365480.P12407565174878333954

namespace A365480

/-- `A034448(∏{p}[n+1, #^val(n+1, #²)]²*∏{p}[n+1, #])` -/
def P12407565174878333954.Spec : Prop :=
  ∀ n, P12407565174878333954.a n = A365480 (n + 1)

end A365480

/-! ## A365480.P1192320502576261587

`A034448((n+1)*A336643(n+1))`
-/

namespace A365480.P1192320502576261587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 ((n + 1 : ℤ) * A336643 (n + 1)).toNat

end

end A365480.P1192320502576261587

namespace A365480

/-- `A034448((n+1)*A336643(n+1))` -/
def P1192320502576261587.Spec : Prop :=
  ∀ n, P1192320502576261587.a n = A365480 (n + 1)

end A365480

/-! ## A365480.P16865648490264014624

`A034448((n+1)*∏{p}[n+1, #]/A007913(n+1))`
-/

namespace A365480.P16865648490264014624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A365480.P16865648490264014624

namespace A365480

/-- `A034448((n+1)*∏{p}[n+1, #]/A007913(n+1))` -/
def P16865648490264014624.Spec : Prop :=
  ∀ n, P16865648490264014624.a n = A365480 (n + 1)

theorem P16865648490264014624.correct : P16865648490264014624.Spec := by
  intro n
  simp only [A365480, Nat.add_sub_cancel, A365480.P16865648490264014624.f1, A365480.P16865648490264014624.a, A365480.P17885018013018802404.a, A007913, A007913.P11359412940648999332.a, A034448, A034448.P17017727775393200719.a, A356191, A356191.P16753681922814889908.a, A059479, A059479.P17464652159649958448.a, A064549, A064549.P18019400484953624932.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, A379812, A379812.P10955070158037639960.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A365480

/-! ## A365480.P2155079622830243334

`A117658(A355261(n+1)²)`
-/

namespace A365480.P2155079622830243334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117658 (A355261 (n + 1) ^ 2).toNat

end

end A365480.P2155079622830243334

namespace A365480

/-- `A117658(A355261(n+1)²)` -/
def P2155079622830243334.Spec : Prop :=
  ∀ n, P2155079622830243334.a n = A365480 (n + 1)

end A365480

/-! ## A365480.P9206652912134722875

`A117658((A000188(n+1)*A007947(n+1))²)`
-/

namespace A365480.P9206652912134722875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117658 ((A000188 (n + 1) * A007947 (n + 1)) ^ 2).toNat

end

end A365480.P9206652912134722875

namespace A365480

/-- `A117658((A000188(n+1)*A007947(n+1))²)` -/
def P9206652912134722875.Spec : Prop :=
  ∀ n, P9206652912134722875.a n = A365480 (n + 1)

end A365480

/-! ## A365480.P8212410487526140348

`A117658((A019554(n+1)*A336643(n+1))²)`
-/

namespace A365480.P8212410487526140348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117658 ((A019554 (n + 1) * A336643 (n + 1)) ^ 2).toNat

end

end A365480.P8212410487526140348

namespace A365480

/-- `A117658((A019554(n+1)*A336643(n+1))²)` -/
def P8212410487526140348.Spec : Prop :=
  ∀ n, P8212410487526140348.a n = A365480 (n + 1)

end A365480

/-! ## A365480.P14879233550267393567

`A117658((A064549(n+1)/A019554(n+1))²)`
-/

namespace A365480.P14879233550267393567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117658 (SequenceMachineLib.roundAway (((A064549 (n + 1) : ℚ) / (A019554 (n + 1) : ℚ)) ^ 2)).toNat

end

end A365480.P14879233550267393567

namespace A365480

/-- `A117658((A064549(n+1)/A019554(n+1))²)` -/
def P14879233550267393567.Spec : Prop :=
  ∀ n, P14879233550267393567.a n = A365480 (n + 1)

end A365480

/-!
# A365481: The sum of unitary divisors of the smallest number whose square is divisible by n.

The programs for A365481, the canonical program `A365481.P15972736645775399503` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365481 has offset 1).

The definition of A365481 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019554, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365481.P15972736645775399503

`A034448(A019554(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A365481

/-- `A034448(A019554(n+1))` -/
def P15972736645775399503.Spec : Prop :=
  ∀ n, P15972736645775399503.a n = A365481 (n + 1)

theorem P15972736645775399503.correct : P15972736645775399503.Spec := by
  intro n
  simp only [A365481, Nat.add_sub_cancel]

end A365481

/-! ## A365481.P1464399246312579557

`A034448((n+1)/∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A365481.P1464399246312579557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat

end

end A365481.P1464399246312579557

namespace A365481

/-- `A034448((n+1)/∏{p}[n+1, #^val(n+1, #²)])` -/
def P1464399246312579557.Spec : Prop :=
  ∀ n, P1464399246312579557.a n = A365481 (n + 1)

end A365481

/-! ## A365481.P16561644061187679999

`A034448((n+1)/A000188(n+1))`
-/

namespace A365481.P16561644061187679999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat

end

end A365481.P16561644061187679999

namespace A365481

/-- `A034448((n+1)/A000188(n+1))` -/
def P16561644061187679999.Spec : Prop :=
  ∀ n, P16561644061187679999.a n = A365481 (n + 1)

end A365481

/-! ## A365481.P5627080599375659658

`A392087(n+1)/A392085(n+1)`
-/

namespace A365481.P5627080599375659658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392087 (n + 1) : ℚ) / (A392085 (n + 1) : ℚ)

end

end A365481.P5627080599375659658

namespace A365481

/-- `A392087(n+1)/A392085(n+1)` -/
def P5627080599375659658.Spec : Prop :=
  ∀ n, P5627080599375659658.a n = (A365481 (n + 1) : ℚ)

end A365481

/-! ## A365481.P3229460185825490262

`∑{d}[n+1, A008966(#)*A071975((n+1)/#)]`
-/

namespace A365481.P3229460185825490262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A071975 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365481.P3229460185825490262

namespace A365481

/-- `∑{d}[n+1, A008966(#)*A071975((n+1)/#)]` -/
def P3229460185825490262.Spec : Prop :=
  ∀ n, P3229460185825490262.a n = A365481 (n + 1)

end A365481

/-! ## A365481.P7580772775641753837

`A034448(∏{p}[n+1, #^val(n+1, #²)]*A007913(n+1))`
-/

namespace A365481.P7580772775641753837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) * A007913 (n + 1)).toNat

end

end A365481.P7580772775641753837

namespace A365481

/-- `A034448(∏{p}[n+1, #^val(n+1, #²)]*A007913(n+1))` -/
def P7580772775641753837.Spec : Prop :=
  ∀ n, P7580772775641753837.a n = A365481 (n + 1)

end A365481

/-! ## A365481.P1322408361894489154

`A390666(A355264(n+1))`
-/

namespace A365481.P1322408361894489154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390666 (A355264 (n + 1)).toNat

end

end A365481.P1322408361894489154

namespace A365481

/-- `A390666(A355264(n+1))` -/
def P1322408361894489154.Spec : Prop :=
  ∀ n, P1322408361894489154.a n = A365481 (n + 1)

end A365481

/-! ## A365481.P5247517104587505433

`A390666((n+1)*A000188(n+1))`
-/

namespace A365481.P5247517104587505433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390666 ((n + 1 : ℤ) * A000188 (n + 1)).toNat

end

end A365481.P5247517104587505433

namespace A365481

/-- `A390666((n+1)*A000188(n+1))` -/
def P5247517104587505433.Spec : Prop :=
  ∀ n, P5247517104587505433.a n = A365481 (n + 1)

end A365481

/-! ## A365481.P8516881001761012128

`A305461(A053143(n+1))`
-/

namespace A365481.P8516881001761012128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 (A053143 (n + 1)).toNat

end

end A365481.P8516881001761012128

namespace A365481

/-- `A305461(A053143(n+1))` -/
def P8516881001761012128.Spec : Prop :=
  ∀ n, P8516881001761012128.a n = A365481 (n + 1)

end A365481

/-! ## A365481.P4070696897941423486

`A305461(A064549(n+1))`
-/

namespace A365481.P4070696897941423486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 (A064549 (n + 1)).toNat

end

end A365481.P4070696897941423486

namespace A365481

/-- `A305461(A064549(n+1))` -/
def P4070696897941423486.Spec : Prop :=
  ∀ n, P4070696897941423486.a n = A365481 (n + 1)

end A365481

/-! ## A365481.P7925933489761133760

`A365404((n+1)*A007947(n+1))`
-/

namespace A365481.P7925933489761133760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365404 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A365481.P7925933489761133760

namespace A365481

/-- `A365404((n+1)*A007947(n+1))` -/
def P7925933489761133760.Spec : Prop :=
  ∀ n, P7925933489761133760.a n = A365481 (n + 1)

end A365481

/-! ## A365481.P6486673426059320289

`A390666((n+1)*A019554(n+1))`
-/

namespace A365481.P6486673426059320289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390666 ((n + 1 : ℤ) * A019554 (n + 1)).toNat

end

end A365481.P6486673426059320289

namespace A365481

/-- `A390666((n+1)*A019554(n+1))` -/
def P6486673426059320289.Spec : Prop :=
  ∀ n, P6486673426059320289.a n = A365481 (n + 1)

end A365481

/-! ## A365481.P2813368586976266939

`A390666((n+1)*A019555(n+1))`
-/

namespace A365481.P2813368586976266939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390666 ((n + 1 : ℤ) * A019555 (n + 1)).toNat

end

end A365481.P2813368586976266939

namespace A365481

/-- `A390666((n+1)*A019555(n+1))` -/
def P2813368586976266939.Spec : Prop :=
  ∀ n, P2813368586976266939.a n = A365481 (n + 1)

end A365481

/-! ## A365481.P9124646546242990104

`A365404((n+1)²/A008833(n+1))`
-/

namespace A365481.P9124646546242990104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365404 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A365481.P9124646546242990104

namespace A365481

/-- `A365404((n+1)²/A008833(n+1))` -/
def P9124646546242990104.Spec : Prop :=
  ∀ n, P9124646546242990104.a n = A365481 (n + 1)

end A365481

/-! ## A365481.P8228922503581433217

`A034448(A019555((n+1)*A019555(n+1)))`
-/

namespace A365481.P8228922503581433217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A019555 ((n + 1 : ℤ) * A019555 (n + 1)).toNat).toNat

end

end A365481.P8228922503581433217

namespace A365481

/-- `A034448(A019555((n+1)*A019555(n+1)))` -/
def P8228922503581433217.Spec : Prop :=
  ∀ n, P8228922503581433217.a n = A365481 (n + 1)

end A365481

/-!
# A365485: a(n) = A365399(10^n).

The programs for A365485, there is no canonical definition to state claims against.
-/

/-! ## A365485.P16439411181850470264

`A365399(10^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365485.P16439411181850470264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365399 (10 ^ n)

end

end A365485.P16439411181850470264

/-!
# A365486: a(n) is equal to the number of black 1 X 1 X 1 cubes in a certain coloring of the n X n X n cube (see comments for precise definition).

The programs for A365486, there is no canonical definition to state claims against.
-/

/-! ## A365486.P15536496703376534342

`A130665(n)*A185217(A319030(n+2))`
-/

namespace A365486.P15536496703376534342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130665 n * A185217 (A319030 (n + 2)).toNat

end

end A365486.P15536496703376534342

/-! ## A365486.P16753339380144474940

`A073802(A073118(3*n+5))*A236305(n)`
-/

namespace A365486.P16753339380144474940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073802 (A073118 (3 * n + 5)).toNat * A236305 n

end

end A365486.P16753339380144474940

/-!
# A365487: The number of divisors of the largest cube dividing n.

The programs for A365487, the canonical program `A365487.P17055502377782531562` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365487 has offset 1).

The definition of A365487 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008834, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365487.P17055502377782531562

`A000005(A008834(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A365487

/-- `A000005(A008834(n+1))` -/
def P17055502377782531562.Spec : Prop :=
  ∀ n, P17055502377782531562.a n = A365487 (n + 1)

theorem P17055502377782531562.correct : P17055502377782531562.Spec := by
  intro n
  simp only [A365487, Nat.add_sub_cancel]

end A365487

/-! ## A365487.P8105429988380542903

`∏{e}[n+1, A016777(floor(#/3))]`
-/

namespace A365487.P8105429988380542903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A016777 ⌊(Nat.factorization (f1 n) p : ℚ) / 3⌋.toNat

end

end A365487.P8105429988380542903

namespace A365487

/-- `∏{e}[n+1, A016777(floor(#/3))]` -/
def P8105429988380542903.Spec : Prop :=
  ∀ n, P8105429988380542903.a n = A365487 (n + 1)

end A365487

/-! ## A365487.P5704953505359244911

`A365489(A062378(n+1))`
-/

namespace A365487.P5704953505359244911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365489 (A062378 (n + 1)).toNat

end

end A365487.P5704953505359244911

namespace A365487

/-- `A365489(A062378(n+1))` -/
def P5704953505359244911.Spec : Prop :=
  ∀ n, P5704953505359244911.a n = A365487 (n + 1)

end A365487

/-! ## A365487.P17415399449863363922

`A000005(A053150(n+1)^3)`
-/

namespace A365487.P17415399449863363922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053150 (n + 1) ^ 3).toNat

end

end A365487.P17415399449863363922

namespace A365487

/-- `A000005(A053150(n+1)^3)` -/
def P17415399449863363922.Spec : Prop :=
  ∀ n, P17415399449863363922.a n = A365487 (n + 1)

end A365487

/-! ## A365487.P2627916057954130524

`A000005((n+1)/A050985(n+1))`
-/

namespace A365487.P2627916057954130524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A050985 (n + 1) : ℚ))).toNat

end

end A365487.P2627916057954130524

namespace A365487

/-- `A000005((n+1)/A050985(n+1))` -/
def P2627916057954130524.Spec : Prop :=
  ∀ n, P2627916057954130524.a n = A365487 (n + 1)

end A365487

/-! ## A365487.P18240965576297153895

`A325282(A063169(∏{e}[n+1, floor(#/3)+1]))`
-/

namespace A365487.P18240965576297153895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325282 (A063169 (∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 3⌋ + 1)).toNat).toNat

end

end A365487.P18240965576297153895

namespace A365487

/-- `A325282(A063169(∏{e}[n+1, floor(#/3)+1]))` -/
def P18240965576297153895.Spec : Prop :=
  ∀ n, P18240965576297153895.a n = A365487 (n + 1)

end A365487

/-! ## A365487.P1299304492279298341

`A259344(A006218(∏{e}[n+1, floor(#/3)+1]²))`
-/

namespace A365487.P1299304492279298341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259344 (A006218 ((∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 3⌋ + 1)) ^ 2).toNat).toNat

end

end A365487.P1299304492279298341

namespace A365487

/-- `A259344(A006218(∏{e}[n+1, floor(#/3)+1]²))` -/
def P1299304492279298341.Spec : Prop :=
  ∀ n, P1299304492279298341.a n = A365487 (n + 1)

end A365487

/-! ## A365487.P9558161505275750215

`A318099(A048160(∏{e}[n+1, floor(#/3)+1]!))`
-/

namespace A365487.P9558161505275750215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318099 (A048160 (Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 3⌋ + 1)).toNat)).toNat

end

end A365487.P9558161505275750215

namespace A365487

/-- `A318099(A048160(∏{e}[n+1, floor(#/3)+1]!))` -/
def P9558161505275750215.Spec : Prop :=
  ∀ n, P9558161505275750215.a n = A365487 (n + 1)

end A365487

/-! ## A365487.P17890707468023099686

`A001222(A008834(n+1)*A049569(n+1))`
-/

namespace A365487.P17890707468023099686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008834 (n + 1) * A049569 (n + 1)).toNat

end

end A365487.P17890707468023099686

namespace A365487

/-- `A001222(A008834(n+1)*A049569(n+1))` -/
def P17890707468023099686.Spec : Prop :=
  ∀ n, P17890707468023099686.a n = A365487 (n + 1)

end A365487

/-! ## A365487.P4618387786603551396

`4^A061209(∏{e}[n+1, floor(#/3)+1])`
-/

namespace A365487.P4618387786603551396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A061209 (∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 3⌋ + 1)).toNat : ℤ)

end

end A365487.P4618387786603551396

namespace A365487

/-- `4^A061209(∏{e}[n+1, floor(#/3)+1])` -/
def P4618387786603551396.Spec : Prop :=
  ∀ n, P4618387786603551396.a n = (A365487 (n + 1) : ℚ)

end A365487

/-!
# A365488: The number of divisors of the smallest number whose cube is divisible by n.

The programs for A365488, the canonical program `A365488.P12466680957682488056` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365488 has offset 1).

The definition of A365488 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019555, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365488.P12466680957682488056

`A000005(A019555(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A365488

/-- `A000005(A019555(n+1))` -/
def P12466680957682488056.Spec : Prop :=
  ∀ n, P12466680957682488056.a n = A365488 (n + 1)

theorem P12466680957682488056.correct : P12466680957682488056.Spec := by
  intro n
  simp only [A365488, Nat.add_sub_cancel]

end A365488

/-! ## A365488.P8985582822351527710

`∏{e}[n+1, ceil(#/3)+1]`
-/

namespace A365488.P8985582822351527710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (⌈(Nat.factorization (f1 n) p : ℚ) / 3⌉ + 1)

end

end A365488.P8985582822351527710

namespace A365488

/-- `∏{e}[n+1, ceil(#/3)+1]` -/
def P8985582822351527710.Spec : Prop :=
  ∀ n, P8985582822351527710.a n = A365488 (n + 1)

end A365488

/-! ## A365488.P7464939177333509698

`A000005(A053149(n+1)^(1/3))`
-/

namespace A365488.P7464939177333509698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A053149 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

end

end A365488.P7464939177333509698

namespace A365488

/-- `A000005(A053149(n+1)^(1/3))` -/
def P7464939177333509698.Spec : Prop :=
  ∀ n, P7464939177333509698.a n = A365488 (n + 1)

end A365488

/-! ## A365488.P984135317257442945

`A000005(A254733(n+1)-(n+1))`
-/

namespace A365488.P984135317257442945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A254733 (n + 1) - (n + 1 : ℤ)).toNat

end

end A365488.P984135317257442945

namespace A365488

/-- `A000005(A254733(n+1)-(n+1))` -/
def P984135317257442945.Spec : Prop :=
  ∀ n, P984135317257442945.a n = A365488 (n + 1)

theorem P984135317257442945.correct : P984135317257442945.Spec := by
  intro n
  simp only [A365488, Nat.add_sub_cancel, A365488.P984135317257442945.a, A365488.P12466680957682488056.a, A000005, A000005.P16091521709108585461.a, A019555, A019555.P8996553868709767269.a, A254733, A254733.P14747783543240587922.a, A000189, A000189.P11210685475351648118.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A053149, A053149.P4125189005957149122.a, A048798, A048798.P11871248388947828360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A365488

/-! ## A365488.P3310858491483341153

`A000005((n+1)/A000189(n+1))`
-/

namespace A365488.P3310858491483341153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000189 (n + 1) : ℚ))).toNat

end

end A365488.P3310858491483341153

namespace A365488

/-- `A000005((n+1)/A000189(n+1))` -/
def P3310858491483341153.Spec : Prop :=
  ∀ n, P3310858491483341153.a n = A365488 (n + 1)

end A365488

/-! ## A365488.P2774781743667275064

`∑{d}[n+1, A307424(#)*A365551((n+1)/#)]`
-/

namespace A365488.P2774781743667275064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307424 d * A365551 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365488.P2774781743667275064

namespace A365488

/-- `∑{d}[n+1, A307424(#)*A365551((n+1)/#)]` -/
def P2774781743667275064.Spec : Prop :=
  ∀ n, P2774781743667275064.a n = A365488 (n + 1)

end A365488

/-! ## A365488.P8707241136354486336

`and(A381707(n+1), A386470(n+1))`
-/

namespace A365488.P8707241136354486336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A381707 (n + 1)) (A386470 (n + 1))

end

end A365488.P8707241136354486336

namespace A365488

/-- `and(A381707(n+1), A386470(n+1))` -/
def P8707241136354486336.Spec : Prop :=
  ∀ n, P8707241136354486336.a n = A365488 (n + 1)

end A365488

/-! ## A365488.P17431649992279502528

`and(A086827(n+1), A386470(n+1))`
-/

namespace A365488.P17431649992279502528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A386470 (n + 1))

end

end A365488.P17431649992279502528

namespace A365488

/-- `and(A086827(n+1), A386470(n+1))` -/
def P17431649992279502528.Spec : Prop :=
  ∀ n, P17431649992279502528.a n = A365488 (n + 1)

end A365488

/-! ## A365488.P751843239948433765

`A392451(A011262(n+1))`
-/

namespace A365488.P751843239948433765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392451 (A011262 (n + 1)).toNat

end

end A365488.P751843239948433765

namespace A365488

/-- `A392451(A011262(n+1))` -/
def P751843239948433765.Spec : Prop :=
  ∀ n, P751843239948433765.a n = A365488 (n + 1)

end A365488

/-! ## A365488.P16445006651852597470

`A365491(A064549(n+1))`
-/

namespace A365488.P16445006651852597470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365491 (A064549 (n + 1)).toNat

end

end A365488.P16445006651852597470

namespace A365488

/-- `A365491(A064549(n+1))` -/
def P16445006651852597470.Spec : Prop :=
  ∀ n, P16445006651852597470.a n = A365488 (n + 1)

end A365488

/-! ## A365488.P5492784704703658637

`A365491(A285109(n+1))`
-/

namespace A365488.P5492784704703658637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365491 (A285109 (n + 1)).toNat

end

end A365488.P5492784704703658637

namespace A365488

/-- `A365491(A285109(n+1))` -/
def P5492784704703658637.Spec : Prop :=
  ∀ n, P5492784704703658637.a n = A365488 (n + 1)

end A365488

/-! ## A365488.P2788989877198122831

`A046951(A019555(n+1)²)`
-/

namespace A365488.P2788989877198122831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A019555 (n + 1) ^ 2).toNat

end

end A365488.P2788989877198122831

namespace A365488

/-- `A046951(A019555(n+1)²)` -/
def P2788989877198122831.Spec : Prop :=
  ∀ n, P2788989877198122831.a n = A365488 (n + 1)

end A365488

/-! ## A365488.P11481695329085773556

`A049419(A019555(n+1)²)`
-/

namespace A365488.P11481695329085773556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A019555 (n + 1) ^ 2).toNat

end

end A365488.P11481695329085773556

namespace A365488

/-- `A049419(A019555(n+1)²)` -/
def P11481695329085773556.Spec : Prop :=
  ∀ n, P11481695329085773556.a n = A365488 (n + 1)

end A365488

/-! ## A365488.P7684647170667511254

`A293442(A015053((n+1)²))`
-/

namespace A365488.P7684647170667511254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A015053 ((n + 1) ^ 2)).toNat

end

end A365488.P7684647170667511254

namespace A365488

/-- `A293442(A015053((n+1)²))` -/
def P7684647170667511254.Spec : Prop :=
  ∀ n, P7684647170667511254.a n = A365488 (n + 1)

end A365488

/-! ## A365488.P8240966029966272859

`A322483(A019555((n+1)²))`
-/

namespace A365488.P8240966029966272859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A019555 ((n + 1) ^ 2)).toNat

end

end A365488.P8240966029966272859

namespace A365488

/-- `A322483(A019555((n+1)²))` -/
def P8240966029966272859.Spec : Prop :=
  ∀ n, P8240966029966272859.a n = A365488 (n + 1)

end A365488

/-! ## A365488.P2776057704014686258

`A365171(A019555(n+1)²)`
-/

namespace A365488.P2776057704014686258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 (A019555 (n + 1) ^ 2).toNat

end

end A365488.P2776057704014686258

namespace A365488

/-- `A365171(A019555(n+1)²)` -/
def P2776057704014686258.Spec : Prop :=
  ∀ n, P2776057704014686258.a n = A365488 (n + 1)

end A365488

/-! ## A365488.P9112104403801794662

`A369310(A019555(n+1)²)`
-/

namespace A365488.P9112104403801794662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369310 (A019555 (n + 1) ^ 2).toNat

end

end A365488.P9112104403801794662

namespace A365488

/-- `A369310(A019555(n+1)²)` -/
def P9112104403801794662.Spec : Prop :=
  ∀ n, P9112104403801794662.a n = A365488 (n + 1)

end A365488

/-! ## A365488.P13246328719834690319

`A386470(A386469(n+1)²)`
-/

namespace A365488.P13246328719834690319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386470 (A386469 (n + 1) ^ 2).toNat

end

end A365488.P13246328719834690319

namespace A365488

/-- `A386470(A386469(n+1)²)` -/
def P13246328719834690319.Spec : Prop :=
  ∀ n, P13246328719834690319.a n = A365488 (n + 1)

end A365488

/-! ## A365488.P9947068115982236377

`A365491((n+1)*A053166(n+1))`
-/

namespace A365488.P9947068115982236377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365491 ((n + 1 : ℤ) * A053166 (n + 1)).toNat

end

end A365488.P9947068115982236377

namespace A365488

/-- `A365491((n+1)*A053166(n+1))` -/
def P9947068115982236377.Spec : Prop :=
  ∀ n, P9947068115982236377.a n = A365488 (n + 1)

end A365488

/-! ## A365488.P6886454947271942498

`A392451(A372379(A353897(n+1))²)`
-/

namespace A365488.P6886454947271942498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392451 (A372379 (A353897 (n + 1)).toNat ^ 2).toNat

end

end A365488.P6886454947271942498

namespace A365488

/-- `A392451(A372379(A353897(n+1))²)` -/
def P6886454947271942498.Spec : Prop :=
  ∀ n, P6886454947271942498.a n = A365488 (n + 1)

end A365488

/-!
# A365489: The number of divisors of the smallest cube divisible by n.

The programs for A365489, the canonical program `A365489.P10175361733768043480` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365489 has offset 1).

The definition of A365489 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365489.P10175361733768043480

`A000005(A053149(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A365489

/-- `A000005(A053149(n+1))` -/
def P10175361733768043480.Spec : Prop :=
  ∀ n, P10175361733768043480.a n = A365489 (n + 1)

theorem P10175361733768043480.correct : P10175361733768043480.Spec := by
  intro n
  simp only [A365489, Nat.add_sub_cancel]

end A365489

/-! ## A365489.P17326269885697847384

`A048785(A019555(n+1))`
-/

namespace A365489.P17326269885697847384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A019555 (n + 1)).toNat

end

end A365489.P17326269885697847384

namespace A365489

/-- `A048785(A019555(n+1))` -/
def P17326269885697847384.Spec : Prop :=
  ∀ n, P17326269885697847384.a n = A365489 (n + 1)

end A365489

/-! ## A365489.P12037907111945466272

`A000005(A019555(n+1)^3)`
-/

namespace A365489.P12037907111945466272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019555 (n + 1) ^ 3).toNat

end

end A365489.P12037907111945466272

namespace A365489

/-- `A000005(A019555(n+1)^3)` -/
def P12037907111945466272.Spec : Prop :=
  ∀ n, P12037907111945466272.a n = A365489 (n + 1)

end A365489

/-! ## A365489.P9940363687169991449

`A000005((n+1)*A048798(n+1))`
-/

namespace A365489.P9940363687169991449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * A048798 (n + 1)).toNat

end

end A365489.P9940363687169991449

namespace A365489

/-- `A000005((n+1)*A048798(n+1))` -/
def P9940363687169991449.Spec : Prop :=
  ∀ n, P9940363687169991449.a n = A365489 (n + 1)

end A365489

/-! ## A365489.P18068099736909600562

`A237708(A369719(n+1))`
-/

namespace A365489.P18068099736909600562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237708 (A369719 (n + 1)).toNat

end

end A365489.P18068099736909600562

namespace A365489

/-- `A237708(A369719(n+1))` -/
def P18068099736909600562.Spec : Prop :=
  ∀ n, P18068099736909600562.a n = A365489 (n + 1)

end A365489

/-!
# A365490: The number of divisors of the largest 4th power dividing n.

The programs for A365490, the canonical program `A365490.P10530064324092144185` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365490 has offset 1).

The definition of A365490 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365490.P10530064324092144185

`A000005(A008835(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A365490

/-- `A000005(A008835(n+1))` -/
def P10530064324092144185.Spec : Prop :=
  ∀ n, P10530064324092144185.a n = A365490 (n + 1)

theorem P10530064324092144185.correct : P10530064324092144185.Spec := by
  intro n
  simp only [A365490, Nat.add_sub_cancel]

end A365490

/-! ## A365490.P4534657907193248430

`∏{e}[n+1, or(3, #)-2]`
-/

namespace A365490.P4534657907193248430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((Nat.lor 3 (Nat.factorization (f1 n) p) : ℤ) - 2)

end

end A365490.P4534657907193248430

namespace A365490

/-- `∏{e}[n+1, or(3, #)-2]` -/
def P4534657907193248430.Spec : Prop :=
  ∀ n, P4534657907193248430.a n = A365490 (n + 1)

end A365490

/-! ## A365490.P6744523553858631311

`A365492(A062379(n+1))`
-/

namespace A365490.P6744523553858631311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365492 (A062379 (n + 1)).toNat

end

end A365490.P6744523553858631311

namespace A365490

/-- `A365492(A062379(n+1))` -/
def P6744523553858631311.Spec : Prop :=
  ∀ n, P6744523553858631311.a n = A365490 (n + 1)

end A365490

/-! ## A365490.P3398251059411394140

`A000005((n+1)/A053165(n+1))`
-/

namespace A365490.P3398251059411394140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A053165 (n + 1) : ℚ))).toNat

end

end A365490.P3398251059411394140

namespace A365490

/-- `A000005((n+1)/A053165(n+1))` -/
def P3398251059411394140.Spec : Prop :=
  ∀ n, P3398251059411394140.a n = A365490 (n + 1)

end A365490

/-! ## A365490.P17900174176479359481

`gcd(5, (2^∑{e}[n+1, val(#!, 2)])!)`
-/

namespace A365490.P17900174176479359481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (Nat.factorial (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2)))

end

end A365490.P17900174176479359481

namespace A365490

/-- `gcd(5, (2^∑{e}[n+1, val(#!, 2)])!)` -/
def P17900174176479359481.Spec : Prop :=
  ∀ n, (P17900174176479359481.a n : ℤ) = A365490 (n + 1)

end A365490

/-! ## A365490.P1095630552796829605

`A046951(A008835(n+1)²)`
-/

namespace A365490.P1095630552796829605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A008835 (n + 1) ^ 2).toNat

end

end A365490.P1095630552796829605

namespace A365490

/-- `A046951(A008835(n+1)²)` -/
def P1095630552796829605.Spec : Prop :=
  ∀ n, P1095630552796829605.a n = A365490 (n + 1)

end A365490

/-! ## A365490.P13426361120464175587

`A365171(A008835(n+1)²)`
-/

namespace A365490.P13426361120464175587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 (A008835 (n + 1) ^ 2).toNat

end

end A365490.P13426361120464175587

namespace A365490

/-- `A365171(A008835(n+1)²)` -/
def P13426361120464175587.Spec : Prop :=
  ∀ n, P13426361120464175587.a n = A365490 (n + 1)

end A365490

/-! ## A365490.P3089265076826749067

`A061200(gcd(A032441(n), A061200(n+1)))`
-/

namespace A365490.P3089265076826749067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061200 (Int.gcd (A032441 n) (A061200 (n + 1)))

end

end A365490.P3089265076826749067

namespace A365490

/-- `A061200(gcd(A032441(n), A061200(n+1)))` -/
def P3089265076826749067.Spec : Prop :=
  ∀ n, P3089265076826749067.a n = A365490 (n + 1)

end A365490

/-! ## A365490.P2292560462563095024

`and(A305650(n+1), A365331(n+1))`
-/

namespace A365490.P2292560462563095024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A305650 (n + 1)) (A365331 (n + 1))

end

end A365490.P2292560462563095024

namespace A365490

/-- `and(A305650(n+1), A365331(n+1))` -/
def P2292560462563095024.Spec : Prop :=
  ∀ n, P2292560462563095024.a n = A365490 (n + 1)

end A365490

/-! ## A365490.P8666473537686117400

`and(A077846(n), A365331(n+1))`
-/

namespace A365490.P8666473537686117400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077846 n) (A365331 (n + 1))

end

end A365490.P8666473537686117400

namespace A365490

/-- `and(A077846(n), A365331(n+1))` -/
def P8666473537686117400.Spec : Prop :=
  ∀ n, P8666473537686117400.a n = A365490 (n + 1)

end A365490

/-! ## A365490.P3893590084940501396

`and(A097336(n), A365331(n+1))`
-/

namespace A365490.P3893590084940501396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097336 n) (A365331 (n + 1))

end

end A365490.P3893590084940501396

namespace A365490

/-- `and(A097336(n), A365331(n+1))` -/
def P3893590084940501396.Spec : Prop :=
  ∀ n, P3893590084940501396.a n = A365490 (n + 1)

end A365490

/-! ## A365490.P5782020189631486243

`and(A297590(n), A365331(n+1))`
-/

namespace A365490.P5782020189631486243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A297590 n) (A365331 (n + 1))

end

end A365490.P5782020189631486243

namespace A365490

/-- `and(A297590(n), A365331(n+1))` -/
def P5782020189631486243.Spec : Prop :=
  ∀ n, P5782020189631486243.a n = A365490 (n + 1)

end A365490

/-! ## A365490.P5347306838515799826

`and(A091103(n), A365331(n+1))`
-/

namespace A365490.P5347306838515799826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091103 n) (A365331 (n + 1))

end

end A365490.P5347306838515799826

namespace A365490

/-- `and(A091103(n), A365331(n+1))` -/
def P5347306838515799826.Spec : Prop :=
  ∀ n, P5347306838515799826.a n = A365490 (n + 1)

end A365490

/-! ## A365490.P17377657119355095603

`and(A126645(n+1), A365331(n+1))`
-/

namespace A365490.P17377657119355095603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126645 (n + 1)) (A365331 (n + 1))

end

end A365490.P17377657119355095603

namespace A365490

/-- `and(A126645(n+1), A365331(n+1))` -/
def P17377657119355095603.Spec : Prop :=
  ∀ n, P17377657119355095603.a n = A365490 (n + 1)

end A365490

/-! ## A365490.P9984316658459233196

`and(A147834(n), A365331(n+1))`
-/

namespace A365490.P9984316658459233196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147834 n) (A365331 (n + 1))

end

end A365490.P9984316658459233196

namespace A365490

/-- `and(A147834(n), A365331(n+1))` -/
def P9984316658459233196.Spec : Prop :=
  ∀ n, P9984316658459233196.a n = A365490 (n + 1)

end A365490

/-!
# A365491: The number of divisors of the smallest number whose 4th power is divisible by n.

The programs for A365491, the canonical program `A365491.P1731806866241579839` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365491 has offset 1).

The definition of A365491 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053166, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365491.P1731806866241579839

`A000005(A053166(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A365491

/-- `A000005(A053166(n+1))` -/
def P1731806866241579839.Spec : Prop :=
  ∀ n, P1731806866241579839.a n = A365491 (n + 1)

theorem P1731806866241579839.correct : P1731806866241579839.Spec := by
  intro n
  simp only [A365491, Nat.add_sub_cancel]

end A365491

/-! ## A365491.P13163770663524853990

`A322483(A019554(n+1))`
-/

namespace A365491.P13163770663524853990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A019554 (n + 1)).toNat

end

end A365491.P13163770663524853990

namespace A365491

/-- `A322483(A019554(n+1))` -/
def P13163770663524853990.Spec : Prop :=
  ∀ n, P13163770663524853990.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P4224424281618628229

`∏{e}[n+1, ceil(#/4)+1]`
-/

namespace A365491.P4224424281618628229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (⌈(Nat.factorization (f1 n) p : ℚ) / 4⌉ + 1)

end

end A365491.P4224424281618628229

namespace A365491

/-- `∏{e}[n+1, ceil(#/4)+1]` -/
def P4224424281618628229.Spec : Prop :=
  ∀ n, P4224424281618628229.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P9136115202409078127

`A322483((n+1)/A000188(n+1))`
-/

namespace A365491.P9136115202409078127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat

end

end A365491.P9136115202409078127

namespace A365491

/-- `A322483((n+1)/A000188(n+1))` -/
def P9136115202409078127.Spec : Prop :=
  ∀ n, P9136115202409078127.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P5664368779168191317

`A365488(A356194(A019555(A356194(n+1))))`
-/

namespace A365491.P5664368779168191317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365488 (A356194 (A019555 (A356194 (n + 1)).toNat).toNat).toNat

end

end A365491.P5664368779168191317

namespace A365491

/-- `A365488(A356194(A019555(A356194(n+1))))` -/
def P5664368779168191317.Spec : Prop :=
  ∀ n, P5664368779168191317.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P13402510983190415101

`A293442(A015053((n+1)*A000188(n+1)))`
-/

namespace A365491.P13402510983190415101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A015053 ((n + 1 : ℤ) * A000188 (n + 1)).toNat).toNat

end

end A365491.P13402510983190415101

namespace A365491

/-- `A293442(A015053((n+1)*A000188(n+1)))` -/
def P13402510983190415101.Spec : Prop :=
  ∀ n, P13402510983190415101.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P10338562269587526418

`A369306((n+1)/A000188(A355264(n+1)))`
-/

namespace A365491.P10338562269587526418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (A355264 (n + 1)).toNat : ℚ))).toNat

end

end A365491.P10338562269587526418

namespace A365491

/-- `A369306((n+1)/A000188(A355264(n+1)))` -/
def P10338562269587526418.Spec : Prop :=
  ∀ n, P10338562269587526418.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P13802140175552563012

`A365549(A053143(n+1))`
-/

namespace A365491.P13802140175552563012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365549 (A053143 (n + 1)).toNat

end

end A365491.P13802140175552563012

namespace A365491

/-- `A365549(A053143(n+1))` -/
def P13802140175552563012.Spec : Prop :=
  ∀ n, P13802140175552563012.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P4455530553416338145

`A365549(A064549(n+1))`
-/

namespace A365491.P4455530553416338145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365549 (A064549 (n + 1)).toNat

end

end A365491.P4455530553416338145

namespace A365491

/-- `A365549(A064549(n+1))` -/
def P4455530553416338145.Spec : Prop :=
  ∀ n, P4455530553416338145.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P18161661248598016026

`A046951(A053166(n+1)²)`
-/

namespace A365491.P18161661248598016026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A053166 (n + 1) ^ 2).toNat

end

end A365491.P18161661248598016026

namespace A365491

/-- `A046951(A053166(n+1)²)` -/
def P18161661248598016026.Spec : Prop :=
  ∀ n, P18161661248598016026.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P3376772194984920985

`A322483(A053166((n+1)²))`
-/

namespace A365491.P3376772194984920985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A053166 ((n + 1) ^ 2)).toNat

end

end A365491.P3376772194984920985

namespace A365491

/-- `A322483(A053166((n+1)²))` -/
def P3376772194984920985.Spec : Prop :=
  ∀ n, P3376772194984920985.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P9834246787745047512

`A365171(A019555((n+1)²))`
-/

namespace A365491.P9834246787745047512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 (A019555 ((n + 1) ^ 2)).toNat

end

end A365491.P9834246787745047512

namespace A365491

/-- `A365171(A019555((n+1)²))` -/
def P9834246787745047512.Spec : Prop :=
  ∀ n, P9834246787745047512.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P16568062550669267390

`A365488(A053166(n+1)²)`
-/

namespace A365491.P16568062550669267390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365488 (A053166 (n + 1) ^ 2).toNat

end

end A365491.P16568062550669267390

namespace A365491

/-- `A365488(A053166(n+1)²)` -/
def P16568062550669267390.Spec : Prop :=
  ∀ n, P16568062550669267390.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P17355470456220649803

`A365549((n+1)*A007947(n+1))`
-/

namespace A365491.P17355470456220649803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365549 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A365491.P17355470456220649803

namespace A365491

/-- `A365549((n+1)*A007947(n+1))` -/
def P17355470456220649803.Spec : Prop :=
  ∀ n, P17355470456220649803.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P7771552846843432324

`A293442(A015052(A019554(n+1)²))`
-/

namespace A365491.P7771552846843432324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A015052 (A019554 (n + 1) ^ 2).toNat).toNat

end

end A365491.P7771552846843432324

namespace A365491

/-- `A293442(A015052(A019554(n+1)²))` -/
def P7771552846843432324.Spec : Prop :=
  ∀ n, P7771552846843432324.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P15283682527181086091

`A332712(A019554(A019554(n+1))²)`
-/

namespace A365491.P15283682527181086091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332712 (A019554 (A019554 (n + 1)).toNat ^ 2).toNat

end

end A365491.P15283682527181086091

namespace A365491

/-- `A332712(A019554(A019554(n+1))²)` -/
def P15283682527181086091.Spec : Prop :=
  ∀ n, P15283682527181086091.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P13076202533576055462

`A365488(A019554(A019554(n+1))²)`
-/

namespace A365491.P13076202533576055462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365488 (A019554 (A019554 (n + 1)).toNat ^ 2).toNat

end

end A365491.P13076202533576055462

namespace A365491

/-- `A365488(A019554(A019554(n+1))²)` -/
def P13076202533576055462.Spec : Prop :=
  ∀ n, P13076202533576055462.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P11387453519467620329

`A369308(A019554(A019554(n+1))²)`
-/

namespace A365491.P11387453519467620329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369308 (A019554 (A019554 (n + 1)).toNat ^ 2).toNat

end

end A365491.P11387453519467620329

namespace A365491

/-- `A369308(A019554(A019554(n+1))²)` -/
def P11387453519467620329.Spec : Prop :=
  ∀ n, P11387453519467620329.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P4831542128463915337

`A000005(A019555(A019555((n+1)*(n+1))))`
-/

namespace A365491.P4831542128463915337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019555 (A019555 ((n + 1) * (n + 1))).toNat).toNat

end

end A365491.P4831542128463915337

namespace A365491

/-- `A000005(A019555(A019555((n+1)*(n+1))))` -/
def P4831542128463915337.Spec : Prop :=
  ∀ n, P4831542128463915337.a n = A365491 (n + 1)

end A365491

/-! ## A365491.P8561565702205255023

`A293442(A015052((n+1)*A007913(n+1)))`
-/

namespace A365491.P8561565702205255023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A015052 ((n + 1 : ℤ) * A007913 (n + 1)).toNat).toNat

end

end A365491.P8561565702205255023

namespace A365491

/-- `A293442(A015052((n+1)*A007913(n+1)))` -/
def P8561565702205255023.Spec : Prop :=
  ∀ n, P8561565702205255023.a n = A365491 (n + 1)

end A365491

/-!
# A365492: The number of divisors of the smallest 4th power divisible by n.

The programs for A365492, the canonical program `A365492.P7618387643998844160` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365492 has offset 1).

The definition of A365492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365492.P7618387643998844160

`∏{e}[n+1, 4-or(3, -#)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A365492

/-- `∏{e}[n+1, 4-or(3, -#)]` -/
def P7618387643998844160.Spec : Prop :=
  ∀ n, P7618387643998844160.a n = A365492 (n + 1)

theorem P7618387643998844160.correct : P7618387643998844160.Spec := by
  intro n
  simp only [A365492, Nat.add_sub_cancel]

end A365492

/-! ## A365492.P8941822576597409794

`A344327(A053166(n+1))`
-/

namespace A365492.P8941822576597409794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344327 (A053166 (n + 1)).toNat

end

end A365492.P8941822576597409794

namespace A365492

/-- `A344327(A053166(n+1))` -/
def P8941822576597409794.Spec : Prop :=
  ∀ n, P8941822576597409794.a n = A365492 (n + 1)

end A365492

/-! ## A365492.P13173435618571631196

`A048691(A053166(n+1)²)`
-/

namespace A365492.P13173435618571631196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A053166 (n + 1) ^ 2).toNat

end

end A365492.P13173435618571631196

namespace A365492

/-- `A048691(A053166(n+1)²)` -/
def P13173435618571631196.Spec : Prop :=
  ∀ n, P13173435618571631196.a n = A365492 (n + 1)

end A365492

/-! ## A365492.P3898674353142087205

`A048691(A053166(n+1)^2)`
-/

namespace A365492.P3898674353142087205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A053166 (n + 1) ^ 2).toNat

end

end A365492.P3898674353142087205

namespace A365492

/-- `A048691(A053166(n+1)^2)` -/
def P3898674353142087205.Spec : Prop :=
  ∀ n, P3898674353142087205.a n = A365492 (n + 1)

end A365492

/-! ## A365492.P10043191301461031120

`A048691(A019554(A019554(n+1))²)`
-/

namespace A365492.P10043191301461031120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A019554 (A019554 (n + 1)).toNat ^ 2).toNat

end

end A365492.P10043191301461031120

namespace A365492

/-- `A048691(A019554(A019554(n+1))²)` -/
def P10043191301461031120.Spec : Prop :=
  ∀ n, P10043191301461031120.a n = A365492 (n + 1)

end A365492

/-!
# A365495: Square array read by ascending antidiagonals: T(n,k) is the parity of the k-th iterate of the 3x+1 function started at n, with n >= 1 and k >= 0.

The programs for A365495, there is no canonical definition to state claims against.
-/

/-! ## A365495.P10467257596312264922

`A365484(n+1)%2`
-/

namespace A365495.P10467257596312264922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365484 (n + 1)) 2

end

end A365495.P10467257596312264922

/-! ## A365495.P14726450220910058275

`A000035(A365484(n+1))`
-/

namespace A365495.P14726450220910058275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A365484 (n + 1)).toNat

end

end A365495.P14726450220910058275

/-! ## A365495.P4497972819956517658

`and(A060576(n), A365484(n+1))`
-/

namespace A365495.P4497972819956517658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A365484 (n + 1))

end

end A365495.P4497972819956517658

/-! ## A365495.P158308656174092252

`and(1, A017082(n)*A365484(n+1))`
-/

namespace A365495.P158308656174092252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A017082 n * A365484 (n + 1))

end

end A365495.P158308656174092252

/-! ## A365495.P5117279218599768641

`and(A048578(n), A365484(n+1))`
-/

namespace A365495.P5117279218599768641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A365484 (n + 1))

end

end A365495.P5117279218599768641

/-! ## A365495.P17837173016715338657

`and(A020737(n), A365484(n+1))`
-/

namespace A365495.P17837173016715338657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A365484 (n + 1))

end

end A365495.P17837173016715338657

/-! ## A365495.P9063542374226457011

`and(A195744(n), A365484(n+1))`
-/

namespace A365495.P9063542374226457011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A365484 (n + 1))

end

end A365495.P9063542374226457011

/-! ## A365495.P6775170295307571167

`and(A122041(n+1), A365484(n+1))`
-/

namespace A365495.P6775170295307571167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A365484 (n + 1))

end

end A365495.P6775170295307571167

/-! ## A365495.P8773609133855084592

`and(A196657(n), A365484(n+1))`
-/

namespace A365495.P8773609133855084592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A365484 (n + 1))

end

end A365495.P8773609133855084592

/-! ## A365495.P3155721372229531629

`and(A305262(n), A365484(n+1))`
-/

namespace A365495.P3155721372229531629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A305262 n) (A365484 (n + 1))

end

end A365495.P3155721372229531629

/-! ## A365495.P14765460055568667755

`and(A132750(n), A365484(n+1))`
-/

namespace A365495.P14765460055568667755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132750 n) (A365484 (n + 1))

end

end A365495.P14765460055568667755

/-! ## A365495.P9011122104124299945

`and(A048474(n), A365484(n+1))`
-/

namespace A365495.P9011122104124299945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048474 n) (A365484 (n + 1))

end

end A365495.P9011122104124299945

/-! ## A365495.P11841798466916410768

`and(A080267(n+1), A365484(n+1))`
-/

namespace A365495.P11841798466916410768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080267 (n + 1)) (A365484 (n + 1))

end

end A365495.P11841798466916410768

/-! ## A365495.P1670967065643499244

`and(A048478(n), A365484(n+1))`
-/

namespace A365495.P1670967065643499244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048478 n) (A365484 (n + 1))

end

end A365495.P1670967065643499244

/-! ## A365495.P10765443886036198387

`and(A051900(n), A365484(n+1))`
-/

namespace A365495.P10765443886036198387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051900 n) (A365484 (n + 1))

end

end A365495.P10765443886036198387

/-! ## A365495.P11141160393716157151

`and(A048479(n), A365484(n+1))`
-/

namespace A365495.P11141160393716157151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A365484 (n + 1))

end

end A365495.P11141160393716157151

/-! ## A365495.P5623898009869530684

`and(A134854(n+1), A365484(n+1))`
-/

namespace A365495.P5623898009869530684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134854 (n + 1)) (A365484 (n + 1))

end

end A365495.P5623898009869530684

/-! ## A365495.P5576928168826120687

`and(A295926(n+3), A365484(n+1))`
-/

namespace A365495.P5576928168826120687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A295926 (n + 3)) (A365484 (n + 1))

end

end A365495.P5576928168826120687

/-! ## A365495.P14037784277626943356

`and(A115342(n+6), A365484(n+1))`
-/

namespace A365495.P14037784277626943356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115342 (n + 6)) (A365484 (n + 1))

end

end A365495.P14037784277626943356

/-! ## A365495.P4689843443833223544

`and(A258073(n+1), A365484(n+1))`
-/

namespace A365495.P4689843443833223544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A258073 (n + 1)) (A365484 (n + 1))

end

end A365495.P4689843443833223544

/-!
# A365496: Number of connected induced (non-null) subgraphs of the n-Lucas cube graph.

The programs for A365496, there is no canonical definition to state claims against.
-/

/-! ## A365496.P12875160990225988986

`A000040(A322011(n+1))-A005928(n)`
-/

namespace A365496.P12875160990225988986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A322011 (n + 1)).toNat - A005928 n

end

end A365496.P12875160990225988986

/-!
# A365498: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 + 1/p^s - 1/p^(3*s)).

The programs for A365498, the canonical program `A365498.P11326829355514865455` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365498 has offset 1).

The definition of A365498 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286324, A368172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A365498.P7087858789573897213

`A056671(n+1)*A368885(n+1)`
-/

namespace A365498.P7087858789573897213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1) * A368885 (n + 1)

end

end A365498.P7087858789573897213

namespace A365498

/-- `A056671(n+1)*A368885(n+1)` -/
def P7087858789573897213.Spec : Prop :=
  ∀ n, P7087858789573897213.a n = A365498 (n + 1)

end A365498

/-! ## A365498.P7428773678102222337

`A034444(n+1)/A368248(n+1)`
-/

namespace A365498.P7428773678102222337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) / (A368248 (n + 1) : ℚ)

end

end A365498.P7428773678102222337

namespace A365498

/-- `A034444(n+1)/A368248(n+1)` -/
def P7428773678102222337.Spec : Prop :=
  ∀ n, P7428773678102222337.a n = (A365498 (n + 1) : ℚ)

end A365498

/-! ## A365498.P2729999391708169603

`A158522(n+1)/A307428(n+1)`
-/

namespace A365498.P2729999391708169603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158522 (n + 1) : ℚ) / (A307428 (n + 1) : ℚ)

end

end A365498.P2729999391708169603

namespace A365498

/-- `A158522(n+1)/A307428(n+1)` -/
def P2729999391708169603.Spec : Prop :=
  ∀ n, P2729999391708169603.a n = (A365498 (n + 1) : ℚ)

end A365498

/-! ## A365498.P11821931698306635975

`A369310(n+1)/A190867(n+1)`
-/

namespace A365498.P11821931698306635975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369310 (n + 1) : ℚ) / (A190867 (n + 1) : ℚ)

end

end A365498.P11821931698306635975

namespace A365498

/-- `A369310(n+1)/A190867(n+1)` -/
def P11821931698306635975.Spec : Prop :=
  ∀ n, P11821931698306635975.a n = (A365498 (n + 1) : ℚ)

end A365498

/-! ## A365498.P11326829355514865455

`A286324(n+1)/A368172(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A365498

/-- `A286324(n+1)/A368172(n+1)` -/
def P11326829355514865455.Spec : Prop :=
  ∀ n, P11326829355514865455.a n = (A365498 (n + 1) : ℚ)

end A365498

/-! ## A365498.P18201020852451095711

`∏{e}[n+1, round(exp(acot(#)))]`
-/

namespace A365498.P18201020852451095711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.exp (SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ)))

end

end A365498.P18201020852451095711

namespace A365498

/-- `∏{e}[n+1, round(exp(acot(#)))]` -/
def P18201020852451095711.Spec : Prop :=
  ∀ n, P18201020852451095711.a n = A365498 (n + 1)

end A365498

/-! ## A365498.P709569435378584323

`∏{e}[n+1, round(1/#)+1]`
-/

namespace A365498.P709569435378584323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.roundAway (1 / (Nat.factorization (f1 n) p : ℚ)) + 1)

end

end A365498.P709569435378584323

namespace A365498

/-- `∏{e}[n+1, round(1/#)+1]` -/
def P709569435378584323.Spec : Prop :=
  ∀ n, P709569435378584323.a n = A365498 (n + 1)

end A365498

/-! ## A365498.P14817619274871983879

`2^∑{e}[n+1, round(1/#)]`
-/

namespace A365498.P14817619274871983879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f1 n) p : ℚ)) : ℤ)

end

end A365498.P14817619274871983879

namespace A365498

/-- `2^∑{e}[n+1, round(1/#)]` -/
def P14817619274871983879.Spec : Prop :=
  ∀ n, P14817619274871983879.a n = (A365498 (n + 1) : ℚ)

end A365498

/-! ## A365498.P12722405175235907836

`2^A366078(n+1)`
-/

namespace A365498.P12722405175235907836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A366078 (n + 1) : ℤ)

end

end A365498.P12722405175235907836

namespace A365498

/-- `2^A366078(n+1)` -/
def P12722405175235907836.Spec : Prop :=
  ∀ n, P12722405175235907836.a n = (A365498 (n + 1) : ℚ)

end A365498

/-! ## A365498.P9408850853652538851

`A056671(A019554(n+1))`
-/

namespace A365498.P9408850853652538851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A019554 (n + 1)).toNat

end

end A365498.P9408850853652538851

namespace A365498

/-- `A056671(A019554(n+1))` -/
def P9408850853652538851.Spec : Prop :=
  ∀ n, P9408850853652538851.a n = A365498 (n + 1)

end A365498

/-! ## A365498.P659706213132972903

`A034444(A360539(n+1))`
-/

namespace A365498.P659706213132972903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A360539 (n + 1)).toNat

end

end A365498.P659706213132972903

namespace A365498

/-- `A034444(A360539(n+1))` -/
def P659706213132972903.Spec : Prop :=
  ∀ n, P659706213132972903.a n = A365498 (n + 1)

end A365498

/-! ## A365498.P8231268846355912307

`A056671(A350390(n+1))`
-/

namespace A365498.P8231268846355912307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A350390 (n + 1)).toNat

end

end A365498.P8231268846355912307

namespace A365498

/-- `A056671(A350390(n+1))` -/
def P8231268846355912307.Spec : Prop :=
  ∀ n, P8231268846355912307.a n = A365498 (n + 1)

end A365498

/-! ## A365498.P9771341492640044773

`A056671(A366765(n+1))`
-/

namespace A365498.P9771341492640044773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A366765 (n + 1)).toNat

end

end A365498.P9771341492640044773

namespace A365498

/-- `A056671(A366765(n+1))` -/
def P9771341492640044773.Spec : Prop :=
  ∀ n, P9771341492640044773.a n = A365498 (n + 1)

end A365498

/-! ## A365498.P2491478359969717127

`A367515(A058035(n+1))`
-/

namespace A365498.P2491478359969717127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367515 (A058035 (n + 1)).toNat

end

end A365498.P2491478359969717127

namespace A365498

/-- `A367515(A058035(n+1))` -/
def P2491478359969717127.Spec : Prop :=
  ∀ n, P2491478359969717127.a n = A365498 (n + 1)

end A365498

/-! ## A365498.P7606612142671491471

`A056671(A372379(n+1))`
-/

namespace A365498.P7606612142671491471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A372379 (n + 1)).toNat

end

end A365498.P7606612142671491471

namespace A365498

/-- `A056671(A372379(n+1))` -/
def P7606612142671491471.Spec : Prop :=
  ∀ n, P7606612142671491471.a n = A365498 (n + 1)

end A365498

/-! ## A365498.P11341056334507871879

`gcd(A016938(n), A380922(n+1))`
-/

namespace A365498.P11341056334507871879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016938 n) (A380922 (n + 1))

end

end A365498.P11341056334507871879

namespace A365498

/-- `gcd(A016938(n), A380922(n+1))` -/
def P11341056334507871879.Spec : Prop :=
  ∀ n, (P11341056334507871879.a n : ℤ) = A365498 (n + 1)

end A365498

/-! ## A365498.P236875684998250189

`A034444((n+1)/A360540(n+1))`
-/

namespace A365498.P236875684998250189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360540 (n + 1) : ℚ))).toNat

end

end A365498.P236875684998250189

namespace A365498

/-- `A034444((n+1)/A360540(n+1))` -/
def P236875684998250189.Spec : Prop :=
  ∀ n, P236875684998250189.a n = A365498 (n + 1)

end A365498

/-! ## A365498.P6399825340566012233

`∑{d}[n+1, A271102(#)*A365551((n+1)/#)]`
-/

namespace A365498.P6399825340566012233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A365551 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365498.P6399825340566012233

namespace A365498

/-- `∑{d}[n+1, A271102(#)*A365551((n+1)/#)]` -/
def P6399825340566012233.Spec : Prop :=
  ∀ n, P6399825340566012233.a n = A365498 (n + 1)

end A365498

/-! ## A365498.P2571861878932835274

`A056671(A000189(n+1))*A056671(n+1)`
-/

namespace A365498.P2571861878932835274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A000189 (n + 1)).toNat * A056671 (n + 1)

end

end A365498.P2571861878932835274

namespace A365498

/-- `A056671(A000189(n+1))*A056671(n+1)` -/
def P2571861878932835274.Spec : Prop :=
  ∀ n, P2571861878932835274.a n = A365498 (n + 1)

end A365498

/-! ## A365498.P9028955393690713347

`A056671(A000190(n+1))*A056671(n+1)`
-/

namespace A365498.P9028955393690713347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A000190 (n + 1)).toNat * A056671 (n + 1)

end

end A365498.P9028955393690713347

namespace A365498

/-- `A056671(A000190(n+1))*A056671(n+1)` -/
def P9028955393690713347.Spec : Prop :=
  ∀ n, P9028955393690713347.a n = A365498 (n + 1)

end A365498

/-!
# A365499: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 + 1/p^s - 1/p^(4*s)).

The programs for A365499, the canonical program `A365499.P12823429545755088149` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365499 has offset 1).

The definition of A365499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365499.P14387479198716340881

`A034444(A385007(n+1))`
-/

namespace A365499.P14387479198716340881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A385007 (n + 1)).toNat

end

end A365499.P14387479198716340881

namespace A365499

/-- `A034444(A385007(n+1))` -/
def P14387479198716340881.Spec : Prop :=
  ∀ n, P14387479198716340881.a n = A365499 (n + 1)

end A365499

/-! ## A365499.P2254810862474484473

`A365498(A353897(n+1))`
-/

namespace A365499.P2254810862474484473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365498 (A353897 (n + 1)).toNat

end

end A365499.P2254810862474484473

namespace A365499

/-- `A365498(A353897(n+1))` -/
def P2254810862474484473.Spec : Prop :=
  ∀ n, P2254810862474484473.a n = A365499 (n + 1)

end A365499

/-! ## A365499.P17378383540439791133

`A365498(A355261(n+1))`
-/

namespace A365499.P17378383540439791133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365498 (A355261 (n + 1)).toNat

end

end A365499.P17378383540439791133

namespace A365499

/-- `A365498(A355261(n+1))` -/
def P17378383540439791133.Spec : Prop :=
  ∀ n, P17378383540439791133.a n = A365499 (n + 1)

end A365499

/-! ## A365499.P6947354105979868504

`A365498(A366905(n+1))`
-/

namespace A365499.P6947354105979868504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365498 (A366905 (n + 1)).toNat

end

end A365499.P6947354105979868504

namespace A365499

/-- `A365498(A366905(n+1))` -/
def P6947354105979868504.Spec : Prop :=
  ∀ n, P6947354105979868504.a n = A365499 (n + 1)

end A365499

/-! ## A365499.P12823429545755088149

`A365498((n+1)/A055229(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A365499

/-- `A365498((n+1)/A055229(n+1))` -/
def P12823429545755088149.Spec : Prop :=
  ∀ n, P12823429545755088149.a n = A365499 (n + 1)

theorem P12823429545755088149.correct : P12823429545755088149.Spec := by
  intro n
  simp only [A365499, Nat.add_sub_cancel]

end A365499

/-! ## A365499.P16996800724416892007

`A383762(A385007(2*n+1-n))`
-/

namespace A365499.P16996800724416892007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383762 (A385007 (2 * n + 1 - n)).toNat

end

end A365499.P16996800724416892007

namespace A365499

/-- `A383762(A385007(2*n+1-n))` -/
def P16996800724416892007.Spec : Prop :=
  ∀ n, P16996800724416892007.a n = A365499 (n + 1)

end A365499

/-! ## A365499.P5194136419290597719

`A366991(A383764(A386469(n+1)))`
-/

namespace A365499.P5194136419290597719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366991 (A383764 (A386469 (n + 1)).toNat).toNat

end

end A365499.P5194136419290597719

namespace A365499

/-- `A366991(A383764(A386469(n+1)))` -/
def P5194136419290597719.Spec : Prop :=
  ∀ n, P5194136419290597719.a n = A365499 (n + 1)

end A365499

/-! ## A365499.P13962074422942829472

`A056671(A000188(n+1))*A056671(n+1)`
-/

namespace A365499.P13962074422942829472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A000188 (n + 1)).toNat * A056671 (n + 1)

end

end A365499.P13962074422942829472

namespace A365499

/-- `A056671(A000188(n+1))*A056671(n+1)` -/
def P13962074422942829472.Spec : Prop :=
  ∀ n, P13962074422942829472.a n = A365499 (n + 1)

end A365499

/-! ## A365499.P13008980981523361145

`A383762(A053165(A385007(A383764(n+1))))`
-/

namespace A365499.P13008980981523361145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383762 (A053165 (A385007 (A383764 (n + 1)).toNat).toNat).toNat

end

end A365499.P13008980981523361145

namespace A365499

/-- `A383762(A053165(A385007(A383764(n+1))))` -/
def P13008980981523361145.Spec : Prop :=
  ∀ n, P13008980981523361145.a n = A365499 (n + 1)

end A365499

/-! ## A365499.P7843596365410389692

`gcd(A110288(n), A386470(n+1))`
-/

namespace A365499.P7843596365410389692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110288 n) (A386470 (n + 1))

end

end A365499.P7843596365410389692

namespace A365499

/-- `gcd(A110288(n), A386470(n+1))` -/
def P7843596365410389692.Spec : Prop :=
  ∀ n, (P7843596365410389692.a n : ℤ) = A365499 (n + 1)

end A365499

/-! ## A365499.P8801091554738671489

`A000005(A056552(A019555(A372329(n+1))))`
-/

namespace A365499.P8801091554738671489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056552 (A019555 (A372329 (n + 1)).toNat).toNat).toNat

end

end A365499.P8801091554738671489

namespace A365499

/-- `A000005(A056552(A019555(A372329(n+1))))` -/
def P8801091554738671489.Spec : Prop :=
  ∀ n, P8801091554738671489.a n = A365499 (n + 1)

end A365499

/-! ## A365499.P2450466076074402051

`gcd(A062267(n), A365488(n+1))`
-/

namespace A365499.P2450466076074402051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062267 n) (A365488 (n + 1))

end

end A365499.P2450466076074402051

namespace A365499

/-- `gcd(A062267(n), A365488(n+1))` -/
def P2450466076074402051.Spec : Prop :=
  ∀ n, (P2450466076074402051.a n : ℤ) = A365499 (n + 1)

end A365499

/-! ## A365499.P12814335672196168934

`A367515(A011262(n+1))`
-/

namespace A365499.P12814335672196168934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367515 (A011262 (n + 1)).toNat

end

end A365499.P12814335672196168934

namespace A365499

/-- `A367515(A011262(n+1))` -/
def P12814335672196168934.Spec : Prop :=
  ∀ n, P12814335672196168934.a n = A365499 (n + 1)

end A365499

/-! ## A365499.P9528935112531189194

`A055076(A015053((n+1)²))`
-/

namespace A365499.P9528935112531189194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A015053 ((n + 1) ^ 2)).toNat

end

end A365499.P9528935112531189194

namespace A365499

/-- `A055076(A015053((n+1)²))` -/
def P9528935112531189194.Spec : Prop :=
  ∀ n, P9528935112531189194.a n = A365499 (n + 1)

end A365499

/-! ## A365499.P3466273209791758666

`A365498(A019555((n+1)²))`
-/

namespace A365499.P3466273209791758666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365498 (A019555 ((n + 1) ^ 2)).toNat

end

end A365499.P3466273209791758666

namespace A365499

/-- `A365498(A019555((n+1)²))` -/
def P3466273209791758666.Spec : Prop :=
  ∀ n, P3466273209791758666.a n = A365499 (n + 1)

end A365499

/-! ## A365499.P14675537832146536980

`A322483(A007913(A019555(n+1))²)`
-/

namespace A365499.P14675537832146536980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A007913 (A019555 (n + 1)).toNat ^ 2).toNat

end

end A365499.P14675537832146536980

namespace A365499

/-- `A322483(A007913(A019555(n+1))²)` -/
def P14675537832146536980.Spec : Prop :=
  ∀ n, P14675537832146536980.a n = A365499 (n + 1)

end A365499

/-! ## A365499.P10868173648489830814

`A383762(A365683(A385007(n+1)²))`
-/

namespace A365499.P10868173648489830814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383762 (A365683 (A385007 (n + 1) ^ 2).toNat).toNat

end

end A365499.P10868173648489830814

namespace A365499

/-- `A383762(A365683(A385007(n+1)²))` -/
def P10868173648489830814.Spec : Prop :=
  ∀ n, P10868173648489830814.a n = A365499 (n + 1)

end A365499

/-! ## A365499.P8865527976553562695

`A055076(A007913(A015053((n+1)*(n+1))))`
-/

namespace A365499.P8865527976553562695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A007913 (A015053 ((n + 1) * (n + 1))).toNat).toNat

end

end A365499.P8865527976553562695

namespace A365499

/-- `A055076(A007913(A015053((n+1)*(n+1))))` -/
def P8865527976553562695.Spec : Prop :=
  ∀ n, P8865527976553562695.a n = A365499 (n + 1)

end A365499

/-! ## A365499.P8042733222797895661

`A365498(A019555(n+1)*A019555(n+1))`
-/

namespace A365499.P8042733222797895661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365498 (A019555 (n + 1) * A019555 (n + 1)).toNat

end

end A365499.P8042733222797895661

namespace A365499

/-- `A365498(A019555(n+1)*A019555(n+1))` -/
def P8042733222797895661.Spec : Prop :=
  ∀ n, P8042733222797895661.a n = A365499 (n + 1)

end A365499

