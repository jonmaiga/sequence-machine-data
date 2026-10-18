import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A393302: Numerator of Sum_{k=1..floor((n+1)/2)} binomial(n, 2*k-2) * c(k), where c(k) = A002430(k)/A036279(k) is the k-th positive coefficient in the Taylor series for tan(x).

The programs for A393302, there is no canonical definition to state claims against.
-/

/-! ## A393302.P3485219089621530022

`A089440(A276955(a(n-1)))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=8`
-/

namespace A393302.P3485219089621530022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 8] fun n a =>
  A089440 (A276955 (a (n - 1)).toNat).toNat

end

end A393302.P3485219089621530022

/-!
# A393307: Number computed by Wolfram's 2-state 2-symbol Turing machine 2977 when started with n on the tape.

The programs for A393307, the canonical program `A393307.P16840033001540489795` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393307 has offset 1).

The definition of A393307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393307.P16840033001540489795

`and(n+1, (n+2)%4+n)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A393307

/-- `and(n+1, (n+2)%4+n)` -/
def P16840033001540489795.Spec : Prop :=
  ∀ n, (P16840033001540489795.a n : ℤ) = A393307 (n + 1)

theorem P16840033001540489795.correct : P16840033001540489795.Spec := by
  intro n
  simp only [A393307, Nat.add_sub_cancel]

end A393307

/-! ## A393307.P11966358535951206790

`and(and(3, n+2)+n, n+1)`
-/

namespace A393307.P11966358535951206790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (Nat.land 3 (n + 2) + n) (n + 1)

end

end A393307.P11966358535951206790

namespace A393307

/-- `and(and(3, n+2)+n, n+1)` -/
def P11966358535951206790.Spec : Prop :=
  ∀ n, (P11966358535951206790.a n : ℤ) = A393307 (n + 1)

end A393307

/-! ## A393307.P14469875928030982321

`xor(1, or(n+3, -(n+3)))+n+2`
-/

namespace A393307.P14469875928030982321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.lor (n + 3 : ℤ) (-(n + 3 : ℤ))) + (n + 2 : ℤ)

end

end A393307.P14469875928030982321

namespace A393307

/-- `xor(1, or(n+3, -(n+3)))+n+2` -/
def P14469875928030982321.Spec : Prop :=
  ∀ n, P14469875928030982321.a n = A393307 (n + 1)

end A393307

/-! ## A393307.P7410797388503307846

`and(n+1, A165754(n+1))`
-/

namespace A393307.P7410797388503307846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A165754 (n + 1))

end

end A393307.P7410797388503307846

namespace A393307

/-- `and(n+1, A165754(n+1))` -/
def P7410797388503307846.Spec : Prop :=
  ∀ n, P7410797388503307846.a n = A393307 (n + 1)

end A393307

/-! ## A393307.P13389450713296597320

`and(n+1, A168232(n+2))`
-/

namespace A393307.P13389450713296597320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A168232 (n + 2))

end

end A393307.P13389450713296597320

namespace A393307

/-- `and(n+1, A168232(n+2))` -/
def P13389450713296597320.Spec : Prop :=
  ∀ n, P13389450713296597320.a n = A393307 (n + 1)

end A393307

/-! ## A393307.P3694903578112210221

`A129760(A116966(n)+1)`
-/

namespace A393307.P3694903578112210221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A116966 n + 1).toNat

end

end A393307.P3694903578112210221

namespace A393307

/-- `A129760(A116966(n)+1)` -/
def P3694903578112210221.Spec : Prop :=
  ∀ n, P3694903578112210221.a n = A393307 (n + 1)

end A393307

/-! ## A393307.P3418651288282887124

`A129760(A103889(n+2))`
-/

namespace A393307.P3418651288282887124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A103889 (n + 2)).toNat

end

end A393307.P3418651288282887124

namespace A393307

/-- `A129760(A103889(n+2))` -/
def P3418651288282887124.Spec : Prop :=
  ∀ n, P3418651288282887124.a n = A393307 (n + 1)

end A393307

/-! ## A393307.P3864793982325236401

`A129760(A114112(n+2))`
-/

namespace A393307.P3864793982325236401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A114112 (n + 2)).toNat

end

end A393307.P3864793982325236401

namespace A393307

/-- `A129760(A114112(n+2))` -/
def P3864793982325236401.Spec : Prop :=
  ∀ n, P3864793982325236401.a n = A393307 (n + 1)

end A393307

/-! ## A393307.P12823177154793562527

`A129760(A133256(n+2))`
-/

namespace A393307.P12823177154793562527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A133256 (n + 2)).toNat

end

end A393307.P12823177154793562527

namespace A393307

/-- `A129760(A133256(n+2))` -/
def P12823177154793562527.Spec : Prop :=
  ∀ n, P12823177154793562527.a n = A393307 (n + 1)

end A393307

/-! ## A393307.P7092279161972799649

`A104594(A124356(n+1))`
-/

namespace A393307.P7092279161972799649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104594 (A124356 (n + 1)).toNat

end

end A393307.P7092279161972799649

namespace A393307

/-- `A104594(A124356(n+1))` -/
def P7092279161972799649.Spec : Prop :=
  ∀ n, P7092279161972799649.a n = A393307 (n + 1)

end A393307

/-! ## A393307.P1257219233962635787

`A104594(A168204(n+1))`
-/

namespace A393307.P1257219233962635787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104594 (A168204 (n + 1)).toNat

end

end A393307.P1257219233962635787

namespace A393307

/-- `A104594(A168204(n+1))` -/
def P1257219233962635787.Spec : Prop :=
  ∀ n, P1257219233962635787.a n = A393307 (n + 1)

end A393307

/-! ## A393307.P14426704514038895566

`and(n+1, A204991(n+3))`
-/

namespace A393307.P14426704514038895566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A204991 (n + 3))

end

end A393307.P14426704514038895566

namespace A393307

/-- `and(n+1, A204991(n+3))` -/
def P14426704514038895566.Spec : Prop :=
  ∀ n, P14426704514038895566.a n = A393307 (n + 1)

end A393307

/-!
# A393308: Halting time for Wolfram's 2-state 2-symbol Turing machine 2977 when started with n on the tape.

The programs for A393308, there is no canonical definition to state claims against.
-/

/-! ## A393308.P14355752444379083749

`A239931(Δ[A000695(n+2)])`
-/

namespace A393308.P14355752444379083749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239931 (f1 (n + 1) - f1 n).toNat

end

end A393308.P14355752444379083749

/-! ## A393308.P7457399246445100349

`A335182(3*n+5)^A051064(A001006(n))`
-/

namespace A393308.P7457399246445100349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335182 (3 * n + 5) : ℚ) ^ (A051064 (A001006 n).toNat : ℤ)

end

end A393308.P7457399246445100349

/-!
# A393309: a(n) = floor(n! / prime(n)).

The programs for A393309, there is no canonical definition to state claims against.
-/

/-! ## A393309.P12315744972852364962

`floor((n+1)!/A000040(n+1))`
-/

namespace A393309.P12315744972852364962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A393309.P12315744972852364962

/-! ## A393309.P11780359407307685226

`floor(A000142(n+1)/A000040(n+1))`
-/

namespace A393309.P11780359407307685226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A393309.P11780359407307685226

/-! ## A393309.P10569615201828002890

`floor(A033312(n+1)/A000040(n+1))`
-/

namespace A393309.P10569615201828002890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033312 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A393309.P10569615201828002890

/-! ## A393309.P1346808589969030722

`floor(A000142(n+1)/A008578(n+2))`
-/

namespace A393309.P1346808589969030722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 (n + 1) : ℚ) / (A008578 (n + 2) : ℚ)⌋

end

end A393309.P1346808589969030722

/-! ## A393309.P13945955964357588714

`(A000142(n+1)-A091858(n+1))/A000040(n+1)`
-/

namespace A393309.P13945955964357588714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) - A091858 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A393309.P13945955964357588714

/-!
# A393312: Triangle read by rows: T(n,k) = (n-k-1)! * binomial(n,k) if n+k is odd, else 0.

The programs for A393312, there is no canonical definition to state claims against.
-/

/-! ## A393312.P17240338216010600883

`lcm(A162590(n), A238385(n))`
-/

namespace A393312.P17240338216010600883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A162590 n) (A238385 n)

end

end A393312.P17240338216010600883

/-!
# A393313: G.f. A(x) satisfies: A(x) = (1 + x + x^2)^2 * A(x^3) / (1 - x).

The programs for A393313, the canonical program `A393313.P9944757430971594284` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393313 has offset 0).

The definition of A393313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393313.P9944757430971594284

`∑[a(n-1)+a(floor(n/3))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A393313

/-- `∑[a(n-1)+a(floor(n/3))]` -/
def P9944757430971594284.Spec : Prop :=
  ∀ n, (P9944757430971594284.a n : ℤ) = A393313 n

theorem P9944757430971594284.correct : P9944757430971594284.Spec := by
  intro n
  simp only [A393313]

end A393313

/-! ## A393313.P16665659754273327624

`∑[A005704(n)]`
-/

namespace A393313.P16665659754273327624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393313.P16665659754273327624

namespace A393313

/-- `∑[A005704(n)]` -/
def P16665659754273327624.Spec : Prop :=
  ∀ n, P16665659754273327624.a n = A393313 n

end A393313

/-! ## A393313.P6432910184553628005

`∑[∑[A062051(n)]]`
-/

namespace A393313.P6432910184553628005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393313.P6432910184553628005

namespace A393313

/-- `∑[∑[A062051(n)]]` -/
def P6432910184553628005.Spec : Prop :=
  ∀ n, P6432910184553628005.a n = A393313 n

end A393313

/-! ## A393313.P14047443527955597954

`A005704(3*n+2)/3`
-/

namespace A393313.P14047443527955597954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005704 (3 * n + 2) : ℚ) / 3

end

end A393313.P14047443527955597954

namespace A393313

/-- `A005704(3*n+2)/3` -/
def P14047443527955597954.Spec : Prop :=
  ∀ n, P14047443527955597954.a n = (A393313 n : ℚ)

end A393313

/-! ## A393313.P4120925741276331276

`A090631(Δ[n²])/2`
-/

namespace A393313.P4120925741276331276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090631 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A393313.P4120925741276331276

namespace A393313

/-- `A090631(Δ[n²])/2` -/
def P4120925741276331276.Spec : Prop :=
  ∀ n, P4120925741276331276.a n = (A393313 n : ℚ)

end A393313

/-!
# A393314: G.f. A(x) satisfies: A(x) = (1 + x + x^2 + x^3)^2 * A(x^4) / (1 - x).

The programs for A393314, the canonical program `A393314.P6534115869234177053` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393314 has offset 0).

The definition of A393314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393314.P6534115869234177053

`∑[a(n-1)+a(floor(n/4))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A393314

/-- `∑[a(n-1)+a(floor(n/4))]` -/
def P6534115869234177053.Spec : Prop :=
  ∀ n, (P6534115869234177053.a n : ℤ) = A393314 n

theorem P6534115869234177053.correct : P6534115869234177053.Spec := by
  intro n
  simp only [A393314]

end A393314

/-! ## A393314.P9644737717603818599

`∑[A005705(n)]`
-/

namespace A393314.P9644737717603818599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393314.P9644737717603818599

namespace A393314

/-- `∑[A005705(n)]` -/
def P9644737717603818599.Spec : Prop :=
  ∀ n, P9644737717603818599.a n = A393314 n

end A393314

/-! ## A393314.P16881959989385381087

`∑[A292477(∑[n+3])]`
-/

namespace A393314.P16881959989385381087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292477 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393314.P16881959989385381087

namespace A393314

/-- `∑[A292477(∑[n+3])]` -/
def P16881959989385381087.Spec : Prop :=
  ∀ n, P16881959989385381087.a n = A393314 n

end A393314

/-! ## A393314.P7286133163881074605

`A090632(3*n+2)/A030431(A062513(n+1))`
-/

namespace A393314.P7286133163881074605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090632 (3 * n + 2) : ℚ) / (A030431 (A062513 (n + 1)).toNat : ℚ)

end

end A393314.P7286133163881074605

namespace A393314

/-- `A090632(3*n+2)/A030431(A062513(n+1))` -/
def P7286133163881074605.Spec : Prop :=
  ∀ n, P7286133163881074605.a n = (A393314 n : ℚ)

end A393314

/-! ## A393314.P6517433368712191437

`∑[∑[A055642(A000219(n))]]`
-/

namespace A393314.P6517433368712191437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A000219 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393314.P6517433368712191437

namespace A393314

/-- `∑[∑[A055642(A000219(n))]]` -/
def P6517433368712191437.Spec : Prop :=
  ∀ n, P6517433368712191437.a n = A393314 n

end A393314

/-!
# A393315: G.f. A(x) satisfies: A(x) = A(x^3) / (1 - x - x^2).

The programs for A393315, there is no canonical definition to state claims against.
-/

/-! ## A393315.P1101304822762705496

`A137814(n)-A355737(A137814(n))`
-/

namespace A393315.P1101304822762705496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137814 n - A355737 (A137814 n).toNat

end

end A393315.P1101304822762705496

/-! ## A393315.P9198494519970328808

`A096491(A022916(n))`
-/

namespace A393315.P9198494519970328808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096491 (A022916 n).toNat

end

end A393315.P9198494519970328808

/-! ## A393315.P13851562331309368346

`A181578(A003293(n))`
-/

namespace A393315.P13851562331309368346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (A003293 n).toNat

end

end A393315.P13851562331309368346

/-! ## A393315.P14189340267097826950

`A065708(A131298(n))`
-/

namespace A393315.P14189340267097826950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065708 (A131298 n).toNat

end

end A393315.P14189340267097826950

/-! ## A393315.P5959884570833188261

`A096491(A307068(n))`
-/

namespace A393315.P5959884570833188261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096491 (A307068 n).toNat

end

end A393315.P5959884570833188261

/-!
# A393316: G.f. A(x) satisfies: A(x) = A(x^3) / (1 - x - x^2 - x^3).

The programs for A393316, there is no canonical definition to state claims against.
-/

/-! ## A393316.P5406409133780092972

`A374681(n)+A339890(A080635(n))`
-/

namespace A393316.P5406409133780092972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374681 n + A339890 (A080635 n).toNat

end

end A393316.P5406409133780092972

/-!
# A393317: Maximum halting time for any of the 4096 Wolfram 2-state 2-symbol Turing machines across all n-bit inputs.

The programs for A393317, there is no canonical definition to state claims against.
-/

/-! ## A393317.P8737681110351950788

`A345168(A234568(n))+A033026(n+1)`
-/

namespace A393317.P8737681110351950788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345168 (A234568 n).toNat + A033026 (n + 1)

end

end A393317.P8737681110351950788

/-!
# A393321: Triangle read by rows: T(n,k) is the number of graceful Prüfer codes on n vertices whose first element equals k (0 <= k <= n-1).

The programs for A393321, there is no canonical definition to state claims against.
-/

/-! ## A393321.P6452022256185159407

`A352517(A266770(2*(n+2)))*A352522(n)`
-/

namespace A393321.P6452022256185159407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352517 (A266770 (2 * (n + 2))).toNat * A352522 n

end

end A393321.P6452022256185159407

/-!
# A393324: Smallest prime p such that omega(q^2 - p^2) = n where q is the next prime after p.

The programs for A393324, there is no canonical definition to state claims against.
-/

/-! ## A393324.P13331593311817040242

`A285983(A360229(n+1))`
-/

namespace A393324.P13331593311817040242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285983 (A360229 (n + 1)).toNat

end

end A393324.P13331593311817040242

/-!
# A393326: Number of connected induced subgraphs in the n-necklace graph.

The programs for A393326, the canonical program `A393326.P11322102043773576211` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393326 has offset 0).

The definition of A393326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393326.P9522084100231336200

`((15*n+2)*3^n-21*n)/2`
-/

namespace A393326.P9522084100231336200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((15 * n + 2) * 3 ^ n : ℤ) - (21 * n : ℤ) : ℚ) / 2

end

end A393326.P9522084100231336200

namespace A393326

/-- `((15*n+2)*3^n-21*n)/2` -/
def P9522084100231336200.Spec : Prop :=
  ∀ n, P9522084100231336200.a n = (A393326 n : ℚ)

theorem P9522084100231336200.correct : P9522084100231336200.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A393326, Nat.add_sub_cancel, A393326.P9522084100231336200.a, A393326.P11322102043773576211.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A393326, Nat.add_sub_cancel, A393326.P9522084100231336200.a, A393326.P11322102043773576211.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A393326

/-! ## A393326.P11322102043773576211

`8*a(n-1)-22*a(n-2)+24*a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=15, a(2)=123, a(3)=603`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A393326

/-- `8*a(n-1)-22*a(n-2)+24*a(n-3)-9*a(n-4)` -/
def P11322102043773576211.Spec : Prop :=
  ∀ n, P11322102043773576211.a n = A393326 n

theorem P11322102043773576211.correct : P11322102043773576211.Spec := by
  intro n
  simp only [A393326]

end A393326

/-!
# A393327: a(n) = (1/2)*n*(n+3)*(n+4).

The programs for A393327, the canonical program `A393327.P2666079404015355865` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393327 has offset 0).

The definition of A393327 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/2*n*(n+3)*(n+4)` (program `A393327.P7276106265590861866`, by `A393327.P7276106265590861866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393327.P348376785161899888

`n*(n+3)*(n+4)/2`
-/

namespace A393327.P348376785161899888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 3 : ℚ) * ((n + 4 : ℚ) / 2))

end

end A393327.P348376785161899888

namespace A393327

/-- `n*(n+3)*(n+4)/2` -/
def P348376785161899888.Spec : Prop :=
  ∀ n, P348376785161899888.a n = (A393327 n : ℚ)

theorem P348376785161899888.correct : P348376785161899888.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A393327, Nat.add_sub_cancel, A393327.P348376785161899888.a, A393327.P2666079404015355865.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A393327, Nat.add_sub_cancel, A393327.P348376785161899888.a, A393327.P2666079404015355865.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A393327

/-! ## A393327.P7276106265590861866

`1/2*n*(n+3)*(n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393327.P7276106265590861866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (n * ((n + 3) * (n + 4)) : ℚ)

end

end A393327.P7276106265590861866

namespace A393327

/-- `1/2*n*(n+3)*(n+4)` -/
def P7276106265590861866.Spec : Prop :=
  ∀ n, P7276106265590861866.a n = (A393327 n : ℚ)

theorem P7276106265590861866.correct : P7276106265590861866.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A393327, Nat.add_sub_cancel, A393327.P7276106265590861866.a, A393327.P2666079404015355865.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A393327, Nat.add_sub_cancel, A393327.P7276106265590861866.a, A393327.P2666079404015355865.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A393327

/-! ## A393327.P2666079404015355865

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=10, a(2)=30, a(3)=63`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A393327

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2666079404015355865.Spec : Prop :=
  ∀ n, P2666079404015355865.a n = A393327 n

theorem P2666079404015355865.correct : P2666079404015355865.Spec := by
  intro n
  simp only [A393327]

end A393327

/-! ## A393327.P3815788165101356335

`record[(n-4)*C(n, 2)]`
-/

namespace A393327.P3815788165101356335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 4) * (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393327.P3815788165101356335

namespace A393327

/-- `record[(n-4)*C(n, 2)]` -/
def P3815788165101356335.Spec : Prop :=
  ∀ n, P3815788165101356335.a n = A393327 n

end A393327

/-! ## A393327.P4140577073072424533

`lcm(n, n/Δ[2/(n+3)])`
-/

namespace A393327.P4140577073072424533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 3 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / (f1 (n + 1) - f1 n)))

end

end A393327.P4140577073072424533

namespace A393327

/-- `lcm(n, n/Δ[2/(n+3)])` -/
def P4140577073072424533.Spec : Prop :=
  ∀ n, (P4140577073072424533.a n : ℤ) = A393327 n

end A393327

/-! ## A393327.P13700455396932348668

`∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=10, a(2)=10`
-/

namespace A393327.P13700455396932348668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 10, 10] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393327.P13700455396932348668

namespace A393327

/-- `∑[∑[a(n-1)+3]]` -/
def P13700455396932348668.Spec : Prop :=
  ∀ n, (P13700455396932348668.a n : ℤ) = A393327 n

end A393327

/-! ## A393327.P1068368785040057887

`∑[A303609(n)]/(n+1)`
-/

namespace A393327.P1068368785040057887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303609 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A393327.P1068368785040057887

namespace A393327

/-- `∑[A303609(n)]/(n+1)` -/
def P1068368785040057887.Spec : Prop :=
  ∀ n, P1068368785040057887.a n = (A393327 n : ℚ)

end A393327

/-! ## A393327.P71741437905908153

`A162260(n+1)-2+n`
-/

namespace A393327.P71741437905908153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162260 (n + 1) - 2 + (n : ℤ)

end

end A393327.P71741437905908153

namespace A393327

/-- `A162260(n+1)-2+n` -/
def P71741437905908153.Spec : Prop :=
  ∀ n, P71741437905908153.a n = A393327 n

end A393327

/-! ## A393327.P18212998233287787609

`A111694(n+1)+2*n`
-/

namespace A393327.P18212998233287787609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111694 (n + 1) + (2 * n : ℤ)

end

end A393327.P18212998233287787609

namespace A393327

/-- `A111694(n+1)+2*n` -/
def P18212998233287787609.Spec : Prop :=
  ∀ n, P18212998233287787609.a n = A393327 n

end A393327

/-! ## A393327.P16314282032451141781

`A033537(n)+A027480(n)`
-/

namespace A393327.P16314282032451141781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033537 n + A027480 n

end

end A393327.P16314282032451141781

namespace A393327

/-- `A033537(n)+A027480(n)` -/
def P16314282032451141781.Spec : Prop :=
  ∀ n, P16314282032451141781.a n = A393327 n

end A393327

/-! ## A393327.P16662498535156123439

`A067725(n)+A002411(n)`
-/

namespace A393327.P16662498535156123439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n + A002411 n

end

end A393327.P16662498535156123439

namespace A393327

/-- `A067725(n)+A002411(n)` -/
def P16662498535156123439.Spec : Prop :=
  ∀ n, P16662498535156123439.a n = A393327 n

end A393327

/-! ## A393327.P6771217794301641631

`A135705(n)+A060354(n)`
-/

namespace A393327.P6771217794301641631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135705 n + A060354 n

end

end A393327.P6771217794301641631

namespace A393327

/-- `A135705(n)+A060354(n)` -/
def P6771217794301641631.Spec : Prop :=
  ∀ n, P6771217794301641631.a n = A393327 n

end A393327

/-! ## A393327.P9176777195939040396

`A279895(n)+A006002(n)`
-/

namespace A393327.P9176777195939040396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279895 n + A006002 n

end

end A393327.P9176777195939040396

namespace A393327

/-- `A279895(n)+A006002(n)` -/
def P9176777195939040396.Spec : Prop :=
  ∀ n, P9176777195939040396.a n = A393327 n

end A393327

/-! ## A393327.P12100516580340343130

`A267370(n)+A055999(n)`
-/

namespace A393327.P12100516580340343130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267370 n + A055999 n

end

end A393327.P12100516580340343130

namespace A393327

/-- `A267370(n)+A055999(n)` -/
def P12100516580340343130.Spec : Prop :=
  ∀ n, P12100516580340343130.a n = A393327 n

end A393327

/-! ## A393327.P898698580254581726

`A005587(n)-A327032(n)`
-/

namespace A393327.P898698580254581726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005587 n - A327032 n

end

end A393327.P898698580254581726

namespace A393327

/-- `A005587(n)-A327032(n)` -/
def P898698580254581726.Spec : Prop :=
  ∀ n, P898698580254581726.a n = A393327 n

end A393327

/-! ## A393327.P8142116475786315551

`A047732(n)+A034857(n+1)`
-/

namespace A393327.P8142116475786315551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047732 n + A034857 (n + 1)

end

end A393327.P8142116475786315551

namespace A393327

/-- `A047732(n)+A034857(n+1)` -/
def P8142116475786315551.Spec : Prop :=
  ∀ n, P8142116475786315551.a n = A393327 n

end A393327

/-! ## A393327.P16588629154952632680

`A127736(n+1)+A014209(n)`
-/

namespace A393327.P16588629154952632680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127736 (n + 1) + A014209 n

end

end A393327.P16588629154952632680

namespace A393327

/-- `A127736(n+1)+A014209(n)` -/
def P16588629154952632680.Spec : Prop :=
  ∀ n, P16588629154952632680.a n = A393327 n

end A393327

/-! ## A393327.P1772328081962252560

`A162260(n+1)+A023444(n)`
-/

namespace A393327.P1772328081962252560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162260 (n + 1) + A023444 n

end

end A393327.P1772328081962252560

namespace A393327

/-- `A162260(n+1)+A023444(n)` -/
def P1772328081962252560.Spec : Prop :=
  ∀ n, P1772328081962252560.a n = A393327 n

end A393327

/-! ## A393327.P2991058269015554307

`A140091(n)+A077414(n+1)`
-/

namespace A393327.P2991058269015554307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140091 n + A077414 (n + 1)

end

end A393327.P2991058269015554307

namespace A393327

/-- `A140091(n)+A077414(n+1)` -/
def P2991058269015554307.Spec : Prop :=
  ∀ n, P2991058269015554307.a n = A393327 n

end A393327

/-! ## A393327.P9016709404259624599

`A256857(n)+A130861(n+1)`
-/

namespace A393327.P9016709404259624599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256857 n + A130861 (n + 1)

end

end A393327.P9016709404259624599

namespace A393327

/-- `A256857(n)+A130861(n+1)` -/
def P9016709404259624599.Spec : Prop :=
  ∀ n, P9016709404259624599.a n = A393327 n

end A393327

/-!
# A393329: Self-convolution of the sequence b(n) = A004187(n) = F(4*n)/3, where F(n) are Fibonacci numbers.

The programs for A393329, the canonical program `A393329.P16063588259219489897` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393329 has offset 0).

The definition of A393329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393329.P16063588259219489897

`14*a(n-1)-51*a(n-2)+14*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=14`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A393329

/-- `14*a(n-1)-51*a(n-2)+14*a(n-3)-a(n-4)` -/
def P16063588259219489897.Spec : Prop :=
  ∀ n, P16063588259219489897.a n = A393329 n

theorem P16063588259219489897.correct : P16063588259219489897.Spec := by
  intro n
  simp only [A393329]

end A393329

/-! ## A393329.P6817441317077196077

`(7*(n-1)*a(n-1)-n*a(n-2))/(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A393329.P6817441317077196077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  (7 * (((n : ℤ) - 1 : ℚ) * a (n - 1)) - (n : ℚ) * a (n - 2)) / ((n : ℤ) - 2 : ℚ)

end

end A393329.P6817441317077196077

namespace A393329

/-- `(7*(n-1)*a(n-1)-n*a(n-2))/(n-2)` -/
def P6817441317077196077.Spec : Prop :=
  ∀ n, P6817441317077196077.a n = (A393329 n : ℚ)

end A393329

/-!
# A393330: a(n) is the smallest k for which A391684(k) = n.

The programs for A393330, there is no canonical definition to state claims against.
-/

/-! ## A393330.P4695417635512884270

`∏{p}[A364281(A326847(n+1)), #]`
-/

namespace A393330.P4695417635512884270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364281 (A326847 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A393330.P4695417635512884270

/-!
# A393332: Nonnegative integers k such that the Manhattan distance between the vector of proportions of the digits 0-9 in 2^k and the uniform distribution (1/10, ..., 1/10) sets a new minimum.

The programs for A393332, there is no canonical definition to state claims against.
-/

/-! ## A393332.P7871758971364421473

`∩[A023777(n+1), A393331(n+1)]`
-/

namespace A393332.P7871758971364421473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393332.P7871758971364421473

/-! ## A393332.P15202922100918453136

`∩[A191882(n+1), A393331(n+1)]`
-/

namespace A393332.P15202922100918453136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393332.P15202922100918453136

/-! ## A393332.P18362896096826892662

`∩[A294295(n+1), A393331(n+1)]`
-/

namespace A393332.P18362896096826892662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393332.P18362896096826892662

/-!
# A393336: a(n) is the sum of positions of 1's minus sum of positions of 0's in the binary expansion of n.

The programs for A393336, the canonical program `A393336.P13809973050334025134` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393336 has offset 0).

The definition of A393336 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, A359400, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A393336.P13809973050334025134

`A029931(n)-A359400(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A393336

/-- `A029931(n)-A359400(n)` -/
def P13809973050334025134.Spec : Prop :=
  ∀ n, P13809973050334025134.a n = A393336 n

theorem P13809973050334025134.correct : P13809973050334025134.Spec := by
  intro n
  simp only [A393336]

end A393336

/-! ## A393336.P5116582926205770852

`A029931(n)-A029931(A035327(n))`
-/

namespace A393336.P5116582926205770852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A029931 (A035327 n).toNat

end

end A393336.P5116582926205770852

namespace A393336

/-- `A029931(n)-A029931(A035327(n))` -/
def P5116582926205770852.Spec : Prop :=
  ∀ n, P5116582926205770852.a n = A393336 n

end A393336

/-! ## A393336.P4013180832570549008

`log2(A029930(n))-A359400(n)`
-/

namespace A393336.P4013180832570549008
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A029930 n : ℝ) - (A359400 n : ℝ)

end

end A393336.P4013180832570549008

namespace A393336

/-- `log2(A029930(n))-A359400(n)` -/
def P4013180832570549008.Spec : Prop :=
  ∀ n, P4013180832570549008.a n = (A393336 n : ℝ)

end A393336

/-! ## A393336.P15107803495186991801

`A073642(n)+A000120(n)-A359400(n)`
-/

namespace A393336.P15107803495186991801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 n + A000120 n - A359400 n

end

end A393336.P15107803495186991801

namespace A393336

/-- `A073642(n)+A000120(n)-A359400(n)` -/
def P15107803495186991801.Spec : Prop :=
  ∀ n, P15107803495186991801.a n = A393336 n

end A393336

/-! ## A393336.P9491868876735450852

`A283981(n)+A280700(n)-A359400(n)`
-/

namespace A393336.P9491868876735450852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283981 n + A280700 n - A359400 n

end

end A393336.P9491868876735450852

namespace A393336

/-- `A283981(n)+A280700(n)-A359400(n)` -/
def P9491868876735450852.Spec : Prop :=
  ∀ n, P9491868876735450852.a n = A393336 n

end A393336

/-! ## A393336.P15225573637127716921

`A124757(n)+A029837(n+1)-A359400(n)`
-/

namespace A393336.P15225573637127716921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 n + A029837 (n + 1) - A359400 n

end

end A393336.P15225573637127716921

namespace A393336

/-- `A124757(n)+A029837(n+1)-A359400(n)` -/
def P15225573637127716921.Spec : Prop :=
  ∀ n, P15225573637127716921.a n = A393336 n

end A393336

/-! ## A393336.P340289266852484172

`val(A029930(n), A020639(2*(n+1)))-A359400(n)`
-/

namespace A393336.P340289266852484172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A029930 n).toNat (A020639 (2 * (n + 1))).toNat : ℤ) - A359400 n

end

end A393336.P340289266852484172

namespace A393336

/-- `val(A029930(n), A020639(2*(n+1)))-A359400(n)` -/
def P340289266852484172.Spec : Prop :=
  ∀ n, P340289266852484172.a n = A393336 n

end A393336

/-! ## A393336.P3168767842393024751

`A197354(n)-A073642(n)-A359400(n)`
-/

namespace A393336.P3168767842393024751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197354 n - A073642 n - A359400 n

end

end A393336.P3168767842393024751

namespace A393336

/-- `A197354(n)-A073642(n)-A359400(n)` -/
def P3168767842393024751.Spec : Prop :=
  ∀ n, P3168767842393024751.a n = A393336 n

end A393336

/-! ## A393336.P6814831896006644780

`A000120(n)*A070939(n)-A231204(n)-A359400(n)`
-/

namespace A393336.P6814831896006644780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A070939 n - A231204 n - A359400 n

end

end A393336.P6814831896006644780

namespace A393336

/-- `A000120(n)*A070939(n)-A231204(n)-A359400(n)` -/
def P6814831896006644780.Spec : Prop :=
  ∀ n, P6814831896006644780.a n = A393336 n

end A393336

/-! ## A393336.P16366543417741195692

`A231204(n)-A359495(2*n)-A359400(n)`
-/

namespace A393336.P16366543417741195692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 n - A359495 (2 * n) - A359400 n

end

end A393336.P16366543417741195692

namespace A393336

/-- `A231204(n)-A359495(2*n)-A359400(n)` -/
def P16366543417741195692.Spec : Prop :=
  ∀ n, P16366543417741195692.a n = A393336 n

end A393336

/-! ## A393336.P8784920477944527463

`A073642(2*n)-A359400(n)`
-/

namespace A393336.P8784920477944527463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * n) - A359400 n

end

end A393336.P8784920477944527463

namespace A393336

/-- `A073642(2*n)-A359400(n)` -/
def P8784920477944527463.Spec : Prop :=
  ∀ n, P8784920477944527463.a n = A393336 n

end A393336

/-! ## A393336.P18238195585056549731

`A231204(A145341(n+1))-A359400(n)`
-/

namespace A393336.P18238195585056549731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (A145341 (n + 1)).toNat - A359400 n

end

end A393336.P18238195585056549731

namespace A393336

/-- `A231204(A145341(n+1))-A359400(n)` -/
def P18238195585056549731.Spec : Prop :=
  ∀ n, P18238195585056549731.a n = A393336 n

end A393336

/-!
# A393337: Number of connected unlabeled graphs with composition number n.

The programs for A393337, there is no canonical definition to state claims against.
-/

/-! ## A393337.P4945350569970256252

`val(A334299(A132975(n+1)), A334299(2*(n+1)))`
-/

namespace A393337.P4945350569970256252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A334299 (A132975 (n + 1)).toNat).toNat (A334299 (2 * (n + 1))).toNat

end

end A393337.P4945350569970256252

/-! ## A393337.P6630621319654657179

`A221886(3*n+2)%(A008480(n+3)+1)`
-/

namespace A393337.P6630621319654657179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221886 (3 * n + 2)) (A008480 (n + 3) + 1)

end

end A393337.P6630621319654657179

/-! ## A393337.P18041871007462047971

`A249223(A243055(n+1)+A161804(n+3))`
-/

namespace A393337.P18041871007462047971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249223 (A243055 (n + 1) + A161804 (n + 3)).toNat

end

end A393337.P18041871007462047971

/-! ## A393337.P13173082952956450619

`A359893(A272919(n+1)-round((n^3+3*n²-9*n*n%2)/144))`
-/

namespace A393337.P13173082952956450619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359893 (A272919 (n + 1) - SequenceMachineLib.roundAway (((n ^ 3 + 3 * n ^ 2 : ℤ) - ((9 * (n * (n % 2)) : ℕ) : ℤ) : ℚ) / 144)).toNat

end

end A393337.P13173082952956450619

/-! ## A393337.P17537250988263051101

`A103612(n*A093997(A077943(n+1)))`
-/

namespace A393337.P17537250988263051101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103612 ((n : ℤ) * A093997 (A077943 (n + 1)).toNat).toNat

end

end A393337.P17537250988263051101

/-!
# A393338: Records in A393337.

The programs for A393338, there is no canonical definition to state claims against.
-/

/-! ## A393338.P9068896353280739573

`record[A393337(n+1)]`
-/

namespace A393338.P9068896353280739573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393338.P9068896353280739573

/-! ## A393338.P996383818217032296

`A393337(A393339(n+1))`
-/

namespace A393338.P996383818217032296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393337 (A393339 (n + 1)).toNat

end

end A393338.P996383818217032296

/-! ## A393338.P11905120555692161804

`xor(A032982(n+1), A099331(n))`
-/

namespace A393338.P11905120555692161804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032982 (n + 1)) (A099331 n)

end

end A393338.P11905120555692161804

/-!
# A393339: Indices of records in A393337.

The programs for A393339, there is no canonical definition to state claims against.
-/

/-! ## A393339.P17652375379977387256

`A025612(A299540(n))`
-/

namespace A393339.P17652375379977387256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025612 (A299540 n).toNat

end

end A393339.P17652375379977387256

/-! ## A393339.P5379238832053666846

`A067945(A298871(n))`
-/

namespace A393339.P5379238832053666846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (A298871 n).toNat

end

end A393339.P5379238832053666846

/-! ## A393339.P12849360091170966803

`A303981(A182195(n))`
-/

namespace A393339.P12849360091170966803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303981 (A182195 n).toNat

end

end A393339.P12849360091170966803

/-! ## A393339.P16714038597230388740

`A003592(A019470(n+1))`
-/

namespace A393339.P16714038597230388740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (A019470 (n + 1)).toNat

end

end A393339.P16714038597230388740

/-! ## A393339.P2564359052073231579

`A022144(A115831(n+1))`
-/

namespace A393339.P2564359052073231579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A115831 (n + 1)).toNat

end

end A393339.P2564359052073231579

/-!
# A393341: Number of Cayley permutations of size n avoiding 123 and 321.

The programs for A393341, there is no canonical definition to state claims against.
-/

/-! ## A393341.P5278711190021740170

`A332639(3*n+4)+A329314(A117633(n))`
-/

namespace A393341.P5278711190021740170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332639 (3 * n + 4) + A329314 (A117633 n).toNat

end

end A393341.P5278711190021740170

/-! ## A393341.P7954567014351961244

`A115630(3*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A393341.P7954567014351961244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A115630 (3 * a (n - 1)).toNat

end

end A393341.P7954567014351961244

/-!
# A393342: a(n) is the smallest prime number p, such that the sequence of n consecutive prime numbers modulo n starting with p is a palindromic.

The programs for A393342, there is no canonical definition to state claims against.
-/

/-! ## A393342.P13129709383178919737

`A149780(a(n-1))` with `a(0)=2, a(1)=3, a(2)=2`
-/

namespace A393342.P13129709383178919737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 2] fun n a =>
  A149780 (a (n - 1)).toNat

end

end A393342.P13129709383178919737

/-!
# A393343: Number of Cayley permutations of size n avoiding 132 and 213.

The programs for A393343, the canonical program `A393343.P5115787409294094998` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393343 has offset 0).

The definition of A393343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393343.P5115787409294094998

`6*a(n-1)-11*a(n-2)+10*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=11, a(4)=42`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A393343

/-- `6*a(n-1)-11*a(n-2)+10*a(n-3)-2*a(n-4)` -/
def P5115787409294094998.Spec : Prop :=
  ∀ n, P5115787409294094998.a n = A393343 n

theorem P5115787409294094998.correct : P5115787409294094998.Spec := by
  intro n
  simp only [A393343]

end A393343

/-! ## A393343.P12993764152238959986

`A102825(A087953(n))`
-/

namespace A393343.P12993764152238959986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102825 (A087953 n).toNat

end

end A393343.P12993764152238959986

namespace A393343

/-- `A102825(A087953(n))` -/
def P12993764152238959986.Spec : Prop :=
  ∀ n, P12993764152238959986.a n = A393343 n

end A393343

/-!
# A393344: Number of Cayley permutations of size n avoiding 123 and 231.

The programs for A393344, there is no canonical definition to state claims against.
-/

/-! ## A393344.P9326058080753807781

`A255045(A083597(n))`
-/

namespace A393344.P9326058080753807781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255045 (A083597 n).toNat

end

end A393344.P9326058080753807781

/-! ## A393344.P15346146526415311239

`A001835(n)-A127886(A055891(n))`
-/

namespace A393344.P15346146526415311239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n - A127886 (A055891 n).toNat

end

end A393344.P15346146526415311239

/-!
# A393346: Lower (1,1/3) midsequence of (n^2) and (n^3); see Comments.

The programs for A393346, the canonical program `A393346.P11555351604380109696` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393346 has offset 0).

The definition of A393346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393346.P11555351604380109696

`floor((n/3+1)*n²)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A393346

/-- `floor((n/3+1)*n²)` -/
def P11555351604380109696.Spec : Prop :=
  ∀ n, P11555351604380109696.a n = A393346 n

theorem P11555351604380109696.correct : P11555351604380109696.Spec := by
  intro n
  simp only [A393346]

end A393346

/-! ## A393346.P18353386019336325833

`∑[∑[2*n]-n²%3]`
-/

namespace A393346.P18353386019336325833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393346.P18353386019336325833

namespace A393346

/-- `∑[∑[2*n]-n²%3]` -/
def P18353386019336325833.Spec : Prop :=
  ∀ n, P18353386019336325833.a n = A393346 n

end A393346

/-! ## A393346.P17758862910564235671

`∑[∑[a(n-3)+6]]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=7`
-/

namespace A393346.P17758862910564235671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 7] fun n f2 =>
  f2 (n - 3) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393346.P17758862910564235671

namespace A393346

/-- `∑[∑[a(n-3)+6]]` -/
def P17758862910564235671.Spec : Prop :=
  ∀ n, (P17758862910564235671.a n : ℤ) = A393346 n

end A393346

/-! ## A393346.P7503866921166227085

`∑[∑[∑[floor(a(n-3))]]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A393346.P7503866921166227085
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3, 0] fun n f3 =>
  f3 (n - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393346.P7503866921166227085

namespace A393346

/-- `∑[∑[∑[floor(a(n-3))]]]` -/
def P7503866921166227085.Spec : Prop :=
  ∀ n, (P7503866921166227085.a n : ℤ) = A393346 n

end A393346

/-! ## A393346.P1079106177879566068

`A131476(n)+n²`
-/

namespace A393346.P1079106177879566068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131476 n + (n ^ 2 : ℤ)

end

end A393346.P1079106177879566068

namespace A393346

/-- `A131476(n)+n²` -/
def P1079106177879566068.Spec : Prop :=
  ∀ n, P1079106177879566068.a n = A393346 n

end A393346

/-! ## A393346.P11755117193000214628

`A171452(n)+∑[n²]`
-/

namespace A393346.P11755117193000214628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171452 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A393346.P11755117193000214628

namespace A393346

/-- `A171452(n)+∑[n²]` -/
def P11755117193000214628.Spec : Prop :=
  ∀ n, P11755117193000214628.a n = A393346 n

end A393346

/-! ## A393346.P12991437638939436956

`A131477(n+1)-(n+1)`
-/

namespace A393346.P12991437638939436956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131477 (n + 1) - (n + 1 : ℤ)

end

end A393346.P12991437638939436956

namespace A393346

/-- `A131477(n+1)-(n+1)` -/
def P12991437638939436956.Spec : Prop :=
  ∀ n, P12991437638939436956.a n = A393346 n

end A393346

/-! ## A393346.P5812779320739455870

`A084990(n)+A002264(n)`
-/

namespace A393346.P5812779320739455870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084990 n + A002264 n

end

end A393346.P5812779320739455870

namespace A393346

/-- `A084990(n)+A002264(n)` -/
def P5812779320739455870.Spec : Prop :=
  ∀ n, P5812779320739455870.a n = A393346 n

end A393346

/-! ## A393346.P6748268157859362842

`A264938(n)+A007290(n)`
-/

namespace A393346.P6748268157859362842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264938 n + A007290 n

end

end A393346.P6748268157859362842

namespace A393346

/-- `A264938(n)+A007290(n)` -/
def P6748268157859362842.Spec : Prop :=
  ∀ n, P6748268157859362842.a n = A393346 n

end A393346

/-! ## A393346.P12937484819148258058

`A005900(n)-A152728(n)`
-/

namespace A393346.P12937484819148258058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n - A152728 n

end

end A393346.P12937484819148258058

namespace A393346

/-- `A005900(n)-A152728(n)` -/
def P12937484819148258058.Spec : Prop :=
  ∀ n, P12937484819148258058.a n = A393346 n

end A393346

/-! ## A393346.P11315090572000019449

`A268684(n)-A002901(n)`
-/

namespace A393346.P11315090572000019449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268684 n - A002901 n

end

end A393346.P11315090572000019449

namespace A393346

/-- `A268684(n)-A002901(n)` -/
def P11315090572000019449.Spec : Prop :=
  ∀ n, P11315090572000019449.a n = A393346 n

end A393346

/-! ## A393346.P154689710505668130

`A393347(n)-A011655(n)`
-/

namespace A393346.P154689710505668130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393347 n - A011655 n

end

end A393346.P154689710505668130

namespace A393346

/-- `A393347(n)-A011655(n)` -/
def P154689710505668130.Spec : Prop :=
  ∀ n, P154689710505668130.a n = A393346 n

end A393346

/-! ## A393346.P1298187335522923288

`A101986(n)-A389143(n)`
-/

namespace A393346.P1298187335522923288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 n - A389143 n

end

end A393346.P1298187335522923288

namespace A393346

/-- `A101986(n)-A389143(n)` -/
def P1298187335522923288.Spec : Prop :=
  ∀ n, P1298187335522923288.a n = A393346 n

end A393346

/-! ## A393346.P3388185723859945719

`A145069(n)-A047212(n+1)`
-/

namespace A393346.P3388185723859945719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145069 n - A047212 (n + 1)

end

end A393346.P3388185723859945719

namespace A393346

/-- `A145069(n)-A047212(n+1)` -/
def P3388185723859945719.Spec : Prop :=
  ∀ n, P3388185723859945719.a n = A393346 n

end A393346

/-! ## A393346.P12972938700275486926

`A212973(n)-A143975(n+1)`
-/

namespace A393346.P12972938700275486926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212973 n - A143975 (n + 1)

end

end A393346.P12972938700275486926

namespace A393346

/-- `A212973(n)-A143975(n+1)` -/
def P12972938700275486926.Spec : Prop :=
  ∀ n, P12972938700275486926.a n = A393346 n

end A393346

/-! ## A393346.P12398989845644290746

`∑[(n+1)²-A117571(n+1)]`
-/

namespace A393346.P12398989845644290746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A117571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393346.P12398989845644290746

namespace A393346

/-- `∑[(n+1)²-A117571(n+1)]` -/
def P12398989845644290746.Spec : Prop :=
  ∀ n, P12398989845644290746.a n = A393346 n

end A393346

/-!
# A393347: Upper (1,1/3) midsequence of (n^2) and (n^3); see Comments.

The programs for A393347, the canonical program `A393347.P16074458007357386784` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393347 has offset 0).

The definition of A393347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393347.P16074458007357386784

`ceil((n+3)/3*n²)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A393347

/-- `ceil((n+3)/3*n²)` -/
def P16074458007357386784.Spec : Prop :=
  ∀ n, P16074458007357386784.a n = A393347 n

theorem P16074458007357386784.correct : P16074458007357386784.Spec := by
  intro n
  simp only [A393347]

end A393347

/-! ## A393347.P1118424810615430478

`A213396(n)-n`
-/

namespace A393347.P1118424810615430478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213396 n - (n : ℤ)

end

end A393347.P1118424810615430478

namespace A393347

/-- `A213396(n)-n` -/
def P1118424810615430478.Spec : Prop :=
  ∀ n, P1118424810615430478.a n = A393347 n

end A393347

/-! ## A393347.P10254819107109655821

`A131477(n)+n²`
-/

namespace A393347.P10254819107109655821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131477 n + (n ^ 2 : ℤ)

end

end A393347.P10254819107109655821

namespace A393347

/-- `A131477(n)+n²` -/
def P10254819107109655821.Spec : Prop :=
  ∀ n, P10254819107109655821.a n = A393347 n

end A393347

/-! ## A393347.P13887447864558163343

`3*A060999(n)-n`
-/

namespace A393347.P13887447864558163343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A060999 n - (n : ℤ)

end

end A393347.P13887447864558163343

namespace A393347

/-- `3*A060999(n)-n` -/
def P13887447864558163343.Spec : Prop :=
  ∀ n, P13887447864558163343.a n = A393347 n

end A393347

/-! ## A393347.P14208610670830197242

`A393346(n)+A011655(n)`
-/

namespace A393347.P14208610670830197242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393346 n + A011655 n

end

end A393347.P14208610670830197242

namespace A393347

/-- `A393346(n)+A011655(n)` -/
def P14208610670830197242.Spec : Prop :=
  ∀ n, P14208610670830197242.a n = A393347 n

end A393347

/-! ## A393347.P219453559398912728

`A101986(n)-A389142(n)`
-/

namespace A393347.P219453559398912728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 n - A389142 n

end

end A393347.P219453559398912728

namespace A393347

/-- `A101986(n)-A389142(n)` -/
def P219453559398912728.Spec : Prop :=
  ∀ n, P219453559398912728.a n = A393347 n

end A393347

/-! ## A393347.P15146174166157017848

`A145069(n)-A047220(n+1)`
-/

namespace A393347.P15146174166157017848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145069 n - A047220 (n + 1)

end

end A393347.P15146174166157017848

namespace A393347

/-- `A145069(n)-A047220(n+1)` -/
def P15146174166157017848.Spec : Prop :=
  ∀ n, P15146174166157017848.a n = A393347 n

end A393347

/-! ## A393347.P18053962889528513130

`A167875(n)-A032793(n+1)`
-/

namespace A393347.P18053962889528513130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n - A032793 (n + 1)

end

end A393347.P18053962889528513130

namespace A393347

/-- `A167875(n)-A032793(n+1)` -/
def P18053962889528513130.Spec : Prop :=
  ∀ n, P18053962889528513130.a n = A393347 n

end A393347

/-!
# A393348: Number of edge cuts in the n-necklace graph.

The programs for A393348, the canonical program `A393348.P7676419597316792850` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393348 has offset 1).

The definition of A393348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393348.P7676419597316792850

`64^(n+1)-(24*(n+1)+14)*14^n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A393348

/-- `64^(n+1)-(24*(n+1)+14)*14^n` -/
def P7676419597316792850.Spec : Prop :=
  ∀ n, P7676419597316792850.a n = A393348 (n + 1)

theorem P7676419597316792850.correct : P7676419597316792850.Spec := by
  intro n
  simp only [A393348, Nat.add_sub_cancel]

end A393348

/-!
# A393350: a(n) is the number of primes between A005101(n) and A005101(n + 1).

The programs for A393350, the canonical program `A393350.P4719086423447970445` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393350 has offset 1).

The definition of A393350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393350.P4719086423447970445

`Δ[A000720(A005101(n+1))]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A393350

/-- `Δ[A000720(A005101(n+1))]` -/
def P4719086423447970445.Spec : Prop :=
  ∀ n, P4719086423447970445.a n = A393350 (n + 1)

theorem P4719086423447970445.correct : P4719086423447970445.Spec := by
  intro n
  simp only [A393350, Nat.add_sub_cancel]

end A393350

/-! ## A393350.P15057219739222032078

`A228085(A035188(n+1)*A334953(3*n+5))`
-/

namespace A393350.P15057219739222032078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 (A035188 (n + 1) * A334953 (3 * n + 5)).toNat

end

end A393350.P15057219739222032078

namespace A393350

/-- `A228085(A035188(n+1)*A334953(3*n+5))` -/
def P15057219739222032078.Spec : Prop :=
  ∀ n, P15057219739222032078.a n = A393350 (n + 1)

end A393350

/-!
# A393352: Number of circular parking functions of length n avoiding the patterns 123 and 132.

The programs for A393352, the canonical program `A393352.P18340008047549982157` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393352 has offset 0).

The definition of A393352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393352.P18340008047549982157

`A053635(n)/2-(n-1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A393352

/-- `A053635(n)/2-(n-1)` -/
def P18340008047549982157.Spec : Prop :=
  ∀ n, P18340008047549982157.a n = (A393352 n : ℚ)

end A393352

/-! ## A393352.P13139289754682437657

`A008619(A053635(n))-n`
-/

namespace A393352.P13139289754682437657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A053635 n).toNat - (n : ℤ)

end

end A393352.P13139289754682437657

namespace A393352

/-- `A008619(A053635(n))-n` -/
def P13139289754682437657.Spec : Prop :=
  ∀ n, P13139289754682437657.a n = A393352 n

end A393352

/-! ## A393352.P12617986736393220462

`A008619(n*A052823(n))`
-/

namespace A393352.P12617986736393220462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A052823 n).toNat

end

end A393352.P12617986736393220462

namespace A393352

/-- `A008619(n*A052823(n))` -/
def P12617986736393220462.Spec : Prop :=
  ∀ n, P12617986736393220462.a n = A393352 n

end A393352

/-! ## A393352.P13593028856416871423

`A134403(A148796(n))`
-/

namespace A393352.P13593028856416871423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134403 (A148796 n).toNat

end

end A393352.P13593028856416871423

namespace A393352

/-- `A134403(A148796(n))` -/
def P13593028856416871423.Spec : Prop :=
  ∀ n, P13593028856416871423.a n = A393352 n

end A393352

/-! ## A393352.P11684787712430365635

`A326774(A110448(n))`
-/

namespace A393352.P11684787712430365635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326774 (A110448 n).toNat

end

end A393352.P11684787712430365635

namespace A393352

/-- `A326774(A110448(n))` -/
def P11684787712430365635.Spec : Prop :=
  ∀ n, P11684787712430365635.a n = A393352 n

end A393352

/-!
# A393375: Number of partitions p of n such that 3 * (number of distinct parts of p) <= (minimal multiplicity of the parts of p).

The programs for A393375, there is no canonical definition to state claims against.
-/

/-! ## A393375.P3626687316555997458

`A064547(A001045(n)+A000038(n))`
-/

namespace A393375.P3626687316555997458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A001045 n + A000038 n).toNat

end

end A393375.P3626687316555997458

/-!
# A393376: Maximum space used by any of the 4096 Wolfram 2-state 2-symbol Turing machines when started with n on the tape.

The programs for A393376, there is no canonical definition to state claims against.
-/

/-! ## A393376.P4070120849239005970

`A033265(A391977(n+1))`
-/

namespace A393376.P4070120849239005970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (A391977 (n + 1)).toNat

end

end A393376.P4070120849239005970

/-! ## A393376.P3775086325991276183

`A195150(A391977(n+1)+1)`
-/

namespace A393376.P3775086325991276183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (A391977 (n + 1) + 1).toNat

end

end A393376.P3775086325991276183

/-! ## A393376.P7921034847637605197

`A000120(A391977(n+1)-1)`
-/

namespace A393376.P7921034847637605197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A391977 (n + 1) - 1).toNat

end

end A393376.P7921034847637605197

/-! ## A393376.P10328487949482308384

`A000523(A391977(n+1)-1)`
-/

namespace A393376.P10328487949482308384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A391977 (n + 1) - 1).toNat

end

end A393376.P10328487949482308384

/-! ## A393376.P13762451126426169397

`A007733(A391977(n+1)-1)`
-/

namespace A393376.P13762451126426169397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A391977 (n + 1) - 1).toNat

end

end A393376.P13762451126426169397

/-!
# A393379: The records of min(d(k), d(k+1), d(k+2)), where d(k) is the number of divisors of k (A000005).

The programs for A393379, there is no canonical definition to state claims against.
-/

/-! ## A393379.P15554275882364322846

`lt[A297411(A073711(n)), A248057(n+1)]`
-/

namespace A393379.P15554275882364322846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297411 (A073711 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248057 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393379.P15554275882364322846

/-! ## A393379.P14124749255092213631

`lt[A231204(n), A049604(A351290(n+1))]`
-/

namespace A393379.P14124749255092213631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049604 (A351290 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393379.P14124749255092213631

/-! ## A393379.P10677141770034707532

`record[A066800(A008816(n))]`
-/

namespace A393379.P10677141770034707532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066800 (A008816 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393379.P10677141770034707532

/-! ## A393379.P18277793799112536300

`lt[A358170(n)², A016754(n)]`
-/

namespace A393379.P18277793799112536300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358170 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393379.P18277793799112536300

/-! ## A393379.P7507431361477820943

`lt[A358170(n), A026147(n+1)]`
-/

namespace A393379.P7507431361477820943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358170 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026147 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393379.P7507431361477820943

/-!
# A393382: a(0) = 1; a(n) = 2 * a(n-1) + a(floor(n/3)).

The programs for A393382, the canonical program `A393382.P1849362086677719438` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393382 has offset 0).

The definition of A393382 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(floor(n/3))` (program `A393382.P1849362086677719438`, by `A393382.P1849362086677719438.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393382.P1849362086677719438

`2*a(n-1)+a(floor(n/3))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A393382

/-- `2*a(n-1)+a(floor(n/3))` -/
def P1849362086677719438.Spec : Prop :=
  ∀ n, (P1849362086677719438.a n : ℤ) = A393382 n

theorem P1849362086677719438.correct : P1849362086677719438.Spec := by
  intro n
  simp only [A393382]

end A393382

/-! ## A393382.P410513056978784866

`a(n-1)+a(n-1)+a(floor(n/3))` with `a(0)=1`
-/

namespace A393382.P410513056978784866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + a ⌊(n : ℚ) / 3⌋.toNat)

end

end A393382.P410513056978784866

namespace A393382

/-- `a(n-1)+a(n-1)+a(floor(n/3))` -/
def P410513056978784866.Spec : Prop :=
  ∀ n, (P410513056978784866.a n : ℤ) = A393382 n

theorem P410513056978784866.correct : P410513056978784866.Spec := by
  intro n
  simp only [A393382, Nat.add_sub_cancel, A393382.P410513056978784866.a, A393382.P1849362086677719438.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A393382

/-! ## A393382.P16432523373660001672

`∑[A398041(n)]`
-/

namespace A393382.P16432523373660001672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393382.P16432523373660001672

namespace A393382

/-- `∑[A398041(n)]` -/
def P16432523373660001672.Spec : Prop :=
  ∀ n, P16432523373660001672.a n = A393382 n

end A393382

/-!
# A393384: a(0) = 1; a(n) = a(n-1) + 2 * a(floor(n/3)).

The programs for A393384, the canonical program `A393384.P9696780041643210683` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393384 has offset 0).

The definition of A393384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(floor(n/3))` (program `A393384.P9696780041643210683`, by `A393384.P9696780041643210683.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393384.P9696780041643210683

`a(n-1)+2*a(floor(n/3))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A393384

/-- `a(n-1)+2*a(floor(n/3))` -/
def P9696780041643210683.Spec : Prop :=
  ∀ n, (P9696780041643210683.a n : ℤ) = A393384 n

theorem P9696780041643210683.correct : P9696780041643210683.Spec := by
  intro n
  simp only [A393384]

end A393384

/-! ## A393384.P16187975585254519800

`∑[A050320(∏[A182742(2*n+5)])]`
-/

namespace A393384.P16187975585254519800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182742 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393384.P16187975585254519800

namespace A393384

/-- `∑[A050320(∏[A182742(2*n+5)])]` -/
def P16187975585254519800.Spec : Prop :=
  ∀ n, P16187975585254519800.a n = A393384 n

end A393384

/-! ## A393384.P14186112860616427451

`A003022(n+2)-A007949(A001790(n))`
-/

namespace A393384.P14186112860616427451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003022 (n + 2) - A007949 (A001790 n).toNat

end

end A393384.P14186112860616427451

namespace A393384

/-- `A003022(n+2)-A007949(A001790(n))` -/
def P14186112860616427451.Spec : Prop :=
  ∀ n, P14186112860616427451.a n = A393384 n

end A393384

/-!
# A393385: Number of minimal edge covers in the n-necklace graph.

The programs for A393385, the canonical program `A393385.P2107325569529261320` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393385 has offset 0).

The definition of A393385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393385.P2107325569529261320

`7*a(n-1)+10*a(n-2)+6*a(n-3)` with `a(0)=3, a(1)=7, a(2)=69`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A393385

/-- `7*a(n-1)+10*a(n-2)+6*a(n-3)` -/
def P2107325569529261320.Spec : Prop :=
  ∀ n, (P2107325569529261320.a n : ℤ) = A393385 n

theorem P2107325569529261320.correct : P2107325569529261320.Spec := by
  intro n
  simp only [A393385]

end A393385

/-!
# A393386: Prime numbers in A391972, in the order in which they occur.

The programs for A393386, there is no canonical definition to state claims against.
-/

/-! ## A393386.P1015753683180861767

`A391972(A393398(n+1))`
-/

namespace A393386.P1015753683180861767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391972 (A393398 (n + 1)).toNat

end

end A393386.P1015753683180861767

/-! ## A393386.P12481289306043385736

`A391972(n+1+A087128(n+1))`
-/

namespace A393386.P12481289306043385736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391972 ((n + 1 : ℤ) + A087128 (n + 1)).toNat

end

end A393386.P12481289306043385736

/-! ## A393386.P3469676245746194039

`p?[A391972(n+1)]`
-/

namespace A393386.P3469676245746194039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A393386.P3469676245746194039

/-! ## A393386.P13486944344088978508

`filter[A391972(n+1), A010051(#)]`
-/

namespace A393386.P13486944344088978508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A393386.P13486944344088978508

/-!
# A393388: Least prime factor of A254859.

The programs for A393388, there is no canonical definition to state claims against.
-/

/-! ## A393388.P8693142826772016854

`A020639(A254859(n+1))`
-/

namespace A393388.P8693142826772016854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A254859 (n + 1)).toNat

end

end A393388.P8693142826772016854

/-!
# A393394: Number of separable derangements on [n].

The programs for A393394, there is no canonical definition to state claims against.
-/

/-! ## A393394.P17293905811412753356

`A374700(A034738(n+1))+A374700(n)`
-/

namespace A393394.P17293905811412753356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374700 (A034738 (n + 1)).toNat + A374700 n

end

end A393394.P17293905811412753356

/-! ## A393394.P11270201554496642051

`A003986(A381171(n))-A204389(n+3)`
-/

namespace A393394.P11270201554496642051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A381171 n).toNat - A204389 (n + 3)

end

end A393394.P11270201554496642051

/-! ## A393394.P15822336851043843304

`or(A181111(A066017(2*n+3)), A391197(n))`
-/

namespace A393394.P15822336851043843304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A181111 (A066017 (2 * n + 3)).toNat) (A391197 n)

end

end A393394.P15822336851043843304

/-!
# A393396: Irregular triangle read by rows: the n-th row gives the list of d^(n/d) where d is a divisor of n.

The programs for A393396, there is no canonical definition to state claims against.
-/

/-! ## A393396.P6890897226014101898

`A027750(n+1)^A056538(n+1)`
-/

namespace A393396.P6890897226014101898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027750 (n + 1) : ℚ) ^ (A056538 (n + 1) : ℤ)

end

end A393396.P6890897226014101898

/-! ## A393396.P8671151621121802798

`A051129(A056534(n+1))`
-/

namespace A393396.P8671151621121802798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (A056534 (n + 1)).toNat

end

end A393396.P8671151621121802798

/-! ## A393396.P2579029564928933338

`A167489(A140690(n+1))`
-/

namespace A393396.P2579029564928933338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A140690 (n + 1)).toNat

end

end A393396.P2579029564928933338

/-! ## A393396.P16759941841510764865

`∏{e}[A322792(n+1), #]`
-/

namespace A393396.P16759941841510764865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322792 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A393396.P16759941841510764865

/-! ## A393396.P4596819512274356242

`A027750(n+1)^A353854(A240076(n))`
-/

namespace A393396.P4596819512274356242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027750 (n + 1) : ℚ) ^ (A353854 (A240076 n).toNat : ℤ)

end

end A393396.P4596819512274356242

/-!
# A393397: Irregular triangle read by rows: the n-th row gives the list of (n/d)^d where d is a divisor of n.

The programs for A393397, there is no canonical definition to state claims against.
-/

/-! ## A393397.P18376228350157508786

`A056538(n+1)^A027750(n+1)`
-/

namespace A393397.P18376228350157508786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056538 (n + 1) : ℚ) ^ (A027750 (n + 1) : ℤ)

end

end A393397.P18376228350157508786

/-! ## A393397.P17411227357928086413

`A056538(n+1)^A233773(n+1)`
-/

namespace A393397.P17411227357928086413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056538 (n + 1) : ℚ) ^ (A233773 (n + 1) : ℤ)

end

end A393397.P17411227357928086413

/-! ## A393397.P10999588577286336775

`A051128(A056534(n+1))`
-/

namespace A393397.P10999588577286336775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (A056534 (n + 1)).toNat

end

end A393397.P10999588577286336775

/-! ## A393397.P9389869183252196811

`A056538(n+1)*A213919(n+1)`
-/

namespace A393397.P9389869183252196811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1) * A213919 (n + 1)

end

end A393397.P9389869183252196811

/-! ## A393397.P13929022314114850819

`A124758(A272919(n+1))`
-/

namespace A393397.P13929022314114850819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A272919 (n + 1)).toNat

end

end A393397.P13929022314114850819

/-!
# A393398: Positions of primes in A391972.

The programs for A393398, there is no canonical definition to state claims against.
-/

/-! ## A393398.P7790064073701317081

`A087128(n+1)+n+1`
-/

namespace A393398.P7790064073701317081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087128 (n + 1) + (n + 1 : ℤ)

end

end A393398.P7790064073701317081

/-! ## A393398.P1914274962353904116

`eq[A043545(n), A391972(n+1)]`
-/

namespace A393398.P1914274962353904116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393398.P1914274962353904116

/-! ## A393398.P843619904071710028

`eq[A054977(n), A391972(n+1)]`
-/

namespace A393398.P843619904071710028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393398.P843619904071710028

/-! ## A393398.P15659848648104112196

`eq[A057427(n), A391972(n+1)]`
-/

namespace A393398.P15659848648104112196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393398.P15659848648104112196

/-! ## A393398.P4098109781207126451

`eq[A157928(n), A391972(n+1)]`
-/

namespace A393398.P4098109781207126451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393398.P4098109781207126451

/-! ## A393398.P11339405420020216313

`eq[A158388(n), A391972(n+1)]`
-/

namespace A393398.P11339405420020216313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393398.P11339405420020216313

/-! ## A393398.P17868345981771142139

`eq[A132126(n+1), A391972(n+1)]`
-/

namespace A393398.P17868345981771142139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393398.P17868345981771142139

/-! ## A393398.P17533485563851590220

`eq[A205007(n+1), A391972(n+1)]`
-/

namespace A393398.P17533485563851590220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393398.P17533485563851590220

/-! ## A393398.P10247290304199678467

`eq[A205375(n+1), A391972(n+1)]`
-/

namespace A393398.P10247290304199678467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393398.P10247290304199678467

/-! ## A393398.P12948235015154387580

`eq[A267084(n+1), A391972(n+1)]`
-/

namespace A393398.P12948235015154387580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393398.P12948235015154387580

/-! ## A393398.P12367819614824218057

`eq[A288132(n+1), A391972(n+1)]`
-/

namespace A393398.P12367819614824218057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393398.P12367819614824218057

