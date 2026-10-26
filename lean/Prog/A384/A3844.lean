import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
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
# A384415: a(n) = 4^n - 3^n - n*3^(n-1) - binomial(n,2)*3^(n-2).

The programs for A384415, the canonical program `A384415.P15353193061636814150` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384415 has offset 0).

The definition of A384415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384415.P15353193061636814150

`4^n-3^n-n*3^(n-1)-C(n, 2)*3^(n-2)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384415

/-- `4^n-3^n-n*3^(n-1)-C(n, 2)*3^(n-2)` -/
def P15353193061636814150.Spec : Prop :=
  ∀ n, P15353193061636814150.a n = (A384415 n : ℚ)

end A384415

/-! ## A384415.P10212965597133518346

`4^n-(C(n, 2)/9+1)*3^n-A027471(n+1)`
-/

namespace A384415.P10212965597133518346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) - ((Nat.choose n 2 : ℚ) / 9 + 1) * (3 ^ n : ℚ) - (A027471 (n + 1) : ℚ)

end

end A384415.P10212965597133518346

namespace A384415

/-- `4^n-(C(n, 2)/9+1)*3^n-A027471(n+1)` -/
def P10212965597133518346.Spec : Prop :=
  ∀ n, P10212965597133518346.a n = (A384415 n : ℚ)

end A384415

/-! ## A384415.P2331890663038993253

`A000302(n)-A382618(n)`
-/

namespace A384415.P2331890663038993253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A382618 n

end

end A384415.P2331890663038993253

namespace A384415

/-- `A000302(n)-A382618(n)` -/
def P2331890663038993253.Spec : Prop :=
  ∀ n, P2331890663038993253.a n = A384415 n

end A384415

/-! ## A384415.P11196980046209164945

`A380651(n)-A081909(n)`
-/

namespace A384415.P11196980046209164945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380651 n - A081909 n

end

end A384415.P11196980046209164945

namespace A384415

/-- `A380651(n)-A081909(n)` -/
def P11196980046209164945.Spec : Prop :=
  ∀ n, P11196980046209164945.a n = A384415 n

end A384415

/-! ## A384415.P7101818343063351205

`A380024(n)-A027471(n+1)`
-/

namespace A384415.P7101818343063351205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380024 n - A027471 (n + 1)

end

end A384415.P7101818343063351205

namespace A384415

/-- `A380024(n)-A027471(n+1)` -/
def P7101818343063351205.Spec : Prop :=
  ∀ n, P7101818343063351205.a n = A384415 n

end A384415

/-! ## A384415.P4256961131368129907

`A380249(n)-A006234(n+3)`
-/

namespace A384415.P4256961131368129907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380249 n - A006234 (n + 3)

end

end A384415.P4256961131368129907

namespace A384415

/-- `A380249(n)-A006234(n+3)` -/
def P4256961131368129907.Spec : Prop :=
  ∀ n, P4256961131368129907.a n = A384415 n

end A384415

/-! ## A384415.P4179244954195271988

`A086443(n)+A380024(n)-A005061(n)`
-/

namespace A384415.P4179244954195271988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086443 n + (A380024 n - A005061 n)

end

end A384415.P4179244954195271988

namespace A384415

/-- `A086443(n)+A380024(n)-A005061(n)` -/
def P4179244954195271988.Spec : Prop :=
  ∀ n, P4179244954195271988.a n = A384415 n

end A384415

/-! ## A384415.P3564361899120438638

`A380024(n)+A380651(n)-A000302(n)`
-/

namespace A384415.P3564361899120438638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380024 n + (A380651 n - A000302 n)

end

end A384415.P3564361899120438638

namespace A384415

/-- `A380024(n)+A380651(n)-A000302(n)` -/
def P3564361899120438638.Spec : Prop :=
  ∀ n, P3564361899120438638.a n = A384415 n

end A384415

/-!
# A384417: Expansion of g.f. cosh(9*arctanh(8*sqrt(x))).

The programs for A384417, there is no canonical definition to state claims against.
-/

/-! ## A384417.P18396525784247924618

`A000302(n)*A383928(n)`
-/

namespace A384417.P18396525784247924618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A383928 n

end

end A384417.P18396525784247924618

/-! ## A384417.P11331377767112239725

`A000079(n)²*A383928(n)`
-/

namespace A384417.P11331377767112239725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A383928 n

end

end A384417.P11331377767112239725

/-! ## A384417.P7360909641159336346

`record[A262616(n)]*A383928(n)`
-/

namespace A384417.P7360909641159336346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A383928 n

end

end A384417.P7360909641159336346

/-! ## A384417.P10120653914438787440

`A000079(2*n)*A383928(n)`
-/

namespace A384417.P10120653914438787440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A383928 n

end

end A384417.P10120653914438787440

/-! ## A384417.P17387322440542138868

`A383928(n)/A285046(n)*A383928(n)`
-/

namespace A384417.P17387322440542138868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383928 n : ℚ) / (A285046 n : ℚ) * (A383928 n : ℚ)

end

end A384417.P17387322440542138868

/-! ## A384417.P4410204423232660267

`record[A262616(n)]*A285046(n)*A000302(n)`
-/

namespace A384417.P4410204423232660267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A285046 n * A000302 n

end

end A384417.P4410204423232660267

/-!
# A384418: Powerful exponentially squarefree numbers.

The programs for A384418, the canonical program `A384418.P15387864905350044636` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384418 has offset 1).

The definition of A384418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384418.P15387864905350044636

`record[A057521(A209061(n+1))]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A384418

/-- `record[A057521(A209061(n+1))]` -/
def P15387864905350044636.Spec : Prop :=
  ∀ n, P15387864905350044636.a n = A384418 (n + 1)

theorem P15387864905350044636.correct : P15387864905350044636.Spec := by
  intro n
  simp only [A384418, Nat.add_sub_cancel]

end A384418

/-! ## A384418.P11551363472216274463

`∩[A001694(n+1), A209061(n+1)]`
-/

namespace A384418.P11551363472216274463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384418.P11551363472216274463

namespace A384418

/-- `∩[A001694(n+1), A209061(n+1)]` -/
def P11551363472216274463.Spec : Prop :=
  ∀ n, (P11551363472216274463.a n : ℤ) = A384418 (n + 1)

end A384418

/-! ## A384418.P1648623289884701998

`filter[A001694(n+1), A370598(#)]`
-/

namespace A384418.P1648623289884701998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A384418.P1648623289884701998

namespace A384418

/-- `filter[A001694(n+1), A370598(#)]` -/
def P1648623289884701998.Spec : Prop :=
  ∀ n, P1648623289884701998.a n = A384418 (n + 1)

end A384418

/-!
# A384419: Exponentially squarefree prime powers.

The programs for A384419, the canonical program `A384419.P10385921889359605999` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384419 has offset 1).

The definition of A384419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384419.P8279355215264021264

`record[A034699(A209061(n+1))]`
-/

namespace A384419.P8279355215264021264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A209061 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384419.P8279355215264021264

namespace A384419

/-- `record[A034699(A209061(n+1))]` -/
def P8279355215264021264.Spec : Prop :=
  ∀ n, P8279355215264021264.a n = A384419 (n + 1)

end A384419

/-! ## A384419.P11242532233349444280

`∩[A000961(n+1), A209061(n+1)]`
-/

namespace A384419.P11242532233349444280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384419.P11242532233349444280

namespace A384419

/-- `∩[A000961(n+1), A209061(n+1)]` -/
def P11242532233349444280.Spec : Prop :=
  ∀ n, (P11242532233349444280.a n : ℤ) = A384419 (n + 1)

end A384419

/-! ## A384419.P10385921889359605999

`filter[A209061(n+1), A010055(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A384419

/-- `filter[A209061(n+1), A010055(#)]` -/
def P10385921889359605999.Spec : Prop :=
  ∀ n, P10385921889359605999.a n = A384419 (n + 1)

theorem P10385921889359605999.correct : P10385921889359605999.Spec := by
  intro n
  simp only [A384419, Nat.add_sub_cancel]

end A384419

/-! ## A384419.P18155140287052416818

`filter[A000961(n+1), A370598(#)]`
-/

namespace A384419.P18155140287052416818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A384419.P18155140287052416818

namespace A384419

/-- `filter[A000961(n+1), A370598(#)]` -/
def P18155140287052416818.Spec : Prop :=
  ∀ n, P18155140287052416818.a n = A384419 (n + 1)

end A384419

/-! ## A384419.P17264524091550970359

`record[A365683(n+1)/A008480(n+1)]`
-/

namespace A384419.P17264524091550970359
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365683 (n + 1) : ℚ) / (A008480 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384419.P17264524091550970359

namespace A384419

/-- `record[A365683(n+1)/A008480(n+1)]` -/
def P17264524091550970359.Spec : Prop :=
  ∀ n, P17264524091550970359.a n = (A384419 (n + 1) : ℚ)

end A384419

/-! ## A384419.P10001964309949438072

`eq[A063698(n), A374016(n)]`
-/

namespace A384419.P10001964309949438072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384419.P10001964309949438072

namespace A384419

/-- `eq[A063698(n), A374016(n)]` -/
def P10001964309949438072.Spec : Prop :=
  ∀ n, (P10001964309949438072.a n : ℤ) = A384419 (n + 1)

end A384419

/-!
# A384420: The number of exponentially squarefree prime powers (not including 1) that divide n.

The programs for A384420, the canonical program `A384420.P10522523073999906591` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384420 has offset 1).

The definition of A384420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384420.P10522523073999906591

`∑{e}[n+1, A070321(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A384420

/-- `∑{e}[n+1, A070321(#)]` -/
def P10522523073999906591.Spec : Prop :=
  ∀ n, P10522523073999906591.a n = A384420 (n + 1)

theorem P10522523073999906591.correct : P10522523073999906591.Spec := by
  intro n
  simp only [A384420, Nat.add_sub_cancel]

end A384420

/-! ## A384420.P16444754285371555329

`∑{e}[A365683(n+1), #]`
-/

namespace A384420.P16444754285371555329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A384420.P16444754285371555329

namespace A384420

/-- `∑{e}[A365683(n+1), #]` -/
def P16444754285371555329.Spec : Prop :=
  ∀ n, (P16444754285371555329.a n : ℤ) = A384420 (n + 1)

end A384420

/-! ## A384420.P15618178444889488549

`A001222(A365683(n+1))`
-/

namespace A384420.P15618178444889488549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A365683 (n + 1)).toNat

end

end A384420.P15618178444889488549

namespace A384420

/-- `A001222(A365683(n+1))` -/
def P15618178444889488549.Spec : Prop :=
  ∀ n, P15618178444889488549.a n = A384420 (n + 1)

end A384420

/-! ## A384420.P9063457424463171338

`A001222(n+1)-A319995(A355302(n+1))`
-/

namespace A384420.P9063457424463171338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A319995 (A355302 (n + 1)).toNat

end

end A384420.P9063457424463171338

namespace A384420

/-- `A001222(n+1)-A319995(A355302(n+1))` -/
def P9063457424463171338.Spec : Prop :=
  ∀ n, P9063457424463171338.a n = A384420 (n + 1)

end A384420

/-! ## A384420.P4832626135622686907

`∑{e}[n+1, A212628(A000108(#))]`
-/

namespace A384420.P4832626135622686907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A212628 (A000108 (Nat.factorization (f1 n) p)).toNat

end

end A384420.P4832626135622686907

namespace A384420

/-- `∑{e}[n+1, A212628(A000108(#))]` -/
def P4832626135622686907.Spec : Prop :=
  ∀ n, P4832626135622686907.a n = A384420 (n + 1)

end A384420

/-! ## A384420.P16081527270204524952

`A001222(A008277(A112624(n+1))+n)`
-/

namespace A384420.P16081527270204524952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008277 (A112624 (n + 1)).toNat + (n : ℤ)).toNat

end

end A384420.P16081527270204524952

namespace A384420

/-- `A001222(A008277(A112624(n+1))+n)` -/
def P16081527270204524952.Spec : Prop :=
  ∀ n, P16081527270204524952.a n = A384420 (n + 1)

end A384420

/-!
# A384421: The number of exponentially squarefree prime powers (not including 1) that unitarily divide n.

The programs for A384421, the canonical program `A384421.P5102326397673208716` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384421 has offset 1).

The definition of A384421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384421.P5102326397673208716

`log2(A383762(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A384421

/-- `log2(A383762(n+1))` -/
def P5102326397673208716.Spec : Prop :=
  ∀ n, P5102326397673208716.a n = (A384421 (n + 1) : ℝ)

end A384421

/-! ## A384421.P2913709958311126158

`∑{e}[n+1, A008966(#)]`
-/

namespace A384421.P2913709958311126158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A008966 (Nat.factorization (f1 n) p)

end

end A384421.P2913709958311126158

namespace A384421

/-- `∑{e}[n+1, A008966(#)]` -/
def P2913709958311126158.Spec : Prop :=
  ∀ n, P2913709958311126158.a n = A384421 (n + 1)

end A384421

/-! ## A384421.P13660415764798443357

`A001221(A383764(n+1))`
-/

namespace A384421.P13660415764798443357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A383764 (n + 1)).toNat

end

end A384421.P13660415764798443357

namespace A384421

/-- `A001221(A383764(n+1))` -/
def P13660415764798443357.Spec : Prop :=
  ∀ n, P13660415764798443357.a n = A384421 (n + 1)

end A384421

/-! ## A384421.P16932254098715879720

`A048105(2*A383762(n+1))`
-/

namespace A384421.P16932254098715879720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (2 * A383762 (n + 1)).toNat

end

end A384421.P16932254098715879720

namespace A384421

/-- `A048105(2*A383762(n+1))` -/
def P16932254098715879720.Spec : Prop :=
  ∀ n, P16932254098715879720.a n = A384421 (n + 1)

end A384421

/-! ## A384421.P6642744149734649381

`A368251(2*A383762(n+1))`
-/

namespace A384421.P6642744149734649381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368251 (2 * A383762 (n + 1)).toNat

end

end A384421.P6642744149734649381

namespace A384421

/-- `A368251(2*A383762(n+1))` -/
def P6642744149734649381.Spec : Prop :=
  ∀ n, P6642744149734649381.a n = A384421 (n + 1)

end A384421

/-! ## A384421.P10557400944699797658

`A368251(A383762(n+1)+A383762(n+1))`
-/

namespace A384421.P10557400944699797658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368251 (A383762 (n + 1) + A383762 (n + 1)).toNat

end

end A384421.P10557400944699797658

namespace A384421

/-- `A368251(A383762(n+1)+A383762(n+1))` -/
def P10557400944699797658.Spec : Prop :=
  ∀ n, P10557400944699797658.a n = A384421 (n + 1)

end A384421

/-!
# A384422: The number of prime powers (not including 1) p^e that divide n such that e is coprime to the p-adic valuation of n.

The programs for A384422, the canonical program `A384422.P13713361955298330699` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384422 has offset 1).

The definition of A384422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384422.P13713361955298330699

`∑{e}[n+1, A000010(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A384422

/-- `∑{e}[n+1, A000010(#)]` -/
def P13713361955298330699.Spec : Prop :=
  ∀ n, P13713361955298330699.a n = A384422 (n + 1)

theorem P13713361955298330699.correct : P13713361955298330699.Spec := by
  intro n
  simp only [A384422, Nat.add_sub_cancel]

end A384422

/-! ## A384422.P8341929944725532887

`∑{e}[n+1, A293484(#)]`
-/

namespace A384422.P8341929944725532887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A293484 (Nat.factorization (f1 n) p)

end

end A384422.P8341929944725532887

namespace A384422

/-- `∑{e}[n+1, A293484(#)]` -/
def P8341929944725532887.Spec : Prop :=
  ∀ n, P8341929944725532887.a n = A384422 (n + 1)

end A384422

/-! ## A384422.P16034809249761362728

`∑{e}[n+1, A109606(#)+1]`
-/

namespace A384422.P16034809249761362728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A109606 (Nat.factorization (f1 n) p) + 1)

end

end A384422.P16034809249761362728

namespace A384422

/-- `∑{e}[n+1, A109606(#)+1]` -/
def P16034809249761362728.Spec : Prop :=
  ∀ n, P16034809249761362728.a n = A384422 (n + 1)

theorem P16034809249761362728.correct : P16034809249761362728.Spec := by
  intro n
  simp only [A384422, Nat.add_sub_cancel, A384422.P16034809249761362728.f1, A384422.P16034809249761362728.a, A384422.P13713361955298330699.f1, A384422.P13713361955298330699.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A384422

/-! ## A384422.P8747135793042087020

`∑{e}[n+1, A039649(#)-1]`
-/

namespace A384422.P8747135793042087020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A039649 (Nat.factorization (f1 n) p) - 1)

end

end A384422.P8747135793042087020

namespace A384422

/-- `∑{e}[n+1, A039649(#)-1]` -/
def P8747135793042087020.Spec : Prop :=
  ∀ n, P8747135793042087020.a n = A384422 (n + 1)

theorem P8747135793042087020.correct : P8747135793042087020.Spec := by
  intro n
  simp only [A384422, Nat.add_sub_cancel, A384422.P8747135793042087020.f1, A384422.P8747135793042087020.a, A384422.P13713361955298330699.f1, A384422.P13713361955298330699.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A384422

/-! ## A384422.P14196641592780641384

`∑{e}[n+1, A193773(A288554(#))]`
-/

namespace A384422.P14196641592780641384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A193773 (A288554 (Nat.factorization (f1 n) p)).toNat

end

end A384422.P14196641592780641384

namespace A384422

/-- `∑{e}[n+1, A193773(A288554(#))]` -/
def P14196641592780641384.Spec : Prop :=
  ∀ n, P14196641592780641384.a n = A384422 (n + 1)

end A384422

/-!
# A384423: The number of prime powers (not including 1) p^e that divide n such that e is unitarily coprime to the p-adic valuation of n.

The programs for A384423, the canonical program `A384423.P12075957193450750820` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384423 has offset 1).

The definition of A384423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384423.P12075957193450750820

`∑{e}[n+1, A047994(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A384423

/-- `∑{e}[n+1, A047994(#)]` -/
def P12075957193450750820.Spec : Prop :=
  ∀ n, P12075957193450750820.a n = A384423 (n + 1)

theorem P12075957193450750820.correct : P12075957193450750820.Spec := by
  intro n
  simp only [A384423, Nat.add_sub_cancel]

end A384423

/-! ## A384423.P2686883653359073637

`∑{e}[n+1, A001221(A319166(#))]`
-/

namespace A384423.P2686883653359073637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001221 (A319166 (Nat.factorization (f1 n) p)).toNat

end

end A384423.P2686883653359073637

namespace A384423

/-- `∑{e}[n+1, A001221(A319166(#))]` -/
def P2686883653359073637.Spec : Prop :=
  ∀ n, P2686883653359073637.a n = A384423 (n + 1)

end A384423

/-! ## A384423.P4821739049255293437

`A125173(A318472(n+1))`
-/

namespace A384423.P4821739049255293437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (A318472 (n + 1)).toNat

end

end A384423.P4821739049255293437

namespace A384423

/-- `A125173(A318472(n+1))` -/
def P4821739049255293437.Spec : Prop :=
  ∀ n, P4821739049255293437.a n = A384423 (n + 1)

end A384423

/-! ## A384423.P5909061705989993523

`∑{e}[n+1, A358371(A007505(#))]`
-/

namespace A384423.P5909061705989993523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A358371 (A007505 (Nat.factorization (f1 n) p)).toNat

end

end A384423.P5909061705989993523

namespace A384423

/-- `∑{e}[n+1, A358371(A007505(#))]` -/
def P5909061705989993523.Spec : Prop :=
  ∀ n, P5909061705989993523.a n = A384423 (n + 1)

end A384423

/-! ## A384423.P10073883985184541906

`A046951(A256691(n+1))-A046951(n+1)`
-/

namespace A384423.P10073883985184541906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A256691 (n + 1)).toNat - A046951 (n + 1)

end

end A384423.P10073883985184541906

namespace A384423

/-- `A046951(A256691(n+1))-A046951(n+1)` -/
def P10073883985184541906.Spec : Prop :=
  ∀ n, P10073883985184541906.a n = A384423 (n + 1)

end A384423

/-!
# A384426: Expansion of Sum_{k>=1} x^k * Product_{j=k..2*k} (1 + x^j).

The programs for A384426, there is no canonical definition to state claims against.
-/

/-! ## A384426.P15238047391445660034

`A059169(A186348(n+1))%A294923(3*n+1)`
-/

namespace A384426.P15238047391445660034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059169 (A186348 (n + 1)).toNat) (A294923 (3 * n + 1))

end

end A384426.P15238047391445660034

/-! ## A384426.P2459465025402349749

`A000720(n+1)-A010059(A036256(n))`
-/

namespace A384426.P2459465025402349749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A010059 (A036256 n).toNat

end

end A384426.P2459465025402349749

/-! ## A384426.P4299364526455588833

`∑[A359591(A375168(3*n+2)+A156061(n+1))]`
-/

namespace A384426.P4299364526455588833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359591 (A375168 (3 * n + 2) + A156061 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384426.P4299364526455588833

/-!
# A384427: Evil numbers that are not a multiple of any other evil number.

The programs for A384427, there is no canonical definition to state claims against.
-/

/-! ## A384427.P12010326700792538626

`∪[A027699(n+1), A217790(n+1)]`
-/

namespace A384427.P12010326700792538626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384427.P12010326700792538626

/-! ## A384427.P2950870612054576867

`eq[n+1, A260934(n+1)]+1`
-/

namespace A384427.P2950870612054576867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A384427.P2950870612054576867

/-! ## A384427.P16981548009959799491

`eq[A001065(n+1), A227873(n+1)]+1`
-/

namespace A384427.P16981548009959799491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227873 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A384427.P16981548009959799491

/-! ## A384427.P14550925814581917266

`eq[A127250(n), A257000(n)]`
-/

namespace A384427.P14550925814581917266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127250 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384427.P14550925814581917266

/-!
# A384435: Expansion of e.g.f. 2/(5 - 3*exp(2*x)).

The programs for A384435, there is no canonical definition to state claims against.
-/

/-! ## A384435.P7187305070796286596

`A165477(A113079(n))*A187761(n)`
-/

namespace A384435.P7187305070796286596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 (A113079 n).toNat * A187761 n

end

end A384435.P7187305070796286596

/-!
# A384443: a(n) is the product of the prime digits of n; or 1 if n contains no prime digits.

The programs for A384443, the canonical program `A384443.P5521537106739520345` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384443 has offset 1).

The definition of A384443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 898 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384443.P5521537106739520345

`A295665(A113581(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A384443

/-- `A295665(A113581(n+1))` -/
def P5521537106739520345.Spec : Prop :=
  ∀ n, P5521537106739520345.a n = A384443 (n + 1)

theorem P5521537106739520345.correct : P5521537106739520345.Spec := by
  intro n
  simp only [A384443, Nat.add_sub_cancel]

end A384443

/-! ## A384443.P12951157784237097862

`A052423(A375784(n+2))`
-/

namespace A384443.P12951157784237097862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052423 (A375784 (n + 2)).toNat

end

end A384443.P12951157784237097862

namespace A384443

/-- `A052423(A375784(n+2))` -/
def P12951157784237097862.Spec : Prop :=
  ∀ n, P12951157784237097862.a n = A384443 (n + 1)

end A384443

/-!
# A384445: a(n) is the number of multisets of n decimal digits where the sum of the digits equals the product of the prime digits.

The programs for A384445, there is no canonical definition to state claims against.
-/

/-! ## A384445.P2479628173852457623

`∑[A384505(n+1)]`
-/

namespace A384445.P2479628173852457623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384445.P2479628173852457623

/-!
# A384446: Triangle read by rows: T(n, k) = |gcd(n, k) - k|.

The programs for A384446, there is no canonical definition to state claims against.
-/

/-! ## A384446.P13024366241815760823

`val(A000217(A225467(n)), 3)`
-/

namespace A384446.P13024366241815760823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000217 (A225467 n).toNat).toNat 3

end

end A384446.P13024366241815760823

/-! ## A384446.P14439904238827907289

`A007949(A222444(n+1)+A048993(n))`
-/

namespace A384446.P14439904238827907289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A222444 (n + 1) + A048993 n).toNat

end

end A384446.P14439904238827907289

/-! ## A384446.P14689507284691810495

`A007814(A008277(n+1)*A143494(n+2))`
-/

namespace A384446.P14689507284691810495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A008277 (n + 1) * A143494 (n + 2)).toNat

end

end A384446.P14689507284691810495

/-! ## A384446.P5208303295137422126

`A007949(A225467(n))`
-/

namespace A384446.P5208303295137422126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A225467 n).toNat

end

end A384446.P5208303295137422126

/-! ## A384446.P12821377923778078350

`A215879(A225467(n)-1)`
-/

namespace A384446.P12821377923778078350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215879 (A225467 n - 1).toNat

end

end A384446.P12821377923778078350

/-!
# A384447: Array read by ascending antidiagonals: A(n, k) = gcd(n, k) if n > 0 otherwise 0.

The programs for A384447, there is no canonical definition to state claims against.
-/

/-! ## A384447.P10395392218791686602

`char[comp[∑[n-1]]]*A109004(n)`
-/

namespace A384447.P10395392218791686602
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
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A109004 n

end

end A384447.P10395392218791686602

/-! ## A384447.P3652221518312277415

`A356352(A173787(n))`
-/

namespace A384447.P3652221518312277415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356352 (A173787 n).toNat

end

end A384447.P3652221518312277415

/-! ## A384447.P14306483740287031164

`A109004(n*A023532(n))`
-/

namespace A384447.P14306483740287031164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 ((n : ℤ) * A023532 n).toNat

end

end A384447.P14306483740287031164

/-! ## A384447.P18154778070617701131

`A109004(n)%A027421(n)`
-/

namespace A384447.P18154778070617701131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109004 n) (A027421 n)

end

end A384447.P18154778070617701131

/-! ## A384447.P2569142688047028902

`A109004(n%A104684(n))`
-/

namespace A384447.P2569142688047028902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (Int.tmod (n : ℤ) (A104684 n)).toNat

end

end A384447.P2569142688047028902

/-! ## A384447.P12962432211467332821

`A281726(n+1)-A051340(n)`
-/

namespace A384447.P12962432211467332821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281726 (n + 1) - A051340 n

end

end A384447.P12962432211467332821

/-! ## A384447.P13991500167196929874

`lcm(A109004(n), A373223(n+1))`
-/

namespace A384447.P13991500167196929874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109004 n) (A373223 (n + 1))

end

end A384447.P13991500167196929874

/-! ## A384447.P13611034139436368479

`and(A109004(n), A316554(n+1))`
-/

namespace A384447.P13611034139436368479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109004 n) (A316554 (n + 1))

end

end A384447.P13611034139436368479

/-!
# A384449: Primes having only {0, 4, 7} as digits.

The programs for A384449, there is no canonical definition to state claims against.
-/

/-! ## A384449.P4429242952860010781

`∩[A386070(n+1), A386072(n+1)]`
-/

namespace A384449.P4429242952860010781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P4429242952860010781

/-! ## A384449.P8206245254374366592

`∩[A386070(n+1), A386074(n+1)]`
-/

namespace A384449.P8206245254374366592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P8206245254374366592

/-! ## A384449.P6643623353716462859

`∩[A386072(n+1), A386074(n+1)]`
-/

namespace A384449.P6643623353716462859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P6643623353716462859

/-! ## A384449.P10771302032102556165

`∩[A386047(n+1), A386070(n+1)]`
-/

namespace A384449.P10771302032102556165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P10771302032102556165

/-! ## A384449.P16636660072561225579

`∩[A386047(n+1), A386072(n+1)]`
-/

namespace A384449.P16636660072561225579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P16636660072561225579

/-! ## A384449.P11651374496097067229

`∩[A386047(n+1), A386074(n+1)]`
-/

namespace A384449.P11651374496097067229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P11651374496097067229

/-! ## A384449.P9072546438261875845

`∩[A386047(n+1), A386075(n+1)]`
-/

namespace A384449.P9072546438261875845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P9072546438261875845

/-! ## A384449.P11740620295450492190

`∩[A386070(n+1), A386075(n+1)]`
-/

namespace A384449.P11740620295450492190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P11740620295450492190

/-! ## A384449.P1241964320853445572

`∩[A386072(n+1), A386075(n+1)]`
-/

namespace A384449.P1241964320853445572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P1241964320853445572

/-! ## A384449.P7356993850768617964

`∩[A386074(n+1), A386075(n+1)]`
-/

namespace A384449.P7356993850768617964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P7356993850768617964

/-! ## A384449.P8192955290574207034

`∩[A386047(n+1), A386058(n+1)]`
-/

namespace A384449.P8192955290574207034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P8192955290574207034

/-! ## A384449.P8129321678017955311

`∩[A386058(n+1), A386070(n+1)]`
-/

namespace A384449.P8129321678017955311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P8129321678017955311

/-! ## A384449.P4260282191268794644

`∩[A386058(n+1), A386072(n+1)]`
-/

namespace A384449.P4260282191268794644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P4260282191268794644

/-! ## A384449.P6102128575136642514

`∩[A386058(n+1), A386074(n+1)]`
-/

namespace A384449.P6102128575136642514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P6102128575136642514

/-! ## A384449.P2841629682430841244

`∩[A386058(n+1), A386075(n+1)]`
-/

namespace A384449.P2841629682430841244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P2841629682430841244

/-! ## A384449.P17314156545176102737

`∩[A386029(n+1), A386047(n+1)]`
-/

namespace A384449.P17314156545176102737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P17314156545176102737

/-! ## A384449.P10888765431307611304

`∩[A386029(n+1), A386058(n+1)]`
-/

namespace A384449.P10888765431307611304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P10888765431307611304

/-! ## A384449.P17859646183221111217

`∩[A386029(n+1), A386070(n+1)]`
-/

namespace A384449.P17859646183221111217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P17859646183221111217

/-! ## A384449.P13833896813847606830

`∩[A386029(n+1), A386072(n+1)]`
-/

namespace A384449.P13833896813847606830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P13833896813847606830

/-! ## A384449.P12144433896805416318

`∩[A386029(n+1), A386074(n+1)]`
-/

namespace A384449.P12144433896805416318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384449.P12144433896805416318

/-!
# A384450: a(1) = 0; thereafter, a(n) is the number of arithmetic progressions of length 3 or greater at indices in an arithmetic progression ending at a(n-1).

The programs for A384450, there is no canonical definition to state claims against.
-/

/-! ## A384450.P1442994269191864479

`A245588(A047769(n+1))`
-/

namespace A384450.P1442994269191864479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245588 (A047769 (n + 1)).toNat

end

end A384450.P1442994269191864479

/-! ## A384450.P11439094445777707980

`A374398(A115124(n+1))`
-/

namespace A384450.P11439094445777707980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374398 (A115124 (n + 1)).toNat

end

end A384450.P11439094445777707980

/-! ## A384450.P16501050496555384833

`A121467(A033054(n+2))`
-/

namespace A384450.P16501050496555384833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121467 (A033054 (n + 2)).toNat

end

end A384450.P16501050496555384833

/-! ## A384450.P17908114917665718050

`A000120(Δ[A343045(floor(n/2)!)])`
-/

namespace A384450.P17908114917665718050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343045 (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (n + 1) - f1 n).toNat

end

end A384450.P17908114917665718050

/-! ## A384450.P10259025152047698159

`A001222(A275312((n+1)*n%2))`
-/

namespace A384450.P10259025152047698159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A275312 ((n + 1) * (n % 2))).toNat

end

end A384450.P10259025152047698159

/-!
# A384452: a(n) is the sum of squares of the unitary divisors of n!.

The programs for A384452, the canonical program `A384452.P11109828349487245478` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384452 has offset 1).

The definition of A384452 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034676, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A384452.P11109828349487245478

`A034676((n+1)!)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A384452

/-- `A034676((n+1)!)` -/
def P11109828349487245478.Spec : Prop :=
  ∀ n, P11109828349487245478.a n = A384452 (n + 1)

theorem P11109828349487245478.correct : P11109828349487245478.Spec := by
  intro n
  simp only [A384452, Nat.add_sub_cancel]

end A384452

/-! ## A384452.P4652258419002204583

`A034676(∏[n+1])`
-/

namespace A384452.P4652258419002204583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A384452.P4652258419002204583

namespace A384452

/-- `A034676(∏[n+1])` -/
def P4652258419002204583.Spec : Prop :=
  ∀ n, P4652258419002204583.a n = A384452 (n + 1)

theorem P4652258419002204583.correct : P4652258419002204583.Spec := by
  intro n
  simp only [A384452, Nat.add_sub_cancel, A384452.P4652258419002204583.f1, A384452.P4652258419002204583.a, A384452.P11109828349487245478.a, SequenceMachineLib.memo_apply]
  try simp

end A384452

/-! ## A384452.P5690954803298383834

`record[A034676(A178803(n))]`
-/

namespace A384452.P5690954803298383834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (A178803 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384452.P5690954803298383834

namespace A384452

/-- `record[A034676(A178803(n))]` -/
def P5690954803298383834.Spec : Prop :=
  ∀ n, P5690954803298383834.a n = A384452 (n + 1)

end A384452

/-!
# A384453: a(n) is the n-th q-factorial number for q=-n.

The programs for A384453, there is no canonical definition to state claims against.
-/

/-! ## A384453.P14673097106064324858

`A384454(∑[4*n])`
-/

namespace A384453.P14673097106064324858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384454 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A384453.P14673097106064324858

/-! ## A384453.P10640559603698678352

`A139551(n)*A384454(A046092(n))`
-/

namespace A384453.P10640559603698678352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139551 n * A384454 (A046092 n).toNat

end

end A384453.P10640559603698678352

/-!
# A384468: a(0) = 1; for n >= 1, a(n) = a(n-1)/2 if a(n-1) is even, otherwise a(n) = 2*a(n-1) + n.

The programs for A384468, there is no canonical definition to state claims against.
-/

/-! ## A384468.P16829003230756450235

`A350877(3%comp[∑[n]]+n)%A395171(n+5)`
-/

namespace A384468.P16829003230756450235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350877 (3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)) (A395171 (n + 5))

end

end A384468.P16829003230756450235

/-! ## A384468.P6840851513959920110

`A350877(n+3)%A268448(A137230(n+1))`
-/

namespace A384468.P6840851513959920110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350877 (n + 3)) (A268448 (A137230 (n + 1)).toNat)

end

end A384468.P6840851513959920110

/-!
# A384479: a(n) is the number of ways to partition n X n X n cube into 5 noncongruent cuboids.

The programs for A384479, there is no canonical definition to state claims against.
-/

/-! ## A384479.P17095085188045876560

`A386296(A000124(n+5)-5)`
-/

namespace A384479.P17095085188045876560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386296 (A000124 (n + 5) - 5).toNat

end

end A384479.P17095085188045876560

/-! ## A384479.P8495287323366983798

`A386296(lt[A368522(n+5), ∏{e}[n+1, #+1]])`
-/

namespace A384479.P8495287323366983798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368522 (n + 5)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386296 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A384479.P8495287323366983798

/-! ## A384479.P6616819128766070737

`A386296(lt[A368522(n+5), A077767(n+1)])`
-/

namespace A384479.P6616819128766070737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368522 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386296 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A384479.P6616819128766070737

/-!
# A384480: Square array read by antidiagonals: T(n,k) is the length of a shortest addition-composition chain for n*x+k, starting with 1 and x; n, k >= 0.

The programs for A384480, there is no canonical definition to state claims against.
-/

/-! ## A384480.P8713528341766702937

`A318464(A387138(n))`
-/

namespace A384480.P8713528341766702937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318464 (A387138 n).toNat

end

end A384480.P8713528341766702937

/-! ## A384480.P1341459935931501799

`A332999(A014784(n))`
-/

namespace A384480.P1341459935931501799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332999 (A014784 n).toNat

end

end A384480.P1341459935931501799

/-! ## A384480.P17172648658708605451

`A307707(n+1)-A036987(A000032(n))`
-/

namespace A384480.P17172648658708605451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (n + 1) - A036987 (A000032 n).toNat

end

end A384480.P17172648658708605451

/-!
# A384481: Smallest value of f(1) for a function f(x) = b*x+c with nonnegative integer coefficients and a shortest addition-composition chain of length n, starting with 1 and x.

The programs for A384481, there is no canonical definition to state claims against.
-/

/-! ## A384481.P3392527441521605104

`A337448(n+1)+A118898(n)`
-/

namespace A384481.P3392527441521605104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337448 (n + 1) + A118898 n

end

end A384481.P3392527441521605104

/-! ## A384481.P55648409285835133

`A339985(n)+A119257(n+1)`
-/

namespace A384481.P55648409285835133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339985 n + A119257 (n + 1)

end

end A384481.P55648409285835133

/-! ## A384481.P11409594867864357966

`A332743(n)+A167701(n+1)`
-/

namespace A384481.P11409594867864357966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332743 n + A167701 (n + 1)

end

end A384481.P11409594867864357966

/-! ## A384481.P10593670410891443195

`A339985(n)+A199426(n+1)`
-/

namespace A384481.P10593670410891443195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339985 n + A199426 (n + 1)

end

end A384481.P10593670410891443195

/-! ## A384481.P8373415704883861483

`A339985(n)+A266645(n+1)`
-/

namespace A384481.P8373415704883861483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339985 n + A266645 (n + 1)

end

end A384481.P8373415704883861483

/-!
# A384482: Number of functions f(x) = b*x+c with nonnegative integer coefficients and a shortest addition-composition chain of length n, starting with 1 and x.

The programs for A384482, there is no canonical definition to state claims against.
-/

/-! ## A384482.P18299021153164592616

`A166111(A098859(n))+A141494(n+1)`
-/

namespace A384482.P18299021153164592616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166111 (A098859 n).toNat + A141494 (n + 1)

end

end A384482.P18299021153164592616

/-! ## A384482.P1843183826700596638

`A268448(A059015(n))+A141494(n+1)`
-/

namespace A384482.P1843183826700596638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (A059015 n).toNat + A141494 (n + 1)

end

end A384482.P1843183826700596638

/-!
# A384483: Length of shortest addition-composition chain for n, starting with 1 and x.

The programs for A384483, there is no canonical definition to state claims against.
-/

/-! ## A384483.P1874615743067259470

`A284248(A073616(n+1))`
-/

namespace A384483.P1874615743067259470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284248 (A073616 (n + 1)).toNat

end

end A384483.P1874615743067259470

/-! ## A384483.P3826983059452824361

`A064097(n+1)-A353626(A132991(2*n))`
-/

namespace A384483.P3826983059452824361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) - A353626 (A132991 (2 * n)).toNat

end

end A384483.P3826983059452824361

/-!
# A384485: Number of integers with a shortest addition-composition chain of length n, starting with 1 and x, i.e., number of integers k with A384483(k) = n.

The programs for A384485, there is no canonical definition to state claims against.
-/

/-! ## A384485.P17285471357817036665

`A161350(A055228(n))`
-/

namespace A384485.P17285471357817036665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161350 (A055228 n).toNat

end

end A384485.P17285471357817036665

/-! ## A384485.P10074402129801158017

`A364350(A209083(n))`
-/

namespace A384485.P10074402129801158017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364350 (A209083 n).toNat

end

end A384485.P10074402129801158017

/-! ## A384485.P2046070626206917176

`A122934(A150483(n+1))`
-/

namespace A384485.P2046070626206917176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122934 (A150483 (n + 1)).toNat

end

end A384485.P2046070626206917176

/-!
# A384488: Numbers k having a divisor d such that d - k/d is prime.

The programs for A384488, there is no canonical definition to state claims against.
-/

/-! ## A384488.P6642417095037936346

`A347630(n+1)+A074775(n+1)+A000007(A001045(n))`
-/

namespace A384488.P6642417095037936346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347630 (n + 1) + (A074775 (n + 1) + A000007 (A001045 n).toNat)

end

end A384488.P6642417095037936346

/-! ## A384488.P11643601090200715384

`A127254(3*n+1)+A356845(n+1)+A008966(A356956(2*n+5))`
-/

namespace A384488.P11643601090200715384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 (3 * n + 1) + (A356845 (n + 1) + A008966 (A356956 (2 * n + 5)).toNat)

end

end A384488.P11643601090200715384

/-!
# A384490: Numbers m such that both roots of x^2 - x - 1 modulo m are primitive roots modulo m.

The programs for A384490, there is no canonical definition to state claims against.
-/

/-! ## A384490.P16017324759083420419

`filter[A003147(n+2), A068716(#)]`
-/

namespace A384490.P16017324759083420419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A068716 (f1 j).toNat = 1) n)

end

end A384490.P16017324759083420419

/-! ## A384490.P3882325460641726339

`filter[A003147(n+2), A079260(#)]`
-/

namespace A384490.P3882325460641726339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079260 (f1 j).toNat = 1) n)

end

end A384490.P3882325460641726339

/-! ## A384490.P2861687613684713400

`filter[A003147(n+2), A133872(#)]`
-/

namespace A384490.P2861687613684713400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A384490.P2861687613684713400

/-! ## A384490.P9928605370126196391

`filter[A003147(n+2), A229062(#)]`
-/

namespace A384490.P9928605370126196391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A384490.P9928605370126196391

/-! ## A384490.P12099315666180700667

`filter[A003147(n+2), A255817(#)]`
-/

namespace A384490.P12099315666180700667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A255817 (f1 j).toNat = 1) n)

end

end A384490.P12099315666180700667

/-!
# A384494: Triangle read by rows: T(n, k) = (-1)^k*(k+1)*(n+1-k)!, n >= 0, k = 0..n.

The programs for A384494, the canonical program `A384494.P17282831565550872207` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384494 has offset 0).

The definition of A384494 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^col(n)*(col(n)+1)*(row(n)+1-col(n))!` (program `A384494.P17282831565550872207`, by `A384494.P17282831565550872207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384494.P17282831565550872207

`(-1)^col(n)*(col(n)+1)*(row(n)+1-col(n))!`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384494

/-- `(-1)^col(n)*(col(n)+1)*(row(n)+1-col(n))!` -/
def P17282831565550872207.Spec : Prop :=
  ∀ n, P17282831565550872207.a n = A384494 n

theorem P17282831565550872207.correct : P17282831565550872207.Spec := by
  intro n
  simp only [A384494]

end A384494

/-!
# A384497: a(n) is the number of binary strings of length n which contain exactly one run of 1s of even length.

The programs for A384497, there is no canonical definition to state claims against.
-/

/-! ## A384497.P14897693326702107776

`A284449(A062399(n+1))`
-/

namespace A384497.P14897693326702107776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284449 (A062399 (n + 1)).toNat

end

end A384497.P14897693326702107776

/-! ## A384497.P311105504444791151

`A284449(A120126(n+1))`
-/

namespace A384497.P311105504444791151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284449 (A120126 (n + 1)).toNat

end

end A384497.P311105504444791151

/-! ## A384497.P7448894523523606828

`A284449(A351870(n+1))`
-/

namespace A384497.P7448894523523606828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284449 (A351870 (n + 1)).toNat

end

end A384497.P7448894523523606828

/-! ## A384497.P2825803903802430236

`A285152(A000124(n*A139337(n)))`
-/

namespace A384497.P2825803903802430236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (A000124 ((n : ℤ) * A139337 n).toNat).toNat

end

end A384497.P2825803903802430236

/-! ## A384497.P5040213144011968631

`A285152(A000124(n)^A139337(n))`
-/

namespace A384497.P5040213144011968631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285152 (SequenceMachineLib.roundAway ((A000124 n : ℚ) ^ (A139337 n : ℤ))).toNat

end

end A384497.P5040213144011968631

/-!
# A384498: Squarefree numbers whose distinct prime factors can be partitioned into two sets with equal sums.

The programs for A384498, there is no canonical definition to state claims against.
-/

/-! ## A384498.P15494563518293787929

`∩[A221054(n+1), A295102(n+1)]`
-/

namespace A384498.P15494563518293787929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384498.P15494563518293787929

/-! ## A384498.P6298703256785953249

`∩[A295102(n+1), A392780(n+1)]`
-/

namespace A384498.P6298703256785953249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384498.P6298703256785953249

/-! ## A384498.P15696637711309422673

`filter[A221054(n+1), A008966(#)]`
-/

namespace A384498.P15696637711309422673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A384498.P15696637711309422673

/-! ## A384498.P8623991333730984275

`filter[A392780(n+1), A008966(#)]`
-/

namespace A384498.P8623991333730984275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A384498.P8623991333730984275

/-! ## A384498.P6427602501409369860

`filter[A221054(n+1), A354819(#)]`
-/

namespace A384498.P6427602501409369860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A384498.P6427602501409369860

/-! ## A384498.P14878638957740695681

`filter[A392780(n+1), A354819(#)]`
-/

namespace A384498.P14878638957740695681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A384498.P14878638957740695681

/-! ## A384498.P18214369965558861864

`filter[A221054(n+1), A323154(#)]`
-/

namespace A384498.P18214369965558861864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A384498.P18214369965558861864

/-! ## A384498.P15596807081911872215

`filter[A392780(n+1), A323154(#)]`
-/

namespace A384498.P15596807081911872215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A384498.P15596807081911872215

