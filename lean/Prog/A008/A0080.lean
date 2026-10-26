import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
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
import Seq.B006.C000
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
# A008000: Coordination sequence T1 for Zeolite Code ABW and ATN.

The programs for A008000, the canonical program `A008000.P14598701383781270205` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008000 has offset 0).

The definition of A008000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008000.P14598701383781270205

`A008130(n)+A005893(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008000

/-- `A008130(n)+A005893(n)` -/
def P14598701383781270205.Spec : Prop :=
  ∀ n, P14598701383781270205.a n = A008000 n

theorem P14598701383781270205.correct : P14598701383781270205.Spec := by
  intro n
  simp only [A008000]

end A008000

/-! ## A008000.P16239728494784041483

`A008259(n)-A000212(n)`
-/

namespace A008000.P16239728494784041483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008259 n - A000212 n

end

end A008000.P16239728494784041483

namespace A008000

/-- `A008259(n)-A000212(n)` -/
def P16239728494784041483.Spec : Prop :=
  ∀ n, P16239728494784041483.a n = A008000 n

end A008000

/-! ## A008000.P12153877482068313368

`A008255(n)-A008130(n)`
-/

namespace A008000.P12153877482068313368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008255 n - A008130 n

end

end A008000.P12153877482068313368

namespace A008000

/-- `A008255(n)-A008130(n)` -/
def P12153877482068313368.Spec : Prop :=
  ∀ n, P12153877482068313368.a n = A008000 n

theorem P12153877482068313368.correct : P12153877482068313368.Spec := by
  intro n
  simp only [A008000, Nat.add_sub_cancel, A008000.P12153877482068313368.a, A008000.P14598701383781270205.a, A005893, A005893.P12560717778126936227.a, A008130, A008130.P6850248859462288160.a, A008255, A008255.P12648646354425310951.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008000

/-! ## A008000.P11736658622416423058

`A008259(n)-∑[A004523(n)]`
-/

namespace A008000.P11736658622416423058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008259 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008000.P11736658622416423058

namespace A008000

/-- `A008259(n)-∑[A004523(n)]` -/
def P11736658622416423058.Spec : Prop :=
  ∀ n, P11736658622416423058.a n = A008000 n

end A008000

/-! ## A008000.P14471639870206825216

`(A008255(n)+A005893(n))/2`
-/

namespace A008000.P14471639870206825216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008255 n + A005893 n : ℚ) / 2

end

end A008000.P14471639870206825216

namespace A008000

/-- `(A008255(n)+A005893(n))/2` -/
def P14471639870206825216.Spec : Prop :=
  ∀ n, P14471639870206825216.a n = (A008000 n : ℚ)

theorem P14471639870206825216.correct : P14471639870206825216.Spec := by
  intro n
  simp only [A008000, Nat.add_sub_cancel, A008000.P14471639870206825216.a, A008000.P14598701383781270205.a, A005893, A005893.P12560717778126936227.a, A008130, A008130.P6850248859462288160.a, A008255, A008255.P12648646354425310951.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008000

/-! ## A008000.P14020891177652185693

`n²+A010000(n)+A008130(n)`
-/

namespace A008000.P14020891177652185693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A010000 n + A008130 n)

end

end A008000.P14020891177652185693

namespace A008000

/-- `n²+A010000(n)+A008130(n)` -/
def P14020891177652185693.Spec : Prop :=
  ∀ n, P14020891177652185693.a n = A008000 n

end A008000

/-! ## A008000.P17119612911925113861

`A005893(n)+A007590(A004396(n))/2`
-/

namespace A008000.P17119612911925113861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005893 n : ℚ) + (A007590 (A004396 n).toNat : ℚ) / 2

end

end A008000.P17119612911925113861

namespace A008000

/-- `A005893(n)+A007590(A004396(n))/2` -/
def P17119612911925113861.Spec : Prop :=
  ∀ n, P17119612911925113861.a n = (A008000 n : ℚ)

end A008000

/-!
# A008001: Coordination sequence T1 for Zeolite Code AEI.

The programs for A008001, there is no canonical definition to state claims against.
-/

/-! ## A008001.P10898118322792573193

`∑[∑[A330861(A005318(n))]]`
-/

namespace A008001.P10898118322792573193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330861 (A005318 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008001.P10898118322792573193

/-! ## A008001.P9274994072233956672

`A096603(∑[∑[A342789(n+1)]])`
-/

namespace A008001.P9274994072233956672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342789 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096603 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008001.P9274994072233956672

/-! ## A008001.P13349475232729969164

`A096603(∑[∑[A269570(n+2)]])`
-/

namespace A008001.P13349475232729969164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269570 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096603 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008001.P13349475232729969164

/-! ## A008001.P5191928631394206106

`∑[∑[A319416(A264923(2*n+3))]]`
-/

namespace A008001.P5191928631394206106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (A264923 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008001.P5191928631394206106

/-! ## A008001.P5279024053380230056

`or(A008066(n), A145140(A080436(n+1)))`
-/

namespace A008001.P5279024053380230056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008066 n) (A145140 (A080436 (n + 1)).toNat)

end

end A008001.P5279024053380230056

/-!
# A008002: Coordination sequence T2 for Zeolite Code AEI.

The programs for A008002, there is no canonical definition to state claims against.
-/

/-! ## A008002.P9828670266444360494

`A057314(n)-A340998(A001611(n))`
-/

namespace A008002.P9828670266444360494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057314 n - A340998 ((A001611 n).toNat + 140)

end

end A008002.P9828670266444360494

/-! ## A008002.P6346210448446858134

`A057314(n)-∑[A122179(A265447(n+1)²)]`
-/

namespace A008002.P6346210448446858134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (A265447 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057314 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008002.P6346210448446858134

/-! ## A008002.P1433691482119751722

`A057314(n)-A102683(A033648(n))`
-/

namespace A008002.P1433691482119751722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057314 n - A102683 (A033648 n).toNat

end

end A008002.P1433691482119751722

/-! ## A008002.P13394594700600815982

`A057314(n)-A185035(A120126(n))`
-/

namespace A008002.P13394594700600815982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057314 n - A185035 (A120126 n).toNat

end

end A008002.P13394594700600815982

/-! ## A008002.P14752422583926807795

`A057314(n)-A185284(A212804(n))`
-/

namespace A008002.P14752422583926807795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057314 n - A185284 (A212804 n).toNat

end

end A008002.P14752422583926807795

/-!
# A008003: Coordination sequence T3 for Zeolite Code AEI.

The programs for A008003, there is no canonical definition to state claims against.
-/

/-! ## A008003.P8735552351660134531

`A008002(n)-A083894(A007999(n)+2)`
-/

namespace A008003.P8735552351660134531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008002 n - A083894 (A007999 n + 2).toNat

end

end A008003.P8735552351660134531

/-! ## A008003.P1026324224913342653

`∑[∑[A000005(A084601(n+1))]]`
-/

namespace A008003.P1026324224913342653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A084601 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008003.P1026324224913342653

/-! ## A008003.P3301794600859727488

`∑[∑[A000005(A106131(n+1))]]`
-/

namespace A008003.P3301794600859727488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A106131 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008003.P3301794600859727488

/-! ## A008003.P13095029045959836813

`∑[∑[A099774(A175350(n+1))]]`
-/

namespace A008003.P13095029045959836813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (A175350 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008003.P13095029045959836813

/-! ## A008003.P6769889566947242425

`∑[∑[A046951(A336565(n+1))]]`
-/

namespace A008003.P6769889566947242425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A336565 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008003.P6769889566947242425

/-!
# A008004: Coordination sequence T1 for Zeolite Code AEL.

The programs for A008004, there is no canonical definition to state claims against.
-/

/-! ## A008004.P13130311484590331314

`∑[∑[A104640(A289354(n+1))]]`
-/

namespace A008004.P13130311484590331314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (A289354 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008004.P13130311484590331314

/-! ## A008004.P12744873856282258637

`∑[∑[A104640(A023034(n+9))]]`
-/

namespace A008004.P12744873856282258637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (A023034 (n + 9)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008004.P12744873856282258637

/-! ## A008004.P9210123363356432693

`A038409(n)+A001221(A001757(n))`
-/

namespace A008004.P9210123363356432693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038409 n + A001221 (A001757 n).toNat

end

end A008004.P9210123363356432693

/-! ## A008004.P7591454965872200223

`A008197(n)-A043545(A002104(n))`
-/

namespace A008004.P7591454965872200223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008197 n - A043545 (A002104 n).toNat

end

end A008004.P7591454965872200223

/-!
# A008005: Coordination sequence T2 for Zeolite Code AEL.

The programs for A008005, there is no canonical definition to state claims against.
-/

/-! ## A008005.P15398725295262685998

`A008015(n)-A058133(A185044(2*n))`
-/

namespace A008005.P15398725295262685998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008015 n - A058133 (A185044 (2 * n)).toNat

end

end A008005.P15398725295262685998

/-! ## A008005.P1566263817085915789

`A008015(n)-A025465(A075834(n))`
-/

namespace A008005.P1566263817085915789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008015 n - A025465 (A075834 n).toNat

end

end A008005.P1566263817085915789

/-! ## A008005.P3484077218539735177

`A008015(n)-A185284(A000124(n))`
-/

namespace A008005.P3484077218539735177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008015 n - A185284 (A000124 n).toNat

end

end A008005.P3484077218539735177

/-! ## A008005.P9872561642720252538

`A008015(n)-A178798(A007999(n))`
-/

namespace A008005.P9872561642720252538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008015 n - A178798 (A007999 n).toNat

end

end A008005.P9872561642720252538

/-! ## A008005.P9928573567836357193

`A008015(n)-A185284(A007590(n))`
-/

namespace A008005.P9928573567836357193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008015 n - A185284 (A007590 n).toNat

end

end A008005.P9928573567836357193

/-!
# A008006: Coordination sequence T3 for Zeolite Code AEL.

The programs for A008006, there is no canonical definition to state claims against.
-/

/-! ## A008006.P9037653853061094549

`Δ[A007814(A316102(n)+1)]+∑[4*n]`
-/

namespace A008006.P9037653853061094549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A316102 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A008006.P9037653853061094549

/-! ## A008006.P9529327422502680943

`A014105(n)+A001227(A138178(n))`
-/

namespace A008006.P9529327422502680943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n + A001227 (A138178 n).toNat

end

end A008006.P9529327422502680943

/-! ## A008006.P6023308380375592772

`A105783(A087421(n))+A033600(n)`
-/

namespace A008006.P6023308380375592772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 (A087421 n).toNat + A033600 n

end

end A008006.P6023308380375592772

/-! ## A008006.P10138409758569638068

`A366912(A000219(n))+A008000(n)`
-/

namespace A008006.P10138409758569638068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366912 (A000219 n).toNat + A008000 n

end

end A008006.P10138409758569638068

/-!
# A008007: Coordination sequence T1 for Zeolite Code AET.

The programs for A008007, there is no canonical definition to state claims against.
-/

/-! ## A008007.P15745572580759759354

`A318274(A059585(n+1))`
-/

namespace A008007.P15745572580759759354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 (A059585 (n + 1)).toNat

end

end A008007.P15745572580759759354

/-! ## A008007.P7620466777957025680

`A003056(A124504(n)+A014787(n))`
-/

namespace A008007.P7620466777957025680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A124504 n + A014787 n).toNat

end

end A008007.P7620466777957025680

/-! ## A008007.P12764567679412339085

`A137814(n)+A000196(A254371(n))`
-/

namespace A008007.P12764567679412339085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137814 n + A000196 (A254371 n).toNat

end

end A008007.P12764567679412339085

/-! ## A008007.P15932188962724250159

`A027369(n)+A011746(A108951(n+5))`
-/

namespace A008007.P15932188962724250159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027369 n + A011746 (A108951 (n + 5)).toNat

end

end A008007.P15932188962724250159

/-!
# A008008: Coordination sequence T2 for Zeolite Code AET.

The programs for A008008, there is no canonical definition to state claims against.
-/

/-! ## A008008.P18178660159556331744

`A151878(A005354(n))+A008131(n)`
-/

namespace A008008.P18178660159556331744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A005354 n).toNat + A008131 n

end

end A008008.P18178660159556331744

/-! ## A008008.P15770269906644334170

`or(A008131(n), A064301(A149476(n)))`
-/

namespace A008008.P15770269906644334170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008131 n) (A064301 (A149476 n).toNat)

end

end A008008.P15770269906644334170

/-! ## A008008.P17753036842388851486

`or(A008131(n), A036987(A113031(n+1)))`
-/

namespace A008008.P17753036842388851486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008131 n) (A036987 (A113031 (n + 1)).toNat)

end

end A008008.P17753036842388851486

/-!
# A008011: Coordination sequence T5 for Zeolite Code AET.

The programs for A008011, there is no canonical definition to state claims against.
-/

/-! ## A008011.P2390170625694301927

`∑[∑[A319416(A255011(n))]]`
-/

namespace A008011.P2390170625694301927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (A255011 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008011.P2390170625694301927

/-!
# A008012: Coordination sequence T1 for Zeolite Code AFG.

The programs for A008012, there is no canonical definition to state claims against.
-/

/-! ## A008012.P8891839098382249187

`A301218(n)-A185284(A020742(n))`
-/

namespace A008012.P8891839098382249187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301218 n - A185284 (A020742 n).toNat

end

end A008012.P8891839098382249187

/-! ## A008012.P3459751100811582427

`A301218(n)-A185284(A094339(n+1))`
-/

namespace A008012.P3459751100811582427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301218 n - A185284 (A094339 (n + 1)).toNat

end

end A008012.P3459751100811582427

/-! ## A008012.P17390420986230854812

`A301218(n)-A336040(A157492(n+1))`
-/

namespace A008012.P17390420986230854812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301218 n - A336040 (A157492 (n + 1)).toNat

end

end A008012.P17390420986230854812

/-! ## A008012.P9163333979060563025

`xor(A301218(n), A333842(A125702(n+1)))`
-/

namespace A008012.P9163333979060563025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A301218 n) (A333842 (A125702 (n + 1)).toNat)

end

end A008012.P9163333979060563025

/-! ## A008012.P7929035731542057047

`A301218(n)+A269166(2^n)`
-/

namespace A008012.P7929035731542057047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301218 n + A269166 (2 ^ n)

end

end A008012.P7929035731542057047

/-!
# A008013: Coordination sequence occurring in Zeolite Codes AFG, CAN, LIO, LOS.

The programs for A008013, the canonical program `A008013.P14464025922531573754` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008013 has offset 0).

The definition of A008013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008013.P16930061830335493554

`A008265(n)-A008738(n)`
-/

namespace A008013.P16930061830335493554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008265 n - A008738 n

end

end A008013.P16930061830335493554

namespace A008013

/-- `A008265(n)-A008738(n)` -/
def P16930061830335493554.Spec : Prop :=
  ∀ n, P16930061830335493554.a n = A008013 n

theorem P16930061830335493554.correct : P16930061830335493554.Spec := by
  intro n
  simp only [A008013, Nat.add_sub_cancel, A008013.P16930061830335493554.a, A008013.P14464025922531573754.a, A005893, A005893.P12560717778126936227.a, A008265, A008265.P14370154735591299047.a, A008363, A008363.P1720988674792954549.a, A008738, A008738.P66942315527363512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008013

/-! ## A008013.P16898704735321823309

`A008265(n)-∑[A288156(n)]`
-/

namespace A008013.P16898704735321823309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008265 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008013.P16898704735321823309

namespace A008013

/-- `A008265(n)-∑[A288156(n)]` -/
def P16898704735321823309.Spec : Prop :=
  ∀ n, P16898704735321823309.a n = A008013 n

end A008013

/-! ## A008013.P14464025922531573754

`A005893(n)+2*A008363(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008013

/-- `A005893(n)+2*A008363(n)` -/
def P14464025922531573754.Spec : Prop :=
  ∀ n, P14464025922531573754.a n = A008013 n

theorem P14464025922531573754.correct : P14464025922531573754.Spec := by
  intro n
  simp only [A008013]

end A008013

/-! ## A008013.P17285736276238105652

`2*A008129(n)-A008131(n)`
-/

namespace A008013.P17285736276238105652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008129 n - A008131 n

end

end A008013.P17285736276238105652

namespace A008013

/-- `2*A008129(n)-A008131(n)` -/
def P17285736276238105652.Spec : Prop :=
  ∀ n, P17285736276238105652.a n = A008013 n

end A008013

/-! ## A008013.P2469277515546266104

`A333574(A005408(n))+2*A008363(n)`
-/

namespace A008013.P2469277515546266104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (A005408 n).toNat + 2 * A008363 n

end

end A008013.P2469277515546266104

namespace A008013

/-- `A333574(A005408(n))+2*A008363(n)` -/
def P2469277515546266104.Spec : Prop :=
  ∀ n, P2469277515546266104.a n = A008013 n

end A008013

/-! ## A008013.P6590843551471108624

`A005893(n)+A005843(A008363(n))`
-/

namespace A008013.P6590843551471108624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + A005843 (A008363 n).toNat

end

end A008013.P6590843551471108624

namespace A008013

/-- `A005893(n)+A005843(A008363(n))` -/
def P6590843551471108624.Spec : Prop :=
  ∀ n, P6590843551471108624.a n = A008013 n

end A008013

/-! ## A008013.P1185563927422617321

`A333574(2*n+1)+A005843(A008363(n))`
-/

namespace A008013.P1185563927422617321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (2 * n + 1) + A005843 (A008363 n).toNat

end

end A008013.P1185563927422617321

namespace A008013

/-- `A333574(2*n+1)+A005843(A008363(n))` -/
def P1185563927422617321.Spec : Prop :=
  ∀ n, P1185563927422617321.a n = A008013 n

end A008013

/-! ## A008013.P8183057092052646330

`A005843(A008129(n))-A008131(n)`
-/

namespace A008013.P8183057092052646330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008129 n).toNat - A008131 n

end

end A008013.P8183057092052646330

namespace A008013

/-- `A005843(A008129(n))-A008131(n)` -/
def P8183057092052646330.Spec : Prop :=
  ∀ n, P8183057092052646330.a n = A008013 n

end A008013

/-!
# A008014: Coordination sequence T1 for Zeolite Code AFI.

The programs for A008014, there is no canonical definition to state claims against.
-/

/-! ## A008014.P11729245764593593932

`∑[∑[A043557(A001248(3*n+1))]]`
-/

namespace A008014.P11729245764593593932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A001248 (3 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008014.P11729245764593593932

/-! ## A008014.P2562262515049645704

`A299258(n)-A002620(A276142(n+1))`
-/

namespace A008014.P2562262515049645704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299258 n - A002620 (A276142 (n + 1)).toNat

end

end A008014.P2562262515049645704

/-! ## A008014.P2447566817626955332

`floor(sqrt(∑[A014540(3*n+5)]))`
-/

namespace A008014.P2447566817626955332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014540 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008014.P2447566817626955332

/-! ## A008014.P15480953088217345338

`A330063(A051336(n+1))`
-/

namespace A008014.P15480953088217345338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330063 (A051336 (n + 1)).toNat

end

end A008014.P15480953088217345338

/-!
# A008015: Coordination sequence T1 for Zeolite Code AFO.

The programs for A008015, there is no canonical definition to state claims against.
-/

/-! ## A008015.P13513921476522788406

`or(A008005(n), A159917(A098594(n+1)))`
-/

namespace A008015.P13513921476522788406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008005 n) (A159917 (A098594 (n + 1)).toNat)

end

end A008015.P13513921476522788406

/-! ## A008015.P12008728480101670384

`A025465(A075834(n))+A008005(n)`
-/

namespace A008015.P12008728480101670384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A075834 n).toNat + A008005 n

end

end A008015.P12008728480101670384

/-! ## A008015.P11563185686006147268

`A178798(A007999(n))+A008005(n)`
-/

namespace A008015.P11563185686006147268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A007999 n).toNat + A008005 n

end

end A008015.P11563185686006147268

/-! ## A008015.P7584125849616024605

`A185284(A007590(n))+A008005(n)`
-/

namespace A008015.P7584125849616024605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A007590 n).toNat + A008005 n

end

end A008015.P7584125849616024605

/-! ## A008015.P4612204010968930195

`A178798(A052952(n))+A008005(n)`
-/

namespace A008015.P4612204010968930195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A052952 n).toNat + A008005 n

end

end A008015.P4612204010968930195

/-!
# A008017: Coordination sequence T3 for Zeolite Code AFO.

The programs for A008017, there is no canonical definition to state claims against.
-/

/-! ## A008017.P11266543463681619800

`∑[∑[A126988(A000110(n))+n]]`
-/

namespace A008017.P11266543463681619800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A000110 n).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008017.P11266543463681619800

/-! ## A008017.P639643565322932376

`∑[∑[A126988(A108305(n))+n]]`
-/

namespace A008017.P639643565322932376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A108305 n).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008017.P639643565322932376

/-! ## A008017.P16871479573113994253

`∑[∑[A127093(A143890(n))+n]]`
-/

namespace A008017.P16871479573113994253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A143890 n).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008017.P16871479573113994253

/-! ## A008017.P18444503774034447258

`∑[∑[A048793(A104357(n+1))+1]]`
-/

namespace A008017.P18444503774034447258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (A104357 (n + 1)).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008017.P18444503774034447258

/-! ## A008017.P6045313347890656124

`∑[A012265(∑[A302569(3*n+4)])]`
-/

namespace A008017.P6045313347890656124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302569 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008017.P6045313347890656124

/-!
# A008019: Coordination sequence T1 for Zeolite Code AFR.

The programs for A008019, there is no canonical definition to state claims against.
-/

/-! ## A008019.P1334348478207408617

`∑[∑[A106289(A060528(n+1))]]`
-/

namespace A008019.P1334348478207408617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106289 (A060528 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008019.P1334348478207408617

/-! ## A008019.P7145590749057159773

`∑[∑[A231351(A010351(n+1))]]`
-/

namespace A008019.P7145590749057159773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231351 (A010351 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008019.P7145590749057159773

/-! ## A008019.P3257330767370586168

`∑[∑[A351112(A010101(n+1))]]`
-/

namespace A008019.P3257330767370586168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351112 (A010101 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008019.P3257330767370586168

/-! ## A008019.P18446061446645906623

`A029896(n)-A051953(A309861(n))`
-/

namespace A008019.P18446061446645906623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029896 n - A051953 (A309861 n).toNat

end

end A008019.P18446061446645906623

/-!
# A008020: Coordination sequence T2 for Zeolite Code AFR.

The programs for A008020, there is no canonical definition to state claims against.
-/

/-! ## A008020.P6580222577947218478

`A301196(n)+A185284(A188069(n+1))`
-/

namespace A008020.P6580222577947218478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301196 n + A185284 (A188069 (n + 1)).toNat

end

end A008020.P6580222577947218478

/-! ## A008020.P5265397609176272526

`A056622(A301196(n)²)`
-/

namespace A008020.P5265397609176272526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (A301196 n ^ 2).toNat

end

end A008020.P5265397609176272526

/-! ## A008020.P5004720277827437645

`∏{e}[A000351(n), A301196(#)]`
-/

namespace A008020.P5004720277827437645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A301196 (Nat.factorization (f1 n).natAbs p)

end

end A008020.P5004720277827437645

/-! ## A008020.P785702174835128577

`A301196(n)%A135958(n)²`
-/

namespace A008020.P785702174835128577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301196 n) (A135958 n ^ 2)

end

end A008020.P785702174835128577

/-!
# A008023: Coordination sequence T1 for Zeolite Code AFS.

The programs for A008023, there is no canonical definition to state claims against.
-/

/-! ## A008023.P2467066097880748521

`A161840(A146452(n+1))+A008137(n)`
-/

namespace A008023.P2467066097880748521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161840 (A146452 (n + 1)).toNat + A008137 n

end

end A008023.P2467066097880748521

/-! ## A008023.P7666810653952295498

`∑[round(log(A183387(n+4)))]`
-/

namespace A008023.P7666810653952295498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A183387 (n + 4) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008023.P7666810653952295498

/-! ## A008023.P6260314918709370292

`∑[∑[∑[A200244((12*n)²+2)]]]`
-/

namespace A008023.P6260314918709370292
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200244 ((12 * n) ^ 2 + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008023.P6260314918709370292

/-! ## A008023.P694200890782577264

`∑[lt[A244490(2*n), char[1]+n]]`
-/

namespace A008023.P694200890782577264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244490 (2 * n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f4 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008023.P694200890782577264

/-! ## A008023.P9889089614575240337

`∑[∑[∑[A008683(4^n+n)²]]]`
-/

namespace A008023.P9889089614575240337
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 ^ n + n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008023.P9889089614575240337

/-!
# A008026: Coordination sequence T1 for Zeolite Code AFT.

The programs for A008026, there is no canonical definition to state claims against.
-/

/-! ## A008026.P1533204475947733240

`or(A008066(n), A086017(A071619(n)²))`
-/

namespace A008026.P1533204475947733240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008066 n) (A086017 (A071619 n ^ 2).toNat)

end

end A008026.P1533204475947733240

/-! ## A008026.P9674652617315583701

`or(A008066(n), A023533(A049967(n+1)))`
-/

namespace A008026.P9674652617315583701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008066 n) (A023533 (A049967 (n + 1)).toNat)

end

end A008026.P9674652617315583701

/-! ## A008026.P18117660055694535951

`A008066(n)%record[A123142(n+4)]`
-/

namespace A008026.P18117660055694535951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123142 (n + 4 + 64)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008066 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A008026.P18117660055694535951

/-! ## A008026.P1267845196830604010

`A008066(n)*A345992(A156581(n))`
-/

namespace A008026.P1267845196830604010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008066 n * A345992 (A156581 n).toNat

end

end A008026.P1267845196830604010

/-! ## A008026.P4875121195973132779

`A008066(A062399(n))`
-/

namespace A008026.P4875121195973132779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008066 (A062399 n).toNat

end

end A008026.P4875121195973132779

/-!
# A008027: Coordination sequence T2 for Zeolite Code AFT.

The programs for A008027, there is no canonical definition to state claims against.
-/

/-! ## A008027.P11459577758177931124

`∑[∑[A124768(A335279(n+2))]]`
-/

namespace A008027.P11459577758177931124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A335279 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008027.P11459577758177931124

/-! ## A008027.P350078308209277631

`∑[∑[A334440(A001158(2*n+1))]]`
-/

namespace A008027.P350078308209277631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334440 (A001158 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008027.P350078308209277631

/-! ## A008027.P8202189158437869503

`∑[∑[A069010(A005900(3*n+1))]]`
-/

namespace A008027.P8202189158437869503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A005900 (3 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008027.P8202189158437869503

/-! ## A008027.P11636859373082196960

`A035936(n*∑[∑[A344342(2*n+1)]]+1)`
-/

namespace A008027.P11636859373082196960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344342 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A008027.P11636859373082196960

/-!
# A008028: Coordination sequence T3 for Zeolite Code AFT.

The programs for A008028, there is no canonical definition to state claims against.
-/

/-! ## A008028.P8522123849789365575

`∑[∑[A326196(A000060(n+1))]]`
-/

namespace A008028.P8522123849789365575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326196 (A000060 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008028.P8522123849789365575

/-! ## A008028.P10498908957317021908

`∑[eq[1, A007318(A193175(n+1))]]`
-/

namespace A008028.P10498908957317021908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A193175 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008028.P10498908957317021908

/-! ## A008028.P13084568863834737481

`A008002(n)-A010894(A310439(n))`
-/

namespace A008028.P13084568863834737481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008002 n - A010894 ((A310439 n).toNat + 21)

end

end A008028.P13084568863834737481

/-! ## A008028.P17034718988046280566

`A008002(n)-A102683(A266762(n))`
-/

namespace A008028.P17034718988046280566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008002 n - A102683 (A266762 n).toNat

end

end A008028.P17034718988046280566

/-! ## A008028.P1191002565133537392

`A057314(n)-A010894(A310439(n))`
-/

namespace A008028.P1191002565133537392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057314 n - A010894 ((A310439 n).toNat + 21)

end

end A008028.P1191002565133537392

/-!
# A008029: Coordination sequence T1 for Zeolite Code AFY.

The programs for A008029, there is no canonical definition to state claims against.
-/

/-! ## A008029.P12753698852609835549

`A299900(n)+A001222(A328441(n))`
-/

namespace A008029.P12753698852609835549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299900 n + A001222 (A328441 n).toNat

end

end A008029.P12753698852609835549

/-!
# A008031: Coordination sequence T1 for Zeolite Code ANA.

The programs for A008031, there is no canonical definition to state claims against.
-/

/-! ## A008031.P12377142914932719871

`A276571(A128806(n²))`
-/

namespace A008031.P12377142914932719871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A128806 (n ^ 2)).toNat

end

end A008031.P12377142914932719871

/-! ## A008031.P8236789323370405927

`A276571(A309372(n)+A053699(n))`
-/

namespace A008031.P8236789323370405927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A309372 n + A053699 n).toNat

end

end A008031.P8236789323370405927

/-! ## A008031.P8957168633837459792

`A116668(n)-A003434(A148861(n))`
-/

namespace A008031.P8957168633837459792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116668 n - A003434 (A148861 n).toNat

end

end A008031.P8957168633837459792

/-! ## A008031.P11132551536662715207

`A321333(n²)+A000065(n)`
-/

namespace A008031.P11132551536662715207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321333 (n ^ 2) + A000065 n

end

end A008031.P11132551536662715207

/-!
# A008032: Coordination sequence T1 for Zeolite Code APC.

The programs for A008032, there is no canonical definition to state claims against.
-/

/-! ## A008032.P15491724841303298095

`A008000(n)-A036459(A212113(n))`
-/

namespace A008032.P15491724841303298095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A036459 (A212113 n).toNat

end

end A008032.P15491724841303298095

/-! ## A008032.P127899728090890837

`A008000(n)-A328391(A002533(n))`
-/

namespace A008032.P127899728090890837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A328391 (A002533 n).toNat

end

end A008032.P127899728090890837

/-! ## A008032.P17087338219560891322

`A118026(2*n)+A053866(A038507(n))`
-/

namespace A008032.P17087338219560891322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118026 (2 * n) + A053866 (A038507 n).toNat

end

end A008032.P17087338219560891322

/-! ## A008032.P12349277020066942400

`A008130(n)+A005893(n)-A036459(A212113(n))`
-/

namespace A008032.P12349277020066942400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 n + A005893 n - A036459 (A212113 n).toNat

end

end A008032.P12349277020066942400

/-!
# A008033: Coordination sequence T2 for Zeolite Code APC.

The programs for A008033, there is no canonical definition to state claims against.
-/

/-! ## A008033.P11742835505790936936

`A184420(n²+1)-1-n²`
-/

namespace A008033.P11742835505790936936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184420 (n ^ 2 + 1) - 1 - (n ^ 2 : ℤ)

end

end A008033.P11742835505790936936

/-! ## A008033.P10932515002194124658

`A184420(A002522(n))-(n²+1)`
-/

namespace A008033.P10932515002194124658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184420 (A002522 n).toNat - (n ^ 2 + 1 : ℤ)

end

end A008033.P10932515002194124658

/-! ## A008033.P58741443469091903

`∑[∑[A010553(A264959(n))]]`
-/

namespace A008033.P58741443469091903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A264959 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008033.P58741443469091903

/-! ## A008033.P16556013667127577693

`∑[A111660(A004683(2*(n+1))-1)]`
-/

namespace A008033.P16556013667127577693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A004683 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008033.P16556013667127577693

/-! ## A008033.P4954233654378044598

`A335469(n²+1)+n²+A195120(n)+1`
-/

namespace A008033.P4954233654378044598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (n ^ 2 + 1) + (n ^ 2 : ℤ) + (A195120 n + 1)

end

end A008033.P4954233654378044598

/-!
# A008034: Coordination sequence T1 for Zeolite Code APD.

The programs for A008034, there is no canonical definition to state claims against.
-/

/-! ## A008034.P3578570496246049476

`A284388(A261590(n))+A038412(n)`
-/

namespace A008034.P3578570496246049476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (A261590 n).toNat + A038412 n

end

end A008034.P3578570496246049476

/-! ## A008034.P181090939124878981

`A249871(A023443(n)²)+A005893(n)`
-/

namespace A008034.P181090939124878981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249871 (A023443 n ^ 2).toNat + A005893 n

end

end A008034.P181090939124878981

/-! ## A008034.P6964127236128242322

`A083025(A079781(n+1))+A038412(n)`
-/

namespace A008034.P6964127236128242322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (A079781 (n + 1)).toNat + A038412 n

end

end A008034.P6964127236128242322

/-! ## A008034.P10389121835883863731

`A002620(3*n)+A000002(A279828(n+3))`
-/

namespace A008034.P10389121835883863731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (3 * n) + A000002 (A279828 (n + 3)).toNat

end

end A008034.P10389121835883863731

/-! ## A008034.P15877689386241113074

`A327103(A050376(3*n+2))+A002620(3*n)`
-/

namespace A008034.P15877689386241113074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (A050376 (3 * n + 2)).toNat + A002620 (3 * n)

end

end A008034.P15877689386241113074

/-!
# A008035: Coordination sequence T2 for Zeolite Code APD.

The programs for A008035, there is no canonical definition to state claims against.
-/

/-! ## A008035.P1211085655330810247

`A048766(A060929(n))+2*n²`
-/

namespace A008035.P1211085655330810247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A060929 n).toNat + (2 * n ^ 2 : ℤ)

end

end A008035.P1211085655330810247

/-! ## A008035.P9822530082937557088

`A130899(A032559(n+1))+2*n²`
-/

namespace A008035.P9822530082937557088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130899 (A032559 (n + 1)).toNat + (2 * n ^ 2 : ℤ)

end

end A008035.P9822530082937557088

/-! ## A008035.P13894514641838720998

`A070939(A274934(n))+A014105(n)`
-/

namespace A008035.P13894514641838720998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A274934 n).toNat + A014105 n

end

end A008035.P13894514641838720998

/-! ## A008035.P8536498756988220775

`A231201(A335441(n))+A008000(n)`
-/

namespace A008035.P8536498756988220775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231201 (A335441 n).toNat + A008000 n

end

end A008035.P8536498756988220775

/-!
# A008038: Coordination sequence T1 for Zeolite Code ATS.

The programs for A008038, there is no canonical definition to state claims against.
-/

/-! ## A008038.P18191019575209428717

`∑[∑[A257091(A245417(n+1))]]`
-/

namespace A008038.P18191019575209428717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257091 (A245417 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008038.P18191019575209428717

/-! ## A008038.P5921512644039071083

`∑[∑[A006530(A210457(3*n+2))]]`
-/

namespace A008038.P5921512644039071083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A210457 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008038.P5921512644039071083

/-! ## A008038.P3030189374873724682

`∑[∑[A006530(A228273(3*n+2))]]`
-/

namespace A008038.P3030189374873724682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A228273 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008038.P3030189374873724682

/-! ## A008038.P1463654838585981528

`∑[∑[A006530(A244137(3*n+2))]]`
-/

namespace A008038.P1463654838585981528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A244137 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008038.P1463654838585981528

/-!
# A008040: Coordination sequence T3 for Zeolite Code ATS.

The programs for A008040, there is no canonical definition to state claims against.
-/

/-! ## A008040.P2731926342702769833

`∑[∑[A231713(A295045(n+1))]]`
-/

namespace A008040.P2731926342702769833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231713 (A295045 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008040.P2731926342702769833

/-! ## A008040.P4923647098379783048

`∑[eq[A064097(n+2), A262689(3*n+4)]]`
-/

namespace A008040.P4923647098379783048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (3 * n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008040.P4923647098379783048

/-! ## A008040.P9837083815029358584

`ceil(2/acot(n)²)-A296159(A032559(n+1))`
-/

namespace A008040.P9837083815029358584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉ - A296159 (A032559 (n + 1)).toNat

end

end A008040.P9837083815029358584

/-! ## A008040.P774604415863881814

`(n²+1)*A000032(C(2, n+2))-A296159(A032559(n+1))`
-/

namespace A008040.P774604415863881814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * A000032 (Nat.choose 2 (n + 2)) - A296159 (A032559 (n + 1)).toNat

end

end A008040.P774604415863881814

/-! ## A008040.P7611199649160665012

`(n²+1)*A020639(A000010(n+2))-A296159(A032559(n+1))`
-/

namespace A008040.P7611199649160665012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) * A020639 (A000010 (n + 2)).toNat - A296159 (A032559 (n + 1)).toNat

end

end A008040.P7611199649160665012

/-!
# A008041: Coordination sequence T1 for Zeolite Code ATT.

The programs for A008041, there is no canonical definition to state claims against.
-/

/-! ## A008041.P6485184239519025507

`∑[∑[A129089(A361435(n+1))]]`
-/

namespace A008041.P6485184239519025507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129089 (A361435 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008041.P6485184239519025507

/-! ## A008041.P11539517175555624505

`∑[∑[A306509(A081673(n))]]`
-/

namespace A008041.P11539517175555624505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (A081673 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008041.P11539517175555624505

/-! ## A008041.P2023145730784341144

`∑[∑[A058263(A227904(n+1))]]`
-/

namespace A008041.P2023145730784341144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (A227904 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008041.P2023145730784341144

/-! ## A008041.P863441061615385846

`∑[∑[A034693(A375523(n+1))]]`
-/

namespace A008041.P863441061615385846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A375523 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008041.P863441061615385846

/-! ## A008041.P14762432475764999893

`∑[∑[A060117(A006072(2*n+1))]]`
-/

namespace A008041.P14762432475764999893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060117 (A006072 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008041.P14762432475764999893

/-!
# A008043: Coordination sequence T1 for Zeolite Code ATV.

The programs for A008043, there is no canonical definition to state claims against.
-/

/-! ## A008043.P12009635181134280243

`A194339((n+2)²*a(n-1))` with `a(0)=1`
-/

namespace A008043.P12009635181134280243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194339 (((n + 2) ^ 2 : ℤ) * a (n - 1)).toNat

end

end A008043.P12009635181134280243

/-!
# A008045: Coordination sequence T1 for Zeolite Code AWW.

The programs for A008045, there is no canonical definition to state claims against.
-/

/-! ## A008045.P7776325185549123159

`floor(A178539(n+1)/A198683(n+1))+2*n²`
-/

namespace A008045.P7776325185549123159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178539 (n + 1) : ℚ) / (A198683 (n + 1) : ℚ)⌋ + (2 * n ^ 2 : ℤ)

end

end A008045.P7776325185549123159

/-! ## A008045.P3361909519970542736

`A284359(A180354(n))`
-/

namespace A008045.P3361909519970542736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 (A180354 n).toNat

end

end A008045.P3361909519970542736

/-! ## A008045.P14632173653008119617

`∑[∑[A249717(A249714(n+1))]]+n²`
-/

namespace A008045.P14632173653008119617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249717 (A249714 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A008045.P14632173653008119617

/-! ## A008045.P6545371668069218940

`A339839(A162766(2*n+1))+A001105(n)`
-/

namespace A008045.P6545371668069218940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339839 (A162766 (2 * n + 1)).toNat + A001105 n

end

end A008045.P6545371668069218940

/-! ## A008045.P4023613887071187412

`A074942(A257503(3*n+5))+A001105(n)`
-/

namespace A008045.P4023613887071187412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074942 (A257503 (3 * n + 5)).toNat + A001105 n

end

end A008045.P4023613887071187412

/-!
# A008048: Coordination sequence T2 for Zeolite Code BIK.

The programs for A008048, there is no canonical definition to state claims against.
-/

/-! ## A008048.P9671565265535007763

`2*A225489(a(n-1)+2)` with `a(0)=1`
-/

namespace A008048.P9671565265535007763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A225489 (a (n - 1) + 2).toNat

end

end A008048.P9671565265535007763

/-! ## A008048.P8830180061403101889

`A351626(∑[A354956(n+1)])`
-/

namespace A008048.P8830180061403101889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351626 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008048.P8830180061403101889

/-! ## A008048.P15356520639868227637

`A324702(n+1)-A143621(A001426(n))`
-/

namespace A008048.P15356520639868227637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324702 (n + 1) - A143621 (A001426 n).toNat

end

end A008048.P15356520639868227637

/-!
# A008049: Coordination sequence T1 for Zeolite Code BOG.

The programs for A008049, there is no canonical definition to state claims against.
-/

/-! ## A008049.P17440967027600421885

`A009872(n)-A185284(A000982(n))`
-/

namespace A008049.P17440967027600421885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009872 n - A185284 (A000982 n).toNat

end

end A008049.P17440967027600421885

/-! ## A008049.P2616782765900695510

`A009872(n)-A185284(A007590(n))`
-/

namespace A008049.P2616782765900695510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009872 n - A185284 (A007590 n).toNat

end

end A008049.P2616782765900695510

/-! ## A008049.P10671413276028599996

`A009872(n)-A055641(A148779(n))`
-/

namespace A008049.P10671413276028599996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009872 n - A055641 (A148779 n).toNat

end

end A008049.P10671413276028599996

/-! ## A008049.P17825709302890944594

`A009872(n)-A185284(A029746(n))`
-/

namespace A008049.P17825709302890944594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009872 n - A185284 (A029746 n).toNat

end

end A008049.P17825709302890944594

/-! ## A008049.P6048894998091187571

`A009872(n)-A055641(A164651(n))`
-/

namespace A008049.P6048894998091187571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009872 n - A055641 (A164651 n).toNat

end

end A008049.P6048894998091187571

/-!
# A008050: Coordination sequence T2 for Zeolite Code BOG.

The programs for A008050, there is no canonical definition to state claims against.
-/

/-! ## A008050.P2539609189800119052

`∑[∑[A099774(A149991(n))]]`
-/

namespace A008050.P2539609189800119052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (A149991 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008050.P2539609189800119052

/-! ## A008050.P12081542862571471489

`∑[∑[A167447(A003008(n+2))]]`
-/

namespace A008050.P12081542862571471489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167447 (A003008 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008050.P12081542862571471489

/-! ## A008050.P2826314839011493426

`and(-A290977(n+1), A008000(n))`
-/

namespace A008050.P2826314839011493426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A290977 (n + 1)) (A008000 n)

end

end A008050.P2826314839011493426

/-!
# A008052: Coordination sequence T4 for Zeolite Code BOG.

The programs for A008052, there is no canonical definition to state claims against.
-/

/-! ## A008052.P3209043695961096122

`A206285(A352943(n+1)+n²)`
-/

namespace A008052.P3209043695961096122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206285 (A352943 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A008052.P3209043695961096122

/-! ## A008052.P5239348556478776074

`A372431(∑[∑[A051953(2*n+5)]])`
-/

namespace A008052.P5239348556478776074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372431 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008052.P5239348556478776074

/-!
# A008055: Coordination sequence T1 for Zeolite Code BPH.

The programs for A008055, there is no canonical definition to state claims against.
-/

/-! ## A008055.P9939909817689083209

`∑[A224702(∑[4*n+5])]`
-/

namespace A008055.P9939909817689083209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224702 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008055.P9939909817689083209

/-! ## A008055.P7744246350710982260

`∑[∑[∑{e}[A120402(n+1), #]]]`
-/

namespace A008055.P7744246350710982260
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120402 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008055.P7744246350710982260

/-! ## A008055.P10590704168222399279

`A184411(∑[∑[floor(n/4)+1]])`
-/

namespace A008055.P10590704168222399279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184411 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008055.P10590704168222399279

/-! ## A008055.P15245097891475128248

`∑[∑[A275853(A026759(n))]]`
-/

namespace A008055.P15245097891475128248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275853 (A026759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008055.P15245097891475128248

/-! ## A008055.P2533648178970173572

`∑[∑[A333224(A066983(n+3))]]`
-/

namespace A008055.P2533648178970173572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (A066983 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008055.P2533648178970173572

/-!
# A008056: Coordination sequence T2 for Zeolite Code BPH.

The programs for A008056, there is no canonical definition to state claims against.
-/

/-! ## A008056.P3940951544579763924

`A018843(A116960(n+1))+A008024(n)`
-/

namespace A008056.P3940951544579763924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018843 (A116960 (n + 1)).toNat + A008024 n

end

end A008056.P3940951544579763924

/-! ## A008056.P4465683351233516212

`or(A019571(n), A254886(A049889(n+1)))`
-/

namespace A008056.P4465683351233516212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019571 n) (A254886 (A049889 (n + 1)).toNat)

end

end A008056.P4465683351233516212

/-!
# A008057: Smallest sum of an addition chain for 2n+1.

The programs for A008057, there is no canonical definition to state claims against.
-/

/-! ## A008057.P10553202162077443208

`A376449(2*n+1)+2*n`
-/

namespace A008057.P10553202162077443208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376449 (2 * n + 1) + (2 * n : ℤ)

end

end A008057.P10553202162077443208

/-! ## A008057.P13292867317139658415

`A008683(A137966(n))+A276853(n)-A193592(n)`
-/

namespace A008057.P13292867317139658415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A137966 n).toNat + (A276853 n - A193592 n)

end

end A008057.P13292867317139658415

/-! ## A008057.P17885153645971006380

`A061978(2*(n+2))%A004737(3*n+4)+5*n`
-/

namespace A008057.P17885153645971006380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061978 (2 * (n + 2))) (A004737 (3 * n + 4)) + (5 * n : ℤ)

end

end A008057.P17885153645971006380

/-! ## A008057.P5270076079890095588

`A037911(A149216(n))+A008587(n)`
-/

namespace A008057.P5270076079890095588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037911 (A149216 n).toNat + A008587 n

end

end A008057.P5270076079890095588

/-! ## A008057.P7701191238410091984

`A228177(n)+A001221(A150870(n))`
-/

namespace A008057.P7701191238410091984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228177 n + A001221 (A150870 n).toNat

end

end A008057.P7701191238410091984

/-!
# A008060: Coordination sequence T3 for Zeolite Code BRE.

The programs for A008060, there is no canonical definition to state claims against.
-/

/-! ## A008060.P18245654047320960902

`A195827(A018240(n+3))+A008000(n)`
-/

namespace A008060.P18245654047320960902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195827 (A018240 (n + 3)).toNat + A008000 n

end

end A008060.P18245654047320960902

/-! ## A008060.P5721987192212343412

`A195827(A018240(n+3))+A008130(n)+A005893(n)`
-/

namespace A008060.P5721987192212343412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195827 (A018240 (n + 3)).toNat + (A008130 n + A005893 n)

end

end A008060.P5721987192212343412

/-! ## A008060.P15536549054573208985

`A195827(A018240(n+3))+A008255(n)-A008130(n)`
-/

namespace A008060.P15536549054573208985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195827 (A018240 (n + 3)).toNat + (A008255 n - A008130 n)

end

end A008060.P15536549054573208985

/-! ## A008060.P14076701363958494713

`A195827(A018240(n+3))+(A008255(n)+A005893(n))/2`
-/

namespace A008060.P14076701363958494713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195827 (A018240 (n + 3)).toNat : ℚ) + (A008255 n + A005893 n : ℚ) / 2

end

end A008060.P14076701363958494713

/-!
# A008062: a(n) = maximal value of m such that an n X m radar array exists. (A (0,1) matrix A such that any horizontal shift of A overlaps A in at most a single 1.)

The programs for A008062, there is no canonical definition to state claims against.
-/

/-! ## A008062.P5289609669928546016

`Δ[ceil(n²*log(4))]`
-/

namespace A008062.P5289609669928546016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) * Real.log (4 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008062.P5289609669928546016

/-! ## A008062.P16636357361052850608

`round((3-ϕ)/acot(2*n+1))`
-/

namespace A008062.P16636357361052850608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 - Real.goldenRatio) / SequenceMachineLib.acot (2 * n + 1 : ℝ))

end

end A008062.P16636357361052850608

/-! ## A008062.P10928950457834281521

`round(1/acot(n))+floor((n+1)*sqrt(35/11))`
-/

namespace A008062.P10928950457834281521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + ⌊(n + 1 : ℝ) * Real.sqrt ((35 : ℚ) / 11 : ℝ)⌋

end

end A008062.P10928950457834281521

/-! ## A008062.P3255421987312229276

`round(log2(A081067(n)))`
-/

namespace A008062.P3255421987312229276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A081067 n : ℝ))

end

end A008062.P3255421987312229276

/-! ## A008062.P8595733889177640238

`round(log2(A342710(n)))`
-/

namespace A008062.P8595733889177640238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A342710 n : ℝ))

end

end A008062.P8595733889177640238

/-!
# A008064: Coordination sequence T2 for Zeolite Code CAS.

The programs for A008064, there is no canonical definition to state claims against.
-/

/-! ## A008064.P16201869938317736515

`A287372(3*n+2)+A138007(A000960(n+1))`
-/

namespace A008064.P16201869938317736515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287372 (3 * n + 2) + A138007 (A000960 (n + 1)).toNat

end

end A008064.P16201869938317736515

/-! ## A008064.P6849669128969460691

`∑[eq[A236104(n+3), A322596(n)]]`
-/

namespace A008064.P6849669128969460691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236104 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322596 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008064.P6849669128969460691

/-! ## A008064.P15157594902702550341

`A301141(n)+A178780(A075058(n))`
-/

namespace A008064.P15157594902702550341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301141 n + A178780 (A075058 n).toNat

end

end A008064.P15157594902702550341

/-!
# A008066: Coordination sequence T1 for Zeolite Code CHA.

The programs for A008066, the canonical program `A008066.P16344384066505485400` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008066 has offset 0).

The definition of A008066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008066.P16344384066505485400

`A008260(n)-A042948(A002620(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008066

/-- `A008260(n)-A042948(A002620(n))` -/
def P16344384066505485400.Spec : Prop :=
  ∀ n, P16344384066505485400.a n = A008066 n

theorem P16344384066505485400.correct : P16344384066505485400.Spec := by
  intro n
  simp only [A008066]

end A008066

/-!
# A008071: Coordination sequence T1 for Zeolite Code DDR.

The programs for A008071, there is no canonical definition to state claims against.
-/

/-! ## A008071.P17133245960893606234

`A298023(n)-A056973(A002177(n+1))`
-/

namespace A008071.P17133245960893606234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298023 n - A056973 (A002177 (n + 1)).toNat

end

end A008071.P17133245960893606234

/-! ## A008071.P4709621128682835836

`∑[∑[A126792(A154551(n+1))]]`
-/

namespace A008071.P4709621128682835836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126792 (A154551 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008071.P4709621128682835836

/-! ## A008071.P15034027596909171829

`A003056(A010024(n))-A105593(n+1)`
-/

namespace A008071.P15034027596909171829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A010024 n).toNat - A105593 (n + 1)

end

end A008071.P15034027596909171829

/-! ## A008071.P12930502247177256336

`A328867(∑[A333227(n+1)])-A338315(n)`
-/

namespace A008071.P12930502247177256336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328867 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A338315 n

end

end A008071.P12930502247177256336

/-!
# A008073: Coordination sequence T3 for Zeolite Code DDR.

The programs for A008073, there is no canonical definition to state claims against.
-/

/-! ## A008073.P969001087139091217

`∑[eq[A104471(n+1), A108309(n+1)]]`
-/

namespace A008073.P969001087139091217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104471 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108309 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008073.P969001087139091217

/-! ## A008073.P3538277856235207492

`A136757(A000112(n))+A011848(3*n+1)`
-/

namespace A008073.P3538277856235207492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136757 (A000112 n).toNat + A011848 (3 * n + 1)

end

end A008073.P3538277856235207492

/-!
# A008074: Coordination sequence T4 for Zeolite Code DDR.

The programs for A008074, there is no canonical definition to state claims against.
-/

/-! ## A008074.P7877358011297700794

`A008097(n)-A173667(A301257(n))`
-/

namespace A008074.P7877358011297700794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008097 n - A173667 (A301257 n).toNat

end

end A008074.P7877358011297700794

/-! ## A008074.P5738471758917780719

`A268525(n+1)-A028950(A093353(n))`
-/

namespace A008074.P5738471758917780719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268525 (n + 1) - A028950 (A093353 n).toNat

end

end A008074.P5738471758917780719

/-! ## A008074.P13957407569469264667

`A348459(A107595(n))+A000217(2*n)`
-/

namespace A008074.P13957407569469264667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348459 (A107595 n).toNat + A000217 (2 * n)

end

end A008074.P13957407569469264667

/-!
# A008075: Coordination sequence T5 for Zeolite Code DDR.

The programs for A008075, there is no canonical definition to state claims against.
-/

/-! ## A008075.P8105348300668210392

`xor(A241541(A008066(n)²), A301072(n))`
-/

namespace A008075.P8105348300668210392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A241541 (A008066 n ^ 2).toNat) (A301072 n)

end

end A008075.P8105348300668210392

/-!
# A008078: Coordination sequence T1 for Zeolite Code DOH.

The programs for A008078, there is no canonical definition to state claims against.
-/

/-! ## A008078.P9419448055061280547

`A123578(A272103(n))-A003056(n)`
-/

namespace A008078.P9419448055061280547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A272103 n).toNat - A003056 n

end

end A008078.P9419448055061280547

/-! ## A008078.P6339061586919852525

`A123578(A272103(n))-A189663(n+1)`
-/

namespace A008078.P6339061586919852525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A272103 n).toNat - A189663 (n + 1)

end

end A008078.P6339061586919852525

/-!
# A008079: Coordination sequence T2 for Zeolite Code DOH.

The programs for A008079, there is no canonical definition to state claims against.
-/

/-! ## A008079.P2665869457192692601

`A131343(A131315(n+1))+A008259(n)`
-/

namespace A008079.P2665869457192692601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131343 (A131315 (n + 1)).toNat + A008259 n

end

end A008079.P2665869457192692601

/-! ## A008079.P8136697639873826069

`∑[∑[A330416(A330400(2*n+1))]]`
-/

namespace A008079.P8136697639873826069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330416 (A330400 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008079.P8136697639873826069

/-! ## A008079.P7053106871958509030

`∑[∑[A342507(A268306(2*n+3))]]`
-/

namespace A008079.P7053106871958509030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (A268306 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008079.P7053106871958509030

/-! ## A008079.P7267968565353986897

`A156723(A265074(n))+A008000(n)`
-/

namespace A008079.P7267968565353986897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156723 (A265074 n).toNat + A008000 n

end

end A008079.P7267968565353986897

/-!
# A008081: Coordination sequence T4 for Zeolite Code DOH.

The programs for A008081, there is no canonical definition to state claims against.
-/

/-! ## A008081.P13310276910892585775

`A219027(A284917(n+3))+A088902(n+1)`
-/

namespace A008081.P13310276910892585775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219027 (A284917 (n + 3)).toNat + A088902 (n + 1)

end

end A008081.P13310276910892585775

/-! ## A008081.P336208688831820896

`C(n, 4)+A008122(n)-A006926(A232535(n))`
-/

namespace A008081.P336208688831820896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℤ) + (A008122 n - A006926 (A232535 n).toNat)

end

end A008081.P336208688831820896

/-!
# A008082: Coordination sequence T1 for Zeolite Code EAB.

The programs for A008082, there is no canonical definition to state claims against.
-/

/-! ## A008082.P8727627652048205583

`or(A008127(n), A306862(n²))`
-/

namespace A008082.P8727627652048205583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008127 n) (A306862 (n ^ 2))

end

end A008082.P8727627652048205583

/-! ## A008082.P2955736215382858559

`A079978(A249936(n))+A008127(n)`
-/

namespace A008082.P2955736215382858559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A249936 n).toNat + A008127 n

end

end A008082.P2955736215382858559

/-! ## A008082.P18008149641044858132

`A160351(A192702(n+1))+A008127(n)`
-/

namespace A008082.P18008149641044858132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160351 (A192702 (n + 1)).toNat + A008127 n

end

end A008082.P18008149641044858132

/-! ## A008082.P11692200794250615899

`or(A008127(n), A025469(A002532(n+1)))`
-/

namespace A008082.P11692200794250615899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008127 n) (A025469 (A002532 (n + 1)).toNat)

end

end A008082.P11692200794250615899

/-! ## A008082.P14762545912026962152

`or(A008127(n), A059841(A033121(n+1)))`
-/

namespace A008082.P14762545912026962152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008127 n) (A059841 (A033121 (n + 1)).toNat)

end

end A008082.P14762545912026962152

/-!
# A008084: Coordination sequence T1 for Zeolite Code ACO, ASV, EDI, and THO.

The programs for A008084, there is no canonical definition to state claims against.
-/

/-! ## A008084.P17637535429657896605

`A267528(A008266(n))-A077043(n)`
-/

namespace A008084.P17637535429657896605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (A008266 n).toNat - A077043 n

end

end A008084.P17637535429657896605

/-! ## A008084.P15327046881268848046

`A267528(A008266(n))+1-A084684(n)`
-/

namespace A008084.P15327046881268848046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (A008266 n).toNat + (1 - A084684 n)

end

end A008084.P15327046881268848046

/-! ## A008084.P12614894079560011726

`A267528(A008266(n))+A001478(A077043(n)+1)+1`
-/

namespace A008084.P12614894079560011726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (A008266 n).toNat + (A001478 (A077043 n + 1).toNat + 1)

end

end A008084.P12614894079560011726

/-! ## A008084.P4495510440840586966

`A130481(A001105(n))+A098178(n)`
-/

namespace A008084.P4495510440840586966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (A001105 n).toNat + A098178 n

end

end A008084.P4495510440840586966

/-! ## A008084.P6889134626594024793

`A235452(A005893(n))-A007877(n)`
-/

namespace A008084.P6889134626594024793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235452 (A005893 n).toNat - A007877 n

end

end A008084.P6889134626594024793

/-!
# A008085: Coordination sequence T2 for Zeolite Code EDI.

The programs for A008085, there is no canonical definition to state claims against.
-/

/-! ## A008085.P746733229698351949

`2*n²+A000122(A014138(n))`
-/

namespace A008085.P746733229698351949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) + A000122 (A014138 n).toNat

end

end A008085.P746733229698351949

/-! ## A008085.P3447136021961521197

`A008441(A041010(n))+A001105(n)`
-/

namespace A008085.P3447136021961521197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (A041010 n).toNat + A001105 n

end

end A008085.P3447136021961521197

/-! ## A008085.P12075181317027168383

`A138811(A014138(n))+A001105(n)`
-/

namespace A008085.P12075181317027168383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 (A014138 n).toNat + A001105 n

end

end A008085.P12075181317027168383

/-! ## A008085.P7563225922249269508

`A086937(A229428(2*n+1))+A001105(n)`
-/

namespace A008085.P7563225922249269508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086937 (A229428 (2 * n + 1)).toNat + A001105 n

end

end A008085.P7563225922249269508

/-!
# A008086: Coordination sequence T1 for Zeolite Code EMT.

The programs for A008086, there is no canonical definition to state claims against.
-/

/-! ## A008086.P1126822127997009939

`A008087(n)-A096094(A008459(n))`
-/

namespace A008086.P1126822127997009939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008087 n - A096094 (A008459 n).toNat

end

end A008086.P1126822127997009939

/-! ## A008086.P9361261455748670612

`A008087(n)-A055641(A093306(n+1))`
-/

namespace A008086.P9361261455748670612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008087 n - A055641 (A093306 (n + 1)).toNat

end

end A008086.P9361261455748670612

/-! ## A008086.P11059419258042118137

`A008087(n)-A185036(A240192(n+1))`
-/

namespace A008086.P11059419258042118137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008087 n - A185036 (A240192 (n + 1)).toNat

end

end A008086.P11059419258042118137

/-! ## A008086.P1174217616320423280

`A008087(n)-A133010(A317011(n+1))`
-/

namespace A008086.P1174217616320423280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008087 n - A133010 (A317011 (n + 1)).toNat

end

end A008086.P1174217616320423280

/-! ## A008086.P12566747573287137077

`A008087(n)-A185284(A297749(n+1))`
-/

namespace A008086.P12566747573287137077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008087 n - A185284 (A297749 (n + 1)).toNat

end

end A008086.P12566747573287137077

/-!
# A008087: Coordination sequence T2 for Zeolite Code EMT.

The programs for A008087, there is no canonical definition to state claims against.
-/

/-! ## A008087.P16204261514725827153

`A096094(A008459(n))+A008086(n)`
-/

namespace A008087.P16204261514725827153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096094 (A008459 n).toNat + A008086 n

end

end A008087.P16204261514725827153

/-! ## A008087.P11277732094074477042

`A055641(A093306(n+1))+A008086(n)`
-/

namespace A008087.P11277732094074477042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A093306 (n + 1)).toNat + A008086 n

end

end A008087.P11277732094074477042

/-! ## A008087.P5107418033333646413

`A028310(A172534(n+1)+A008086(n))`
-/

namespace A008087.P5107418033333646413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A172534 (n + 1) + A008086 n).toNat

end

end A008087.P5107418033333646413

/-! ## A008087.P2975122419915553192

`A185036(A240192(n+1))+A008086(n)`
-/

namespace A008087.P2975122419915553192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 (A240192 (n + 1)).toNat + A008086 n

end

end A008087.P2975122419915553192

/-! ## A008087.P3621537647671757286

`A133010(A317011(n+1))+A008086(n)`
-/

namespace A008087.P3621537647671757286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133010 (A317011 (n + 1)).toNat + A008086 n

end

end A008087.P3621537647671757286

/-!
# A008088: Coordination sequence T3 for Zeolite Code EMT.

The programs for A008088, there is no canonical definition to state claims against.
-/

/-! ## A008088.P15034014863711609713

`∑[∑[A182860(A013025(n))]]`
-/

namespace A008088.P15034014863711609713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182860 (A013025 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008088.P15034014863711609713

/-! ## A008088.P13397647574264191442

`∑[∑[A294903(A005663(n))]]`
-/

namespace A008088.P13397647574264191442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294903 (A005663 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008088.P13397647574264191442

/-! ## A008088.P3148841385350287853

`∑[∑[A346651(A000031(n))]]`
-/

namespace A008088.P3148841385350287853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346651 (A000031 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008088.P3148841385350287853

/-! ## A008088.P2523359491842223949

`∑[∑[A001876(A007239(n+1))]]`
-/

namespace A008088.P2523359491842223949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A007239 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008088.P2523359491842223949

/-! ## A008088.P18422271131872255799

`∑[∑[A332025(A093107(n+1))]]`
-/

namespace A008088.P18422271131872255799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332025 (A093107 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008088.P18422271131872255799

/-!
# A008089: Coordination sequence T4 for Zeolite Code EMT.

The programs for A008089, there is no canonical definition to state claims against.
-/

/-! ## A008089.P3395919900369040846

`A028240(A303939(n))+A008105(n)`
-/

namespace A008089.P3395919900369040846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028240 (A303939 n).toNat + A008105 n

end

end A008089.P3395919900369040846

/-! ## A008089.P9042593710376440168

`A277017(A327510(n))+A008105(n)`
-/

namespace A008089.P9042593710376440168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277017 (A327510 n).toNat + A008105 n

end

end A008089.P9042593710376440168

/-! ## A008089.P13252993344014812285

`A055641(A093306(n+1))+A008105(n)`
-/

namespace A008089.P13252993344014812285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A093306 (n + 1)).toNat + A008105 n

end

end A008089.P13252993344014812285

/-! ## A008089.P8922782840665018100

`A184974(A218580(n+1))+A008105(n)`
-/

namespace A008089.P8922782840665018100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184974 (A218580 (n + 1)).toNat + A008105 n

end

end A008089.P8922782840665018100

/-! ## A008089.P6244649875513235560

`A133010(A317011(n+1))+A008105(n)`
-/

namespace A008089.P6244649875513235560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133010 (A317011 (n + 1)).toNat + A008105 n

end

end A008089.P6244649875513235560

/-!
# A008090: Coordination sequence T1 for Zeolite Code EPI.

The programs for A008090, there is no canonical definition to state claims against.
-/

/-! ## A008090.P2533957947814958717

`∑[∑[A237981(A001998(n))]]`
-/

namespace A008090.P2533957947814958717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237981 (A001998 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008090.P2533957947814958717

/-!
# A008092: Coordination sequence T3 for Zeolite Code EPI.

The programs for A008092, there is no canonical definition to state claims against.
-/

/-! ## A008092.P17133607415757587565

`A008061(n)+A000120(A027616(n))`
-/

namespace A008092.P17133607415757587565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008061 n + A000120 (A027616 n).toNat

end

end A008092.P17133607415757587565

/-!
# A008095: Coordination sequence T1 for Zeolite Code EUO.

The programs for A008095, there is no canonical definition to state claims against.
-/

/-! ## A008095.P10993232123316770265

`A117707(A000389(n))+A008205(n)`
-/

namespace A008095.P10993232123316770265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A000389 n).toNat + A008205 n

end

end A008095.P10993232123316770265

/-! ## A008095.P10476692092503487295

`A301129(n)+A259361(A126874(n+5))`
-/

namespace A008095.P10476692092503487295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301129 n + A259361 (A126874 (n + 5)).toNat

end

end A008095.P10476692092503487295

/-!
# A008097: Coordination sequence T2 for Zeolite Code EUO.

The programs for A008097, there is no canonical definition to state claims against.
-/

/-! ## A008097.P5819745739668495961

`A173667(A301257(n))+A008074(n)`
-/

namespace A008097.P5819745739668495961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173667 (A301257 n).toNat + A008074 n

end

end A008097.P5819745739668495961

/-! ## A008097.P17096640693081786068

`A362611(A038110(n+1))+A008074(n)`
-/

namespace A008097.P17096640693081786068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (A038110 (n + 1)).toNat + A008074 n

end

end A008097.P17096640693081786068

/-! ## A008097.P5012023993267975014

`A011760(A008074(n)%A324593(2*n+3))`
-/

namespace A008097.P5012023993267975014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (Int.tmod (A008074 n) (A324593 (2 * n + 3))).toNat

end

end A008097.P5012023993267975014

/-! ## A008097.P15945917228449432892

`A173667(3*n+2)+A348459(A107595(n))+A000217(2*n)`
-/

namespace A008097.P15945917228449432892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173667 (3 * n + 2) + (A348459 (A107595 n).toNat + A000217 (2 * n))

end

end A008097.P15945917228449432892

/-!
# A008098: Coordination sequence T3 for Zeolite Code EUO.

The programs for A008098, there is no canonical definition to state claims against.
-/

/-! ## A008098.P8353688189572331936

`∑[∑[A339502(A047319(n+1))]]`
-/

namespace A008098.P8353688189572331936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339502 (A047319 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008098.P8353688189572331936

/-! ## A008098.P7169035368045711014

`∑[A346131(∑[A262869(2*(n+1))])]`
-/

namespace A008098.P7169035368045711014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346131 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008098.P7169035368045711014

/-! ## A008098.P10795322998066473800

`A008190(n)-A088722(A000142(n))`
-/

namespace A008098.P10795322998066473800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008190 n - A088722 (A000142 n).toNat

end

end A008098.P10795322998066473800

/-! ## A008098.P13088857442884056408

`A301061(n)-A124761(A210285(n))`
-/

namespace A008098.P13088857442884056408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301061 n - A124761 (A210285 n).toNat

end

end A008098.P13088857442884056408

