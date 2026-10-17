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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C014
import Seq.Opaque.C015
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
# A133400: a(0)=a(1)=a(2) = 1, thereafter a(n) = a(n-1)*a(n-2)*a(n-3) + 1.

The programs for A133400, the canonical program `A133400.P9791915557433783592` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133400 has offset 0).

The definition of A133400 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)*a(n-3)+1` (program `A133400.P9791915557433783592`, by `A133400.P9791915557433783592.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133400.P9791915557433783592

`a(n-1)*a(n-2)*a(n-3)+1` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133400

/-- `a(n-1)*a(n-2)*a(n-3)+1` -/
def P9791915557433783592.Spec : Prop :=
  ∀ n, (P9791915557433783592.a n : ℤ) = A133400 n

theorem P9791915557433783592.correct : P9791915557433783592.Spec := by
  intro n
  simp only [A133400]

end A133400

/-! ## A133400.P3118230314343225632

`ratio[A276416(n)]`
-/

namespace A133400.P3118230314343225632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276416 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A133400.P3118230314343225632

namespace A133400

/-- `ratio[A276416(n)]` -/
def P3118230314343225632.Spec : Prop :=
  ∀ n, P3118230314343225632.a n = (A133400 n : ℚ)

end A133400

/-! ## A133400.P7150621744462327726

`A276416(n+1)/A276416(n)`
-/

namespace A133400.P7150621744462327726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276416 (n + 1) : ℚ) / (A276416 n : ℚ)

end

end A133400.P7150621744462327726

namespace A133400

/-- `A276416(n+1)/A276416(n)` -/
def P7150621744462327726.Spec : Prop :=
  ∀ n, P7150621744462327726.a n = (A133400 n : ℚ)

end A133400

/-! ## A133400.P7065770779478029676

`(A051768(2*n+1)+1)*A051786(n+1)`
-/

namespace A133400.P7065770779478029676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051768 (2 * n + 1) + 1) * A051786 (n + 1)

end

end A133400.P7065770779478029676

namespace A133400

/-- `(A051768(2*n+1)+1)*A051786(n+1)` -/
def P7065770779478029676.Spec : Prop :=
  ∀ n, P7065770779478029676.a n = A133400 n

end A133400

/-!
# A133404: Table of sum of numerator and denominator of Farey sequences, read by rows.

The programs for A133404, there is no canonical definition to state claims against.
-/

/-! ## A133404.P14885789283325551392

`A006843(n+1)+A006842(n+1)`
-/

namespace A133404.P14885789283325551392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006843 (n + 1) + A006842 (n + 1)

end

end A133404.P14885789283325551392

/-! ## A133404.P13234177179611949608

`A191607(n+1)+2*A006842(n+1)`
-/

namespace A133404.P13234177179611949608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191607 (n + 1) + 2 * A006842 (n + 1)

end

end A133404.P13234177179611949608

/-! ## A133404.P11515555513422434510

`2*A006843(n+1)-A191607(n+1)`
-/

namespace A133404.P11515555513422434510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006843 (n + 1) - A191607 (n + 1)

end

end A133404.P11515555513422434510

/-! ## A133404.P11666063599126641877

`A191607(n+1)+A005843(A006842(n+1))`
-/

namespace A133404.P11666063599126641877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191607 (n + 1) + A005843 (A006842 (n + 1)).toNat

end

end A133404.P11666063599126641877

/-! ## A133404.P8808581496400018593

`A004277(A006843(n+1))-A191607(n+1)`
-/

namespace A133404.P8808581496400018593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A006843 (n + 1)).toNat - A191607 (n + 1)

end

end A133404.P8808581496400018593

/-!
# A133405: a(n) = 3*a(n-1) - a(n-3) + 3*a(n-4), with initial values 0,0,0,1.

The programs for A133405, the canonical program `A133405.P10083720296963352878` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133405 has offset 0).

The definition of A133405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-3)+3*a(n-4)` (program `A133405.P10083720296963352878`, by `A133405.P10083720296963352878.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133405.P10083720296963352878

`3*a(n-1)-a(n-3)+3*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133405

/-- `3*a(n-1)-a(n-3)+3*a(n-4)` -/
def P10083720296963352878.Spec : Prop :=
  ∀ n, P10083720296963352878.a n = A133405 n

theorem P10083720296963352878.correct : P10083720296963352878.Spec := by
  intro n
  simp only [A133405]

end A133405

/-! ## A133405.P11581584685122403346

`xor(3*a(n-1), char[3*n])` with `a(0)=0`
-/

namespace A133405.P11581584685122403346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (3 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A133405.P11581584685122403346

namespace A133405

/-- `xor(3*a(n-1), char[3*n])` -/
def P11581584685122403346.Spec : Prop :=
  ∀ n, (P11581584685122403346.a n : ℤ) = A133405 n

end A133405

/-! ## A133405.P7864930408798249409

`3^(n-3)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A133405.P7864930408798249409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - a (n - 3)

end

end A133405.P7864930408798249409

namespace A133405

/-- `3^(n-3)-a(n-3)` -/
def P7864930408798249409.Spec : Prop :=
  ∀ n, P7864930408798249409.a n = (A133405 n : ℚ)

end A133405

/-! ## A133405.P10306104497839055945

`Δ[A133409(n)]`
-/

namespace A133405.P10306104497839055945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133405.P10306104497839055945

namespace A133405

/-- `Δ[A133409(n)]` -/
def P10306104497839055945.Spec : Prop :=
  ∀ n, P10306104497839055945.a n = A133405 n

end A133405

/-! ## A133405.P17023115283649004313

`A133409(n+1)-A133409(n)`
-/

namespace A133405.P17023115283649004313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133409 (n + 1) - A133409 n

end

end A133405.P17023115283649004313

namespace A133405

/-- `A133409(n+1)-A133409(n)` -/
def P17023115283649004313.Spec : Prop :=
  ∀ n, P17023115283649004313.a n = A133405 n

end A133405

/-! ## A133405.P7065982076296587449

`round(round((sqrt(3)^n/2)²)/7)`
-/

namespace A133405.P7065982076296587449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) ^ n / 2) ^ 2) : ℚ) / 7)

end

end A133405.P7065982076296587449

namespace A133405

/-- `round(round((sqrt(3)^n/2)²)/7)` -/
def P7065982076296587449.Spec : Prop :=
  ∀ n, P7065982076296587449.a n = A133405 n

end A133405

/-! ## A133405.P3939443754818017320

`Δ[A135344(n)/4]`
-/

namespace A133405.P3939443754818017320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135344 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133405.P3939443754818017320

namespace A133405

/-- `Δ[A135344(n)/4]` -/
def P3939443754818017320.Spec : Prop :=
  ∀ n, P3939443754818017320.a n = (A133405 n : ℚ)

end A133405

/-!
# A133406: Half the number of ways of placing up to n pawns on a length n chessboard row so that the row balances at its middle.

The programs for A133406, there is no canonical definition to state claims against.
-/

/-! ## A133406.P16003003470529394991

`A222955(n+1)/2`
-/

namespace A133406.P16003003470529394991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222955 (n + 1) : ℚ) / 2

end

end A133406.P16003003470529394991

/-! ## A133406.P18120181481894226498

`A222855(n+1)-2^n`
-/

namespace A133406.P18120181481894226498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222855 (n + 1) - (2 ^ n : ℤ)

end

end A133406.P18120181481894226498

/-! ## A133406.P7517475750060003278

`xor(A171559(n), A222855(n+1))`
-/

namespace A133406.P7517475750060003278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A171559 n) (A222855 (n + 1))

end

end A133406.P7517475750060003278

/-! ## A133406.P6969202791518104164

`A245134(∑[n+1])/2`
-/

namespace A133406.P6969202791518104164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245134 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A133406.P6969202791518104164

/-! ## A133406.P14832846654718446941

`sqrt(A222956(n+1))/2`
-/

namespace A133406.P14832846654718446941
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A222956 (n + 1) : ℝ) / 2

end

end A133406.P14832846654718446941

/-! ## A133406.P9202638986730663161

`A222957(n+1)/(2*A222956(n+1))`
-/

namespace A133406.P9202638986730663161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222957 (n + 1) : ℚ) / (2 * A222956 (n + 1) : ℚ)

end

end A133406.P9202638986730663161

/-!
# A133407: a(n) = a(n-1) + 5*a(n-2) for n >= 2, a(0)=1, a(1)=2.

The programs for A133407, the canonical program `A133407.P8992369886080061797` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133407 has offset 0).

The definition of A133407 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+5*a(n-2)` (program `A133407.P8992369886080061797`, by `A133407.P8992369886080061797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133407.P8992369886080061797

`a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133407

/-- `a(n-1)+5*a(n-2)` -/
def P8992369886080061797.Spec : Prop :=
  ∀ n, (P8992369886080061797.a n : ℤ) = A133407 n

theorem P8992369886080061797.correct : P8992369886080061797.Spec := by
  intro n
  simp only [A133407]

end A133407

/-! ## A133407.P17711543822680569698

`a(n-1)+lcm(5, a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A133407.P17711543822680569698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Nat.lcm 5 (a (n - 2))

end

end A133407.P17711543822680569698

namespace A133407

/-- `a(n-1)+lcm(5, a(n-2))` -/
def P17711543822680569698.Spec : Prop :=
  ∀ n, (P17711543822680569698.a n : ℤ) = A133407 n

end A133407

/-! ## A133407.P4030081351021908210

`5-(5*(1-a(n-2))-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A133407.P4030081351021908210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  5 - (5 * (1 - a (n - 2)) - a (n - 1))

end

end A133407.P4030081351021908210

namespace A133407

/-- `5-(5*(1-a(n-2))-a(n-1))` -/
def P4030081351021908210.Spec : Prop :=
  ∀ n, P4030081351021908210.a n = A133407 n

end A133407

/-! ## A133407.P8985100638177748938

`a(n-1)+a(n-2)+a(n-2)+a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A133407.P8985100638177748938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 2)))))

end

end A133407.P8985100638177748938

namespace A133407

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-2)+a(n-2)+a(n-2)` -/
def P8985100638177748938.Spec : Prop :=
  ∀ n, (P8985100638177748938.a n : ℤ) = A133407 n

theorem P8985100638177748938.correct : P8985100638177748938.Spec := by
  intro n
  simp only [A133407, Nat.add_sub_cancel, A133407.P8985100638177748938.a, A133407.P8992369886080061797.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A133407

/-! ## A133407.P10504711291155686072

`A189732(n)+a(n-1)` with `a(0)=1`
-/

namespace A133407.P10504711291155686072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A189732 n + a (n - 1)

end

end A133407.P10504711291155686072

namespace A133407

/-- `A189732(n)+a(n-1)` -/
def P10504711291155686072.Spec : Prop :=
  ∀ n, P10504711291155686072.a n = A133407 n

end A133407

/-! ## A133407.P4910252367973898986

`2*A015440(n)-A365824(n)`
-/

namespace A133407.P4910252367973898986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015440 n - A365824 n

end

end A133407.P4910252367973898986

namespace A133407

/-- `2*A015440(n)-A365824(n)` -/
def P4910252367973898986.Spec : Prop :=
  ∀ n, P4910252367973898986.a n = A133407 n

end A133407

/-! ## A133407.P14145382551466547080

`A189732(n+2)/5`
-/

namespace A133407.P14145382551466547080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189732 (n + 2) : ℚ) / 5

end

end A133407.P14145382551466547080

namespace A133407

/-- `A189732(n+2)/5` -/
def P14145382551466547080.Spec : Prop :=
  ∀ n, P14145382551466547080.a n = (A133407 n : ℚ)

end A133407

/-!
# A133408: Numbers k such that k is a substring of both its square and its cube in base 2 (written in base 10).

The programs for A133408, there is no canonical definition to state claims against.
-/

/-! ## A133408.P3598448951734498152

`record[A053120(n)-A293960(n)]`
-/

namespace A133408.P3598448951734498152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n - A293960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133408.P3598448951734498152

/-! ## A133408.P12060593526614406963

`record[A210725(A331738(n+1))*A331740(n+1)]`
-/

namespace A133408.P12060593526614406963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210725 (A331738 (n + 1)).toNat * A331740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133408.P12060593526614406963

/-! ## A133408.P8291825071585083708

`A114398(lt[A114401(n), A114383(n+2)])`
-/

namespace A133408.P8291825071585083708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114383 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114398 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A133408.P8291825071585083708

/-! ## A133408.P14327841302997166268

`∩[A018826(n+1), A136490(n+1)]`
-/

namespace A133408.P14327841302997166268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133408.P14327841302997166268

/-! ## A133408.P4910319744283890737

`∩[A136490(n+1), A114398(n)]`
-/

namespace A133408.P4910319744283890737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114398 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133408.P4910319744283890737

/-!
# A133409: Zero followed by partial sums of A133405.

The programs for A133409, the canonical program `A133409.P17899777576355502191` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133409 has offset 0).

The definition of A133409 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133409.P17899777576355502191

`4*a(n-1)-3*a(n-2)-a(n-3)+4*a(n-4)-3*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133409

/-- `4*a(n-1)-3*a(n-2)-a(n-3)+4*a(n-4)-3*a(n-5)` -/
def P17899777576355502191.Spec : Prop :=
  ∀ n, P17899777576355502191.a n = A133409 n

theorem P17899777576355502191.correct : P17899777576355502191.Spec := by
  intro n
  simp only [A133409]

end A133409

/-! ## A133409.P16277704820717621981

`∑[A133405(abs(1-n))]`
-/

namespace A133409.P16277704820717621981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133405 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133409.P16277704820717621981

namespace A133409

/-- `∑[A133405(abs(1-n))]` -/
def P16277704820717621981.Spec : Prop :=
  ∀ n, P16277704820717621981.a n = A133409 n

end A133409

/-! ## A133409.P6834690260317006054

`A133405(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A133409.P6834690260317006054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A133405 (n - 1) + a (n - 1)

end

end A133409.P6834690260317006054

namespace A133409

/-- `A133405(n-1)+a(n-1)` -/
def P6834690260317006054.Spec : Prop :=
  ∀ n, P6834690260317006054.a n = A133409 n

end A133409

/-! ## A133409.P9125796307386676263

`floor(A133405(n)/2)`
-/

namespace A133409.P9125796307386676263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133405 n : ℚ) / 2⌋

end

end A133409.P9125796307386676263

namespace A133409

/-- `floor(A133405(n)/2)` -/
def P9125796307386676263.Spec : Prop :=
  ∀ n, P9125796307386676263.a n = A133409 n

end A133409

/-! ## A133409.P9859637808365161611

`(A135344(n)-1)/4`
-/

namespace A133409.P9859637808365161611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135344 n - 1 : ℚ) / 4

end

end A133409.P9859637808365161611

namespace A133409

/-- `(A135344(n)-1)/4` -/
def P9859637808365161611.Spec : Prop :=
  ∀ n, P9859637808365161611.a n = (A133409 n : ℚ)

end A133409

/-! ## A133409.P5472539409349979297

`round(A178703(n)/12)`
-/

namespace A133409.P5472539409349979297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178703 n : ℚ) / 12)

end

end A133409.P5472539409349979297

namespace A133409

/-- `round(A178703(n)/12)` -/
def P5472539409349979297.Spec : Prop :=
  ∀ n, P5472539409349979297.a n = A133409 n

end A133409

/-! ## A133409.P2547680924635311647

`floor(A039300(n)/21)`
-/

namespace A133409.P2547680924635311647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039300 n : ℚ) / 21⌋

end

end A133409.P2547680924635311647

namespace A133409

/-- `floor(A039300(n)/21)` -/
def P2547680924635311647.Spec : Prop :=
  ∀ n, P2547680924635311647.a n = A133409 n

end A133409

/-! ## A133409.P5138852505139919233

`floor(A003462(n)/28)`
-/

namespace A133409.P5138852505139919233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003462 n : ℚ) / 28⌋

end

end A133409.P5138852505139919233

namespace A133409

/-- `floor(A003462(n)/28)` -/
def P5138852505139919233.Spec : Prop :=
  ∀ n, P5138852505139919233.a n = A133409 n

end A133409

/-! ## A133409.P2403058518262163329

`floor(A007051(n)/28)`
-/

namespace A133409.P2403058518262163329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007051 n : ℚ) / 28⌋

end

end A133409.P2403058518262163329

namespace A133409

/-- `floor(A007051(n)/28)` -/
def P2403058518262163329.Spec : Prop :=
  ∀ n, P2403058518262163329.a n = A133409 n

end A133409

/-! ## A133409.P17999384017746806611

`round(A046717(n)/28)`
-/

namespace A133409.P17999384017746806611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A046717 n : ℚ) / 28)

end

end A133409.P17999384017746806611

namespace A133409

/-- `round(A046717(n)/28)` -/
def P17999384017746806611.Spec : Prop :=
  ∀ n, P17999384017746806611.a n = A133409 n

end A133409

/-! ## A133409.P532253984787589845

`floor(3^n/56)`
-/

namespace A133409.P532253984787589845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ n : ℚ) / 56⌋

end

end A133409.P532253984787589845

namespace A133409

/-- `floor(3^n/56)` -/
def P532253984787589845.Spec : Prop :=
  ∀ n, P532253984787589845.a n = A133409 n

end A133409

/-! ## A133409.P10355827359132513723

`round(or(2, 3^n)/56)`
-/

namespace A133409.P10355827359132513723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 (3 ^ n) : ℚ) / 56)

end

end A133409.P10355827359132513723

namespace A133409

/-- `round(or(2, 3^n)/56)` -/
def P10355827359132513723.Spec : Prop :=
  ∀ n, P10355827359132513723.a n = A133409 n

end A133409

/-! ## A133409.P8238549540384197911

`ceil(or(2, 3^n)/56)-1`
-/

namespace A133409.P8238549540384197911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 2 (3 ^ n) : ℚ) / 56⌉ - 1

end

end A133409.P8238549540384197911

namespace A133409

/-- `ceil(or(2, 3^n)/56)-1` -/
def P8238549540384197911.Spec : Prop :=
  ∀ n, P8238549540384197911.a n = A133409 n

end A133409

/-! ## A133409.P10856635416974071439

`round(A000244(n)/56)`
-/

namespace A133409.P10856635416974071439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000244 n : ℚ) / 56)

end

end A133409.P10856635416974071439

namespace A133409

/-- `round(A000244(n)/56)` -/
def P10856635416974071439.Spec : Prop :=
  ∀ n, P10856635416974071439.a n = A133409 n

end A133409

/-! ## A133409.P17316863021618144581

`round(A168613(n)/56)`
-/

namespace A133409.P17316863021618144581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A168613 n : ℚ) / 56)

end

end A133409.P17316863021618144581

namespace A133409

/-- `round(A168613(n)/56)` -/
def P17316863021618144581.Spec : Prop :=
  ∀ n, P17316863021618144581.a n = A133409 n

end A133409

/-! ## A133409.P17329172848424870796

`ceil(3^n/56)-A001221(A045344(n+1))`
-/

namespace A133409.P17329172848424870796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ n : ℚ) / 56⌉ - A001221 (A045344 (n + 1)).toNat

end

end A133409.P17329172848424870796

namespace A133409

/-- `ceil(3^n/56)-A001221(A045344(n+1))` -/
def P17329172848424870796.Spec : Prop :=
  ∀ n, P17329172848424870796.a n = A133409 n

end A133409

/-!
# A133410: Least prime p such that p-6*n is prime.

The programs for A133410, there is no canonical definition to state claims against.
-/

/-! ## A133410.P5331839990936126955

`A020484(3*n)`
-/

namespace A133410.P5331839990936126955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (3 * n)

end

end A133410.P5331839990936126955

/-! ## A133410.P10275955039899080740

`A087711(3*n)+3*n`
-/

namespace A133410.P10275955039899080740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087711 (3 * n) + (3 * n : ℤ)

end

end A133410.P10275955039899080740

/-! ## A133410.P17344232183432185891

`A020483(3*n)+6*n`
-/

namespace A133410.P17344232183432185891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (3 * n) + (6 * n : ℤ)

end

end A133410.P17344232183432185891

/-! ## A133410.P13995722297301469562

`p?[A020484(A005843(n)+n)]`
-/

namespace A133410.P13995722297301469562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A005843 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133410.P13995722297301469562

/-! ## A133410.P1497437243649465615

`p?[A020484(A028552(n)-n²)]`
-/

namespace A133410.P1497437243649465615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A028552 n - (n ^ 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133410.P1497437243649465615

/-! ## A133410.P16600927892586068347

`A006530(A020484(record[and(n, n+1)]+n))`
-/

namespace A133410.P16600927892586068347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A020484 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n)).toNat

end

end A133410.P16600927892586068347

/-! ## A133410.P11872893857713812139

`A014963(A020484(n+n+n))`
-/

namespace A133410.P11872893857713812139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A020484 (n + n + n)).toNat

end

end A133410.P11872893857713812139

/-! ## A133410.P9132271552628574819

`A159477(2*A014683(3*n+1))`
-/

namespace A133410.P9132271552628574819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (2 * A014683 (3 * n + 1)).toNat

end

end A133410.P9132271552628574819

/-! ## A133410.P4993447236666590129

`A159477(A000069(2*n+n+2))`
-/

namespace A133410.P4993447236666590129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A000069 (2 * n + (n + 2))).toNat

end

end A133410.P4993447236666590129

/-! ## A133410.P11060627471789401900

`A007918(record[2*A131431(n)])`
-/

namespace A133410.P11060627471789401900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133410.P11060627471789401900

/-! ## A133410.P16635817347164503526

`A006530((n+1)*A000040(A000720(6*n+1)+1))`
-/

namespace A133410.P16635817347164503526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1 : ℤ) * A000040 (A000720 (6 * n + 1) + 1).toNat).toNat

end

end A133410.P16635817347164503526

/-! ## A133410.P8869151309802466808

`A208643(3*(n+1))%A014963(A210640(2*n+3))`
-/

namespace A133410.P8869151309802466808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208643 (3 * (n + 1))) (A014963 (A210640 (2 * n + 3)).toNat)

end

end A133410.P8869151309802466808

/-!
# A133411: Smallest highly composite number of the form k*a(n-1) where k is an integer greater than 1.

The programs for A133411, there is no canonical definition to state claims against.
-/

/-! ## A133411.P9991169953167421739

`a(n-1)*A351627(n)` with `a(0)=1`
-/

namespace A133411.P9991169953167421739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A351627 n

end

end A133411.P9991169953167421739

/-! ## A133411.P10482587757913691909

`∏[A351627(A151933(n)+n)]/2`
-/

namespace A133411.P10482587757913691909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351627 (A151933 n + (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A133411.P10482587757913691909

/-! ## A133411.P1763442478805193772

`∏[A351627(abs(A151933(n)-n))]/2`
-/

namespace A133411.P1763442478805193772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351627 |A151933 n - (n : ℤ)|.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A133411.P1763442478805193772

/-! ## A133411.P8762480345779499941

`∏[A351627(n+1)]/A351627(n+1)`
-/

namespace A133411.P8762480345779499941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351627 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A351627 (n + 1) : ℚ)

end

end A133411.P8762480345779499941

/-! ## A133411.P9293493457105190413

`∏[A351627(n*a(A034502(n+1)))]` with `a(0)=1`
-/

namespace A133411.P9293493457105190413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A351627 ((n : ℤ) * f1 (A034502 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133411.P9293493457105190413

/-!
# A133412: Sum of primes between n-th and (n+1)-th semiprimes.

The programs for A133412, there is no canonical definition to state claims against.
-/

/-! ## A133412.P5716578154029765980

`Δ[A034387(A001358(n+1))]`
-/

namespace A133412.P5716578154029765980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A001358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133412.P5716578154029765980

/-! ## A133412.P5577594766376646799

`Δ[A007504(A111939(n+1))]`
-/

namespace A133412.P5577594766376646799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A111939 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133412.P5577594766376646799

/-! ## A133412.P11789867877619973786

`Δ[A063960(A075818(n+1))]`
-/

namespace A133412.P11789867877619973786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (A075818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133412.P11789867877619973786

/-! ## A133412.P14697633494732620465

`Δ[A034387(A186621(n+1))]`
-/

namespace A133412.P14697633494732620465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A186621 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133412.P14697633494732620465

/-! ## A133412.P9109986127978950005

`Δ[A034387(sqrt(A074985(n+1)))]`
-/

namespace A133412.P9109986127978950005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133412.P9109986127978950005

/-! ## A133412.P13893928232177473453

`Δ[A034387(A088707(n+1)-1)]`
-/

namespace A133412.P13893928232177473453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A088707 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133412.P13893928232177473453

/-! ## A133412.P6330085779251501492

`Δ[A063960(2*A001358(n+1))]`
-/

namespace A133412.P6330085779251501492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (2 * A001358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133412.P6330085779251501492

/-! ## A133412.P4394696166068666058

`Δ[A034387(A075818(n+1)/2)]`
-/

namespace A133412.P4394696166068666058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133412.P4394696166068666058

/-! ## A133412.P10552245933678825416

`Δ[A063960(A004275(A088707(n+1)))]`
-/

namespace A133412.P10552245933678825416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (A004275 (A088707 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133412.P10552245933678825416

/-! ## A133412.P8636270031501649781

`Δ[A063960(A001358(n+1)+A001358(n+1))]`
-/

namespace A133412.P8636270031501649781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (A001358 (n + 1) + A001358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133412.P8636270031501649781

/-!
# A133415: a(n) = (1/10)*(2^(4*n-1)-5^n*L(2*n)+L(4*n)), where L() = Lucas numbers A000032.

The programs for A133415, there is no canonical definition to state claims against.
-/

/-! ## A133415.P4670658783753037196

`C(A104404(A104453(n+1)), 2*n+7)`
-/

namespace A133415.P4670658783753037196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A104404 (A104453 (n + 1)).toNat).toNat (2 * n + 7)

end

end A133415.P4670658783753037196

/-! ## A133415.P15624600379747670571

`C(A004277(A187829(2*(n+1))), A020742(n))`
-/

namespace A133415.P15624600379747670571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004277 (A187829 (2 * (n + 1))).toNat).toNat (A020742 n).toNat

end

end A133415.P15624600379747670571

/-! ## A133415.P16148904505624684479

`C(A019425(A187829(2*n+3)), A005408(n+3))`
-/

namespace A133415.P16148904505624684479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A019425 (A187829 (2 * n + 3)).toNat).toNat (A005408 (n + 3)).toNat

end

end A133415.P16148904505624684479

/-!
# A133416: a(n) = (1/10)*(2^(4*n-3)-5^n*F(2*n-1)+L(4*n-2)), where F() = Fibonacci numbers A000045 and L() = Lucas numbers A000032.

The programs for A133416, there is no canonical definition to state claims against.
-/

/-! ## A133416.P12277578131711925500

`C(A016825(n), A064289(A008776(n+3)))`
-/

namespace A133416.P12277578131711925500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016825 n).toNat (A064289 (A008776 (n + 3)).toNat).toNat

end

end A133416.P12277578131711925500

/-! ## A133416.P10953017217598583555

`C(A016825(n), A004277(A276142(n+3)))`
-/

namespace A133416.P10953017217598583555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016825 n).toNat (A004277 (A276142 (n + 3)).toNat).toNat

end

end A133416.P10953017217598583555

/-! ## A133416.P5288796326689591555

`C(A314827(n), A319951(A315932(3*n+2)))`
-/

namespace A133416.P5288796326689591555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A314827 n).toNat (A319951 (A315932 (3 * n + 2)).toNat).toNat

end

end A133416.P5288796326689591555

/-!
# A133417: a(n) = sqrt(2*(P(n)^4 + 16*P(n+1)^4 + P(n+2)^4)), where P() = Pell numbers A000129.

The programs for A133417, there is no canonical definition to state claims against.
-/

/-! ## A133417.P15014985820249954885

`5*a(n-1)+5*a(n-2)-a(n-3)` with `a(0)=2, a(1)=8, a(2)=42`
-/

namespace A133417.P15014985820249954885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 42] fun n a =>
  5 * a (n - 1) + 5 * a (n - 2) - a (n - 3)

end

end A133417.P15014985820249954885

/-! ## A133417.P13434759585706663540

`xor(2, 10*Δ[A171842(n)]²)`
-/

namespace A133417.P13434759585706663540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (10 * (f1 (n + 1) - f1 n) ^ 2)

end

end A133417.P13434759585706663540

/-! ## A133417.P6614418102225047574

`A106329(n+1)-A090390(n)`
-/

namespace A133417.P6614418102225047574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106329 (n + 1) - A090390 n

end

end A133417.P6614418102225047574

/-! ## A133417.P1356939821355801409

`2*(A079291(n)+A001541(n))`
-/

namespace A133417.P1356939821355801409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A079291 n + A001541 n)

end

end A133417.P1356939821355801409

/-! ## A133417.P1501799483801824194

`A114619(n)+2*A001541(n)`
-/

namespace A133417.P1501799483801824194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114619 n + 2 * A001541 n

end

end A133417.P1501799483801824194

/-! ## A133417.P15017327229068447266

`A106329(n+1)-A001333(n)²`
-/

namespace A133417.P15017327229068447266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106329 (n + 1) - A001333 n ^ 2

end

end A133417.P15017327229068447266

/-! ## A133417.P10876176985022600392

`2*(A001541(n)+A000129(n)²)`
-/

namespace A133417.P10876176985022600392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001541 n + A000129 n ^ 2)

end

end A133417.P10876176985022600392

/-! ## A133417.P8712087935065280792

`A003499(n)+2*A000129(n)²`
-/

namespace A133417.P8712087935065280792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003499 n + 2 * A000129 n ^ 2

end

end A133417.P8712087935065280792

/-! ## A133417.P11157662544212631059

`3*A001541(n)-A001333(n)²`
-/

namespace A133417.P11157662544212631059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001541 n - A001333 n ^ 2

end

end A133417.P11157662544212631059

/-! ## A133417.P1349540623686081430

`A106329(n+1)-(A002203(n)/2)²`
-/

namespace A133417.P1349540623686081430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106329 (n + 1) : ℚ) - ((A002203 n : ℚ) / 2) ^ 2

end

end A133417.P1349540623686081430

/-! ## A133417.P8621189382617691968

`A002203(2*n)+2*A000129(n)²`
-/

namespace A133417.P8621189382617691968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (2 * n) + 2 * A000129 n ^ 2

end

end A133417.P8621189382617691968

/-! ## A133417.P4652131901426844909

`A123335(A004273(n))+A078057(n)²`
-/

namespace A133417.P4652131901426844909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 (A004273 n).toNat + A078057 n ^ 2

end

end A133417.P4652131901426844909

/-! ## A133417.P7695588889967425017

`A002203(2*n)+A000129(n)*A052542(n)`
-/

namespace A133417.P7695588889967425017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (2 * n) + A000129 n * A052542 n

end

end A133417.P7695588889967425017

/-! ## A133417.P4105834008836030552

`A002203(2*n)+A002965(2*n)*A052542(n)`
-/

namespace A133417.P4105834008836030552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (2 * n) + A002965 (2 * n) * A052542 n

end

end A133417.P4105834008836030552

/-! ## A133417.P15159210387930771656

`A002203(2*n)+A000129(n)*A082766(2*n+1)`
-/

namespace A133417.P15159210387930771656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (2 * n) + A000129 n * A082766 (2 * n + 1)

end

end A133417.P15159210387930771656

/-! ## A133417.P17574545707935800388

`A002203(2*n)+A002965(2*n)*A082766(2*n+1)`
-/

namespace A133417.P17574545707935800388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (2 * n) + A002965 (2 * n) * A082766 (2 * n + 1)

end

end A133417.P17574545707935800388

/-! ## A133417.P7729416061760790705

`A084159(n+1)-A048693(2*n)`
-/

namespace A133417.P7729416061760790705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084159 (n + 1) - A048693 (2 * n)

end

end A133417.P7729416061760790705

/-!
# A133419: Image of n under one application of the "5x+1" map.

The programs for A133419, there is no canonical definition to state claims against.
-/

/-! ## A133419.P16847994171724552322

`lcm(A152271(n), A350034(n+1))`
-/

namespace A133419.P16847994171724552322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A152271 n) (A350034 (n + 1))

end

end A133419.P16847994171724552322

/-! ## A133419.P1136183421995515321

`∑[n]%(n+1)+A059841(n)*A350034(n+1)`
-/

namespace A133419.P1136183421995515321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ) + A059841 n * A350034 (n + 1)

end

end A133419.P1136183421995515321

/-! ## A133419.P5685127555594727373

`A142150(n+1)+A059841(n)*A350034(n+1)`
-/

namespace A133419.P5685127555594727373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + A059841 n * A350034 (n + 1)

end

end A133419.P5685127555594727373

/-! ## A133419.P14005694169657268577

`gcd(A001057(n), A185452(n+2))*A350034(n+1)`
-/

namespace A133419.P14005694169657268577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A001057 n) (A185452 (n + 2)) : ℤ) * A350034 (n + 1)

end

end A133419.P14005694169657268577

/-! ## A133419.P6559375349025217872

`gcd(A059029(n+1), A059029(n+2))*A350034(n+1)`
-/

namespace A133419.P6559375349025217872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A059029 (n + 1)) (A059029 (n + 2)) : ℤ) * A350034 (n + 1)

end

end A133419.P6559375349025217872

/-! ## A133419.P17059019785301720075

`A350034(A165998(n))`
-/

namespace A133419.P17059019785301720075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350034 (A165998 n).toNat

end

end A133419.P17059019785301720075

/-!
# A133422: Number of steps to reach 1 under repeated applications of the "7x+1" map of A133421, or -1 if 1 is never reached.

The programs for A133422, there is no canonical definition to state claims against.
-/

/-! ## A133422.P10716263320869693890

`A297043(4^(floor(n/(xor(n, n+1)+1))+1))!*A000120(n)`
-/

namespace A133422.P10716263320869693890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A297043 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1 : ℤ))).toNat).toNat : ℤ) * A000120 n

end

end A133422.P10716263320869693890

/-! ## A133422.P10625674852947113848

`A000120(n)*A010101(A147486(n+1))`
-/

namespace A133422.P10625674852947113848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A010101 (A147486 (n + 1)).toNat

end

end A133422.P10625674852947113848

/-! ## A133422.P769530860788812376

`A000120(n)*A140356(A081677(n+1))`
-/

namespace A133422.P769530860788812376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A140356 (A081677 (n + 1)).toNat

end

end A133422.P769530860788812376

/-! ## A133422.P3444146901180280640

`A000120(n)*A114730(A113175(n+1))`
-/

namespace A133422.P3444146901180280640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A114730 (A113175 (n + 1)).toNat

end

end A133422.P3444146901180280640

/-! ## A133422.P14101152732492520705

`A000120(n)*A104611(A127473(n+1))`
-/

namespace A133422.P14101152732492520705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A104611 (A127473 (n + 1)).toNat

end

end A133422.P14101152732492520705

/-!
# A133423: Analog of A006684 for the 5x+1 problem (cf. A133419).

The programs for A133423, there is no canonical definition to state claims against.
-/

/-! ## A133423.P10289199056962484094

`∩[A101328(n+2), A201997(n)]`
-/

namespace A133423.P10289199056962484094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201997 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133423.P10289199056962484094

/-! ## A133423.P597635864875100012

`eq[A020710(A332014(n)), A101607(n+1)]`
-/

namespace A133423.P597635864875100012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A332014 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101607 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133423.P597635864875100012

/-! ## A133423.P18349387165001890610

`eq[A047150(A332809(n+1)), A158379(n+1)]`
-/

namespace A133423.P18349387165001890610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (A332809 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158379 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133423.P18349387165001890610

/-!
# A133425: Analog of A006684 for the 7x+1 problem (cf. A133421).

The programs for A133425, there is no canonical definition to state claims against.
-/

/-! ## A133425.P4506497077292590686

`record[A020986(n*A020338(n+1))]`
-/

namespace A133425.P4506497077292590686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 ((n : ℤ) * A020338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133425.P4506497077292590686

/-! ## A133425.P11160225099118472938

`record[A020986(lcm(n, A020338(n+1)))]`
-/

namespace A133425.P11160225099118472938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 (Int.lcm (n : ℤ) (A020338 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133425.P11160225099118472938

/-! ## A133425.P11657631145666376723

`record[A020986(n*(A235497(n+1)+n+1)/2)]`
-/

namespace A133425.P11657631145666376723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 (SequenceMachineLib.roundAway ((n : ℚ) * ((A235497 (n + 1) + (n + 1 : ℤ) : ℚ) / 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133425.P11657631145666376723

/-!
# A133427: Records in A025017.

The programs for A133427, there is no canonical definition to state claims against.
-/

/-! ## A133427.P7241591580004632463

`record[A025017(n+1)]`
-/

namespace A133427.P7241591580004632463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133427.P7241591580004632463

/-! ## A133427.P12627706996229209224

`record[lcm(2, A025017(A065648(n)))]`
-/

namespace A133427.P12627706996229209224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A025017 (A065648 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133427.P12627706996229209224

/-! ## A133427.P16454777775615100535

`A025017(A133428(n+1))`
-/

namespace A133427.P16454777775615100535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025017 (A133428 (n + 1)).toNat

end

end A133427.P16454777775615100535

/-!
# A133429: Records in A000230.

The programs for A133429, there is no canonical definition to state claims against.
-/

/-! ## A133429.P10901044263436698708

`record[A000230(n)]`
-/

namespace A133429.P10901044263436698708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133429.P10901044263436698708

/-! ## A133429.P571047543619246690

`A000230(A133430(n+1))`
-/

namespace A133429.P571047543619246690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A133430 (n + 1)).toNat

end

end A133429.P571047543619246690

/-! ## A133429.P17149452438188461238

`A000230(floor(A100180(n+1)/2))`
-/

namespace A133429.P17149452438188461238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 ⌊(A100180 (n + 1) : ℚ) / 2⌋.toNat

end

end A133429.P17149452438188461238

/-! ## A133429.P2539856826378619439

`A000230(ceil((A100180(n+1)-1)/2))`
-/

namespace A133429.P2539856826378619439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 ⌈(A100180 (n + 1) - 1 : ℚ) / 2⌉.toNat

end

end A133429.P2539856826378619439

/-! ## A133429.P9635719453827760406

`A000230(A100180(n+1)/2*A000040(n+1)%2)`
-/

namespace A133429.P9635719453827760406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (SequenceMachineLib.roundAway ((A100180 (n + 1) : ℚ) / 2 * (Int.tmod (A000040 (n + 1)) 2 : ℚ))).toNat

end

end A133429.P9635719453827760406

/-! ## A133429.P7081983862330550686

`record[A045881(A028310(n))-A054977(n)]`
-/

namespace A133429.P7081983862330550686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133429.P7081983862330550686

/-! ## A133429.P14492924813752686723

`record[A045881(n)-A001221(a(A001221(n)))]` with `a(0)=2`
-/

namespace A133429.P14492924813752686723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A045881 n - A001221 (f1 (A001221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133429.P14492924813752686723

/-!
# A133430: Where records occur in A000230.

The programs for A133430, there is no canonical definition to state claims against.
-/

/-! ## A133430.P175691951373014278

`floor(A100180(n+1)/2)`
-/

namespace A133430.P175691951373014278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100180 (n + 1) : ℚ) / 2⌋

end

end A133430.P175691951373014278

/-! ## A133430.P3193556690281875647

`A004526(A100180(n+1))`
-/

namespace A133430.P3193556690281875647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A100180 (n + 1)).toNat

end

end A133430.P3193556690281875647

/-! ## A133430.P10161632233903183855

`A004524(A100180(n+1)+1)`
-/

namespace A133430.P10161632233903183855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A100180 (n + 1) + 1).toNat

end

end A133430.P10161632233903183855

/-! ## A133430.P6900906588320876960

`A060755(A100180(n+1)+1)`
-/

namespace A133430.P6900906588320876960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060755 (A100180 (n + 1) + 1).toNat

end

end A133430.P6900906588320876960

/-! ## A133430.P10627737009468874612

`A001057(A100180(n+1)-1)`
-/

namespace A133430.P10627737009468874612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A100180 (n + 1) - 1).toNat

end

end A133430.P10627737009468874612

/-! ## A133430.P1551945977273324718

`A110654(A100180(n+1)-1)`
-/

namespace A133430.P1551945977273324718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A100180 (n + 1) - 1).toNat

end

end A133430.P1551945977273324718

/-! ## A133430.P3541332977006338494

`A115384(A100180(n+1)-1)`
-/

namespace A133430.P3541332977006338494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A100180 (n + 1) - 1).toNat

end

end A133430.P3541332977006338494

/-! ## A133430.P1353195236137186916

`A008615(3*A100180(n+1))`
-/

namespace A133430.P1353195236137186916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A100180 (n + 1)).toNat

end

end A133430.P1353195236137186916

/-! ## A133430.P16708176461094422828

`A004525(A100180(n+1)+2)-1`
-/

namespace A133430.P16708176461094422828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A100180 (n + 1) + 2).toNat - 1

end

end A133430.P16708176461094422828

/-! ## A133430.P11925763798050882515

`(A100180(n+1)-A000007(n))/2`
-/

namespace A133430.P11925763798050882515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100180 (n + 1) - A000007 n : ℚ) / 2

end

end A133430.P11925763798050882515

/-! ## A133430.P7386436046281340210

`round(A100180(n+1)/2)%A000097(n)`
-/

namespace A133430.P7386436046281340210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A100180 (n + 1) : ℚ) / 2)) (A000097 n)

end

end A133430.P7386436046281340210

/-! ## A133430.P7492398136201961197

`ceil(A100180(n+1)/2)%A000041(n+1)`
-/

namespace A133430.P7492398136201961197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A100180 (n + 1) : ℚ) / 2⌉ (A000041 (n + 1))

end

end A133430.P7492398136201961197

/-! ## A133430.P12724651155701289748

`A100180(n+1)/2*A000040(n+1)%2`
-/

namespace A133430.P12724651155701289748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100180 (n + 1) : ℚ) / 2 * (Int.tmod (A000040 (n + 1)) 2 : ℚ)

end

end A133430.P12724651155701289748

/-! ## A133430.P5662976023330782633

`ceil((A100180(n+1)-2/A000005(n+1))/2)`
-/

namespace A133430.P5662976023330782633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A100180 (n + 1) : ℚ) - 2 / (A000005 (n + 1) : ℚ)) / 2⌉

end

end A133430.P5662976023330782633

/-! ## A133430.P8865126027947503740

`ceil((A100180(n+1)-1)/A020639(2*(n+7)))`
-/

namespace A133430.P8865126027947503740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100180 (n + 1) - 1 : ℚ) / (A020639 (2 * (n + 7)) : ℚ)⌉

end

end A133430.P8865126027947503740

/-! ## A133430.P2134733494923656789

`A004525(A100180(n+1))%A000124(n)`
-/

namespace A133430.P2134733494923656789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004525 (A100180 (n + 1)).toNat) (A000124 n)

end

end A133430.P2134733494923656789

/-! ## A133430.P17049631589251216795

`A004525(A100180(n+1)%A006508(n))`
-/

namespace A133430.P17049631589251216795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A100180 (n + 1)) (A006508 n)).toNat

end

end A133430.P17049631589251216795

/-! ## A133430.P9633291658839026958

`A029578(A100180(n+1))%A025715(n)`
-/

namespace A133430.P9633291658839026958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029578 (A100180 (n + 1)).toNat) (A025715 n)

end

end A133430.P9633291658839026958

/-! ## A133430.P16332488329772358638

`A001221(A000015(n+1))/2*A100180(n+1)`
-/

namespace A133430.P16332488329772358638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (A000015 (n + 1)).toNat : ℚ) / 2 * (A100180 (n + 1) : ℚ)

end

end A133430.P16332488329772358638

/-! ## A133430.P16852473083436880398

`record[A000230(n)+n]%record[A000230(n)]`
-/

namespace A133430.P16852473083436880398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A133430.P16852473083436880398

/-!
# A133431: Old-fashioned version of A002504 (the initial 1 should be omitted since 1 is no longer regarded as a prime, although it was in 1912).

The programs for A133431, there is no canonical definition to state claims against.
-/

/-! ## A133431.P2460015486452759631

`lt[A350090(n), 2]+1`
-/

namespace A133431.P2460015486452759631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A133431.P2460015486452759631

/-! ## A133431.P15962643155364546654

`comp[A257772(n+2)]+1`
-/

namespace A133431.P15962643155364546654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257772 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A133431.P15962643155364546654

/-! ## A133431.P13792529558540942479

`ceil(sqrt(A334520(n+1)/3))`
-/

namespace A133431.P13792529558540942479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A334520 (n + 1) : ℚ) / 3 : ℝ)⌉

end

end A133431.P13792529558540942479

/-! ## A133431.P7422700882700166542

`lt[n², A081256(3*n+2)]+1`
-/

namespace A133431.P7422700882700166542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A133431.P7422700882700166542

/-! ## A133431.P7134402281230045636

`A002504(n)%or(1, 10*a(n-1))` with `a(0)=1`
-/

namespace A133431.P7134402281230045636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A002504 n) (Int.lor 1 (10 * a (n - 1)))

end

end A133431.P7134402281230045636

/-! ## A133431.P2580490475532204979

`eq[A057427(n), A350090(n)]+1`
-/

namespace A133431.P2580490475532204979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A133431.P2580490475532204979

/-! ## A133431.P4694396133716114478

`∪[A002504(n+1), A001496(n)]`
-/

namespace A133431.P4694396133716114478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001496 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133431.P4694396133716114478

/-! ## A133431.P4793711266044817006

`∪[A002504(n+1), A001779(n)]`
-/

namespace A133431.P4793711266044817006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133431.P4793711266044817006

/-! ## A133431.P12311724112622903263

`∪[A002504(n+1), A001786(n)]`
-/

namespace A133431.P12311724112622903263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133431.P12311724112622903263

/-! ## A133431.P7364416041744172186

`∪[A002504(n+1), A001808(n)]`
-/

namespace A133431.P7364416041744172186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001808 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133431.P7364416041744172186

/-!
# A133432: Let m = n-th number that is not a perfect power, A007916(n). Then a(n) = smallest prime having least positive primitive root m.

The programs for A133432, there is no canonical definition to state claims against.
-/

/-! ## A133432.P5324605476447562455

`A023048(comp[ceil(n/63)^(val(n+1, 2)+2)])`
-/

namespace A133432.P5324605476447562455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 63⌉ ^ (SequenceMachineLib.valuation (n + 1) 2 + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A133432.P5324605476447562455

/-! ## A133432.P2983270822094455842

`A023048(A007916(n+1))`
-/

namespace A133432.P2983270822094455842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (A007916 (n + 1)).toNat

end

end A133432.P2983270822094455842

/-! ## A133432.P14392593816674816781

`A023048(A175082(n+2))`
-/

namespace A133432.P14392593816674816781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (A175082 (n + 2)).toNat

end

end A133432.P14392593816674816781

/-! ## A133432.P4647391735467713231

`A023048(sqrt(A153158(n+1)))`
-/

namespace A133432.P4647391735467713231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (SequenceMachineLib.roundAway (Real.sqrt (A153158 (n + 1) : ℝ))).toNat

end

end A133432.P4647391735467713231

/-! ## A133432.P7353366383180396223

`A023048(record[A025478(n+2)])`
-/

namespace A133432.P7353366383180396223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133432.P7353366383180396223

/-! ## A133432.P14764891738436775059

`A023048(record[A052410(n+2)])`
-/

namespace A133432.P14764891738436775059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133432.P14764891738436775059

/-! ## A133432.P1321454231797366169

`A023048(record[A175781(n+2)])`
-/

namespace A133432.P1321454231797366169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175781 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133432.P1321454231797366169

/-! ## A133432.P17325614265912964864

`A023048(record[A304491(n+2)])`
-/

namespace A133432.P17325614265912964864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304491 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133432.P17325614265912964864

/-! ## A133432.P14643357882918196925

`A023048(ceil(sqrt(A037450(n+1))))`
-/

namespace A133432.P14643357882918196925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 ⌈Real.sqrt (A037450 (n + 1) : ℝ)⌉.toNat

end

end A133432.P14643357882918196925

/-! ## A133432.P5768314525773542212

`A023048(round(sqrt(A037450(n+1))))`
-/

namespace A133432.P5768314525773542212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (SequenceMachineLib.roundAway (Real.sqrt (A037450 (n + 1) : ℝ))).toNat

end

end A133432.P5768314525773542212

/-!
# A133433: Records in A133432.

The programs for A133433, there is no canonical definition to state claims against.
-/

/-! ## A133433.P8388684349228618471

`record[A133432(n+1)]`
-/

namespace A133433.P8388684349228618471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133433.P8388684349228618471

/-! ## A133433.P15182343005201260244

`record[A023048(n+2)]`
-/

namespace A133433.P15182343005201260244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133433.P15182343005201260244

/-! ## A133433.P14911125005125869200

`A023048(A318239(n+1))`
-/

namespace A133433.P14911125005125869200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (A318239 (n + 1)).toNat

end

end A133433.P14911125005125869200

/-! ## A133433.P4370589006046293968

`record[or(1, A023048(A037915(n)))]`
-/

namespace A133433.P4370589006046293968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A023048 (A037915 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133433.P4370589006046293968

/-! ## A133433.P4002034685234236110

`record[or(1, A023048(A203814(n)))]`
-/

namespace A133433.P4002034685234236110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A023048 (A203814 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133433.P4002034685234236110

/-!
# A133434: Records in A084739.

The programs for A133434, there is no canonical definition to state claims against.
-/

/-! ## A133434.P16675839396340554598

`record[A084739(n+1)]`
-/

namespace A133434.P16675839396340554598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133434.P16675839396340554598

/-! ## A133434.P5768797268240259147

`record[or(1, A084739(A060384(n)))]`
-/

namespace A133434.P5768797268240259147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084739 (A060384 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133434.P5768797268240259147

/-! ## A133434.P18223149490771925558

`record[or(1, A084739(A065033(n)))]`
-/

namespace A133434.P18223149490771925558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084739 (A065033 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133434.P18223149490771925558

/-! ## A133434.P17860298274213193074

`record[or(1, A084739(A080513(n)))]`
-/

namespace A133434.P17860298274213193074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084739 (A080513 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133434.P17860298274213193074

/-! ## A133434.P1653100519895632002

`record[or(1, A084739(A152271(n)))]`
-/

namespace A133434.P1653100519895632002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084739 (A152271 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133434.P1653100519895632002

/-!
# A133435: Records in A000229.

The programs for A133435, there is no canonical definition to state claims against.
-/

/-! ## A133435.P3753520804896046623

`record[A000229(n+1)]`
-/

namespace A133435.P3753520804896046623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133435.P3753520804896046623

/-! ## A133435.P3761277512309930252

`record[or(1, A000229(A065033(n)))]`
-/

namespace A133435.P3761277512309930252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000229 (A065033 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133435.P3761277512309930252

/-! ## A133435.P9920569530057139222

`record[A000229(A065033(n))]-A025466(n)`
-/

namespace A133435.P9920569530057139222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000229 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A025466 n

end

end A133435.P9920569530057139222

/-! ## A133435.P1790860463742041089

`record[A000229(A065033(n))-A178333(n)]`
-/

namespace A133435.P1790860463742041089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000229 (A065033 n).toNat - A178333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133435.P1790860463742041089

/-! ## A133435.P1185305847245383474

`record[A000229(A065033(n))-A001222(((-1)^n)²)]`
-/

namespace A133435.P1185305847245383474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000229 (A065033 n).toNat - A001222 (((-1) ^ n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133435.P1185305847245383474

/-!
# A133436: Generated by a kind of sieve (see Comments lines).

The programs for A133436, there is no canonical definition to state claims against.
-/

/-! ## A133436.P17955357665235662308

`∑[∑{e}[xor(4^n+1, -n), #]]+1+n`
-/

namespace A133436.P17955357665235662308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 ^ n + 1 : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A133436.P17955357665235662308

/-! ## A133436.P2125734483292215979

`∑[A274450(3*(n+1))]+1`
-/

namespace A133436.P2125734483292215979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274450 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A133436.P2125734483292215979

/-! ## A133436.P2649534607110101352

`∑[∑{e}[4^n*A117401(n)+n+1, #]+1]`
-/

namespace A133436.P2649534607110101352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A117401 n + (n + 1 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133436.P2649534607110101352

/-! ## A133436.P14007226441277974339

`A278744(A144816(n))+∑[A027833(n+1)]`
-/

namespace A133436.P14007226441277974339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278744 (A144816 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133436.P14007226441277974339

/-! ## A133436.P17421915974457221983

`∑[A046072(A137762(n+1))+A001222(n+5)]`
-/

namespace A133436.P17421915974457221983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A137762 (n + 1)).toNat + A001222 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133436.P17421915974457221983

/-!
# A133437: Irregular triangle of coefficients of a partition transform for direct Lagrange inversion of an o.g.f., complementary to A134685 for an e.g.f.; normalized by the factorials, these are signed, refined face polynomials of the associahedra.

The programs for A133437, there is no canonical definition to state claims against.
-/

/-! ## A133437.P9608859610718133472

`A349382(A127870(n)+A001222(n+1))`
-/

namespace A133437.P9608859610718133472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349382 (A127870 n + A001222 (n + 1)).toNat

end

end A133437.P9608859610718133472

/-!
# A133438: a(1)=1. a(n) = Sum_{k|n} a(floor(sqrt(k))).

The programs for A133438, there is no canonical definition to state claims against.
-/

/-! ## A133438.P14155365061488380381

`∑{d}[n+1, A209655(A214080(#))]`
-/

namespace A133438.P14155365061488380381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A209655 (A214080 d).toNat

end

end A133438.P14155365061488380381

/-! ## A133438.P5436186375712785947

`∑{d}[n+1, A036453(A004111(#))]`
-/

namespace A133438.P5436186375712785947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036453 (A004111 d).toNat

end

end A133438.P5436186375712785947

/-! ## A133438.P12006109252738519344

`∑{d}[n+1, A043529(A001045(#))]`
-/

namespace A133438.P12006109252738519344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A043529 (A001045 d).toNat

end

end A133438.P12006109252738519344

/-! ## A133438.P11735480461417540261

`∑{d}[A043320(n+1), A086858(#)]`
-/

namespace A133438.P11735480461417540261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A086858 d

end

end A133438.P11735480461417540261

/-! ## A133438.P2401336630495703312

`∑{d}[n+1, A169695(A000962(#))]`
-/

namespace A133438.P2401336630495703312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A169695 (A000962 d).toNat

end

end A133438.P2401336630495703312

/-!
# A133439: a(1)=1; a(n) = Sum_{1<=k<=n, gcd(k,n)=1} a(floor(sqrt(k))).

The programs for A133439, there is no canonical definition to state claims against.
-/

/-! ## A133439.P1049949941368412927

`A031346(A336022(n))+A000010(n+1)`
-/

namespace A133439.P1049949941368412927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A336022 n).toNat + A000010 (n + 1)

end

end A133439.P1049949941368412927

/-! ## A133439.P2539528348268516209

`A231122(A001333(n))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A133439.P2539528348268516209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231122 (A001333 n).toNat : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A133439.P2539528348268516209

/-! ## A133439.P1592411435891793498

`A341026(A002379(n))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A133439.P1592411435891793498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341026 ((A002379 n).toNat + 165) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A133439.P1592411435891793498

/-! ## A133439.P10303305345808842470

`A334297(A338708(n+1))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A133439.P10303305345808842470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334297 (A338708 (n + 1)).toNat : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A133439.P10303305345808842470

/-! ## A133439.P10325836835162711853

`A010815(A077740(n+1))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1`
-/

namespace A133439.P10325836835162711853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 (A077740 (n + 1)).toNat : ℚ) + ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1)

end

end A133439.P10325836835162711853

/-!
# A133440: a(1)=1; a(n) = Sum_{1<=k<=n, gcd(k,n)=1} floor(sqrt(k)).

The programs for A133440, there is no canonical definition to state claims against.
-/

/-! ## A133440.P9632968863234911741

`A105224((2*n+1)*A127473(n+1))`
-/

namespace A133440.P9632968863234911741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 ((2 * n + 1 : ℤ) * A127473 (n + 1)).toNat

end

end A133440.P9632968863234911741

/-! ## A133440.P6557100690536330205

`A273190((2*n+1)*A127473(n+1))`
-/

namespace A133440.P6557100690536330205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 ((2 * n + 1 : ℤ) * A127473 (n + 1)).toNat

end

end A133440.P6557100690536330205

/-!
# A133443: a(n) = Sum_{k=0..n} C(n,floor(k/2))*(-1)^k*3^(n-k).

The programs for A133443, there is no canonical definition to state claims against.
-/

/-! ## A133443.P13009190984328709085

`(-1)^n*A127362(n)`
-/

namespace A133443.P13009190984328709085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A127362 n

end

end A133443.P13009190984328709085

/-! ## A133443.P5148037936431603639

`abs(A127362(n))`
-/

namespace A133443.P5148037936431603639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127362 n|

end

end A133443.P5148037936431603639

/-! ## A133443.P15798641927810888971

`gcd(A000038(n), A127362(n))`
-/

namespace A133443.P15798641927810888971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A127362 n)

end

end A133443.P15798641927810888971

/-! ## A133443.P11620182363974404525

`lcm(A000034(n), A127362(n))`
-/

namespace A133443.P11620182363974404525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A127362 n)

end

end A133443.P11620182363974404525

/-! ## A133443.P7261602781376644326

`(A127359(n)+A126869(n))/2`
-/

namespace A133443.P7261602781376644326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127359 n + A126869 n : ℚ) / 2

end

end A133443.P7261602781376644326

/-! ## A133443.P17246908266021168899

`A127362(n)/A034947(A120879(n))`
-/

namespace A133443.P17246908266021168899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127362 n : ℚ) / (A034947 (A120879 n).toNat : ℚ)

end

end A133443.P17246908266021168899

/-!
# A133444: a(n)=sum{k=0..n, C(n,floor(k/2))*(-1)^k*4^(n-k)}.

The programs for A133444, there is no canonical definition to state claims against.
-/

/-! ## A133444.P10794804207151661314

`(-1)^n*A127363(n)`
-/

namespace A133444.P10794804207151661314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A127363 n

end

end A133444.P10794804207151661314

/-! ## A133444.P368058465966305465

`abs(A127363(n))`
-/

namespace A133444.P368058465966305465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127363 n|

end

end A133444.P368058465966305465

/-! ## A133444.P594128062277142249

`gcd(A000038(n), A127363(n))`
-/

namespace A133444.P594128062277142249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A127363 n)

end

end A133444.P594128062277142249

/-! ## A133444.P5026534415663583577

`lcm(A006466(n), A127363(n))`
-/

namespace A133444.P5026534415663583577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A127363 n)

end

end A133444.P5026534415663583577

/-! ## A133444.P15985573678508668021

`lcm(-A127363(n), A262681(n))`
-/

namespace A133444.P15985573678508668021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A127363 n) (A262681 n)

end

end A133444.P15985573678508668021

/-!
# A133445: Write numbers in ternary under each other (right justified), read diagonals in SW-NE direction, sum digits.

The programs for A133445, there is no canonical definition to state claims against.
-/

/-! ## A133445.P10220831189950408249

`∑{digits}[A109683(n), #]`
-/

namespace A133445.P10220831189950408249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A133445.P10220831189950408249

/-! ## A133445.P1525763172491979037

`A053735(A109681(n))`
-/

namespace A133445.P1525763172491979037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A109681 n).toNat

end

end A133445.P1525763172491979037

/-! ## A133445.P1160785933206845004

`A007953(A109683(n))`
-/

namespace A133445.P1160785933206845004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A109683 n).toNat

end

end A133445.P1160785933206845004

/-! ## A133445.P16518319270557318978

`A180592(5*A109683(n))`
-/

namespace A133445.P16518319270557318978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180592 (5 * A109683 n).toNat

end

end A133445.P16518319270557318978

/-!
# A133447: Nonsemiprime hyperperfect numbers.

The programs for A133447, there is no canonical definition to state claims against.
-/

/-! ## A133447.P6894101717278935260

`filter[A007592(n+1), A065202(#)]`
-/

namespace A133447.P6894101717278935260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A133447.P6894101717278935260

/-!
# A133448: a(n) = 3*a(n-1) - a(n-3) + 3*a(n-4), with initial values 2,5,13,40.

The programs for A133448, the canonical program `A133448.P2703678068551720582` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133448 has offset 0).

The definition of A133448 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-3)+3*a(n-4)` (program `A133448.P2703678068551720582`, by `A133448.P2703678068551720582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133448.P2703678068551720582

`3*a(n-1)-a(n-3)+3*a(n-4)` with `a(0)=2, a(1)=5, a(2)=13, a(3)=40`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133448

/-- `3*a(n-1)-a(n-3)+3*a(n-4)` -/
def P2703678068551720582.Spec : Prop :=
  ∀ n, P2703678068551720582.a n = A133448 n

theorem P2703678068551720582.correct : P2703678068551720582.Spec := by
  intro n
  simp only [A133448]

end A133448

/-! ## A133448.P5720496646390150492

`A088911(n+1)+∑[3^n]`
-/

namespace A133448.P5720496646390150492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A133448.P5720496646390150492

namespace A133448

/-- `A088911(n+1)+∑[3^n]` -/
def P5720496646390150492.Spec : Prop :=
  ∀ n, P5720496646390150492.a n = A133448 n

end A133448

/-! ## A133448.P15677675643518358402

`char[A064429(2*n)]+∑[3^n]`
-/

namespace A133448.P15677675643518358402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A133448.P15677675643518358402

namespace A133448

/-- `char[A064429(2*n)]+∑[3^n]` -/
def P15677675643518358402.Spec : Prop :=
  ∀ n, (P15677675643518358402.a n : ℤ) = A133448 n

end A133448

/-! ## A133448.P13323808642796426367

`∑[3^n]+A131640(n+1)%2`
-/

namespace A133448.P13323808642796426367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A131640 (n + 1)) 2

end

end A133448.P13323808642796426367

namespace A133448

/-- `∑[3^n]+A131640(n+1)%2` -/
def P13323808642796426367.Spec : Prop :=
  ∀ n, P13323808642796426367.a n = A133448 n

end A133448

/-! ## A133448.P4422088715151192269

`A132868(n)+A132353(n)`
-/

namespace A133448.P4422088715151192269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132868 n + A132353 n

end

end A133448.P4422088715151192269

namespace A133448

/-- `A132868(n)+A132353(n)` -/
def P4422088715151192269.Spec : Prop :=
  ∀ n, P4422088715151192269.a n = A133448 n

end A133448

/-! ## A133448.P6417371349307000220

`xor(A132357(n), A176040(n))`
-/

namespace A133448.P6417371349307000220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A132357 n) (A176040 n)

end

end A133448.P6417371349307000220

namespace A133448

/-- `xor(A132357(n), A176040(n))` -/
def P6417371349307000220.Spec : Prop :=
  ∀ n, P6417371349307000220.a n = A133448 n

end A133448

/-! ## A133448.P7502409369747258615

`A039300(n)+∑[A132353(n)]`
-/

namespace A133448.P7502409369747258615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133448.P7502409369747258615

namespace A133448

/-- `A039300(n)+∑[A132353(n)]` -/
def P7502409369747258615.Spec : Prop :=
  ∀ n, P7502409369747258615.a n = A133448 n

end A133448

/-! ## A133448.P1531760538485459560

`A081374(n+1)+A004054(n)`
-/

namespace A133448.P1531760538485459560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081374 (n + 1) + A004054 n

end

end A133448.P1531760538485459560

namespace A133448

/-- `A081374(n+1)+A004054(n)` -/
def P1531760538485459560.Spec : Prop :=
  ∀ n, P1531760538485459560.a n = A133448 n

end A133448

/-! ## A133448.P18404764228694096193

`A133453(n)+A131531(n+2)`
-/

namespace A133448.P18404764228694096193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133453 n + A131531 (n + 2)

end

end A133448.P18404764228694096193

namespace A133448

/-- `A133453(n)+A131531(n+2)` -/
def P18404764228694096193.Spec : Prop :=
  ∀ n, P18404764228694096193.a n = A133448 n

end A133448

/-! ## A133448.P13197974741914796710

`A128834(n)+2*A132353(n)`
-/

namespace A133448.P13197974741914796710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + 2 * A132353 n

end

end A133448.P13197974741914796710

namespace A133448

/-- `A128834(n)+2*A132353(n)` -/
def P13197974741914796710.Spec : Prop :=
  ∀ n, P13197974741914796710.a n = A133448 n

end A133448

/-! ## A133448.P17875762770323835554

`A120471(n)+2/A131714(n)`
-/

namespace A133448.P17875762770323835554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120471 n : ℚ) + 2 / (A131714 n : ℚ)

end

end A133448.P17875762770323835554

namespace A133448

/-- `A120471(n)+2/A131714(n)` -/
def P17875762770323835554.Spec : Prop :=
  ∀ n, P17875762770323835554.a n = (A133448 n : ℚ)

end A133448

/-! ## A133448.P1357168863825005659

`2*A132868(n)-A128834(n)`
-/

namespace A133448.P1357168863825005659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132868 n - A128834 n

end

end A133448.P1357168863825005659

namespace A133448

/-- `2*A132868(n)-A128834(n)` -/
def P1357168863825005659.Spec : Prop :=
  ∀ n, P1357168863825005659.a n = A133448 n

end A133448

/-! ## A133448.P17305312833304760867

`A092220(n)+2*Δ[A039300(n)]`
-/

namespace A133448.P17305312833304760867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 n + 2 * (f1 (n + 1) - f1 n)

end

end A133448.P17305312833304760867

namespace A133448

/-- `A092220(n)+2*Δ[A039300(n)]` -/
def P17305312833304760867.Spec : Prop :=
  ∀ n, P17305312833304760867.a n = A133448 n

end A133448

/-! ## A133448.P5028907091466090834

`A115098(n+1)-A135265(n+1)`
-/

namespace A133448.P5028907091466090834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 (n + 1) - A135265 (n + 1)

end

end A133448.P5028907091466090834

namespace A133448

/-- `A115098(n+1)-A135265(n+1)` -/
def P5028907091466090834.Spec : Prop :=
  ∀ n, P5028907091466090834.a n = A133448 n

end A133448

/-! ## A133448.P17297666017078941884

`A059841(A002264(n+1))+∑[3^n]`
-/

namespace A133448.P17297666017078941884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A002264 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A133448.P17297666017078941884

namespace A133448

/-- `A059841(A002264(n+1))+∑[3^n]` -/
def P17297666017078941884.Spec : Prop :=
  ∀ n, P17297666017078941884.a n = A133448 n

end A133448

/-! ## A133448.P14040869146861378080

`∑[A000244(n)]+A047343(n+1)%2`
-/

namespace A133448.P14040869146861378080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (A047343 (n + 1)) 2

end

end A133448.P14040869146861378080

namespace A133448

/-- `∑[A000244(n)]+A047343(n+1)%2` -/
def P14040869146861378080.Spec : Prop :=
  ∀ n, P14040869146861378080.a n = A133448 n

end A133448

/-! ## A133448.P15901432084530693477

`A139782(n+1)-2*A133405(n+1)`
-/

namespace A133448.P15901432084530693477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139782 (n + 1) - 2 * A133405 (n + 1)

end

end A133448.P15901432084530693477

namespace A133448

/-- `A139782(n+1)-2*A133405(n+1)` -/
def P15901432084530693477.Spec : Prop :=
  ∀ n, P15901432084530693477.a n = A133448 n

end A133448

/-! ## A133448.P17951639532522883536

`A007051(n+1)-∑[A000071(n+1)]%2`
-/

namespace A133448.P17951639532522883536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A133448.P17951639532522883536

namespace A133448

/-- `A007051(n+1)-∑[A000071(n+1)]%2` -/
def P17951639532522883536.Spec : Prop :=
  ∀ n, P17951639532522883536.a n = A133448 n

end A133448

/-! ## A133448.P1949417023156773976

`A007051(n+1)-∑[A001611(n+1)]%2`
-/

namespace A133448.P1949417023156773976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1) - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A133448.P1949417023156773976

namespace A133448

/-- `A007051(n+1)-∑[A001611(n+1)]%2` -/
def P1949417023156773976.Spec : Prop :=
  ∀ n, P1949417023156773976.a n = A133448 n

end A133448

/-!
# A133450: Difference between 4*n^2 and the average of the two prime numbers which bracket this number.

The programs for A133450, there is no canonical definition to state claims against.
-/

/-! ## A133450.P13159197385161977339

`A056929(2*(n+1))`
-/

namespace A133450.P13159197385161977339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056929 (2 * (n + 1))

end

end A133450.P13159197385161977339

/-! ## A133450.P9477373591007407341

`A056929(n+2+n)%(n+1)`
-/

namespace A133450.P9477373591007407341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056929 (n + 2 + n)) (n + 1 : ℤ)

end

end A133450.P9477373591007407341

/-! ## A133450.P7931163733895010071

`(2*(n+1))²-A056928(2*(n+1))`
-/

namespace A133450.P7931163733895010071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1)) ^ 2 : ℤ) - A056928 (2 * (n + 1))

end

end A133450.P7931163733895010071

/-! ## A133450.P14975039423869651036

`A056927(2*(n+1))-A058043(2*(n+1))/2`
-/

namespace A133450.P14975039423869651036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056927 (2 * (n + 1)) : ℚ) - (A058043 (2 * (n + 1)) : ℚ) / 2

end

end A133450.P14975039423869651036

/-! ## A133450.P17192216806775114368

`A056927(2*(n+1))+A056928(2*(n+1))-A007491(2*(n+1))`
-/

namespace A133450.P17192216806775114368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (2 * (n + 1)) + (A056928 (2 * (n + 1)) - A007491 (2 * (n + 1)))

end

end A133450.P17192216806775114368

/-! ## A133450.P18445051737431835298

`A053001(2*(n+1))+A056927(2*(n+1))-A056928(2*(n+1))`
-/

namespace A133450.P18445051737431835298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (2 * (n + 1)) + (A056927 (2 * (n + 1)) - A056928 (2 * (n + 1)))

end

end A133450.P18445051737431835298

/-! ## A133450.P11281694055575469549

`A007491(2*n+1)+A144831(2*n+1)-A056928(2*(n+1))`
-/

namespace A133450.P11281694055575469549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (2 * n + 1) + (A144831 (2 * n + 1) - A056928 (2 * (n + 1)))

end

end A133450.P11281694055575469549

/-! ## A133450.P14143578784566013474

`A063933((2*(n+1))²)`
-/

namespace A133450.P14143578784566013474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063933 ((2 * (n + 1)) ^ 2)

end

end A133450.P14143578784566013474

/-!
# A133453: a(n) = 3*a(n-1) - a(n-3) + 3*a(n-4), with initial values 2,4,13,40.

The programs for A133453, the canonical program `A133453.P4723893912053180877` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133453 has offset 0).

The definition of A133453 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-3)+3*a(n-4)` (program `A133453.P4723893912053180877`, by `A133453.P4723893912053180877.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133453.P4723893912053180877

`3*a(n-1)-a(n-3)+3*a(n-4)` with `a(0)=2, a(1)=4, a(2)=13, a(3)=40`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133453

/-- `3*a(n-1)-a(n-3)+3*a(n-4)` -/
def P4723893912053180877.Spec : Prop :=
  ∀ n, P4723893912053180877.a n = A133453 n

theorem P4723893912053180877.correct : P4723893912053180877.Spec := by
  intro n
  simp only [A133453]

end A133453

/-! ## A133453.P14087958241072014540

`A088911(n+2)+∑[3^n]`
-/

namespace A133453.P14087958241072014540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A133453.P14087958241072014540

namespace A133453

/-- `A088911(n+2)+∑[3^n]` -/
def P14087958241072014540.Spec : Prop :=
  ∀ n, P14087958241072014540.a n = A133453 n

end A133453

/-! ## A133453.P56618100267588897

`A124302(n+2)-ceil(sin(n%6))`
-/

namespace A133453.P56618100267588897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 2) - ⌈Real.sin ((n % 6 : ℕ) : ℝ)⌉

end

end A133453.P56618100267588897

namespace A133453

/-- `A124302(n+2)-ceil(sin(n%6))` -/
def P56618100267588897.Spec : Prop :=
  ∀ n, P56618100267588897.a n = A133453 n

end A133453

/-! ## A133453.P3138926388421805534

`∑[or(2, 3^n-1)]-A131531(n+1)`
-/

namespace A133453.P3138926388421805534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((3 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A131531 (n + 1)

end

end A133453.P3138926388421805534

namespace A133453

/-- `∑[or(2, 3^n-1)]-A131531(n+1)` -/
def P3138926388421805534.Spec : Prop :=
  ∀ n, P3138926388421805534.a n = A133453 n

end A133453

/-! ## A133453.P6175644727379642819

`A130781(n)+A004054(n)`
-/

namespace A133453.P6175644727379642819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 n + A004054 n

end

end A133453.P6175644727379642819

namespace A133453

/-- `A130781(n)+A004054(n)` -/
def P6175644727379642819.Spec : Prop :=
  ∀ n, P6175644727379642819.a n = A133453 n

end A133453

/-! ## A133453.P9864884804808943297

`A132357(n)+A010892(n+1)`
-/

namespace A133453.P9864884804808943297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132357 n + A010892 (n + 1)

end

end A133453.P9864884804808943297

namespace A133453

/-- `A132357(n)+A010892(n+1)` -/
def P9864884804808943297.Spec : Prop :=
  ∀ n, P9864884804808943297.a n = A133453 n

end A133453

/-! ## A133453.P13003973416193337970

`A164907(n)+A092220(n+1)`
-/

namespace A133453.P13003973416193337970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164907 n + A092220 (n + 1)

end

end A133453.P13003973416193337970

namespace A133453

/-- `A164907(n)+A092220(n+1)` -/
def P13003973416193337970.Spec : Prop :=
  ∀ n, P13003973416193337970.a n = A133453 n

end A133453

/-! ## A133453.P9644165749219784659

`A120471(n)-A131714(n+1)`
-/

namespace A133453.P9644165749219784659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120471 n - A131714 (n + 1)

end

end A133453.P9644165749219784659

namespace A133453

/-- `A120471(n)-A131714(n+1)` -/
def P9644165749219784659.Spec : Prop :=
  ∀ n, P9644165749219784659.a n = A133453 n

end A133453

/-! ## A133453.P11882786562327102959

`A132357(n)+A128834(n+2)`
-/

namespace A133453.P11882786562327102959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132357 n + A128834 (n + 2)

end

end A133453.P11882786562327102959

namespace A133453

/-- `A132357(n)+A128834(n+2)` -/
def P11882786562327102959.Spec : Prop :=
  ∀ n, P11882786562327102959.a n = A133453 n

end A133453

/-! ## A133453.P16839353176770123655

`A133448(n)-A131531(n+2)`
-/

namespace A133453.P16839353176770123655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133448 n - A131531 (n + 2)

end

end A133453.P16839353176770123655

namespace A133453

/-- `A133448(n)-A131531(n+2)` -/
def P16839353176770123655.Spec : Prop :=
  ∀ n, P16839353176770123655.a n = A133453 n

end A133453

/-! ## A133453.P14799402300784740059

`xor(A067771(n), A083039(n+1))`
-/

namespace A133453.P14799402300784740059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A067771 n) (A083039 (n + 1))

end

end A133453.P14799402300784740059

namespace A133453

/-- `xor(A067771(n), A083039(n+1))` -/
def P14799402300784740059.Spec : Prop :=
  ∀ n, P14799402300784740059.a n = A133453 n

end A133453

/-! ## A133453.P1741204600825575266

`A087432(n+2)-A024495(n+2)`
-/

namespace A133453.P1741204600825575266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087432 (n + 2) - A024495 (n + 2)

end

end A133453.P1741204600825575266

namespace A133453

/-- `A087432(n+2)-A024495(n+2)` -/
def P1741204600825575266.Spec : Prop :=
  ∀ n, P1741204600825575266.a n = A133453 n

end A133453

/-! ## A133453.P900313114237286477

`A131531(n+1)+2*A132353(n)`
-/

namespace A133453.P900313114237286477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + 2 * A132353 n

end

end A133453.P900313114237286477

namespace A133453

/-- `A131531(n+1)+2*A132353(n)` -/
def P900313114237286477.Spec : Prop :=
  ∀ n, P900313114237286477.a n = A133453 n

end A133453

/-! ## A133453.P16048448727854174193

`Δ[A132868(n)]`
-/

namespace A133453.P16048448727854174193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133453.P16048448727854174193

namespace A133453

/-- `Δ[A132868(n)]` -/
def P16048448727854174193.Spec : Prop :=
  ∀ n, P16048448727854174193.a n = A133453 n

end A133453

/-! ## A133453.P13442165867478571215

`Δ[xor(n²%3, A132353(n))]`
-/

namespace A133453.P13442165867478571215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n ^ 2 % 3 : ℕ) : ℤ) (A132353 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133453.P13442165867478571215

namespace A133453

/-- `Δ[xor(n²%3, A132353(n))]` -/
def P13442165867478571215.Spec : Prop :=
  ∀ n, P13442165867478571215.a n = A133453 n

end A133453

/-! ## A133453.P4602181921788691819

`A133448(n+1)-3^(n+1)`
-/

namespace A133453.P4602181921788691819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133448 (n + 1) - (3 ^ (n + 1) : ℤ)

end

end A133453.P4602181921788691819

namespace A133453

/-- `A133448(n+1)-3^(n+1)` -/
def P4602181921788691819.Spec : Prop :=
  ∀ n, P4602181921788691819.a n = A133453 n

end A133453

/-! ## A133453.P4378480011238146813

`A132868(n+1)-A132868(n)`
-/

namespace A133453.P4378480011238146813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132868 (n + 1) - A132868 n

end

end A133453.P4378480011238146813

namespace A133453

/-- `A132868(n+1)-A132868(n)` -/
def P4378480011238146813.Spec : Prop :=
  ∀ n, P4378480011238146813.a n = A133453 n

end A133453

/-! ## A133453.P14910940507942139515

`A010892(n+1)+Δ[A132353(n)]`
-/

namespace A133453.P14910940507942139515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) + (f1 (n + 1) - f1 n)

end

end A133453.P14910940507942139515

namespace A133453

/-- `A010892(n+1)+Δ[A132353(n)]` -/
def P14910940507942139515.Spec : Prop :=
  ∀ n, P14910940507942139515.a n = A133453 n

end A133453

/-! ## A133453.P1989415422060302776

`A010892(n+1)+A132353(n+1)-A132353(n)`
-/

namespace A133453.P1989415422060302776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) + (A132353 (n + 1) - A132353 n)

end

end A133453.P1989415422060302776

namespace A133453

/-- `A010892(n+1)+A132353(n+1)-A132353(n)` -/
def P1989415422060302776.Spec : Prop :=
  ∀ n, P1989415422060302776.a n = A133453 n

end A133453

/-!
# A133454: Chain of 6 highly composite numbers generated when subject to the recurrence relation tau(a(n+1)) = a(n), with a(0)=3, where tau(n) is the number-of-divisors function A000005(n).

The programs for A133454, there is no canonical definition to state claims against.
-/

/-! ## A133454.P10354832331976829818

`A009287(n+2)`
-/

namespace A133454.P10354832331976829818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009287 (n + 2)

end

end A133454.P10354832331976829818

/-!
# A133455: a(n) = 3*a(n-1) - 3*a(n-2) + 2*a(n-3), with a(0) = 4, a(1) = 2, a(2) = 1.

The programs for A133455, the canonical program `A133455.P11309993230899329623` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133455 has offset 0).

The definition of A133455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+2*a(n-3)` (program `A133455.P11309993230899329623`, by `A133455.P11309993230899329623.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133455.P14620904435405767424

`2^n+3*A010892(n+1)`
-/

namespace A133455.P14620904435405767424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + 3 * A010892 (n + 1)

end

end A133455.P14620904435405767424

namespace A133455

/-- `2^n+3*A010892(n+1)` -/
def P14620904435405767424.Spec : Prop :=
  ∀ n, P14620904435405767424.a n = A133455 n

end A133455

/-! ## A133455.P11309993230899329623

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=4, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133455

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P11309993230899329623.Spec : Prop :=
  ∀ n, P11309993230899329623.a n = A133455 n

theorem P11309993230899329623.correct : P11309993230899329623.Spec := by
  intro n
  simp only [A133455]

end A133455

/-! ## A133455.P56952956665255473

`(-1)^n*A146321(n+1)`
-/

namespace A133455.P56952956665255473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A146321 (n + 1)

end

end A133455.P56952956665255473

namespace A133455

/-- `(-1)^n*A146321(n+1)` -/
def P56952956665255473.Spec : Prop :=
  ∀ n, P56952956665255473.a n = A133455 n

end A133455

/-! ## A133455.P12215407601776758765

`A084103(n+2)+2^n`
-/

namespace A133455.P12215407601776758765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084103 (n + 2) + (2 ^ n : ℤ)

end

end A133455.P12215407601776758765

namespace A133455

/-- `A084103(n+2)+2^n` -/
def P12215407601776758765.Spec : Prop :=
  ∀ n, P12215407601776758765.a n = A133455 n

end A133455

/-! ## A133455.P5564591822407994257

`2^n+4-A084104(n)`
-/

namespace A133455.P5564591822407994257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (4 - A084104 n)

end

end A133455.P5564591822407994257

namespace A133455

/-- `2^n+4-A084104(n)` -/
def P5564591822407994257.Spec : Prop :=
  ∀ n, P5564591822407994257.a n = A133455 n

end A133455

/-! ## A133455.P16310196979431290250

`2^n+A131028(n+1)-4`
-/

namespace A133455.P16310196979431290250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A131028 (n + 1) - 4)

end

end A133455.P16310196979431290250

namespace A133455

/-- `2^n+A131028(n+1)-4` -/
def P16310196979431290250.Spec : Prop :=
  ∀ n, P16310196979431290250.a n = A133455 n

end A133455

/-! ## A133455.P5179172906165249407

`A140504(n)-A084104(n)`
-/

namespace A133455.P5179172906165249407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140504 n - A084104 n

end

end A133455.P5179172906165249407

namespace A133455

/-- `A140504(n)-A084104(n)` -/
def P5179172906165249407.Spec : Prop :=
  ∀ n, P5179172906165249407.a n = A133455 n

end A133455

/-! ## A133455.P3558728678512919194

`2^n-A084103(A016897(n))`
-/

namespace A133455.P3558728678512919194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A084103 (A016897 n).toNat

end

end A133455.P3558728678512919194

namespace A133455

/-- `2^n-A084103(A016897(n))` -/
def P3558728678512919194.Spec : Prop :=
  ∀ n, P3558728678512919194.a n = A133455 n

end A133455

/-! ## A133455.P17937640937270852146

`A024495(n)+A131370(n)+A086953(n)`
-/

namespace A133455.P17937640937270852146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n + (A131370 n + A086953 n)

end

end A133455.P17937640937270852146

namespace A133455

/-- `A024495(n)+A131370(n)+A086953(n)` -/
def P17937640937270852146.Spec : Prop :=
  ∀ n, P17937640937270852146.a n = A133455 n

end A133455

/-! ## A133455.P13456692838927017298

`A131370(n+1)+A086953(n)+A057079(n)`
-/

namespace A133455.P13456692838927017298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131370 (n + 1) + (A086953 n + A057079 n)

end

end A133455.P13456692838927017298

namespace A133455

/-- `A131370(n+1)+A086953(n)+A057079(n)` -/
def P13456692838927017298.Spec : Prop :=
  ∀ n, P13456692838927017298.a n = A133455 n

end A133455

/-! ## A133455.P2065482908638307621

`A024493(n+1)+A086953(n)+A057079(n+1)`
-/

namespace A133455.P2065482908638307621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (n + 1) + (A086953 n + A057079 (n + 1))

end

end A133455.P2065482908638307621

namespace A133455

/-- `A024493(n+1)+A086953(n)+A057079(n+1)` -/
def P2065482908638307621.Spec : Prop :=
  ∀ n, P2065482908638307621.a n = A133455 n

end A133455

/-! ## A133455.P14532858919580735328

`A057079(n+1)+A131708(n)+A131370(n+1)`
-/

namespace A133455.P14532858919580735328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 1) + (A131708 n + A131370 (n + 1))

end

end A133455.P14532858919580735328

namespace A133455

/-- `A057079(n+1)+A131708(n)+A131370(n+1)` -/
def P14532858919580735328.Spec : Prop :=
  ∀ n, P14532858919580735328.a n = A133455 n

end A133455

/-! ## A133455.P8750638621356111939

`A146501(n+1)-(A154589(n+1)+A070366(n+1))`
-/

namespace A133455.P8750638621356111939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146501 (n + 1) - (A154589 (n + 1) + A070366 (n + 1))

end

end A133455.P8750638621356111939

namespace A133455

/-- `A146501(n+1)-(A154589(n+1)+A070366(n+1))` -/
def P8750638621356111939.Spec : Prop :=
  ∀ n, P8750638621356111939.a n = A133455 n

end A133455

/-! ## A133455.P13504777899993478587

`Δ[A084103(n)+A083318(n)]`
-/

namespace A133455.P13504777899993478587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084103 n + A083318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133455.P13504777899993478587

namespace A133455

/-- `Δ[A084103(n)+A083318(n)]` -/
def P13504777899993478587.Spec : Prop :=
  ∀ n, P13504777899993478587.a n = A133455 n

end A133455

/-! ## A133455.P2315373874632682255

`A057079(n+1)+A143100(n+2)-A143100(n+1)`
-/

namespace A133455.P2315373874632682255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 1) + (A143100 (n + 2) - A143100 (n + 1))

end

end A133455.P2315373874632682255

namespace A133455

/-- `A057079(n+1)+A143100(n+2)-A143100(n+1)` -/
def P2315373874632682255.Spec : Prop :=
  ∀ n, P2315373874632682255.a n = A133455 n

end A133455

/-! ## A133455.P14851830616985349202

`abs(A146321(n+1))`
-/

namespace A133455.P14851830616985349202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A146321 (n + 1)|

end

end A133455.P14851830616985349202

namespace A133455

/-- `abs(A146321(n+1))` -/
def P14851830616985349202.Spec : Prop :=
  ∀ n, P14851830616985349202.a n = A133455 n

end A133455

/-!
# A133456: Period 18: repeat [3, 3, -5, 0, 3, -1, -3, 0, 7] followed by their negatives.

The programs for A133456, the canonical program `A133456.P16858368347166517620` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133456 has offset 0).

The definition of A133456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133456.P16858368347166517620

`-a(n-9)` with `a(0)=3, a(1)=3, a(2)=-5, a(3)=0, a(4)=3, a(5)=-1, a(6)=-3, a(7)=0, a(8)=7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133456

/-- `-a(n-9)` -/
def P16858368347166517620.Spec : Prop :=
  ∀ n, P16858368347166517620.a n = A133456 n

theorem P16858368347166517620.correct : P16858368347166517620.Spec := by
  intro n
  simp only [A133456]

end A133456

/-!
# A133457: Irregular triangle read by rows: row n gives exponents in expression for n as a sum of powers of 2.

The programs for A133457, there is no canonical definition to state claims against.
-/

/-! ## A133457.P16606933480989588665

`log2(A348296(n+1))`
-/

namespace A133457.P16606933480989588665
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A348296 (n + 1) : ℝ)

end

end A133457.P16606933480989588665

/-! ## A133457.P16366031183099002156

`A000120(A348296(n+1)-1)`
-/

namespace A133457.P16366031183099002156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A348296 (n + 1) - 1).toNat

end

end A133457.P16366031183099002156

/-! ## A133457.P9245655411607981606

`A002487(A348296(n+1)-1)`
-/

namespace A133457.P9245655411607981606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A348296 (n + 1) - 1).toNat

end

end A133457.P9245655411607981606

/-! ## A133457.P17147451191946489283

`A087808(A348296(n+1)-1)`
-/

namespace A133457.P17147451191946489283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A348296 (n + 1) - 1).toNat

end

end A133457.P17147451191946489283

/-! ## A133457.P8927104080570262350

`A277700(A348296(n+1)-1)`
-/

namespace A133457.P8927104080570262350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277700 (A348296 (n + 1) - 1).toNat

end

end A133457.P8927104080570262350

/-! ## A133457.P11564842025846007533

`A293390(A348296(n+1)-1)`
-/

namespace A133457.P11564842025846007533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293390 (A348296 (n + 1) - 1).toNat

end

end A133457.P11564842025846007533

/-! ## A133457.P11343274544761453604

`val(A053575(n+1)*A348296(n+1), 2)`
-/

namespace A133457.P11343274544761453604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A053575 (n + 1) * A348296 (n + 1)).toNat 2

end

end A133457.P11343274544761453604

/-! ## A133457.P11962076176760181272

`val(A056913(n+1)*A348296(n+1), 2)`
-/

namespace A133457.P11962076176760181272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A056913 (n + 1) * A348296 (n + 1)).toNat 2

end

end A133457.P11962076176760181272

/-! ## A133457.P4557754335022849340

`val(A228058(n+1)*A348296(n+1), 2)`
-/

namespace A133457.P4557754335022849340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A228058 (n + 1) * A348296 (n + 1)).toNat 2

end

end A133457.P4557754335022849340

/-! ## A133457.P3230160157627521440

`val(A139250(n+2)*A348296(n+1), 2)`
-/

namespace A133457.P3230160157627521440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A139250 (n + 2) * A348296 (n + 1)).toNat 2

end

end A133457.P3230160157627521440

/-! ## A133457.P17425094706428676484

`A048793(n+1)-1`
-/

namespace A133457.P17425094706428676484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (n + 1) - 1

end

end A133457.P17425094706428676484

/-! ## A133457.P4182258208281709954

`Δ[∑[A048793(n)]-n]`
-/

namespace A133457.P4182258208281709954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133457.P4182258208281709954

/-! ## A133457.P13760036900432386847

`A009995(A048793(n+1))`
-/

namespace A133457.P13760036900432386847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (A048793 (n + 1)).toNat

end

end A133457.P13760036900432386847

/-! ## A133457.P16923762734518516439

`A119369(A048793(n+1)²+1)`
-/

namespace A133457.P16923762734518516439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 (A048793 (n + 1) ^ 2 + 1).toNat

end

end A133457.P16923762734518516439

/-! ## A133457.P14642260854425683733

`val(A343934(n+1), 2)`
-/

namespace A133457.P14642260854425683733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A343934 (n + 1)).toNat 2

end

end A133457.P14642260854425683733

/-! ## A133457.P16532282564799570565

`A007814(A343934(n+1))`
-/

namespace A133457.P16532282564799570565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A343934 (n + 1)).toNat

end

end A133457.P16532282564799570565

/-! ## A133457.P717639888509268853

`A000523(gcd(A000079(n), A343934(n+1)))`
-/

namespace A133457.P717639888509268853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (Int.gcd (A000079 n) (A343934 (n + 1)))

end

end A133457.P717639888509268853

/-!
# A133458: The size of the largest antichain in the 7-dimensional hypercubic lattice of size n; also the coefficient of x^floor(7*(n-1)/2) in (1 + x + ... + x^(n-1))^7.

The programs for A133458, there is no canonical definition to state claims against.
-/

/-! ## A133458.P16466226771597145187

`record[A077042(A155212(n))]`
-/

namespace A133458.P16466226771597145187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A155212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133458.P16466226771597145187

/-! ## A133458.P7412101233260913348

`A077042(A055999(n+6)-2)`
-/

namespace A133458.P7412101233260913348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A055999 (n + 6) - 2).toNat

end

end A133458.P7412101233260913348

/-! ## A133458.P1705630123004536783

`A077042(A000124(n+9)-9)`
-/

namespace A133458.P1705630123004536783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A000124 (n + 9) - 9).toNat

end

end A133458.P1705630123004536783

/-! ## A133458.P4718747063874133024

`A077042(A000217(n+8)+n+1)`
-/

namespace A133458.P4718747063874133024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A000217 (n + 8) + (n + 1 : ℤ)).toNat

end

end A133458.P4718747063874133024

/-!
# A133459: Sums of two nonzero pentagonal pyramidal numbers.

The programs for A133459, there is no canonical definition to state claims against.
-/

/-! ## A133459.P12553276160297038005

`eq[2, A338494(n+1)]+1`
-/

namespace A133459.P12553276160297038005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338494 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A133459.P12553276160297038005

/-! ## A133459.P4442110103751439748

`eq[2, A338494(A028310(n))]`
-/

namespace A133459.P4442110103751439748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338494 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133459.P4442110103751439748

/-!
# A133460: a(n) = 3^n*2^(n^2).

The programs for A133460, the canonical program `A133460.P3117674545644178642` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133460 has offset 0).

The definition of A133460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*2^n²` (program `A133460.P3117674545644178642`, by `A133460.P3117674545644178642.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133460.P3117674545644178642

`3^n*2^n²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133460

/-- `3^n*2^n²` -/
def P3117674545644178642.Spec : Prop :=
  ∀ n, (P3117674545644178642.a n : ℤ) = A133460 n

theorem P3117674545644178642.correct : P3117674545644178642.Spec := by
  intro n
  simp only [A133460]

end A133460

/-! ## A133460.P7758065856675846939

`lcm(2^n², 3^n)`
-/

namespace A133460.P7758065856675846939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ n ^ 2) (3 ^ n)

end

end A133460.P7758065856675846939

namespace A133460

/-- `lcm(2^n², 3^n)` -/
def P7758065856675846939.Spec : Prop :=
  ∀ n, (P7758065856675846939.a n : ℤ) = A133460 n

end A133460

/-! ## A133460.P17241595127335441508

`∏[4*a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A133460.P17241595127335441508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133460.P17241595127335441508

namespace A133460

/-- `∏[4*a(n-1)]` -/
def P17241595127335441508.Spec : Prop :=
  ∀ n, (P17241595127335441508.a n : ℤ) = A133460 n

end A133460

/-! ## A133460.P10264879186808584653

`∏[a(n-1)/(1/2)²]` with `a(0)=1, a(1)=6`
-/

namespace A133460.P10264879186808584653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133460.P10264879186808584653

namespace A133460

/-- `∏[a(n-1)/(1/2)²]` -/
def P10264879186808584653.Spec : Prop :=
  ∀ n, P10264879186808584653.a n = (A133460 n : ℚ)

end A133460

/-! ## A133460.P11181479387549656380

`∑[a(n-1)+a(n-1)]^n` with `a(0)=3, a(1)=3`
-/

namespace A133460.P11181479387549656380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A133460.P11181479387549656380

namespace A133460

/-- `∑[a(n-1)+a(n-1)]^n` -/
def P11181479387549656380.Spec : Prop :=
  ∀ n, (P11181479387549656380.a n : ℤ) = A133460 n

end A133460

/-!
# A133461: a(n) = 4^n*3^(n^2).

The programs for A133461, the canonical program `A133461.P14221398790158668729` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133461 has offset 0).

The definition of A133461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*3^n²` (program `A133461.P14221398790158668729`, by `A133461.P14221398790158668729.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133461.P14221398790158668729

`4^n*3^n²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133461

/-- `4^n*3^n²` -/
def P14221398790158668729.Spec : Prop :=
  ∀ n, (P14221398790158668729.a n : ℤ) = A133461 n

theorem P14221398790158668729.correct : P14221398790158668729.Spec := by
  intro n
  simp only [A133461]

end A133461

/-! ## A133461.P15474698111112727564

`lcm(3^n², 4^n)`
-/

namespace A133461.P15474698111112727564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (3 ^ n ^ 2) (4 ^ n)

end

end A133461.P15474698111112727564

namespace A133461

/-- `lcm(3^n², 4^n)` -/
def P15474698111112727564.Spec : Prop :=
  ∀ n, (P15474698111112727564.a n : ℤ) = A133461 n

end A133461

/-! ## A133461.P9520727910336867228

`∏[A003946(2*n)]`
-/

namespace A133461.P9520727910336867228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133461.P9520727910336867228

namespace A133461

/-- `∏[A003946(2*n)]` -/
def P9520727910336867228.Spec : Prop :=
  ∀ n, P9520727910336867228.a n = A133461 n

end A133461

/-! ## A133461.P15961086343184020759

`∏[A133647(2*n)]`
-/

namespace A133461.P15961086343184020759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133647 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133461.P15961086343184020759

namespace A133461

/-- `∏[A133647(2*n)]` -/
def P15961086343184020759.Spec : Prop :=
  ∀ n, P15961086343184020759.a n = A133461 n

end A133461

/-! ## A133461.P7810612188015878130

`∏[A169161(2*n)]`
-/

namespace A133461.P7810612188015878130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169161 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133461.P7810612188015878130

namespace A133461

/-- `∏[A169161(2*n)]` -/
def P7810612188015878130.Spec : Prop :=
  ∀ n, P7810612188015878130.a n = A133461 n

end A133461

/-!
# A133462: a(n+1)-10a(n)=3(-3, -2, -1, 0, 1, 2, 3, 4, 5 ...).

The programs for A133462, the canonical program `A133462.P14485000442595070593` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133462 has offset 0).

The definition of A133462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133462.P14485000442595070593

`∑[10*a(n-1)+3]` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133462

/-- `∑[10*a(n-1)+3]` -/
def P14485000442595070593.Spec : Prop :=
  ∀ n, (P14485000442595070593.a n : ℤ) = A133462 n

theorem P14485000442595070593.correct : P14485000442595070593.Spec := by
  intro n
  simp only [A133462]

end A133462

/-! ## A133462.P15142588122914053822

`∑[lcm(10, a(n-1))+3]` with `a(0)=1, a(1)=0`
-/

namespace A133462.P15142588122914053822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Nat.lcm 10 (f1 (n - 1)) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133462.P15142588122914053822

namespace A133462

/-- `∑[lcm(10, a(n-1))+3]` -/
def P15142588122914053822.Spec : Prop :=
  ∀ n, (P15142588122914053822.a n : ℤ) = A133462 n

end A133462

/-! ## A133462.P10787550882551373134

`∑[round(10^(n-1)/3)]+1`
-/

namespace A133462.P10787550882551373134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A133462.P10787550882551373134

namespace A133462

/-- `∑[round(10^(n-1)/3)]+1` -/
def P10787550882551373134.Spec : Prop :=
  ∀ n, P10787550882551373134.a n = A133462 n

end A133462

/-! ## A133462.P7778333769177469731

`∑[5-2*(1-5*a(n-1))]` with `a(0)=1, a(1)=0`
-/

namespace A133462.P7778333769177469731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  5 - 2 * (1 - 5 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133462.P7778333769177469731

namespace A133462

/-- `∑[5-2*(1-5*a(n-1))]` -/
def P7778333769177469731.Spec : Prop :=
  ∀ n, P7778333769177469731.a n = A133462 n

end A133462

/-! ## A133462.P15130926289793726164

`(A173735(n)-n)/3`
-/

namespace A133462.P15130926289793726164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173735 n - (n : ℤ) : ℚ) / 3

end

end A133462.P15130926289793726164

namespace A133462

/-- `(A173735(n)-n)/3` -/
def P15130926289793726164.Spec : Prop :=
  ∀ n, P15130926289793726164.a n = (A133462 n : ℚ)

end A133462

/-! ## A133462.P10936111138827640156

`abs(ceil((A002275(n)+2*n+1)/3)-n)`
-/

namespace A133462.P10936111138827640156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(A002275 n + (2 * n + 1 : ℤ) : ℚ) / 3⌉ - (n : ℤ)|

end

end A133462.P10936111138827640156

namespace A133462

/-- `abs(ceil((A002275(n)+2*n+1)/3)-n)` -/
def P10936111138827640156.Spec : Prop :=
  ∀ n, P10936111138827640156.a n = A133462 n

end A133462

/-! ## A133462.P1375965105237854827

`A199683(n)%∑[A199688(n)]`
-/

namespace A133462.P1375965105237854827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199683 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A133462.P1375965105237854827

namespace A133462

/-- `A199683(n)%∑[A199688(n)]` -/
def P1375965105237854827.Spec : Prop :=
  ∀ n, P1375965105237854827.a n = A133462 n

end A133462

/-!
# A133463: Partial sums of the sequence that starts with 2 and is followed by A111575.

The programs for A133463, the canonical program `A133463.P7070494857109604050` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133463 has offset 0).

The definition of A133463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 836 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133463.P7070494857109604050

`3*a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133463

/-- `3*a(n-4)` -/
def P7070494857109604050.Spec : Prop :=
  ∀ n, (P7070494857109604050.a n : ℤ) = A133463 n

theorem P7070494857109604050.correct : P7070494857109604050.Spec := by
  intro n
  simp only [A133463]

end A133463

/-! ## A133463.P15463190768145784319

`(n%4+2)*3^floor(n/4)`
-/

namespace A133463.P15463190768145784319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 4 + 2 : ℕ) : ℚ) * (3 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ)

end

end A133463.P15463190768145784319

namespace A133463

/-- `(n%4+2)*3^floor(n/4)` -/
def P15463190768145784319.Spec : Prop :=
  ∀ n, P15463190768145784319.a n = (A133463 n : ℚ)

end A133463

/-! ## A133463.P7093505624724996942

`a(n-1)+a(n-1)/a((n-1)%4)` with `a(0)=2`
-/

namespace A133463.P7093505624724996942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + a (n - 1) / a (Int.tmod ((n : ℤ) - 1) 4).toNat

end

end A133463.P7093505624724996942

namespace A133463

/-- `a(n-1)+a(n-1)/a((n-1)%4)` -/
def P7093505624724996942.Spec : Prop :=
  ∀ n, P7093505624724996942.a n = (A133463 n : ℚ)

end A133463

/-! ## A133463.P7484798932194542793

`a(n-4)+a(n-4)+a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A133463.P7484798932194542793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 5] fun n a =>
  a (n - 4) + (a (n - 4) + a (n - 4))

end

end A133463.P7484798932194542793

namespace A133463

/-- `a(n-4)+a(n-4)+a(n-4)` -/
def P7484798932194542793.Spec : Prop :=
  ∀ n, (P7484798932194542793.a n : ℤ) = A133463 n

theorem P7484798932194542793.correct : P7484798932194542793.Spec := by
  intro n
  simp only [A133463, Nat.add_sub_cancel, A133463.P7484798932194542793.a, A133463.P7070494857109604050.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A133463

/-! ## A133463.P17827785873551576678

`A111575(n)*A328943(n)`
-/

namespace A133463.P17827785873551576678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111575 n * A328943 n

end

end A133463.P17827785873551576678

namespace A133463

/-- `A111575(n)*A328943(n)` -/
def P17827785873551576678.Spec : Prop :=
  ∀ n, P17827785873551576678.a n = A133463 n

end A133463

/-!
# A133464: a(3n)=4^n, a(3n+1)=2*4^n, a(3n+2)=3*4^n.

The programs for A133464, the canonical program `A133464.P1908847476942681960` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133464 has offset 0).

The definition of A133464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133464.P5951256402454026666

`∑[4^floor(n*γ²)]`
-/

namespace A133464.P5951256402454026666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (⌊(n : ℝ) * Real.eulerMascheroniConstant ^ 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133464.P5951256402454026666

namespace A133464

/-- `∑[4^floor(n*γ²)]` -/
def P5951256402454026666.Spec : Prop :=
  ∀ n, P5951256402454026666.a n = (A133464 n : ℚ)

end A133464

/-! ## A133464.P1908847476942681960

`4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133464

/-- `4*a(n-3)` -/
def P1908847476942681960.Spec : Prop :=
  ∀ n, (P1908847476942681960.a n : ℤ) = A133464 n

theorem P1908847476942681960.correct : P1908847476942681960.Spec := by
  intro n
  simp only [A133464]

end A133464

/-! ## A133464.P1109273013506087112

`a(n-3)/(1/2)²` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A133464.P1109273013506087112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) / ((1 : ℚ) / 2) ^ 2

end

end A133464.P1109273013506087112

namespace A133464

/-- `a(n-3)/(1/2)²` -/
def P1109273013506087112.Spec : Prop :=
  ∀ n, P1109273013506087112.a n = (A133464 n : ℚ)

end A133464

/-! ## A133464.P13671468723930995544

`a(n-1)+a(n-1)/a((n-1)%3)` with `a(0)=1`
-/

namespace A133464.P13671468723930995544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - 1) / a (Int.tmod ((n : ℤ) - 1) 3).toNat

end

end A133464.P13671468723930995544

namespace A133464

/-- `a(n-1)+a(n-1)/a((n-1)%3)` -/
def P13671468723930995544.Spec : Prop :=
  ∀ n, P13671468723930995544.a n = (A133464 n : ℚ)

end A133464

/-! ## A133464.P16590230317623094932

`a(n-1)+a(n-a(a(n-2)%3))` with `a(0)=1, a(1)=2`
-/

namespace A133464.P16590230317623094932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - a (a (n - 2) % 3))

end

end A133464.P16590230317623094932

namespace A133464

/-- `a(n-1)+a(n-a(a(n-2)%3))` -/
def P16590230317623094932.Spec : Prop :=
  ∀ n, (P16590230317623094932.a n : ℤ) = A133464 n

end A133464

/-! ## A133464.P14952350000623129002

`A180516(n+1)+1`
-/

namespace A133464.P14952350000623129002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180516 (n + 1) + 1

end

end A133464.P14952350000623129002

namespace A133464

/-- `A180516(n+1)+1` -/
def P14952350000623129002.Spec : Prop :=
  ∀ n, P14952350000623129002.a n = A133464 n

end A133464

/-! ## A133464.P2759135100941697752

`a(n-1)+A173862(n)²` with `a(0)=1`
-/

namespace A133464.P2759135100941697752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A173862 n ^ 2

end

end A133464.P2759135100941697752

namespace A133464

/-- `a(n-1)+A173862(n)²` -/
def P2759135100941697752.Spec : Prop :=
  ∀ n, P2759135100941697752.a n = A133464 n

end A133464

/-! ## A133464.P13177001932780715731

`A137824(A080782(n+1))`
-/

namespace A133464.P13177001932780715731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137824 (A080782 (n + 1)).toNat

end

end A133464.P13177001932780715731

namespace A133464

/-- `A137824(A080782(n+1))` -/
def P13177001932780715731.Spec : Prop :=
  ∀ n, P13177001932780715731.a n = A133464 n

end A133464

/-! ## A133464.P1077906200282823085

`A029744(A319371(n+1))`
-/

namespace A133464.P1077906200282823085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A319371 (n + 1)).toNat

end

end A133464.P1077906200282823085

namespace A133464

/-- `A029744(A319371(n+1))` -/
def P1077906200282823085.Spec : Prop :=
  ∀ n, P1077906200282823085.a n = A133464 n

end A133464

/-! ## A133464.P8890224750240573210

`∪[A000079(n), A084221(n)]`
-/

namespace A133464.P8890224750240573210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133464.P8890224750240573210

namespace A133464

/-- `∪[A000079(n), A084221(n)]` -/
def P8890224750240573210.Spec : Prop :=
  ∀ n, (P8890224750240573210.a n : ℤ) = A133464 n

end A133464

/-! ## A133464.P5867635208049522891

`∪[A000079(n), A134683(n)]`
-/

namespace A133464.P5867635208049522891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133464.P5867635208049522891

namespace A133464

/-- `∪[A000079(n), A134683(n)]` -/
def P5867635208049522891.Spec : Prop :=
  ∀ n, (P5867635208049522891.a n : ℤ) = A133464 n

end A133464

/-! ## A133464.P16935490572805146347

`∪[A084221(n), A134683(n)]`
-/

namespace A133464.P16935490572805146347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133464.P16935490572805146347

namespace A133464

/-- `∪[A084221(n), A134683(n)]` -/
def P16935490572805146347.Spec : Prop :=
  ∀ n, (P16935490572805146347.a n : ℤ) = A133464 n

end A133464

/-! ## A133464.P8578623391033881044

`lcm(5, a(n-3))-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A133464.P8578623391033881044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (Int.lcm 5 (a (n - 3)) : ℤ) - a (n - 3)

end

end A133464.P8578623391033881044

namespace A133464

/-- `lcm(5, a(n-3))-a(n-3)` -/
def P8578623391033881044.Spec : Prop :=
  ∀ n, P8578623391033881044.a n = A133464 n

end A133464

/-! ## A133464.P12159320675742968666

`∪[A000225(n), A284354(n)]+1`
-/

namespace A133464.P12159320675742968666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284354 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A133464.P12159320675742968666

namespace A133464

/-- `∪[A000225(n), A284354(n)]+1` -/
def P12159320675742968666.Spec : Prop :=
  ∀ n, (P12159320675742968666.a n : ℤ) = A133464 n

end A133464

/-! ## A133464.P3206567983035645266

`(A078030(2*n)+A060547(2*(n+1)))/2`
-/

namespace A133464.P3206567983035645266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078030 (2 * n) + A060547 (2 * (n + 1)) : ℚ) / 2

end

end A133464.P3206567983035645266

namespace A133464

/-- `(A078030(2*n)+A060547(2*(n+1)))/2` -/
def P3206567983035645266.Spec : Prop :=
  ∀ n, P3206567983035645266.a n = (A133464 n : ℚ)

end A133464

/-! ## A133464.P3991189270170980446

`A029747(2*n+1)+A029747(2*(n+1))-A029749(2*n+1)`
-/

namespace A133464.P3991189270170980446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (2 * n + 1) + (A029747 (2 * (n + 1)) - A029749 (2 * n + 1))

end

end A133464.P3991189270170980446

namespace A133464

/-- `A029747(2*n+1)+A029747(2*(n+1))-A029749(2*n+1)` -/
def P3991189270170980446.Spec : Prop :=
  ∀ n, P3991189270170980446.a n = A133464 n

end A133464

/-! ## A133464.P1279012107646299584

`Δ[A072944(n+3)/2]`
-/

namespace A133464.P1279012107646299584
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072944 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133464.P1279012107646299584

namespace A133464

/-- `Δ[A072944(n+3)/2]` -/
def P1279012107646299584.Spec : Prop :=
  ∀ n, P1279012107646299584.a n = (A133464 n : ℚ)

end A133464

/-! ## A133464.P15925974119677473179

`Δ[A200672(2*n+1)/2]`
-/

namespace A133464.P15925974119677473179
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200672 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133464.P15925974119677473179

namespace A133464

/-- `Δ[A200672(2*n+1)/2]` -/
def P15925974119677473179.Spec : Prop :=
  ∀ n, P15925974119677473179.a n = (A133464 n : ℚ)

end A133464

/-! ## A133464.P14258076199905117851

`∩[A332520(n+1), A223543(n)]`
-/

namespace A133464.P14258076199905117851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223543 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133464.P14258076199905117851

namespace A133464

/-- `∩[A332520(n+1), A223543(n)]` -/
def P14258076199905117851.Spec : Prop :=
  ∀ n, (P14258076199905117851.a n : ℤ) = A133464 n

end A133464

/-!
# A133466: Positive integers k for which there is exactly one integer i in {1,2,3,...,k-1} such that i*k is a square.

The programs for A133466, the canonical program `A133466.P7898642945469282061` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133466 has offset 1).

The definition of A133466 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133466.P7898642945469282061

`4*A005117(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133466

/-- `4*A005117(n+1)` -/
def P7898642945469282061.Spec : Prop :=
  ∀ n, P7898642945469282061.a n = A133466 (n + 1)

theorem P7898642945469282061.correct : P7898642945469282061.Spec := by
  intro n
  simp only [A133466, Nat.add_sub_cancel]

end A133466

/-! ## A133466.P1115944586327352288

`4*comp[A105570(n)]`
-/

namespace A133466.P1115944586327352288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A133466.P1115944586327352288

namespace A133466

/-- `4*comp[A105570(n)]` -/
def P1115944586327352288.Spec : Prop :=
  ∀ n, (P1115944586327352288.a n : ℤ) = A133466 (n + 1)

end A133466

/-! ## A133466.P1536904040324140024

`4*sqrt(A062503(n+1))`
-/

namespace A133466.P1536904040324140024
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A062503 (n + 1) : ℝ)

end

end A133466.P1536904040324140024

namespace A133466

/-- `4*sqrt(A062503(n+1))` -/
def P1536904040324140024.Spec : Prop :=
  ∀ n, P1536904040324140024.a n = (A133466 (n + 1) : ℝ)

end A133466

/-! ## A133466.P15802568387637899001

`record[4*A003967(n+1)]`
-/

namespace A133466.P15802568387637899001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133466.P15802568387637899001

namespace A133466

/-- `record[4*A003967(n+1)]` -/
def P15802568387637899001.Spec : Prop :=
  ∀ n, P15802568387637899001.a n = A133466 (n + 1)

end A133466

/-! ## A133466.P6404886270706067914

`record[4*A007913(n+1)]`
-/

namespace A133466.P6404886270706067914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133466.P6404886270706067914

namespace A133466

/-- `record[4*A007913(n+1)]` -/
def P6404886270706067914.Spec : Prop :=
  ∀ n, P6404886270706067914.a n = A133466 (n + 1)

end A133466

/-! ## A133466.P6647959917297568257

`record[4*A007947(n+1)]`
-/

namespace A133466.P6647959917297568257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133466.P6647959917297568257

namespace A133466

/-- `record[4*A007947(n+1)]` -/
def P6647959917297568257.Spec : Prop :=
  ∀ n, P6647959917297568257.a n = A133466 (n + 1)

end A133466

/-! ## A133466.P12860954675187370542

`record[4*A055231(n+1)]`
-/

namespace A133466.P12860954675187370542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133466.P12860954675187370542

namespace A133466

/-- `record[4*A055231(n+1)]` -/
def P12860954675187370542.Spec : Prop :=
  ∀ n, P12860954675187370542.a n = A133466 (n + 1)

end A133466

/-! ## A133466.P4829573283604163649

`record[2*2*A055653(n+1)]`
-/

namespace A133466.P4829573283604163649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A055653 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133466.P4829573283604163649

namespace A133466

/-- `record[2*2*A055653(n+1)]` -/
def P4829573283604163649.Spec : Prop :=
  ∀ n, P4829573283604163649.a n = A133466 (n + 1)

end A133466

/-! ## A133466.P12250455550413864931

`4*(A243348(n+1)+n+1)`
-/

namespace A133466.P12250455550413864931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A243348 (n + 1) + (n + 1 : ℤ))

end

end A133466.P12250455550413864931

namespace A133466

/-- `4*(A243348(n+1)+n+1)` -/
def P12250455550413864931.Spec : Prop :=
  ∀ n, P12250455550413864931.a n = A133466 (n + 1)

end A133466

/-! ## A133466.P16049077596746174043

`record[(n+1)*(A008683(n+1)²+3)]`
-/

namespace A133466.P16049077596746174043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008683 (n + 1) ^ 2 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133466.P16049077596746174043

namespace A133466

/-- `record[(n+1)*(A008683(n+1)²+3)]` -/
def P16049077596746174043.Spec : Prop :=
  ∀ n, P16049077596746174043.a n = A133466 (n + 1)

end A133466

/-! ## A133466.P13545377112593178855

`∪[A081770(n+1), A191483(n+1)]`
-/

namespace A133466.P13545377112593178855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133466.P13545377112593178855

namespace A133466

/-- `∪[A081770(n+1), A191483(n+1)]` -/
def P13545377112593178855.Spec : Prop :=
  ∀ n, (P13545377112593178855.a n : ℤ) = A133466 (n + 1)

end A133466

/-! ## A133466.P17249520616780828413

`∪[A191483(n+1), A364999(n+1)]`
-/

namespace A133466.P17249520616780828413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133466.P17249520616780828413

namespace A133466

/-- `∪[A191483(n+1), A364999(n+1)]` -/
def P17249520616780828413.Spec : Prop :=
  ∀ n, (P17249520616780828413.a n : ℤ) = A133466 (n + 1)

end A133466

/-! ## A133466.P6767519663281956583

`4*record[n+2-gcd(A000010(n+1)-(n+2), A008683(n+1))]`
-/

namespace A133466.P6767519663281956583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Int.gcd (A000010 (n + 1) - (n + 2 : ℤ)) (A008683 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133466.P6767519663281956583

namespace A133466

/-- `4*record[n+2-gcd(A000010(n+1)-(n+2), A008683(n+1))]` -/
def P6767519663281956583.Spec : Prop :=
  ∀ n, P6767519663281956583.a n = A133466 (n + 1)

end A133466

/-! ## A133466.P6349608236571593694

`lt[1, A085384(n+1)²]+1`
-/

namespace A133466.P6349608236571593694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A133466.P6349608236571593694

namespace A133466

/-- `lt[1, A085384(n+1)²]+1` -/
def P6349608236571593694.Spec : Prop :=
  ∀ n, (P6349608236571593694.a n : ℤ) = A133466 (n + 1)

end A133466

/-! ## A133466.P5809670944278512930

`record[4*∏{p}[n, #]]`
-/

namespace A133466.P5809670944278512930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133466.P5809670944278512930

namespace A133466

/-- `record[4*∏{p}[n, #]]` -/
def P5809670944278512930.Spec : Prop :=
  ∀ n, (P5809670944278512930.a n : ℤ) = A133466 (n + 1)

end A133466

/-! ## A133466.P9342473689278373358

`4*eq[n, ∏{p}[n, #]]`
-/

namespace A133466.P9342473689278373358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133466.P9342473689278373358

namespace A133466

/-- `4*eq[n, ∏{p}[n, #]]` -/
def P9342473689278373358.Spec : Prop :=
  ∀ n, (P9342473689278373358.a n : ℤ) = A133466 (n + 1)

end A133466

/-! ## A133466.P3750628713645588888

`record[4/∏{p}[n, 1/#]]`
-/

namespace A133466.P3750628713645588888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (∏ p ∈ Nat.primeFactors (f2 n), 1 / (p : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133466.P3750628713645588888

namespace A133466

/-- `record[4/∏{p}[n, 1/#]]` -/
def P3750628713645588888.Spec : Prop :=
  ∀ n, P3750628713645588888.a n = (A133466 (n + 1) : ℚ)

end A133466

/-! ## A133466.P3654482027973667474

`record[(n+1)*(5-∏{e}[n+1, #])]`
-/

namespace A133466.P3654482027973667474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (5 - ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133466.P3654482027973667474

namespace A133466

/-- `record[(n+1)*(5-∏{e}[n+1, #])]` -/
def P3654482027973667474.Spec : Prop :=
  ∀ n, P3654482027973667474.a n = A133466 (n + 1)

end A133466

/-! ## A133466.P3765635143077266705

`record[4*(n+1)/∏{e}[n+1, #]]`
-/

namespace A133466.P3765635143077266705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133466.P3765635143077266705

namespace A133466

/-- `record[4*(n+1)/∏{e}[n+1, #]]` -/
def P3765635143077266705.Spec : Prop :=
  ∀ n, P3765635143077266705.a n = (A133466 (n + 1) : ℚ)

end A133466

/-! ## A133466.P8830289045903796531

`record[A056135(n+1)]`
-/

namespace A133466.P8830289045903796531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133466.P8830289045903796531

namespace A133466

/-- `record[A056135(n+1)]` -/
def P8830289045903796531.Spec : Prop :=
  ∀ n, P8830289045903796531.a n = A133466 (n + 1)

end A133466

/-!
# A133467: a(n) = a(n-1) + 6*a(n-2) for n >= 2, a(0)=1, a(1)=2.

The programs for A133467, the canonical program `A133467.P13136342676250943684` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133467 has offset 0).

The definition of A133467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+6*a(n-2)` (program `A133467.P13136342676250943684`, by `A133467.P13136342676250943684.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133467.P13136342676250943684

`a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133467

/-- `a(n-1)+6*a(n-2)` -/
def P13136342676250943684.Spec : Prop :=
  ∀ n, (P13136342676250943684.a n : ℤ) = A133467 n

theorem P13136342676250943684.correct : P13136342676250943684.Spec := by
  intro n
  simp only [A133467]

end A133467

/-! ## A133467.P7683183012556149842

`(4*3^n+(-2)^n)/5`
-/

namespace A133467.P7683183012556149842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 3 ^ n : ℤ) + (-2) ^ n : ℚ) / 5

end

end A133467.P7683183012556149842

namespace A133467

/-- `(4*3^n+(-2)^n)/5` -/
def P7683183012556149842.Spec : Prop :=
  ∀ n, P7683183012556149842.a n = (A133467 n : ℚ)

end A133467

/-! ## A133467.P16793504932129301094

`3*a(n-1)-(-2)^(n-1)` with `a(0)=1`
-/

namespace A133467.P16793504932129301094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A133467.P16793504932129301094

namespace A133467

/-- `3*a(n-1)-(-2)^(n-1)` -/
def P16793504932129301094.Spec : Prop :=
  ∀ n, P16793504932129301094.a n = (A133467 n : ℚ)

end A133467

/-! ## A133467.P15479802432137136687

`abs(A091004(n+1))`
-/

namespace A133467.P15479802432137136687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091004 (n + 1)|

end

end A133467.P15479802432137136687

namespace A133467

/-- `abs(A091004(n+1))` -/
def P15479802432137136687.Spec : Prop :=
  ∀ n, P15479802432137136687.a n = A133467 n

end A133467

/-! ## A133467.P5296587379124409445

`3^n-A015441(n)`
-/

namespace A133467.P5296587379124409445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A015441 n

end

end A133467.P5296587379124409445

namespace A133467

/-- `3^n-A015441(n)` -/
def P5296587379124409445.Spec : Prop :=
  ∀ n, P5296587379124409445.a n = A133467 n

end A133467

/-! ## A133467.P17564889770133691720

`abs(Δ[A091005(n+1)])`
-/

namespace A133467.P17564889770133691720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A133467.P17564889770133691720

namespace A133467

/-- `abs(Δ[A091005(n+1)])` -/
def P17564889770133691720.Spec : Prop :=
  ∀ n, P17564889770133691720.a n = A133467 n

end A133467

/-! ## A133467.P5378641550933809495

`2*(A025192(n)-a(n-1))` with `a(0)=1`
-/

namespace A133467.P5378641550933809495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A025192 n - a (n - 1))

end

end A133467.P5378641550933809495

namespace A133467

/-- `2*(A025192(n)-a(n-1))` -/
def P5378641550933809495.Spec : Prop :=
  ∀ n, P5378641550933809495.a n = A133467 n

end A133467

/-! ## A133467.P4299155655727614527

`A003946(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A133467.P4299155655727614527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003946 n - (a (n - 1) + a (n - 1))

end

end A133467.P4299155655727614527

namespace A133467

/-- `A003946(n)-(a(n-1)+a(n-1))` -/
def P4299155655727614527.Spec : Prop :=
  ∀ n, P4299155655727614527.a n = A133467 n

end A133467

/-! ## A133467.P14831065076656633926

`A087451(n)-A232015(n)`
-/

namespace A133467.P14831065076656633926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087451 n - A232015 n

end

end A133467.P14831065076656633926

namespace A133467

/-- `A087451(n)-A232015(n)` -/
def P14831065076656633926.Spec : Prop :=
  ∀ n, P14831065076656633926.a n = A133467 n

end A133467

/-! ## A133467.P4908201414593462280

`A091003(n)*A280560(n)`
-/

namespace A133467.P4908201414593462280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091003 n * A280560 n

end

end A133467.P4908201414593462280

namespace A133467

/-- `A091003(n)*A280560(n)` -/
def P4908201414593462280.Spec : Prop :=
  ∀ n, P4908201414593462280.a n = A133467 n

end A133467

/-! ## A133467.P17965282784103621727

`A015441(n)+∑[A102901(n)]`
-/

namespace A133467.P17965282784103621727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133467.P17965282784103621727

namespace A133467

/-- `A015441(n)+∑[A102901(n)]` -/
def P17965282784103621727.Spec : Prop :=
  ∀ n, P17965282784103621727.a n = A133467 n

end A133467

/-! ## A133467.P5638146164949872554

`A000244(n)-Δ[A091002(n)]`
-/

namespace A133467.P5638146164949872554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - (f1 (n + 1) - f1 n)

end

end A133467.P5638146164949872554

namespace A133467

/-- `A000244(n)-Δ[A091002(n)]` -/
def P5638146164949872554.Spec : Prop :=
  ∀ n, P5638146164949872554.a n = A133467 n

end A133467

/-! ## A133467.P5929128494653104569

`A091002(n+2)-A091002(n)`
-/

namespace A133467.P5929128494653104569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 (n + 2) - A091002 n

end

end A133467.P5929128494653104569

namespace A133467

/-- `A091002(n+2)-A091002(n)` -/
def P5929128494653104569.Spec : Prop :=
  ∀ n, P5929128494653104569.a n = A133467 n

end A133467

/-! ## A133467.P12621283965931660512

`abs((2-A000007(n))*A091003(n))`
-/

namespace A133467.P12621283965931660512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - A000007 n) * A091003 n|

end

end A133467.P12621283965931660512

namespace A133467

/-- `abs((2-A000007(n))*A091003(n))` -/
def P12621283965931660512.Spec : Prop :=
  ∀ n, P12621283965931660512.a n = A133467 n

end A133467

/-! ## A133467.P1757037084590040659

`A003946(n)-abs(2*A091004(n))`
-/

namespace A133467.P1757037084590040659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - |2 * A091004 n|

end

end A133467.P1757037084590040659

namespace A133467

/-- `A003946(n)-abs(2*A091004(n))` -/
def P1757037084590040659.Spec : Prop :=
  ∀ n, P1757037084590040659.a n = A133467 n

end A133467

/-! ## A133467.P12744780665120346236

`Δ[A091002(n+1)+A091002(n)]`
-/

namespace A133467.P12744780665120346236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 (n + 1) + A091002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133467.P12744780665120346236

namespace A133467

/-- `Δ[A091002(n+1)+A091002(n)]` -/
def P12744780665120346236.Spec : Prop :=
  ∀ n, P12744780665120346236.a n = A133467 n

end A133467

/-! ## A133467.P8985770626825173659

`A094555(n+1)+A091002(n+1)`
-/

namespace A133467.P8985770626825173659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094555 (n + 1) + A091002 (n + 1)

end

end A133467.P8985770626825173659

namespace A133467

/-- `A094555(n+1)+A091002(n+1)` -/
def P8985770626825173659.Spec : Prop :=
  ∀ n, P8985770626825173659.a n = A133467 n

end A133467

/-! ## A133467.P637509899254718485

`A091004(n+1)*A165326(n+1)`
-/

namespace A133467.P637509899254718485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091004 (n + 1) * A165326 (n + 1)

end

end A133467.P637509899254718485

namespace A133467

/-- `A091004(n+1)*A165326(n+1)` -/
def P637509899254718485.Spec : Prop :=
  ∀ n, P637509899254718485.a n = A133467 n

end A133467

/-! ## A133467.P1878107795052175250

`A000244(n)-A091001(n)-A091002(n)`
-/

namespace A133467.P1878107795052175250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A091001 n - A091002 n

end

end A133467.P1878107795052175250

namespace A133467

/-- `A000244(n)-A091001(n)-A091002(n)` -/
def P1878107795052175250.Spec : Prop :=
  ∀ n, P1878107795052175250.a n = A133467 n

end A133467

/-!
# A133468: A080814 complemented, then interpreted as binary and then re-expressed in decimal form (e.g., "1221" = "0110"). Alternately, view as A080814 with "1" mapped to "1" and "2" mapped to "0".

The programs for A133468, there is no canonical definition to state claims against.
-/

/-! ## A133468.P9535071813592136422

`A162647(n)-1`
-/

namespace A133468.P9535071813592136422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162647 n - 1

end

end A133468.P9535071813592136422

/-! ## A133468.P13530293041551317404

`A019299(2^n-1)`
-/

namespace A133468.P13530293041551317404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019299 (2 ^ n - 1)

end

end A133468.P13530293041551317404

/-! ## A133468.P9985755552626621545

`A019299(2^n)/2`
-/

namespace A133468.P9985755552626621545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019299 (2 ^ n) : ℚ) / 2

end

end A133468.P9985755552626621545

/-! ## A133468.P9627539103335402095

`A001146(n)-A162634(n)`
-/

namespace A133468.P9627539103335402095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001146 n - A162634 n

end

end A133468.P9627539103335402095

/-!
# A133469: a(n) = a(n-1) + 7*a(n-2) for n >= 2, a(0)=1, a(1)=2.

The programs for A133469, the canonical program `A133469.P12407679477766019823` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133469 has offset 0).

The definition of A133469 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+7*a(n-2)` (program `A133469.P12407679477766019823`, by `A133469.P12407679477766019823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133469.P12407679477766019823

`a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133469

/-- `a(n-1)+7*a(n-2)` -/
def P12407679477766019823.Spec : Prop :=
  ∀ n, (P12407679477766019823.a n : ℤ) = A133469 n

theorem P12407679477766019823.correct : P12407679477766019823.Spec := by
  intro n
  simp only [A133469]

end A133469

/-! ## A133469.P4858716188952443575

`a(n-1)+lcm(7, a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A133469.P4858716188952443575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Nat.lcm 7 (a (n - 2))

end

end A133469.P4858716188952443575

namespace A133469

/-- `a(n-1)+lcm(7, a(n-2))` -/
def P4858716188952443575.Spec : Prop :=
  ∀ n, (P4858716188952443575.a n : ℤ) = A133469 n

end A133469

/-! ## A133469.P9107319545338806715

`a(n-1)-7*floor(-a(n-2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A133469.P9107319545338806715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - 7 * (-a (n - 2))

end

end A133469.P9107319545338806715

namespace A133469

/-- `a(n-1)-7*floor(-a(n-2))` -/
def P9107319545338806715.Spec : Prop :=
  ∀ n, P9107319545338806715.a n = A133469 n

end A133469

/-! ## A133469.P1621805276462922500

`a(n-1)-7*round(-a(n-2))` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A133469.P1621805276462922500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - 7 * (-a (n - 2))

end

end A133469.P1621805276462922500

namespace A133469

/-- `a(n-1)-7*round(-a(n-2))` -/
def P1621805276462922500.Spec : Prop :=
  ∀ n, P1621805276462922500.a n = A133469 n

end A133469

/-! ## A133469.P14301794952540397672

`8*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A133469.P14301794952540397672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  8 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A133469.P14301794952540397672

namespace A133469

/-- `8*a(n-2)-(a(n-2)-a(n-1))` -/
def P14301794952540397672.Spec : Prop :=
  ∀ n, P14301794952540397672.a n = A133469 n

end A133469

/-! ## A133469.P11975080458926297683

`A015442(n+1)+A015442(n)`
-/

namespace A133469.P11975080458926297683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015442 (n + 1) + A015442 n

end

end A133469.P11975080458926297683

namespace A133469

/-- `A015442(n+1)+A015442(n)` -/
def P11975080458926297683.Spec : Prop :=
  ∀ n, P11975080458926297683.a n = A133469 n

end A133469

/-!
# A133470: Numbers k > 1 for which floor(b(k)) = floor(b(k-1)), where b(m) = Sum_{j=1..m} (j/(j+2)).

The programs for A133470, there is no canonical definition to state claims against.
-/

/-! ## A133470.P18354933983467171864

`A226161(n+4)-2`
-/

namespace A133470.P18354933983467171864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226161 (n + 4) - 2

end

end A133470.P18354933983467171864

/-! ## A133470.P17530683334906483310

`record[A226161(n+1)+A113679(n)]`
-/

namespace A133470.P17530683334906483310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226161 (n + 1) + A113679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133470.P17530683334906483310

/-! ## A133470.P12091014295488176296

`A289207(A226161(n+4))`
-/

namespace A133470.P12091014295488176296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A226161 (n + 4)).toNat

end

end A133470.P12091014295488176296

/-! ## A133470.P6844184695476708070

`lt[A227630(n+1), log2(A167338(n+1))]`
-/

namespace A133470.P6844184695476708070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227630 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A167338 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A133470.P6844184695476708070

/-! ## A133470.P3266406369147788590

`eq[A077049(n+1), A198442(A227629(n+1))]`
-/

namespace A133470.P3266406369147788590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (A227629 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133470.P3266406369147788590

/-!
# A133471: a(n) = (n^2)*a(n-1) + a(n-2).

The programs for A133471, the canonical program `A133471.P646565357287925096` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133471 has offset 0).

The definition of A133471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*a(n-1)+a(n-2)` (program `A133471.P646565357287925096`, by `A133471.P646565357287925096.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133471.P646565357287925096

`n²*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133471

/-- `n²*a(n-1)+a(n-2)` -/
def P646565357287925096.Spec : Prop :=
  ∀ n, (P646565357287925096.a n : ℤ) = A133471 n

theorem P646565357287925096.correct : P646565357287925096.Spec := by
  intro n
  simp only [A133471]

end A133471

/-! ## A133471.P14504007569235425856

`a(n-2)+n*n*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A133471.P14504007569235425856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + n * (n * a (n - 1))

end

end A133471.P14504007569235425856

namespace A133471

/-- `a(n-2)+n*n*a(n-1)` -/
def P14504007569235425856.Spec : Prop :=
  ∀ n, (P14504007569235425856.a n : ℤ) = A133471 n

end A133471

/-! ## A133471.P4461609250966890529

`a(n-2)+a(n-1)/n^(-2)` with `a(0)=0, a(1)=1`
-/

namespace A133471.P4461609250966890529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) / (n : ℚ) ^ (-2 : ℤ)

end

end A133471.P4461609250966890529

namespace A133471

/-- `a(n-2)+a(n-1)/n^(-2)` -/
def P4461609250966890529.Spec : Prop :=
  ∀ n, P4461609250966890529.a n = (A133471 n : ℚ)

end A133471

/-! ## A133471.P3585325786527573955

`A036245(A028310(n))%A036245(n+1)`
-/

namespace A133471.P3585325786527573955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036245 (A028310 n).toNat) (A036245 (n + 1))

end

end A133471.P3585325786527573955

namespace A133471

/-- `A036245(A028310(n))%A036245(n+1)` -/
def P3585325786527573955.Spec : Prop :=
  ∀ n, P3585325786527573955.a n = A133471 n

end A133471

/-! ## A133471.P4658378617435903856

`A036245(n+2)%A036245(n+1)`
-/

namespace A133471.P4658378617435903856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036245 (n + 2)) (A036245 (n + 1))

end

end A133471.P4658378617435903856

namespace A133471

/-- `A036245(n+2)%A036245(n+1)` -/
def P4658378617435903856.Spec : Prop :=
  ∀ n, P4658378617435903856.a n = A133471 n

end A133471

/-!
# A133472: a(n) = 10^n + 5.

The programs for A133472, the canonical program `A133472.P12575081462914944271` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133472 has offset 0).

The definition of A133472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n+5` (program `A133472.P12575081462914944271`, by `A133472.P12575081462914944271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133472.P12575081462914944271

`10^n+5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133472

/-- `10^n+5` -/
def P12575081462914944271.Spec : Prop :=
  ∀ n, (P12575081462914944271.a n : ℤ) = A133472 n

theorem P12575081462914944271.correct : P12575081462914944271.Spec := by
  intro n
  simp only [A133472]

end A133472

/-!
# A133473: 2 followed by numbers with n-1 3's before 5.

The programs for A133473, the canonical program `A133473.P4710182806496016135` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133473 has offset 0).

The definition of A133473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133473.P13023514725485064700

`1/3*(5+10^n)`
-/

namespace A133473.P13023514725485064700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (5 + 10 ^ n : ℚ)

end

end A133473.P13023514725485064700

namespace A133473

/-- `1/3*(5+10^n)` -/
def P13023514725485064700.Spec : Prop :=
  ∀ n, P13023514725485064700.a n = (A133473 n : ℚ)

end A133473

/-! ## A133473.P4710182806496016135

`10*a(n-1)-15` with `a(0)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133473

/-- `10*a(n-1)-15` -/
def P4710182806496016135.Spec : Prop :=
  ∀ n, P4710182806496016135.a n = A133473 n

theorem P4710182806496016135.correct : P4710182806496016135.Spec := by
  intro n
  simp only [A133473]

end A133473

/-! ## A133473.P16990332015332948221

`A133472(n)/3`
-/

namespace A133473.P16990332015332948221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133472 n : ℚ) / 3

end

end A133473.P16990332015332948221

namespace A133473

/-- `A133472(n)/3` -/
def P16990332015332948221.Spec : Prop :=
  ∀ n, P16990332015332948221.a n = (A133473 n : ℚ)

end A133473

/-! ## A133473.P15003577527045595501

`abs(xor(ceil(10^n/3), -1))`
-/

namespace A133473.P15003577527045595501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ⌈(10 ^ n : ℚ) / 3⌉ (-1)|

end

end A133473.P15003577527045595501

namespace A133473

/-- `abs(xor(ceil(10^n/3), -1))` -/
def P15003577527045595501.Spec : Prop :=
  ∀ n, P15003577527045595501.a n = A133473 n

end A133473

/-! ## A133473.P753801477994438601

`-xor(ceil(10^n/3), -1)`
-/

namespace A133473.P753801477994438601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ⌈(10 ^ n : ℚ) / 3⌉ (-1)

end

end A133473.P753801477994438601

namespace A133473

/-- `-xor(ceil(10^n/3), -1)` -/
def P753801477994438601.Spec : Prop :=
  ∀ n, P753801477994438601.a n = A133473 n

end A133473

/-! ## A133473.P14535702010304666445

`lcm(5, lcm(2, a(n-1))-3)` with `a(0)=2`
-/

namespace A133473.P14535702010304666445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm 5 ((Nat.lcm 2 (a (n - 1)) : ℤ) - 3)

end

end A133473.P14535702010304666445

namespace A133473

/-- `lcm(5, lcm(2, a(n-1))-3)` -/
def P14535702010304666445.Spec : Prop :=
  ∀ n, (P14535702010304666445.a n : ℤ) = A133473 n

end A133473

/-! ## A133473.P18265289146911395021

`∑[lcm(3, floor(10^(n-1)))]+2`
-/

namespace A133473.P18265289146911395021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A133473.P18265289146911395021

namespace A133473

/-- `∑[lcm(3, floor(10^(n-1)))]+2` -/
def P18265289146911395021.Spec : Prop :=
  ∀ n, (P18265289146911395021.a n : ℤ) = A133473 n

end A133473

/-! ## A133473.P3446205444905439431

`1+A093137(n)`
-/

namespace A133473.P3446205444905439431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A093137 n

end

end A133473.P3446205444905439431

namespace A133473

/-- `1+A093137(n)` -/
def P3446205444905439431.Spec : Prop :=
  ∀ n, P3446205444905439431.a n = A133473 n

end A133473

/-! ## A133473.P16570834525862145205

`A002277(n)+2`
-/

namespace A133473.P16570834525862145205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 n + 2

end

end A133473.P16570834525862145205

namespace A133473

/-- `A002277(n)+2` -/
def P16570834525862145205.Spec : Prop :=
  ∀ n, P16570834525862145205.a n = A133473 n

end A133473

/-! ## A133473.P10524864185684113118

`A323639(n)+3`
-/

namespace A133473.P10524864185684113118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323639 n + 3

end

end A133473.P10524864185684113118

namespace A133473

/-- `A323639(n)+3` -/
def P10524864185684113118.Spec : Prop :=
  ∀ n, P10524864185684113118.a n = A133473 n

end A133473

/-! ## A133473.P17932801400952450240

`∑[A093138(n)]+1`
-/

namespace A133473.P17932801400952450240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A133473.P17932801400952450240

namespace A133473

/-- `∑[A093138(n)]+1` -/
def P17932801400952450240.Spec : Prop :=
  ∀ n, P17932801400952450240.a n = A133473 n

end A133473

/-! ## A133473.P6029322914620300074

`Δ[A133462(n)]+2`
-/

namespace A133473.P6029322914620300074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A133473.P6029322914620300074

namespace A133473

/-- `Δ[A133462(n)]+2` -/
def P6029322914620300074.Spec : Prop :=
  ∀ n, P6029322914620300074.a n = A133473 n

end A133473

/-! ## A133473.P5871056277997517766

`3*A002275(n)+2`
-/

namespace A133473.P5871056277997517766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002275 n + 2

end

end A133473.P5871056277997517766

namespace A133473

/-- `3*A002275(n)+2` -/
def P5871056277997517766.Spec : Prop :=
  ∀ n, P5871056277997517766.a n = A133473 n

end A133473

/-! ## A133473.P406931671579251216

`A002280(n)/2+2`
-/

namespace A133473.P406931671579251216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002280 n : ℚ) / 2 + 2

end

end A133473.P406931671579251216

namespace A133473

/-- `A002280(n)/2+2` -/
def P406931671579251216.Spec : Prop :=
  ∀ n, P406931671579251216.a n = (A133473 n : ℚ)

end A133473

/-! ## A133473.P16722052717163921522

`3*A047855(n)-1`
-/

namespace A133473.P16722052717163921522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047855 n - 1

end

end A133473.P16722052717163921522

namespace A133473

/-- `3*A047855(n)-1` -/
def P16722052717163921522.Spec : Prop :=
  ∀ n, P16722052717163921522.a n = A133473 n

end A133473

/-! ## A133473.P7245969971700580291

`A133201(3*n)+2`
-/

namespace A133473.P7245969971700580291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133201 (3 * n) + 2

end

end A133473.P7245969971700580291

namespace A133473

/-- `A133201(3*n)+2` -/
def P7245969971700580291.Spec : Prop :=
  ∀ n, P7245969971700580291.a n = A133473 n

end A133473

/-! ## A133473.P10752886418636311244

`A002283(n)/3+2`
-/

namespace A133473.P10752886418636311244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002283 n : ℚ) / 3 + 2

end

end A133473.P10752886418636311244

namespace A133473

/-- `A002283(n)/3+2` -/
def P10752886418636311244.Spec : Prop :=
  ∀ n, P10752886418636311244.a n = (A133473 n : ℚ)

end A133473

/-! ## A133473.P5005337122139441158

`(A062397(n)+4)/3`
-/

namespace A133473.P5005337122139441158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062397 n + 4 : ℚ) / 3

end

end A133473.P5005337122139441158

namespace A133473

/-- `(A062397(n)+4)/3` -/
def P5005337122139441158.Spec : Prop :=
  ∀ n, P5005337122139441158.a n = (A133473 n : ℚ)

end A133473

/-! ## A133473.P13694354534316119454

`3*A098406(n)-4`
-/

namespace A133473.P13694354534316119454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A098406 n - 4

end

end A133473.P13694354534316119454

namespace A133473

/-- `3*A098406(n)-4` -/
def P13694354534316119454.Spec : Prop :=
  ∀ n, P13694354534316119454.a n = A133473 n

end A133473

/-!
# A133474: Inverse binomial transform of (A113405 preceded by 0).

The programs for A133474, the canonical program `A133474.P17523575386750105003` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133474 has offset 0).

The definition of A133474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133474.P17523575386750105003

`6*a(n-1)-12*a(n-2)+9*a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133474

/-- `6*a(n-1)-12*a(n-2)+9*a(n-3)` -/
def P17523575386750105003.Spec : Prop :=
  ∀ n, P17523575386750105003.a n = A133474 n

theorem P17523575386750105003.correct : P17523575386750105003.Spec := by
  intro n
  simp only [A133474]

end A133474

/-! ## A133474.P9375158713876574101

`A135254(n)+Δ[A057681(n)]`
-/

namespace A133474.P9375158713876574101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135254 n + (f1 (n + 1) - f1 n)

end

end A133474.P9375158713876574101

namespace A133474

/-- `A135254(n)+Δ[A057681(n)]` -/
def P9375158713876574101.Spec : Prop :=
  ∀ n, P9375158713876574101.a n = A133474 n

end A133474

/-! ## A133474.P9772653922246798339

`A135254(n)+Δ[Δ[A057682(n)]]`
-/

namespace A133474.P9772653922246798339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135254 n + (f1 (n + 1) - f1 n)

end

end A133474.P9772653922246798339

namespace A133474

/-- `A135254(n)+Δ[Δ[A057682(n)]]` -/
def P9772653922246798339.Spec : Prop :=
  ∀ n, P9772653922246798339.a n = A133474 n

end A133474

/-! ## A133474.P6319197622712630989

`A135254(n)+Δ[A103312(n+1)]`
-/

namespace A133474.P6319197622712630989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135254 n + (f1 (n + 1) - f1 n)

end

end A133474.P6319197622712630989

namespace A133474

/-- `A135254(n)+Δ[A103312(n+1)]` -/
def P6319197622712630989.Spec : Prop :=
  ∀ n, P6319197622712630989.a n = A133474 n

end A133474

/-! ## A133474.P16193959638205414298

`A135254(n)+A290993(n)-A227430(n)`
-/

namespace A133474.P16193959638205414298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135254 n + (A290993 n - A227430 n)

end

end A133474.P16193959638205414298

namespace A133474

/-- `A135254(n)+A290993(n)-A227430(n)` -/
def P16193959638205414298.Spec : Prop :=
  ∀ n, P16193959638205414298.a n = A133474 n

end A133474

/-! ## A133474.P16651768861385350611

`Δ[A124302(n)-A135254(n)]`
-/

namespace A133474.P16651768861385350611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n - A135254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133474.P16651768861385350611

namespace A133474

/-- `Δ[A124302(n)-A135254(n)]` -/
def P16651768861385350611.Spec : Prop :=
  ∀ n, P16651768861385350611.a n = A133474 n

end A133474

/-!
# A133476: a(n) = Sum_{k>=0} binomial(n,5*k+1).

The programs for A133476, there is no canonical definition to state claims against.
-/

/-! ## A133476.P979388375953113310

`A139748(n)+A100334(n)`
-/

namespace A133476.P979388375953113310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n + A100334 n

end

end A133476.P979388375953113310

/-! ## A133476.P4554255987463926096

`A139714(n)+A103311(n)`
-/

namespace A133476.P4554255987463926096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n + A103311 n

end

end A133476.P4554255987463926096

/-! ## A133476.P5566316477899680984

`A139714(n)+Δ[Δ[A138112(n)]]`
-/

namespace A133476.P5566316477899680984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138112 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n + (f1 (n + 1) - f1 n)

end

end A133476.P5566316477899680984

/-! ## A133476.P3290361109685608892

`Δ[A139714(n)]`
-/

namespace A133476.P3290361109685608892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133476.P3290361109685608892

/-! ## A133476.P14892731305023727783

`A103311(n)+Δ[A139748(n)]`
-/

namespace A133476.P14892731305023727783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103311 n + (f1 (n + 1) - f1 n)

end

end A133476.P14892731305023727783

/-! ## A133476.P14979014955414769010

`∑[A139398(n)]-A139398(n)`
-/

namespace A133476.P14979014955414769010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139398 n

end

end A133476.P14979014955414769010

/-! ## A133476.P11450842908587950312

`A139714(n+1)-A139714(n)`
-/

namespace A133476.P11450842908587950312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 (n + 1) - A139714 n

end

end A133476.P11450842908587950312

/-! ## A133476.P5811261038947411195

`Δ[A139761(n)-Δ[A105371(n)]]`
-/

namespace A133476.P5811261038947411195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105371 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133476.P5811261038947411195

/-! ## A133476.P14683205731333034079

`A139761(n+1)+A138003(n)-A139398(n)`
-/

namespace A133476.P14683205731333034079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 (n + 1) + (A138003 n - A139398 n)

end

end A133476.P14683205731333034079

/-! ## A133476.P17410470019041363453

`Δ[Δ[A139748(n)]]`
-/

namespace A133476.P17410470019041363453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133476.P17410470019041363453

/-! ## A133476.P2556017439202457089

`A000079(n)-(A139748(n+1)+A139398(n+1))`
-/

namespace A133476.P2556017439202457089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A139748 (n + 1) + A139398 (n + 1))

end

end A133476.P2556017439202457089

/-!
# A133477: Sum of cubefree divisors of n excluding 1.

The programs for A133477, the canonical program `A133477.P12030713238640017958` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133477 has offset 1).

The definition of A133477 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073185, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133477.P12030713238640017958

`A073185(n+1)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133477

/-- `A073185(n+1)-1` -/
def P12030713238640017958.Spec : Prop :=
  ∀ n, P12030713238640017958.a n = A133477 (n + 1)

theorem P12030713238640017958.correct : P12030713238640017958.Spec := by
  intro n
  simp only [A133477, Nat.add_sub_cancel]

end A133477

/-! ## A133477.P15412924027877493398

`∑{d}[A007948(n+1), #]-1`
-/

namespace A133477.P15412924027877493398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A133477.P15412924027877493398

namespace A133477

/-- `∑{d}[A007948(n+1), #]-1` -/
def P15412924027877493398.Spec : Prop :=
  ∀ n, P15412924027877493398.a n = A133477 (n + 1)

end A133477

/-! ## A133477.P2795722437257394101

`A039653(A007948(n+1))`
-/

namespace A133477.P2795722437257394101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A007948 (n + 1)).toNat

end

end A133477.P2795722437257394101

namespace A133477

/-- `A039653(A007948(n+1))` -/
def P2795722437257394101.Spec : Prop :=
  ∀ n, P2795722437257394101.a n = A133477 (n + 1)

end A133477

/-! ## A133477.P3178308287560638733

`A353900(A058035(n+1))-1`
-/

namespace A133477.P3178308287560638733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353900 (A058035 (n + 1)).toNat - 1

end

end A133477.P3178308287560638733

namespace A133477

/-- `A353900(A058035(n+1))-1` -/
def P3178308287560638733.Spec : Prop :=
  ∀ n, P3178308287560638733.a n = A133477 (n + 1)

end A133477

/-! ## A133477.P5716491159603962943

`A000203(A097377(n+1)-1)-1`
-/

namespace A133477.P5716491159603962943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A097377 (n + 1) - 1).toNat - 1

end

end A133477.P5716491159603962943

namespace A133477

/-- `A000203(A097377(n+1)-1)-1` -/
def P5716491159603962943.Spec : Prop :=
  ∀ n, P5716491159603962943.a n = A133477 (n + 1)

end A133477

/-! ## A133477.P15127461964239669903

`A254981(n+1)/A062378(n+1)-1`
-/

namespace A133477.P15127461964239669903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254981 (n + 1) : ℚ) / (A062378 (n + 1) : ℚ) - 1

end

end A133477.P15127461964239669903

namespace A133477

/-- `A254981(n+1)/A062378(n+1)-1` -/
def P15127461964239669903.Spec : Prop :=
  ∀ n, P15127461964239669903.a n = (A133477 (n + 1) : ℚ)

end A133477

/-! ## A133477.P11557801963499851204

`A182492(∏{p}[n, A010051(#)])+A073185(n+1)`
-/

namespace A133477.P11557801963499851204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (∏ p ∈ Nat.primeFactors (f1 n), A010051 p).toNat + A073185 (n + 1)

end

end A133477.P11557801963499851204

namespace A133477

/-- `A182492(∏{p}[n, A010051(#)])+A073185(n+1)` -/
def P11557801963499851204.Spec : Prop :=
  ∀ n, P11557801963499851204.a n = A133477 (n + 1)

end A133477

/-! ## A133477.P7806133686453983882

`A078615(n+1)-(A338790(A007948(n+1))+1)`
-/

namespace A133477.P7806133686453983882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1) - (A338790 (A007948 (n + 1)).toNat + 1)

end

end A133477.P7806133686453983882

namespace A133477

/-- `A078615(n+1)-(A338790(A007948(n+1))+1)` -/
def P7806133686453983882.Spec : Prop :=
  ∀ n, P7806133686453983882.a n = A133477 (n + 1)

end A133477

/-! ## A133477.P763139408697066329

`A000203(A007947(n+1)*A071773(n+1))-1`
-/

namespace A133477.P763139408697066329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1) * A071773 (n + 1)).toNat - 1

end

end A133477.P763139408697066329

namespace A133477

/-- `A000203(A007947(n+1)*A071773(n+1))-1` -/
def P763139408697066329.Spec : Prop :=
  ∀ n, P763139408697066329.a n = A133477 (n + 1)

end A133477

/-! ## A133477.P4409082652267548523

`A023443(A073185(n+1))`
-/

namespace A133477.P4409082652267548523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A073185 (n + 1)).toNat

end

end A133477.P4409082652267548523

namespace A133477

/-- `A023443(A073185(n+1))` -/
def P4409082652267548523.Spec : Prop :=
  ∀ n, P4409082652267548523.a n = A133477 (n + 1)

end A133477

/-! ## A133477.P7730978330941744966

`A069290(A007948(n+1)²)-1`
-/

namespace A133477.P7730978330941744966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A007948 (n + 1) ^ 2).toNat - 1

end

end A133477.P7730978330941744966

namespace A133477

/-- `A069290(A007948(n+1)²)-1` -/
def P7730978330941744966.Spec : Prop :=
  ∀ n, P7730978330941744966.a n = A133477 (n + 1)

end A133477

/-!
# A133479: a(n) = a(n-1) + 8*a(n-2) for n >= 2, a(0)=1, a(1)=2.

The programs for A133479, the canonical program `A133479.P864712127990518728` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133479 has offset 0).

The definition of A133479 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+8*a(n-2)` (program `A133479.P864712127990518728`, by `A133479.P864712127990518728.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133479.P864712127990518728

`a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133479

/-- `a(n-1)+8*a(n-2)` -/
def P864712127990518728.Spec : Prop :=
  ∀ n, (P864712127990518728.a n : ℤ) = A133479 n

theorem P864712127990518728.correct : P864712127990518728.Spec := by
  intro n
  simp only [A133479]

end A133479

/-! ## A133479.P13644286768119416696

`a(n-1)-8*floor(-a(n-2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A133479.P13644286768119416696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - 8 * (-a (n - 2))

end

end A133479.P13644286768119416696

namespace A133479

/-- `a(n-1)-8*floor(-a(n-2))` -/
def P13644286768119416696.Spec : Prop :=
  ∀ n, P13644286768119416696.a n = A133479 n

end A133479

/-! ## A133479.P13045997533104621869

`a(n-1)-8*ceil(-a(n-2))` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A133479.P13045997533104621869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - 8 * (-a (n - 2))

end

end A133479.P13045997533104621869

namespace A133479

/-- `a(n-1)-8*ceil(-a(n-2))` -/
def P13045997533104621869.Spec : Prop :=
  ∀ n, P13045997533104621869.a n = A133479 n

end A133479

/-! ## A133479.P11079386500745187024

`a(n-1)-8*round(-a(n-2))` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A133479.P11079386500745187024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - 8 * (-a (n - 2))

end

end A133479.P11079386500745187024

namespace A133479

/-- `a(n-1)-8*round(-a(n-2))` -/
def P11079386500745187024.Spec : Prop :=
  ∀ n, P11079386500745187024.a n = A133479 n

end A133479

/-! ## A133479.P3116680109764283145

`a(n-1)+a(n-2)/(1/2)^3` with `a(0)=1, a(1)=2`
-/

namespace A133479.P3116680109764283145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 2) ^ 3

end

end A133479.P3116680109764283145

namespace A133479

/-- `a(n-1)+a(n-2)/(1/2)^3` -/
def P3116680109764283145.Spec : Prop :=
  ∀ n, P3116680109764283145.a n = (A133479 n : ℚ)

end A133479

/-! ## A133479.P16307568854428696197

`3*3*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A133479.P16307568854428696197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (3 * a (n - 2)) - (a (n - 2) - a (n - 1))

end

end A133479.P16307568854428696197

namespace A133479

/-- `3*3*a(n-2)-(a(n-2)-a(n-1))` -/
def P16307568854428696197.Spec : Prop :=
  ∀ n, P16307568854428696197.a n = A133479 n

end A133479

/-!
# A133480: Left 3-step factorial (n,-3)!: a(n) = (-1)^n * A008544(n).

The programs for A133480, the canonical program `A133480.P16877783716579154334` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133480 has offset 0).

The definition of A133480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133480.P16877783716579154334

`(-1)^n*A008544(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A133480

/-- `(-1)^n*A008544(n)` -/
def P16877783716579154334.Spec : Prop :=
  ∀ n, P16877783716579154334.a n = A133480 n

theorem P16877783716579154334.correct : P16877783716579154334.Spec := by
  intro n
  simp only [A133480]

end A133480

/-! ## A133480.P11557306837421633725

`∏[1-3*n]`
-/

namespace A133480.P11557306837421633725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133480.P11557306837421633725

namespace A133480

/-- `∏[1-3*n]` -/
def P11557306837421633725.Spec : Prop :=
  ∀ n, P11557306837421633725.a n = A133480 n

end A133480

/-! ## A133480.P2978562930419362782

`floor(∏[a(n-1)-3])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A133480.P2978562930419362782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133480.P2978562930419362782

namespace A133480

/-- `floor(∏[a(n-1)-3])` -/
def P2978562930419362782.Spec : Prop :=
  ∀ n, P2978562930419362782.a n = A133480 n

end A133480

/-! ## A133480.P14479530253914878360

`ceil(∏[a(n-1)-3])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A133480.P14479530253914878360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133480.P14479530253914878360

namespace A133480

/-- `ceil(∏[a(n-1)-3])` -/
def P14479530253914878360.Spec : Prop :=
  ∀ n, P14479530253914878360.a n = A133480 n

end A133480

/-! ## A133480.P15868713793365611586

`round(∏[a(n-1)-3])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A133480.P15868713793365611586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A133480.P15868713793365611586

namespace A133480

/-- `round(∏[a(n-1)-3])` -/
def P15868713793365611586.Spec : Prop :=
  ∀ n, P15868713793365611586.a n = A133480 n

end A133480

/-! ## A133480.P12562907108699605428

`(1-3*n)*a(n-1)` with `a(0)=1`
-/

namespace A133480.P12562907108699605428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (3 * n : ℤ)) * a (n - 1)

end

end A133480.P12562907108699605428

namespace A133480

/-- `(1-3*n)*a(n-1)` -/
def P12562907108699605428.Spec : Prop :=
  ∀ n, P12562907108699605428.a n = A133480 n

end A133480

/-! ## A133480.P7166032135467076220

`a(n-1)*A128214(3*n)` with `a(0)=1`
-/

namespace A133480.P7166032135467076220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A128214 (3 * n)

end

end A133480.P7166032135467076220

namespace A133480

/-- `a(n-1)*A128214(3*n)` -/
def P7166032135467076220.Spec : Prop :=
  ∀ n, P7166032135467076220.a n = A133480 n

end A133480

/-! ## A133480.P13797300516901338550

`A225470(∑[n])/A057077(2*n)`
-/

namespace A133480.P13797300516901338550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225470 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A057077 (2 * n) : ℚ)

end

end A133480.P13797300516901338550

namespace A133480

/-- `A225470(∑[n])/A057077(2*n)` -/
def P13797300516901338550.Spec : Prop :=
  ∀ n, P13797300516901338550.a n = (A133480 n : ℚ)

end A133480

/-! ## A133480.P15974967635778252569

`A225477(∑[n])/A057077(2*n)`
-/

namespace A133480.P15974967635778252569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225477 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A057077 (2 * n) : ℚ)

end

end A133480.P15974967635778252569

namespace A133480

/-- `A225477(∑[n])/A057077(2*n)` -/
def P15974967635778252569.Spec : Prop :=
  ∀ n, P15974967635778252569.a n = (A133480 n : ℚ)

end A133480

/-! ## A133480.P9331263903797085006

`record[A004747(n+1)]/A057077(2*n)`
-/

namespace A133480.P9331263903797085006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004747 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A057077 (2 * n) : ℚ)

end

end A133480.P9331263903797085006

namespace A133480

/-- `record[A004747(n+1)]/A057077(2*n)` -/
def P9331263903797085006.Spec : Prop :=
  ∀ n, P9331263903797085006.a n = (A133480 n : ℚ)

end A133480

/-!
# A133481: a(1) = 1; for n > 1, a(n) is the least k such that k^n divides k! but k^(n+1) does not divide k!.

The programs for A133481, there is no canonical definition to state claims against.
-/

/-! ## A133481.P3116733455452932386

`A005451(A011777(n+1))`
-/

namespace A133481.P3116733455452932386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A011777 (n + 1)).toNat

end

end A133481.P3116733455452932386

/-! ## A133481.P35437858023742729

`A011777(n+1)-A000007(n)`
-/

namespace A133481.P35437858023742729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011777 (n + 1) - A000007 n

end

end A133481.P35437858023742729

/-! ## A133481.P5860923766097508610

`A011777(n+1)/A054977(n)`
-/

namespace A133481.P5860923766097508610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011777 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A133481.P5860923766097508610

/-! ## A133481.P16237928481620504123

`A011777(n+1)-A063524(n+1)`
-/

namespace A133481.P16237928481620504123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011777 (n + 1) - A063524 (n + 1)

end

end A133481.P16237928481620504123

/-! ## A133481.P6736337878919828702

`A011777(n+1)/A014963(4*n+2)`
-/

namespace A133481.P6736337878919828702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011777 (n + 1) : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A133481.P6736337878919828702

/-! ## A133481.P5570493658170387184

`A011777(n+1)-A056594(record[xor(1, n+1)])`
-/

namespace A133481.P5570493658170387184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011777 (n + 1) - A056594 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A133481.P5570493658170387184

/-! ## A133481.P7106691980644902091

`A011777(n+1)-char[A181581(xor(1, n)+3)]`
-/

namespace A133481.P7106691980644902091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181581 (Nat.xor 1 n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011777 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A133481.P7106691980644902091

/-! ## A133481.P7669831757541360174

`A011777(n+1)^(A060151(n+1)-A039960(n+1))`
-/

namespace A133481.P7669831757541360174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011777 (n + 1) : ℚ) ^ (A060151 (n + 1) - A039960 (n + 1) : ℤ)

end

end A133481.P7669831757541360174

/-! ## A133481.P1247551155506972562

`A065475(A306772(n))`
-/

namespace A133481.P1247551155506972562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A306772 n).toNat

end

end A133481.P1247551155506972562

/-! ## A133481.P15164513540661740865

`A306772(n)+A057427(n)`
-/

namespace A133481.P15164513540661740865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306772 n + A057427 n

end

end A133481.P15164513540661740865

/-!
# A133482: a(p_1^e_1*p_2^e_2*.....*p_m^e_m) = (p_1^p_1)^e_1*(p_2^p^2)^e_2*.....*(p_m^p_m)^e_m where p_1^e_1*p_2^e_2*.....*p_m^e_m is the prime decomposition of n.

The programs for A133482, there is no canonical definition to state claims against.
-/

/-! ## A133482.P248208628263089638

`∏{d}[n+1, A000312(A014963(#))]`
-/

namespace A133482.P248208628263089638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000312 (A014963 d).toNat

end

end A133482.P248208628263089638

/-! ## A133482.P12849833355423261638

`∏{e}[A181821(n+1), A051674(#)]`
-/

namespace A133482.P12849833355423261638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A051674 (Nat.factorization (f1 n).natAbs p)

end

end A133482.P12849833355423261638

/-! ## A133482.P5037372961404536538

`∏{e}[A304660(n+1), A051674(#)]`
-/

namespace A133482.P5037372961404536538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A051674 (Nat.factorization (f1 n).natAbs p)

end

end A133482.P5037372961404536538

/-! ## A133482.P2589687574008866515

`∏{e}[A181821(n+1), A000312(A000040(#))]`
-/

namespace A133482.P2589687574008866515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000312 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A133482.P2589687574008866515

/-! ## A133482.P14707124424870786802

`∏{e}[A074736(n+1), A000312(#)]`
-/

namespace A133482.P14707124424870786802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000312 (Nat.factorization (f1 n).natAbs p)

end

end A133482.P14707124424870786802

/-!
# A133485: Integers k such that the polynomial x^(2k+2) + x + 1 is primitive and irreducible over GF(2).

The programs for A133485, there is no canonical definition to state claims against.
-/

/-! ## A133485.P13524849860770291532

`A344177(n+1)/6-1`
-/

namespace A133485.P13524849860770291532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344177 (n + 1) : ℚ) / 6 - 1

end

end A133485.P13524849860770291532

/-! ## A133485.P829173728949896461

`A008612(A344177(n+1)-1)`
-/

namespace A133485.P829173728949896461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A344177 (n + 1) - 1).toNat

end

end A133485.P829173728949896461

/-! ## A133485.P6363807637317927137

`A152467(A344177(n+1)-1)`
-/

namespace A133485.P6363807637317927137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A344177 (n + 1) - 1).toNat

end

end A133485.P6363807637317927137

/-! ## A133485.P11738328607567915653

`A230197(A344177(n+1)-1)`
-/

namespace A133485.P11738328607567915653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230197 (A344177 (n + 1) - 1).toNat

end

end A133485.P11738328607567915653

/-!
# A133486: a(n) = Sum_{ k = 0 to n-1} ( subtract k modulo 9 from 9, multiply this by k-th power of 10 ).

The programs for A133486, the canonical program `A133486.P252711969938693968` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133486 has offset 1).

The definition of A133486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133486.P252711969938693968

`∑[(10-dr(n+1))*10^n]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133486

/-- `∑[(10-dr(n+1))*10^n]` -/
def P252711969938693968.Spec : Prop :=
  ∀ n, P252711969938693968.a n = A133486 (n + 1)

theorem P252711969938693968.correct : P252711969938693968.Spec := by
  intro n
  simp only [A133486, Nat.add_sub_cancel]

end A133486

/-! ## A133486.P16995178966922188423

`∑[10^n*A138531(n)]`
-/

namespace A133486.P16995178966922188423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A138531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133486.P16995178966922188423

namespace A133486

/-- `∑[10^n*A138531(n)]` -/
def P16995178966922188423.Spec : Prop :=
  ∀ n, P16995178966922188423.a n = A133486 (n + 1)

end A133486

/-!
# A133487: The first term is 256; each subsequent term in the series is computed by translating the previous term to binary, then reinterpreting the binary expansion as a product of metaprimes. Metaprimes follow the form p^(2^n) where p is a prime number and n is a nonnegative integer. See the link for more detailed explanation.

The programs for A133487, there is no canonical definition to state claims against.
-/

/-! ## A133487.P12638043614551976667

`A052330(a(n-1))` with `a(0)=256`
-/

namespace A133487.P12638043614551976667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [256] fun n a =>
  A052330 (a (n - 1)).toNat

end

end A133487.P12638043614551976667

/-! ## A133487.P7610486104733231435

`A207901(A006068(a(n-1)))` with `a(0)=256`
-/

namespace A133487.P7610486104733231435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [256] fun n a =>
  A207901 (A006068 (a (n - 1)).toNat).toNat

end

end A133487.P7610486104733231435

/-! ## A133487.P2687060582472718375

`A302783(A003188(a(n-1)))` with `a(0)=256`
-/

namespace A133487.P2687060582472718375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [256] fun n a =>
  A302783 (A003188 (a (n - 1)).toNat).toNat

end

end A133487.P2687060582472718375

/-! ## A133487.P11229701114530241930

`A302781(A302845(a(n-1)))` with `a(0)=256`
-/

namespace A133487.P11229701114530241930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [256] fun n a =>
  A302781 (A302845 (a (n - 1)).toNat).toNat

end

end A133487.P11229701114530241930

/-!
# A133488: a(1) = 1. a(n) = a(n-1) + a(m), where m is the largest term of the sequence {a(k)} which is less than n.

The programs for A133488, there is no canonical definition to state claims against.
-/

/-! ## A133488.P3662657186871861812

`A358216(A026097(n))`
-/

namespace A133488.P3662657186871861812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358216 (A026097 n).toNat

end

end A133488.P3662657186871861812

/-! ## A133488.P6120022577483542577

`∑[A248218(∏[A090529(n)])]`
-/

namespace A133488.P6120022577483542577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133488.P6120022577483542577

/-! ## A133488.P4600212785595445365

`∑[∏[A000688(A305091(n+1))]]`
-/

namespace A133488.P4600212785595445365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A305091 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133488.P4600212785595445365

/-! ## A133488.P12467307306521589222

`∑[∏[A001222(A225229(n+2))]]`
-/

namespace A133488.P12467307306521589222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A225229 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133488.P12467307306521589222

/-! ## A133488.P2847539034312859366

`∪[A301682(3*n), A052928(A301776(n+2))]`
-/

namespace A133488.P2847539034312859366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301682 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A301776 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133488.P2847539034312859366

/-!
# A133489: a(1)=2. For n >= 2, a(n) = a(n-1) + 1 + (the largest prime among the first n-1 terms of the sequence {a(k)}).

The programs for A133489, there is no canonical definition to state claims against.
-/

/-! ## A133489.P12428874963948730526

`eq[floor(n/(xor(n, n+1)+1)), A101211(3*n+2)]`
-/

namespace A133489.P12428874963948730526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133489.P12428874963948730526

/-! ## A133489.P13660937609359450899

`eq[A025480(n), A177390(A178334(n))]`
-/

namespace A133489.P13660937609359450899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177390 (A178334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133489.P13660937609359450899

/-! ## A133489.P6683155810433195440

`A088564(A003261(n+1))-1`
-/

namespace A133489.P6683155810433195440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088564 (A003261 (n + 1)).toNat - 1

end

end A133489.P6683155810433195440

/-! ## A133489.P9404182426822979657

`eq[A025480(n), A103300(A059592(n))]`
-/

namespace A133489.P9404182426822979657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103300 (A059592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133489.P9404182426822979657

/-! ## A133489.P5231361640552161708

`eq[A025480(n), A287216(A240590(n+4))]`
-/

namespace A133489.P5231361640552161708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A240590 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133489.P5231361640552161708

/-!
# A133490: Smallest number at distance 2n from nearest prime (variant 3).

The programs for A133490, there is no canonical definition to state claims against.
-/

/-! ## A133490.P8849938492028855309

`A120937(A028310(n))%A120937(n²)`
-/

namespace A133490.P8849938492028855309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120937 (A028310 n).toNat) (A120937 (n ^ 2))

end

end A133490.P8849938492028855309

/-! ## A133490.P6009861725492006945

`and(A120937(n), A290550(A123781(n+1)))`
-/

namespace A133490.P6009861725492006945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A120937 n) (A290550 (A123781 (n + 1)).toNat)

end

end A133490.P6009861725492006945

/-!
# A133492: Primorial numbers raised to the power of 2^n (where n is a nonnegative integer), sorted.

The programs for A133492, there is no canonical definition to state claims against.
-/

/-! ## A133492.P12592684999802790173

`filter[A100778(n+2), A355823(#)]`
-/

namespace A133492.P12592684999802790173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100778 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A133492.P12592684999802790173

/-! ## A133492.P5914311548339993315

`record[A046523(sqrt(A340674(n+1)))]`
-/

namespace A133492.P5914311548339993315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway (Real.sqrt (A340674 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133492.P5914311548339993315

/-! ## A133492.P11643997485076921917

`∩[A100778(n+1), A243498(n+1)]`
-/

namespace A133492.P11643997485076921917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133492.P11643997485076921917

/-! ## A133492.P3698291456985087959

`∩[A002620(n+1), A100778(A320456(n+2))]`
-/

namespace A133492.P3698291456985087959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100778 (A320456 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133492.P3698291456985087959

/-!
# A133493: Base 8 version of A102363.

The programs for A133493, there is no canonical definition to state claims against.
-/

/-! ## A133493.P13490845877123834278

`A007094(A102363(n))`
-/

namespace A133493.P13490845877123834278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A102363 n).toNat

end

end A133493.P13490845877123834278

/-! ## A133493.P18072796834640143377

`A007094(record[A267112(n+1)])`
-/

namespace A133493.P18072796834640143377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133493.P18072796834640143377

/-! ## A133493.P12235341133842918666

`A007094(∑[A007318(abs(1-n))])`
-/

namespace A133493.P12235341133842918666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A133493.P12235341133842918666

/-! ## A133493.P4002935038687654262

`A007094(A308663(comp[∑[n+1]]))`
-/

namespace A133493.P4002935038687654262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A308663 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A133493.P4002935038687654262

/-! ## A133493.P129631162106150124

`A007094(record[A103380(A052938(n))])`
-/

namespace A133493.P129631162106150124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103380 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133493.P129631162106150124

/-! ## A133493.P15332062476337971724

`A007094(A140513(n)-A055248(n))`
-/

namespace A133493.P15332062476337971724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A140513 n - A055248 n).toNat

end

end A133493.P15332062476337971724

/-! ## A133493.P5792747019557434558

`A007094(∑[A007318(n)]+1-A007318(n))`
-/

namespace A133493.P5792747019557434558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A007318 n)).toNat

end

end A133493.P5792747019557434558

/-! ## A133493.P242287694440773654

`A007094(1-(A007318(n)-∑[A007318(n)]))`
-/

namespace A133493.P242287694440773654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (1 - (A007318 n - ∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A133493.P242287694440773654

/-!
# A133494: Diagonal of the array of iterated differences of A047848.

The programs for A133494, the canonical program `A133494.P1547426686957658687` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133494 has offset 0).

The definition of A133494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133494.P1547426686957658687

`ceil(3^(n-1))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133494

/-- `ceil(3^(n-1))` -/
def P1547426686957658687.Spec : Prop :=
  ∀ n, P1547426686957658687.a n = A133494 n

theorem P1547426686957658687.correct : P1547426686957658687.Spec := by
  intro n
  simp only [A133494]

end A133494

/-! ## A133494.P7122464609035786299

`3*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A133494.P7122464609035786299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 1)

end

end A133494.P7122464609035786299

namespace A133494

/-- `3*a(n-1)` -/
def P7122464609035786299.Spec : Prop :=
  ∀ n, (P7122464609035786299.a n : ℤ) = A133494 n

end A133494

/-! ## A133494.P16518226790093798610

`or(1, floor(3^(n-1)))`
-/

namespace A133494.P16518226790093798610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A133494.P16518226790093798610

namespace A133494

/-- `or(1, floor(3^(n-1)))` -/
def P16518226790093798610.Spec : Prop :=
  ∀ n, P16518226790093798610.a n = A133494 n

end A133494

/-! ## A133494.P17482029705449818994

`3^floor(abs(cos(1)-n))`
-/

namespace A133494.P17482029705449818994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊|Real.cos (1 : ℝ) - (n : ℝ)|⌋ : ℤ)

end

end A133494.P17482029705449818994

namespace A133494

/-- `3^floor(abs(cos(1)-n))` -/
def P17482029705449818994.Spec : Prop :=
  ∀ n, P17482029705449818994.a n = (A133494 n : ℚ)

end A133494

/-! ## A133494.P17015562158313137907

`3^floor(n-sin(n)²)`
-/

namespace A133494.P17015562158313137907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℝ) - Real.sin (n : ℝ) ^ 2⌋ : ℤ)

end

end A133494.P17015562158313137907

namespace A133494

/-- `3^floor(n-sin(n)²)` -/
def P17015562158313137907.Spec : Prop :=
  ∀ n, P17015562158313137907.a n = (A133494 n : ℚ)

end A133494

/-! ## A133494.P4056129328980236362

`3^floor(n²*acot(n))`
-/

namespace A133494.P4056129328980236362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n ^ 2 : ℝ) * SequenceMachineLib.acot (n : ℝ)⌋ : ℤ)

end

end A133494.P4056129328980236362

namespace A133494

/-- `3^floor(n²*acot(n))` -/
def P4056129328980236362.Spec : Prop :=
  ∀ n, P4056129328980236362.a n = (A133494 n : ℚ)

end A133494

/-! ## A133494.P7031227653603408568

`3^floor(∑[n*acot(n)])`
-/

namespace A133494.P7031227653603408568
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ : ℤ)

end

end A133494.P7031227653603408568

namespace A133494

/-- `3^floor(∑[n*acot(n)])` -/
def P7031227653603408568.Spec : Prop :=
  ∀ n, P7031227653603408568.a n = (A133494 n : ℚ)

end A133494

/-! ## A133494.P15458665997327443713

`3^round(n-atan(atan(n)))`
-/

namespace A133494.P15458665997327443713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℝ) - Real.arctan (Real.arctan (n : ℝ))) : ℤ)

end

end A133494.P15458665997327443713

namespace A133494

/-- `3^round(n-atan(atan(n)))` -/
def P15458665997327443713.Spec : Prop :=
  ∀ n, P15458665997327443713.a n = (A133494 n : ℚ)

end A133494

/-! ## A133494.P11165399241982373417

`3^((n-1)%(n+1))`
-/

namespace A133494.P11165399241982373417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

end

end A133494.P11165399241982373417

namespace A133494

/-- `3^((n-1)%(n+1))` -/
def P11165399241982373417.Spec : Prop :=
  ∀ n, P11165399241982373417.a n = (A133494 n : ℚ)

end A133494

/-! ## A133494.P6066217908994955256

`round(cos(5)+3^(n-1))`
-/

namespace A133494.P6066217908994955256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (5 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A133494.P6066217908994955256

namespace A133494

/-- `round(cos(5)+3^(n-1))` -/
def P6066217908994955256.Spec : Prop :=
  ∀ n, P6066217908994955256.a n = A133494 n

end A133494

/-! ## A133494.P16349284683600215448

`round(3^(n-1)-sin(6))`
-/

namespace A133494.P16349284683600215448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.sin (6 : ℝ))

end

end A133494.P16349284683600215448

namespace A133494

/-- `round(3^(n-1)-sin(6))` -/
def P16349284683600215448.Spec : Prop :=
  ∀ n, P16349284683600215448.a n = A133494 n

end A133494

/-! ## A133494.P7692102073954600463

`round(3^(n-1)-tan(6))`
-/

namespace A133494.P7692102073954600463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.tan (6 : ℝ))

end

end A133494.P7692102073954600463

namespace A133494

/-- `round(3^(n-1)-tan(6))` -/
def P7692102073954600463.Spec : Prop :=
  ∀ n, P7692102073954600463.a n = A133494 n

end A133494

/-! ## A133494.P8535762300259052512

`round(acot(3)+3^(n-1))`
-/

namespace A133494.P8535762300259052512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (3 : ℝ) + ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A133494.P8535762300259052512

namespace A133494

/-- `round(acot(3)+3^(n-1))` -/
def P8535762300259052512.Spec : Prop :=
  ∀ n, P8535762300259052512.a n = A133494 n

end A133494

/-! ## A133494.P7071781476338369032

`round(3^(n-1)-cot(5))`
-/

namespace A133494.P7071781476338369032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cot (5 : ℝ))

end

end A133494.P7071781476338369032

namespace A133494

/-- `round(3^(n-1)-cot(5))` -/
def P7071781476338369032.Spec : Prop :=
  ∀ n, P7071781476338369032.a n = A133494 n

end A133494

/-! ## A133494.P18290152419435849469

`3^(n-floor(atan(n+1)))`
-/

namespace A133494.P18290152419435849469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ)

end

end A133494.P18290152419435849469

namespace A133494

/-- `3^(n-floor(atan(n+1)))` -/
def P18290152419435849469.Spec : Prop :=
  ∀ n, P18290152419435849469.a n = (A133494 n : ℚ)

end A133494

/-! ## A133494.P14269085391514817905

`3^((n-1)*floor(atan(n)))`
-/

namespace A133494.P14269085391514817905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (((n : ℤ) - 1) * ⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A133494.P14269085391514817905

namespace A133494

/-- `3^((n-1)*floor(atan(n)))` -/
def P14269085391514817905.Spec : Prop :=
  ∀ n, P14269085391514817905.a n = (A133494 n : ℚ)

end A133494

/-! ## A133494.P10538008400266693001

`3^floor(acot(n)+n-1)`
-/

namespace A133494.P10538008400266693001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊SequenceMachineLib.acot (n : ℝ) + ((n : ℤ) - 1 : ℝ)⌋ : ℤ)

end

end A133494.P10538008400266693001

namespace A133494

/-- `3^floor(acot(n)+n-1)` -/
def P10538008400266693001.Spec : Prop :=
  ∀ n, P10538008400266693001.a n = (A133494 n : ℚ)

end A133494

/-! ## A133494.P14194146272514645719

`3^(n-1)^floor(atan(n))`
-/

namespace A133494.P14194146272514645719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A133494.P14194146272514645719

namespace A133494

/-- `3^(n-1)^floor(atan(n))` -/
def P14194146272514645719.Spec : Prop :=
  ∀ n, P14194146272514645719.a n = (A133494 n : ℚ)

end A133494

/-! ## A133494.P2709900001480964989

`a(n-1)²/a(n-2)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A133494.P2709900001480964989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) ^ 2 / a (n - 2)

end

end A133494.P2709900001480964989

namespace A133494

/-- `a(n-1)²/a(n-2)` -/
def P2709900001480964989.Spec : Prop :=
  ∀ n, P2709900001480964989.a n = (A133494 n : ℚ)

end A133494

/-!
# A133496: a(n) = (29*n)^2.

The programs for A133496, the canonical program `A133496.P1992544390036443459` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133496 has offset 0).

The definition of A133496 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(29*n)²` (program `A133496.P1992544390036443459`, by `A133496.P1992544390036443459.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133496.P1992544390036443459

`(29*n)²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133496

/-- `(29*n)²` -/
def P1992544390036443459.Spec : Prop :=
  ∀ n, (P1992544390036443459.a n : ℤ) = A133496 n

theorem P1992544390036443459.correct : P1992544390036443459.Spec := by
  intro n
  simp only [A133496]

end A133496

/-!
# A133497: Numbers k such that A098572(k) - A098572(k-1) = 2.

The programs for A133497, there is no canonical definition to state claims against.
-/

/-! ## A133497.P3457289674858247791

`A098573(n+1)-n%Δ[A098573(n+2)]`
-/

namespace A133497.P3457289674858247791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098573 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098573 (n + 1) - Int.tmod (n : ℤ) (f1 (n + 1) - f1 n)

end

end A133497.P3457289674858247791

/-! ## A133497.P6806665847159733047

`record[(A098573(n+1)-n)%p?[A017041(9*n)]]`
-/

namespace A133497.P6806665847159733047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 (9 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098573 (n + 1) - (n : ℤ)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133497.P6806665847159733047

/-! ## A133497.P15206942719384612776

`A028310(A098573(n+1)-n)`
-/

namespace A133497.P15206942719384612776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A098573 (n + 1) - (n : ℤ)).toNat

end

end A133497.P15206942719384612776

/-! ## A133497.P12687041262764243454

`A098573(n+1)-A051904(A000244(n))`
-/

namespace A133497.P12687041262764243454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098573 (n + 1) - A051904 (A000244 n).toNat

end

end A133497.P12687041262764243454

/-!
# A133498: a(n) = floor(sqrt(pi(2^n))).

The programs for A133498, the canonical program `A133498.P2652102372241873948` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133498 has offset 0).

The definition of A133498 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007053, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133498.P2652102372241873948

`floor(sqrt(A007053(n)))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133498

/-- `floor(sqrt(A007053(n)))` -/
def P2652102372241873948.Spec : Prop :=
  ∀ n, P2652102372241873948.a n = A133498 n

theorem P2652102372241873948.correct : P2652102372241873948.Spec := by
  intro n
  simp only [A133498]

end A133498

/-! ## A133498.P5116412691364368998

`floor(sqrt(∑[A036378(n)]-A036378(n)))`
-/

namespace A133498.P5116412691364368998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j - A036378 n)

end

end A133498.P5116412691364368998

namespace A133498

/-- `floor(sqrt(∑[A036378(n)]-A036378(n)))` -/
def P5116412691364368998.Spec : Prop :=
  ∀ n, P5116412691364368998.a n = A133498 n

end A133498

/-! ## A133498.P18015024690447927776

`floor(sqrt(A060967(2*n)))`
-/

namespace A133498.P18015024690447927776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A060967 (2 * n))

end

end A133498.P18015024690447927776

namespace A133498

/-- `floor(sqrt(A060967(2*n)))` -/
def P18015024690447927776.Spec : Prop :=
  ∀ n, P18015024690447927776.a n = A133498 n

end A133498

/-!
# A133499: a(n) = n^7 - n.

The programs for A133499, the canonical program `A133499.P2764592321123628394` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133499 has offset 0).

The definition of A133499 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7-n` (program `A133499.P2764592321123628394`, by `A133499.P2764592321123628394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133499.P2764592321123628394

`n^7-n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A133499

/-- `n^7-n` -/
def P2764592321123628394.Spec : Prop :=
  ∀ n, P2764592321123628394.a n = A133499 n

theorem P2764592321123628394.correct : P2764592321123628394.Spec := by
  intro n
  simp only [A133499]

end A133499

