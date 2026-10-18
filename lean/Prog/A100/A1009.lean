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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
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
import Seq.B004.C002
import Seq.B005.C000
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
import Seq.B011.C001
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
# A100901: Numbers n such that (6^n-1)^2-2 is prime.

The programs for A100901, there is no canonical definition to state claims against.
-/

/-! ## A100901.P5359104072548722630

`A110266(xor(A001076(n), A104934(n)))`
-/

namespace A100901.P5359104072548722630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (Int.xor (A001076 n) (A104934 n)).toNat

end

end A100901.P5359104072548722630

/-!
# A100902: Numbers n such that (6^n+1)^2-2 is prime.

The programs for A100902, there is no canonical definition to state claims against.
-/

/-! ## A100902.P11121142901258581229

`eq[A001221(A079696(n+1)), A109193(n)]`
-/

namespace A100902.P11121142901258581229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A079696 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100902.P11121142901258581229

/-! ## A100902.P18102543184684833158

`eq[A060990(A181943(n+1)), A100861(n)]`
-/

namespace A100902.P18102543184684833158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A181943 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100902.P18102543184684833158

/-! ## A100902.P393561731103588120

`eq[A060990(A181943(n+1)), A094503(n+1)]`
-/

namespace A100902.P393561731103588120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A181943 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100902.P393561731103588120

/-! ## A100902.P9682416143581141715

`eq[A152685(n), A274888(n)]`
-/

namespace A100902.P9682416143581141715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100902.P9682416143581141715

/-! ## A100902.P17814993356675650729

`eq[A186368(n), A274888(n)]`
-/

namespace A100902.P17814993356675650729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186368 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100902.P17814993356675650729

/-!
# A100906: Numbers n such that (14^n+1)^2-2 is prime.

The programs for A100906, there is no canonical definition to state claims against.
-/

/-! ## A100906.P10510596950735503405

`A066722(A035517(a(n-2)))` with `a(0)=1, a(1)=5`
-/

namespace A100906.P10510596950735503405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A066722 (A035517 (a (n - 2)).toNat).toNat

end

end A100906.P10510596950735503405

/-!
# A100907: Numbers n such that (22^n-1)^2-2 is prime.

The programs for A100907, there is no canonical definition to state claims against.
-/

/-! ## A100907.P9013419423028054981

`∑[record[A093178(A190822(n))]]`
-/

namespace A100907.P9013419423028054981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A190822 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100907.P9013419423028054981

/-!
# A100909: Concatenate number of occurrences in n of each decimal digit from 0 to 9 and drop leading zeros.

The programs for A100909, the canonical program `A100909.P16284740299550590463` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100909 has offset 0).

The definition of A100909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100909.P16284740299550590463

`∑{digits}[n, 10^(9-#)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100909

/-- `∑{digits}[n, 10^(9-#)]` -/
def P16284740299550590463.Spec : Prop :=
  ∀ n, P16284740299550590463.a n = (A100909 n : ℚ)

end A100909

/-!
# A100910: Table of number of occurrences in n of each decimal digit from 0 to 9.

The programs for A100910, there is no canonical definition to state claims against.
-/

/-! ## A100910.P16720376129735252526

`A010874(A139337(n)-A057427(n))`
-/

namespace A100910.P16720376129735252526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A139337 n - A057427 n).toNat

end

end A100910.P16720376129735252526

/-! ## A100910.P16338527673588268382

`A010879(A139337(n)-(n-A014681(n))²)`
-/

namespace A100910.P16338527673588268382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A139337 n - ((n : ℤ) - A014681 n) ^ 2).toNat

end

end A100910.P16338527673588268382

/-! ## A100910.P14467812942459321571

`A010874(A139337(n))-A000040(n+1)%2`
-/

namespace A100910.P14467812942459321571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A139337 n).toNat - Int.tmod (A000040 (n + 1)) 2

end

end A100910.P14467812942459321571

/-! ## A100910.P6979189286483635774

`A010874(A139337(n))-A001222(A006005(n+1))`
-/

namespace A100910.P6979189286483635774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A139337 n).toNat - A001222 (A006005 (n + 1)).toNat

end

end A100910.P6979189286483635774

/-! ## A100910.P14813239740038383268

`A010874(A139337(n))-A183093(A008578(n+1))`
-/

namespace A100910.P14813239740038383268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A139337 n).toNat - A183093 (A008578 (n + 1)).toNat

end

end A100910.P14813239740038383268

/-! ## A100910.P9448743820047768130

`A107846(n)^A130734(n+1)`
-/

namespace A100910.P9448743820047768130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107846 n : ℚ) ^ (A130734 (n + 1) : ℤ)

end

end A100910.P9448743820047768130

/-! ## A100910.P8933522817734604164

`A107846(n)^A184166(n+1)`
-/

namespace A100910.P8933522817734604164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107846 n : ℚ) ^ (A184166 (n + 1) : ℤ)

end

end A100910.P8933522817734604164

/-! ## A100910.P61613053118500699

`A107846(n)^(n*A215655(n+1))`
-/

namespace A100910.P61613053118500699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107846 n : ℚ) ^ ((n : ℤ) * A215655 (n + 1) : ℤ)

end

end A100910.P61613053118500699

/-! ## A100910.P16902862592019504487

`A107846(n)^A000217(A000566(n))`
-/

namespace A100910.P16902862592019504487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107846 n : ℚ) ^ (A000217 (A000566 n).toNat : ℤ)

end

end A100910.P16902862592019504487

/-! ## A100910.P14845394362220460817

`A107846(n)^A000217(A005476(n))`
-/

namespace A100910.P14845394362220460817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107846 n : ℚ) ^ (A000217 (A005476 n).toNat : ℤ)

end

end A100910.P14845394362220460817

/-! ## A100910.P15655994940674634296

`A107846(n)^A000217(A028895(n))`
-/

namespace A100910.P15655994940674634296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107846 n : ℚ) ^ (A000217 (A028895 n).toNat : ℤ)

end

end A100910.P15655994940674634296

/-! ## A100910.P13969112972900691843

`A107846(n)^A001221(A039836(n+1))`
-/

namespace A100910.P13969112972900691843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107846 n : ℚ) ^ (A001221 (A039836 (n + 1)).toNat : ℤ)

end

end A100910.P13969112972900691843

/-! ## A100910.P12810139635689422123

`A122196(char[A137564(n)]+n²)%2`
-/

namespace A100910.P12810139635689422123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122196 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n ^ 2)) 2

end

end A100910.P12810139635689422123

/-!
# A100912: Numbers k such that (3*2^k+1)^2-2 is prime.

The programs for A100912, there is no canonical definition to state claims against.
-/

/-! ## A100912.P14545248841443903718

`A047237(eq[A013598(n), A286664(n)])`
-/

namespace A100912.P14545248841443903718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A100912.P14545248841443903718

/-!
# A100915: Numbers n such that n plus n-th semiprime is semiprime.

The programs for A100915, the canonical program `A100915.P3064933231499948770` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100915 has offset 1).

The definition of A100915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100915.P2993887227712073395

`A100466(n+1)-A100916(n+1)`
-/

namespace A100915.P2993887227712073395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100466 (n + 1) - A100916 (n + 1)

end

end A100915.P2993887227712073395

namespace A100915

/-- `A100466(n+1)-A100916(n+1)` -/
def P2993887227712073395.Spec : Prop :=
  ∀ n, P2993887227712073395.a n = A100915 (n + 1)

end A100915

/-! ## A100915.P3064933231499948770

`eq[2, A001222(A100493(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A100915

/-- `eq[2, A001222(A100493(n+1))]+1` -/
def P3064933231499948770.Spec : Prop :=
  ∀ n, (P3064933231499948770.a n : ℤ) = A100915 (n + 1)

theorem P3064933231499948770.correct : P3064933231499948770.Spec := by
  intro n
  simp only [A100915, Nat.add_sub_cancel]

end A100915

/-! ## A100915.P17669711570019598858

`eq[2, A008481(A100493(n+2))]+2`
-/

namespace A100915.P17669711570019598858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (A100493 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A100915.P17669711570019598858

namespace A100915

/-- `eq[2, A008481(A100493(n+2))]+2` -/
def P17669711570019598858.Spec : Prop :=
  ∀ n, (P17669711570019598858.a n : ℤ) = A100915 (n + 1)

end A100915

/-! ## A100915.P16096156269580694948

`eq[2, A001222(A088707(n+1)+n)]+1`
-/

namespace A100915.P16096156269580694948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A088707 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100915.P16096156269580694948

namespace A100915

/-- `eq[2, A001222(A088707(n+1)+n)]+1` -/
def P16096156269580694948.Spec : Prop :=
  ∀ n, (P16096156269580694948.a n : ℤ) = A100915 (n + 1)

end A100915

/-! ## A100915.P14018801014996472934

`eq[2, A001222(A001358(n+1)+n+1)]+1`
-/

namespace A100915.P14018801014996472934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001358 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100915.P14018801014996472934

namespace A100915

/-- `eq[2, A001222(A001358(n+1)+n+1)]+1` -/
def P14018801014996472934.Spec : Prop :=
  ∀ n, (P14018801014996472934.a n : ℤ) = A100915 (n + 1)

end A100915

/-! ## A100915.P11689968036577718624

`A058933(A100916(n+1))`
-/

namespace A100915.P11689968036577718624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A100916 (n + 1)).toNat

end

end A100915.P11689968036577718624

namespace A100915

/-- `A058933(A100916(n+1))` -/
def P11689968036577718624.Spec : Prop :=
  ∀ n, P11689968036577718624.a n = A100915 (n + 1)

end A100915

/-! ## A100915.P9297028423219622351

`A072000(A100916(2*n+1-n))`
-/

namespace A100915.P9297028423219622351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A100916 (2 * n + 1 - n)).toNat

end

end A100915.P9297028423219622351

namespace A100915

/-- `A072000(A100916(2*n+1-n))` -/
def P9297028423219622351.Spec : Prop :=
  ∀ n, P9297028423219622351.a n = A100915 (n + 1)

end A100915

/-! ## A100915.P5236901791580432723

`A072000(A100916(n+1))%A017042(n)`
-/

namespace A100915.P5236901791580432723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072000 (A100916 (n + 1)).toNat) (A017042 n)

end

end A100915.P5236901791580432723

namespace A100915

/-- `A072000(A100916(n+1))%A017042(n)` -/
def P5236901791580432723.Spec : Prop :=
  ∀ n, P5236901791580432723.a n = A100915 (n + 1)

end A100915

/-! ## A100915.P15257121849213657465

`A010686(2*n)*A072000(A100916(n+1))`
-/

namespace A100915.P15257121849213657465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 (2 * n) * A072000 (A100916 (n + 1)).toNat

end

end A100915.P15257121849213657465

namespace A100915

/-- `A010686(2*n)*A072000(A100916(n+1))` -/
def P15257121849213657465.Spec : Prop :=
  ∀ n, P15257121849213657465.a n = A100915 (n + 1)

end A100915

/-!
# A100916: Sum of a semiprime and its semiprime index is a new semiprime.

The programs for A100916, the canonical program `A100916.P18112249103845071667` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100916 has offset 1).

The definition of A100916 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A100915, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100916.P18112249103845071667

`A001358(A100915(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A100916

/-- `A001358(A100915(n+1))` -/
def P18112249103845071667.Spec : Prop :=
  ∀ n, P18112249103845071667.a n = A100916 (n + 1)

theorem P18112249103845071667.correct : P18112249103845071667.Spec := by
  intro n
  simp only [A100916, Nat.add_sub_cancel]

end A100916

/-! ## A100916.P12191267889833933520

`A100466(n+1)-A100915(n+1)`
-/

namespace A100916.P12191267889833933520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100466 (n + 1) - A100915 (n + 1)

end

end A100916.P12191267889833933520

namespace A100916

/-- `A100466(n+1)-A100915(n+1)` -/
def P12191267889833933520.Spec : Prop :=
  ∀ n, P12191267889833933520.a n = A100916 (n + 1)

end A100916

/-! ## A100916.P1542482288240743012

`A129767(2*A100915(n+1))`
-/

namespace A100916.P1542482288240743012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * A100915 (n + 1)).toNat

end

end A100916.P1542482288240743012

namespace A100916

/-- `A129767(2*A100915(n+1))` -/
def P1542482288240743012.Spec : Prop :=
  ∀ n, P1542482288240743012.a n = A100916 (n + 1)

end A100916

/-! ## A100916.P241018728801147168

`A075818(A100915(n+1))/A000034(or(5, n))`
-/

namespace A100916.P241018728801147168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (A100915 (n + 1)).toNat : ℚ) / (A000034 (Nat.lor 5 n) : ℚ)

end

end A100916.P241018728801147168

namespace A100916

/-- `A075818(A100915(n+1))/A000034(or(5, n))` -/
def P241018728801147168.Spec : Prop :=
  ∀ n, P241018728801147168.a n = (A100916 (n + 1) : ℚ)

end A100916

/-! ## A100916.P18064865650210825811

`A075818(A100915(n+1))/A000034(2*n+1)`
-/

namespace A100916.P18064865650210825811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (A100915 (n + 1)).toNat : ℚ) / (A000034 (2 * n + 1) : ℚ)

end

end A100916.P18064865650210825811

namespace A100916

/-- `A075818(A100915(n+1))/A000034(2*n+1)` -/
def P18064865650210825811.Spec : Prop :=
  ∀ n, P18064865650210825811.a n = (A100916 (n + 1) : ℚ)

end A100916

/-! ## A100916.P8610242632299592334

`A075818(A100915(n+1))/A020639(2*(n+1))`
-/

namespace A100916.P8610242632299592334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (A100915 (n + 1)).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A100916.P8610242632299592334

namespace A100916

/-- `A075818(A100915(n+1))/A020639(2*(n+1))` -/
def P8610242632299592334.Spec : Prop :=
  ∀ n, P8610242632299592334.a n = (A100916 (n + 1) : ℚ)

end A100916

/-! ## A100916.P17793221721072518414

`A075818(A100915(n+1))/A040001(2*(n+1))`
-/

namespace A100916.P17793221721072518414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (A100915 (n + 1)).toNat : ℚ) / (A040001 (2 * (n + 1)) : ℚ)

end

end A100916.P17793221721072518414

namespace A100916

/-- `A075818(A100915(n+1))/A040001(2*(n+1))` -/
def P17793221721072518414.Spec : Prop :=
  ∀ n, P17793221721072518414.a n = (A100916 (n + 1) : ℚ)

end A100916

/-! ## A100916.P12719880607684034777

`A075818(A100915(n+1))/2%A000040(3*(n+1))`
-/

namespace A100916.P12719880607684034777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (A100915 (n + 1)).toNat : ℚ) / (Int.tmod 2 (A000040 (3 * (n + 1))) : ℚ)

end

end A100916.P12719880607684034777

namespace A100916

/-- `A075818(A100915(n+1))/2%A000040(3*(n+1))` -/
def P12719880607684034777.Spec : Prop :=
  ∀ n, P12719880607684034777.a n = (A100916 (n + 1) : ℚ)

end A100916

/-! ## A100916.P12964831225487672135

`A075818(A100915(n+1))/A001221(A074851(n+1))`
-/

namespace A100916.P12964831225487672135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (A100915 (n + 1)).toNat : ℚ) / (A001221 (A074851 (n + 1)).toNat : ℚ)

end

end A100916.P12964831225487672135

namespace A100916

/-- `A075818(A100915(n+1))/A001221(A074851(n+1))` -/
def P12964831225487672135.Spec : Prop :=
  ∀ n, P12964831225487672135.a n = (A100916 (n + 1) : ℚ)

end A100916

/-! ## A100916.P10988203148607480832

`A075818(A100915(n+1))/A001222(A000040(n+1)²)`
-/

namespace A100916.P10988203148607480832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (A100915 (n + 1)).toNat : ℚ) / (A001222 (A000040 (n + 1) ^ 2).toNat : ℚ)

end

end A100916.P10988203148607480832

namespace A100916

/-- `A075818(A100915(n+1))/A001222(A000040(n+1)²)` -/
def P10988203148607480832.Spec : Prop :=
  ∀ n, P10988203148607480832.a n = (A100916 (n + 1) : ℚ)

end A100916

/-!
# A100917: Primes of the form pi(n) + prime(n).

The programs for A100917, the canonical program `A100917.P8573700060762984161` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100917 has offset 1).

The definition of A100917 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065042, A100486, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100917.P8573700060762984161

`A100486(A065042(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A100917

/-- `A100486(A065042(n+1))` -/
def P8573700060762984161.Spec : Prop :=
  ∀ n, P8573700060762984161.a n = A100917 (n + 1)

theorem P8573700060762984161.correct : P8573700060762984161.Spec := by
  intro n
  simp only [A100917, Nat.add_sub_cancel]

end A100917

/-! ## A100917.P3883318394867910995

`p?[A100486(n+1)]`
-/

namespace A100917.P3883318394867910995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100917.P3883318394867910995

namespace A100917

/-- `p?[A100486(n+1)]` -/
def P3883318394867910995.Spec : Prop :=
  ∀ n, P3883318394867910995.a n = A100917 (n + 1)

end A100917

/-! ## A100917.P1983411835471256647

`p?[A167180(n+1)+1+n]`
-/

namespace A100917.P1983411835471256647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167180 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100917.P1983411835471256647

namespace A100917

/-- `p?[A167180(n+1)+1+n]` -/
def P1983411835471256647.Spec : Prop :=
  ∀ n, P1983411835471256647.a n = A100917 (n + 1)

end A100917

/-! ## A100917.P11816385517224532937

`p?[A230980(n)+A008578(n+1)]`
-/

namespace A100917.P11816385517224532937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100917.P11816385517224532937

namespace A100917

/-- `p?[A230980(n)+A008578(n+1)]` -/
def P11816385517224532937.Spec : Prop :=
  ∀ n, P11816385517224532937.a n = A100917 (n + 1)

end A100917

/-! ## A100917.P12389604589119507865

`p?[A000720(n+1)+A000040(n+1)]`
-/

namespace A100917.P12389604589119507865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100917.P12389604589119507865

namespace A100917

/-- `p?[A000720(n+1)+A000040(n+1)]` -/
def P12389604589119507865.Spec : Prop :=
  ∀ n, P12389604589119507865.a n = A100917 (n + 1)

end A100917

/-! ## A100917.P5321170279229009679

`p?[A000720(n+1)+A008578(n+2)]`
-/

namespace A100917.P5321170279229009679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100917.P5321170279229009679

namespace A100917

/-- `p?[A000720(n+1)+A008578(n+2)]` -/
def P5321170279229009679.Spec : Prop :=
  ∀ n, P5321170279229009679.a n = A100917 (n + 1)

end A100917

/-! ## A100917.P1328557311385743128

`p?[A000720(n+1)+p?[A015919(n+1)]]`
-/

namespace A100917.P1328557311385743128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100917.P1328557311385743128

namespace A100917

/-- `p?[A000720(n+1)+p?[A015919(n+1)]]` -/
def P1328557311385743128.Spec : Prop :=
  ∀ n, P1328557311385743128.a n = A100917 (n + 1)

end A100917

/-! ## A100917.P13356668206314617390

`p?[A000720(n+1)+A006093(n+1)+1]`
-/

namespace A100917.P13356668206314617390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A006093 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100917.P13356668206314617390

namespace A100917

/-- `p?[A000720(n+1)+A006093(n+1)+1]` -/
def P13356668206314617390.Spec : Prop :=
  ∀ n, P13356668206314617390.a n = A100917 (n + 1)

end A100917

/-! ## A100917.P15443309444357143343

`p?[A000040(n+1)+A036234(n+1)-1]`
-/

namespace A100917.P15443309444357143343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A036234 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100917.P15443309444357143343

namespace A100917

/-- `p?[A000040(n+1)+A036234(n+1)-1]` -/
def P15443309444357143343.Spec : Prop :=
  ∀ n, P15443309444357143343.a n = A100917 (n + 1)

end A100917

/-! ## A100917.P4510862406592043218

`p?[A000720(n+1)+A040976(n+1)+2]`
-/

namespace A100917.P4510862406592043218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A040976 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100917.P4510862406592043218

namespace A100917

/-- `p?[A000720(n+1)+A040976(n+1)+2]` -/
def P4510862406592043218.Spec : Prop :=
  ∀ n, P4510862406592043218.a n = A100917 (n + 1)

end A100917

/-! ## A100917.P11164156693224114395

`p?[A000720(n+1)+A014692(n+1)+n]`
-/

namespace A100917.P11164156693224114395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A014692 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100917.P11164156693224114395

namespace A100917

/-- `p?[A000720(n+1)+A014692(n+1)+n]` -/
def P11164156693224114395.Spec : Prop :=
  ∀ n, P11164156693224114395.a n = A100917 (n + 1)

end A100917

/-! ## A100917.P14383681832222936219

`p?[A000040(n+1)-A065855(n+1)+n]`
-/

namespace A100917.P14383681832222936219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A065855 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100917.P14383681832222936219

namespace A100917

/-- `p?[A000040(n+1)-A065855(n+1)+n]` -/
def P14383681832222936219.Spec : Prop :=
  ∀ n, P14383681832222936219.a n = A100917 (n + 1)

end A100917

/-! ## A100917.P6474745517803958505

`∩[A100486(n+1), A261123(n+1)]`
-/

namespace A100917.P6474745517803958505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100917.P6474745517803958505

namespace A100917

/-- `∩[A100486(n+1), A261123(n+1)]` -/
def P6474745517803958505.Spec : Prop :=
  ∀ n, (P6474745517803958505.a n : ℤ) = A100917 (n + 1)

end A100917

/-! ## A100917.P17264398742068762277

`∩[A100486(n+1), A106118(n+1)]`
-/

namespace A100917.P17264398742068762277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100917.P17264398742068762277

namespace A100917

/-- `∩[A100486(n+1), A106118(n+1)]` -/
def P17264398742068762277.Spec : Prop :=
  ∀ n, (P17264398742068762277.a n : ℤ) = A100917 (n + 1)

end A100917

/-! ## A100917.P2134915761281843597

`∩[A000040(n+1), A100486(n+1)]`
-/

namespace A100917.P2134915761281843597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100917.P2134915761281843597

namespace A100917

/-- `∩[A000040(n+1), A100486(n+1)]` -/
def P2134915761281843597.Spec : Prop :=
  ∀ n, (P2134915761281843597.a n : ℤ) = A100917 (n + 1)

end A100917

/-! ## A100917.P15253862207661138338

`∩[A008578(n+1), A100486(n+1)]`
-/

namespace A100917.P15253862207661138338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100917.P15253862207661138338

namespace A100917

/-- `∩[A008578(n+1), A100486(n+1)]` -/
def P15253862207661138338.Spec : Prop :=
  ∀ n, (P15253862207661138338.a n : ℤ) = A100917 (n + 1)

end A100917

/-! ## A100917.P14643066608784129740

`∩[A045319(n+1), A100486(n+1)]`
-/

namespace A100917.P14643066608784129740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100917.P14643066608784129740

namespace A100917

/-- `∩[A045319(n+1), A100486(n+1)]` -/
def P14643066608784129740.Spec : Prop :=
  ∀ n, (P14643066608784129740.a n : ℤ) = A100917 (n + 1)

end A100917

/-! ## A100917.P10119949232884742304

`∩[A045344(n+1), A100486(n+1)]`
-/

namespace A100917.P10119949232884742304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100917.P10119949232884742304

namespace A100917

/-- `∩[A045344(n+1), A100486(n+1)]` -/
def P10119949232884742304.Spec : Prop :=
  ∀ n, (P10119949232884742304.a n : ℤ) = A100917 (n + 1)

end A100917

/-! ## A100917.P13066207473412580963

`∩[A053813(n+1), A100486(n+1)]`
-/

namespace A100917.P13066207473412580963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100917.P13066207473412580963

namespace A100917

/-- `∩[A053813(n+1), A100486(n+1)]` -/
def P13066207473412580963.Spec : Prop :=
  ∀ n, (P13066207473412580963.a n : ℤ) = A100917 (n + 1)

end A100917

/-! ## A100917.P13531448151478069333

`∩[A100486(n+1), A116974(n+1)]`
-/

namespace A100917.P13531448151478069333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100917.P13531448151478069333

namespace A100917

/-- `∩[A100486(n+1), A116974(n+1)]` -/
def P13531448151478069333.Spec : Prop :=
  ∀ n, (P13531448151478069333.a n : ℤ) = A100917 (n + 1)

end A100917

/-!
# A100918: A077175(n) / A077176(n).

The programs for A100918, there is no canonical definition to state claims against.
-/

/-! ## A100918.P14512241199238684050

`A077175(n+1)/A077176(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100918.P14512241199238684050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077175 (n + 1) : ℚ) / (A077176 (n + 1) : ℚ)

end

end A100918.P14512241199238684050

/-! ## A100918.P9894244614666971207

`A077175(n+1)/A101177(n+1)*A101179(n+1)`
-/

namespace A100918.P9894244614666971207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077175 (n + 1) : ℚ) / (A101177 (n + 1) : ℚ) * (A101179 (n + 1) : ℚ)

end

end A100918.P9894244614666971207

/-! ## A100918.P15696506761377940043

`A077175(n+1)/(A185236(n)+A101177(n+1)/A101179(n+1))`
-/

namespace A100918.P15696506761377940043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077175 (n + 1) : ℚ) / ((A185236 n : ℚ) + (A101177 (n + 1) : ℚ) / (A101179 (n + 1) : ℚ))

end

end A100918.P15696506761377940043

/-! ## A100918.P2551923568198608089

`A077175(n+1)/(A101177(n+1)/A101179(n+1))%A077175(n+2)`
-/

namespace A100918.P2551923568198608089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077175 (n + 1) : ℚ) / (Int.tmod (SequenceMachineLib.roundAway ((A101177 (n + 1) : ℚ) / (A101179 (n + 1) : ℚ))) (A077175 (n + 2)) : ℚ)

end

end A100918.P2551923568198608089

/-! ## A100918.P9798210137792690875

`A117200(A208573(n+1))+A101179(n+1)`
-/

namespace A100918.P9798210137792690875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117200 (A208573 (n + 1)).toNat + A101179 (n + 1)

end

end A100918.P9798210137792690875

/-!
# A100920: Index of the last occurrence of n in A100798.

The programs for A100920, there is no canonical definition to state claims against.
-/

/-! ## A100920.P3228730699667795134

`A213257(A005229(∑[or(1, 3*n)]+n+1))`
-/

namespace A100920.P3228730699667795134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213257 (A005229 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))).toNat

end

end A100920.P3228730699667795134

/-! ## A100920.P9172487860027177648

`A090288(n)-A331914(A052905(n))`
-/

namespace A100920.P9172487860027177648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 n - A331914 (A052905 n).toNat

end

end A100920.P9172487860027177648

/-! ## A100920.P1983094595279100889

`A196546(A249036(n+1)+∑[A005187(n)])`
-/

namespace A100920.P1983094595279100889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196546 (A249036 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100920.P1983094595279100889

/-!
# A100921: n appears A023416(n) times (appearances equal number of 0-bits).

The programs for A100921, the canonical program `A100921.P12220981818540701352` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100921 has offset 0).

The definition of A100921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100921.P12220981818540701352

`comp[∑[a(floor(n/2))+(n+1)%2]]-n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100921

/-- `comp[∑[a(floor(n/2))+(n+1)%2]]-n` -/
def P12220981818540701352.Spec : Prop :=
  ∀ n, P12220981818540701352.a n = A100921 n

theorem P12220981818540701352.correct : P12220981818540701352.Spec := by
  intro n
  simp only [A100921]

end A100921

/-! ## A100921.P9680338373282080181

`comp[A059015(n)+n]-n`
-/

namespace A100921.P9680338373282080181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059015 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A100921.P9680338373282080181

namespace A100921

/-- `comp[A059015(n)+n]-n` -/
def P9680338373282080181.Spec : Prop :=
  ∀ n, P9680338373282080181.a n = A100921 n

end A100921

/-! ## A100921.P11610702607541835724

`comp[∑[A008687(n+1)]]-n`
-/

namespace A100921.P11610702607541835724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A100921.P11610702607541835724

namespace A100921

/-- `comp[∑[A008687(n+1)]]-n` -/
def P11610702607541835724.Spec : Prop :=
  ∀ n, P11610702607541835724.a n = A100921 n

end A100921

/-! ## A100921.P14705160107000604254

`comp[∑[A080791(n)+1]]-n`
-/

namespace A100921.P14705160107000604254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A100921.P14705160107000604254

namespace A100921

/-- `comp[∑[A080791(n)+1]]-n` -/
def P14705160107000604254.Spec : Prop :=
  ∀ n, P14705160107000604254.a n = A100921 n

end A100921

/-! ## A100921.P2928405466153361996

`comp[∑[A290251(n)]+1]-n`
-/

namespace A100921.P2928405466153361996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A100921.P2928405466153361996

namespace A100921

/-- `comp[∑[A290251(n)]+1]-n` -/
def P2928405466153361996.Spec : Prop :=
  ∀ n, P2928405466153361996.a n = A100921 n

end A100921

/-! ## A100921.P13539899779093290527

`comp[∑[A023416(2*n)]]-n`
-/

namespace A100921.P13539899779093290527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A100921.P13539899779093290527

namespace A100921

/-- `comp[∑[A023416(2*n)]]-n` -/
def P13539899779093290527.Spec : Prop :=
  ∀ n, P13539899779093290527.a n = A100921 n

end A100921

/-! ## A100921.P3343662275263186055

`comp[∑[A023416(n)]+n]-n`
-/

namespace A100921.P3343662275263186055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A100921.P3343662275263186055

namespace A100921

/-- `comp[∑[A023416(n)]+n]-n` -/
def P3343662275263186055.Spec : Prop :=
  ∀ n, P3343662275263186055.a n = A100921 n

end A100921

/-! ## A100921.P9047148265149377169

`comp[∑[A000005(A080100(n))]]-n`
-/

namespace A100921.P9047148265149377169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A080100 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A100921.P9047148265149377169

namespace A100921

/-- `comp[∑[A000005(A080100(n))]]-n` -/
def P9047148265149377169.Spec : Prop :=
  ∀ n, P9047148265149377169.a n = A100921 n

end A100921

/-! ## A100921.P13947721563144135057

`A030530(A003607(n))`
-/

namespace A100921.P13947721563144135057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A003607 n).toNat

end

end A100921.P13947721563144135057

namespace A100921

/-- `A030530(A003607(n))` -/
def P13947721563144135057.Spec : Prop :=
  ∀ n, P13947721563144135057.a n = A100921 n

end A100921

/-! ## A100921.P1174429545266833772

`A030530(A030309(n+1))`
-/

namespace A100921.P1174429545266833772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A030309 (n + 1)).toNat

end

end A100921.P1174429545266833772

namespace A100921

/-- `A030530(A030309(n+1))` -/
def P1174429545266833772.Spec : Prop :=
  ∀ n, P1174429545266833772.a n = A100921 n

end A100921

/-!
# A100922: k appears A000120(k) times (appearances equal number of 1-bits).

The programs for A100922, the canonical program `A100922.P17692804635926552874` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100922 has offset 0).

The definition of A100922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100922.P1431568812699124855

`∑[char[∑[a(and(n, n-1))+1]]]` with `a(0)=0`
-/

namespace A100922.P1431568812699124855
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f3 =>
  f3 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100922.P1431568812699124855

namespace A100922

/-- `∑[char[∑[a(and(n, n-1))+1]]]` -/
def P1431568812699124855.Spec : Prop :=
  ∀ n, (P1431568812699124855.a n : ℤ) = A100922 n

end A100922

/-! ## A100922.P6494943921853342012

`∑[char[A000788(n)]]`
-/

namespace A100922.P6494943921853342012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100922.P6494943921853342012

namespace A100922

/-- `∑[char[A000788(n)]]` -/
def P6494943921853342012.Spec : Prop :=
  ∀ n, (P6494943921853342012.a n : ℤ) = A100922 n

end A100922

/-! ## A100922.P6222329256800529429

`∑[char[∑[A000120(n)]]]`
-/

namespace A100922.P6222329256800529429
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100922.P6222329256800529429

namespace A100922

/-- `∑[char[∑[A000120(n)]]]` -/
def P6222329256800529429.Spec : Prop :=
  ∀ n, (P6222329256800529429.a n : ℤ) = A100922 n

end A100922

/-! ## A100922.P9365070397369553473

`∑[char[∑[A048881(2*n)]]]`
-/

namespace A100922.P9365070397369553473
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100922.P9365070397369553473

namespace A100922

/-- `∑[char[∑[A048881(2*n)]]]` -/
def P9365070397369553473.Spec : Prop :=
  ∀ n, (P9365070397369553473.a n : ℤ) = A100922 n

end A100922

/-! ## A100922.P10241822978815422826

`∑[char[∑[n-A011371(n)]]]`
-/

namespace A100922.P10241822978815422826
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100922.P10241822978815422826

namespace A100922

/-- `∑[char[∑[n-A011371(n)]]]` -/
def P10241822978815422826.Spec : Prop :=
  ∀ n, (P10241822978815422826.a n : ℤ) = A100922 n

end A100922

/-! ## A100922.P14418576822874055367

`∑[char[∑[2*n-A005187(n)]]]`
-/

namespace A100922.P14418576822874055367
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100922.P14418576822874055367

namespace A100922

/-- `∑[char[∑[2*n-A005187(n)]]]` -/
def P14418576822874055367.Spec : Prop :=
  ∀ n, (P14418576822874055367.a n : ℤ) = A100922 n

end A100922

/-! ## A100922.P17692804635926552874

`a(n-1)+C(n, A000788(a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100922

/-- `a(n-1)+C(n, A000788(a(n-1)))` -/
def P17692804635926552874.Spec : Prop :=
  ∀ n, (P17692804635926552874.a n : ℤ) = A100922 n

theorem P17692804635926552874.correct : P17692804635926552874.Spec := by
  intro n
  simp only [A100922]

end A100922

/-! ## A100922.P1872235949969875104

`∑[char[A083652(n)-A059015(n)]]`
-/

namespace A100922.P1872235949969875104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n - A059015 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100922.P1872235949969875104

namespace A100922

/-- `∑[char[A083652(n)-A059015(n)]]` -/
def P1872235949969875104.Spec : Prop :=
  ∀ n, (P1872235949969875104.a n : ℤ) = A100922 n

end A100922

/-! ## A100922.P7193810775710570265

`A030530(A030310(n+1))`
-/

namespace A100922.P7193810775710570265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A030310 (n + 1)).toNat

end

end A100922.P7193810775710570265

namespace A100922

/-- `A030530(A030310(n+1))` -/
def P7193810775710570265.Spec : Prop :=
  ∀ n, P7193810775710570265.a n = A100922 n

end A100922

/-! ## A100922.P13433888381419424846

`A030530(A030303(n+1))`
-/

namespace A100922.P13433888381419424846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A030303 (n + 1)).toNat

end

end A100922.P13433888381419424846

namespace A100922

/-- `A030530(A030303(n+1))` -/
def P13433888381419424846.Spec : Prop :=
  ∀ n, P13433888381419424846.a n = A100922 n

end A100922

/-! ## A100922.P8259877982034227173

`A030530(eq[1, A030190(n)])`
-/

namespace A100922.P8259877982034227173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100922.P8259877982034227173

namespace A100922

/-- `A030530(eq[1, A030190(n)])` -/
def P8259877982034227173.Spec : Prop :=
  ∀ n, P8259877982034227173.a n = A100922 n

end A100922

/-! ## A100922.P763393364592183963

`A030530(eq[1, A030308(n)])`
-/

namespace A100922.P763393364592183963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100922.P763393364592183963

namespace A100922

/-- `A030530(eq[1, A030308(n)])` -/
def P763393364592183963.Spec : Prop :=
  ∀ n, P763393364592183963.a n = A100922 n

end A100922

/-!
# A100923: a(n) = 1 iff 6*n+1 and 6*n-1 are both prime numbers (0 otherwise).

The programs for A100923, the canonical program `A100923.P17128876040247013713` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100923 has offset 1).

The definition of A100923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100923.P10071093915315433874

`char[A153196(n+1)]`
-/

namespace A100923.P10071093915315433874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A100923.P10071093915315433874

namespace A100923

/-- `char[A153196(n+1)]` -/
def P10071093915315433874.Spec : Prop :=
  ∀ n, (P10071093915315433874.a n : ℤ) = A100923 (n + 1)

end A100923

/-! ## A100923.P9485057741905409328

`C(2, A145193(n+1))`
-/

namespace A100923.P9485057741905409328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A145193 (n + 1)).toNat

end

end A100923.P9485057741905409328

namespace A100923

/-- `C(2, A145193(n+1))` -/
def P9485057741905409328.Spec : Prop :=
  ∀ n, (P9485057741905409328.a n : ℤ) = A100923 (n + 1)

end A100923

/-! ## A100923.P15511974593972610248

`floor(1/A182481(n+1))`
-/

namespace A100923.P15511974593972610248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A182481 (n + 1) : ℚ)⌋

end

end A100923.P15511974593972610248

namespace A100923

/-- `floor(1/A182481(n+1))` -/
def P15511974593972610248.Spec : Prop :=
  ∀ n, P15511974593972610248.a n = A100923 (n + 1)

end A100923

/-! ## A100923.P1146606185738054624

`char[A002822(n+1)-1]`
-/

namespace A100923.P1146606185738054624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A100923.P1146606185738054624

namespace A100923

/-- `char[A002822(n+1)-1]` -/
def P1146606185738054624.Spec : Prop :=
  ∀ n, (P1146606185738054624.a n : ℤ) = A100923 (n + 1)

end A100923

/-! ## A100923.P3209320313229341743

`char[floor(A001359(n+2)/6)]`
-/

namespace A100923.P3209320313229341743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001359 (n + 2) : ℚ) / 6⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A100923.P3209320313229341743

namespace A100923

/-- `char[floor(A001359(n+2)/6)]` -/
def P3209320313229341743.Spec : Prop :=
  ∀ n, (P3209320313229341743.a n : ℤ) = A100923 (n + 1)

end A100923

/-! ## A100923.P17128876040247013713

`Δ[A071538(3*(2*n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A100923

/-- `Δ[A071538(3*(2*n+1))]` -/
def P17128876040247013713.Spec : Prop :=
  ∀ n, P17128876040247013713.a n = A100923 (n + 1)

theorem P17128876040247013713.correct : P17128876040247013713.Spec := by
  intro n
  simp only [A100923, Nat.add_sub_cancel]

end A100923

/-! ## A100923.P7728223837936773569

`char[floor((A006512(n+1)-3)/6)]`
-/

namespace A100923.P7728223837936773569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006512 (n + 1) - 3 : ℚ) / 6⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A100923.P7728223837936773569

namespace A100923

/-- `char[floor((A006512(n+1)-3)/6)]` -/
def P7728223837936773569.Spec : Prop :=
  ∀ n, (P7728223837936773569.a n : ℤ) = A100923 (n + 1)

end A100923

/-! ## A100923.P17684924009847183980

`∏{e}[A182481(n+1), A234504(#)]`
-/

namespace A100923.P17684924009847183980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A234504 (Nat.factorization (f1 n).natAbs p)

end

end A100923.P17684924009847183980

namespace A100923

/-- `∏{e}[A182481(n+1), A234504(#)]` -/
def P17684924009847183980.Spec : Prop :=
  ∀ n, P17684924009847183980.a n = A100923 (n + 1)

end A100923

/-! ## A100923.P12067701846091296631

`∏{e}[A182481(n+1), A281080(#)]`
-/

namespace A100923.P12067701846091296631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A281080 (Nat.factorization (f1 n).natAbs p)

end

end A100923.P12067701846091296631

namespace A100923

/-- `∏{e}[A182481(n+1), A281080(#)]` -/
def P12067701846091296631.Spec : Prop :=
  ∀ n, P12067701846091296631.a n = A100923 (n + 1)

end A100923

/-! ## A100923.P3068614433593191269

`A089617(Δ[A100637(2*n)]+2)`
-/

namespace A100923.P3068614433593191269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089617 (f1 (n + 1) - f1 n + 2).toNat

end

end A100923.P3068614433593191269

namespace A100923

/-- `A089617(Δ[A100637(2*n)]+2)` -/
def P3068614433593191269.Spec : Prop :=
  ∀ n, P3068614433593191269.a n = A100923 (n + 1)

end A100923

/-! ## A100923.P6410095368537684921

`floor(A016969(n)/A182482(n+1))`
-/

namespace A100923.P6410095368537684921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016969 n : ℚ) / (A182482 (n + 1) : ℚ)⌋

end

end A100923.P6410095368537684921

namespace A100923

/-- `floor(A016969(n)/A182482(n+1))` -/
def P6410095368537684921.Spec : Prop :=
  ∀ n, P6410095368537684921.a n = A100923 (n + 1)

end A100923

/-! ## A100923.P18322107897016853792

`A167020(n+1)*A167021(n+1)`
-/

namespace A100923.P18322107897016853792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 1) * A167021 (n + 1)

end

end A100923.P18322107897016853792

namespace A100923

/-- `A167020(n+1)*A167021(n+1)` -/
def P18322107897016853792.Spec : Prop :=
  ∀ n, P18322107897016853792.a n = A100923 (n + 1)

end A100923

/-! ## A100923.P8450360016213266644

`char[eq[2, A001223(A000720(6*(n+1)))]]`
-/

namespace A100923.P8450360016213266644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 (6 * (n + 1))).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A100923.P8450360016213266644

namespace A100923

/-- `char[eq[2, A001223(A000720(6*(n+1)))]]` -/
def P8450360016213266644.Spec : Prop :=
  ∀ n, (P8450360016213266644.a n : ℤ) = A100923 (n + 1)

end A100923

/-! ## A100923.P14604189288090006069

`A075743(A075743(2*n+1)+2*n+1)`
-/

namespace A100923.P14604189288090006069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A075743 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A100923.P14604189288090006069

namespace A100923

/-- `A075743(A075743(2*n+1)+2*n+1)` -/
def P14604189288090006069.Spec : Prop :=
  ∀ n, P14604189288090006069.a n = A100923 (n + 1)

end A100923

/-! ## A100923.P3151935478314653224

`A156706(2*n+1-A156706(2*n+1))`
-/

namespace A100923.P3151935478314653224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 ((2 * n + 1 : ℤ) - A156706 (2 * n + 1)).toNat

end

end A100923.P3151935478314653224

namespace A100923

/-- `A156706(2*n+1-A156706(2*n+1))` -/
def P3151935478314653224.Spec : Prop :=
  ∀ n, P3151935478314653224.a n = A100923 (n + 1)

end A100923

/-! ## A100923.P12293349496725267704

`lcm(A156706(2*n+1), A156706(2*(n+1)))`
-/

namespace A100923.P12293349496725267704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A156706 (2 * n + 1)) (A156706 (2 * (n + 1)))

end

end A100923.P12293349496725267704

namespace A100923

/-- `lcm(A156706(2*n+1), A156706(2*(n+1)))` -/
def P12293349496725267704.Spec : Prop :=
  ∀ n, (P12293349496725267704.a n : ℤ) = A100923 (n + 1)

end A100923

/-! ## A100923.P7288681473914280714

`A075743(A005843(n+1)-A075743(2*(n+1)))`
-/

namespace A100923.P7288681473914280714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A005843 (n + 1) - A075743 (2 * (n + 1))).toNat

end

end A100923.P7288681473914280714

namespace A100923

/-- `A075743(A005843(n+1)-A075743(2*(n+1)))` -/
def P7288681473914280714.Spec : Prop :=
  ∀ n, P7288681473914280714.a n = A100923 (n + 1)

end A100923

/-!
# A100926: Number of partitions of n into parts free of odd squares and the only number with multiplicity in the unrestricted partitions is the number 2.

The programs for A100926, there is no canonical definition to state claims against.
-/

/-! ## A100926.P5512530124144014252

`A373811(A340659(n))`
-/

namespace A100926.P5512530124144014252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A340659 n).toNat

end

end A100926.P5512530124144014252

/-! ## A100926.P16210714616515290902

`or(A078650(A001037(n)), A117409(n+1))`
-/

namespace A100926.P16210714616515290902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078650 (A001037 n).toNat) (A117409 (n + 1))

end

end A100926.P16210714616515290902

/-! ## A100926.P3474264973835347401

`A117409(n+1)+A363128(A117409(n+3))%A000188(n+1)`
-/

namespace A100926.P3474264973835347401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (n + 1) + Int.tmod (A363128 (A117409 (n + 3)).toNat) (A000188 (n + 1))

end

end A100926.P3474264973835347401

/-! ## A100926.P9073039156490316382

`A008484(A000005(2^n)+4)-n%2`
-/

namespace A100926.P9073039156490316382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (A000005 (2 ^ n) + 4).toNat - ((n % 2 : ℕ) : ℤ)

end

end A100926.P9073039156490316382

/-! ## A100926.P15289244451712182301

`A117409(n+1)+A093488(A093101(n))`
-/

namespace A100926.P15289244451712182301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (n + 1) + A093488 (A093101 n).toNat

end

end A100926.P15289244451712182301

/-!
# A100927: Number of partitions of n into distinct parts free of hexagonal numbers.

The programs for A100927, there is no canonical definition to state claims against.
-/

/-! ## A100927.P17471352498004567515

`Δ[A002024(A008615(A164484(n+4)))]`
-/

namespace A100927.P17471352498004567515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A008615 (A164484 (n + 4)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100927.P17471352498004567515

/-! ## A100927.P18178871467701188928

`Δ[A115180(a(n-1)+1)]-a(n-1)` with `a(0)=1`
-/

namespace A100927.P18178871467701188928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A115180 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A100927.P18178871467701188928

/-! ## A100927.P7263679847521180271

`A001687(A077168(n)+2)`
-/

namespace A100927.P7263679847521180271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (A077168 n + 2).toNat

end

end A100927.P7263679847521180271

/-! ## A100927.P8087493695594932445

`A001222(5^A001687(n+3))`
-/

namespace A100927.P8087493695594932445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A001687 (n + 3) : ℤ))).toNat

end

end A100927.P8087493695594932445

/-! ## A100927.P5605187451655323254

`A001687(n+3)%p?[A001608(n)]`
-/

namespace A100927.P5605187451655323254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001687 (n + 3)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A100927.P5605187451655323254

/-!
# A100928: Number of partitions of n into parts free of odd octagonal (star) numbers: k(3k-2) and the only number with multiplicity in the unrestricted partitions is the number 2 with multiplicity of the form :4k+2l, k a positive integer and l=0,1.

The programs for A100928, there is no canonical definition to state claims against.
-/

/-! ## A100928.P4384745233022722095

`Δ[A003056(A051013(n)+8)]`
-/

namespace A100928.P4384745233022722095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A051013 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100928.P4384745233022722095

/-! ## A100928.P508122924606217421

`A048766(A047083(n)-A014681(n))`
-/

namespace A100928.P508122924606217421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A047083 n - A014681 n).toNat

end

end A100928.P508122924606217421

/-! ## A100928.P16722181927245012540

`A048766(A047083(n)%A047083(n+1))`
-/

namespace A100928.P16722181927245012540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.tmod (A047083 n) (A047083 (n + 1))).toNat

end

end A100928.P16722181927245012540

/-! ## A100928.P4180172279887205737

`A048766(A059348(n+3)-A008612(n+11))`
-/

namespace A100928.P4180172279887205737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A059348 (n + 3) - A008612 (n + 11)).toNat

end

end A100928.P4180172279887205737

/-! ## A100928.P10940294223289769331

`A048766(Δ[A049868(n)])`
-/

namespace A100928.P10940294223289769331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (f1 (n + 1) - f1 n).toNat

end

end A100928.P10940294223289769331

/-!
# A100929: Sophie Germain primes multiplied by a safe primes.

The programs for A100929, there is no canonical definition to state claims against.
-/

/-! ## A100929.P11538795183949831175

`A001358(A067026(n+2)%A171703(n+1))`
-/

namespace A100929.P11538795183949831175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (Int.tmod (A067026 (n + 2)) (A171703 (n + 1))).toNat

end

end A100929.P11538795183949831175

/-! ## A100929.P15563438929475243844

`A359371(A067026(n+2))%A227286(2*(n+1))`
-/

namespace A100929.P15563438929475243844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359371 (A067026 (n + 2)).toNat) (A227286 (2 * (n + 1)))

end

end A100929.P15563438929475243844

/-!
# A100930: Semiprimes of the form (2*p+1)*(p-1)/2, p prime.

The programs for A100930, there is no canonical definition to state claims against.
-/

/-! ## A100930.P18339372592021690425

`A007700(n+1)*A066179(n+1)`
-/

namespace A100930.P18339372592021690425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1) * A066179 (n + 1)

end

end A100930.P18339372592021690425

/-! ## A100930.P17254800282116086168

`A231967(n+1)/A059455(n+1)`
-/

namespace A100930.P17254800282116086168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231967 (n + 1) : ℚ) / (A059455 (n + 1) : ℚ)

end

end A100930.P17254800282116086168

/-! ## A100930.P13656790257665395791

`A059455(n+1)²-(A007700(n+1)+1)`
-/

namespace A100930.P13656790257665395791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (n + 1) ^ 2 - (A007700 (n + 1) + 1)

end

end A100930.P13656790257665395791

/-! ## A100930.P6557411959157863550

`lcm(A007700(n+1)%A023330(n+1), A066179(n+1))`
-/

namespace A100930.P6557411959157863550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A007700 (n + 1)) (A023330 (n + 1))) (A066179 (n + 1))

end

end A100930.P6557411959157863550

/-! ## A100930.P9812302827753823934

`lcm(A066179(n+1)%A157357(n+1), A007700(n+1))`
-/

namespace A100930.P9812302827753823934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A066179 (n + 1)) (A157357 (n + 1))) (A007700 (n + 1))

end

end A100930.P9812302827753823934

/-! ## A100930.P4674218937791057819

`A059455(n+1)²-A000203(A007700(n+1))`
-/

namespace A100930.P4674218937791057819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (n + 1) ^ 2 - A000203 (A007700 (n + 1)).toNat

end

end A100930.P4674218937791057819

/-!
# A100933: Complement of A100417.

The programs for A100933, there is no canonical definition to state claims against.
-/

/-! ## A100933.P9379966039315444517

`filter[A382856(n+2), A168182(#)]`
-/

namespace A100933.P9379966039315444517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382856 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A100933.P9379966039315444517

/-! ## A100933.P64371886174425435

`∩[A352874(n+1), A320057(n+2)]`
-/

namespace A100933.P64371886174425435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320057 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100933.P64371886174425435

/-! ## A100933.P5010539576212291438

`∩[comp[A360015(n+1)], A320057(n+3)]`
-/

namespace A100933.P5010539576212291438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360015 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320057 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A100933.P5010539576212291438

/-! ## A100933.P11672150697094389151

`filter[A387177(n+2), A105234(#)]`
-/

namespace A100933.P11672150697094389151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387177 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A100933.P11672150697094389151

/-! ## A100933.P14055759472690140348

`∩[A320057(n+1), A340855(n+1)]`
-/

namespace A100933.P14055759472690140348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100933.P14055759472690140348

/-!
# A100934: Numbers having more than one representation as the product of two or more consecutive integers.

The programs for A100934, there is no canonical definition to state claims against.
-/

/-! ## A100934.P16627035814461441768

`A358526(A114885(n+2))`
-/

namespace A100934.P16627035814461441768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358526 (A114885 (n + 2)).toNat

end

end A100934.P16627035814461441768

/-! ## A100934.P6204374875982192907

`record[A356309(A089900(n+4))]`
-/

namespace A100934.P6204374875982192907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356309 (A089900 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100934.P6204374875982192907

/-!
# A100936: Symmetric square array, read by antidiagonals, where the inverse binomial transform of row n equals: [C(n,0)*1, C(n,1)*2,..., C(n,k)*A051163(k), ..., C(n,n)*A051163(n)] and where A051162 equals the antidiagonal sums.

The programs for A100936, there is no canonical definition to state claims against.
-/

/-! ## A100936.P10711419384249171318

`or(A082858(A230031(n)), A108359(n))`
-/

namespace A100936.P10711419384249171318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A082858 (A230031 n).toNat) (A108359 n)

end

end A100936.P10711419384249171318

/-! ## A100936.P13370718871322206946

`or(A058348(A034852(n)), A108359(n))`
-/

namespace A100936.P13370718871322206946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058348 (A034852 n).toNat) (A108359 n)

end

end A100936.P13370718871322206946

/-! ## A100936.P5192061629370744583

`A308857(A010894(n))+A108359(n)`
-/

namespace A100936.P5192061629370744583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308857 (A010894 (n + 21)).toNat + A108359 n

end

end A100936.P5192061629370744583

/-! ## A100936.P13541872119025035903

`or(A108359(n), A358434(A342441(n+1)))`
-/

namespace A100936.P13541872119025035903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108359 n) (A358434 (A342441 (n + 1)).toNat)

end

end A100936.P13541872119025035903

/-! ## A100936.P330642038974804790

`A108359(and(n, A349820(n+1)))`
-/

namespace A100936.P330642038974804790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108359 (Int.land (n : ℤ) (A349820 (n + 1))).toNat

end

end A100936.P330642038974804790

/-!
# A100937: Main diagonal of symmetric square array A100936.

The programs for A100937, there is no canonical definition to state claims against.
-/

/-! ## A100937.P10281233258462417537

`A100936(∑[4*n])`
-/

namespace A100937.P10281233258462417537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100936 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100937.P10281233258462417537

/-! ## A100937.P17106350505800577941

`record[A100936(A265225(n))]`
-/

namespace A100937.P17106350505800577941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100936 (A265225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100937.P17106350505800577941

/-!
# A100938: Self-convolution of A092684.

The programs for A100938, there is no canonical definition to state claims against.
-/

/-! ## A100938.P1500952372092837717

`A073188(A150431(n))`
-/

namespace A100938.P1500952372092837717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A150431 n).toNat

end

end A100938.P1500952372092837717

/-! ## A100938.P688088022621794029

`A249728(A133592(n))`
-/

namespace A100938.P688088022621794029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A133592 n).toNat

end

end A100938.P688088022621794029

/-! ## A100938.P1932469568754839669

`A005041(A129167(n+1))`
-/

namespace A100938.P1932469568754839669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A129167 (n + 1)).toNat

end

end A100938.P1932469568754839669

/-! ## A100938.P8248621442306786180

`A331873(A000045(n+3))-A331995(n+1)`
-/

namespace A100938.P8248621442306786180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (A000045 (n + 3)).toNat - A331995 (n + 1)

end

end A100938.P8248621442306786180

/-!
# A100948: Irregular triangle with T(n,1) = floor(n!/3), T(n,2) = n!/2, T(n,3) = n!, read by rows.

The programs for A100948, the canonical program `A100948.P14083542097415997064` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100948 has offset 2).

The definition of A100948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100948.P14083542097415997064

`(floor(n/3)+2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100948

/-- `(floor(n/3)+2)*a(n-3)` -/
def P14083542097415997064.Spec : Prop :=
  ∀ n, P14083542097415997064.a n = A100948 (n + 2)

theorem P14083542097415997064.correct : P14083542097415997064.Spec := by
  intro n
  simp only [A100948, Nat.add_sub_cancel]

end A100948

/-! ## A100948.P6754105177568594350

`A077012(lt[A365770(n), A135278(n)])`
-/

namespace A100948.P6754105177568594350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077012 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A100948.P6754105177568594350

namespace A100948

/-- `A077012(lt[A365770(n), A135278(n)])` -/
def P6754105177568594350.Spec : Prop :=
  ∀ n, P6754105177568594350.a n = A100948 (n + 2)

end A100948

/-! ## A100948.P7161313000334401735

`A077012(lt[A228273(n), A057128(n+1)])`
-/

namespace A100948.P7161313000334401735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077012 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A100948.P7161313000334401735

namespace A100948

/-- `A077012(lt[A228273(n), A057128(n+1)])` -/
def P7161313000334401735.Spec : Prop :=
  ∀ n, P7161313000334401735.a n = A100948 (n + 2)

end A100948

/-! ## A100948.P8417070633500099071

`A077012(lt[A228273(n), A367906(n+1)])`
-/

namespace A100948.P8417070633500099071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077012 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A100948.P8417070633500099071

namespace A100948

/-- `A077012(lt[A228273(n), A367906(n+1)])` -/
def P8417070633500099071.Spec : Prop :=
  ∀ n, P8417070633500099071.a n = A100948 (n + 2)

end A100948

/-! ## A100948.P17175601959876670405

`A339146(A077813(n+1))`
-/

namespace A100948.P17175601959876670405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339146 (A077813 (n + 1)).toNat

end

end A100948.P17175601959876670405

namespace A100948

/-- `A339146(A077813(n+1))` -/
def P17175601959876670405.Spec : Prop :=
  ∀ n, P17175601959876670405.a n = A100948 (n + 2)

end A100948

/-!
# A100949: Number of partitions of n into a prime and a semiprime.

The programs for A100949, there is no canonical definition to state claims against.
-/

/-! ## A100949.P2235159200788048800

`A282192(n+1)+A258139(n+1)`
-/

namespace A100949.P2235159200788048800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282192 (n + 1) + A258139 (n + 1)

end

end A100949.P2235159200788048800

/-! ## A100949.P17081198163939386963

`A322006(n+1)-A073610(n+1)`
-/

namespace A100949.P17081198163939386963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322006 (n + 1) - A073610 (n + 1)

end

end A100949.P17081198163939386963

/-! ## A100949.P2035052012606788022

`A082785(n+1)+A025850(Δ[A193175(n+1)])`
-/

namespace A100949.P2035052012606788022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082785 (n + 1) + A025850 (f1 (n + 1) - f1 n).toNat

end

end A100949.P2035052012606788022

/-! ## A100949.P10354716496382750474

`A082785(n+1)+A082785(Δ[A193175(n+1)])`
-/

namespace A100949.P10354716496382750474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082785 (n + 1) + A082785 (f1 (n + 1) - f1 n).toNat

end

end A100949.P10354716496382750474

/-! ## A100949.P4007431872795371505

`A086483(A058343(n))+A082785(n+1)`
-/

namespace A100949.P4007431872795371505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086483 (A058343 n).toNat + A082785 (n + 1)

end

end A100949.P4007431872795371505

/-!
# A100950: Number of partitions of n into a coprime pair of a prime and a semiprime.

The programs for A100950, there is no canonical definition to state claims against.
-/

/-! ## A100950.P5635268501426347426

`A001221(A071716(abs(A079530(n+1))))`
-/

namespace A100950.P5635268501426347426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A071716 |A079530 (n + 1)|.toNat).toNat

end

end A100950.P5635268501426347426

/-! ## A100950.P318483385137492172

`A206551(A222945(n))%A206941(n+1)`
-/

namespace A100950.P318483385137492172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206551 (A222945 n).toNat) (A206941 (n + 1))

end

end A100950.P318483385137492172

/-! ## A100950.P6503580671628923907

`A084114(C(A109606(n+1), A084117(n)))`
-/

namespace A100950.P6503580671628923907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084114 (Nat.choose (A109606 (n + 1)).toNat (A084117 n).toNat)

end

end A100950.P6503580671628923907

/-! ## A100950.P17417222512494669021

`A103277(n+1)%A236473(A000010(n+1))`
-/

namespace A100950.P17417222512494669021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103277 (n + 1)) (A236473 (A000010 (n + 1)).toNat)

end

end A100950.P17417222512494669021

/-! ## A100950.P17125100221527516887

`A369224(A000010(n+1))%A177355(n+1)`
-/

namespace A100950.P17125100221527516887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369224 (A000010 (n + 1)).toNat) (A177355 (n + 1))

end

end A100950.P17125100221527516887

/-!
# A100951: Number of ways to write n = p*q + r with three distinct primes p, q and r.

The programs for A100951, there is no canonical definition to state claims against.
-/

/-! ## A100951.P17986065079490710507

`A184963(A268674(n+1))%8`
-/

namespace A100951.P17986065079490710507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184963 (A268674 (n + 1)).toNat) 8

end

end A100951.P17986065079490710507

/-! ## A100951.P18014829961387505503

`A353433(n)%A353430(∑{p}[n+1, #])`
-/

namespace A100951.P18014829961387505503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353433 n) (A353430 (∑ p ∈ Nat.primeFactors (f1 n), p))

end

end A100951.P18014829961387505503

/-! ## A100951.P1689745581102768476

`(A187283(A300383(n+1)+1)+1)%5`
-/

namespace A100951.P1689745581102768476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187283 (A300383 (n + 1) + 1).toNat + 1) 5

end

end A100951.P1689745581102768476

/-! ## A100951.P17507884407730776630

`A257165(2*n+1)%A206941(n+1)`
-/

namespace A100951.P17507884407730776630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257165 (2 * n + 1)) (A206941 (n + 1))

end

end A100951.P17507884407730776630

/-! ## A100951.P5030490384566582541

`(A257165(char[1]+Δ[n²])%A206941(n+1))%5`
-/

namespace A100951.P5030490384566582541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A257165 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat) (A206941 (n + 1))) 5

end

end A100951.P5030490384566582541

/-!
# A100952: Numbers that cannot be written as p*q+r with three distinct primes p, q and r.

The programs for A100952, there is no canonical definition to state claims against.
-/

/-! ## A100952.P7090726064619577130

`eq[0, A100951(n+1)]+1`
-/

namespace A100952.P7090726064619577130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100952.P7090726064619577130

/-! ## A100952.P10639764312849430869

`lt[A100950(n+1), 2]+1`
-/

namespace A100952.P10639764312849430869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100950 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A100952.P10639764312849430869

/-! ## A100952.P4950140720819424617

`lt[A063070(n+1), 5]+1`
-/

namespace A100952.P4950140720819424617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A100952.P4950140720819424617

/-! ## A100952.P11281665981098664873

`lt[n-3, A146564(n+1)]+1`
-/

namespace A100952.P11281665981098664873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146564 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A100952.P11281665981098664873

/-! ## A100952.P11270056023597030132

`lt[n-4, A351561(n+1)]+1`
-/

namespace A100952.P11270056023597030132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A100952.P11270056023597030132

/-!
# A100953: Number of partitions of n into relatively prime parts such that multiplicities of parts are also relatively prime.

The programs for A100953, there is no canonical definition to state claims against.
-/

/-! ## A100953.P3026125648071065383

`A000837(n)-A319179(round(sqrt(n²+1)))`
-/

namespace A100953.P3026125648071065383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n - A319179 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A100953.P3026125648071065383

/-! ## A100953.P15338150688147406712

`A000041(n)-(A319179(A028310(n))+A018783(n))`
-/

namespace A100953.P15338150688147406712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A319179 (A028310 n).toNat + A018783 n)

end

end A100953.P15338150688147406712

/-! ## A100953.P6371691939070779707

`A000065(n)+1-A018783(n)-A319179(A028310(n))`
-/

namespace A100953.P6371691939070779707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A018783 n) - A319179 (A028310 n).toNat

end

end A100953.P6371691939070779707

/-! ## A100953.P12114808541128555912

`A035363(2*n)-A018783(n)-A319179(A028310(n))`
-/

namespace A100953.P12114808541128555912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A018783 n - A319179 (A028310 n).toNat

end

end A100953.P12114808541128555912

/-! ## A100953.P3568859850751103743

`A119620(2*n)-A018783(n)-A319179(A028310(n))`
-/

namespace A100953.P3568859850751103743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A018783 n - A319179 (A028310 n).toNat

end

end A100953.P3568859850751103743

/-! ## A100953.P749586985395042000

`A035377(3*n)-A018783(n)-A319179(A028310(n))`
-/

namespace A100953.P749586985395042000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * n) - A018783 n - A319179 (A028310 n).toNat

end

end A100953.P749586985395042000

/-! ## A100953.P13529838987167262149

`A139582(n)/2-A018783(n)-A319179(A028310(n))`
-/

namespace A100953.P13529838987167262149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A018783 n : ℚ) - (A319179 (A028310 n).toNat : ℚ)

end

end A100953.P13529838987167262149

/-!
# A100956: Consider all (2n+1)-digit palindromic primes of the form 70...0M0...07 (so that M is a palindrome with <= 2n-1 digits); a(n) = smallest such M.

The programs for A100956, there is no canonical definition to state claims against.
-/

/-! ## A100956.P16405688646087896789

`A014132(A362188(n)^A010873(n+1))`
-/

namespace A100956.P16405688646087896789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (SequenceMachineLib.roundAway ((A362188 n : ℚ) ^ (A010873 (n + 1) : ℤ))).toNat

end

end A100956.P16405688646087896789

/-!
# A100959: Non-semiprimes.

The programs for A100959, the canonical program `A100959.P16394207133343140520` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100959 has offset 1).

The definition of A100959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100959.P14562618041777083847

`comp[A186621(n+1)]+1`
-/

namespace A100959.P14562618041777083847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A100959.P14562618041777083847

namespace A100959

/-- `comp[A186621(n+1)]+1` -/
def P14562618041777083847.Spec : Prop :=
  ∀ n, (P14562618041777083847.a n : ℤ) = A100959 (n + 1)

end A100959

/-! ## A100959.P3559406630717102853

`eq[0, A064911(n+1)]+1`
-/

namespace A100959.P3559406630717102853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100959.P3559406630717102853

namespace A100959

/-- `eq[0, A064911(n+1)]+1` -/
def P3559406630717102853.Spec : Prop :=
  ∀ n, (P3559406630717102853.a n : ℤ) = A100959 (n + 1)

end A100959

/-! ## A100959.P15558434189214487449

`comp[A001358(n+1)-1]+1`
-/

namespace A100959.P15558434189214487449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A100959.P15558434189214487449

namespace A100959

/-- `comp[A001358(n+1)-1]+1` -/
def P15558434189214487449.Spec : Prop :=
  ∀ n, (P15558434189214487449.a n : ℤ) = A100959 (n + 1)

end A100959

/-! ## A100959.P6281903236423300216

`comp[A088707(n+1)-2]+1`
-/

namespace A100959.P6281903236423300216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A100959.P6281903236423300216

namespace A100959

/-- `comp[A088707(n+1)-2]+1` -/
def P6281903236423300216.Spec : Prop :=
  ∀ n, (P6281903236423300216.a n : ℤ) = A100959 (n + 1)

end A100959

/-! ## A100959.P10837567273841704371

`comp[eq[2, A001222(n+1)]]+1`
-/

namespace A100959.P10837567273841704371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A100959.P10837567273841704371

namespace A100959

/-- `comp[eq[2, A001222(n+1)]]+1` -/
def P10837567273841704371.Spec : Prop :=
  ∀ n, (P10837567273841704371.a n : ℤ) = A100959 (n + 1)

end A100959

/-! ## A100959.P3899410861278808611

`lt[2, A308180(A077462(n))]`
-/

namespace A100959.P3899410861278808611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308180 (A077462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A100959.P3899410861278808611

namespace A100959

/-- `lt[2, A308180(A077462(n))]` -/
def P3899410861278808611.Spec : Prop :=
  ∀ n, (P3899410861278808611.a n : ℤ) = A100959 (n + 1)

end A100959

/-! ## A100959.P14262742481116212532

`A133795(n+1)-A001358(n+1)`
-/

namespace A100959.P14262742481116212532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133795 (n + 1) - A001358 (n + 1)

end

end A100959.P14262742481116212532

namespace A100959

/-- `A133795(n+1)-A001358(n+1)` -/
def P14262742481116212532.Spec : Prop :=
  ∀ n, P14262742481116212532.a n = A100959 (n + 1)

end A100959

/-! ## A100959.P16394207133343140520

`∪[A008578(n+1), A033942(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A100959

/-- `∪[A008578(n+1), A033942(n+1)]` -/
def P16394207133343140520.Spec : Prop :=
  ∀ n, (P16394207133343140520.a n : ℤ) = A100959 (n + 1)

theorem P16394207133343140520.correct : P16394207133343140520.Spec := by
  intro n
  simp only [A100959, Nat.add_sub_cancel]

end A100959

/-! ## A100959.P9752484647490506195

`∪[A026422(n+1), A033942(n+1)]`
-/

namespace A100959.P9752484647490506195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100959.P9752484647490506195

namespace A100959

/-- `∪[A026422(n+1), A033942(n+1)]` -/
def P9752484647490506195.Spec : Prop :=
  ∀ n, (P9752484647490506195.a n : ℤ) = A100959 (n + 1)

end A100959

/-! ## A100959.P14139584370745393769

`∪[A026422(n+1), A033987(n+1)]`
-/

namespace A100959.P14139584370745393769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100959.P14139584370745393769

namespace A100959

/-- `∪[A026422(n+1), A033987(n+1)]` -/
def P14139584370745393769.Spec : Prop :=
  ∀ n, (P14139584370745393769.a n : ℤ) = A100959 (n + 1)

end A100959

/-! ## A100959.P11569220365912850493

`∪[A026422(n+1), A058080(n+1)]`
-/

namespace A100959.P11569220365912850493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100959.P11569220365912850493

namespace A100959

/-- `∪[A026422(n+1), A058080(n+1)]` -/
def P11569220365912850493.Spec : Prop :=
  ∀ n, (P11569220365912850493.a n : ℤ) = A100959 (n + 1)

end A100959

/-! ## A100959.P10884019244161166528

`∪[A026422(n+1), A067028(n+1)]`
-/

namespace A100959.P10884019244161166528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100959.P10884019244161166528

namespace A100959

/-- `∪[A026422(n+1), A067028(n+1)]` -/
def P10884019244161166528.Spec : Prop :=
  ∀ n, (P10884019244161166528.a n : ℤ) = A100959 (n + 1)

end A100959

/-! ## A100959.P9618981818007587757

`∪[A033942(n+1), A066720(n+1)]`
-/

namespace A100959.P9618981818007587757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100959.P9618981818007587757

namespace A100959

/-- `∪[A033942(n+1), A066720(n+1)]` -/
def P9618981818007587757.Spec : Prop :=
  ∀ n, (P9618981818007587757.a n : ℤ) = A100959 (n + 1)

end A100959

/-! ## A100959.P11133011507341891367

`∪[A000040(n+1), A111087(n+1)]`
-/

namespace A100959.P11133011507341891367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100959.P11133011507341891367

namespace A100959

/-- `∪[A000040(n+1), A111087(n+1)]` -/
def P11133011507341891367.Spec : Prop :=
  ∀ n, (P11133011507341891367.a n : ℤ) = A100959 (n + 1)

end A100959

/-! ## A100959.P14725221174522705325

`∪[A033942(n+1), A084111(n+1)]`
-/

namespace A100959.P14725221174522705325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100959.P14725221174522705325

namespace A100959

/-- `∪[A033942(n+1), A084111(n+1)]` -/
def P14725221174522705325.Spec : Prop :=
  ∀ n, (P14725221174522705325.a n : ℤ) = A100959 (n + 1)

end A100959

/-! ## A100959.P17809260442922203442

`∪[A111087(n+1), A008578(n+1)]`
-/

namespace A100959.P17809260442922203442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100959.P17809260442922203442

namespace A100959

/-- `∪[A111087(n+1), A008578(n+1)]` -/
def P17809260442922203442.Spec : Prop :=
  ∀ n, (P17809260442922203442.a n : ℤ) = A100959 (n + 1)

end A100959

/-! ## A100959.P8208175839027006224

`lt[2, A283443(A001222(n+1)+10)]+1`
-/

namespace A100959.P8208175839027006224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 (A001222 (n + 1) + 10).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A100959.P8208175839027006224

namespace A100959

/-- `lt[2, A283443(A001222(n+1)+10)]+1` -/
def P8208175839027006224.Spec : Prop :=
  ∀ n, (P8208175839027006224.a n : ℤ) = A100959 (n + 1)

end A100959

/-! ## A100959.P12813652378267759646

`∩[A213367(n+1), A246716(n+1)]`
-/

namespace A100959.P12813652378267759646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100959.P12813652378267759646

namespace A100959

/-- `∩[A213367(n+1), A246716(n+1)]` -/
def P12813652378267759646.Spec : Prop :=
  ∀ n, (P12813652378267759646.a n : ℤ) = A100959 (n + 1)

end A100959

/-! ## A100959.P10547044498313190401

`lt[1, abs(2-∑{e}[n+1, #])+1]+1`
-/

namespace A100959.P10547044498313190401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p : ℕ) : ℤ)| + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A100959.P10547044498313190401

namespace A100959

/-- `lt[1, abs(2-∑{e}[n+1, #])+1]+1` -/
def P10547044498313190401.Spec : Prop :=
  ∀ n, (P10547044498313190401.a n : ℤ) = A100959 (n + 1)

end A100959

/-! ## A100959.P10217387678971847176

`lt[1, A109824(n+1)]+1`
-/

namespace A100959.P10217387678971847176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A100959.P10217387678971847176

namespace A100959

/-- `lt[1, A109824(n+1)]+1` -/
def P10217387678971847176.Spec : Prop :=
  ∀ n, (P10217387678971847176.a n : ℤ) = A100959 (n + 1)

end A100959

/-!
# A100961: For a decimal string s, let f(s) = decimal string ijk, where i = number of even digits in s, j = number of odd digits in s, k=i+j (see A171797). Start with s = decimal expansion of n; a(n) = number of applications of f needed to reach the string 123.

The programs for A100961, the canonical program `A100961.P3793992329437476049` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100961 has offset 0).

The definition of A100961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100961.P10372797756795284616

`3-A228710(A118759(n))`
-/

namespace A100961.P10372797756795284616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A228710 (A118759 n).toNat

end

end A100961.P10372797756795284616

namespace A100961

/-- `3-A228710(A118759(n))` -/
def P10372797756795284616.Spec : Prop :=
  ∀ n, P10372797756795284616.a n = A100961 n

end A100961

/-! ## A100961.P12583978565637896376

`A256915(lcm(12, A065031(n)))`
-/

namespace A100961.P12583978565637896376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (Int.lcm 12 (A065031 n))

end

end A100961.P12583978565637896376

namespace A100961

/-- `A256915(lcm(12, A065031(n)))` -/
def P12583978565637896376.Spec : Prop :=
  ∀ n, P12583978565637896376.a n = A100961 n

end A100961

/-! ## A100961.P8346542191860258941

`A211028(abs(n-A306436(n)))+1`
-/

namespace A100961.P8346542191860258941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211028 |(n : ℤ) - A306436 n|.toNat + 1

end

end A100961.P8346542191860258941

namespace A100961

/-- `A211028(abs(n-A306436(n)))+1` -/
def P8346542191860258941.Spec : Prop :=
  ∀ n, P8346542191860258941.a n = A100961 n

end A100961

/-! ## A100961.P3575249786608501280

`xor(3, A228710(or(n, A118759(n)%2)))`
-/

namespace A100961.P3575249786608501280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A228710 (Int.lor (n : ℤ) (Int.tmod (A118759 n) 2)).toNat)

end

end A100961.P3575249786608501280

namespace A100961

/-- `xor(3, A228710(or(n, A118759(n)%2)))` -/
def P3575249786608501280.Spec : Prop :=
  ∀ n, P3575249786608501280.a n = A100961 n

end A100961

/-! ## A100961.P12132030064020824666

`A056608(A000265(A065031(n)²))`
-/

namespace A100961.P12132030064020824666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (A000265 (A065031 n ^ 2).toNat).toNat

end

end A100961.P12132030064020824666

namespace A100961

/-- `A056608(A000265(A065031(n)²))` -/
def P12132030064020824666.Spec : Prop :=
  ∀ n, P12132030064020824666.a n = A100961 n

end A100961

/-! ## A100961.P3999044168150343476

`A069719(A065031(n)/A040001(n))`
-/

namespace A100961.P3999044168150343476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069719 (SequenceMachineLib.roundAway ((A065031 n : ℚ) / (A040001 n : ℚ))).toNat

end

end A100961.P3999044168150343476

namespace A100961

/-- `A069719(A065031(n)/A040001(n))` -/
def P3999044168150343476.Spec : Prop :=
  ∀ n, P3999044168150343476.a n = A100961 n

end A100961

/-! ## A100961.P16260776247373329028

`A069719(gcd(A065031(n), A139611(n)))`
-/

namespace A100961.P16260776247373329028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069719 (Int.gcd (A065031 n) (A139611 n))

end

end A100961.P16260776247373329028

namespace A100961

/-- `A069719(gcd(A065031(n), A139611(n)))` -/
def P16260776247373329028.Spec : Prop :=
  ∀ n, P16260776247373329028.a n = A100961 n

end A100961

/-! ## A100961.P3793992329437476049

`A000032(A180160(n)^∑[A180160(n)])+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100961

/-- `A000032(A180160(n)^∑[A180160(n)])+1` -/
def P3793992329437476049.Spec : Prop :=
  ∀ n, P3793992329437476049.a n = A100961 n

theorem P3793992329437476049.correct : P3793992329437476049.Spec := by
  intro n
  simp only [A100961]

end A100961

/-! ## A100961.P565542100149379885

`A006530(A180160(n)^∑[A180160(n)]+3)`
-/

namespace A100961.P565542100149379885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A180160 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) + 3)).toNat

end

end A100961.P565542100149379885

namespace A100961

/-- `A006530(A180160(n)^∑[A180160(n)]+3)` -/
def P565542100149379885.Spec : Prop :=
  ∀ n, P565542100149379885.a n = A100961 n

end A100961

/-! ## A100961.P7913087669978930527

`A020639(A180160(n)^∑[A180160(n)]+3)`
-/

namespace A100961.P7913087669978930527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A180160 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) + 3)).toNat

end

end A100961.P7913087669978930527

namespace A100961

/-- `A020639(A180160(n)^∑[A180160(n)]+3)` -/
def P7913087669978930527.Spec : Prop :=
  ∀ n, P7913087669978930527.a n = A100961 n

end A100961

/-! ## A100961.P769104828314940649

`A000005(A180160(n)^∑[A180160(n)]+4)`
-/

namespace A100961.P769104828314940649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A180160 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) + 4)).toNat

end

end A100961.P769104828314940649

namespace A100961

/-- `A000005(A180160(n)^∑[A180160(n)]+4)` -/
def P769104828314940649.Spec : Prop :=
  ∀ n, P769104828314940649.a n = A100961 n

end A100961

/-! ## A100961.P11777787275405739977

`3-A000045(A180160(n)^∑[A180160(n)])`
-/

namespace A100961.P11777787275405739977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000045 (SequenceMachineLib.roundAway ((A180160 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A100961.P11777787275405739977

namespace A100961

/-- `3-A000045(A180160(n)^∑[A180160(n)])` -/
def P11777787275405739977.Spec : Prop :=
  ∀ n, P11777787275405739977.a n = A100961 n

end A100961

/-! ## A100961.P13919410682886079721

`A000032(A180160(n)^A105390(n+1))+1`
-/

namespace A100961.P13919410682886079721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((A180160 n : ℚ) ^ (A105390 (n + 1) : ℤ))).toNat + 1

end

end A100961.P13919410682886079721

namespace A100961

/-- `A000032(A180160(n)^A105390(n+1))+1` -/
def P13919410682886079721.Spec : Prop :=
  ∀ n, P13919410682886079721.a n = A100961 n

end A100961

/-! ## A100961.P36131119380571386

`A006530(A180160(n)^A105390(n+1)+3)`
-/

namespace A100961.P36131119380571386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A180160 n : ℚ) ^ (A105390 (n + 1) : ℤ) + 3)).toNat

end

end A100961.P36131119380571386

namespace A100961

/-- `A006530(A180160(n)^A105390(n+1)+3)` -/
def P36131119380571386.Spec : Prop :=
  ∀ n, P36131119380571386.a n = A100961 n

end A100961

/-! ## A100961.P8114261235110733786

`A020639(A180160(n)^A105390(n+1)+3)`
-/

namespace A100961.P8114261235110733786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A180160 n : ℚ) ^ (A105390 (n + 1) : ℤ) + 3)).toNat

end

end A100961.P8114261235110733786

namespace A100961

/-- `A020639(A180160(n)^A105390(n+1)+3)` -/
def P8114261235110733786.Spec : Prop :=
  ∀ n, P8114261235110733786.a n = A100961 n

end A100961

/-! ## A100961.P3915890199651944221

`A000005(A180160(n)^A105390(n+1)+4)`
-/

namespace A100961.P3915890199651944221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A180160 n : ℚ) ^ (A105390 (n + 1) : ℤ) + 4)).toNat

end

end A100961.P3915890199651944221

namespace A100961

/-- `A000005(A180160(n)^A105390(n+1)+4)` -/
def P3915890199651944221.Spec : Prop :=
  ∀ n, P3915890199651944221.a n = A100961 n

end A100961

/-! ## A100961.P1779684493361117926

`3-A000045(A180160(n)^A105390(n+1))`
-/

namespace A100961.P1779684493361117926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000045 (SequenceMachineLib.roundAway ((A180160 n : ℚ) ^ (A105390 (n + 1) : ℤ))).toNat

end

end A100961.P1779684493361117926

namespace A100961

/-- `3-A000045(A180160(n)^A105390(n+1))` -/
def P1779684493361117926.Spec : Prop :=
  ∀ n, P1779684493361117926.a n = A100961 n

end A100961

/-! ## A100961.P6739811879682828123

`A069719(A065031(n))`
-/

namespace A100961.P6739811879682828123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069719 (A065031 n).toNat

end

end A100961.P6739811879682828123

namespace A100961

/-- `A069719(A065031(n))` -/
def P6739811879682828123.Spec : Prop :=
  ∀ n, P6739811879682828123.a n = A100961 n

end A100961

/-!
# A100962: Numbers that can neither be written as the sum nor as the product of two primes.

The programs for A100962, there is no canonical definition to state claims against.
-/

/-! ## A100962.P12408242443172274227

`∩[A014092(n+1), A100959(n+1)]`
-/

namespace A100962.P12408242443172274227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100962.P12408242443172274227

/-! ## A100962.P12856392552388006752

`∩[A100959(n+1), A166081(n+1)]`
-/

namespace A100962.P12856392552388006752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100962.P12856392552388006752

/-! ## A100962.P11934998694701042581

`eq[2*A105700(n), A002126(n)]`
-/

namespace A100962.P11934998694701042581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100962.P11934998694701042581

/-! ## A100962.P10061685594962046942

`eq[A064911(n+1), A243485(n+1)]+1`
-/

namespace A100962.P10061685594962046942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243485 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A100962.P10061685594962046942

/-! ## A100962.P16865729535806896321

`eq[A073610(n+1), A353480(n+1)]+1`
-/

namespace A100962.P16865729535806896321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A100962.P16865729535806896321

/-! ## A100962.P7372455447856628316

`eq[A004525(A002126(n)), A105700(n)]`
-/

namespace A100962.P7372455447856628316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A002126 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100962.P7372455447856628316

/-! ## A100962.P14793888821683471617

`eq[A002126(n)/A010141(n), A105700(n)]`
-/

namespace A100962.P14793888821683471617
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002126 n : ℚ) / (A010141 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A100962.P14793888821683471617

/-! ## A100962.P3170314652726331726

`A141310(eq[A073610(n+1), A353480(n+1)])`
-/

namespace A100962.P3170314652726331726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A100962.P3170314652726331726

/-!
# A100963: a(1)=1. a(n) = a(n-1) + sum of the triangular numbers which are among the first (n-1) terms of the sequence.

The programs for A100963, there is no canonical definition to state claims against.
-/

/-! ## A100963.P7270286364182567870

`∑[A284837(A113402(n+1)²)]`
-/

namespace A100963.P7270286364182567870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284837 (A113402 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100963.P7270286364182567870

/-! ## A100963.P7337343208290999026

`∑[A100196(A055779(∑[char[∑[n]]]))]`
-/

namespace A100963.P7337343208290999026
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A055779 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100963.P7337343208290999026

/-! ## A100963.P4289593282596985487

`∑[A003056(A036591(A127739(n+1)))]`
-/

namespace A100963.P4289593282596985487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A036591 (A127739 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100963.P4289593282596985487

/-! ## A100963.P8522830260333016113

`∑[A344651(A057944(n)²)]`
-/

namespace A100963.P8522830260333016113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344651 (A057944 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100963.P8522830260333016113

/-! ## A100963.P16285432617710944072

`∑[∑[A295848(A292890(n+1))]]`
-/

namespace A100963.P16285432617710944072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295848 (A292890 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100963.P16285432617710944072

/-!
# A100964: Smallest prime number that begins a prime gap of at least 2n.

The programs for A100964, there is no canonical definition to state claims against.
-/

/-! ## A100964.P17883374229309463911

`A030296(Δ[n²])-1`
-/

namespace A100964.P17883374229309463911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A100964.P17883374229309463911

/-! ## A100964.P4431189270491629572

`A030296(2*n+1)-log2(1/2)-2`
-/

namespace A100964.P4431189270491629572
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030296 (2 * n + 1) : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - 2

end

end A100964.P4431189270491629572

/-! ## A100964.P6813778825605168444

`or(1, A104138(2*n))`
-/

namespace A100964.P6813778825605168444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A104138 (2 * n))

end

end A100964.P6813778825605168444

/-! ## A100964.P10293521018080051625

`A104138(A004277(n))`
-/

namespace A100964.P10293521018080051625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A004277 n).toNat

end

end A100964.P10293521018080051625

/-! ## A100964.P12000194921218776728

`A104138(A059010(n))`
-/

namespace A100964.P12000194921218776728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A059010 n).toNat

end

end A100964.P12000194921218776728

/-! ## A100964.P16777045382448953226

`A104138(A212439(n))`
-/

namespace A100964.P16777045382448953226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A212439 n).toNat

end

end A100964.P16777045382448953226

/-! ## A100964.P8475945980422384810

`A104138(A004275(n+1))`
-/

namespace A100964.P8475945980422384810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A004275 (n + 1)).toNat

end

end A100964.P8475945980422384810

/-! ## A100964.P4749121973938092133

`A104138(A029739(n+1))`
-/

namespace A100964.P4749121973938092133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A029739 (n + 1)).toNat

end

end A100964.P4749121973938092133

/-! ## A100964.P7305121401612409970

`A104138(A047236(n+1))`
-/

namespace A100964.P7305121401612409970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A047236 (n + 1)).toNat

end

end A100964.P7305121401612409970

/-! ## A100964.P1874655414618259336

`A104138(A054684(n+1))`
-/

namespace A100964.P1874655414618259336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A054684 (n + 1)).toNat

end

end A100964.P1874655414618259336

/-! ## A100964.P3846477220478255627

`A104138(A121559(n+1)+2*n)`
-/

namespace A100964.P3846477220478255627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A121559 (n + 1) + (2 * n : ℤ)).toNat

end

end A100964.P3846477220478255627

/-! ## A100964.P7090137767840349536

`A104138(Δ[n²])`
-/

namespace A100964.P7090137767840349536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100964.P7090137767840349536

/-! ## A100964.P11623985945884144870

`A104138(2*n+1)+A008437(2*n)`
-/

namespace A100964.P11623985945884144870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (2 * n + 1) + A008437 (2 * n)

end

end A100964.P11623985945884144870

/-! ## A100964.P18393439864036763741

`A104106(2*n+1)*A104138(2*n+1)`
-/

namespace A100964.P18393439864036763741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104106 (2 * n + 1) * A104138 (2 * n + 1)

end

end A100964.P18393439864036763741

/-!
# A100965: Smallest prime number that ends a prime gap of at least 2n.

The programs for A100965, there is no canonical definition to state claims against.
-/

/-! ## A100965.P7673496745554262417

`A001632(A001223(A144309(n+1))/2)`
-/

namespace A100965.P7673496745554262417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001632 (SequenceMachineLib.roundAway ((A001223 (A144309 (n + 1)).toNat : ℚ) / 2)).toNat

end

end A100965.P7673496745554262417

/-! ## A100965.P16699496305840546615

`A100964(n+1)+A001223(A144309(n+1))`
-/

namespace A100965.P16699496305840546615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100964 (n + 1) + A001223 (A144309 (n + 1)).toNat

end

end A100965.P16699496305840546615

/-! ## A100965.P5929665269343252613

`A104138(Δ[n²])+A001223(A144309(n+1))`
-/

namespace A100965.P5929665269343252613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A001223 (A144309 (n + 1)).toNat

end

end A100965.P5929665269343252613

/-! ## A100965.P14453304843242646714

`A001223(A144309(n+1))+A104138(2*n+1)`
-/

namespace A100965.P14453304843242646714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A144309 (n + 1)).toNat + A104138 (2 * n + 1)

end

end A100965.P14453304843242646714

/-! ## A100965.P12437657188699723962

`A001223(A144309(n+1))+A030296(Δ[n²])-1`
-/

namespace A100965.P12437657188699723962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A144309 (n + 1)).toNat + (A030296 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1)

end

end A100965.P12437657188699723962

/-! ## A100965.P15151929868476131348

`A001223(A144309(n+1))+A030296(2*n+1)-log2(1/2)-2`
-/

namespace A100965.P15151929868476131348
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001223 (A144309 (n + 1)).toNat : ℝ) + ((A030296 (2 * n + 1) : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - 2)

end

end A100965.P15151929868476131348

/-!
# A100966: Values of k such that EulerPhi(k) < k/(exp(EulerGamma)*log(log(k))).

The programs for A100966, there is no canonical definition to state claims against.
-/

/-! ## A100966.P222214691461583304

`∩[A216442(n+1), A295585(n+1)]`
-/

namespace A100966.P222214691461583304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100966.P222214691461583304

/-! ## A100966.P15594750554015659486

`lt[A181831(n), ∑[A072000(n+1)]]`
-/

namespace A100966.P15594750554015659486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181831 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100966.P15594750554015659486

/-! ## A100966.P11092471752528628907

`lt[A063708(n)+1, A008578(n+1)]`
-/

namespace A100966.P11092471752528628907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063708 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100966.P11092471752528628907

/-! ## A100966.P16718578392276875547

`lt[A019320(n)+12, A130274(n+1)]`
-/

namespace A100966.P16718578392276875547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 n + 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130274 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100966.P16718578392276875547

/-! ## A100966.P8980426976947299458

`lt[A019320(n), A138938(A028310(n))]`
-/

namespace A100966.P8980426976947299458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138938 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100966.P8980426976947299458

/-!
# A100967: Least k such that binomial(2k + 1, k - n) >= binomial(2k, k).

The programs for A100967, there is no canonical definition to state claims against.
-/

/-! ## A100967.P8787707700272061672

`A167389((n+2)*A194907(n+1))`
-/

namespace A100967.P8787707700272061672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167389 ((n + 2 : ℤ) * A194907 (n + 1)).toNat

end

end A100967.P8787707700272061672

/-! ## A100967.P7906604310332632920

`A167389(lcm(A002378(n+1), A194907(n+1)))`
-/

namespace A100967.P7906604310332632920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167389 (Int.lcm (A002378 (n + 1)) (A194907 (n + 1)))

end

end A100967.P7906604310332632920

/-! ## A100967.P7765341689752780555

`A167389(A132016(n+1)+A194907(n+1)²)`
-/

namespace A100967.P7765341689752780555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167389 (A132016 (n + 1) + A194907 (n + 1) ^ 2).toNat

end

end A100967.P7765341689752780555

/-! ## A100967.P6663334028314910037

`A167389(A194907(n+1)+A194907(n+1)²)`
-/

namespace A100967.P6663334028314910037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167389 (A194907 (n + 1) + A194907 (n + 1) ^ 2).toNat

end

end A100967.P6663334028314910037

/-! ## A100967.P8467240393341330518

`A329988(∑[n+1])+1`
-/

namespace A100967.P8467240393341330518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329988 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A100967.P8467240393341330518

/-!
# A100968: Integers that are Rhonda numbers to base 4.

The programs for A100968, there is no canonical definition to state claims against.
-/

/-! ## A100968.P6347768791036491296

`A291925(∑[n+1])`
-/

namespace A100968.P6347768791036491296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100968.P6347768791036491296

/-! ## A100968.P15184122768791199316

`abs(1-A291925(C(n+2, 2)))+1`
-/

namespace A100968.P15184122768791199316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A291925 (Nat.choose (n + 2) 2)| + 1

end

end A100968.P15184122768791199316

/-! ## A100968.P3085209253064719829

`A291925(C(n+2, n))-4/2+2`
-/

namespace A100968.P3085209253064719829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291925 (Nat.choose (n + 2) n) : ℚ) - (4 : ℚ) / 2 + 2

end

end A100968.P3085209253064719829

/-! ## A100968.P14989908471720999556

`record[A291925(A117142(n+1))]`
-/

namespace A100968.P14989908471720999556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100968.P14989908471720999556

/-! ## A100968.P8013693062719530637

`record[A291925(A160791(n+1))]`
-/

namespace A100968.P8013693062719530637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A160791 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100968.P8013693062719530637

/-! ## A100968.P5991227689529504870

`record[A291925(A209268(n+1))]`
-/

namespace A100968.P5991227689529504870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A209268 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100968.P5991227689529504870

/-! ## A100968.P15018879499629405326

`record[A291925(A254047(n+1))]`
-/

namespace A100968.P15018879499629405326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A254047 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100968.P15018879499629405326

/-! ## A100968.P6920442290120216264

`record[A291925(A257506(n+1))]`
-/

namespace A100968.P6920442290120216264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A257506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100968.P6920442290120216264

/-! ## A100968.P683948127059846131

`record[A291925(A000217(A065648(n)))]`
-/

namespace A100968.P683948127059846131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000217 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100968.P683948127059846131

/-! ## A100968.P4679900818523091832

`A007318(A000217(2*n))*A291925(A000217(n+1))`
-/

namespace A100968.P4679900818523091832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (2 * n)).toNat * A291925 (A000217 (n + 1)).toNat

end

end A100968.P4679900818523091832

/-!
# A100969: Integers that are Rhonda numbers to base 6.

The programs for A100969, there is no canonical definition to state claims against.
-/

/-! ## A100969.P13879517505856143400

`A291925(∑[n+2])`
-/

namespace A100969.P13879517505856143400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100969.P13879517505856143400

/-! ## A100969.P12079618208013947182

`or(char[1], A291925(A000096(n+1)))`
-/

namespace A100969.P12079618208013947182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A291925 (A000096 (n + 1)).toNat)

end

end A100969.P12079618208013947182

/-! ## A100969.P14185686038180731997

`A291925(A167614(n+1)-4)/log2(4/2)`
-/

namespace A100969.P14185686038180731997
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A291925 (A167614 (n + 1) - 4).toNat : ℝ) / Real.logb 2 ((4 : ℚ) / 2 : ℝ)

end

end A100969.P14185686038180731997

/-! ## A100969.P8930770149076533718

`abs(A291925(abs(n-1-A052905(n)))-n)+n`
-/

namespace A100969.P8930770149076533718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A291925 |(n : ℤ) - 1 - A052905 n|.toNat - (n : ℤ))| + (n : ℤ)

end

end A100969.P8930770149076533718

/-! ## A100969.P8067539185246328840

`record[A291925(A000096(A065648(n)))]`
-/

namespace A100969.P8067539185246328840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000096 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100969.P8067539185246328840

/-! ## A100969.P12043998820156453048

`record[A291925(A000096(A126759(n)))]`
-/

namespace A100969.P12043998820156453048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100969.P12043998820156453048

/-! ## A100969.P12984942573924952511

`record[A291925(A000096(A020652(n+1)))]`
-/

namespace A100969.P12984942573924952511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000096 (A020652 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100969.P12984942573924952511

/-! ## A100969.P13045977812480307417

`record[A291925(A000096(A027750(n+1)))]`
-/

namespace A100969.P13045977812480307417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000096 (A027750 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100969.P13045977812480307417

/-! ## A100969.P14572110113295756281

`A291925(A000096(n+1))+A000007(n+1)`
-/

namespace A100969.P14572110113295756281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A100969.P14572110113295756281

/-! ## A100969.P6788603544276192288

`A291925(A000096(n+1))+A000038(n+1)`
-/

namespace A100969.P6788603544276192288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000096 (n + 1)).toNat + A000038 (n + 1)

end

end A100969.P6788603544276192288

/-! ## A100969.P6096539279985219244

`A007318(C(2, n))*A291925(A000096(n+1))`
-/

namespace A100969.P6096539279985219244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A291925 (A000096 (n + 1)).toNat

end

end A100969.P6096539279985219244

/-! ## A100969.P5086353856202917952

`A007318(floor(n/81))*A291925(A000096(n+1))`
-/

namespace A100969.P5086353856202917952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 81⌋.toNat * A291925 (A000096 (n + 1)).toNat

end

end A100969.P5086353856202917952

/-! ## A100969.P8689113633249887500

`A000041(C(n, n²))*A291925(A000096(n+1))`
-/

namespace A100969.P8689113633249887500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A291925 (A000096 (n + 1)).toNat

end

end A100969.P8689113633249887500

/-! ## A100969.P7979886288066281483

`A291925(A000096(n+1))+A008683(4*(n+1))`
-/

namespace A100969.P7979886288066281483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000096 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A100969.P7979886288066281483

/-! ## A100969.P16197993790962985586

`A000108(C(2, n+2))*A291925(A000096(n+1))`
-/

namespace A100969.P16197993790962985586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A291925 (A000096 (n + 1)).toNat

end

end A100969.P16197993790962985586

/-! ## A100969.P16652460888379548065

`log2(A020639(2*(n+1)))*A291925(A000096(n+1))`
-/

namespace A100969.P16652460888379548065
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 1)) : ℝ) * (A291925 (A000096 (n + 1)).toNat : ℝ)

end

end A100969.P16652460888379548065

/-! ## A100969.P14531390914225514648

`or(-1, A020639(n+1))+A291925(A000096(n+1))+1`
-/

namespace A100969.P14531390914225514648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A020639 (n + 1)) + (A291925 (A000096 (n + 1)).toNat + 1)

end

end A100969.P14531390914225514648

/-! ## A100969.P16271281283326866710

`A001221(A007918(n))*A291925(A000096(n+1))`
-/

namespace A100969.P16271281283326866710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007918 n).toNat * A291925 (A000096 (n + 1)).toNat

end

end A100969.P16271281283326866710

/-! ## A100969.P15205695703750326579

`A291925(A000096(n+1))+A000122(A000040(n+1))`
-/

namespace A100969.P15205695703750326579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000096 (n + 1)).toNat + A000122 (A000040 (n + 1)).toNat

end

end A100969.P15205695703750326579

/-! ## A100969.P15520067758078820863

`A005361(A000040(n+2))*A291925(A000096(n+1))`
-/

namespace A100969.P15520067758078820863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A000040 (n + 2)).toNat * A291925 (A000096 (n + 1)).toNat

end

end A100969.P15520067758078820863

/-!
# A100970: Integers that are Rhonda numbers to base 8.

The programs for A100970, there is no canonical definition to state claims against.
-/

/-! ## A100970.P5068303984614210784

`A291925(∑[n+3]+1)`
-/

namespace A100970.P5068303984614210784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A100970.P5068303984614210784

/-!
# A100971: Integers that are Rhonda numbers to base 12.

The programs for A100971, there is no canonical definition to state claims against.
-/

/-! ## A100971.P6135112913324940206

`A291925((n+4)²-∑[n+1]+1)`
-/

namespace A100971.P6135112913324940206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A100971.P6135112913324940206

/-! ## A100971.P1658696100273349558

`or(char[2], A291925(A052905(n+3)))`
-/

namespace A100971.P1658696100273349558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A291925 (A052905 (n + 3)).toNat)

end

end A100971.P1658696100273349558

/-! ## A100971.P2603721555060025915

`or(char[18], A291925(A056115(n+1)+10))`
-/

namespace A100971.P2603721555060025915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A291925 (A056115 (n + 1) + 10).toNat)

end

end A100971.P2603721555060025915

/-! ## A100971.P12401749180485207467

`abs(A020985(n)*A291925(A052905(n+3)))`
-/

namespace A100971.P12401749180485207467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020985 n * A291925 (A052905 (n + 3)).toNat|

end

end A100971.P12401749180485207467

/-! ## A100971.P8312878978940110138

`char[A028242(n)]*A291925(A052905(n+3))`
-/

namespace A100971.P8312878978940110138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A291925 (A052905 (n + 3)).toNat

end

end A100971.P8312878978940110138

/-! ## A100971.P6770863769680870890

`A291925(A052905(n+3))%Δ[A014798(n)]`
-/

namespace A100971.P6770863769680870890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291925 (A052905 (n + 3)).toNat) (f1 (n + 1) - f1 n)

end

end A100971.P6770863769680870890

/-! ## A100971.P16120739970717434596

`A291925(A052905(n+3))+A000007(n+1)`
-/

namespace A100971.P16120739970717434596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A052905 (n + 3)).toNat + A000007 (n + 1)

end

end A100971.P16120739970717434596

/-! ## A100971.P8938508940471427030

`A291925(A052905(n+3))+A000035(2*n)`
-/

namespace A100971.P8938508940471427030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A052905 (n + 3)).toNat + A000035 (2 * n)

end

end A100971.P8938508940471427030

/-! ## A100971.P12602217437668696914

`A010684(2*n)*A291925(A052905(n+3))`
-/

namespace A100971.P12602217437668696914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (2 * n) * A291925 (A052905 (n + 3)).toNat

end

end A100971.P12602217437668696914

/-! ## A100971.P13654797408723035928

`A007318(C(2, n))*A291925(A052905(n+3))`
-/

namespace A100971.P13654797408723035928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A291925 (A052905 (n + 3)).toNat

end

end A100971.P13654797408723035928

/-! ## A100971.P6123367486361973421

`A291925(A052905(n+3))+A046978(24*n)`
-/

namespace A100971.P6123367486361973421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A052905 (n + 3)).toNat + A046978 (24 * n)

end

end A100971.P6123367486361973421

/-! ## A100971.P3988565584429168235

`A000041(C(n, n²))*A291925(A052905(n+3))`
-/

namespace A100971.P3988565584429168235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A291925 (A052905 (n + 3)).toNat

end

end A100971.P3988565584429168235

/-! ## A100971.P4811517471519703952

`A291925(A052905(n+3))+A008683(4*(n+1))`
-/

namespace A100971.P4811517471519703952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A052905 (n + 3)).toNat + A008683 (4 * (n + 1))

end

end A100971.P4811517471519703952

/-! ## A100971.P16284510545728198078

`A014963(10*(n+1))*A291925(A052905(n+3))`
-/

namespace A100971.P16284510545728198078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A291925 (A052905 (n + 3)).toNat

end

end A100971.P16284510545728198078

/-! ## A100971.P12338023020245269536

`A007318(val(n+1, 4))*A291925(A052905(n+3))`
-/

namespace A100971.P12338023020245269536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 4) * A291925 (A052905 (n + 3)).toNat

end

end A100971.P12338023020245269536

/-! ## A100971.P7037908633044820447

`A000203(gcd(n, n+1))*A291925(A052905(n+3))`
-/

namespace A100971.P7037908633044820447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A291925 (A052905 (n + 3)).toNat

end

end A100971.P7037908633044820447

/-! ## A100971.P8204332709335677235

`val(A000040(n+1), 2)!*A291925(A052905(n+3))`
-/

namespace A100971.P8204332709335677235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2) : ℤ) * A291925 (A052905 (n + 3)).toNat

end

end A100971.P8204332709335677235

/-! ## A100971.P1008155326043340307

`A001222(A008578(n+2))*A291925(A052905(n+3))`
-/

namespace A100971.P1008155326043340307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 2)).toNat * A291925 (A052905 (n + 3)).toNat

end

end A100971.P1008155326043340307

/-! ## A100971.P15247838392757587830

`A007318(A020639(2*(n+1)))*A291925(A052905(n+3))`
-/

namespace A100971.P15247838392757587830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (2 * (n + 1))).toNat * A291925 (A052905 (n + 3)).toNat

end

end A100971.P15247838392757587830

/-!
# A100972: Integers that are Rhonda numbers to base 14.

The programs for A100972, there is no canonical definition to state claims against.
-/

/-! ## A100972.P9224013084454552399

`A291925(A055999(n+4))`
-/

namespace A100972.P9224013084454552399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A055999 (n + 4)).toNat

end

end A100972.P9224013084454552399

/-! ## A100972.P3752484019364675420

`A291925(A134227(n+5))`
-/

namespace A100972.P3752484019364675420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A134227 (n + 5)).toNat

end

end A100972.P3752484019364675420

/-! ## A100972.P9259878133582989444

`A291925(Δ[A023551(n+2)])`
-/

namespace A100972.P9259878133582989444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (f1 (n + 1) - f1 n).toNat

end

end A100972.P9259878133582989444

/-! ## A100972.P4879037822614861709

`A291925(A052905(n+4)-1)`
-/

namespace A100972.P4879037822614861709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A052905 (n + 4) - 1).toNat

end

end A100972.P4879037822614861709

/-! ## A100972.P9893782497871650750

`A291925(A056000(n+3)+4)`
-/

namespace A100972.P9893782497871650750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A056000 (n + 3) + 4).toNat

end

end A100972.P9893782497871650750

/-! ## A100972.P1230044800470956651

`A291925(A046691(n+5)-2)`
-/

namespace A100972.P1230044800470956651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A046691 (n + 5) - 2).toNat

end

end A100972.P1230044800470956651

/-! ## A100972.P1025317264403778458

`A291925(A000217(n+7)-6)`
-/

namespace A100972.P1025317264403778458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000217 (n + 7) - 6).toNat

end

end A100972.P1025317264403778458

/-! ## A100972.P5315951395558197155

`A291925(A000124(n+7)-7)`
-/

namespace A100972.P5315951395558197155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000124 (n + 7) - 7).toNat

end

end A100972.P5315951395558197155

/-! ## A100972.P18409108436676151238

`A291925(A000096(n+5)+n+2)`
-/

namespace A100972.P18409108436676151238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A100972.P18409108436676151238

/-! ## A100972.P779608675825971469

`A291925(Δ[n²]+A046691(n+3)+10)`
-/

namespace A100972.P779608675825971469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A046691 (n + 3) + 10)).toNat

end

end A100972.P779608675825971469

/-! ## A100972.P11999785840969728059

`A291925(A008585(n+4)+A000217(n+4))`
-/

namespace A100972.P11999785840969728059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A008585 (n + 4) + A000217 (n + 4)).toNat

end

end A100972.P11999785840969728059

/-! ## A100972.P496314506083019642

`A291925(eq[4, A219347(n)])`
-/

namespace A100972.P496314506083019642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A100972.P496314506083019642

/-!
# A100973: Integers that are Rhonda numbers to base 9.

The programs for A100973, there is no canonical definition to state claims against.
-/

/-! ## A100973.P7264667466488892199

`A291925(∑[n+4]+3)`
-/

namespace A100973.P7264667466488892199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A100973.P7264667466488892199

/-! ## A100973.P2416847269514767064

`record[A291925(A167499(abs(1-n)+2)-8)]`
-/

namespace A100973.P2416847269514767064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A167499 (|1 - (n : ℤ)| + 2).toNat - 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100973.P2416847269514767064

/-! ## A100973.P13912052736306794520

`A291925(A167499(n+3)-8)-log2(4/2)+1`
-/

namespace A100973.P13912052736306794520
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A291925 (A167499 (n + 3) - 8).toNat : ℝ) - Real.logb 2 ((4 : ℚ) / 2 : ℝ) + 1

end

end A100973.P13912052736306794520

/-! ## A100973.P7308642498546640109

`char[A057164(n)]*A291925(A155212(n)+5)`
-/

namespace A100973.P7308642498546640109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A291925 (A155212 n + 5).toNat

end

end A100973.P7308642498546640109

/-! ## A100973.P1046910244991664386

`record[A291925(eq[2, A219347(n)])]`
-/

namespace A100973.P1046910244991664386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100973.P1046910244991664386

/-!
# A100974: Integers that are Rhonda numbers to base 15.

The programs for A100974, there is no canonical definition to state claims against.
-/

/-! ## A100974.P876497545042209196

`A291925(A056126(n)+29)`
-/

namespace A100974.P876497545042209196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A056126 n + 29).toNat

end

end A100974.P876497545042209196

/-! ## A100974.P11696169698631687746

`A291925(A155212(n+4)+1)`
-/

namespace A100974.P11696169698631687746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A155212 (n + 4) + 1).toNat

end

end A100974.P11696169698631687746

/-! ## A100974.P7318979381341792563

`A291925(A056000(n+4)+3)`
-/

namespace A100974.P7318979381341792563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A056000 (n + 4) + 3).toNat

end

end A100974.P7318979381341792563

/-! ## A100974.P16083671475372193806

`A291925(A055999(n+5)-1)`
-/

namespace A100974.P16083671475372193806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A055999 (n + 5) - 1).toNat

end

end A100974.P16083671475372193806

/-! ## A100974.P8212075150977533224

`A291925(A052905(n+5)-2)`
-/

namespace A100974.P8212075150977533224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A052905 (n + 5) - 2).toNat

end

end A100974.P8212075150977533224

/-! ## A100974.P279431974327641847

`A291925(A134227(n+6)-1)`
-/

namespace A100974.P279431974327641847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A134227 (n + 6) - 1).toNat

end

end A100974.P279431974327641847

/-! ## A100974.P10966667098505030286

`A291925(A000096(n+7)-6)`
-/

namespace A100974.P10966667098505030286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000096 (n + 7) - 6).toNat

end

end A100974.P10966667098505030286

/-! ## A100974.P15306906106113287618

`A291925(A000217(n+8)-7)`
-/

namespace A100974.P15306906106113287618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000217 (n + 8) - 7).toNat

end

end A100974.P15306906106113287618

/-! ## A100974.P10749843281168398173

`A291925(A000124(n+8)-8)`
-/

namespace A100974.P10749843281168398173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000124 (n + 8) - 8).toNat

end

end A100974.P10749843281168398173

/-! ## A100974.P5401511320738095382

`A291925(n+1+A000217(n+7))`
-/

namespace A100974.P5401511320738095382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 ((n + 1 : ℤ) + A000217 (n + 7)).toNat

end

end A100974.P5401511320738095382

/-! ## A100974.P15263151309197234497

`A291925(A028387(n+4)-A055998(n))`
-/

namespace A100974.P15263151309197234497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A028387 (n + 4) - A055998 n).toNat

end

end A100974.P15263151309197234497

/-! ## A100974.P14816339598341946189

`A291925(A167614(n+5)+A005408(n+2))`
-/

namespace A100974.P14816339598341946189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A167614 (n + 5) + A005408 (n + 2)).toNat

end

end A100974.P14816339598341946189

/-!
# A100975: Integers that are Rhonda numbers to base 16.

The programs for A100975, there is no canonical definition to state claims against.
-/

/-! ## A100975.P12089932090590596073

`A291925(A155212(n+5))`
-/

namespace A100975.P12089932090590596073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A155212 (n + 5)).toNat

end

end A100975.P12089932090590596073

/-! ## A100975.P5919601479048123330

`A291925(A055999(n+6)-2)`
-/

namespace A100975.P5919601479048123330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A055999 (n + 6) - 2).toNat

end

end A100975.P5919601479048123330

/-! ## A100975.P7575212311394401713

`A291925(A052905(n+6)-3)`
-/

namespace A100975.P7575212311394401713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A052905 (n + 6) - 3).toNat

end

end A100975.P7575212311394401713

/-! ## A100975.P8129161464906231071

`A291925(A056115(n+4)+7)`
-/

namespace A100975.P8129161464906231071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A056115 (n + 4) + 7).toNat

end

end A100975.P8129161464906231071

/-! ## A100975.P14053177428377474092

`A291925(A055998(n+7)-5)`
-/

namespace A100975.P14053177428377474092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A055998 (n + 7) - 5).toNat

end

end A100975.P14053177428377474092

/-! ## A100975.P6482303232424477924

`A291925(A034856(n+8)-6)`
-/

namespace A100975.P6482303232424477924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A034856 (n + 8) - 6).toNat

end

end A100975.P6482303232424477924

/-! ## A100975.P2712169794334828120

`A291925(A000096(n+8)-7)`
-/

namespace A100975.P2712169794334828120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000096 (n + 8) - 7).toNat

end

end A100975.P2712169794334828120

/-! ## A100975.P316041036282216610

`A291925(A000124(n+9)-9)`
-/

namespace A100975.P316041036282216610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A000124 (n + 9) - 9).toNat

end

end A100975.P316041036282216610

/-! ## A100975.P15939818914089908381

`A291925(n+1+A000217(n+8))`
-/

namespace A100975.P15939818914089908381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 ((n + 1 : ℤ) + A000217 (n + 8)).toNat

end

end A100975.P15939818914089908381

/-! ## A100975.P5654470208863486375

`A291925(A167499(n+4)+A016813(n+4))`
-/

namespace A100975.P5654470208863486375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A167499 (n + 4) + A016813 (n + 4)).toNat

end

end A100975.P5654470208863486375

/-! ## A100975.P12437253825658362581

`A291925(A167614(n+5)+A016777(n+4))`
-/

namespace A100975.P12437253825658362581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A167614 (n + 5) + A016777 (n + 4)).toNat

end

end A100975.P12437253825658362581

/-! ## A100975.P16367952393898541306

`A291925(A167614(n+11)-A016789(n+14))`
-/

namespace A100975.P16367952393898541306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291925 (A167614 (n + 11) - A016789 (n + 14)).toNat

end

end A100975.P16367952393898541306

/-!
# A100978: Number of all extensions over Q_5 with degree n in the algebraic closure of Q_5.

The programs for A100978, there is no canonical definition to state claims against.
-/

/-! ## A100978.P6385564548147455624

`A072164(a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A100978.P6385564548147455624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A072164 (a (n - 1)).toNat

end

end A100978.P6385564548147455624

/-!
# A100980: Number of totally ramified extensions over Q_3 with degree n in the algebraic closure of Q_3.

The programs for A100980, there is no canonical definition to state claims against.
-/

/-! ## A100980.P7209610383097488536

`(n+1)*A146880(A282450(n))`
-/

namespace A100980.P7209610383097488536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A146880 (A282450 n).toNat

end

end A100980.P7209610383097488536

/-! ## A100980.P15637580518378180228

`lcm(n+1, A279967(A005011(n)))`
-/

namespace A100980.P15637580518378180228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A279967 (A005011 n).toNat)

end

end A100980.P15637580518378180228

/-!
# A100981: Number of totally ramified extensions over Q_5 with degree n in the algebraic closure of Q_5.

The programs for A100981, there is no canonical definition to state claims against.
-/

/-! ## A100981.P15091632398686924012

`lcm(a(n-1)!-n+1, n+1)` with `a(0)=1`
-/

namespace A100981.P15091632398686924012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm ((Nat.factorial (a (n - 1)) : ℤ) - (n : ℤ) + 1) (n + 1 : ℤ)

end

end A100981.P15091632398686924012

/-!
# A100982: Number of admissible sequences of order n; related to 3x+1 problem and Wagon's constant.

The programs for A100982, there is no canonical definition to state claims against.
-/

/-! ## A100982.P15236096755118372369

`floor(record[A260591(n+1)+acot(n)])`
-/

namespace A100982.P15236096755118372369
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A260591 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A100982.P15236096755118372369

/-! ## A100982.P815655409742884987

`A260591(Δ[A022330(n)])`
-/

namespace A100982.P815655409742884987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260591 (f1 (n + 1) - f1 n).toNat

end

end A100982.P815655409742884987

/-! ## A100982.P4142163168377268819

`A260591(A020914(n+1))`
-/

namespace A100982.P4142163168377268819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260591 (A020914 (n + 1)).toNat

end

end A100982.P4142163168377268819

/-! ## A100982.P4528901172262418270

`A260591(A204399(n+1))`
-/

namespace A100982.P4528901172262418270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260591 (A204399 (n + 1)).toNat

end

end A100982.P4528901172262418270

/-! ## A100982.P13335912908422752247

`A260591(A056576(n+1)+1)`
-/

namespace A100982.P13335912908422752247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260591 (A056576 (n + 1) + 1).toNat

end

end A100982.P13335912908422752247

/-! ## A100982.P244308275369958925

`A260591(A122437(n+2)-(n+1))`
-/

namespace A100982.P244308275369958925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260591 (A122437 (n + 2) - (n + 1 : ℤ)).toNat

end

end A100982.P244308275369958925

/-!
# A100986: Smallest k such that concatenation of r*k and 1 is a prime for all r = 1 to n but not prime for r = n+1, or smallest k such that 10*r*k+1 is a prime for all r = 1 to n but not prime for r = n+1.

The programs for A100986, there is no canonical definition to state claims against.
-/

/-! ## A100986.P6065623327060462687

`A089323(A100793(n))`
-/

namespace A100986.P6065623327060462687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089323 (A100793 n).toNat

end

end A100986.P6065623327060462687

/-! ## A100986.P851395049304675300

`A026741(A089323(n+1))`
-/

namespace A100986.P851395049304675300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A089323 (n + 1)).toNat

end

end A100986.P851395049304675300

/-!
# A100989: Number of partitions of n into parts free of odd hexagonal numbers and the only number with multiplicity in the unrestricted partitions is the number 2 with multiplicity of the form 3k+l, where k is a positive integer and l=0,1.

The programs for A100989, there is no canonical definition to state claims against.
-/

/-! ## A100989.P9863793449211964379

`A048766(xor(A000288(n+1), A024655(n)))`
-/

namespace A100989.P9863793449211964379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.xor (A000288 (n + 1)) (A024655 n)).toNat

end

end A100989.P9863793449211964379

/-! ## A100989.P10968710570835821406

`A073188(A160993(A055645(n)+A030121(n)))`
-/

namespace A100989.P10968710570835821406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A160993 (A055645 n + A030121 n).toNat).toNat

end

end A100989.P10968710570835821406

/-! ## A100989.P164038975489357748

`A114095(n+1)-A287272(A006697(n))`
-/

namespace A100989.P164038975489357748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114095 (n + 1) - A287272 (A006697 n).toNat

end

end A100989.P164038975489357748

/-! ## A100989.P17255730549193423167

`A378126(A052546(n))`
-/

namespace A100989.P17255730549193423167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378126 (A052546 n).toNat

end

end A100989.P17255730549193423167

/-! ## A100989.P1101316401960381704

`Δ[A204166(∑[A304991(n)])]`
-/

namespace A100989.P1101316401960381704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304991 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100989.P1101316401960381704

/-!
# A100990: a(n) = n^21 mod 100.

The programs for A100990, the canonical program `A100990.P1137242080379291754` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100990 has offset 0).

The definition of A100990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100990.P1137242080379291754

`A170786(n)%A199681(C(n, n²)!)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100990

/-- `A170786(n)%A199681(C(n, n²)!)` -/
def P1137242080379291754.Spec : Prop :=
  ∀ n, P1137242080379291754.a n = A100990 n

theorem P1137242080379291754.correct : P1137242080379291754.Spec := by
  intro n
  simp only [A100990]

end A100990

/-!
# A100992: Indices k of Fibonacci numbers F(k) (A000045) that are divisible by k+1.

The programs for A100992, the canonical program `A100992.P6507978965781304571` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100992 has offset 1).

The definition of A100992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100992.P6507978965781304571

`A123976(n+2)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100992

/-- `A123976(n+2)-1` -/
def P6507978965781304571.Spec : Prop :=
  ∀ n, P6507978965781304571.a n = A100992 (n + 1)

theorem P6507978965781304571.correct : P6507978965781304571.Spec := by
  intro n
  simp only [A100992, Nat.add_sub_cancel]

end A100992

/-! ## A100992.P13769892904993206455

`∑[abs(Δ[A123976(n+1)])]`
-/

namespace A100992.P13769892904993206455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100992.P13769892904993206455

namespace A100992

/-- `∑[abs(Δ[A123976(n+1)])]` -/
def P13769892904993206455.Spec : Prop :=
  ∀ n, P13769892904993206455.a n = A100992 (n + 1)

end A100992

/-! ## A100992.P10432280149215030606

`∑[A245092(Δ[A123976(n+1)])]`
-/

namespace A100992.P10432280149215030606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100992.P10432280149215030606

namespace A100992

/-- `∑[A245092(Δ[A123976(n+1)])]` -/
def P10432280149215030606.Spec : Prop :=
  ∀ n, P10432280149215030606.a n = A100992 (n + 1)

end A100992

/-! ## A100992.P10885742052791498229

`∑[A137735(Δ[A123976(n+1)]²)]`
-/

namespace A100992.P10885742052791498229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100992.P10885742052791498229

namespace A100992

/-- `∑[A137735(Δ[A123976(n+1)]²)]` -/
def P10885742052791498229.Spec : Prop :=
  ∀ n, P10885742052791498229.a n = A100992 (n + 1)

end A100992

/-! ## A100992.P10852537642400630883

`∑[Δ[A123976(n+1)]%A342189(n+1)]`
-/

namespace A100992.P10852537642400630883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A342189 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100992.P10852537642400630883

namespace A100992

/-- `∑[Δ[A123976(n+1)]%A342189(n+1)]` -/
def P10852537642400630883.Spec : Prop :=
  ∀ n, P10852537642400630883.a n = A100992 (n + 1)

end A100992

/-! ## A100992.P3569449096980028277

`eq[1, A111419(n+2)]+1`
-/

namespace A100992.P3569449096980028277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111419 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100992.P3569449096980028277

namespace A100992

/-- `eq[1, A111419(n+2)]+1` -/
def P3569449096980028277.Spec : Prop :=
  ∀ n, (P3569449096980028277.a n : ℤ) = A100992 (n + 1)

end A100992

/-! ## A100992.P6020420647464410901

`lt[1, C(A260222(n+1), n)]`
-/

namespace A100992.P6020420647464410901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A260222 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100992.P6020420647464410901

namespace A100992

/-- `lt[1, C(A260222(n+1), n)]` -/
def P6020420647464410901.Spec : Prop :=
  ∀ n, (P6020420647464410901.a n : ℤ) = A100992 (n + 1)

end A100992

/-! ## A100992.P15186041893584352159

`A004483(A123976(n+2))`
-/

namespace A100992.P15186041893584352159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A123976 (n + 2)).toNat

end

end A100992.P15186041893584352159

namespace A100992

/-- `A004483(A123976(n+2))` -/
def P15186041893584352159.Spec : Prop :=
  ∀ n, P15186041893584352159.a n = A100992 (n + 1)

end A100992

/-! ## A100992.P855498760437097432

`eq[A000007(n), A002752(n+1)]`
-/

namespace A100992.P855498760437097432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100992.P855498760437097432

namespace A100992

/-- `eq[A000007(n), A002752(n+1)]` -/
def P855498760437097432.Spec : Prop :=
  ∀ n, (P855498760437097432.a n : ℤ) = A100992 (n + 1)

end A100992

/-! ## A100992.P3687476293492077134

`eq[A000038(n), A002752(n+1)]`
-/

namespace A100992.P3687476293492077134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100992.P3687476293492077134

namespace A100992

/-- `eq[A000038(n), A002752(n+1)]` -/
def P3687476293492077134.Spec : Prop :=
  ∀ n, (P3687476293492077134.a n : ℤ) = A100992 (n + 1)

end A100992

/-! ## A100992.P14518037169432065750

`eq[A002752(n+1), A127802(n)]`
-/

namespace A100992.P14518037169432065750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100992.P14518037169432065750

namespace A100992

/-- `eq[A002752(n+1), A127802(n)]` -/
def P14518037169432065750.Spec : Prop :=
  ∀ n, (P14518037169432065750.a n : ℤ) = A100992 (n + 1)

end A100992

/-! ## A100992.P9941552255246578334

`lt[A052938(n), A260222(n+1)]`
-/

namespace A100992.P9941552255246578334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100992.P9941552255246578334

namespace A100992

/-- `lt[A052938(n), A260222(n+1)]` -/
def P9941552255246578334.Spec : Prop :=
  ∀ n, (P9941552255246578334.a n : ℤ) = A100992 (n + 1)

end A100992

/-! ## A100992.P186938380378579366

`eq[A028310(n)+1, A260222(n+1)]`
-/

namespace A100992.P186938380378579366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100992.P186938380378579366

namespace A100992

/-- `eq[A028310(n)+1, A260222(n+1)]` -/
def P186938380378579366.Spec : Prop :=
  ∀ n, (P186938380378579366.a n : ℤ) = A100992 (n + 1)

end A100992

/-! ## A100992.P14294394821116781029

`lt[A000203(n+1), A260222(n+1)+n]`
-/

namespace A100992.P14294394821116781029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100992.P14294394821116781029

namespace A100992

/-- `lt[A000203(n+1), A260222(n+1)+n]` -/
def P14294394821116781029.Spec : Prop :=
  ∀ n, (P14294394821116781029.a n : ℤ) = A100992 (n + 1)

end A100992

/-!
# A100993: Indices k of Fibonacci numbers F(k) (A000045) that are divisible by k-1.

The programs for A100993, there is no canonical definition to state claims against.
-/

/-! ## A100993.P1666146441659428267

`A069104(n+1)+1`
-/

namespace A100993.P1666146441659428267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1) + 1

end

end A100993.P1666146441659428267

/-! ## A100993.P15845758642597988620

`∩[A074215(n+1), A140971(n+1)]+1`
-/

namespace A100993.P15845758642597988620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A100993.P15845758642597988620

/-! ## A100993.P17274815796441192739

`eq[0, A002726(n+1)]+2`
-/

namespace A100993.P17274815796441192739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002726 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A100993.P17274815796441192739

/-! ## A100993.P3417101192719647531

`A020725(A069104(n+1))`
-/

namespace A100993.P3417101192719647531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A069104 (n + 1)).toNat

end

end A100993.P3417101192719647531

/-! ## A100993.P4727122751521347766

`record[A260228(n+1)+2-A260222(n+1)]`
-/

namespace A100993.P4727122751521347766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260228 (n + 1) + (2 - A260222 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100993.P4727122751521347766

/-! ## A100993.P17220872295705916846

`record[A000027(n+2)/(A002726(n+1)+1)]`
-/

namespace A100993.P17220872295705916846
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 2) : ℚ) / (A002726 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100993.P17220872295705916846

/-! ## A100993.P13679857840013628852

`record[(n+2)/A023172(A002726(n+1)+1)]`
-/

namespace A100993.P13679857840013628852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A023172 (A002726 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100993.P13679857840013628852

/-! ## A100993.P2996812264102254486

`record[A260228(n+1)-A260221(A260222(n+1))]`
-/

namespace A100993.P2996812264102254486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260228 (n + 1) - A260221 (A260222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100993.P2996812264102254486

/-! ## A100993.P9278251157455232637

`record[gcd(A002726(n+1), A008619(2*(n+1)))]`
-/

namespace A100993.P9278251157455232637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002726 (n + 1)) (A008619 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100993.P9278251157455232637

/-! ## A100993.P3084403435835658467

`eq[1, A297573(n+1)]+2`
-/

namespace A100993.P3084403435835658467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A100993.P3084403435835658467

/-!
# A100994: If n is a prime power p^m, m >= 1, then n, otherwise 1.

The programs for A100994, the canonical program `A100994.P12734037206336579450` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100994 has offset 1).

The definition of A100994 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A100995, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100994.P12734037206336579450

`A014963(n+1)^A100995(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A100994

/-- `A014963(n+1)^A100995(n+1)` -/
def P12734037206336579450.Spec : Prop :=
  ∀ n, P12734037206336579450.a n = (A100994 (n + 1) : ℚ)

end A100994

/-! ## A100994.P13959804858087986910

`lcm(n, A120112(n))+1`
-/

namespace A100994.P13959804858087986910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A120112 n) + 1

end

end A100994.P13959804858087986910

namespace A100994

/-- `lcm(n, A120112(n))+1` -/
def P13959804858087986910.Spec : Prop :=
  ∀ n, (P13959804858087986910.a n : ℤ) = A100994 (n + 1)

end A100994

/-! ## A100994.P8280423246503584011

`n*A010055(n+1)+1`
-/

namespace A100994.P8280423246503584011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010055 (n + 1) + 1

end

end A100994.P8280423246503584011

namespace A100994

/-- `n*A010055(n+1)+1` -/
def P8280423246503584011.Spec : Prop :=
  ∀ n, P8280423246503584011.a n = A100994 (n + 1)

end A100994

/-! ## A100994.P15059126895084563384

`n*A069513(n+1)+1`
-/

namespace A100994.P15059126895084563384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A069513 (n + 1) + 1

end

end A100994.P15059126895084563384

namespace A100994

/-- `n*A069513(n+1)+1` -/
def P15059126895084563384.Spec : Prop :=
  ∀ n, P15059126895084563384.a n = A100994 (n + 1)

end A100994

/-! ## A100994.P8303835440957464043

`A061537(n+1)%(n+2)`
-/

namespace A100994.P8303835440957464043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061537 (n + 1)) (n + 2 : ℤ)

end

end A100994.P8303835440957464043

namespace A100994

/-- `A061537(n+1)%(n+2)` -/
def P8303835440957464043.Spec : Prop :=
  ∀ n, P8303835440957464043.a n = A100994 (n + 1)

end A100994

/-! ## A100994.P1404601422615875203

`gcd(n+1, A069859(n+1))`
-/

namespace A100994.P1404601422615875203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A069859 (n + 1))

end

end A100994.P1404601422615875203

namespace A100994

/-- `gcd(n+1, A069859(n+1))` -/
def P1404601422615875203.Spec : Prop :=
  ∀ n, (P1404601422615875203.a n : ℤ) = A100994 (n + 1)

end A100994

/-! ## A100994.P5711412715861774213

`∏{e}[A014963(n+1), #+n]`
-/

namespace A100994.P5711412715861774213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + n)

end

end A100994.P5711412715861774213

namespace A100994

/-- `∏{e}[A014963(n+1), #+n]` -/
def P5711412715861774213.Spec : Prop :=
  ∀ n, (P5711412715861774213.a n : ℤ) = A100994 (n + 1)

end A100994

/-! ## A100994.P3669619609985996495

`C(n, A028236(n+1)²)+1`
-/

namespace A100994.P3669619609985996495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A028236 (n + 1) ^ 2).toNat + 1

end

end A100994.P3669619609985996495

namespace A100994

/-- `C(n, A028236(n+1)²)+1` -/
def P3669619609985996495.Spec : Prop :=
  ∀ n, (P3669619609985996495.a n : ℤ) = A100994 (n + 1)

end A100994

/-! ## A100994.P9395528981368342710

`ceil(A304233(n+1)/(n+2))`
-/

namespace A100994.P9395528981368342710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A304233 (n + 1) : ℚ) / (n + 2 : ℚ)⌉

end

end A100994.P9395528981368342710

namespace A100994

/-- `ceil(A304233(n+1)/(n+2))` -/
def P9395528981368342710.Spec : Prop :=
  ∀ n, P9395528981368342710.a n = A100994 (n + 1)

end A100994

/-! ## A100994.P11332909378439578331

`n*char[A181062(n+1)]+1`
-/

namespace A100994.P11332909378439578331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A100994.P11332909378439578331

namespace A100994

/-- `n*char[A181062(n+1)]+1` -/
def P11332909378439578331.Spec : Prop :=
  ∀ n, (P11332909378439578331.a n : ℤ) = A100994 (n + 1)

end A100994

/-! ## A100994.P5516158730115201118

`n*A354924(2*(n+1))+1`
-/

namespace A100994.P5516158730115201118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A354924 (2 * (n + 1)) + 1

end

end A100994.P5516158730115201118

namespace A100994

/-- `n*A354924(2*(n+1))+1` -/
def P5516158730115201118.Spec : Prop :=
  ∀ n, P5516158730115201118.a n = A100994 (n + 1)

end A100994

/-! ## A100994.P16126237428368093040

`(n+1)^(1-A143731(n+1))`
-/

namespace A100994.P16126237428368093040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (1 - A143731 (n + 1) : ℤ)

end

end A100994.P16126237428368093040

namespace A100994

/-- `(n+1)^(1-A143731(n+1))` -/
def P16126237428368093040.Spec : Prop :=
  ∀ n, P16126237428368093040.a n = (A100994 (n + 1) : ℚ)

end A100994

/-! ## A100994.P16209803155195150931

`(n+1)^(3-A287841(n+1))`
-/

namespace A100994.P16209803155195150931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (3 - A287841 (n + 1) : ℤ)

end

end A100994.P16209803155195150931

namespace A100994

/-- `(n+1)^(3-A287841(n+1))` -/
def P16209803155195150931.Spec : Prop :=
  ∀ n, P16209803155195150931.a n = (A100994 (n + 1) : ℚ)

end A100994

/-! ## A100994.P9409249850768508850

`n*A001221(n+1)!%2+1`
-/

namespace A100994.P9409249850768508850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.factorial (A001221 (n + 1)).toNat % 2) + 1

end

end A100994.P9409249850768508850

namespace A100994

/-- `n*A001221(n+1)!%2+1` -/
def P9409249850768508850.Spec : Prop :=
  ∀ n, (P9409249850768508850.a n : ℤ) = A100994 (n + 1)

end A100994

/-! ## A100994.P12589912191867271049

`A000961(A322981(n+1)+1)`
-/

namespace A100994.P12589912191867271049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A322981 (n + 1) + 1).toNat

end

end A100994.P12589912191867271049

namespace A100994

/-- `A000961(A322981(n+1)+1)` -/
def P12589912191867271049.Spec : Prop :=
  ∀ n, P12589912191867271049.a n = A100994 (n + 1)

end A100994

/-! ## A100994.P14698992333896761033

`gcd(A002378(n), A133790(n+1))`
-/

namespace A100994.P14698992333896761033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002378 n) (A133790 (n + 1))

end

end A100994.P14698992333896761033

namespace A100994

/-- `gcd(A002378(n), A133790(n+1))` -/
def P14698992333896761033.Spec : Prop :=
  ∀ n, (P14698992333896761033.a n : ℤ) = A100994 (n + 1)

end A100994

/-! ## A100994.P3400110695290628743

`gcd(A069859(n+1), A199343(n))`
-/

namespace A100994.P3400110695290628743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069859 (n + 1)) (A199343 n)

end

end A100994.P3400110695290628743

namespace A100994

/-- `gcd(A069859(n+1), A199343(n))` -/
def P3400110695290628743.Spec : Prop :=
  ∀ n, (P3400110695290628743.a n : ℤ) = A100994 (n + 1)

end A100994

/-! ## A100994.P11725004009672043941

`A133937(n+1)+A048671(n+1)`
-/

namespace A100994.P11725004009672043941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133937 (n + 1) + A048671 (n + 1)

end

end A100994.P11725004009672043941

namespace A100994

/-- `A133937(n+1)+A048671(n+1)` -/
def P11725004009672043941.Spec : Prop :=
  ∀ n, P11725004009672043941.a n = A100994 (n + 1)

end A100994

/-! ## A100994.P10033602535949583878

`1-n*A008683(A034444(n+1))`
-/

namespace A100994.P10033602535949583878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * A008683 (A034444 (n + 1)).toNat

end

end A100994.P10033602535949583878

namespace A100994

/-- `1-n*A008683(A034444(n+1))` -/
def P10033602535949583878.Spec : Prop :=
  ∀ n, P10033602535949583878.a n = A100994 (n + 1)

end A100994

/-! ## A100994.P12867153569502595538

`1-n*A008683(A082476(n+1))`
-/

namespace A100994.P12867153569502595538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * A008683 (A082476 (n + 1)).toNat

end

end A100994.P12867153569502595538

namespace A100994

/-- `1-n*A008683(A082476(n+1))` -/
def P12867153569502595538.Spec : Prop :=
  ∀ n, P12867153569502595538.a n = A100994 (n + 1)

end A100994

/-!
# A100995: If n is a prime power p^m, m >= 1, then m, otherwise 0.

The programs for A100995, the canonical program `A100995.P9596901243079307024` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100995 has offset 1).

The definition of A100995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100995.P9596901243079307024

`round(n*∏{e}[n+1, #/n])`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100995

/-- `round(n*∏{e}[n+1, #/n])` -/
def P9596901243079307024.Spec : Prop :=
  ∀ n, P9596901243079307024.a n = A100995 (n + 1)

theorem P9596901243079307024.correct : P9596901243079307024.Spec := by
  intro n
  simp only [A100995, Nat.add_sub_cancel]

end A100995

/-! ## A100995.P7707403592263442467

`round(n/∏{e}[n+1, n/#])`
-/

namespace A100995.P7707403592263442467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n : ℚ) / (Nat.factorization (f1 n) p : ℚ)))

end

end A100995.P7707403592263442467

namespace A100995

/-- `round(n/∏{e}[n+1, n/#])` -/
def P7707403592263442467.Spec : Prop :=
  ∀ n, P7707403592263442467.a n = A100995 (n + 1)

end A100995

/-! ## A100995.P8552684975573260459

`C(∑{e}[n+1, #], (∑{e}[n+1, #]!/∏{e}[n+1, #!])²)`
-/

namespace A100995.P8552684975573260459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) (SequenceMachineLib.roundAway (((Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p) : ℕ) : ℚ)) ^ 2)).toNat

end

end A100995.P8552684975573260459

namespace A100995

/-- `C(∑{e}[n+1, #], (∑{e}[n+1, #]!/∏{e}[n+1, #!])²)` -/
def P8552684975573260459.Spec : Prop :=
  ∀ n, (P8552684975573260459.a n : ℤ) = A100995 (n + 1)

end A100995

/-! ## A100995.P6713925301110033631

`∑{e}[A100994(n+1), #]`
-/

namespace A100995.P6713925301110033631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A100995.P6713925301110033631

namespace A100995

/-- `∑{e}[A100994(n+1), #]` -/
def P6713925301110033631.Spec : Prop :=
  ∀ n, (P6713925301110033631.a n : ℤ) = A100995 (n + 1)

end A100995

/-! ## A100995.P1821141538218042131

`∑{e}[n+1, #]*A010051(∏{p}[n+1, #])`
-/

namespace A100995.P1821141538218042131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A010051 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A100995.P1821141538218042131

namespace A100995

/-- `∑{e}[n+1, #]*A010051(∏{p}[n+1, #])` -/
def P1821141538218042131.Spec : Prop :=
  ∀ n, P1821141538218042131.a n = A100995 (n + 1)

end A100995

/-! ## A100995.P16417934222569858308

`C(A001222(n+1), (∑{e}[n+1, #]!/∏{e}[n+1, #!])²)`
-/

namespace A100995.P16417934222569858308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat (SequenceMachineLib.roundAway (((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ)) ^ 2)).toNat

end

end A100995.P16417934222569858308

namespace A100995

/-- `C(A001222(n+1), (∑{e}[n+1, #]!/∏{e}[n+1, #!])²)` -/
def P16417934222569858308.Spec : Prop :=
  ∀ n, (P16417934222569858308.a n : ℤ) = A100995 (n + 1)

end A100995

/-! ## A100995.P10817315745776223984

`A001222(A100994(n+1))`
-/

namespace A100995.P10817315745776223984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A100994 (n + 1)).toNat

end

end A100995.P10817315745776223984

namespace A100995

/-- `A001222(A100994(n+1))` -/
def P10817315745776223984.Spec : Prop :=
  ∀ n, P10817315745776223984.a n = A100995 (n + 1)

end A100995

/-! ## A100995.P5918886613007945031

`A136566(A062759(n+1))`
-/

namespace A100995.P5918886613007945031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136566 (A062759 (n + 1)).toNat

end

end A100995.P5918886613007945031

namespace A100995

/-- `A136566(A062759(n+1))` -/
def P5918886613007945031.Spec : Prop :=
  ∀ n, P5918886613007945031.a n = A100995 (n + 1)

end A100995

/-! ## A100995.P14470964323854887181

`A049084(A181819(n+1))`
-/

namespace A100995.P14470964323854887181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A181819 (n + 1)).toNat

end

end A100995.P14470964323854887181

namespace A100995

/-- `A049084(A181819(n+1))` -/
def P14470964323854887181.Spec : Prop :=
  ∀ n, P14470964323854887181.a n = A100995 (n + 1)

end A100995

/-! ## A100995.P17217421450980819737

`A000720(A369031(n+1))`
-/

namespace A100995.P17217421450980819737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A369031 (n + 1)).toNat

end

end A100995.P17217421450980819737

namespace A100995

/-- `A000720(A369031(n+1))` -/
def P17217421450980819737.Spec : Prop :=
  ∀ n, P17217421450980819737.a n = A100995 (n + 1)

end A100995

/-! ## A100995.P17032106402704331640

`A049084(A329607(n+1))`
-/

namespace A100995.P17032106402704331640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A329607 (n + 1)).toNat

end

end A100995.P17032106402704331640

namespace A100995

/-- `A049084(A329607(n+1))` -/
def P17032106402704331640.Spec : Prop :=
  ∀ n, P17032106402704331640.a n = A100995 (n + 1)

end A100995

/-! ## A100995.P3587946950392451094

`A037213(A394997(n+1))`
-/

namespace A100995.P3587946950392451094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A394997 (n + 1)).toNat

end

end A100995.P3587946950392451094

namespace A100995

/-- `A037213(A394997(n+1))` -/
def P3587946950392451094.Spec : Prop :=
  ∀ n, P3587946950392451094.a n = A100995 (n + 1)

end A100995

/-! ## A100995.P4005771340049962824

`A069513(n+1)*A325765(n)`
-/

namespace A100995.P4005771340049962824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) * A325765 n

end

end A100995.P4005771340049962824

namespace A100995

/-- `A069513(n+1)*A325765(n)` -/
def P4005771340049962824.Spec : Prop :=
  ∀ n, P4005771340049962824.a n = A100995 (n + 1)

end A100995

/-! ## A100995.P16773324660256901322

`A325765(n)%A100994(n+1)`
-/

namespace A100995.P16773324660256901322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325765 n) (A100994 (n + 1))

end

end A100995.P16773324660256901322

namespace A100995

/-- `A325765(n)%A100994(n+1)` -/
def P16773324660256901322.Spec : Prop :=
  ∀ n, P16773324660256901322.a n = A100995 (n + 1)

end A100995

/-! ## A100995.P743214525136365953

`∑{d}[A100994(n+1), A001221(#)]`
-/

namespace A100995.P743214525136365953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A100995.P743214525136365953

namespace A100995

/-- `∑{d}[A100994(n+1), A001221(#)]` -/
def P743214525136365953.Spec : Prop :=
  ∀ n, P743214525136365953.a n = A100995 (n + 1)

end A100995

/-! ## A100995.P8469016633788051707

`A193056(n+1)+A157658(n+1)`
-/

namespace A100995.P8469016633788051707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193056 (n + 1) + A157658 (n + 1)

end

end A100995.P8469016633788051707

namespace A100995

/-- `A193056(n+1)+A157658(n+1)` -/
def P8469016633788051707.Spec : Prop :=
  ∀ n, P8469016633788051707.a n = A100995 (n + 1)

end A100995

/-! ## A100995.P7958574219203082612

`A001222(n+1)*A010055(n+1)`
-/

namespace A100995.P7958574219203082612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A010055 (n + 1)

end

end A100995.P7958574219203082612

namespace A100995

/-- `A001222(n+1)*A010055(n+1)` -/
def P7958574219203082612.Spec : Prop :=
  ∀ n, P7958574219203082612.a n = A100995 (n + 1)

end A100995

/-! ## A100995.P17162552156082215979

`A010055(n+1)*A037916(n+1)`
-/

namespace A100995.P17162552156082215979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A037916 (n + 1)

end

end A100995.P17162552156082215979

namespace A100995

/-- `A010055(n+1)*A037916(n+1)` -/
def P17162552156082215979.Spec : Prop :=
  ∀ n, P17162552156082215979.a n = A100995 (n + 1)

end A100995

/-! ## A100995.P9089409569034143485

`A010055(n+1)*A051903(n+1)`
-/

namespace A100995.P9089409569034143485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A051903 (n + 1)

end

end A100995.P9089409569034143485

namespace A100995

/-- `A010055(n+1)*A051903(n+1)` -/
def P9089409569034143485.Spec : Prop :=
  ∀ n, P9089409569034143485.a n = A100995 (n + 1)

end A100995

/-! ## A100995.P12243150114929007632

`A010055(n+1)*A051904(n+1)`
-/

namespace A100995.P12243150114929007632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A051904 (n + 1)

end

end A100995.P12243150114929007632

namespace A100995

/-- `A010055(n+1)*A051904(n+1)` -/
def P12243150114929007632.Spec : Prop :=
  ∀ n, P12243150114929007632.a n = A100995 (n + 1)

end A100995

/-!
# A100996: a(1) = 1; a(n) is smallest positive integer such that a(n)*a(n-1)+1 is coprime to n.

The programs for A100996, there is no canonical definition to state claims against.
-/

/-! ## A100996.P11617138483271418194

`gcd(A124615(n), A295784(A018908(n)))`
-/

namespace A100996.P11617138483271418194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124615 n) (A295784 (A018908 n).toNat)

end

end A100996.P11617138483271418194

/-! ## A100996.P12631600072201502569

`gcd(A001223(n+1), A056239(A074303(n)))`
-/

namespace A100996.P12631600072201502569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001223 (n + 1)) (A056239 (A074303 n).toNat)

end

end A100996.P12631600072201502569

/-! ## A100996.P6248681888119292794

`A386574(n+1)-A386586(A007318(3*n+2))`
-/

namespace A100996.P6248681888119292794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386574 (n + 1) - A386586 (A007318 (3 * n + 2)).toNat

end

end A100996.P6248681888119292794

/-! ## A100996.P17882471441440297705

`val(A062767(A294367(n)), 2)`
-/

namespace A100996.P17882471441440297705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A062767 (A294367 n).toNat).toNat 2

end

end A100996.P17882471441440297705

/-! ## A100996.P3758179402918781660

`A126307(or(A253064(n), A332815(n)))`
-/

namespace A100996.P3758179402918781660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126307 (Int.lor (A253064 n) (A332815 n)).toNat

end

end A100996.P3758179402918781660

/-!
# A100997: Indices of primes in sequence defined by A(0) = 91, A(m) = 10*A(m-1) - 9 for m > 0.

The programs for A100997, there is no canonical definition to state claims against.
-/

/-! ## A100997.P14733301079893544473

`A056797(n+1)-1`
-/

namespace A100997.P14733301079893544473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056797 (n + 1) - 1

end

end A100997.P14733301079893544473

/-! ## A100997.P16703226644010243364

`A057428(n+1)+A056797(n+1)`
-/

namespace A100997.P16703226644010243364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A056797 (n + 1)

end

end A100997.P16703226644010243364

/-! ## A100997.P13418422413921162201

`A134824(n+2)+A056797(n+1)`
-/

namespace A100997.P13418422413921162201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A056797 (n + 1)

end

end A100997.P13418422413921162201

/-! ## A100997.P12512085794412435311

`A153881(n+2)+A056797(n+1)`
-/

namespace A100997.P12512085794412435311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A056797 (n + 1)

end

end A100997.P12512085794412435311

/-! ## A100997.P15531553238711103333

`A062157(2*(n+1))+A056797(n+1)`
-/

namespace A100997.P15531553238711103333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * (n + 1)) + A056797 (n + 1)

end

end A100997.P15531553238711103333

/-!
# A100998: Indices of primes in sequence defined by A(0) = 97, A(n) = 10*A(n-1) - 63 for n > 0.

The programs for A100998, there is no canonical definition to state claims against.
-/

/-! ## A100998.P14236364105219516165

`A096774(n+1)-1`
-/

namespace A100998.P14236364105219516165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096774 (n + 1) - 1

end

end A100998.P14236364105219516165

/-! ## A100998.P16224361118837596473

`abs(1-A096774(A008619(2*n)))`
-/

namespace A100998.P16224361118837596473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A096774 (A008619 (2 * n)).toNat|

end

end A100998.P16224361118837596473

/-! ## A100998.P16741113573626125338

`A134824(n+2)+A096774(n+1)`
-/

namespace A100998.P16741113573626125338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A096774 (n + 1)

end

end A100998.P16741113573626125338

/-! ## A100998.P14792109423609296239

`abs(A096774(n+1)+A057428(n+1))`
-/

namespace A100998.P14792109423609296239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096774 (n + 1) + A057428 (n + 1)|

end

end A100998.P14792109423609296239

/-! ## A100998.P7654221935182699676

`xor(-A096774(n+1), A057428(n+4))`
-/

namespace A100998.P7654221935182699676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A096774 (n + 1)) (A057428 (n + 4))

end

end A100998.P7654221935182699676

/-!
# A100999: Indices of primes in sequence defined by A(0) = 97, A(n) = 10*A(n-1) - 53 for n > 0.

The programs for A100999, there is no canonical definition to state claims against.
-/

/-! ## A100999.P12967587914770943499

`A100473(n+1)-1`
-/

namespace A100999.P12967587914770943499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100473 (n + 1) - 1

end

end A100999.P12967587914770943499

/-! ## A100999.P16853862249975610750

`xor(1, A100473(lt[∑{e}[n+1, #], 4]+1))`
-/

namespace A100999.P16853862249975610750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A100473 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1))

end

end A100999.P16853862249975610750

/-! ## A100999.P14652584381413040592

`A004442(A100473(n+1))`
-/

namespace A100999.P14652584381413040592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A100473 (n + 1)).toNat

end

end A100999.P14652584381413040592

/-! ## A100999.P15938528320921005068

`xor(1, A100473(A077168(n)))`
-/

namespace A100999.P15938528320921005068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A100473 (A077168 n).toNat)

end

end A100999.P15938528320921005068

/-! ## A100999.P5752078610459069206

`xor(1, A100473(A291769(n)))`
-/

namespace A100999.P5752078610459069206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A100473 (A291769 n).toNat)

end

end A100999.P5752078610459069206

