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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A274601: a(n) = 2*3^(s-1) - n, where s is the number of trits of n in balanced ternary form.

The programs for A274601, the canonical program `A274601.P12542519559083663936` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274601 has offset 1).

The definition of A274601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274601.P12542519559083663936

`2*A132171(n)-(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A274601

/-- `2*A132171(n)-(n+1)` -/
def P12542519559083663936.Spec : Prop :=
  ∀ n, P12542519559083663936.a n = A274601 (n + 1)

theorem P12542519559083663936.correct : P12542519559083663936.Spec := by
  intro n
  simp only [A274601, Nat.add_sub_cancel]

end A274601

/-! ## A274601.P8622513546971411382

`A157671(A132141(n+1)-n)-(n+1)`
-/

namespace A274601.P8622513546971411382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157671 (A132141 (n + 1) - (n : ℤ)).toNat - (n + 1 : ℤ)

end

end A274601.P8622513546971411382

namespace A274601

/-- `A157671(A132141(n+1)-n)-(n+1)` -/
def P8622513546971411382.Spec : Prop :=
  ∀ n, P8622513546971411382.a n = A274601 (n + 1)

end A274601

/-! ## A274601.P9156080005979981758

`A338245(A338246(n+1))`
-/

namespace A274601.P9156080005979981758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338245 (A338246 (n + 1)).toNat

end

end A274601.P9156080005979981758

namespace A274601

/-- `A338245(A338246(n+1))` -/
def P9156080005979981758.Spec : Prop :=
  ∀ n, P9156080005979981758.a n = A274601 (n + 1)

end A274601

/-! ## A274601.P2716548291276442381

`A338246(A338247(n+1))`
-/

namespace A274601.P2716548291276442381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 (A338247 (n + 1)).toNat

end

end A274601.P2716548291276442381

namespace A274601

/-- `A338246(A338247(n+1))` -/
def P2716548291276442381.Spec : Prop :=
  ∀ n, P2716548291276442381.a n = A274601 (n + 1)

end A274601

/-! ## A274601.P7238339088729956326

`A368239(A380182(n+1))`
-/

namespace A274601.P7238339088729956326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368239 (A380182 (n + 1)).toNat

end

end A274601.P7238339088729956326

namespace A274601

/-- `A368239(A380182(n+1))` -/
def P7238339088729956326.Spec : Prop :=
  ∀ n, P7238339088729956326.a n = A274601 (n + 1)

end A274601

/-! ## A274601.P8454369050805103789

`A005843(A132171(n))-(n+1)`
-/

namespace A274601.P8454369050805103789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A132171 n).toNat - (n + 1 : ℤ)

end

end A274601.P8454369050805103789

namespace A274601

/-- `A005843(A132171(n))-(n+1)` -/
def P8454369050805103789.Spec : Prop :=
  ∀ n, P8454369050805103789.a n = A274601 (n + 1)

end A274601

/-! ## A274601.P17054395656899628256

`A132171(n)+A132141(A132171(n))-A132141(n+1)`
-/

namespace A274601.P17054395656899628256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 n + (A132141 (A132171 n).toNat - A132141 (n + 1))

end

end A274601.P17054395656899628256

namespace A274601

/-- `A132171(n)+A132141(A132171(n))-A132141(n+1)` -/
def P17054395656899628256.Spec : Prop :=
  ∀ n, P17054395656899628256.a n = A274601 (n + 1)

end A274601

/-! ## A274601.P7992000536920416131

`A117966(A132141(A117966(A004488(A157671(n+1)))))`
-/

namespace A274601.P7992000536920416131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A132141 (A117966 (A004488 (A157671 (n + 1)).toNat).toNat).toNat).toNat

end

end A274601.P7992000536920416131

namespace A274601

/-- `A117966(A132141(A117966(A004488(A157671(n+1)))))` -/
def P7992000536920416131.Spec : Prop :=
  ∀ n, P7992000536920416131.a n = A274601 (n + 1)

end A274601

/-! ## A274601.P6813669840663177799

`A338246(A117966(A132141(A117966(A132141(n+1)))))`
-/

namespace A274601.P6813669840663177799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 (A117966 (A132141 (A117966 (A132141 (n + 1)).toNat).toNat).toNat).toNat

end

end A274601.P6813669840663177799

namespace A274601

/-- `A338246(A117966(A132141(A117966(A132141(n+1)))))` -/
def P6813669840663177799.Spec : Prop :=
  ∀ n, P6813669840663177799.a n = A274601 (n + 1)

end A274601

/-! ## A274601.P15990378655617594289

`A380181(A368240(n+1))`
-/

namespace A274601.P15990378655617594289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380181 (A368240 (n + 1)).toNat

end

end A274601.P15990378655617594289

namespace A274601

/-- `A380181(A368240(n+1))` -/
def P15990378655617594289.Spec : Prop :=
  ∀ n, P15990378655617594289.a n = A274601 (n + 1)

end A274601

/-! ## A274601.P11753670755237028364

`A117966(A171960(A132141(A338245(n+1))))`
-/

namespace A274601.P11753670755237028364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A171960 (A132141 (A338245 (n + 1)).toNat).toNat).toNat

end

end A274601.P11753670755237028364

namespace A274601

/-- `A117966(A171960(A132141(A338245(n+1))))` -/
def P11753670755237028364.Spec : Prop :=
  ∀ n, P11753670755237028364.a n = A274601 (n + 1)

end A274601

/-! ## A274601.P10176091075514729040

`A333773(A132141(A338246(A333780(n+1))))`
-/

namespace A274601.P10176091075514729040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 (A132141 (A338246 (A333780 (n + 1)).toNat).toNat).toNat

end

end A274601.P10176091075514729040

namespace A274601

/-- `A333773(A132141(A338246(A333780(n+1))))` -/
def P10176091075514729040.Spec : Prop :=
  ∀ n, P10176091075514729040.a n = A274601 (n + 1)

end A274601

/-!
# A274602: Triangle read by rows: T(n,k) = k*(n-k+1)^2 + n - k, 0 <= k <= n.

The programs for A274602, the canonical program `A274602.P1711109615307392244` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274602 has offset 1).

The definition of A274602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*(row(n)-col(n)+1)²+row(n)-col(n)` (program `A274602.P1711109615307392244`, by `A274602.P1711109615307392244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274602.P1711109615307392244

`col(n)*(row(n)-col(n)+1)²+row(n)-col(n)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A274602

/-- `col(n)*(row(n)-col(n)+1)²+row(n)-col(n)` -/
def P1711109615307392244.Spec : Prop :=
  ∀ n, P1711109615307392244.a n = A274602 (n + 1)

theorem P1711109615307392244.correct : P1711109615307392244.Spec := by
  intro n
  simp only [A274602, Nat.add_sub_cancel]

end A274602

/-! ## A274602.P2824057014041455408

`A059036(n)+2*A062707(n)`
-/

namespace A274602.P2824057014041455408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + 2 * A062707 n

end

end A274602.P2824057014041455408

namespace A274602

/-- `A059036(n)+2*A062707(n)` -/
def P2824057014041455408.Spec : Prop :=
  ∀ n, P2824057014041455408.a n = A274602 (n + 1)

end A274602

/-! ## A274602.P12938060332089607935

`A128141(n+1)+A101321(n)-2`
-/

namespace A274602.P12938060332089607935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128141 (n + 1) + (A101321 n - 2)

end

end A274602.P12938060332089607935

namespace A274602

/-- `A128141(n+1)+A101321(n)-2` -/
def P12938060332089607935.Spec : Prop :=
  ∀ n, P12938060332089607935.a n = A274602 (n + 1)

end A274602

/-! ## A274602.P13853739093560588636

`A004736(n+1)*A128139(n)-1`
-/

namespace A274602.P13853739093560588636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A128139 n - 1

end

end A274602.P13853739093560588636

namespace A274602

/-- `A004736(n+1)*A128139(n)-1` -/
def P13853739093560588636.Spec : Prop :=
  ∀ n, P13853739093560588636.a n = A274602 (n + 1)

end A274602

/-! ## A274602.P7718038782430409418

`A141387(n)+A004247(n)*A025581(n)`
-/

namespace A274602.P7718038782430409418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 n + A004247 n * A025581 n

end

end A274602.P7718038782430409418

namespace A274602

/-- `A141387(n)+A004247(n)*A025581(n)` -/
def P7718038782430409418.Spec : Prop :=
  ∀ n, P7718038782430409418.a n = A274602 (n + 1)

theorem P7718038782430409418.correct : P7718038782430409418.Spec := by
  intro n
  simp only [A274602, Nat.add_sub_cancel, A274602.P7718038782430409418.a, A274602.P1711109615307392244.a, A004247, A004247.P2751605162508615148.a, A025581, A025581.P16112744757063613497.a, A141387, A141387.P5238259369822402056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274602

/-! ## A274602.P5420715483103070306

`A141387(n)+A025581(n)²*A002262(n)`
-/

namespace A274602.P5420715483103070306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 n + A025581 n ^ 2 * A002262 n

end

end A274602.P5420715483103070306

namespace A274602

/-- `A141387(n)+A025581(n)²*A002262(n)` -/
def P5420715483103070306.Spec : Prop :=
  ∀ n, P5420715483103070306.a n = A274602 (n + 1)

theorem P5420715483103070306.correct : P5420715483103070306.Spec := by
  intro n
  simp only [A274602, Nat.add_sub_cancel, A274602.P5420715483103070306.a, A274602.P1711109615307392244.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, A141387, A141387.P5238259369822402056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274602

/-! ## A274602.P4459742679259403830

`A059036(n)+A004247(n)*A004736(n+1)`
-/

namespace A274602.P4459742679259403830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + A004247 n * A004736 (n + 1)

end

end A274602.P4459742679259403830

namespace A274602

/-- `A059036(n)+A004247(n)*A004736(n+1)` -/
def P4459742679259403830.Spec : Prop :=
  ∀ n, P4459742679259403830.a n = A274602 (n + 1)

end A274602

/-! ## A274602.P14456620151457011290

`A025581(n)+A002262(n)*A055461(n+1)`
-/

namespace A274602.P14456620151457011290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A002262 n * A055461 (n + 1)

end

end A274602.P14456620151457011290

namespace A274602

/-- `A025581(n)+A002262(n)*A055461(n+1)` -/
def P14456620151457011290.Spec : Prop :=
  ∀ n, P14456620151457011290.a n = A274602 (n + 1)

theorem P14456620151457011290.correct : P14456620151457011290.Spec := by
  intro n
  simp only [A274602, Nat.add_sub_cancel, A274602.P14456620151457011290.a, A274602.P1711109615307392244.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, A055461, A055461.P13333228572909301680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274602

/-! ## A274602.P13151681063090387017

`A025581(n)+A004736(n+1)²*A002262(n)`
-/

namespace A274602.P13151681063090387017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A004736 (n + 1) ^ 2 * A002262 n

end

end A274602.P13151681063090387017

namespace A274602

/-- `A025581(n)+A004736(n+1)²*A002262(n)` -/
def P13151681063090387017.Spec : Prop :=
  ∀ n, P13151681063090387017.a n = A274602 (n + 1)

end A274602

/-! ## A274602.P16257567059688501655

`A059036(n)+A005843(A062707(n))`
-/

namespace A274602.P16257567059688501655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + A005843 (A062707 n).toNat

end

end A274602.P16257567059688501655

namespace A274602

/-- `A059036(n)+A005843(A062707(n))` -/
def P16257567059688501655.Spec : Prop :=
  ∀ n, P16257567059688501655.a n = A274602 (n + 1)

end A274602

/-! ## A274602.P8832678720433037608

`A070871(A099627(n))-1`
-/

namespace A274602.P8832678720433037608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070871 (A099627 n).toNat - 1

end

end A274602.P8832678720433037608

namespace A274602

/-- `A070871(A099627(n))-1` -/
def P8832678720433037608.Spec : Prop :=
  ∀ n, P8832678720433037608.a n = A274602 (n + 1)

end A274602

/-!
# A274603: Numbers k such that 2*k+1 and 3*k+1 are both triangular numbers.

The programs for A274603, the canonical program `A274603.P7539460553730269749` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274603 has offset 1).

The definition of A274603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274603.P7539460553730269749

`ogf(45/(1-99x+99x^2-x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A274603

/-- `ogf(45/(1-99x+99x^2-x^3))` -/
def P7539460553730269749.Spec : Prop :=
  ∀ n, P7539460553730269749.a n = A274603 (n + 1)

theorem P7539460553730269749.correct : P7539460553730269749.Spec := by
  intro n
  simp only [A274603, Nat.add_sub_cancel]

end A274603

/-! ## A274603.P2904847940517062757

`3*A200994(n+1)`
-/

namespace A274603.P2904847940517062757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A200994 (n + 1)

end

end A274603.P2904847940517062757

namespace A274603

/-- `3*A200994(n+1)` -/
def P2904847940517062757.Spec : Prop :=
  ∀ n, P2904847940517062757.a n = A274603 (n + 1)

end A274603

/-! ## A274603.P11028944847353335985

`9*A352181(n+1)`
-/

namespace A274603.P11028944847353335985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A352181 (n + 1)

end

end A274603.P11028944847353335985

namespace A274603

/-- `9*A352181(n+1)` -/
def P11028944847353335985.Spec : Prop :=
  ∀ n, P11028944847353335985.a n = A274603 (n + 1)

end A274603

/-! ## A274603.P3403126650579708151

`∑[3*Δ[A200994(n)]]`
-/

namespace A274603.P3403126650579708151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200994 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274603.P3403126650579708151

namespace A274603

/-- `∑[3*Δ[A200994(n)]]` -/
def P3403126650579708151.Spec : Prop :=
  ∀ n, P3403126650579708151.a n = A274603 (n + 1)

end A274603

/-! ## A274603.P13184152268132841250

`floor(A006244(n+2)/2)`
-/

namespace A274603.P13184152268132841250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006244 (n + 2) : ℚ) / 2⌋

end

end A274603.P13184152268132841250

namespace A274603

/-- `floor(A006244(n+2)/2)` -/
def P13184152268132841250.Spec : Prop :=
  ∀ n, P13184152268132841250.a n = A274603 (n + 1)

end A274603

/-! ## A274603.P11582881903870714583

`∑[Δ[A006244(n+1)]/2]`
-/

namespace A274603.P11582881903870714583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006244 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274603.P11582881903870714583

namespace A274603

/-- `∑[Δ[A006244(n+1)]/2]` -/
def P11582881903870714583.Spec : Prop :=
  ∀ n, P11582881903870714583.a n = (A274603 (n + 1) : ℚ)

end A274603

/-! ## A274603.P12423844600873758141

`A045502(n+1)+A200993(n+1)/2`
-/

namespace A274603.P12423844600873758141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045502 (n + 1) : ℚ) + (A200993 (n + 1) : ℚ) / 2

end

end A274603.P12423844600873758141

namespace A274603

/-- `A045502(n+1)+A200993(n+1)/2` -/
def P12423844600873758141.Spec : Prop :=
  ∀ n, P12423844600873758141.a n = (A274603 (n + 1) : ℚ)

end A274603

/-! ## A274603.P2833985511817454991

`A045502(n+1)+A200994(n+1)-A200993(n+1)`
-/

namespace A274603.P2833985511817454991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045502 (n + 1) + (A200994 (n + 1) - A200993 (n + 1))

end

end A274603.P2833985511817454991

namespace A274603

/-- `A045502(n+1)+A200994(n+1)-A200993(n+1)` -/
def P2833985511817454991.Spec : Prop :=
  ∀ n, P2833985511817454991.a n = A274603 (n + 1)

end A274603

/-!
# A274604: Running sum of Noergaard's "infinity sequence" A004718.

The programs for A274604, the canonical program `A274604.P1903318012684407382` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274604 has offset 0).

The definition of A274604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274604.P1540872568842271999

`∑[(2*n%2-1)*a(floor(n/2))+n%2]` with `a(0)=0`
-/

namespace A274604.P1540872568842271999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (((2 * (n % 2) : ℕ) : ℤ) - 1) * f1 ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274604.P1540872568842271999

namespace A274604

/-- `∑[(2*n%2-1)*a(floor(n/2))+n%2]` -/
def P1540872568842271999.Spec : Prop :=
  ∀ n, P1540872568842271999.a n = A274604 n

end A274604

/-! ## A274604.P1903318012684407382

`∑[A004718(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A274604

/-- `∑[A004718(n)]` -/
def P1903318012684407382.Spec : Prop :=
  ∀ n, P1903318012684407382.a n = A274604 n

theorem P1903318012684407382.correct : P1903318012684407382.Spec := by
  intro n
  simp only [A274604]

end A274604

/-! ## A274604.P10564837065216029463

`∑[A065620(A323908(n))]`
-/

namespace A274604.P10564837065216029463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A323908 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274604.P10564837065216029463

namespace A274604

/-- `∑[A065620(A323908(n))]` -/
def P10564837065216029463.Spec : Prop :=
  ∀ n, P10564837065216029463.a n = A274604 n

end A274604

/-! ## A274604.P489486153773002328

`∑[A117966(A323909(n))]`
-/

namespace A274604.P489486153773002328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A323909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274604.P489486153773002328

namespace A274604

/-- `∑[A117966(A323909(n))]` -/
def P489486153773002328.Spec : Prop :=
  ∀ n, P489486153773002328.a n = A274604 n

end A274604

/-! ## A274604.P3679859904650935895

`∑[A343029(n)-A343030(n)]`
-/

namespace A274604.P3679859904650935895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 n - A343030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274604.P3679859904650935895

namespace A274604

/-- `∑[A343029(n)-A343030(n)]` -/
def P3679859904650935895.Spec : Prop :=
  ∀ n, P3679859904650935895.a n = A274604 n

theorem P3679859904650935895.correct : P3679859904650935895.Spec := by
  intro n
  simp only [A274604, Nat.add_sub_cancel, A274604.P3679859904650935895.f1, A274604.P3679859904650935895.a, A274604.P1903318012684407382.f1, A274604.P1903318012684407382.a, A004718, A004718.P18113542795219450323.a, A343029, A343029.P9025480771425565583.a, A343030, A343030.P6588649687182581724.a, A014081, A014081.P14878370479040452879.a, A154437, A154437.P11607465258887740319.a, A000120, A000120.P2816527436160941581.a, A056539, A056539.P17406113578210965747.a, A069010, A069010.P14932719103722593844.a, A335858, A335858.P3204271633163649755.a, A003188, A003188.P10544524695508875182.a, A005187, A005187.P3874015513960485494.a, A005811, A005811.P8696411420205566785.a, A180200, A180200.P2958972076606443306.a, A341916, A341916.P6146047658477802750.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274604

/-! ## A274604.P15728923759055896635

`∑[∑[A256187(n)]-A256187(n)]`
-/

namespace A274604.P15728923759055896635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256187 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A256187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274604.P15728923759055896635

namespace A274604

/-- `∑[∑[A256187(n)]-A256187(n)]` -/
def P15728923759055896635.Spec : Prop :=
  ∀ n, P15728923759055896635.a n = A274604 n

end A274604

/-! ## A274604.P14242860112585011548

`∑[A323909(2*n)-A323909(n)]`
-/

namespace A274604.P14242860112585011548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323909 (2 * n) - A323909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274604.P14242860112585011548

namespace A274604

/-- `∑[A323909(2*n)-A323909(n)]` -/
def P14242860112585011548.Spec : Prop :=
  ∀ n, P14242860112585011548.a n = A274604 n

end A274604

/-! ## A274604.P12622429074936340331

`a(n-1)-A004718(2*n)` with `a(0)=0`
-/

namespace A274604.P12622429074936340331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A004718 (2 * n)

end

end A274604.P12622429074936340331

namespace A274604

/-- `a(n-1)-A004718(2*n)` -/
def P12622429074936340331.Spec : Prop :=
  ∀ n, P12622429074936340331.a n = A274604 n

end A274604

/-! ## A274604.P7042108674118133987

`∑[A343029(n)-A343029(2*n)]`
-/

namespace A274604.P7042108674118133987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 n - A343029 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274604.P7042108674118133987

namespace A274604

/-- `∑[A343029(n)-A343029(2*n)]` -/
def P7042108674118133987.Spec : Prop :=
  ∀ n, P7042108674118133987.a n = A274604 n

end A274604

/-! ## A274604.P5381554904618051486

`∑[A343030(2*n)-A343030(n)]`
-/

namespace A274604.P5381554904618051486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (2 * n) - A343030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274604.P5381554904618051486

namespace A274604

/-- `∑[A343030(2*n)-A343030(n)]` -/
def P5381554904618051486.Spec : Prop :=
  ∀ n, P5381554904618051486.a n = A274604 n

end A274604

/-! ## A274604.P14317890743882441851

`∑[A085144(A010078(n+1))]`
-/

namespace A274604.P14317890743882441851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A010078 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274604.P14317890743882441851

namespace A274604

/-- `∑[A085144(A010078(n+1))]` -/
def P14317890743882441851.Spec : Prop :=
  ∀ n, P14317890743882441851.a n = A274604 n

end A274604

/-! ## A274604.P10345891102688916286

`∑[A195017(A005940(n+1))]`
-/

namespace A274604.P10345891102688916286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A005940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274604.P10345891102688916286

namespace A274604

/-- `∑[A195017(A005940(n+1))]` -/
def P10345891102688916286.Spec : Prop :=
  ∀ n, P10345891102688916286.a n = A274604 n

end A274604

/-!
# A274605: Numbers k such that there is no prime between the k-th perfect power and the (k+1)-st perfect power.

The programs for A274605, there is no canonical definition to state claims against.
-/

/-! ## A274605.P11984341476372156499

`eq[0, A080769(n+1)]+1`
-/

namespace A274605.P11984341476372156499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080769 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274605.P11984341476372156499

/-! ## A274605.P1638001333368923821

`lt[A080769(round(acot(n)+n)), 1]`
-/

namespace A274605.P1638001333368923821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080769 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A274605.P1638001333368923821

/-! ## A274605.P10152495346817906457

`eq[0, A080769(A028310(n))]`
-/

namespace A274605.P10152495346817906457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080769 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274605.P10152495346817906457

/-! ## A274605.P309322267732255825

`A020725(eq[0, A080769(n+1)])`
-/

namespace A274605.P309322267732255825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274605.P309322267732255825

/-! ## A274605.P7467081994059537727

`A020725(lt[A080769(n+1), 1])`
-/

namespace A274605.P7467081994059537727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080769 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A274605.P7467081994059537727

/-!
# A274607: Triangle read by rows: T(n, k) is the largest number that can be formed by multiplying k primes prime(i1),...,prime(ik) such that i1+...+ik = n.

The programs for A274607, there is no canonical definition to state claims against.
-/

/-! ## A274607.P7631277847867885203

`A333483(∑[A008284(n+1)])`
-/

namespace A274607.P7631277847867885203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333483 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274607.P7631277847867885203

/-! ## A274607.P7454554069889829521

`A333483(∑[A215521(n+1)])`
-/

namespace A274607.P7454554069889829521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333483 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274607.P7454554069889829521

/-! ## A274607.P6537600390923677283

`A333483(∑[runs[A036043(n+1)%(n+1)²]])`
-/

namespace A274607.P6537600390923677283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036043 (n + 1)) ((n + 1) ^ 2 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333483 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274607.P6537600390923677283

/-! ## A274607.P8852388216891081739

`A215366(∑[A008284(n+1)%A325514(n)])`
-/

namespace A274607.P8852388216891081739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008284 (n + 1)) (A325514 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274607.P8852388216891081739

/-! ## A274607.P3625389299020658681

`A185974(∑[A029635(A072285(n))])`
-/

namespace A274607.P3625389299020658681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A072285 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274607.P3625389299020658681

/-!
# A274608: T(n, k) is the largest number that can be formed by multiplying k primes prime(i1+0),...,prime(ik+k-1) such that i1+...+ik = n. Triangle read by rows.

The programs for A274608, there is no canonical definition to state claims against.
-/

/-! ## A274608.P11717332765061326749

`A340316(n+1)+A228039(A011815(n))`
-/

namespace A274608.P11717332765061326749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340316 (n + 1) + A228039 (A011815 n).toNat

end

end A274608.P11717332765061326749

/-! ## A274608.P73690315371649475

`A340316(n+1)+A185238(A104684(n))`
-/

namespace A274608.P73690315371649475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340316 (n + 1) + A185238 (A104684 n).toNat

end

end A274608.P73690315371649475

/-! ## A274608.P5534126465788983838

`A340316(n+1)+A254001(A042689(n))`
-/

namespace A274608.P5534126465788983838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340316 (n + 1) + A254001 (A042689 n).toNat

end

end A274608.P5534126465788983838

/-! ## A274608.P9221635381833906459

`A340316(n+1)+A025466(A294817(n))`
-/

namespace A274608.P9221635381833906459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340316 (n + 1) + A025466 (A294817 n).toNat

end

end A274608.P9221635381833906459

/-! ## A274608.P5109170432549357204

`A340316(n+1)+A025466(A316105(n))`
-/

namespace A274608.P5109170432549357204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340316 (n + 1) + A025466 (A316105 n).toNat

end

end A274608.P5109170432549357204

/-!
# A274609: Primes p such that both 2p-1 and 2p^2-2p+1 are prime.

The programs for A274609, there is no canonical definition to state claims against.
-/

/-! ## A274609.P4989236817459773024

`p?[A178659(n+1)]`
-/

namespace A274609.P4989236817459773024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274609.P4989236817459773024

/-! ## A274609.P6842130499626614960

`p?[A068501(n+1)+1]`
-/

namespace A274609.P6842130499626614960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068501 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274609.P6842130499626614960

/-! ## A274609.P744732760224297521

`p?[ceil(A048161(n+1)/2)]`
-/

namespace A274609.P744732760224297521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048161 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274609.P744732760224297521

/-! ## A274609.P2063999385928349351

`∩[A005382(n+1), A178659(n+1)]`
-/

namespace A274609.P2063999385928349351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274609.P2063999385928349351

/-! ## A274609.P10369880864536003794

`p?[A067756(n+1)%A048161(n+1)]`
-/

namespace A274609.P10369880864536003794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067756 (n + 1)) (A048161 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A274609.P10369880864536003794

/-! ## A274609.P15911225243249054714

`∩[A178659(n+1), A330968(n+1)]`
-/

namespace A274609.P15911225243249054714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274609.P15911225243249054714

/-! ## A274609.P12365487912594293715

`∩[A045331(n+1), A178659(n+1)]`
-/

namespace A274609.P12365487912594293715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274609.P12365487912594293715

/-! ## A274609.P4105537521189334276

`∩[A178659(n+1), A341786(n+1)]`
-/

namespace A274609.P4105537521189334276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274609.P4105537521189334276

/-! ## A274609.P15598645551897820583

`∩[A178659(n+1), A246373(n+1)]`
-/

namespace A274609.P15598645551897820583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274609.P15598645551897820583

/-! ## A274609.P12201942346467535895

`∩[A058501(n+1), A178659(n+1)]`
-/

namespace A274609.P12201942346467535895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274609.P12201942346467535895

/-!
# A274610: Values of c such that p^2-c and p^2+c are both positive primes, for the special case when p^2-c = 3, or c = p^2-3, where p is a prime.

The programs for A274610, there is no canonical definition to state claims against.
-/

/-! ## A274610.P5184615887489581545

`∩[A173178(n+1), A182200(n+1)]`
-/

namespace A274610.P5184615887489581545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274610.P5184615887489581545

/-! ## A274610.P15891813900206936987

`A047949(∩[A001248(n+1), A098090(n+1)])`
-/

namespace A274610.P15891813900206936987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A274610.P15891813900206936987

/-!
# A274611: a(n) = n/8 if A007814(n) == 3 (mod 4), else a(n) = 2*n.

The programs for A274611, the canonical program `A274611.P10471680084800426065` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274611 has offset 1).

The definition of A274611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274611.P10422499665820022481

`A317440(n+1)/A010156(A053381(n))`
-/

namespace A274611.P10422499665820022481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317440 (n + 1) : ℚ) / (A010156 (A053381 n).toNat : ℚ)

end

end A274611.P10422499665820022481

namespace A274611

/-- `A317440(n+1)/A010156(A053381(n))` -/
def P10422499665820022481.Spec : Prop :=
  ∀ n, P10422499665820022481.a n = (A274611 (n + 1) : ℚ)

end A274611

/-! ## A274611.P1910568439608985314

`A317440(n+1)/A010153(A001511(n+1))`
-/

namespace A274611.P1910568439608985314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317440 (n + 1) : ℚ) / (A010153 (A001511 (n + 1)).toNat : ℚ)

end

end A274611.P1910568439608985314

namespace A274611

/-- `A317440(n+1)/A010153(A001511(n+1))` -/
def P1910568439608985314.Spec : Prop :=
  ∀ n, P1910568439608985314.a n = (A274611 (n + 1) : ℚ)

end A274611

/-! ## A274611.P12028216099493660788

`A008835(n+1)*A053165(2*(n+1))`
-/

namespace A274611.P12028216099493660788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1) * A053165 (2 * (n + 1))

end

end A274611.P12028216099493660788

namespace A274611

/-- `A008835(n+1)*A053165(2*(n+1))` -/
def P12028216099493660788.Spec : Prop :=
  ∀ n, P12028216099493660788.a n = A274611 (n + 1)

end A274611

/-! ## A274611.P10471680084800426065

`(n+1)/A053165(n+1)*A053165(2*(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A274611

/-- `(n+1)/A053165(n+1)*A053165(2*(n+1))` -/
def P10471680084800426065.Spec : Prop :=
  ∀ n, P10471680084800426065.a n = (A274611 (n + 1) : ℚ)

end A274611

/-! ## A274611.P15325104455300619895

`A317440(n+1)%A307266(A008706(n+1))`
-/

namespace A274611.P15325104455300619895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317440 (n + 1)) (A307266 (A008706 (n + 1)).toNat)

end

end A274611.P15325104455300619895

namespace A274611

/-- `A317440(n+1)%A307266(A008706(n+1))` -/
def P15325104455300619895.Spec : Prop :=
  ∀ n, P15325104455300619895.a n = A274611 (n + 1)

end A274611

/-! ## A274611.P6058519841097741678

`A059896(A000217(2*(n+1)))/A008835(n+9)`
-/

namespace A274611.P6058519841097741678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059896 (A000217 (2 * (n + 1))).toNat : ℚ) / (A008835 (n + 9) : ℚ)

end

end A274611.P6058519841097741678

namespace A274611

/-- `A059896(A000217(2*(n+1)))/A008835(n+9)` -/
def P6058519841097741678.Spec : Prop :=
  ∀ n, P6058519841097741678.a n = (A274611 (n + 1) : ℚ)

end A274611

/-! ## A274611.P3968494704843586333

`A331738(A338782(2*(n+1))²)/A331738(2*(n+1))`
-/

namespace A274611.P3968494704843586333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331738 (A338782 (2 * (n + 1)) ^ 2).toNat : ℚ) / (A331738 (2 * (n + 1)) : ℚ)

end

end A274611.P3968494704843586333

namespace A274611

/-- `A331738(A338782(2*(n+1))²)/A331738(2*(n+1))` -/
def P3968494704843586333.Spec : Prop :=
  ∀ n, P3968494704843586333.a n = (A274611 (n + 1) : ℚ)

end A274611

/-! ## A274611.P15679237283435435931

`A003557(A338782(2*(n+1))²/A003557(2*(n+1)))`
-/

namespace A274611.P15679237283435435931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway ((A338782 (2 * (n + 1)) ^ 2 : ℚ) / (A003557 (2 * (n + 1)) : ℚ))).toNat

end

end A274611.P15679237283435435931

namespace A274611

/-- `A003557(A338782(2*(n+1))²/A003557(2*(n+1)))` -/
def P15679237283435435931.Spec : Prop :=
  ∀ n, P15679237283435435931.a n = A274611 (n + 1)

end A274611

/-!
# A274612: Numbers not divisible by 10 with at least one zero but no two adjacent 0's among its decimal digits.

The programs for A274612, the canonical program `A274612.P12827660095432405851` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274612 has offset 1).

The definition of A274612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1539 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274612.P12827660095432405851

`filter[A043489(n+1), A168184(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A274612

/-- `filter[A043489(n+1), A168184(#)]` -/
def P12827660095432405851.Spec : Prop :=
  ∀ n, P12827660095432405851.a n = A274612 (n + 1)

theorem P12827660095432405851.correct : P12827660095432405851.Spec := by
  intro n
  simp only [A274612, Nat.add_sub_cancel]

end A274612

/-! ## A274612.P2951521852939500297

`∩[A023443(A011540(n+1)), A043489(n+1)]`
-/

namespace A274612.P2951521852939500297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A011540 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274612.P2951521852939500297

namespace A274612

/-- `∩[A023443(A011540(n+1)), A043489(n+1)]` -/
def P2951521852939500297.Spec : Prop :=
  ∀ n, (P2951521852939500297.a n : ℤ) = A274612 (n + 1)

end A274612

/-! ## A274612.P4443109057703285266

`eq[A040790(A009101(n)), A055641(n)]`
-/

namespace A274612.P4443109057703285266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 (A009101 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274612.P4443109057703285266

namespace A274612

/-- `eq[A040790(A009101(n)), A055641(n)]` -/
def P4443109057703285266.Spec : Prop :=
  ∀ n, (P4443109057703285266.a n : ℤ) = A274612 (n + 1)

end A274612

/-! ## A274612.P10930533813239675660

`A051022(lt[floor(n/9)², (n+1)/10^val(n+1, 10)]+11)`
-/

namespace A274612.P10930533813239675660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 9⌋ ^ 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 11)

end

end A274612.P10930533813239675660

namespace A274612

/-- `A051022(lt[floor(n/9)², (n+1)/10^val(n+1, 10)]+11)` -/
def P10930533813239675660.Spec : Prop :=
  ∀ n, P10930533813239675660.a n = A274612 (n + 1)

end A274612

/-! ## A274612.P4914216509514622699

`A004151(A134808(n+2))`
-/

namespace A274612.P4914216509514622699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A134808 (n + 2)).toNat

end

end A274612.P4914216509514622699

namespace A274612

/-- `A004151(A134808(n+2))` -/
def P4914216509514622699.Spec : Prop :=
  ∀ n, P4914216509514622699.a n = A274612 (n + 1)

end A274612

/-! ## A274612.P17999211400573274831

`eq[9, A003987(A123895(n))]`
-/

namespace A274612.P17999211400573274831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A123895 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274612.P17999211400573274831

namespace A274612

/-- `eq[9, A003987(A123895(n))]` -/
def P17999211400573274831.Spec : Prop :=
  ∀ n, (P17999211400573274831.a n : ℤ) = A274612 (n + 1)

end A274612

/-! ## A274612.P15814391020797078816

`A023443(A134808(n+2)+1)`
-/

namespace A274612.P15814391020797078816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A134808 (n + 2) + 1).toNat

end

end A274612.P15814391020797078816

namespace A274612

/-- `A023443(A134808(n+2)+1)` -/
def P15814391020797078816.Spec : Prop :=
  ∀ n, P15814391020797078816.a n = A274612 (n + 1)

end A274612

/-! ## A274612.P11168897211938913335

`A001281(2*A134808(n+2))`
-/

namespace A274612.P11168897211938913335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A134808 (n + 2)).toNat

end

end A274612.P11168897211938913335

namespace A274612

/-- `A001281(2*A134808(n+2))` -/
def P11168897211938913335.Spec : Prop :=
  ∀ n, P11168897211938913335.a n = A274612 (n + 1)

end A274612

/-! ## A274612.P4491304756790063995

`A004525(2*A134808(n+2))`
-/

namespace A274612.P4491304756790063995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A134808 (n + 2)).toNat

end

end A274612.P4491304756790063995

namespace A274612

/-- `A004525(2*A134808(n+2))` -/
def P4491304756790063995.Spec : Prop :=
  ∀ n, P4491304756790063995.a n = A274612 (n + 1)

end A274612

/-! ## A274612.P6705328626908839821

`A123108(2*A134808(n+2))`
-/

namespace A274612.P6705328626908839821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * A134808 (n + 2)).toNat

end

end A274612.P6705328626908839821

namespace A274612

/-- `A123108(2*A134808(n+2))` -/
def P6705328626908839821.Spec : Prop :=
  ∀ n, P6705328626908839821.a n = A274612 (n + 1)

end A274612

/-!
# A274613: Array T(n,k) = numerator of binomial(k,n)/2^k read by antidiagonals omitting the zeros (upper triangle), a sequence related to Jacobsthal numbers.

The programs for A274613, there is no canonical definition to state claims against.
-/

/-! ## A274613.P231586329609464781

`lcm(8, A098925(n))/8`
-/

namespace A274613.P231586329609464781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 8 (A098925 n) : ℚ) / 8

end

end A274613.P231586329609464781

/-! ## A274613.P14917989634417852347

`A000265(A098925(n))`
-/

namespace A274613.P14917989634417852347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A098925 n).toNat

end

end A274613.P14917989634417852347

/-! ## A274613.P12567337655795389857

`A000265(abs(A092865(n)))`
-/

namespace A274613.P12567337655795389857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 |A092865 n|.toNat

end

end A274613.P12567337655795389857

/-! ## A274613.P13352443926215917809

`A227140(abs(A092865(n)))`
-/

namespace A274613.P13352443926215917809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 |A092865 n|.toNat

end

end A274613.P13352443926215917809

/-! ## A274613.P3163522671043911503

`A000265(A102426(n+1))`
-/

namespace A274613.P3163522671043911503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A102426 (n + 1)).toNat

end

end A274613.P3163522671043911503

/-! ## A274613.P16287939657386322863

`A028234(2*A098925(n))`
-/

namespace A274613.P16287939657386322863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A098925 n).toNat

end

end A274613.P16287939657386322863

/-! ## A274613.P1296649611730522829

`A139391(2*A098925(n))`
-/

namespace A274613.P1296649611730522829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (2 * A098925 n).toNat

end

end A274613.P1296649611730522829

/-! ## A274613.P13104066642134556212

`A171435(2*A098925(n))`
-/

namespace A274613.P13104066642134556212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A098925 n).toNat

end

end A274613.P13104066642134556212

/-! ## A274613.P11729942432236258978

`gcd(A008312(n), A046983(n))`
-/

namespace A274613.P11729942432236258978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008312 n) (A046983 n)

end

end A274613.P11729942432236258978

/-! ## A274613.P15825902902384355072

`gcd(A060696(n), A092865(n))`
-/

namespace A274613.P15825902902384355072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060696 n) (A092865 n)

end

end A274613.P15825902902384355072

/-!
# A274614: Third column of array in A269526.

The programs for A274614, there is no canonical definition to state claims against.
-/

/-! ## A274614.P12398042003939502630

`A274528(∑[2+n]+3)+1`
-/

namespace A274614.P12398042003939502630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (∑ j ∈ Finset.range (n + 1), f1 j + 3) + 1

end

end A274614.P12398042003939502630

/-! ## A274614.P20405690049204256

`A269526(∑[n+2]+4)`
-/

namespace A274614.P20405690049204256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A274614.P20405690049204256

/-! ## A274614.P2787258391601030363

`or(char[1], A269526(A167614(n+1)))`
-/

namespace A274614.P2787258391601030363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A269526 (A167614 (n + 1)).toNat)

end

end A274614.P2787258391601030363

/-! ## A274614.P11617000470278102361

`A269526(A055998(n)+6)%(n+6)`
-/

namespace A274614.P11617000470278102361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269526 (A055998 n + 6).toNat) (n + 6 : ℤ)

end

end A274614.P11617000470278102361

/-! ## A274614.P17528826918035071177

`A269526(A046691(n)+7)%(4*n+3)`
-/

namespace A274614.P17528826918035071177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269526 (A046691 n + 7).toNat) (4 * n + 3 : ℤ)

end

end A274614.P17528826918035071177

/-! ## A274614.P9168597170321695508

`A269526(A167614(n+1))%A000041(n+4)`
-/

namespace A274614.P9168597170321695508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269526 (A167614 (n + 1)).toNat) (A000041 (n + 4))

end

end A274614.P9168597170321695508

/-! ## A274614.P15953046645179793031

`and(A003817(2*(n+2)), A269526(A167614(n+1)))`
-/

namespace A274614.P15953046645179793031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (2 * (n + 2))) (A269526 (A167614 (n + 1)).toNat)

end

end A274614.P15953046645179793031

/-! ## A274614.P15572614923965583307

`A000108(val(n+1, 40))*A269526(A055998(n)+6)`
-/

namespace A274614.P15572614923965583307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.valuation (n + 1) 40) * A269526 (A055998 n + 6).toNat

end

end A274614.P15572614923965583307

/-! ## A274614.P16123144645421766497

`A269526(A167614(n+1))+A008683(13*26*(n+1))`
-/

namespace A274614.P16123144645421766497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (A167614 (n + 1)).toNat + A008683 (13 * (26 * (n + 1)))

end

end A274614.P16123144645421766497

/-! ## A274614.P5539214272846628094

`A000164(A000164(n))*A269526(A167614(n+1))`
-/

namespace A274614.P5539214272846628094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A000164 n).toNat * A269526 (A167614 (n + 1)).toNat

end

end A274614.P5539214272846628094

/-!
# A274615: Third column (that is, the c=2 column) of array in A274528.

The programs for A274615, there is no canonical definition to state claims against.
-/

/-! ## A274615.P4973160616045692997

`A274614(n+1)-1`
-/

namespace A274615.P4973160616045692997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274614 (n + 1) - 1

end

end A274615.P4973160616045692997

/-! ## A274615.P10817711476459913135

`A274528(∑[2+n]+3)`
-/

namespace A274615.P10817711476459913135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A274615.P10817711476459913135

/-! ## A274615.P9167843695246382180

`A269526(∑[n+2]+4)-1`
-/

namespace A274615.P9167843695246382180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (∑ j ∈ Finset.range (n + 1), f1 j + 4) - 1

end

end A274615.P9167843695246382180

/-! ## A274615.P10910353438782454928

`A023443(A274614(n+1))`
-/

namespace A274615.P10910353438782454928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274614 (n + 1)).toNat

end

end A274615.P10910353438782454928

/-! ## A274615.P317529150201861483

`A057918(A274614(n+1)²)`
-/

namespace A274615.P317529150201861483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A274614 (n + 1) ^ 2).toNat

end

end A274615.P317529150201861483

/-! ## A274615.P7686900159123681528

`A259361(A274614(n+1)²)`
-/

namespace A274615.P7686900159123681528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A274614 (n + 1) ^ 2).toNat

end

end A274615.P7686900159123681528

/-! ## A274615.P5721042169301847825

`A140106(2*A274614(n+1))`
-/

namespace A274615.P5721042169301847825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A274614 (n + 1)).toNat

end

end A274615.P5721042169301847825

/-! ## A274615.P13083388769953835468

`abs(1-A269526(A167614(n+1)))`
-/

namespace A274615.P13083388769953835468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A269526 (A167614 (n + 1)).toNat|

end

end A274615.P13083388769953835468

/-! ## A274615.P1078057232828345304

`A033619(A269526(∑[n+2]+4))`
-/

namespace A274615.P1078057232828345304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A269526 (∑ j ∈ Finset.range (n + 1), f1 j + 4)).toNat

end

end A274615.P1078057232828345304

/-! ## A274615.P17392177102312492548

`A033619(A274614(A033619(n+2)))`
-/

namespace A274615.P17392177102312492548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A274614 (A033619 (n + 2)).toNat).toNat

end

end A274615.P17392177102312492548

/-!
# A274616: Maximal number of non-attacking queens on a right triangular board with n cells on each side.

The programs for A274616, the canonical program `A274616.P13634105323737252993` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274616 has offset 0).

The definition of A274616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274616.P13827696100311143628

`ogf((x+x^3-x^4+x^5+x^7-x^8)/(1-x-x^3+x^4))`
-/

namespace A274616.P13827696100311143628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1, -1, 1, 0, 1, -1] [1, -1, 0, -1, 1] n

end

end A274616.P13827696100311143628

namespace A274616

/-- `ogf((x+x^3-x^4+x^5+x^7-x^8)/(1-x-x^3+x^4))` -/
def P13827696100311143628.Spec : Prop :=
  ∀ n, P13827696100311143628.a n = A274616 n

end A274616

/-! ## A274616.P13634105323737252993

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=3, a(6)=4, a(7)=5, a(8)=5`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A274616

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P13634105323737252993.Spec : Prop :=
  ∀ n, P13634105323737252993.a n = A274616 n

theorem P13634105323737252993.correct : P13634105323737252993.Spec := by
  intro n
  simp only [A274616]

end A274616

/-! ## A274616.P11076137093406544313

`round(2*n/3)-char[4]`
-/

namespace A274616.P11076137093406544313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A274616.P11076137093406544313

namespace A274616

/-- `round(2*n/3)-char[4]` -/
def P11076137093406544313.Spec : Prop :=
  ∀ n, P11076137093406544313.a n = A274616 n

end A274616

/-! ## A274616.P2718832605083069585

`xor(round(2*n/3), char[4])`
-/

namespace A274616.P2718832605083069585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A274616.P2718832605083069585

namespace A274616

/-- `xor(round(2*n/3), char[4])` -/
def P2718832605083069585.Spec : Prop :=
  ∀ n, P2718832605083069585.a n = A274616 n

end A274616

/-! ## A274616.P7300476204723002738

`floor(∑[∑[n]]/∑[n-a(n-1)])` with `a(0)=1`
-/

namespace A274616.P7300476204723002738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  (n : ℤ) - f3 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f3 j : ℤ) : ℚ)⌋

end

end A274616.P7300476204723002738

namespace A274616

/-- `floor(∑[∑[n]]/∑[n-a(n-1)])` -/
def P7300476204723002738.Spec : Prop :=
  ∀ n, P7300476204723002738.a n = A274616 n

end A274616

/-! ## A274616.P12290298114318633042

`∑[char[∑[((7*n)%(n+1)+1)%3]]]`
-/

namespace A274616.P12290298114318633042
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n % (n + 1) + 1) % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274616.P12290298114318633042

namespace A274616

/-- `∑[char[∑[((7*n)%(n+1)+1)%3]]]` -/
def P12290298114318633042.Spec : Prop :=
  ∀ n, (P12290298114318633042.a n : ℤ) = A274616 n

end A274616

/-! ## A274616.P8465104450250754640

`round(A265045(n)/6)`
-/

namespace A274616.P8465104450250754640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A265045 n : ℚ) / 6)

end

end A274616.P8465104450250754640

namespace A274616

/-- `round(A265045(n)/6)` -/
def P8465104450250754640.Spec : Prop :=
  ∀ n, P8465104450250754640.a n = A274616 n

end A274616

/-! ## A274616.P6219094713871550680

`A004396(n-char[4])`
-/

namespace A274616.P6219094713871550680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A274616.P6219094713871550680

namespace A274616

/-- `A004396(n-char[4])` -/
def P6219094713871550680.Spec : Prop :=
  ∀ n, P6219094713871550680.a n = A274616 n

end A274616

/-! ## A274616.P11535276773098906899

`floor(A213502(n)/A212959(n))`
-/

namespace A274616.P11535276773098906899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213502 n : ℚ) / (A212959 n : ℚ)⌋

end

end A274616.P11535276773098906899

namespace A274616

/-- `floor(A213502(n)/A212959(n))` -/
def P11535276773098906899.Spec : Prop :=
  ∀ n, P11535276773098906899.a n = A274616 n

end A274616

/-! ## A274616.P11682633632133988912

`∑[(A298788(n+1)%∑[n+1])%2]`
-/

namespace A274616.P11682633632133988912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A298788 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274616.P11682633632133988912

namespace A274616

/-- `∑[(A298788(n+1)%∑[n+1])%2]` -/
def P11682633632133988912.Spec : Prop :=
  ∀ n, P11682633632133988912.a n = A274616 n

end A274616

/-! ## A274616.P16055233801089041180

`ceil(comp[Δ[n²]+A135561(n+1)+1]/2)`
-/

namespace A274616.P16055233801089041180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (A135561 (n + 1) + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉

end

end A274616.P16055233801089041180

namespace A274616

/-- `ceil(comp[Δ[n²]+A135561(n+1)+1]/2)` -/
def P16055233801089041180.Spec : Prop :=
  ∀ n, P16055233801089041180.a n = A274616 n

end A274616

/-! ## A274616.P3436067050871421231

`A002264(1-char[4]+n+n)`
-/

namespace A274616.P3436067050871421231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ) + (n : ℤ)).toNat

end

end A274616.P3436067050871421231

namespace A274616

/-- `A002264(1-char[4]+n+n)` -/
def P3436067050871421231.Spec : Prop :=
  ∀ n, P3436067050871421231.a n = A274616 n

end A274616

/-! ## A274616.P7347319125602762682

`A289133(A265035(n))`
-/

namespace A274616.P7347319125602762682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 (A265035 n).toNat

end

end A274616.P7347319125602762682

namespace A274616

/-- `A289133(A265035(n))` -/
def P7347319125602762682.Spec : Prop :=
  ∀ n, P7347319125602762682.a n = A274616 n

end A274616

/-! ## A274616.P12637453911535745063

`A011960(A336627(n))`
-/

namespace A274616.P12637453911535745063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (A336627 n).toNat

end

end A274616.P12637453911535745063

namespace A274616

/-- `A011960(A336627(n))` -/
def P12637453911535745063.Spec : Prop :=
  ∀ n, P12637453911535745063.a n = A274616 n

end A274616

/-! ## A274616.P3327062287875887418

`log2(A016116(comp[a(n-1)+4]))` with `a(0)=1, a(1)=6, a(2)=9`
-/

namespace A274616.P3327062287875887418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 9] fun n f1 =>
  f1 (n - 1) + 4

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A016116 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)

end

end A274616.P3327062287875887418

namespace A274616

/-- `log2(A016116(comp[a(n-1)+4]))` -/
def P3327062287875887418.Spec : Prop :=
  ∀ n, P3327062287875887418.a n = (A274616 n : ℝ)

end A274616

/-! ## A274616.P12533542864787766974

`A033183(A119651(n+2))`
-/

namespace A274616.P12533542864787766974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A119651 (n + 2)).toNat

end

end A274616.P12533542864787766974

namespace A274616

/-- `A033183(A119651(n+2))` -/
def P12533542864787766974.Spec : Prop :=
  ∀ n, P12533542864787766974.a n = A274616 n

end A274616

/-! ## A274616.P16968369883985785027

`floor(A127911(n)/A000081(n+1))`
-/

namespace A274616.P16968369883985785027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127911 n : ℚ) / (A000081 (n + 1) : ℚ)⌋

end

end A274616.P16968369883985785027

namespace A274616

/-- `floor(A127911(n)/A000081(n+1))` -/
def P16968369883985785027.Spec : Prop :=
  ∀ n, P16968369883985785027.a n = A274616 n

end A274616

/-! ## A274616.P4230513552426778274

`A000196(A033441(n)+A004526(n+1))`
-/

namespace A274616.P4230513552426778274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A033441 n + A004526 (n + 1)).toNat

end

end A274616.P4230513552426778274

namespace A274616

/-- `A000196(A033441(n)+A004526(n+1))` -/
def P4230513552426778274.Spec : Prop :=
  ∀ n, P4230513552426778274.a n = A274616 n

end A274616

/-! ## A274616.P3818401431600526199

`A000196(n-(A004526(n)-A033441(n)))`
-/

namespace A274616.P3818401431600526199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n : ℤ) - (A004526 n - A033441 n)).toNat

end

end A274616.P3818401431600526199

namespace A274616

/-- `A000196(n-(A004526(n)-A033441(n)))` -/
def P3818401431600526199.Spec : Prop :=
  ∀ n, P3818401431600526199.a n = A274616 n

end A274616

/-!
# A274617: Fourth column of A269526.

The programs for A274617, there is no canonical definition to state claims against.
-/

/-! ## A274617.P2566229269690080815

`A274619(n)+1`
-/

namespace A274617.P2566229269690080815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274619 n + 1

end

end A274617.P2566229269690080815

/-! ## A274617.P17389580799361689885

`A269526(∑[n+3]+7)`
-/

namespace A274617.P17389580799361689885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A274617.P17389580799361689885

/-! ## A274617.P16511375271821928512

`A274528(∑[n+3]+6)+1`
-/

namespace A274617.P16511375271821928512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (∑ j ∈ Finset.range (n + 1), f1 j + 6) + 1

end

end A274617.P16511375271821928512

/-! ## A274617.P570884238477179883

`A008619(2*A274619(n))`
-/

namespace A274617.P570884238477179883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A274619 n).toNat

end

end A274617.P570884238477179883

/-! ## A274617.P2425631567657950575

`A028242(2*A274619(n))`
-/

namespace A274617.P2425631567657950575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A274619 n).toNat

end

end A274617.P2425631567657950575

/-! ## A274617.P15034812422682930316

`A052938(2*A274619(n))`
-/

namespace A274617.P15034812422682930316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A274619 n).toNat

end

end A274617.P15034812422682930316

/-! ## A274617.P14687679313830680132

`A158416(2*A274619(n))`
-/

namespace A274617.P14687679313830680132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * A274619 n).toNat

end

end A274617.P14687679313830680132

/-! ## A274617.P12240878450123384356

`A008611(3*A274619(n))`
-/

namespace A274617.P12240878450123384356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A274619 n).toNat

end

end A274617.P12240878450123384356

/-! ## A274617.P18434452917675709349

`A008620(3*A274619(n))`
-/

namespace A274617.P18434452917675709349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A274619 n).toNat

end

end A274617.P18434452917675709349

/-! ## A274617.P9742504106570889758

`A008621(4*A274619(n))`
-/

namespace A274617.P9742504106570889758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A274619 n).toNat

end

end A274617.P9742504106570889758

/-!
# A274618: Sprague-Grundy values for the game of duplicate Double Kayles (octal game .07DDDD7).

The programs for A274618, there is no canonical definition to state claims against.
-/

/-! ## A274618.P17103148083598582459

`A071074(floor(n/2))`
-/

namespace A274618.P17103148083598582459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071074 ⌊(n : ℚ) / 2⌋.toNat

end

end A274618.P17103148083598582459

/-! ## A274618.P17927375722741022589

`A071074((n-n%2)/2)%30`
-/

namespace A274618.P17927375722741022589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071074 (SequenceMachineLib.roundAway (((n : ℤ) - ((n % 2 : ℕ) : ℤ) : ℚ) / 2)).toNat) 30

end

end A274618.P17927375722741022589

/-! ## A274618.P14664436229709692580

`A071074(A004526(n))%16`
-/

namespace A274618.P14664436229709692580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071074 (A004526 n).toNat) 16

end

end A274618.P14664436229709692580

/-! ## A274618.P9372736648800818380

`A071074((or(1, n)-1)/2)+A002262(∑[n])`
-/

namespace A274618.P9372736648800818380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071074 (SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2)).toNat + A002262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274618.P9372736648800818380

/-! ## A274618.P3617371272785737626

`A000041(C(2, n))*A071074(A004526(n))`
-/

namespace A274618.P3617371272785737626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A071074 (A004526 n).toNat

end

end A274618.P3617371272785737626

/-! ## A274618.P11069933004779441757

`lcm((-1)^A007318(n), A071074(A004526(n)))`
-/

namespace A274618.P11069933004779441757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A007318 n : ℤ))) (A071074 (A004526 n).toNat)

end

end A274618.P11069933004779441757

/-! ## A274618.P11076853308943688451

`A014963(4*n+2)*A071074(A004526(n))`
-/

namespace A274618.P11076853308943688451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A071074 (A004526 n).toNat

end

end A274618.P11076853308943688451

/-! ## A274618.P5257083580798165798

`A007318(C(2, n+2))*A071074(A004526(n))`
-/

namespace A274618.P5257083580798165798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A071074 (A004526 n).toNat

end

end A274618.P5257083580798165798

/-!
# A274619: Fourth column of A274528.

The programs for A274619, there is no canonical definition to state claims against.
-/

/-! ## A274619.P5457713049326528759

`A274617(1+n)-1`
-/

namespace A274619.P5457713049326528759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274617 (1 + n) - 1

end

end A274619.P5457713049326528759

/-! ## A274619.P5710441564626016884

`A274528(∑[n+3]+6)`
-/

namespace A274619.P5710441564626016884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A274619.P5710441564626016884

/-! ## A274619.P1467896399069513910

`A269526(∑[n+3]+7)-1`
-/

namespace A274619.P1467896399069513910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (∑ j ∈ Finset.range (n + 1), f1 j + 7) - 1

end

end A274619.P1467896399069513910

/-! ## A274619.P2139410647280306898

`A023443(A274617(n+1))`
-/

namespace A274619.P2139410647280306898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274617 (n + 1)).toNat

end

end A274619.P2139410647280306898

/-! ## A274619.P721680226322807072

`A057918(A274617(n+1)²)`
-/

namespace A274619.P721680226322807072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A274617 (n + 1) ^ 2).toNat

end

end A274619.P721680226322807072

/-! ## A274619.P13734272435438229993

`A088226(A274617(n+1)²)`
-/

namespace A274619.P13734272435438229993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A274617 (n + 1) ^ 2).toNat

end

end A274619.P13734272435438229993

/-! ## A274619.P6458322709990171036

`A259361(A274617(n+1)²)`
-/

namespace A274619.P6458322709990171036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A274617 (n + 1) ^ 2).toNat

end

end A274619.P6458322709990171036

/-! ## A274619.P236100575568778073

`A046667(2*A274617(n+1))`
-/

namespace A274619.P236100575568778073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A274617 (n + 1)).toNat

end

end A274619.P236100575568778073

/-! ## A274619.P9586958259864395956

`A274528(A167614(n+2))%99`
-/

namespace A274619.P9586958259864395956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274528 (A167614 (n + 2)).toNat) 99

end

end A274619.P9586958259864395956

/-! ## A274619.P8656682687947845437

`A057918(2*A274617(n+1)*A274617(n+1))`
-/

namespace A274619.P8656682687947845437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (2 * A274617 (n + 1) * A274617 (n + 1)).toNat

end

end A274619.P8656682687947845437

/-!
# A274621: Coefficients in the expansion Product_{ n>=1 } (1-q^(2n-1))^2/(1-q^(2n))^2.

The programs for A274621, there is no canonical definition to state claims against.
-/

/-! ## A274621.P8813160789257795692

`A033999(n)*A273225(n)`
-/

namespace A274621.P8813160789257795692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A273225 n

end

end A274621.P8813160789257795692

/-! ## A274621.P10697905626974745522

`A062157(n+1)*A273225(n)`
-/

namespace A274621.P10697905626974745522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A273225 n

end

end A274621.P10697905626974745522

/-! ## A274621.P16941635520430736842

`A273225(n)/A033999(n+2)`
-/

namespace A274621.P16941635520430736842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273225 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A274621.P16941635520430736842

/-! ## A274621.P17124513003382193835

`A030203(Δ[A008619(n)])*A273225(n)`
-/

namespace A274621.P17124513003382193835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030203 (f1 (n + 1) - f1 n).toNat * A273225 n

end

end A274621.P17124513003382193835

/-! ## A274621.P18144476727467406155

`A008683(Δ[A042948(n)])*A273225(n)`
-/

namespace A274621.P18144476727467406155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat * A273225 n

end

end A274621.P18144476727467406155

/-! ## A274621.P8971706347198049769

`A195017(A000040(n+1))*A273225(n)`
-/

namespace A274621.P8971706347198049769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A000040 (n + 1)).toNat * A273225 n

end

end A274621.P8971706347198049769

/-! ## A274621.P16035097791073949401

`A195017(A008578(n+2))*A273225(n)`
-/

namespace A274621.P16035097791073949401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A008578 (n + 2)).toNat * A273225 n

end

end A274621.P16035097791073949401

/-! ## A274621.P16250809830352645947

`A011600(Δ[A277138(n+1)])*A273225(n)`
-/

namespace A274621.P16250809830352645947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 (f1 (n + 1) - f1 n).toNat * A273225 n

end

end A274621.P16250809830352645947

/-! ## A274621.P5878084451496943583

`A273225(n)/A057077(A005408(n))`
-/

namespace A274621.P5878084451496943583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273225 n : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A274621.P5878084451496943583

/-! ## A274621.P14913761117241100471

`A057077(2*(n+2))*A273225(n)`
-/

namespace A274621.P14913761117241100471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * (n + 2)) * A273225 n

end

end A274621.P14913761117241100471

/-! ## A274621.P11450779096695149598

`∑{#}[n, A106507(#)*A106507(n-#)]`
-/

namespace A274621.P11450779096695149598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A106507 k * A106507 (n - k)

end

end A274621.P11450779096695149598

/-!
# A274624: Irregular triangular array read by rows: coefficients in expansion of Gosper's q-cosine function cos_q(Pi*z).

The programs for A274624, there is no canonical definition to state claims against.
-/

/-! ## A274624.P1180300382280354774

`C(A286324(A134472(n)), A138904(n))`
-/

namespace A274624.P1180300382280354774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286324 (A134472 (n + 13)).toNat).toNat (A138904 n).toNat

end

end A274624.P1180300382280354774

/-! ## A274624.P7209757651079763992

`gcd(A000005(A160614(n)), A046644(n+1))`
-/

namespace A274624.P7209757651079763992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A160614 n).toNat) (A046644 (n + 1))

end

end A274624.P7209757651079763992

/-!
# A274626: a(n) = Product_{i=0..2} (2^floor((n+i)/3)-1).

The programs for A274626, the canonical program `A274626.P1701451716459314099` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274626 has offset 0).

The definition of A274626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274626.P1701451716459314099

`ogf((x^3+2x^5)/(1-3x+2x^2-6x^3+18x^4-12x^5+8x^6-24x^7+16x^8))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A274626

/-- `ogf((x^3+2x^5)/(1-3x+2x^2-6x^3+18x^4-12x^5+8x^6-24x^7+16x^8))` -/
def P1701451716459314099.Spec : Prop :=
  ∀ n, P1701451716459314099.a n = A274626 n

theorem P1701451716459314099.correct : P1701451716459314099.Spec := by
  intro n
  simp only [A274626]

end A274626

/-! ## A274626.P11997348728078667846

`A000267(A090902(n+1))-A000040(A134478(n))`
-/

namespace A274626.P11997348728078667846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A090902 (n + 1)).toNat - A000040 (A134478 n).toNat

end

end A274626.P11997348728078667846

namespace A274626

/-- `A000267(A090902(n+1))-A000040(A134478(n))` -/
def P11997348728078667846.Spec : Prop :=
  ∀ n, P11997348728078667846.a n = A274626 n

end A274626

/-!
# A274627: Product_{i=0..3} (2^floor((n+i)/4)-1).

The programs for A274627, the canonical program `A274627.P2178317026050334139` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274627 has offset 0).

The definition of A274627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274627.P2178317026050334139

`A274230(A065033(n))*A274230(A123108(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A274627

/-- `A274230(A065033(n))*A274230(A123108(n))` -/
def P2178317026050334139.Spec : Prop :=
  ∀ n, P2178317026050334139.a n = A274627 n

theorem P2178317026050334139.correct : P2178317026050334139.Spec := by
  intro n
  simp only [A274627]

end A274627

/-! ## A274627.P16131138489429745342

`A274230(A110654(n))*A274230(A123108(n))`
-/

namespace A274627.P16131138489429745342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 (A110654 n).toNat * A274230 (A123108 n).toNat

end

end A274627.P16131138489429745342

namespace A274627

/-- `A274230(A110654(n))*A274230(A123108(n))` -/
def P16131138489429745342.Spec : Prop :=
  ∀ n, P16131138489429745342.a n = A274627 n

end A274627

/-! ## A274627.P12554195352046631421

`A274230(A004526(n+1))*A274230(A004526(n))`
-/

namespace A274627.P12554195352046631421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 (A004526 (n + 1)).toNat * A274230 (A004526 n).toNat

end

end A274627.P12554195352046631421

namespace A274627

/-- `A274230(A004526(n+1))*A274230(A004526(n))` -/
def P12554195352046631421.Spec : Prop :=
  ∀ n, P12554195352046631421.a n = A274627 n

end A274627

/-! ## A274627.P3475439109768852152

`2^n-A278554(n)`
-/

namespace A274627.P3475439109768852152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A278554 n

end

end A274627.P3475439109768852152

namespace A274627

/-- `2^n-A278554(n)` -/
def P3475439109768852152.Spec : Prop :=
  ∀ n, P3475439109768852152.a n = A274627 n

end A274627

/-! ## A274627.P9962207863071048533

`A000079(n)%A278554(n)`
-/

namespace A274627.P9962207863071048533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A278554 n)

end

end A274627.P9962207863071048533

namespace A274627

/-- `A000079(n)%A278554(n)` -/
def P9962207863071048533.Spec : Prop :=
  ∀ n, P9962207863071048533.a n = A274627 n

end A274627

/-!
# A274628: Nathanson's orphan-counting function h(n).

The programs for A274628, there is no canonical definition to state claims against.
-/

/-! ## A274628.P3451108209765318497

`A002133(n+1)+2*A000203(n+1)-A000005(n+1)`
-/

namespace A274628.P3451108209765318497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002133 (n + 1) + 2 * A000203 (n + 1) - A000005 (n + 1)

end

end A274628.P3451108209765318497

/-! ## A274628.P17291369124529767203

`A065608(n+1)+A059819(n+1)`
-/

namespace A274628.P17291369124529767203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) + A059819 (n + 1)

end

end A274628.P17291369124529767203

/-! ## A274628.P18315136333752531491

`A129235(n+1)+A002133(n+1)`
-/

namespace A274628.P18315136333752531491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129235 (n + 1) + A002133 (n + 1)

end

end A274628.P18315136333752531491

/-! ## A274628.P12228864407365834860

`A000203(n+1)+A059819(n+1)-A000005(n+1)`
-/

namespace A274628.P12228864407365834860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A059819 (n + 1) - A000005 (n + 1))

end

end A274628.P12228864407365834860

/-! ## A274628.P7326927168675768216

`A129235(n+1)+A265250(n+1)-A000005(n+1)`
-/

namespace A274628.P7326927168675768216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129235 (n + 1) + (A265250 (n + 1) - A000005 (n + 1))

end

end A274628.P7326927168675768216

/-! ## A274628.P11392046879071161455

`A129235(n+1)+∑{d}[n+1, A110571(#)/2-#]`
-/

namespace A274628.P11392046879071161455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129235 (n + 1) : ℚ) + ∑ d ∈ Nat.divisors (f1 n), ((A110571 d : ℚ) / 2 - (d : ℚ))

end

end A274628.P11392046879071161455

/-!
# A274629: Partial sums of A274628.

The programs for A274629, there is no canonical definition to state claims against.
-/

/-! ## A274629.P16129830978397197176

`∑[A274628(n+1)]`
-/

namespace A274629.P16129830978397197176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274629.P16129830978397197176

/-! ## A274629.P9005310753243981518

`A398920(n+1)+A222548(n+1)`
-/

namespace A274629.P9005310753243981518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398920 (n + 1) + A222548 (n + 1)

end

end A274629.P9005310753243981518

/-! ## A274629.P16331281029555781289

`∑[A129235(n+1)+A002133(n+1)]`
-/

namespace A274629.P16331281029555781289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129235 (n + 1) + A002133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274629.P16331281029555781289

/-! ## A274629.P10146428056008995235

`A222548(n+1)+∑[A002133(n+1)]`
-/

namespace A274629.P10146428056008995235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222548 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274629.P10146428056008995235

/-! ## A274629.P3994351948823612858

`∑[A129235(n+1)+∑{d}[n+1, A274108(#)]]`
-/

namespace A274629.P3994351948823612858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129235 (n + 1) + ∑ d ∈ Nat.divisors (f2 n), A274108 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274629.P3994351948823612858

/-! ## A274629.P1444709756759496272

`∑[A129235(n+1)+A059819(n+1)-A000203(n+1)]`
-/

namespace A274629.P1444709756759496272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129235 (n + 1) + (A059819 (n + 1) - A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274629.P1444709756759496272

/-! ## A274629.P2598776836816518178

`∑[A129235(n+1)+A265250(n+1)-A000005(n+1)]`
-/

namespace A274629.P2598776836816518178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129235 (n + 1) + (A265250 (n + 1) - A000005 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274629.P2598776836816518178

/-! ## A274629.P2218142333340145084

`∑[A129235(n+1)+2*A270060(n+1)-A100073(n+1)]`
-/

namespace A274629.P2218142333340145084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129235 (n + 1) + (2 * A270060 (n + 1) - A100073 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274629.P2218142333340145084

/-! ## A274629.P5080677848680272156

`∑[A129235(n+1)+∑{d}[n+1, A110571(#)/2-#]]`
-/

namespace A274629.P5080677848680272156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129235 (n + 1) : ℚ) + ∑ d ∈ Nat.divisors (f2 n), ((A110571 d : ℚ) / 2 - (d : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274629.P5080677848680272156

/-! ## A274629.P10080566810998728773

`∑[A129235(n+1)+A238130(A000124(n+1))/2]`
-/

namespace A274629.P10080566810998728773
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129235 (n + 1) : ℚ) + (A238130 (A000124 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274629.P10080566810998728773

/-!
# A274630: Square array T(n,k) (n>=1, k>=1) read by antidiagonals upwards in which the number entered in a square is the smallest positive number that is different from the numbers already filled in that are queens' or knights' moves away from that square.

The programs for A274630, there is no canonical definition to state claims against.
-/

/-! ## A274630.P14057740459737230392

`A308201(n)+1`
-/

namespace A274630.P14057740459737230392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308201 n + 1

end

end A274630.P14057740459737230392

/-! ## A274630.P16795244785526466313

`A008619(2*A308201(n))`
-/

namespace A274630.P16795244785526466313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A308201 n).toNat

end

end A274630.P16795244785526466313

/-! ## A274630.P30755791847483017

`A308217(2*A308201(n))`
-/

namespace A274630.P30755791847483017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308217 (2 * A308201 n).toNat

end

end A274630.P30755791847483017

/-! ## A274630.P12269163358323882052

`A008611(3*A308201(n))`
-/

namespace A274630.P12269163358323882052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A308201 n).toNat

end

end A274630.P12269163358323882052

/-! ## A274630.P3438171406003727876

`A008621(2*2*A308201(n))`
-/

namespace A274630.P3438171406003727876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * (2 * A308201 n)).toNat

end

end A274630.P3438171406003727876

/-! ## A274630.P6040660881420924716

`A001316(A001316(n))-(1-A308201(n))`
-/

namespace A274630.P6040660881420924716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n).toNat - (1 - A308201 n)

end

end A274630.P6040660881420924716

/-! ## A274630.P13126575216792314206

`A274640(n)-(A274641(n)-A308201(n))`
-/

namespace A274630.P13126575216792314206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 n - (A274641 n - A308201 n)

end

end A274630.P13126575216792314206

/-! ## A274630.P877752260333581510

`2-(A085478(∑[n])-A308201(n))`
-/

namespace A274630.P877752260333581510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A085478 (∑ j ∈ Finset.range (n + 1), f1 j) - A308201 n)

end

end A274630.P877752260333581510

/-! ## A274630.P3191579371558676230

`1-(A333767(A038573(n))-A308201(n))`
-/

namespace A274630.P3191579371558676230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A333767 (A038573 n).toNat - A308201 n)

end

end A274630.P3191579371558676230

/-! ## A274630.P16641382492610604951

`A000005(2^A308201(n))`
-/

namespace A274630.P16641382492610604951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A308201 n : ℤ))).toNat

end

end A274630.P16641382492610604951

/-!
# A274631: First column of array in A274630.

The programs for A274631, there is no canonical definition to state claims against.
-/

/-! ## A274631.P4970468803804062769

`A274630(1+∑[n])`
-/

namespace A274631.P4970468803804062769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274630 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274631.P4970468803804062769

/-! ## A274631.P15856330535079607050

`A308201(∑[n])+1`
-/

namespace A274631.P15856330535079607050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308201 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A274631.P15856330535079607050

/-! ## A274631.P6259124906382697204

`A274630(A000124(n))%82`
-/

namespace A274631.P6259124906382697204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274630 (A000124 n).toNat) 82

end

end A274631.P6259124906382697204

/-! ## A274631.P8925451727969652306

`A008611(3*A308201(∑[n]))`
-/

namespace A274631.P8925451727969652306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A308201 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A274631.P8925451727969652306

/-! ## A274631.P6364413594055970711

`or(A000007(n), A274630(A000124(n)))`
-/

namespace A274631.P6364413594055970711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A274630 (A000124 n).toNat)

end

end A274631.P6364413594055970711

/-! ## A274631.P3546101111132034663

`A274630(A000124(n))+A008683(lcm(9, n+1))`
-/

namespace A274631.P3546101111132034663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274630 (A000124 n).toNat + A008683 (Nat.lcm 9 (n + 1))

end

end A274631.P3546101111132034663

/-! ## A274631.P6928746109813584766

`A014963(14*a(n-1))*A274630(A000124(n))` with `a(0)=1`
-/

namespace A274631.P6928746109813584766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014963 (14 * a (n - 1)).toNat * A274630 (A000124 n).toNat

end

end A274631.P6928746109813584766

/-! ## A274631.P15296936387683415651

`A007318(A000164(n))*A274630(A000124(n))`
-/

namespace A274631.P15296936387683415651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000164 n).toNat * A274630 (A000124 n).toNat

end

end A274631.P15296936387683415651

/-!
# A274632: First row of array in A274630.

The programs for A274632, there is no canonical definition to state claims against.
-/

/-! ## A274632.P11749459137036266057

`A308882(n)+1`
-/

namespace A274632.P11749459137036266057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308882 n + 1

end

end A274632.P11749459137036266057

/-! ## A274632.P3799866631024840580

`A274630(∑[1+n])`
-/

namespace A274632.P3799866631024840580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274630 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274632.P3799866631024840580

/-! ## A274632.P10225681720447573999

`A308201(∑[n]+n)+1`
-/

namespace A274632.P10225681720447573999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308201 (∑ j ∈ Finset.range (n + 1), f1 j + n) + 1

end

end A274632.P10225681720447573999

/-! ## A274632.P13041316296072011508

`A274630(∑[Δ[n²]-n])%xor(6, 8*n)`
-/

namespace A274632.P13041316296072011508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274630 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (Nat.xor 6 (8 * n) : ℤ)

end

end A274632.P13041316296072011508

/-! ## A274632.P13260054563275403974

`A008619(2*A308882(n))`
-/

namespace A274632.P13260054563275403974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A308882 n).toNat

end

end A274632.P13260054563275403974

/-! ## A274632.P17054790965176520795

`A028242(2*A308882(n))`
-/

namespace A274632.P17054790965176520795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A308882 n).toNat

end

end A274632.P17054790965176520795

/-! ## A274632.P6983256410660863200

`A029579(2*A308882(n))`
-/

namespace A274632.P6983256410660863200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A308882 n).toNat

end

end A274632.P6983256410660863200

/-! ## A274632.P13902660183998505387

`or(char[1], A274630(A000217(n+1)))`
-/

namespace A274632.P13902660183998505387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A274630 (A000217 (n + 1)).toNat)

end

end A274632.P13902660183998505387

/-! ## A274632.P2185718208211065157

`A000027(A274630(∑[Δ[n²]-n]))`
-/

namespace A274632.P2185718208211065157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A274630 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A274632.P2185718208211065157

/-!
# A274633: Main diagonal of array in A274630.

The programs for A274633, there is no canonical definition to state claims against.
-/

/-! ## A274633.P4486895800711571941

`A274630(∑[4*n]+1)`
-/

namespace A274633.P4486895800711571941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274630 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A274633.P4486895800711571941

/-! ## A274633.P17773562931578775467

`A308201(∑[4*n])+1`
-/

namespace A274633.P17773562931578775467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308201 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A274633.P17773562931578775467

/-! ## A274633.P4142322957917958294

`or(char[1], A274630(A001844(n)))`
-/

namespace A274633.P4142322957917958294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A274630 (A001844 n).toNat)

end

end A274633.P4142322957917958294

/-! ## A274633.P9544830222919852632

`A274630(A001844(n))%A271989(n)`
-/

namespace A274633.P9544830222919852632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274630 (A001844 n).toNat) (A271989 n)

end

end A274633.P9544830222919852632

/-! ## A274633.P1272010928630651326

`A007318(C(2, n))*A274630(A001844(n))`
-/

namespace A274633.P1272010928630651326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A274630 (A001844 n).toNat

end

end A274633.P1272010928630651326

/-! ## A274633.P14885699447897122014

`A274630(A001844(n))+A008683(4*(n+1))`
-/

namespace A274633.P14885699447897122014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274630 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A274633.P14885699447897122014

/-! ## A274633.P6041786865137052404

`A274630(A001844(n))/A000040(n+2)%2`
-/

namespace A274633.P6041786865137052404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274630 (A001844 n).toNat : ℚ) / (Int.tmod (A000040 (n + 2)) 2 : ℚ)

end

end A274633.P6041786865137052404

/-! ## A274633.P14024377017899848468

`A274630(A001844(n))^(A000040(n+1)%2)`
-/

namespace A274633.P14024377017899848468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274630 (A001844 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A274633.P14024377017899848468

/-! ## A274633.P9733485120224524635

`A000041(C(2, n+2))*A274630(A001844(n))`
-/

namespace A274633.P9733485120224524635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A274630 (A001844 n).toNat

end

end A274633.P9733485120224524635

/-! ## A274633.P1912303771763660958

`A007318(gcd(n, n+1))*A274630(A001844(n))`
-/

namespace A274633.P1912303771763660958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.gcd n (n + 1)) * A274630 (A001844 n).toNat

end

end A274633.P1912303771763660958

/-!
# A274634: a(n) = n!*A003436(n).

The programs for A274634, the canonical program `A274634.P7133056127629872112` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274634 has offset 1).

The definition of A274634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274634.P7133056127629872112

`(n+1)!*A003436(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A274634

/-- `(n+1)!*A003436(n+1)` -/
def P7133056127629872112.Spec : Prop :=
  ∀ n, P7133056127629872112.a n = A274634 (n + 1)

theorem P7133056127629872112.correct : P7133056127629872112.Spec := by
  intro n
  simp only [A274634, Nat.add_sub_cancel]

end A274634

/-! ## A274634.P7931020986167484618

`record[n!*Δ[A079267(A161680(n))]]`
-/

namespace A274634.P7931020986167484618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079267 (A161680 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274634.P7931020986167484618

namespace A274634

/-- `record[n!*Δ[A079267(A161680(n))]]` -/
def P7931020986167484618.Spec : Prop :=
  ∀ n, P7931020986167484618.a n = A274634 (n + 1)

end A274634

/-! ## A274634.P2572579814663505414

`A000142(n+1)*A003436(n+1)`
-/

namespace A274634.P2572579814663505414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A003436 (n + 1)

end

end A274634.P2572579814663505414

namespace A274634

/-- `A000142(n+1)*A003436(n+1)` -/
def P2572579814663505414.Spec : Prop :=
  ∀ n, P2572579814663505414.a n = A274634 (n + 1)

end A274634

/-! ## A274634.P12748571822949261050

`(n+1)!*Δ[A278990(A028310(n))]`
-/

namespace A274634.P12748571822949261050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278990 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * (f1 (n + 1) - f1 n)

end

end A274634.P12748571822949261050

namespace A274634

/-- `(n+1)!*Δ[A278990(A028310(n))]` -/
def P12748571822949261050.Spec : Prop :=
  ∀ n, P12748571822949261050.a n = A274634 (n + 1)

end A274634

/-! ## A274634.P8126792608414896249

`(A001147(n+1)-A324445(n+1))*A000142(n+1)`
-/

namespace A274634.P8126792608414896249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001147 (n + 1) - A324445 (n + 1)) * A000142 (n + 1)

end

end A274634.P8126792608414896249

namespace A274634

/-- `(A001147(n+1)-A324445(n+1))*A000142(n+1)` -/
def P8126792608414896249.Spec : Prop :=
  ∀ n, P8126792608414896249.a n = A274634 (n + 1)

theorem P8126792608414896249.correct : P8126792608414896249.Spec := by
  intro n
  simp only [A274634, Nat.add_sub_cancel, A274634.P8126792608414896249.a, A274634.P7133056127629872112.a, A000142, A000142.P3272619076580183195.a, A001147, A001147.P13514244325274963007.a, A003436, A003436.P3072430367328676949.a, A324445, A324445.P6189098538037595142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274634

/-!
# A274635: Square array read by antidiagonals: T(m,n) (m>=0, n>=0) = (2^floor(m/2)-1)*(2^ceiling(n/2)-1).

The programs for A274635, there is no canonical definition to state claims against.
-/

/-! ## A274635.P11002542095758212130

`A249072(A180918(n+1)!²)`
-/

namespace A274635.P11002542095758212130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249072 (Nat.factorial (A180918 (n + 1)).toNat ^ 2)

end

end A274635.P11002542095758212130

/-! ## A274635.P16728731962033746016

`A297167(A180918(n+1)^A180918(n+1))`
-/

namespace A274635.P16728731962033746016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (SequenceMachineLib.roundAway ((A180918 (n + 1) : ℚ) ^ (A180918 (n + 1) : ℤ))).toNat

end

end A274635.P16728731962033746016

/-! ## A274635.P9869895554433836837

`A053735(A225816(n))-1`
-/

namespace A274635.P9869895554433836837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A225816 n).toNat - 1

end

end A274635.P9869895554433836837

/-! ## A274635.P210665945924040964

`A052551(n)%A053735(A225816(n))`
-/

namespace A274635.P210665945924040964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052551 n) (A053735 (A225816 n).toNat)

end

end A274635.P210665945924040964

/-! ## A274635.P12657093714533927580

`A052955(n)%A053735(A225816(n))`
-/

namespace A274635.P12657093714533927580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052955 n) (A053735 (A225816 n).toNat)

end

end A274635.P12657093714533927580

/-!
# A274637: Square array read by antidiagonals: T(m,n) (m>=0, n>=0) = (2^floor(m/2)-1)*(2^ceiling(n/2)+1).

The programs for A274637, there is no canonical definition to state claims against.
-/

/-! ## A274637.P13632394763341891600

`A212551(n)*A265404(A015237(n))`
-/

namespace A274637.P13632394763341891600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n * A265404 (A015237 n).toNat

end

end A274637.P13632394763341891600

/-! ## A274637.P11658372517956188085

`A116504(∏{d}[A117184(n), #])`
-/

namespace A274637.P11658372517956188085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116504 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A274637.P11658372517956188085

/-! ## A274637.P11064295121951620914

`A001221(abs(3*2^n-4))*A212551(n)`
-/

namespace A274637.P11064295121951620914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 |(3 * 2 ^ n : ℤ) - 4|.toNat * A212551 n

end

end A274637.P11064295121951620914

/-! ## A274637.P1879687468793797133

`A001222(A312462(n)^A212551(n))`
-/

namespace A274637.P1879687468793797133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A312462 n : ℚ) ^ (A212551 n : ℤ))).toNat

end

end A274637.P1879687468793797133

/-! ## A274637.P3934959947987469449

`A001222(A000005(A131128(n))^A212551(n))`
-/

namespace A274637.P3934959947987469449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A000005 (A131128 n).toNat : ℚ) ^ (A212551 n : ℤ))).toNat

end

end A274637.P3934959947987469449

/-!
# A274638: Main diagonal of A274637.

The programs for A274638, the canonical program `A274638.P12427839959905943275` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274638 has offset 0).

The definition of A274638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274638.P1097861374282361637

`ogf((3x^2-4x^3)/(1-3x+6x^3-4x^4))`
-/

namespace A274638.P1097861374282361637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, -4] [1, -3, 0, 6, -4] n

end

end A274638.P1097861374282361637

namespace A274638

/-- `ogf((3x^2-4x^3)/(1-3x+6x^3-4x^4))` -/
def P1097861374282361637.Spec : Prop :=
  ∀ n, P1097861374282361637.a n = A274638 n

end A274638

/-! ## A274638.P12427839959905943275

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A274638

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P12427839959905943275.Spec : Prop :=
  ∀ n, P12427839959905943275.a n = A274638 n

theorem P12427839959905943275.correct : P12427839959905943275.Spec := by
  intro n
  simp only [A274638]

end A274638

/-! ## A274638.P5434251610327801792

`A007179(n+1)-1`
-/

namespace A274638.P5434251610327801792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (n + 1) - 1

end

end A274638.P5434251610327801792

namespace A274638

/-- `A007179(n+1)-1` -/
def P5434251610327801792.Spec : Prop :=
  ∀ n, P5434251610327801792.a n = A274638 n

end A274638

/-! ## A274638.P5083279332338353773

`∑[A113980(n+1)]-1`
-/

namespace A274638.P5083279332338353773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A274638.P5083279332338353773

namespace A274638

/-- `∑[A113980(n+1)]-1` -/
def P5083279332338353773.Spec : Prop :=
  ∀ n, P5083279332338353773.a n = A274638 n

end A274638

/-! ## A274638.P464355588065377003

`A000225(n)-Δ[2^floor(n/2)]`
-/

namespace A274638.P464355588065377003
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A274638.P464355588065377003

namespace A274638

/-- `A000225(n)-Δ[2^floor(n/2)]` -/
def P464355588065377003.Spec : Prop :=
  ∀ n, P464355588065377003.a n = (A274638 n : ℚ)

end A274638

/-! ## A274638.P14631825265219306666

`A255047(n)-A131575(n)`
-/

namespace A274638.P14631825265219306666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n - A131575 n

end

end A274638.P14631825265219306666

namespace A274638

/-- `A255047(n)-A131575(n)` -/
def P14631825265219306666.Spec : Prop :=
  ∀ n, P14631825265219306666.a n = A274638 n

end A274638

/-! ## A274638.P132923148336690372

`A274230(n)+A056453(n+1)`
-/

namespace A274638.P132923148336690372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 n + A056453 (n + 1)

end

end A274638.P132923148336690372

namespace A274638

/-- `A274230(n)+A056453(n+1)` -/
def P132923148336690372.Spec : Prop :=
  ∀ n, P132923148336690372.a n = A274638 n

end A274638

/-! ## A274638.P15923122659342473830

`A052957(n)-(A016116(n)+1)`
-/

namespace A274638.P15923122659342473830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052957 n - (A016116 n + 1)

end

end A274638.P15923122659342473830

namespace A274638

/-- `A052957(n)-(A016116(n)+1)` -/
def P15923122659342473830.Spec : Prop :=
  ∀ n, P15923122659342473830.a n = A274638 n

end A274638

/-! ## A274638.P2720257761539977739

`A016116(n)+A233411(n)-1`
-/

namespace A274638.P2720257761539977739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + (A233411 n - 1)

end

end A274638.P2720257761539977739

namespace A274638

/-- `A016116(n)+A233411(n)-1` -/
def P2720257761539977739.Spec : Prop :=
  ∀ n, P2720257761539977739.a n = A274638 n

end A274638

/-! ## A274638.P725269222456488386

`A052551(n)+A274230(n)-1`
-/

namespace A274638.P725269222456488386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n + (A274230 n - 1)

end

end A274638.P725269222456488386

namespace A274638

/-- `A052551(n)+A274230(n)-1` -/
def P725269222456488386.Spec : Prop :=
  ∀ n, P725269222456488386.a n = A274638 n

end A274638

/-! ## A274638.P4460734045693764622

`A000079(n)-(Δ[A016116(n)]+1)`
-/

namespace A274638.P4460734045693764622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f1 (n + 1) - f1 n + 1)

end

end A274638.P4460734045693764622

namespace A274638

/-- `A000079(n)-(Δ[A016116(n)]+1)` -/
def P4460734045693764622.Spec : Prop :=
  ∀ n, P4460734045693764622.a n = A274638 n

end A274638

/-! ## A274638.P8251394105688340140

`A097895(n+1)+A000071(n+1)`
-/

namespace A274638.P8251394105688340140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097895 (n + 1) + A000071 (n + 1)

end

end A274638.P8251394105688340140

namespace A274638

/-- `A097895(n+1)+A000071(n+1)` -/
def P8251394105688340140.Spec : Prop :=
  ∀ n, P8251394105688340140.a n = A274638 n

end A274638

/-! ## A274638.P14824751143036942420

`A056309(n+1)+1-A060546(n)`
-/

namespace A274638.P14824751143036942420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056309 (n + 1) + (1 - A060546 n)

end

end A274638.P14824751143036942420

namespace A274638

/-- `A056309(n+1)+1-A060546(n)` -/
def P14824751143036942420.Spec : Prop :=
  ∀ n, P14824751143036942420.a n = A274638 n

end A274638

/-! ## A274638.P2187986415957581792

`A153881(n+2)+A007179(n+1)`
-/

namespace A274638.P2187986415957581792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A007179 (n + 1)

end

end A274638.P2187986415957581792

namespace A274638

/-- `A153881(n+2)+A007179(n+1)` -/
def P2187986415957581792.Spec : Prop :=
  ∀ n, P2187986415957581792.a n = A274638 n

end A274638

/-! ## A274638.P6281532218285737189

`A056326(n+2)-A016116(n+1)`
-/

namespace A274638.P6281532218285737189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (n + 2) - A016116 (n + 1)

end

end A274638.P6281532218285737189

namespace A274638

/-- `A056326(n+2)-A016116(n+1)` -/
def P6281532218285737189.Spec : Prop :=
  ∀ n, P6281532218285737189.a n = A274638 n

end A274638

/-! ## A274638.P12855443304156158800

`(A016116(n)-1)*A051032(n+1)`
-/

namespace A274638.P12855443304156158800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016116 n - 1) * A051032 (n + 1)

end

end A274638.P12855443304156158800

namespace A274638

/-- `(A016116(n)-1)*A051032(n+1)` -/
def P12855443304156158800.Spec : Prop :=
  ∀ n, P12855443304156158800.a n = A274638 n

end A274638

/-! ## A274638.P9990147566874602281

`A233411(n)+A056453(n+1)/2`
-/

namespace A274638.P9990147566874602281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233411 n : ℚ) + (A056453 (n + 1) : ℚ) / 2

end

end A274638.P9990147566874602281

namespace A274638

/-- `A233411(n)+A056453(n+1)/2` -/
def P9990147566874602281.Spec : Prop :=
  ∀ n, P9990147566874602281.a n = (A274638 n : ℚ)

end A274638

/-! ## A274638.P2051411694579935964

`A005418(n+2)-(A016116(n+1)+1)`
-/

namespace A274638.P2051411694579935964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 2) - (A016116 (n + 1) + 1)

end

end A274638.P2051411694579935964

namespace A274638

/-- `A005418(n+2)-(A016116(n+1)+1)` -/
def P2051411694579935964.Spec : Prop :=
  ∀ n, P2051411694579935964.a n = A274638 n

end A274638

/-! ## A274638.P6755524002053546937

`A014236(n+1)/2-1`
-/

namespace A274638.P6755524002053546937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014236 (n + 1) : ℚ) / 2 - 1

end

end A274638.P6755524002053546937

namespace A274638

/-- `A014236(n+1)/2-1` -/
def P6755524002053546937.Spec : Prop :=
  ∀ n, P6755524002053546937.a n = (A274638 n : ℚ)

end A274638

/-! ## A274638.P7502736028247178281

`A089633((n+1)*floor(n/2))`
-/

namespace A274638.P7502736028247178281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 ((n + 1 : ℤ) * ⌊(n : ℚ) / 2⌋).toNat

end

end A274638.P7502736028247178281

namespace A274638

/-- `A089633((n+1)*floor(n/2))` -/
def P7502736028247178281.Spec : Prop :=
  ∀ n, P7502736028247178281.a n = A274638 n

end A274638

/-!
# A274640: Counterclockwise square spiral constructed by greedy algorithm, so that each row, column, and diagonal contains distinct numbers.

The programs for A274640, there is no canonical definition to state claims against.
-/

/-! ## A274640.P1120940418952556148

`A274641(n)+1`
-/

namespace A274640.P1120940418952556148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 n + 1

end

end A274640.P1120940418952556148

/-! ## A274640.P10999571013826416729

`A008619(2*A274641(n))`
-/

namespace A274640.P10999571013826416729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A274641 n).toNat

end

end A274640.P10999571013826416729

/-! ## A274640.P2190976462531024635

`A029579(2*A274641(n))`
-/

namespace A274640.P2190976462531024635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A274641 n).toNat

end

end A274640.P2190976462531024635

/-! ## A274640.P2574084576195620562

`A080513(2*A274641(n))`
-/

namespace A274640.P2574084576195620562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A274641 n).toNat

end

end A274640.P2574084576195620562

/-! ## A274640.P10921829985727535549

`A008611(3*A274641(n))`
-/

namespace A274640.P10921829985727535549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A274641 n).toNat

end

end A274640.P10921829985727535549

/-! ## A274640.P15427855862567420369

`A008620(3*A274641(n))`
-/

namespace A274640.P15427855862567420369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A274641 n).toNat

end

end A274640.P15427855862567420369

/-! ## A274640.P5185290031501069827

`A110659(4*A274641(n))`
-/

namespace A274640.P5185290031501069827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (4 * A274641 n).toNat

end

end A274640.P5185290031501069827

/-! ## A274640.P1318339610342938776

`A000124(n)-(∑[n]-A274641(n))`
-/

namespace A274640.P1318339610342938776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A274641 n)

end

end A274640.P1318339610342938776

/-! ## A274640.P16979981791640981556

`A001316(A001316(n))-(1-A274641(n))`
-/

namespace A274640.P16979981791640981556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n).toNat - (1 - A274641 n)

end

end A274640.P16979981791640981556

/-! ## A274640.P16170410716979152335

`A057174(2*A274641(n))-A274641(n)`
-/

namespace A274640.P16170410716979152335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (2 * A274641 n).toNat - A274641 n

end

end A274640.P16170410716979152335

/-! ## A274640.P907556005899488821

`A040000(n)-(A057427(n)-A274641(n))`
-/

namespace A274640.P907556005899488821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n - (A057427 n - A274641 n)

end

end A274640.P907556005899488821

/-! ## A274640.P13643849024175789674

`1-(A308896(A002378(n))-A274641(n))`
-/

namespace A274640.P13643849024175789674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A308896 (A002378 n).toNat - A274641 n)

end

end A274640.P13643849024175789674

/-! ## A274640.P10796380270158688784

`A000005(2^A274641(n))`
-/

namespace A274640.P10796380270158688784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A274641 n : ℤ))).toNat

end

end A274640.P10796380270158688784

/-! ## A274640.P3682408744442565185

`1-(A337108(A035608(n))-A274641(n))`
-/

namespace A274640.P3682408744442565185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A337108 (A035608 n).toNat - A274641 n)

end

end A274640.P3682408744442565185

/-! ## A274640.P2813711910920191527

`1-(A274641(A273059(n))-A274641(n))`
-/

namespace A274640.P2813711910920191527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A274641 (A273059 n).toNat - A274641 n)

end

end A274640.P2813711910920191527

/-!
# A274641: Counterclockwise square spiral constructed by greedy algorithm, so that each row, column, and diagonal contains distinct numbers. Start with 0 (so in this version a(n) = A274640(n) - 1).

The programs for A274641, there is no canonical definition to state claims against.
-/

/-! ## A274641.P8558177715659332876

`A274640(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A274641.P8558177715659332876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 n - 1

end

end A274641.P8558177715659332876

/-! ## A274641.P11818910346837140562

`A023443(A274640(n))`
-/

namespace A274641.P11818910346837140562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274640 n).toNat

end

end A274641.P11818910346837140562

/-! ## A274641.P1096835475322641744

`A023444(A274640(n)+1)`
-/

namespace A274641.P1096835475322641744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A274640 n + 1).toNat

end

end A274641.P1096835475322641744

/-! ## A274641.P14419925354347367020

`A065423(2*A274640(n))`
-/

namespace A274641.P14419925354347367020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A274640 n).toNat

end

end A274641.P14419925354347367020

/-! ## A274641.P3300159203793337051

`A225058(4*A274640(n))`
-/

namespace A274641.P3300159203793337051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 (4 * A274640 n).toNat

end

end A274641.P3300159203793337051

/-! ## A274641.P1497147774286949119

`A063277(2*(A274640(n)+1))`
-/

namespace A274641.P1497147774286949119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063277 (2 * (A274640 n + 1)).toNat

end

end A274641.P1497147774286949119

/-! ## A274641.P11466487562196035594

`A063277(A274640(n)+A274640(n)+2)`
-/

namespace A274641.P11466487562196035594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063277 (A274640 n + (A274640 n + 2)).toNat

end

end A274641.P11466487562196035594

/-! ## A274641.P111977520121952899

`abs(A274640(n)+A153881(n+2))`
-/

namespace A274641.P111977520121952899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274640 n + A153881 (n + 2)|

end

end A274641.P111977520121952899

/-! ## A274641.P8749871109977587261

`A214526(A274640(n)²)`
-/

namespace A274641.P8749871109977587261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A274640 n ^ 2).toNat

end

end A274641.P8749871109977587261

/-! ## A274641.P13663540166091309873

`A214526(A274640(n)*A274640(n))`
-/

namespace A274641.P13663540166091309873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A274640 n * A274640 n).toNat

end

end A274641.P13663540166091309873

/-! ## A274641.P4123065629627368946

`A337108(A274640(n)²)`
-/

namespace A274641.P4123065629627368946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337108 (A274640 n ^ 2).toNat

end

end A274641.P4123065629627368946

/-! ## A274641.P4757573617490236786

`A337108(A274640(n)*A274640(n))`
-/

namespace A274641.P4757573617490236786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337108 (A274640 n * A274640 n).toNat

end

end A274641.P4757573617490236786

/-! ## A274641.P528800464261821772

`A070198(n)%A274640(n)`
-/

namespace A274641.P528800464261821772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A274640 n)

end

end A274641.P528800464261821772

/-! ## A274641.P8719177141769590301

`A079782(n+1)%A274640(n)`
-/

namespace A274641.P8719177141769590301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A274640 n)

end

end A274641.P8719177141769590301

/-! ## A274641.P3149099060597351299

`A083685(n+1)%A274640(n)`
-/

namespace A274641.P3149099060597351299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A274640 n)

end

end A274641.P3149099060597351299

/-! ## A274641.P1911676225725873587

`A121934(n+1)%A274640(n)`
-/

namespace A274641.P1911676225725873587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A274640 n)

end

end A274641.P1911676225725873587

/-! ## A274641.P6060992036371714931

`A030494(n+1)%A274640(n)`
-/

namespace A274641.P6060992036371714931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A274640 n)

end

end A274641.P6060992036371714931

/-! ## A274641.P17385635508167612592

`A072828(n+1)%A274640(n)`
-/

namespace A274641.P17385635508167612592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A274640 n)

end

end A274641.P17385635508167612592

/-! ## A274641.P861590665592724730

`A087891(2^A274640(n))`
-/

namespace A274641.P861590665592724730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087891 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A274640 n : ℤ))).toNat

end

end A274641.P861590665592724730

/-! ## A274641.P15345255763355505045

`A337108(A085046(A274640(A337108(A002378(n)))))`
-/

namespace A274641.P15345255763355505045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337108 (A085046 (A274640 (A337108 (A002378 n).toNat).toNat).toNat).toNat

end

end A274641.P15345255763355505045

/-!
# A274642: Numbers of the form 4^k*(8*j+7) that have exactly three partitions into four positive squares.

The programs for A274642, the canonical program `A274642.P13044057991139761178` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274642 has offset 1).

The definition of A274642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274642.P13044057991139761178

`4*a(n-3)` with `a(0)=28, a(1)=55, a(2)=60, a(3)=79, a(4)=92, a(5)=95, a(6)=112, a(7)=240, a(8)=368`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A274642

/-- `4*a(n-3)` -/
def P13044057991139761178.Spec : Prop :=
  ∀ n, (P13044057991139761178.a n : ℤ) = A274642 (n + 1)

theorem P13044057991139761178.correct : P13044057991139761178.Spec := by
  intro n
  simp only [A274642, Nat.add_sub_cancel]

end A274642

/-! ## A274642.P17698168305538349683

`∩[A025359(n+1), A245022(n+1)]`
-/

namespace A274642.P17698168305538349683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274642.P17698168305538349683

namespace A274642

/-- `∩[A025359(n+1), A245022(n+1)]` -/
def P17698168305538349683.Spec : Prop :=
  ∀ n, (P17698168305538349683.a n : ℤ) = A274642 (n + 1)

end A274642

/-! ## A274642.P15541840099490851033

`∩[A004215(n+1), A025359(n+1)]`
-/

namespace A274642.P15541840099490851033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274642.P15541840099490851033

namespace A274642

/-- `∩[A004215(n+1), A025359(n+1)]` -/
def P15541840099490851033.Spec : Prop :=
  ∀ n, (P15541840099490851033.a n : ℤ) = A274642 (n + 1)

end A274642

/-! ## A274642.P14602562007738054601

`∩[A025359(n+1), A214328(n+1)]`
-/

namespace A274642.P14602562007738054601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274642.P14602562007738054601

namespace A274642

/-- `∩[A025359(n+1), A214328(n+1)]` -/
def P14602562007738054601.Spec : Prop :=
  ∀ n, (P14602562007738054601.a n : ℤ) = A274642 (n + 1)

end A274642

/-! ## A274642.P5789216975866741397

`∩[A004215(n+1), A245022(n+1)]`
-/

namespace A274642.P5789216975866741397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274642.P5789216975866741397

namespace A274642

/-- `∩[A004215(n+1), A245022(n+1)]` -/
def P5789216975866741397.Spec : Prop :=
  ∀ n, (P5789216975866741397.a n : ℤ) = A274642 (n + 1)

end A274642

/-!
# A274647: A variation on Recamán's sequence (A005132): to get a(n), we first try to subtract n from a(n-1): a(n) = a(n-1)-n if positive and not already in the sequence; if not then we try to add n: a(n) = a(n-1)+n if not already in the sequence; if this fails we try to subtract 2n from a(n-1), or to add 2n to a(n-1), or to subtract 3n, or to add 3n, etc., until one of these produces a positive number not already in the sequence.

The programs for A274647, there is no canonical definition to state claims against.
-/

/-! ## A274647.P5127051648510866148

`∑[n*A276438(C(2, n)+n)]`
-/

namespace A274647.P5127051648510866148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276438 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274647.P5127051648510866148

/-! ## A274647.P11840539073243492309

`∑[n*A276438(gcd(n, C(2, n)))]`
-/

namespace A274647.P11840539073243492309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276438 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274647.P11840539073243492309

/-! ## A274647.P14687047352771538948

`∑[n*A276438(A028310(n))]`
-/

namespace A274647.P14687047352771538948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276438 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274647.P14687047352771538948

/-! ## A274647.P3994180083856575229

`(n+1)*A276439(n)-∑[A276439(n)]`
-/

namespace A274647.P3994180083856575229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A276439 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274647.P3994180083856575229

/-! ## A274647.P1690563749710158803

`∑[n*A276438(A233583(n+1))]`
-/

namespace A274647.P1690563749710158803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276438 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274647.P1690563749710158803

/-!
# A274648: A variation on Recamán's sequence (A005132): a(n) is the first positive number of the form a(n-1)-n*k, k>0 not already in the sequence; and if no such number exists, then a(n) is the first number of the form a(n-1)+n*k, k>0 not already in the sequence.

The programs for A274648, there is no canonical definition to state claims against.
-/

/-! ## A274648.P3317607949869852860

`A350578(A008554(n+1))%57`
-/

namespace A274648.P3317607949869852860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350578 (A008554 (n + 1)).toNat) 57

end

end A274648.P3317607949869852860

/-! ## A274648.P10277483414237227778

`A350578(A229621(n+1))%57`
-/

namespace A274648.P10277483414237227778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350578 (A229621 (n + 1)).toNat) 57

end

end A274648.P10277483414237227778

/-! ## A274648.P14469153092346107870

`A113880(n)%A000194(A031553(n+1))`
-/

namespace A274648.P14469153092346107870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113880 n) (A000194 (A031553 (n + 1)).toNat)

end

end A274648.P14469153092346107870

/-! ## A274648.P17177168286551571745

`A274647(n)%A000194(A031553(n+1))`
-/

namespace A274648.P17177168286551571745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274647 n) (A000194 (A031553 (n + 1)).toNat)

end

end A274648.P17177168286551571745

/-! ## A274648.P6826756849921212585

`A005132(n)%A346125(A294675(n+1))`
-/

namespace A274648.P6826756849921212585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005132 n) (A346125 (A294675 (n + 1)).toNat)

end

end A274648.P6826756849921212585

/-!
# A274650: Triangle read by rows: T(n,k), (0 <= k <= n), in which each term is the least nonnegative integer such that no row, column, diagonal, or antidiagonal contains a repeated term.

The programs for A274650, there is no canonical definition to state claims against.
-/

/-! ## A274650.P17265871371711936217

`A274651(n+1)-1`
-/

namespace A274650.P17265871371711936217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274651 (n + 1) - 1

end

end A274650.P17265871371711936217

/-! ## A274650.P4209783236022326994

`A023443(A274651(n+1))`
-/

namespace A274650.P4209783236022326994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274651 (n + 1)).toNat

end

end A274650.P4209783236022326994

/-! ## A274650.P2319955358039291536

`A046667(2*A274651(n+1))`
-/

namespace A274650.P2319955358039291536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A274651 (n + 1)).toNat

end

end A274650.P2319955358039291536

/-! ## A274650.P264924217871201089

`A267182(2*A274651(n+1))`
-/

namespace A274650.P264924217871201089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (2 * A274651 (n + 1)).toNat

end

end A274650.P264924217871201089

/-! ## A274650.P11115422521113089015

`A136602(A274651(n+1)%(n+2))`
-/

namespace A274650.P11115422521113089015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136602 (Int.tmod (A274651 (n + 1)) (n + 2 : ℤ)).toNat

end

end A274650.P11115422521113089015

/-! ## A274650.P15696601655219608465

`abs(A274651(n+1)+A001489(n+1)+n)`
-/

namespace A274650.P15696601655219608465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274651 (n + 1) + (A001489 (n + 1) + (n : ℤ))|

end

end A274650.P15696601655219608465

/-! ## A274650.P12622792028357744340

`A302050(A000040(n+1))+A274651(n+1)`
-/

namespace A274650.P12622792028357744340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A000040 (n + 1)).toNat + A274651 (n + 1)

end

end A274650.P12622792028357744340

/-! ## A274650.P16003307472448008041

`A057918(A274651(n+1)²)`
-/

namespace A274650.P16003307472448008041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A274651 (n + 1) ^ 2).toNat

end

end A274650.P16003307472448008041

/-! ## A274650.P13846170685295405785

`A095861(2*A274651(n+1)²)`
-/

namespace A274650.P13846170685295405785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (2 * A274651 (n + 1) ^ 2).toNat

end

end A274650.P13846170685295405785

/-! ## A274650.P3025051433995934881

`A095861(A005187(A274651(n+1)²))`
-/

namespace A274650.P3025051433995934881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A005187 (A274651 (n + 1) ^ 2).toNat).toNat

end

end A274650.P3025051433995934881

/-! ## A274650.P1123118947507798059

`(A274651(n+1)+A048578(n+1))%A048578(n)`
-/

namespace A274650.P1123118947507798059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274651 (n + 1) + A048578 (n + 1)) (A048578 n)

end

end A274650.P1123118947507798059

/-! ## A274650.P1717076364325771109

`A070198(n)%A274651(n+1)`
-/

namespace A274650.P1717076364325771109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A274651 (n + 1))

end

end A274650.P1717076364325771109

/-! ## A274650.P1558709069118597826

`A079782(n+1)%A274651(n+1)`
-/

namespace A274650.P1558709069118597826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A274651 (n + 1))

end

end A274650.P1558709069118597826

/-! ## A274650.P10731083509629575224

`A083685(n+1)%A274651(n+1)`
-/

namespace A274650.P10731083509629575224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A274651 (n + 1))

end

end A274650.P10731083509629575224

/-! ## A274650.P10688530545709822125

`A121934(n+1)%A274651(n+1)`
-/

namespace A274650.P10688530545709822125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A274651 (n + 1))

end

end A274650.P10688530545709822125

/-! ## A274650.P5932371509147712099

`A321804(record[A321802(n)])+A274651(n+1)`
-/

namespace A274650.P5932371509147712099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A274651 (n + 1)

end

end A274650.P5932371509147712099

/-! ## A274650.P14139298497793818098

`A030494(n+1)%A274651(n+1)`
-/

namespace A274650.P14139298497793818098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A274651 (n + 1))

end

end A274650.P14139298497793818098

/-! ## A274650.P8363652410391888201

`A072828(n+1)%A274651(n+1)`
-/

namespace A274650.P8363652410391888201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A274651 (n + 1))

end

end A274650.P8363652410391888201

/-!
# A274651: Triangle read by rows: T(n,k), (1<=k<=n), in which each term is the least positive integer such that no row, column, diagonal, or antidiagonal contains a repeated term.

The programs for A274651, there is no canonical definition to state claims against.
-/

/-! ## A274651.P15761390386463182964

`A274650(n)+1`
-/

namespace A274651.P15761390386463182964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274650 n + 1

end

end A274651.P15761390386463182964

/-! ## A274651.P16708835003269985814

`A008619(2*A274650(n))`
-/

namespace A274651.P16708835003269985814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A274650 n).toNat

end

end A274651.P16708835003269985814

/-! ## A274651.P16172632941409181598

`A266981(2*A274650(n))`
-/

namespace A274651.P16172632941409181598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 (2 * A274650 n).toNat

end

end A274651.P16172632941409181598

/-! ## A274651.P16079886052863207643

`A008611(3*A274650(n))`
-/

namespace A274651.P16079886052863207643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A274650 n).toNat

end

end A274651.P16079886052863207643

/-! ## A274651.P4890354499386639183

`A008620(3*A274650(n))`
-/

namespace A274651.P4890354499386639183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A274650 n).toNat

end

end A274651.P4890354499386639183

/-! ## A274651.P1557934913370716975

`2-(A020985(n)²-A274650(n))`
-/

namespace A274651.P1557934913370716975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A020985 n ^ 2 - A274650 n)

end

end A274651.P1557934913370716975

/-! ## A274651.P4493554817628744669

`A020639(A016825(n))-(1-A274650(n))`
-/

namespace A274651.P4493554817628744669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016825 n).toNat - (1 - A274650 n)

end

end A274651.P4493554817628744669

/-! ## A274651.P14142298235339222265

`A001844(n)-(∑[A008586(n)]-A274650(n))`
-/

namespace A274651.P14142298235339222265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - (∑ j ∈ Finset.range (n + 1), f1 j - A274650 n)

end

end A274651.P14142298235339222265

/-! ## A274651.P7337353664928297719

`A001844(n)-(A008586(∑[n])-A274650(n))`
-/

namespace A274651.P7337353664928297719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - (A008586 (∑ j ∈ Finset.range (n + 1), f1 j) - A274650 n)

end

end A274651.P7337353664928297719

/-! ## A274651.P7000873199670239388

`1-(A274650(A046092(n))-A274650(n))`
-/

namespace A274651.P7000873199670239388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A274650 (A046092 n).toNat - A274650 n)

end

end A274651.P7000873199670239388

/-! ## A274651.P15498565403573814721

`2-(A288531(A001844(n))-A274650(n))`
-/

namespace A274651.P15498565403573814721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A288531 (A001844 n).toNat - A274650 n)

end

end A274651.P15498565403573814721

/-!
# A274652: Sum of n-th antidiagonal of the square array A274528.

The programs for A274652, there is no canonical definition to state claims against.
-/

/-! ## A274652.P2527036521364661736

`A274530(n+1)-n-1`
-/

namespace A274652.P2527036521364661736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274530 (n + 1) - (n : ℤ) - 1

end

end A274652.P2527036521364661736

/-! ## A274652.P13564987910892504992

`A274530(n+1)-(n+1)`
-/

namespace A274652.P13564987910892504992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274530 (n + 1) - (n + 1 : ℤ)

end

end A274652.P13564987910892504992

/-! ## A274652.P15656178372408450012

`A023443(A274530(n+1)-n)`
-/

namespace A274652.P15656178372408450012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274530 (n + 1) - (n : ℤ)).toNat

end

end A274652.P15656178372408450012

/-! ## A274652.P9097057246125030878

`A199969(A274530(n+1)-n)`
-/

namespace A274652.P9097057246125030878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A274530 (n + 1) - (n : ℤ)).toNat

end

end A274652.P9097057246125030878

/-! ## A274652.P5896648114129973479

`A023443(A274530(n+1))+A001489(n)`
-/

namespace A274652.P5896648114129973479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274530 (n + 1)).toNat + A001489 n

end

end A274652.P5896648114129973479

/-! ## A274652.P453229652522488878

`A023444(A274530(n+1)+A024000(n))`
-/

namespace A274652.P453229652522488878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A274530 (n + 1) + A024000 n).toNat

end

end A274652.P453229652522488878

/-!
# A274653: Numerators of coefficients of z^n/n! for the expansion of Fricke's hypergeometric function F_1(1/2,1/2;z).

The programs for A274653, there is no canonical definition to state claims against.
-/

/-! ## A274653.P18254648333396586911

`A078791(n)/gcd(A078791(n), A119349(n))`
-/

namespace A274653.P18254648333396586911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078791 n : ℚ) / (Int.gcd (A078791 n) (A119349 n) : ℚ)

end

end A274653.P18254648333396586911

/-! ## A274653.P11543126270397759724

`A101211(A276371(n))*A274655(n)`
-/

namespace A274653.P11543126270397759724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (A276371 n).toNat * A274655 n

end

end A274653.P11543126270397759724

/-!
# A274654: Denominators of coefficients of z^n/n! for the expansion of Fricke's hypergeometric function F_1(1/2,1/2;z).

The programs for A274654, there is no canonical definition to state claims against.
-/

/-! ## A274654.P15832465181615322626

`A034008(A023416(n)+A008486(n))`
-/

namespace A274654.P15832465181615322626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A023416 n + A008486 n).toNat

end

end A274654.P15832465181615322626

/-! ## A274654.P3809234391818271694

`A034008(A080791(n)+A008585(n))`
-/

namespace A274654.P3809234391818271694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A080791 n + A008585 n).toNat

end

end A274654.P3809234391818271694

/-! ## A274654.P1372485255004214196

`A166444(A023416(n)+A008486(n))`
-/

namespace A274654.P1372485255004214196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A023416 n + A008486 n).toNat

end

end A274654.P1372485255004214196

/-! ## A274654.P12176375767245043731

`A166444(A023416(n)+A008585(n))`
-/

namespace A274654.P12176375767245043731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A023416 n + A008585 n).toNat

end

end A274654.P12176375767245043731

/-! ## A274654.P9807392074717288688

`A166444(A080791(n)+A008486(n))`
-/

namespace A274654.P9807392074717288688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A080791 n + A008486 n).toNat

end

end A274654.P9807392074717288688

/-!
# A274655: Numerators of coefficients of z^n for the expansion of Fricke's hypergeometric function F_1(1/2,1/2;z).

The programs for A274655, there is no canonical definition to state claims against.
-/

/-! ## A274655.P17638688914510278054

`A274653(n)/∏{e}[A274653(n), #]`
-/

namespace A274655.P17638688914510278054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274653 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274653 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ)

end

end A274655.P17638688914510278054

/-! ## A274655.P17409963974257867420

`A274653(n)/A301331(A001250(n))`
-/

namespace A274655.P17409963974257867420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274653 n : ℚ) / (A301331 (A001250 n).toNat : ℚ)

end

end A274655.P17409963974257867420

/-!
# A274656: Denominators of coefficients of z^n for the expansion of Fricke's hypergeometric function F_1(1/2,1/2;z).

The programs for A274656, there is no canonical definition to state claims against.
-/

/-! ## A274656.P11850530514589548965

`A000010(A056982(n))*A003274(n)`
-/

namespace A274656.P11850530514589548965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A056982 n).toNat * A003274 n

end

end A274656.P11850530514589548965

/-! ## A274656.P8926581690669167000

`A175185(A184932(n))*A274654(n)`
-/

namespace A274656.P8926581690669167000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175185 (A184932 n).toNat * A274654 n

end

end A274656.P8926581690669167000

/-!
# A274657: Numerators of the coefficients of z^n/n! for the expansion of hypergeometric([1/2,1/2],[1];z).

The programs for A274657, there is no canonical definition to state claims against.
-/

/-! ## A274657.P12142397520080992827

`(2*n-1)*a(n-1)/gcd(n, a(n-1))*comp[2*(n+1)]` with `a(0)=1`
-/

namespace A274657.P12142397520080992827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n : ℤ) - 1 : ℚ) * (a (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ)

end

end A274657.P12142397520080992827

/-! ## A274657.P4000483223095222912

`∏[abs(1-2*n)]*A001790(n)`
-/

namespace A274657.P4000483223095222912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001790 n

end

end A274657.P4000483223095222912

/-! ## A274657.P13745792515234722138

`gcd(C(2*n, n), ∏[1-2*n])*A001147(n)`
-/

namespace A274657.P13745792515234722138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (Nat.choose (2 * n) n : ℤ) (∏ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A001147 n

end

end A274657.P13745792515234722138

/-! ## A274657.P16920004523581982556

`A092563(n)/A001316(n)`
-/

namespace A274657.P16920004523581982556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092563 n : ℚ) / (A001316 n : ℚ)

end

end A274657.P16920004523581982556

/-! ## A274657.P745646234981738501

`A001790(n)²*A049606(n)`
-/

namespace A274657.P745646234981738501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n ^ 2 * A049606 n

end

end A274657.P745646234981738501

/-!
# A274658: Irregular triangle which lists in row n the divisors of 2*n+1.

The programs for A274658, there is no canonical definition to state claims against.
-/

/-! ## A274658.P13538377917422251700

`abs(A274660(n))`
-/

namespace A274658.P13538377917422251700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274660 n|

end

end A274658.P13538377917422251700

/-! ## A274658.P257148999847113070

`A000188(A274660(n)²)`
-/

namespace A274658.P257148999847113070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A274660 n ^ 2).toNat

end

end A274658.P257148999847113070

/-! ## A274658.P6484602226047898291

`A000196(A274660(n)²)`
-/

namespace A274658.P6484602226047898291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A274660 n ^ 2).toNat

end

end A274658.P6484602226047898291

/-! ## A274658.P455040629992846125

`A019554(A274660(n)²)`
-/

namespace A274658.P455040629992846125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A274660 n ^ 2).toNat

end

end A274658.P455040629992846125

/-! ## A274658.P1639878117130536491

`A000265(lcm(2, A274660(n)))`
-/

namespace A274658.P1639878117130536491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lcm 2 (A274660 n))

end

end A274658.P1639878117130536491

/-! ## A274658.P6921535600498085869

`gcd(A000038(n), A274660(n))`
-/

namespace A274658.P6921535600498085869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A274660 n)

end

end A274658.P6921535600498085869

/-! ## A274658.P7416566332436810814

`filter[A187954(n), A000035(#)]`
-/

namespace A274658.P7416566332436810814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A274658.P7416566332436810814

/-! ## A274658.P5497295484865604578

`filter[A187954(n), A097325(#)]`
-/

namespace A274658.P5497295484865604578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A274658.P5497295484865604578

/-! ## A274658.P16968368031464708859

`filter[A187954(n), A098725(#)]`
-/

namespace A274658.P16968368031464708859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A274658.P16968368031464708859

/-! ## A274658.P7027203356769660653

`filter[A187954(n), A115971(#)]`
-/

namespace A274658.P7027203356769660653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A274658.P7027203356769660653

/-!
# A274659: Triangle entry T(n, m) gives the m-th contribution T(n, m)*sin((2*m+1)*v) to the coefficient of q^n in the Fourier expansion of Jacobi's elliptic sn(u|k) function when expressed in the variables v = u/(2*K(k)/Pi) and q, the Jacobi nome, written as series in (k/4)^2. K is the real quarter period of elliptic functions.

The programs for A274659, there is no canonical definition to state claims against.
-/

/-! ## A274659.P3360542865138000317

`(and(2, comp[∑[n]]+n)-1)*A274661(n)`
-/

namespace A274659.P3360542865138000317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A274661 n

end

end A274659.P3360542865138000317

/-! ## A274659.P15243474846548007773

`A097807(n)*A274661(n)`
-/

namespace A274659.P15243474846548007773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A274661 n

end

end A274659.P15243474846548007773

/-! ## A274659.P17247025374262079164

`A033999(A025581(n))*A274661(n)`
-/

namespace A274659.P17247025374262079164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A274661 n

end

end A274659.P17247025374262079164

/-! ## A274659.P16597989802076525727

`A033999(A051162(n))*A274661(n)`
-/

namespace A274659.P16597989802076525727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A274661 n

end

end A274659.P16597989802076525727

/-! ## A274659.P6517892100827295875

`A033999(A063656(n))*A274661(n)`
-/

namespace A274659.P6517892100827295875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat * A274661 n

end

end A274659.P6517892100827295875

/-! ## A274659.P12483404021508994450

`A004718(A130321(n))*A274661(n)`
-/

namespace A274659.P12483404021508994450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A130321 n).toNat * A274661 n

end

end A274659.P12483404021508994450

/-! ## A274659.P16830003547808788146

`A020985(A130330(n))*A274661(n)`
-/

namespace A274659.P16830003547808788146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A130330 n).toNat * A274661 n

end

end A274659.P16830003547808788146

/-! ## A274659.P1426373049355715737

`A033999(log2(A130321(n)))*A274661(n)`
-/

namespace A274659.P1426373049355715737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat * A274661 n

end

end A274659.P1426373049355715737

/-! ## A274659.P997791317347885611

`A062157(A004736(n+1))*A274661(n)`
-/

namespace A274659.P997791317347885611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A274661 n

end

end A274659.P997791317347885611

/-! ## A274659.P8814980297616930466

`A062157(A094727(n+1))*A274661(n)`
-/

namespace A274659.P8814980297616930466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A094727 (n + 1)).toNat * A274661 n

end

end A274659.P8814980297616930466

/-!
# A274661: Triangle read by rows: T(n, m) gives the m-th contribution T(n, m)*cos((2*m+1)*v) to the coefficient of q^n in the Fourier expansion of Jacobi's elliptic cn(u|k) function when expressed in the variables v = u/(2*K(k)/Pi) and q, the Jacobi nome, written as series in (k/4)^2. K is the real quarter period of elliptic functions.

The programs for A274661, there is no canonical definition to state claims against.
-/

/-! ## A274661.P2795299713871611226

`(and(2, comp[∑[n]]+n)-1)*A274659(n)`
-/

namespace A274661.P2795299713871611226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A274659 n

end

end A274661.P2795299713871611226

/-! ## A274661.P4112844358139734223

`A274659(round(acot(n)+n))/(and(2, comp[∑[n]]+n)-1)`
-/

namespace A274661.P4112844358139734223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274659 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ) / ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1 : ℚ)

end

end A274661.P4112844358139734223

/-! ## A274661.P12908534597501865190

`A097807(n)*A274659(n)`
-/

namespace A274661.P12908534597501865190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A274659 n

end

end A274661.P12908534597501865190

/-! ## A274661.P4838795755694503106

`A274659(A233583(n+1))/(and(2, comp[∑[n]]+n)-1)`
-/

namespace A274661.P4838795755694503106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274659 (A233583 (n + 1)).toNat : ℚ) / ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1 : ℚ)

end

end A274661.P4838795755694503106

/-! ## A274661.P15913380472651110680

`A014451(A025581(n))*A274659(n)`
-/

namespace A274661.P15913380472651110680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A025581 n).toNat * A274659 n

end

end A274661.P15913380472651110680

/-! ## A274661.P15776532732825361424

`A033999(A051162(n))*A274659(n)`
-/

namespace A274661.P15776532732825361424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A274659 n

end

end A274661.P15776532732825361424

/-! ## A274661.P7914612601151757357

`A004718(A130321(n))*A274659(n)`
-/

namespace A274661.P7914612601151757357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A130321 n).toNat * A274659 n

end

end A274661.P7914612601151757357

/-! ## A274661.P519485831109078637

`A020985(A130330(n))*A274659(n)`
-/

namespace A274661.P519485831109078637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A130330 n).toNat * A274659 n

end

end A274661.P519485831109078637

/-! ## A274661.P10277307301499327194

`A033999(log2(A130321(n)))*A274659(n)`
-/

namespace A274661.P10277307301499327194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat * A274659 n

end

end A274661.P10277307301499327194

/-! ## A274661.P16071966788364151073

`A062157(A004736(n+1))*A274659(n)`
-/

namespace A274661.P16071966788364151073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A274659 n

end

end A274661.P16071966788364151073

/-!
# A274663: Sum of n-th powers of the roots of x^3 + 4*x^2 - 11*x - 1.

The programs for A274663, the canonical program `A274663.P5593454170807250678` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274663 has offset 0).

The definition of A274663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274663.P5593454170807250678

`ogf((3+8x-11x^2)/(1+4x-11x^2-x^3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A274663

/-- `ogf((3+8x-11x^2)/(1+4x-11x^2-x^3))` -/
def P5593454170807250678.Spec : Prop :=
  ∀ n, P5593454170807250678.a n = A274663 n

theorem P5593454170807250678.correct : P5593454170807250678.Spec := by
  intro n
  simp only [A274663]

end A274663

/-! ## A274663.P13727613085558383025

`A094648(3*n)`
-/

namespace A274663.P13727613085558383025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094648 (3 * n)

end

end A274663.P13727613085558383025

namespace A274663

/-- `A094648(3*n)` -/
def P13727613085558383025.Spec : Prop :=
  ∀ n, P13727613085558383025.a n = A274663 n

end A274663

/-! ## A274663.P12816204650514960576

`A033999(n)*A096975(3*n)`
-/

namespace A274663.P12816204650514960576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A096975 (3 * n)

end

end A274663.P12816204650514960576

namespace A274663

/-- `A033999(n)*A096975(3*n)` -/
def P12816204650514960576.Spec : Prop :=
  ∀ n, P12816204650514960576.a n = A274663 n

end A274663

/-! ## A274663.P8135512631483799277

`A321461(3*n)-A321461(3*n+2)`
-/

namespace A274663.P8135512631483799277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321461 (3 * n) - A321461 (3 * n + 2)

end

end A274663.P8135512631483799277

namespace A274663

/-- `A321461(3*n)-A321461(3*n+2)` -/
def P8135512631483799277.Spec : Prop :=
  ∀ n, P8135512631483799277.a n = A274663 n

end A274663

/-! ## A274663.P880592913885983896

`-(A321175(3*n+1)+A321175(3*n))`
-/

namespace A274663.P880592913885983896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A321175 (3 * n + 1) + A321175 (3 * n))

end

end A274663.P880592913885983896

namespace A274663

/-- `-(A321175(3*n+1)+A321175(3*n))` -/
def P880592913885983896.Spec : Prop :=
  ∀ n, P880592913885983896.a n = A274663 n

end A274663

/-! ## A274663.P14696200785722240700

`A094648(A008585(n))%A238282(n+1)`
-/

namespace A274663.P14696200785722240700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094648 (A008585 n).toNat) (A238282 (n + 1))

end

end A274663.P14696200785722240700

namespace A274663

/-- `A094648(A008585(n))%A238282(n+1)` -/
def P14696200785722240700.Spec : Prop :=
  ∀ n, P14696200785722240700.a n = A274663 n

end A274663

/-!
# A274665: Diagonal of the rational function 1/(1 - x - y - z + x*y + x*z - y*z).

The programs for A274665, there is no canonical definition to state claims against.
-/

/-! ## A274665.P17991993643545036714

`∑[A131737(A287967(Δ[n²]))]`
-/

namespace A274665.P17991993643545036714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (A287967 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274665.P17991993643545036714

/-!
# A274666: Diagonal of the rational function 1/(1 - x - y + x y - x z - y z - x y z).

The programs for A274666, there is no canonical definition to state claims against.
-/

/-! ## A274666.P3943167564374198203

`A004709(or(1, A358954(n)))`
-/

namespace A274666.P3943167564374198203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (Int.lor 1 (A358954 n)).toNat

end

end A274666.P3943167564374198203

/-!
# A274667: Diagonal of the rational function 1/(1 - x - y - x y - x z - y z + x y z).

The programs for A274667, there is no canonical definition to state claims against.
-/

/-! ## A274667.P17934749572177523053

`A307164(2*n+1)+A290576(n)`
-/

namespace A274667.P17934749572177523053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307164 (2 * n + 1) + A290576 n

end

end A274667.P17934749572177523053

/-!
# A274671: Diagonal of the rational function 1/(1 - x - y - z - x y + x z + y z - x y z).

The programs for A274671, the canonical program `A274671.P10703943751480069516` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274671 has offset 0).

The definition of A274671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274671.P10703943751480069516

`∑{#}[n, C(n, #)²*C(n+#, #)*2^#]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A274671

/-- `∑{#}[n, C(n, #)²*C(n+#, #)*2^#]` -/
def P10703943751480069516.Spec : Prop :=
  ∀ n, (P10703943751480069516.a n : ℤ) = A274671 n

theorem P10703943751480069516.correct : P10703943751480069516.Spec := by
  intro n
  simp only [A274671]

end A274671

/-!
# A274674: Diagonal of the rational function 1/(1 - x - x y - x z - y z + x y z).

The programs for A274674, the canonical program `A274674.P16728405917478134982` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274674 has offset 0).

The definition of A274674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274674.P16728405917478134982

`∑{#}[floor(n/2), C(n, 2*#)*C(n+#, 2*#)*C(2*#, #)]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A274674

/-- `∑{#}[floor(n/2), C(n, 2*#)*C(n+#, 2*#)*C(2*#, #)]` -/
def P16728405917478134982.Spec : Prop :=
  ∀ n, (P16728405917478134982.a n : ℤ) = A274674 n

theorem P16728405917478134982.correct : P16728405917478134982.Spec := by
  intro n
  simp only [A274674]

end A274674

/-! ## A274674.P614766491577100704

`A052748(A330928(n+1))+1`
-/

namespace A274674.P614766491577100704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052748 (A330928 (n + 1)).toNat + 1

end

end A274674.P614766491577100704

namespace A274674

/-- `A052748(A330928(n+1))+1` -/
def P614766491577100704.Spec : Prop :=
  ∀ n, P614766491577100704.a n = A274674 n

end A274674

/-!
# A274675: Primes p such that p = x^2 + 14*y^2 or p = 2*x^2 + 7*y^2, where p != 2, 7 and x, y are integers.

The programs for A274675, the canonical program `A274675.P17478295696903722210` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274675 has offset 1).

The definition of A274675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4983 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274675.P17478295696903722210

`∩[A001132(n+1), A045386(n+1)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A274675

/-- `∩[A001132(n+1), A045386(n+1)]` -/
def P17478295696903722210.Spec : Prop :=
  ∀ n, (P17478295696903722210.a n : ℤ) = A274675 (n + 1)

theorem P17478295696903722210.correct : P17478295696903722210.Spec := by
  intro n
  simp only [A274675, Nat.add_sub_cancel]

end A274675

/-! ## A274675.P7613987560313994693

`∩[A045386(n+1), A097958(n+1)]`
-/

namespace A274675.P7613987560313994693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P7613987560313994693

namespace A274675

/-- `∩[A045386(n+1), A097958(n+1)]` -/
def P7613987560313994693.Spec : Prop :=
  ∀ n, (P7613987560313994693.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P14459320080313136171

`∩[A001132(n+1), A191017(n+1)]`
-/

namespace A274675.P14459320080313136171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P14459320080313136171

namespace A274675

/-- `∩[A001132(n+1), A191017(n+1)]` -/
def P14459320080313136171.Spec : Prop :=
  ∀ n, (P14459320080313136171.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P11393225925793372132

`∩[A033207(n+1), A191017(n+1)]`
-/

namespace A274675.P11393225925793372132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P11393225925793372132

namespace A274675

/-- `∩[A033207(n+1), A191017(n+1)]` -/
def P11393225925793372132.Spec : Prop :=
  ∀ n, (P11393225925793372132.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P18039061361753712926

`∩[A038873(n+1), A191017(n+1)]`
-/

namespace A274675.P18039061361753712926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P18039061361753712926

namespace A274675

/-- `∩[A038873(n+1), A191017(n+1)]` -/
def P18039061361753712926.Spec : Prop :=
  ∀ n, (P18039061361753712926.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P12666752090425191875

`∩[A045373(n+1), A191017(n+1)]`
-/

namespace A274675.P12666752090425191875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P12666752090425191875

namespace A274675

/-- `∩[A045373(n+1), A191017(n+1)]` -/
def P12666752090425191875.Spec : Prop :=
  ∀ n, (P12666752090425191875.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P2545760932339038153

`∩[A045386(n+1), A191017(n+1)]`
-/

namespace A274675.P2545760932339038153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P2545760932339038153

namespace A274675

/-- `∩[A045386(n+1), A191017(n+1)]` -/
def P2545760932339038153.Spec : Prop :=
  ∀ n, (P2545760932339038153.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P12398290381579886898

`∩[A055673(n+1), A191017(n+1)]`
-/

namespace A274675.P12398290381579886898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P12398290381579886898

namespace A274675

/-- `∩[A055673(n+1), A191017(n+1)]` -/
def P12398290381579886898.Spec : Prop :=
  ∀ n, (P12398290381579886898.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P11866333860632548800

`∩[A045386(n+1), A270951(n+1)]`
-/

namespace A274675.P11866333860632548800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P11866333860632548800

namespace A274675

/-- `∩[A045386(n+1), A270951(n+1)]` -/
def P11866333860632548800.Spec : Prop :=
  ∀ n, (P11866333860632548800.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P1537964573923695343

`∩[A191017(n+1), A270951(n+1)]`
-/

namespace A274675.P1537964573923695343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P1537964573923695343

namespace A274675

/-- `∩[A191017(n+1), A270951(n+1)]` -/
def P1537964573923695343.Spec : Prop :=
  ∀ n, (P1537964573923695343.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P3733693789554053298

`∩[A045386(n+1), A319040(n+1)]`
-/

namespace A274675.P3733693789554053298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P3733693789554053298

namespace A274675

/-- `∩[A045386(n+1), A319040(n+1)]` -/
def P3733693789554053298.Spec : Prop :=
  ∀ n, (P3733693789554053298.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P5791246653807308116

`∩[A191017(n+1), A319040(n+1)]`
-/

namespace A274675.P5791246653807308116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P5791246653807308116

namespace A274675

/-- `∩[A191017(n+1), A319040(n+1)]` -/
def P5791246653807308116.Spec : Prop :=
  ∀ n, (P5791246653807308116.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P3929097705064468192

`∩[A045386(n+1), A366526(n+1)]`
-/

namespace A274675.P3929097705064468192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P3929097705064468192

namespace A274675

/-- `∩[A045386(n+1), A366526(n+1)]` -/
def P3929097705064468192.Spec : Prop :=
  ∀ n, (P3929097705064468192.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P1732945724429629459

`∩[A191017(n+1), A366526(n+1)]`
-/

namespace A274675.P1732945724429629459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P1732945724429629459

namespace A274675

/-- `∩[A191017(n+1), A366526(n+1)]` -/
def P1732945724429629459.Spec : Prop :=
  ∀ n, (P1732945724429629459.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P1892563799503747846

`∩[A045386(n+1), A058529(n+1)]`
-/

namespace A274675.P1892563799503747846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P1892563799503747846

namespace A274675

/-- `∩[A045386(n+1), A058529(n+1)]` -/
def P1892563799503747846.Spec : Prop :=
  ∀ n, (P1892563799503747846.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P10629825685712701943

`∩[A058529(n+1), A191017(n+1)]`
-/

namespace A274675.P10629825685712701943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P10629825685712701943

namespace A274675

/-- `∩[A058529(n+1), A191017(n+1)]` -/
def P10629825685712701943.Spec : Prop :=
  ∀ n, (P10629825685712701943.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P17805807887767629358

`∩[A045386(n+1), A253408(n+1)]`
-/

namespace A274675.P17805807887767629358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P17805807887767629358

namespace A274675

/-- `∩[A045386(n+1), A253408(n+1)]` -/
def P17805807887767629358.Spec : Prop :=
  ∀ n, (P17805807887767629358.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P7594574134642046838

`∩[A191017(n+1), A253408(n+1)]`
-/

namespace A274675.P7594574134642046838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P7594574134642046838

namespace A274675

/-- `∩[A191017(n+1), A253408(n+1)]` -/
def P7594574134642046838.Spec : Prop :=
  ∀ n, (P7594574134642046838.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P6329714601536589439

`∩[A057126(n+1), A191017(n+1)]`
-/

namespace A274675.P6329714601536589439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P6329714601536589439

namespace A274675

/-- `∩[A057126(n+1), A191017(n+1)]` -/
def P6329714601536589439.Spec : Prop :=
  ∀ n, (P6329714601536589439.a n : ℤ) = A274675 (n + 1)

end A274675

/-! ## A274675.P8518123585767752503

`∩[A001132(n+1), A155717(n+1)]`
-/

namespace A274675.P8518123585767752503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P8518123585767752503

namespace A274675

/-- `∩[A001132(n+1), A155717(n+1)]` -/
def P8518123585767752503.Spec : Prop :=
  ∀ n, (P8518123585767752503.a n : ℤ) = A274675 (n + 1)

end A274675

/-!
# A274679: Numbers k such that 7*10^k + 33 is prime.

The programs for A274679, there is no canonical definition to state claims against.
-/

/-! ## A274679.P12498943495689103508

`A199969(n+1)+A123578(A308520(n))`
-/

namespace A274679.P12498943495689103508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (n + 1) + A123578 (A308520 n).toNat

end

end A274679.P12498943495689103508

/-!
# A274681: Numbers k such that 4*k + 1 is a triangular number.

The programs for A274681, the canonical program `A274681.P2725577045291139682` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274681 has offset 1).

The definition of A274681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274681.P10604805850621088904

`ogf((5x+6x^2+5x^3)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A274681.P10604805850621088904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 6, 5] [1, -1, -2, 2, 1, -1] n

end

end A274681.P10604805850621088904

namespace A274681

/-- `ogf((5x+6x^2+5x^3)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P10604805850621088904.Spec : Prop :=
  ∀ n, P10604805850621088904.a n = A274681 (n + 1)

end A274681

/-! ## A274681.P2725577045291139682

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=5, a(2)=11, a(3)=26, a(4)=38`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A274681

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P2725577045291139682.Spec : Prop :=
  ∀ n, P2725577045291139682.a n = A274681 (n + 1)

theorem P2725577045291139682.correct : P2725577045291139682.Spec := by
  intro n
  simp only [A274681, Nat.add_sub_cancel]

end A274681

/-! ## A274681.P11313911535482578297

`A057029(n+1)-1`
-/

namespace A274681.P11313911535482578297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057029 (n + 1) - 1

end

end A274681.P11313911535482578297

namespace A274681

/-- `A057029(n+1)-1` -/
def P11313911535482578297.Spec : Prop :=
  ∀ n, P11313911535482578297.a n = A274681 (n + 1)

end A274681

/-! ## A274681.P3808794318255771356

`∑[2*lcm(2, n)+n]`
-/

namespace A274681.P3808794318255771356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 2 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274681.P3808794318255771356

namespace A274681

/-- `∑[2*lcm(2, n)+n]` -/
def P3808794318255771356.Spec : Prop :=
  ∀ n, (P3808794318255771356.a n : ℤ) = A274681 (n + 1)

end A274681

/-! ## A274681.P3337311058910341901

`∑[(4-(-1)^n)*n]`
-/

namespace A274681.P3337311058910341901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - (-1) ^ n) * (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274681.P3337311058910341901

namespace A274681

/-- `∑[(4-(-1)^n)*n]` -/
def P3337311058910341901.Spec : Prop :=
  ∀ n, P3337311058910341901.a n = A274681 (n + 1)

end A274681

/-! ## A274681.P3667659618350384377

`lcm(4, 2*n)+a(n-1)+n` with `a(0)=0`
-/

namespace A274681.P3667659618350384377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 4 (2 * n) + (a (n - 1) + n)

end

end A274681.P3667659618350384377

namespace A274681

/-- `lcm(4, 2*n)+a(n-1)+n` -/
def P3667659618350384377.Spec : Prop :=
  ∀ n, (P3667659618350384377.a n : ℤ) = A274681 (n + 1)

end A274681

/-! ## A274681.P10361235463790533711

`floor((n+1)/2)*record[or(5, n)-2]`
-/

namespace A274681.P10361235463790533711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274681.P10361235463790533711

namespace A274681

/-- `floor((n+1)/2)*record[or(5, n)-2]` -/
def P10361235463790533711.Spec : Prop :=
  ∀ n, P10361235463790533711.a n = A274681 (n + 1)

end A274681

/-! ## A274681.P6519515772160300308

`and(1, n)+(2*n)²-a(n-1)` with `a(0)=0`
-/

namespace A274681.P6519515772160300308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.land 1 n : ℤ) + (((2 * n) ^ 2 : ℤ) - a (n - 1))

end

end A274681.P6519515772160300308

namespace A274681

/-- `and(1, n)+(2*n)²-a(n-1)` -/
def P6519515772160300308.Spec : Prop :=
  ∀ n, P6519515772160300308.a n = A274681 (n + 1)

end A274681

/-! ## A274681.P5588575518806819505

`and(1, n)-(a(n-1)-(2*n)²)` with `a(0)=0`
-/

namespace A274681.P5588575518806819505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.land 1 n : ℤ) - (a (n - 1) - ((2 * n) ^ 2 : ℤ))

end

end A274681.P5588575518806819505

namespace A274681

/-- `and(1, n)-(a(n-1)-(2*n)²)` -/
def P5588575518806819505.Spec : Prop :=
  ∀ n, P5588575518806819505.a n = A274681 (n + 1)

end A274681

/-! ## A274681.P17805058117022536267

`A273365(n)-∑[n]`
-/

namespace A274681.P17805058117022536267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273365 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274681.P17805058117022536267

namespace A274681

/-- `A273365(n)-∑[n]` -/
def P17805058117022536267.Spec : Prop :=
  ∀ n, P17805058117022536267.a n = A274681 (n + 1)

end A274681

/-! ## A274681.P12490397353712089200

`A062717(n+1)+∑[n]`
-/

namespace A274681.P12490397353712089200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062717 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274681.P12490397353712089200

namespace A274681

/-- `A062717(n+1)+∑[n]` -/
def P12490397353712089200.Spec : Prop :=
  ∀ n, P12490397353712089200.a n = A274681 (n + 1)

end A274681

/-! ## A274681.P1603813988678087311

`∑[n]+A319384(n)-1`
-/

namespace A274681.P1603813988678087311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A319384 n - 1)

end

end A274681.P1603813988678087311

namespace A274681

/-- `∑[n]+A319384(n)-1` -/
def P1603813988678087311.Spec : Prop :=
  ∀ n, P1603813988678087311.a n = A274681 (n + 1)

end A274681

/-! ## A274681.P9550965532353184266

`A074378(n)+∑[2*n]`
-/

namespace A274681.P9550965532353184266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274681.P9550965532353184266

namespace A274681

/-- `A074378(n)+∑[2*n]` -/
def P9550965532353184266.Spec : Prop :=
  ∀ n, P9550965532353184266.a n = A274681 (n + 1)

end A274681

/-! ## A274681.P14983850465555723724

`∑[n]+2*A152749(n)`
-/

namespace A274681.P14983850465555723724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A152749 n

end

end A274681.P14983850465555723724

namespace A274681

/-- `∑[n]+2*A152749(n)` -/
def P14983850465555723724.Spec : Prop :=
  ∀ n, P14983850465555723724.a n = A274681 (n + 1)

end A274681

/-! ## A274681.P11178540252895255636

`A245534(n+1)+n²-1`
-/

namespace A274681.P11178540252895255636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245534 (n + 1) + ((n ^ 2 : ℤ) - 1)

end

end A274681.P11178540252895255636

namespace A274681

/-- `A245534(n+1)+n²-1` -/
def P11178540252895255636.Spec : Prop :=
  ∀ n, P11178540252895255636.a n = A274681 (n + 1)

end A274681

/-! ## A274681.P8900072337269224867

`2*A036666(n+1)-∑[n]`
-/

namespace A274681.P8900072337269224867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036666 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274681.P8900072337269224867

namespace A274681

/-- `2*A036666(n+1)-∑[n]` -/
def P8900072337269224867.Spec : Prop :=
  ∀ n, P8900072337269224867.a n = A274681 (n + 1)

end A274681

/-! ## A274681.P13015331044127822854

`∑[and(2*n, A280193(n))]+∑[3*n]`
-/

namespace A274681.P13015331044127822854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (A280193 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A274681.P13015331044127822854

namespace A274681

/-- `∑[and(2*n, A280193(n))]+∑[3*n]` -/
def P13015331044127822854.Spec : Prop :=
  ∀ n, P13015331044127822854.a n = A274681 (n + 1)

end A274681

/-! ## A274681.P1994282339610501975

`A014682(n)+A014105(n)`
-/

namespace A274681.P1994282339610501975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + A014105 n

end

end A274681.P1994282339610501975

namespace A274681

/-- `A014682(n)+A014105(n)` -/
def P1994282339610501975.Spec : Prop :=
  ∀ n, P1994282339610501975.a n = A274681 (n + 1)

end A274681

/-! ## A274681.P13220202182298807241

`A046092(n)+A001057(n)`
-/

namespace A274681.P13220202182298807241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + A001057 n

end

end A274681.P13220202182298807241

namespace A274681

/-- `A046092(n)+A001057(n)` -/
def P13220202182298807241.Spec : Prop :=
  ∀ n, P13220202182298807241.a n = A274681 (n + 1)

end A274681

/-! ## A274681.P6299014764337964419

`A130472(n)+A014494(n)`
-/

namespace A274681.P6299014764337964419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + A014494 n

end

end A274681.P6299014764337964419

namespace A274681

/-- `A130472(n)+A014494(n)` -/
def P6299014764337964419.Spec : Prop :=
  ∀ n, P6299014764337964419.a n = A274681 (n + 1)

end A274681

/-!
# A274682: Numbers n such that 8*n-1 is a triangular number.

The programs for A274682, the canonical program `A274682.P18267979970825770067` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274682 has offset 1).

The definition of A274682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274682.P1780565076593577546

`ogf((2+5x+18x^2+5x^3+2x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A274682.P1780565076593577546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 18, 5, 2] [1, -1, -2, 2, 1, -1] n

end

end A274682.P1780565076593577546

namespace A274682

/-- `ogf((2+5x+18x^2+5x^3+2x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P1780565076593577546.Spec : Prop :=
  ∀ n, P1780565076593577546.a n = A274682 (n + 1)

end A274682

/-! ## A274682.P18267979970825770067

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=2, a(1)=7, a(2)=29, a(3)=44, a(4)=88`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A274682

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P18267979970825770067.Spec : Prop :=
  ∀ n, P18267979970825770067.a n = A274682 (n + 1)

theorem P18267979970825770067.correct : P18267979970825770067.Spec := by
  intro n
  simp only [A274682, Nat.add_sub_cancel]

end A274682

/-! ## A274682.P8893716438252131534

`(5+3*(-1)^(n+1)-2*(8+3*(-1)^(n+1))*(n+1)+16*(n+1)²)/4`
-/

namespace A274682.P8893716438252131534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 + 3 * (-1) ^ (n + 1) - 2 * (8 + 3 * (-1) ^ (n + 1)) * (n + 1 : ℤ) + (16 * (n + 1) ^ 2 : ℤ) : ℚ) / 4

end

end A274682.P8893716438252131534

namespace A274682

/-- `(5+3*(-1)^(n+1)-2*(8+3*(-1)^(n+1))*(n+1)+16*(n+1)²)/4` -/
def P8893716438252131534.Spec : Prop :=
  ∀ n, P8893716438252131534.a n = (A274682 (n + 1) : ℚ)

theorem P8893716438252131534.correct : P8893716438252131534.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A274682, Nat.add_sub_cancel, A274682.P8893716438252131534.a, A274682.P18267979970825770067.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A274682, Nat.add_sub_cancel, A274682.P8893716438252131534.a, A274682.P18267979970825770067.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A274682

/-! ## A274682.P7076035773196858072

`∑[2*n*a(and(1, n+1))+n]` with `a(0)=2`
-/

namespace A274682.P7076035773196858072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * n * f1 (Nat.land 1 (n + 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274682.P7076035773196858072

namespace A274682

/-- `∑[2*n*a(and(1, n+1))+n]` -/
def P7076035773196858072.Spec : Prop :=
  ∀ n, (P7076035773196858072.a n : ℤ) = A274682 (n + 1)

end A274682

/-! ## A274682.P17655788524882609445

`∑[n*((-1)^n+5)]+1+∑[n]+or(1, n)²`
-/

namespace A274682.P17655788524882609445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((-1) ^ n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + ((∑ j ∈ Finset.range (n + 1), f2 j + Nat.lor 1 n ^ 2 : ℕ) : ℤ)

end

end A274682.P17655788524882609445

namespace A274682

/-- `∑[n*((-1)^n+5)]+1+∑[n]+or(1, n)²` -/
def P17655788524882609445.Spec : Prop :=
  ∀ n, P17655788524882609445.a n = A274682 (n + 1)

end A274682

/-! ## A274682.P12581049991571469863

`∑[2*A298028(n)-n]`
-/

namespace A274682.P12581049991571469863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298028 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274682.P12581049991571469863

namespace A274682

/-- `∑[2*A298028(n)-n]` -/
def P12581049991571469863.Spec : Prop :=
  ∀ n, P12581049991571469863.a n = A274682 (n + 1)

end A274682

/-! ## A274682.P11611281038313342353

`A179337(n+1)%(∑[25*n]+3)`
-/

namespace A274682.P11611281038313342353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179337 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℤ)

end

end A274682.P11611281038313342353

namespace A274682

/-- `A179337(n+1)%(∑[25*n]+3)` -/
def P11611281038313342353.Spec : Prop :=
  ∀ n, P11611281038313342353.a n = A274682 (n + 1)

end A274682

/-! ## A274682.P3968978905072765145

`A213399(n)+A014493(n+1)`
-/

namespace A274682.P3968978905072765145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213399 n + A014493 (n + 1)

end

end A274682.P3968978905072765145

namespace A274682

/-- `A213399(n)+A014493(n+1)` -/
def P3968978905072765145.Spec : Prop :=
  ∀ n, P3968978905072765145.a n = A274682 (n + 1)

end A274682

/-! ## A274682.P8560531634626491826

`A273367(n)+A005448(n+1)`
-/

namespace A274682.P8560531634626491826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273367 n + A005448 (n + 1)

end

end A274682.P8560531634626491826

namespace A274682

/-- `A273367(n)+A005448(n+1)` -/
def P8560531634626491826.Spec : Prop :=
  ∀ n, P8560531634626491826.a n = A274682 (n + 1)

end A274682

/-! ## A274682.P12948309653156214605

`A247643(n)+A181433(n+1)`
-/

namespace A274682.P12948309653156214605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247643 n + A181433 (n + 1)

end

end A274682.P12948309653156214605

namespace A274682

/-- `A247643(n)+A181433(n+1)` -/
def P12948309653156214605.Spec : Prop :=
  ∀ n, P12948309653156214605.a n = A274682 (n + 1)

end A274682

/-! ## A274682.P13322268139902615740

`A179337(n+1)-A061793(n)`
-/

namespace A274682.P13322268139902615740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179337 (n + 1) - A061793 n

end

end A274682.P13322268139902615740

namespace A274682

/-- `A179337(n+1)-A061793(n)` -/
def P13322268139902615740.Spec : Prop :=
  ∀ n, P13322268139902615740.a n = A274682 (n + 1)

end A274682

/-! ## A274682.P8701588194053486722

`A220082(n+1)+A036499(n+1)`
-/

namespace A274682.P8701588194053486722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (n + 1) + A036499 (n + 1)

end

end A274682.P8701588194053486722

namespace A274682

/-- `A220082(n+1)+A036499(n+1)` -/
def P8701588194053486722.Spec : Prop :=
  ∀ n, P8701588194053486722.a n = A274682 (n + 1)

end A274682

/-! ## A274682.P16995806712702777186

`A299645(n+1)+A193868(n+1)`
-/

namespace A274682.P16995806712702777186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299645 (n + 1) + A193868 (n + 1)

end

end A274682.P16995806712702777186

namespace A274682

/-- `A299645(n+1)+A193868(n+1)` -/
def P16995806712702777186.Spec : Prop :=
  ∀ n, P16995806712702777186.a n = A274682 (n + 1)

end A274682

/-! ## A274682.P6778060699510193306

`A179088(n+1)-A036499(n+1)`
-/

namespace A274682.P6778060699510193306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179088 (n + 1) - A036499 (n + 1)

end

end A274682.P6778060699510193306

namespace A274682

/-- `A179088(n+1)-A036499(n+1)` -/
def P6778060699510193306.Spec : Prop :=
  ∀ n, P6778060699510193306.a n = A274682 (n + 1)

end A274682

/-! ## A274682.P11853647179014684955

`A014848(n+1)+A016777(n)*A109613(n)`
-/

namespace A274682.P11853647179014684955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 (n + 1) + A016777 n * A109613 n

end

end A274682.P11853647179014684955

namespace A274682

/-- `A014848(n+1)+A016777(n)*A109613(n)` -/
def P11853647179014684955.Spec : Prop :=
  ∀ n, P11853647179014684955.a n = A274682 (n + 1)

end A274682

/-! ## A274682.P2248157758136096889

`A211438(n)+A135556(n+1)`
-/

namespace A274682.P2248157758136096889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211438 n + A135556 (n + 1)

end

end A274682.P2248157758136096889

namespace A274682

/-- `A211438(n)+A135556(n+1)` -/
def P2248157758136096889.Spec : Prop :=
  ∀ n, P2248157758136096889.a n = A274682 (n + 1)

end A274682

/-!
# A274685: Odd numbers n such that sigma(n) is divisible by 5.

The programs for A274685, the canonical program `A274685.P1074266660649065575` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274685 has offset 1).

The definition of A274685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4521 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274685.P12983815196212066918

`∩[2*n+1, A274397(n+1)]`
-/

namespace A274685.P12983815196212066918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274685.P12983815196212066918

namespace A274685

/-- `∩[2*n+1, A274397(n+1)]` -/
def P12983815196212066918.Spec : Prop :=
  ∀ n, (P12983815196212066918.a n : ℤ) = A274685 (n + 1)

end A274685

/-! ## A274685.P1074266660649065575

`filter[A274397(n+1), A379952(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A274685

/-- `filter[A274397(n+1), A379952(#)]` -/
def P1074266660649065575.Spec : Prop :=
  ∀ n, P1074266660649065575.a n = A274685 (n + 1)

theorem P1074266660649065575.correct : P1074266660649065575.Spec := by
  intro n
  simp only [A274685, Nat.add_sub_cancel]

end A274685

/-! ## A274685.P10026153591460860599

`A274397(eq[1, A274397(n+1)%2]+1)`
-/

namespace A274685.P10026153591460860599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274397 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A274685.P10026153591460860599

namespace A274685

/-- `A274397(eq[1, A274397(n+1)%2]+1)` -/
def P10026153591460860599.Spec : Prop :=
  ∀ n, P10026153591460860599.a n = A274685 (n + 1)

end A274685

/-! ## A274685.P7335963763310160673

`∩[A274397(n+1), A020742(n)]`
-/

namespace A274685.P7335963763310160673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274685.P7335963763310160673

namespace A274685

/-- `∩[A274397(n+1), A020742(n)]` -/
def P7335963763310160673.Spec : Prop :=
  ∀ n, (P7335963763310160673.a n : ℤ) = A274685 (n + 1)

end A274685

/-! ## A274685.P14329924711854899965

`∩[A274397(n+1), A062545(n)]`
-/

namespace A274685.P14329924711854899965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274685.P14329924711854899965

namespace A274685

/-- `∩[A274397(n+1), A062545(n)]` -/
def P14329924711854899965.Spec : Prop :=
  ∀ n, (P14329924711854899965.a n : ℤ) = A274685 (n + 1)

end A274685

/-! ## A274685.P10700267728511861283

`∩[A274397(n+1), A004273(n)]`
-/

namespace A274685.P10700267728511861283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274685.P10700267728511861283

namespace A274685

/-- `∩[A274397(n+1), A004273(n)]` -/
def P10700267728511861283.Spec : Prop :=
  ∀ n, (P10700267728511861283.a n : ℤ) = A274685 (n + 1)

end A274685

/-! ## A274685.P14643276012328823184

`∩[A274397(n+1), A004274(n)]`
-/

namespace A274685.P14643276012328823184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274685.P14643276012328823184

namespace A274685

/-- `∩[A274397(n+1), A004274(n)]` -/
def P14643276012328823184.Spec : Prop :=
  ∀ n, (P14643276012328823184.a n : ℤ) = A274685 (n + 1)

end A274685

/-! ## A274685.P6008055995257052353

`∩[A274397(n+1), A004276(n)]`
-/

namespace A274685.P6008055995257052353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274685.P6008055995257052353

namespace A274685

/-- `∩[A274397(n+1), A004276(n)]` -/
def P6008055995257052353.Spec : Prop :=
  ∀ n, (P6008055995257052353.a n : ℤ) = A274685 (n + 1)

end A274685

/-! ## A274685.P15516164827126577125

`∩[A274397(n+1), A004281(n)]`
-/

namespace A274685.P15516164827126577125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274685.P15516164827126577125

namespace A274685

/-- `∩[A274397(n+1), A004281(n)]` -/
def P15516164827126577125.Spec : Prop :=
  ∀ n, (P15516164827126577125.a n : ℤ) = A274685 (n + 1)

end A274685

/-! ## A274685.P16540887320718228969

`∩[A274397(n+1), A060747(n)]`
-/

namespace A274685.P16540887320718228969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274685.P16540887320718228969

namespace A274685

/-- `∩[A274397(n+1), A060747(n)]` -/
def P16540887320718228969.Spec : Prop :=
  ∀ n, (P16540887320718228969.a n : ℤ) = A274685 (n + 1)

end A274685

/-! ## A274685.P12103017143775950175

`∩[A274397(n+1), A130773(n)]`
-/

namespace A274685.P12103017143775950175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274685.P12103017143775950175

namespace A274685

/-- `∩[A274397(n+1), A130773(n)]` -/
def P12103017143775950175.Spec : Prop :=
  ∀ n, (P12103017143775950175.a n : ℤ) = A274685 (n + 1)

end A274685

/-! ## A274685.P7621493522740875360

`∩[A274397(n+1), A163985(n)]`
-/

namespace A274685.P7621493522740875360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274685.P7621493522740875360

namespace A274685

/-- `∩[A274397(n+1), A163985(n)]` -/
def P7621493522740875360.Spec : Prop :=
  ∀ n, (P7621493522740875360.a n : ℤ) = A274685 (n + 1)

end A274685

/-! ## A274685.P2111988159151174906

`eq[A142150(n), A227216(n)]`
-/

namespace A274685.P2111988159151174906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274685.P2111988159151174906

namespace A274685

/-- `eq[A142150(n), A227216(n)]` -/
def P2111988159151174906.Spec : Prop :=
  ∀ n, (P2111988159151174906.a n : ℤ) = A274685 (n + 1)

end A274685

/-! ## A274685.P9627422600491553024

`eq[A227216(n), A266222(n)]`
-/

namespace A274685.P9627422600491553024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274685.P9627422600491553024

namespace A274685

/-- `eq[A227216(n), A266222(n)]` -/
def P9627422600491553024.Spec : Prop :=
  ∀ n, (P9627422600491553024.a n : ℤ) = A274685 (n + 1)

end A274685

/-! ## A274685.P7698312926511224877

`eq[A227216(n), A266439(n)]`
-/

namespace A274685.P7698312926511224877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274685.P7698312926511224877

namespace A274685

/-- `eq[A227216(n), A266439(n)]` -/
def P7698312926511224877.Spec : Prop :=
  ∀ n, (P7698312926511224877.a n : ℤ) = A274685 (n + 1)

end A274685

/-! ## A274685.P8691929391960538064

`filter[A274397(n+1), A000035(#)]`
-/

namespace A274685.P8691929391960538064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A274685.P8691929391960538064

namespace A274685

/-- `filter[A274397(n+1), A000035(#)]` -/
def P8691929391960538064.Spec : Prop :=
  ∀ n, P8691929391960538064.a n = A274685 (n + 1)

end A274685

/-! ## A274685.P8242368584856120383

`filter[A274397(n+1), A266070(#)]`
-/

namespace A274685.P8242368584856120383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A274685.P8242368584856120383

namespace A274685

/-- `filter[A274397(n+1), A266070(#)]` -/
def P8242368584856120383.Spec : Prop :=
  ∀ n, P8242368584856120383.a n = A274685 (n + 1)

end A274685

/-! ## A274685.P15081855636532257147

`filter[A274397(n+1), A266246(#)]`
-/

namespace A274685.P15081855636532257147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A274685.P15081855636532257147

namespace A274685

/-- `filter[A274397(n+1), A266246(#)]` -/
def P15081855636532257147.Spec : Prop :=
  ∀ n, P15081855636532257147.a n = A274685 (n + 1)

end A274685

/-! ## A274685.P6169424615316365648

`filter[A274397(n+1), A266611(#)]`
-/

namespace A274685.P6169424615316365648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A274685.P6169424615316365648

namespace A274685

/-- `filter[A274397(n+1), A266611(#)]` -/
def P6169424615316365648.Spec : Prop :=
  ∀ n, P6169424615316365648.a n = A274685 (n + 1)

end A274685

/-! ## A274685.P12618514343318806293

`filter[A274397(n+1), A266719(#)]`
-/

namespace A274685.P12618514343318806293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A274685.P12618514343318806293

namespace A274685

/-- `filter[A274397(n+1), A266719(#)]` -/
def P12618514343318806293.Spec : Prop :=
  ∀ n, P12618514343318806293.a n = A274685 (n + 1)

end A274685

/-!
# A274686: Least number k such that k-th triangular number is the sum of two nonzero squares in exactly n ways.

The programs for A274686, there is no canonical definition to state claims against.
-/

/-! ## A274686.P8940850159062790811

`A163961(3*n+2)+A159481(A274567(n+1))`
-/

namespace A274686.P8940850159062790811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163961 (3 * n + 2) + A159481 (A274567 (n + 1)).toNat

end

end A274686.P8940850159062790811

/-!
# A274687: Sequence and first differences (A274688) together list every integer except zero exactly once.

The programs for A274687, there is no canonical definition to state claims against.
-/

/-! ## A274687.P16989859490791902006

`∑[(-1)^n*A053661(n+1)]`
-/

namespace A274687.P16989859490791902006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A053661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274687.P16989859490791902006

/-! ## A274687.P12183581419903350629

`∑[A053661(n+1)/A033999(n)]`
-/

namespace A274687.P12183581419903350629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053661 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274687.P12183581419903350629

/-! ## A274687.P1974832723688141113

`∑[A053661(n+1)*A087960(n²)]`
-/

namespace A274687.P1974832723688141113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 1) * A087960 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274687.P1974832723688141113

/-! ## A274687.P2890941090415218173

`∑[A053661(n+1)*A056594(2*n)]`
-/

namespace A274687.P2890941090415218173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 1) * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274687.P2890941090415218173

/-! ## A274687.P11894550041137999078

`round(A053661(n+1)/(2-A010673(n)²))`
-/

namespace A274687.P11894550041137999078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A053661 (n + 1) : ℚ) / (2 - A010673 n ^ 2 : ℚ))

end

end A274687.P11894550041137999078

/-! ## A274687.P16690237436695582358

`A274688(n)+a(n-1)` with `a(0)=1`
-/

namespace A274687.P16690237436695582358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274688 n + a (n - 1)

end

end A274687.P16690237436695582358

/-!
# A274688: First differences of A274687.

The programs for A274688, there is no canonical definition to state claims against.
-/

/-! ## A274688.P14866635602476952005

`Δ[A274687(n+1)]`
-/

namespace A274688.P14866635602476952005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274688.P14866635602476952005

/-! ## A274688.P17812254651850547013

`∏[-ratio[A053661(n+1)]]`
-/

namespace A274688.P17812254651850547013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A274688.P17812254651850547013

/-! ## A274688.P13575394710170982063

`-((-1)^n*A034701(2*(n+1)))`
-/

namespace A274688.P13575394710170982063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ n * A034701 (2 * (n + 1)))

end

end A274688.P13575394710170982063

/-! ## A274688.P7665397636382882264

`A274687(n+2)-A274687(n+1)`
-/

namespace A274688.P7665397636382882264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274687 (n + 2) - A274687 (n + 1)

end

end A274688.P7665397636382882264

/-! ## A274688.P13837310881315418005

`A033999(n+1)*A053661(n+2)`
-/

namespace A274688.P13837310881315418005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A053661 (n + 2)

end

end A274688.P13837310881315418005

/-! ## A274688.P9833795992255697349

`A053661(n+2)*A087960((n+1)²)`
-/

namespace A274688.P9833795992255697349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 2) * A087960 ((n + 1) ^ 2)

end

end A274688.P9833795992255697349

/-!
# A274689: A variation of A005228.

The programs for A274689, there is no canonical definition to state claims against.
-/

/-! ## A274689.P17060566428716841996

`A274690(n)+a(n-1)` with `a(0)=1`
-/

namespace A274689.P17060566428716841996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274690 n + a (n - 1)

end

end A274689.P17060566428716841996

/-! ## A274689.P15018522317728768455

`∑[A274690(C(2, n+2)+n)]+3`
-/

namespace A274689.P15018522317728768455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274690 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A274689.P15018522317728768455

/-! ## A274689.P11023111754777728246

`∑[A274690(A028310(n))]+3`
-/

namespace A274689.P11023111754777728246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274690 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A274689.P11023111754777728246

/-! ## A274689.P9511289984131749726

`∑[A274690(A000007(n)+n)]+3`
-/

namespace A274689.P9511289984131749726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274690 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A274689.P9511289984131749726

/-! ## A274689.P3770813277494173024

`∑[A274690(A000038(n)+n)]-2`
-/

namespace A274689.P3770813277494173024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274690 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A274689.P3770813277494173024

/-! ## A274689.P925504833058537916

`∑[A274690(abs(A000038(n)-n))]-2`
-/

namespace A274689.P925504833058537916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274690 |A000038 n - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A274689.P925504833058537916

/-! ## A274689.P5311888336288510757

`∑[A274690(A057428(n)+1+n)]+3`
-/

namespace A274689.P5311888336288510757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274690 (A057428 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A274689.P5311888336288510757

/-! ## A274689.P16439699780605317780

`∑[A274690(n+1)]+1-A274690(n+1)`
-/

namespace A274689.P16439699780605317780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A274690 (n + 1))

end

end A274689.P16439699780605317780

/-!
# A274690: First differences of A274689.

The programs for A274690, there is no canonical definition to state claims against.
-/

/-! ## A274690.P3091149678543901003

`Δ[A274689(n+1)]`
-/

namespace A274690.P3091149678543901003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274690.P3091149678543901003

/-! ## A274690.P4885234838359185472

`A274689(n+2)-A274689(n+1)`
-/

namespace A274690.P4885234838359185472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274689 (n + 2) - A274689 (n + 1)

end

end A274690.P4885234838359185472

/-!
# A274691: Number of odd entries in the character table of the symmetric group S_n.

The programs for A274691, there is no canonical definition to state claims against.
-/

/-! ## A274691.P13417055919905698728

`A001255(n)-A335686(n)`
-/

namespace A274691.P13417055919905698728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n - A335686 n

end

end A274691.P13417055919905698728

/-! ## A274691.P16010330438806259941

`A000041(n)²-A335686(n)`
-/

namespace A274691.P16010330438806259941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n ^ 2 - A335686 n

end

end A274691.P16010330438806259941

/-! ## A274691.P14451366424561102593

`A000041(n)^A020639(2*(n+1))-A335686(n)`
-/

namespace A274691.P14451366424561102593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) - (A335686 n : ℚ)

end

end A274691.P14451366424561102593

/-! ## A274691.P10377053529188918771

`A000041(n)^A000040((-1)^(2*n))-A335686(n)`
-/

namespace A274691.P10377053529188918771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) ^ (A000040 ((-1) ^ (2 * n)).toNat : ℤ) - (A335686 n : ℚ)

end

end A274691.P10377053529188918771

/-!
# A274696: Variation on Fermat's Diophantine m-tuple: 1 + the LCM of any two distinct terms is a square.

The programs for A274696, there is no canonical definition to state claims against.
-/

/-! ## A274696.P17257539350417065746

`eq[A296115(2^val(n+1, 2)), A341530(n+1)]`
-/

namespace A274696.P17257539350417065746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274696.P17257539350417065746

/-! ## A274696.P9583482080062480791

`A132411(lt[A014085(n), A098598(n)])`
-/

namespace A274696.P9583482080062480791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098598 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A274696.P9583482080062480791

/-! ## A274696.P12811110182600891437

`eq[A057077(A219203(n)), A341530(n+1)]`
-/

namespace A274696.P12811110182600891437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A219203 (n + 100)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274696.P12811110182600891437

/-! ## A274696.P13627525375874390625

`lt[A231668(A273665(n)), A355933(n+1)]`
-/

namespace A274696.P13627525375874390625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231668 (A273665 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A274696.P13627525375874390625

/-!
# A274697: Variation on Fermat's Diophantine m-tuple: 1 + the GCD of any two distinct terms is a square.

The programs for A274697, there is no canonical definition to state claims against.
-/

/-! ## A274697.P12556739183267852775

`eq[A110121(n), A366796(n)]`
-/

namespace A274697.P12556739183267852775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366796 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274697.P12556739183267852775

/-! ## A274697.P4968825378264029468

`A005563(lt[A116377(3*n+1), 1])`
-/

namespace A274697.P4968825378264029468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116377 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A274697.P4968825378264029468

/-! ## A274697.P14138885437720195179

`eq[A245965(n), A366795(n)]`
-/

namespace A274697.P14138885437720195179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366795 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274697.P14138885437720195179

/-!
# A274698: a(n)=prime(n)-(2*last digit of prime(n)).

The programs for A274698, the canonical program `A274698.P9145926141844344103` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274698 has offset 1).

The definition of A274698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274698.P14669143474587178769

`Δ[A007504(n)]-2*A007652(n+1)`
-/

namespace A274698.P14669143474587178769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A007652 (n + 1)

end

end A274698.P14669143474587178769

namespace A274698

/-- `Δ[A007504(n)]-2*A007652(n+1)` -/
def P14669143474587178769.Spec : Prop :=
  ∀ n, P14669143474587178769.a n = A274698 (n + 1)

end A274698

/-! ## A274698.P9145926141844344103

`A000040(n+1)-2*A007652(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A274698

/-- `A000040(n+1)-2*A007652(n+1)` -/
def P9145926141844344103.Spec : Prop :=
  ∀ n, P9145926141844344103.a n = A274698 (n + 1)

theorem P9145926141844344103.correct : P9145926141844344103.Spec := by
  intro n
  simp only [A274698, Nat.add_sub_cancel]

end A274698

/-! ## A274698.P3386120104024073325

`A000040(n+1)-A100484(n+1)%20`
-/

namespace A274698.P3386120104024073325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - Int.tmod (A100484 (n + 1)) 20

end

end A274698.P3386120104024073325

namespace A274698

/-- `A000040(n+1)-A100484(n+1)%20` -/
def P3386120104024073325.Spec : Prop :=
  ∀ n, P3386120104024073325.a n = A274698 (n + 1)

end A274698

/-! ## A274698.P7203396146491760513

`p?[A001057(n)]-2*A007652(n+1)`
-/

namespace A274698.P7203396146491760513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2 * A007652 (n + 1)

end

end A274698.P7203396146491760513

namespace A274698

/-- `p?[A001057(n)]-2*A007652(n+1)` -/
def P7203396146491760513.Spec : Prop :=
  ∀ n, P7203396146491760513.a n = A274698 (n + 1)

end A274698

/-! ## A274698.P16203026859120552338

`p?[A006370(n)]-2*A007652(n+1)`
-/

namespace A274698.P16203026859120552338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2 * A007652 (n + 1)

end

end A274698.P16203026859120552338

namespace A274698

/-- `p?[A006370(n)]-2*A007652(n+1)` -/
def P16203026859120552338.Spec : Prop :=
  ∀ n, P16203026859120552338.a n = A274698 (n + 1)

end A274698

/-!
# A274699: Number of varied unrooted labeled trees on n nodes, i.e., trees with unique vertex degree except for the leaves.

The programs for A274699, there is no canonical definition to state claims against.
-/

/-! ## A274699.P15266807317962339065

`n*A239522(a(n-2))+1` with `a(0)=1, a(1)=1`
-/

namespace A274699.P15266807317962339065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * A239522 (a (n - 2)).toNat + 1

end

end A274699.P15266807317962339065

/-! ## A274699.P6149752539297925625

`∑[A075028(a(n-2)+2)]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A274699.P6149752539297925625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 1] fun n f1 =>
  A075028 (f1 (n - 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274699.P6149752539297925625

