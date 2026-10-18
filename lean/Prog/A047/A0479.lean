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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A047900: a(1) = 8; for n > 1, a(n+1) = a(n) * sum of digits of a(n).

The programs for A047900, the canonical program `A047900.P13181502054389704056` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047900 has offset 1).

The definition of A047900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047900.P13181502054389704056

`10*a(n-1)` with `a(0)=8, a(1)=64`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047900

/-- `10*a(n-1)` -/
def P13181502054389704056.Spec : Prop :=
  ∀ n, (P13181502054389704056.a n : ℤ) = A047900 (n + 1)

theorem P13181502054389704056.correct : P13181502054389704056.Spec := by
  intro n
  simp only [A047900, Nat.add_sub_cancel]

end A047900

/-! ## A047900.P5950397180853891329

`8*A346178(n)`
-/

namespace A047900.P5950397180853891329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A346178 n

end

end A047900.P5950397180853891329

namespace A047900

/-- `8*A346178(n)` -/
def P5950397180853891329.Spec : Prop :=
  ∀ n, P5950397180853891329.a n = A047900 (n + 1)

end A047900

/-! ## A047900.P15809763380818045435

`ogf((8-16x)/(1-10x))`
-/

namespace A047900.P15809763380818045435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -16] [1, -10] n

end

end A047900.P15809763380818045435

namespace A047900

/-- `ogf((8-16x)/(1-10x))` -/
def P15809763380818045435.Spec : Prop :=
  ∀ n, P15809763380818045435.a n = A047900 (n + 1)

end A047900

/-! ## A047900.P13140941655583626567

`abs(∏[-a(n-1)])` with `a(0)=8, a(1)=8, a(2)=10`
-/

namespace A047900.P13140941655583626567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 8, 10] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A047900.P13140941655583626567

namespace A047900

/-- `abs(∏[-a(n-1)])` -/
def P13140941655583626567.Spec : Prop :=
  ∀ n, P13140941655583626567.a n = A047900 (n + 1)

end A047900

/-! ## A047900.P6931797175907643652

`lcm(11, a(n-1))-a(n-1)` with `a(0)=8, a(1)=64`
-/

namespace A047900.P6931797175907643652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 64] fun n a =>
  (Int.lcm 11 (a (n - 1)) : ℤ) - a (n - 1)

end

end A047900.P6931797175907643652

namespace A047900

/-- `lcm(11, a(n-1))-a(n-1)` -/
def P6931797175907643652.Spec : Prop :=
  ∀ n, P6931797175907643652.a n = A047900 (n + 1)

end A047900

/-! ## A047900.P17789728951890243369

`2^(n+3)*A005054(n)`
-/

namespace A047900.P17789728951890243369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) * A005054 n

end

end A047900.P17789728951890243369

namespace A047900

/-- `2^(n+3)*A005054(n)` -/
def P17789728951890243369.Spec : Prop :=
  ∀ n, P17789728951890243369.a n = A047900 (n + 1)

end A047900

/-! ## A047900.P6709204684488658630

`A005054(n)*A011782(n+4)`
-/

namespace A047900.P6709204684488658630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n * A011782 (n + 4)

end

end A047900.P6709204684488658630

namespace A047900

/-- `A005054(n)*A011782(n+4)` -/
def P6709204684488658630.Spec : Prop :=
  ∀ n, P6709204684488658630.a n = A047900 (n + 1)

end A047900

/-! ## A047900.P7355852784022878022

`A000079(n+3)*A026395(2*n)`
-/

namespace A047900.P7355852784022878022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 3) * A026395 (2 * n)

end

end A047900.P7355852784022878022

namespace A047900

/-- `A000079(n+3)*A026395(2*n)` -/
def P7355852784022878022.Spec : Prop :=
  ∀ n, P7355852784022878022.a n = A047900 (n + 1)

end A047900

/-! ## A047900.P4333008124707958399

`(A055842(n+1)+A000007(n))*A000079(n+1)`
-/

namespace A047900.P4333008124707958399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055842 (n + 1) + A000007 n) * A000079 (n + 1)

end

end A047900.P4333008124707958399

namespace A047900

/-- `(A055842(n+1)+A000007(n))*A000079(n+1)` -/
def P4333008124707958399.Spec : Prop :=
  ∀ n, P4333008124707958399.a n = A047900 (n + 1)

end A047900

/-!
# A047901: a(1) = 9; a(n+1) = a(n) * sum of decimal digits of a(n).

The programs for A047901, there is no canonical definition to state claims against.
-/

/-! ## A047901.P2963623959354364505

`A047912(n+2)`
-/

namespace A047901.P2963623959354364505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047912 (n + 2)

end

end A047901.P2963623959354364505

/-! ## A047901.P7526390312123687061

`record[A047912(A012257(n))]`
-/

namespace A047901.P7526390312123687061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047912 (A012257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047901.P7526390312123687061

/-! ## A047901.P12285456395456621448

`record[A111298(n+2)/10]`
-/

namespace A047901.P12285456395456621448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111298 (n + 2) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047901.P12285456395456621448

/-! ## A047901.P4524445453876513369

`A111298(2*(n+1))/10`
-/

namespace A047901.P4524445453876513369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111298 (2 * (n + 1)) : ℚ) / 10

end

end A047901.P4524445453876513369

/-!
# A047902: a(1) = 11; for n > 0, a(n+1) = a(n) * sum of digits of a(n).

The programs for A047902, there is no canonical definition to state claims against.
-/

/-! ## A047902.P13473643755024400910

`A057147(a(n-1))` with `a(0)=11`
-/

namespace A047902.P13473643755024400910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A057147 (a (n - 1)).toNat

end

end A047902.P13473643755024400910

/-!
# A047903: a(1) = 13; for n > 0, a(n+1) = a(n) * sum of digits of a(n).

The programs for A047903, there is no canonical definition to state claims against.
-/

/-! ## A047903.P14681400640173332993

`A057147(a(n-1))` with `a(0)=13`
-/

namespace A047903.P14681400640173332993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A057147 (a (n - 1)).toNat

end

end A047903.P14681400640173332993

/-!
# A047904: a(n+1) = a(n) + n (if n is odd), a(n+1) = a(n) * n (if n is even).

The programs for A047904, there is no canonical definition to state claims against.
-/

/-! ## A047904.P3869675831024778749

`A077138(n)+A037223(n)`
-/

namespace A047904.P3869675831024778749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077138 n + A037223 n

end

end A047904.P3869675831024778749

/-! ## A047904.P18050371754096330562

`A047906(n+1)+2*A077138(n)`
-/

namespace A047904.P18050371754096330562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047906 (n + 1) + 2 * A077138 n

end

end A047904.P18050371754096330562

/-! ## A047904.P2323867653551827

`2*A037223(n)-A047906(n+1)`
-/

namespace A047904.P2323867653551827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037223 n - A047906 (n + 1)

end

end A047904.P2323867653551827

/-! ## A047904.P17603288426854573049

`A077138(n)+A000165(A004526(n))`
-/

namespace A047904.P17603288426854573049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077138 n + A000165 (A004526 n).toNat

end

end A047904.P17603288426854573049

/-! ## A047904.P3783660858379493592

`2*A000165(A004526(n))-A047906(n+1)`
-/

namespace A047904.P3783660858379493592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000165 (A004526 n).toNat - A047906 (n + 1)

end

end A047904.P3783660858379493592

/-! ## A047904.P6847660554272110588

`A000165(A004526(n))+A037223(n)-A047906(n+1)`
-/

namespace A047904.P6847660554272110588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (A004526 n).toNat + (A037223 n - A047906 (n + 1))

end

end A047904.P6847660554272110588

/-!
# A047905: a(n+1) = a(n) + n (if n is even), a(n+1) = a(n) * n (if n is odd).

The programs for A047905, there is no canonical definition to state claims against.
-/

/-! ## A047905.P13500823283262416867

`A222559(n)+∏[A093178(n)]`
-/

namespace A047905.P13500823283262416867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222559 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A047905.P13500823283262416867

/-! ## A047905.P10210169396269408036

`A047907(n+1)+2*A222559(n)`
-/

namespace A047905.P10210169396269408036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047907 (n + 1) + 2 * A222559 n

end

end A047905.P10210169396269408036

/-! ## A047905.P13381829321678238955

`2*∏[A093178(n)]-A047907(n+1)`
-/

namespace A047905.P13381829321678238955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j) - A047907 (n + 1)

end

end A047905.P13381829321678238955

/-! ## A047905.P12087294742917016337

`A222559(n)+A001147(A065033(n))`
-/

namespace A047905.P12087294742917016337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222559 n + A001147 (A065033 n).toNat

end

end A047905.P12087294742917016337

/-! ## A047905.P4068575323999753467

`A222559(n)+A001147(A004526(n+1))`
-/

namespace A047905.P4068575323999753467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222559 n + A001147 (A004526 (n + 1)).toNat

end

end A047905.P4068575323999753467

/-! ## A047905.P16014116111481379086

`A222559(n)+A000142(n)/A037223(n)`
-/

namespace A047905.P16014116111481379086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222559 n : ℚ) + (A000142 n : ℚ) / (A037223 n : ℚ)

end

end A047905.P16014116111481379086

/-!
# A047906: a(n+1) = a(n) - n (if n is odd), a(n+1) = a(n) * n (if n is even).

The programs for A047906, there is no canonical definition to state claims against.
-/

/-! ## A047906.P11157843112388393546

`A037223(n)-A077138(n)`
-/

namespace A047906.P11157843112388393546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 n - A077138 n

end

end A047906.P11157843112388393546

/-! ## A047906.P1490900343680292694

`2*A037223(n)-A047904(n+1)`
-/

namespace A047906.P1490900343680292694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037223 n - A047904 (n + 1)

end

end A047906.P1490900343680292694

/-! ## A047906.P16379794473526083911

`A047904(n+1)-2*A077138(n)`
-/

namespace A047906.P16379794473526083911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047904 (n + 1) - 2 * A077138 n

end

end A047906.P16379794473526083911

/-! ## A047906.P12457974987964428732

`A000165(A004526(n))-A077138(n)`
-/

namespace A047906.P12457974987964428732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (A004526 n).toNat - A077138 n

end

end A047906.P12457974987964428732

/-! ## A047906.P13263140011192142070

`2*A000165(A004526(n))-A047904(n+1)`
-/

namespace A047906.P13263140011192142070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000165 (A004526 n).toNat - A047904 (n + 1)

end

end A047906.P13263140011192142070

/-! ## A047906.P9384940692263736781

`A000165(A004526(n))-(A047904(n+1)-A037223(n))`
-/

namespace A047906.P9384940692263736781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (A004526 n).toNat - (A047904 (n + 1) - A037223 n)

end

end A047906.P9384940692263736781

/-!
# A047907: a(n+1) = a(n) - n (if n is even), a(n+1) = a(n) * n (if n is odd).

The programs for A047907, there is no canonical definition to state claims against.
-/

/-! ## A047907.P9020145452682912502

`∏[A093178(n)]-A222559(n)`
-/

namespace A047907.P9020145452682912502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A222559 n

end

end A047907.P9020145452682912502

/-! ## A047907.P771373227069500249

`A047905(n+1)-2*A222559(n)`
-/

namespace A047907.P771373227069500249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047905 (n + 1) - 2 * A222559 n

end

end A047907.P771373227069500249

/-! ## A047907.P15382014335654021737

`2*∏[A093178(n)]-A047905(n+1)`
-/

namespace A047907.P15382014335654021737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j) - A047905 (n + 1)

end

end A047907.P15382014335654021737

/-! ## A047907.P14137604920516683393

`A001147(A065033(n))-A222559(n)`
-/

namespace A047907.P14137604920516683393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A065033 n).toNat - A222559 n

end

end A047907.P14137604920516683393

/-! ## A047907.P2844763898768355957

`A001147(A004526(n+1))-A222559(n)`
-/

namespace A047907.P2844763898768355957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A004526 (n + 1)).toNat - A222559 n

end

end A047907.P2844763898768355957

/-! ## A047907.P7885593123109156914

`A001147(n-A004526(n))-A222559(n)`
-/

namespace A047907.P7885593123109156914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 ((n : ℤ) - A004526 n).toNat - A222559 n

end

end A047907.P7885593123109156914

/-! ## A047907.P996567002815452912

`A000142(n)/A037223(n)-A222559(n)`
-/

namespace A047907.P996567002815452912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A037223 n : ℚ) - (A222559 n : ℚ)

end

end A047907.P996567002815452912

/-!
# A047909: Array read by antidiagonals upwards: h(n,k) = number of sequences with n copies each of 1,2,...,k and longest increasing subsequence of length k (n>=1, k>=1).

The programs for A047909, there is no canonical definition to state claims against.
-/

/-! ## A047909.P1064812238755608763

`A003056(C(A103905(n+1), A002260(n+1)))`
-/

namespace A047909.P1064812238755608763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A103905 (n + 1)).toNat (A002260 (n + 1)).toNat)

end

end A047909.P1064812238755608763

/-! ## A047909.P5813543016807664312

`A003056(C(A103905(n+1), A002262(n+1)))`
-/

namespace A047909.P5813543016807664312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A103905 (n + 1)).toNat (A002262 (n + 1)).toNat)

end

end A047909.P5813543016807664312

/-! ## A047909.P12167558492054500405

`A347026(A340409(n))`
-/

namespace A047909.P12167558492054500405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347026 (A340409 n).toNat

end

end A047909.P12167558492054500405

/-! ## A047909.P7318276757462883294

`A056609(A237770(n+1))`
-/

namespace A047909.P7318276757462883294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056609 (A237770 (n + 1)).toNat

end

end A047909.P7318276757462883294

/-! ## A047909.P7194496313733756685

`A225598(∑[A291684(n)]²)`
-/

namespace A047909.P7194496313733756685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225598 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A047909.P7194496313733756685

/-!
# A047910: Number of words on {1,1,1,2,2,2,...,n,n,n} with longest increasing subsequence of length n.

The programs for A047910, there is no canonical definition to state claims against.
-/

/-! ## A047910.P2911964398058958078

`A014606(n)-A269113(n)`
-/

namespace A047910.P2911964398058958078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014606 n - A269113 n

end

end A047910.P2911964398058958078

/-! ## A047910.P16201771527971406825

`A047909(∑[n+2]-1)`
-/

namespace A047910.P16201771527971406825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A047910.P16201771527971406825

/-! ## A047910.P14797595251997405548

`gcd(A010894(n), A047909(A034856(n+1)))`
-/

namespace A047910.P14797595251997405548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (n + 21)) (A047909 (A034856 (n + 1)).toNat)

end

end A047910.P14797595251997405548

/-! ## A047910.P1529820368898900278

`or(A047909(A034856(n+1)), A269129(n))`
-/

namespace A047910.P1529820368898900278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047909 (A034856 (n + 1)).toNat) (A269129 n)

end

end A047910.P1529820368898900278

/-! ## A047910.P5276616031566237088

`or(A047909(A034856(n+1)), A145649(n+1))`
-/

namespace A047910.P5276616031566237088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047909 (A034856 (n + 1)).toNat) (A145649 (n + 1))

end

end A047910.P5276616031566237088

/-!
# A047911: Number of sequences with n copies each of 1, 2, 3 and longest increasing subsequence of length 3.

The programs for A047911, there is no canonical definition to state claims against.
-/

/-! ## A047911.P10241456221163054999

`A006480(n+1)-A269121(n+1)`
-/

namespace A047911.P10241456221163054999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 (n + 1) - A269121 (n + 1)

end

end A047911.P10241456221163054999

/-! ## A047911.P2271097439133301742

`A188441(n+1)-(A269121(n+1)+A188441(n))`
-/

namespace A047911.P2271097439133301742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188441 (n + 1) - (A269121 (n + 1) + A188441 n)

end

end A047911.P2271097439133301742

/-! ## A047911.P5360685971296160395

`A047909(∑[n+2]+4)`
-/

namespace A047911.P5360685971296160395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A047911.P5360685971296160395

/-! ## A047911.P3719277810032081787

`A185255(n)+A047909(A167614(n+1))`
-/

namespace A047911.P3719277810032081787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 n + A047909 (A167614 (n + 1)).toNat

end

end A047911.P3719277810032081787

/-! ## A047911.P12336030067939898240

`A185284(n)+A047909(A167614(n+1))`
-/

namespace A047911.P12336030067939898240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A047909 (A167614 (n + 1)).toNat

end

end A047911.P12336030067939898240

/-!
# A047912: a(1) = 3; for n > 0, a(n+1) = a(n) * sum of digits of a(n).

The programs for A047912, there is no canonical definition to state claims against.
-/

/-! ## A047912.P11611084619064192612

`A047901(n%a(n-1))` with `a(0)=3`
-/

namespace A047912.P11611084619064192612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A047901 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A047912.P11611084619064192612

/-! ## A047912.P9613779000533250045

`A047901(n-floor((4*n-2)/a(n-1)))` with `a(0)=3`
-/

namespace A047912.P9613779000533250045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A047901 ((n : ℤ) - ⌊((4 * n : ℤ) - 2 : ℚ) / (a (n - 1) : ℚ)⌋).toNat

end

end A047912.P9613779000533250045

/-! ## A047912.P8915665492252132803

`A047901(round(acot(n)+n))%A047898(n+1)`
-/

namespace A047912.P8915665492252132803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047901 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) (A047898 (n + 1))

end

end A047912.P8915665492252132803

/-! ## A047912.P4842614586968738850

`A047901(round(sqrt(n²+1)))%A047898(n+1)`
-/

namespace A047912.P4842614586968738850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047901 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A047898 (n + 1))

end

end A047912.P4842614586968738850

/-!
# A047913: Triangle of numbers a(n,k) = number of partitions of k such that k = n + n_1 + n_2 + ... + n_t where n_1 <= 2n and n_{i+1} <= 2n_i for all i.

The programs for A047913, there is no canonical definition to state claims against.
-/

/-! ## A047913.P7330553154897337748

`A049286(A038722(n+1))`
-/

namespace A047913.P7330553154897337748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (A038722 (n + 1)).toNat

end

end A047913.P7330553154897337748

/-! ## A047913.P2991151245209284262

`A049286(A061579(n)+1)`
-/

namespace A047913.P2991151245209284262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (A061579 n + 1).toNat

end

end A047913.P2991151245209284262

/-! ## A047913.P8494476638443114380

`A049286(∑[A198954(n)]-n)`
-/

namespace A047913.P8494476638443114380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A047913.P8494476638443114380

/-! ## A047913.P3567592849455528768

`A049286(A093995(n+1)-n)`
-/

namespace A047913.P3567592849455528768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A047913.P3567592849455528768

/-! ## A047913.P1276631483063738376

`A049286(A002024(n+1)²-n)`
-/

namespace A047913.P1276631483063738376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A047913.P1276631483063738376

/-! ## A047913.P1435397105150936395

`A049286(A185869(n+1)-(3*n+1))`
-/

namespace A047913.P1435397105150936395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (A185869 (n + 1) - (3 * n + 1 : ℤ)).toNat

end

end A047913.P1435397105150936395

/-!
# A047915: a(n) = 3*n^2-2*n+6.

The programs for A047915, the canonical program `A047915.P18147264027610424030` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047915 has offset 0).

The definition of A047915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²-2*n+6` (program `A047915.P18147264027610424030`, by `A047915.P18147264027610424030.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A047915.P18147264027610424030

`3*n²-2*n+6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047915

/-- `3*n²-2*n+6` -/
def P18147264027610424030.Spec : Prop :=
  ∀ n, P18147264027610424030.a n = A047915 n

theorem P18147264027610424030.correct : P18147264027610424030.Spec := by
  intro n
  simp only [A047915]

end A047915

/-! ## A047915.P451916595314682030

`∑[a(n-1)+6]` with `a(0)=6, a(1)=1`
-/

namespace A047915.P451916595314682030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047915.P451916595314682030

namespace A047915

/-- `∑[a(n-1)+6]` -/
def P451916595314682030.Spec : Prop :=
  ∀ n, (P451916595314682030.a n : ℤ) = A047915 n

end A047915

/-! ## A047915.P17493504235633268202

`or(2, Δ[(n-1)^3]+n+3)`
-/

namespace A047915.P17493504235633268202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (n + 1) - f1 n + (n + 3 : ℤ))

end

end A047915.P17493504235633268202

namespace A047915

/-- `or(2, Δ[(n-1)^3]+n+3)` -/
def P17493504235633268202.Spec : Prop :=
  ∀ n, P17493504235633268202.a n = A047915 n

end A047915

/-! ## A047915.P1087195733262487469

`xor(2, Δ[(n-1)^3]+n+3)`
-/

namespace A047915.P1087195733262487469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f1 (n + 1) - f1 n + (n + 3 : ℤ))

end

end A047915.P1087195733262487469

namespace A047915

/-- `xor(2, Δ[(n-1)^3]+n+3)` -/
def P1087195733262487469.Spec : Prop :=
  ∀ n, P1087195733262487469.a n = A047915 n

end A047915

/-! ## A047915.P13124557381822029630

`∑[2*a(n-1)-a(n-2)]` with `a(0)=6, a(1)=1, a(2)=7`
-/

namespace A047915.P13124557381822029630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 1, 7] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047915.P13124557381822029630

namespace A047915

/-- `∑[2*a(n-1)-a(n-2)]` -/
def P13124557381822029630.Spec : Prop :=
  ∀ n, P13124557381822029630.a n = A047915 n

end A047915

/-! ## A047915.P9084745574218326917

`abs(A056106(n)+5-n)`
-/

namespace A047915.P9084745574218326917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056106 n + (5 - (n : ℤ))|

end

end A047915.P9084745574218326917

namespace A047915

/-- `abs(A056106(n)+5-n)` -/
def P9084745574218326917.Spec : Prop :=
  ∀ n, P9084745574218326917.a n = A047915 n

end A047915

/-! ## A047915.P2648815854339296377

`abs(A049450(n)+6-n)`
-/

namespace A047915.P2648815854339296377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049450 n + (6 - (n : ℤ))|

end

end A047915.P2648815854339296377

namespace A047915

/-- `abs(A049450(n)+6-n)` -/
def P2648815854339296377.Spec : Prop :=
  ∀ n, P2648815854339296377.a n = A047915 n

end A047915

/-! ## A047915.P6700158602980148001

`2*(A000567(n)/2+3)`
-/

namespace A047915.P6700158602980148001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000567 n : ℚ) / 2 + 3)

end

end A047915.P6700158602980148001

namespace A047915

/-- `2*(A000567(n)/2+3)` -/
def P6700158602980148001.Spec : Prop :=
  ∀ n, P6700158602980148001.a n = (A047915 n : ℚ)

end A047915

/-! ## A047915.P159285801885663228

`2*((A056105(n)+1)/2+2)`
-/

namespace A047915.P159285801885663228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A056105 n + 1 : ℚ) / 2 + 2)

end

end A047915.P159285801885663228

namespace A047915

/-- `2*((A056105(n)+1)/2+2)` -/
def P159285801885663228.Spec : Prop :=
  ∀ n, P159285801885663228.a n = (A047915 n : ℚ)

end A047915

/-! ## A047915.P13985555555699327111

`A167585(n+1)%A259055(n)`
-/

namespace A047915.P13985555555699327111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167585 (n + 1)) (A259055 n)

end

end A047915.P13985555555699327111

namespace A047915

/-- `A167585(n+1)%A259055(n)` -/
def P13985555555699327111.Spec : Prop :=
  ∀ n, P13985555555699327111.a n = A047915 n

end A047915

/-! ## A047915.P9846794683367281675

`Δ[(n+1)^3-A051865(n)]`
-/

namespace A047915.P9846794683367281675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A051865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047915.P9846794683367281675

namespace A047915

/-- `Δ[(n+1)^3-A051865(n)]` -/
def P9846794683367281675.Spec : Prop :=
  ∀ n, P9846794683367281675.a n = A047915 n

end A047915

/-! ## A047915.P16349740961189590856

`Δ[A052905(n+1)+A034324(n+1)]`
-/

namespace A047915.P16349740961189590856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (n + 1) + A034324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047915.P16349740961189590856

namespace A047915

/-- `Δ[A052905(n+1)+A034324(n+1)]` -/
def P16349740961189590856.Spec : Prop :=
  ∀ n, P16349740961189590856.a n = A047915 n

end A047915

/-! ## A047915.P2132923052451330738

`Δ[A000124(n+4)+(n-1)^3]`
-/

namespace A047915.P2132923052451330738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 4) + ((n : ℤ) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047915.P2132923052451330738

namespace A047915

/-- `Δ[A000124(n+4)+(n-1)^3]` -/
def P2132923052451330738.Spec : Prop :=
  ∀ n, P2132923052451330738.a n = A047915 n

end A047915

/-! ## A047915.P8939223109956277370

`Δ[6*C(n, 3)+A000124(n+5)+5]`
-/

namespace A047915.P8939223109956277370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * Nat.choose n 3 : ℤ) + (A000124 (n + 5) + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047915.P8939223109956277370

namespace A047915

/-- `Δ[6*C(n, 3)+A000124(n+5)+5]` -/
def P8939223109956277370.Spec : Prop :=
  ∀ n, P8939223109956277370.a n = A047915 n

end A047915

/-! ## A047915.P10008947960076854358

`∑[A065170(a(n-1))]` with `a(0)=6`
-/

namespace A047915.P10008947960076854358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A065170 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047915.P10008947960076854358

namespace A047915

/-- `∑[A065170(a(n-1))]` -/
def P10008947960076854358.Spec : Prop :=
  ∀ n, P10008947960076854358.a n = A047915 n

end A047915

/-! ## A047915.P10972916144669130407

`∑[A020715(a(n-1))]` with `a(0)=6, a(1)=1`
-/

namespace A047915.P10972916144669130407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 1] fun n f1 =>
  A020715 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047915.P10972916144669130407

namespace A047915

/-- `∑[A020715(a(n-1))]` -/
def P10972916144669130407.Spec : Prop :=
  ∀ n, P10972916144669130407.a n = A047915 n

end A047915

/-! ## A047915.P2304509283733377158

`∑[A146308(a(n-1))]` with `a(0)=6, a(1)=1`
-/

namespace A047915.P2304509283733377158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 1] fun n f1 =>
  A146308 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047915.P2304509283733377158

namespace A047915

/-- `∑[A146308(a(n-1))]` -/
def P2304509283733377158.Spec : Prop :=
  ∀ n, P2304509283733377158.a n = A047915 n

end A047915

/-! ## A047915.P14548718324818800635

`A000027(6*C(n, 2)+n+6)`
-/

namespace A047915.P14548718324818800635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (6 * Nat.choose n 2 + n + 6)

end

end A047915.P14548718324818800635

namespace A047915

/-- `A000027(6*C(n, 2)+n+6)` -/
def P14548718324818800635.Spec : Prop :=
  ∀ n, P14548718324818800635.a n = A047915 n

end A047915

/-!
# A047916: Triangular array read by rows: a(n,k) = phi(n/k)*(n/k)^k*k! if k|n else 0 (1<=k<=n).

The programs for A047916, there is no canonical definition to state claims against.
-/

/-! ## A047916.P531356160788182765

`∑[char[∑[n]]]*A047917(n+1)`
-/

namespace A047916.P531356160788182765
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A047917 (n + 1)

end

end A047916.P531356160788182765

/-! ## A047916.P3826179720330436381

`A047917(n+1)*A049840(n+1)`
-/

namespace A047916.P3826179720330436381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047917 (n + 1) * A049840 (n + 1)

end

end A047916.P3826179720330436381

/-! ## A047916.P8471949978351402802

`A047917(n+1)*A051173(n+1)`
-/

namespace A047916.P8471949978351402802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047917 (n + 1) * A051173 (n + 1)

end

end A047916.P8471949978351402802

/-! ## A047916.P9537796828078807987

`A047917(n+1)*A074712(n+1)`
-/

namespace A047916.P9537796828078807987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047917 (n + 1) * A074712 (n + 1)

end

end A047916.P9537796828078807987

/-! ## A047916.P6703224250485065554

`A047917(n+1)*A123229(n+1)`
-/

namespace A047916.P6703224250485065554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047917 (n + 1) * A123229 (n + 1)

end

end A047916.P6703224250485065554

/-! ## A047916.P17649241883437969932

`A047917(n+1)*A127446(n+1)`
-/

namespace A047916.P17649241883437969932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047917 (n + 1) * A127446 (n + 1)

end

end A047916.P17649241883437969932

/-! ## A047916.P8749846166599470314

`A047917(n+1)*A199408(n+1)`
-/

namespace A047916.P8749846166599470314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047917 (n + 1) * A199408 (n + 1)

end

end A047916.P8749846166599470314

/-! ## A047916.P2966092251651392197

`A047917(n+1)*A334231(n+1)`
-/

namespace A047916.P2966092251651392197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047917 (n + 1) * A334231 (n + 1)

end

end A047916.P2966092251651392197

/-! ## A047916.P365190342549736082

`A003057(n+2)*A047917(n+1)-A047917(n+1)`
-/

namespace A047916.P365190342549736082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * A047917 (n + 1) - A047917 (n + 1)

end

end A047916.P365190342549736082

/-! ## A047916.P8871881638279090012

`A047917(n+1)*A289236(n+1)`
-/

namespace A047916.P8871881638279090012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047917 (n + 1) * A289236 (n + 1)

end

end A047916.P8871881638279090012

/-!
# A047917: Triangular array read by rows: a(n,k) = phi(n/k)*(n/k)^k*k!/n if k|n else 0 (1<=k<=n).

The programs for A047917, there is no canonical definition to state claims against.
-/

/-! ## A047917.P5024941532504433735

`A047916(n+1)/A002024(n+1)`
-/

namespace A047917.P5024941532504433735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047916 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A047917.P5024941532504433735

/-! ## A047917.P16102770849662247155

`A047916(n+1)/A049840(n+1)`
-/

namespace A047917.P16102770849662247155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047916 (n + 1) : ℚ) / (A049840 (n + 1) : ℚ)

end

end A047917.P16102770849662247155

/-! ## A047917.P4198654975926821072

`A047916(n+1)/A051173(n+1)`
-/

namespace A047917.P4198654975926821072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047916 (n + 1) : ℚ) / (A051173 (n + 1) : ℚ)

end

end A047917.P4198654975926821072

/-! ## A047917.P5487205039517571306

`A047916(n+1)/A074712(n+1)`
-/

namespace A047917.P5487205039517571306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047916 (n + 1) : ℚ) / (A074712 (n + 1) : ℚ)

end

end A047917.P5487205039517571306

/-! ## A047917.P17368566700294231187

`A047916(n+1)/A123229(n+1)`
-/

namespace A047917.P17368566700294231187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047916 (n + 1) : ℚ) / (A123229 (n + 1) : ℚ)

end

end A047917.P17368566700294231187

/-! ## A047917.P8679808472432312834

`A047916(n+1)/A199408(n+1)`
-/

namespace A047917.P8679808472432312834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047916 (n + 1) : ℚ) / (A199408 (n + 1) : ℚ)

end

end A047917.P8679808472432312834

/-! ## A047917.P17084804307261266775

`A047916(n+1)/A334231(n+1)`
-/

namespace A047917.P17084804307261266775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047916 (n + 1) : ℚ) / (A334231 (n + 1) : ℚ)

end

end A047917.P17084804307261266775

/-! ## A047917.P7435310799581448800

`A047916(n+1)/A000194(2*(n+1))`
-/

namespace A047917.P7435310799581448800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047916 (n + 1) : ℚ) / (A000194 (2 * (n + 1)) : ℚ)

end

end A047917.P7435310799581448800

/-! ## A047917.P16850920156652253382

`A047916(n+1)/(A002260(n+1)*A010766(n+1))`
-/

namespace A047917.P16850920156652253382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047916 (n + 1) : ℚ) / (A002260 (n + 1) * A010766 (n + 1) : ℚ)

end

end A047917.P16850920156652253382

/-! ## A047917.P14933577349270330933

`A047916(n+1)/A289236(n+1)`
-/

namespace A047917.P14933577349270330933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047916 (n + 1) : ℚ) / (A289236 (n + 1) : ℚ)

end

end A047917.P14933577349270330933

/-!
# A047918: Triangular array read by rows: a(n,k) = Sum_{d|k} mu(d)*U(n,k/d) if k|n else 0, where U(n,k) = A047916(n,k) (1<=k<=n).

The programs for A047918, there is no canonical definition to state claims against.
-/

/-! ## A047918.P15245532673582174911

`∑[char[∑[n]]]*A047919(n+1)`
-/

namespace A047918.P15245532673582174911
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A047919 (n + 1)

end

end A047918.P15245532673582174911

/-! ## A047918.P11055719112632015665

`A047919(n+1)*A049840(n+1)`
-/

namespace A047918.P11055719112632015665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047919 (n + 1) * A049840 (n + 1)

end

end A047918.P11055719112632015665

/-! ## A047918.P2599208178708657383

`A047919(n+1)*A051173(n+1)`
-/

namespace A047918.P2599208178708657383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047919 (n + 1) * A051173 (n + 1)

end

end A047918.P2599208178708657383

/-! ## A047918.P9825190237707165352

`A047919(n+1)*A074712(n+1)`
-/

namespace A047918.P9825190237707165352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047919 (n + 1) * A074712 (n + 1)

end

end A047918.P9825190237707165352

/-! ## A047918.P18176098683691125795

`A047919(n+1)*A123229(n+1)`
-/

namespace A047918.P18176098683691125795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047919 (n + 1) * A123229 (n + 1)

end

end A047918.P18176098683691125795

/-! ## A047918.P9427849217848979609

`A047919(n+1)*A127446(n+1)`
-/

namespace A047918.P9427849217848979609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047919 (n + 1) * A127446 (n + 1)

end

end A047918.P9427849217848979609

/-! ## A047918.P11836017967860356989

`A047919(n+1)*A199408(n+1)`
-/

namespace A047918.P11836017967860356989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047919 (n + 1) * A199408 (n + 1)

end

end A047918.P11836017967860356989

/-! ## A047918.P5498997242962399624

`A047919(n+1)*A334231(n+1)`
-/

namespace A047918.P5498997242962399624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047919 (n + 1) * A334231 (n + 1)

end

end A047918.P5498997242962399624

/-! ## A047918.P6304785010326409960

`A047919(n+1)*A289236(n+1)`
-/

namespace A047918.P6304785010326409960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047919 (n + 1) * A289236 (n + 1)

end

end A047918.P6304785010326409960

/-!
# A047919: Triangular array read by rows: a(n,k) = Sum_{d|k} mu(d)*U(n,k/d)/n if k|n else 0, where U(n,k) = A047916(n,k) (1<=k<=n).

The programs for A047919, there is no canonical definition to state claims against.
-/

/-! ## A047919.P7692777007448336838

`A047918(n+1)/A002024(n+1)`
-/

namespace A047919.P7692777007448336838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047918 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A047919.P7692777007448336838

/-! ## A047919.P6008415900813824661

`A047918(n+1)/A049840(n+1)`
-/

namespace A047919.P6008415900813824661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047918 (n + 1) : ℚ) / (A049840 (n + 1) : ℚ)

end

end A047919.P6008415900813824661

/-! ## A047919.P4164798593159565559

`A047918(n+1)/A051173(n+1)`
-/

namespace A047919.P4164798593159565559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047918 (n + 1) : ℚ) / (A051173 (n + 1) : ℚ)

end

end A047919.P4164798593159565559

/-! ## A047919.P10867783102189498637

`A047918(n+1)/A074712(n+1)`
-/

namespace A047919.P10867783102189498637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047918 (n + 1) : ℚ) / (A074712 (n + 1) : ℚ)

end

end A047919.P10867783102189498637

/-! ## A047919.P6117018865215354240

`A047918(n+1)/A123229(n+1)`
-/

namespace A047919.P6117018865215354240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047918 (n + 1) : ℚ) / (A123229 (n + 1) : ℚ)

end

end A047919.P6117018865215354240

/-! ## A047919.P12090411571731475495

`A047918(n+1)/A199408(n+1)`
-/

namespace A047919.P12090411571731475495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047918 (n + 1) : ℚ) / (A199408 (n + 1) : ℚ)

end

end A047919.P12090411571731475495

/-! ## A047919.P12132777554378528758

`A047918(n+1)/A334231(n+1)`
-/

namespace A047919.P12132777554378528758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047918 (n + 1) : ℚ) / (A334231 (n + 1) : ℚ)

end

end A047919.P12132777554378528758

/-! ## A047919.P10327806154323678499

`A047918(n+1)/A000194(2*(n+1))`
-/

namespace A047919.P10327806154323678499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047918 (n + 1) : ℚ) / (A000194 (2 * (n + 1)) : ℚ)

end

end A047919.P10327806154323678499

/-! ## A047919.P7450772476992560817

`A047918(n+1)/(A002260(n+1)*A010766(n+1))`
-/

namespace A047919.P7450772476992560817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047918 (n + 1) : ℚ) / (A002260 (n + 1) * A010766 (n + 1) : ℚ)

end

end A047919.P7450772476992560817

/-! ## A047919.P4060877735826215750

`A047918(n+1)/A289236(n+1)`
-/

namespace A047919.P4060877735826215750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047918 (n + 1) : ℚ) / (A289236 (n + 1) : ℚ)

end

end A047919.P4060877735826215750

/-!
# A047920: Triangular array formed from successive differences of factorial numbers.

The programs for A047920, there is no canonical definition to state claims against.
-/

/-! ## A047920.P3701603395663747701

`A068106(A061579(n))`
-/

namespace A047920.P3701603395663747701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A061579 n).toNat

end

end A047920.P3701603395663747701

/-! ## A047920.P7983122519977798253

`A068106(A114327(n)+n)`
-/

namespace A047920.P7983122519977798253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A114327 n + (n : ℤ)).toNat

end

end A047920.P7983122519977798253

/-! ## A047920.P17542763577586143890

`A060475(n)*A119502(n)`
-/

namespace A047920.P17542763577586143890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 n * A119502 n

end

end A047920.P17542763577586143890

/-! ## A047920.P6036915254890622325

`A068106(∑[A198954(n)-1])`
-/

namespace A047920.P6036915254890622325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047920.P6036915254890622325

/-! ## A047920.P4634163969347030330

`A025581(n)!*A060475(n)`
-/

namespace A047920.P4634163969347030330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A060475 n

end

end A047920.P4634163969347030330

/-! ## A047920.P13911381963615254924

`A068106(A038722(n+1)-1)`
-/

namespace A047920.P13911381963615254924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A038722 (n + 1) - 1).toNat

end

end A047920.P13911381963615254924

/-! ## A047920.P9795664984727182999

`A374420(n)+A374419(n)`
-/

namespace A047920.P9795664984727182999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374420 n + A374419 n

end

end A047920.P9795664984727182999

/-!
# A047923: Main diagonal of array in A038150.

The programs for A047923, there is no canonical definition to state claims against.
-/

/-! ## A047923.P1280200386992774608

`A038150(∑[4*n])`
-/

namespace A047923.P1280200386992774608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038150 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047923.P1280200386992774608

/-! ## A047923.P10431138491529007360

`record[A003982(n)*A038150(n)]`
-/

namespace A047923.P10431138491529007360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A038150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047923.P10431138491529007360

/-! ## A047923.P17770471083589360435

`record[and(A038150(n), A185917(n+1))]`
-/

namespace A047923.P17770471083589360435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038150 n) (A185917 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047923.P17770471083589360435

/-! ## A047923.P18274064733784598064

`or(A000007(n), A038150(A046092(n)))`
-/

namespace A047923.P18274064733784598064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A038150 (A046092 n).toNat)

end

end A047923.P18274064733784598064

/-! ## A047923.P10788214550801088517

`A038150(A046092(n))%A005015(n)²`
-/

namespace A047923.P10788214550801088517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038150 (A046092 n).toNat) (A005015 n ^ 2)

end

end A047923.P10788214550801088517

/-! ## A047923.P9082131007084925647

`A071936(n+1)²*A038150(A046092(n))`
-/

namespace A047923.P9082131007084925647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (n + 1) ^ 2 * A038150 (A046092 n).toNat

end

end A047923.P9082131007084925647

/-! ## A047923.P14359539088346794891

`A007318((-1)^n+2)*A038150(A046092(n))`
-/

namespace A047923.P14359539088346794891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((-1) ^ n + 2).toNat * A038150 (A046092 n).toNat

end

end A047923.P14359539088346794891

/-!
# A047924: a(n) = B_{A_n+1}+1, where A_n = floor(n*phi) = A000201(n), B_n = floor(n*phi^2) = A001950(n) and phi is the golden ratio.

The programs for A047924, the canonical program `A047924.P14531844885665270262` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047924 has offset 0).

The definition of A047924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047924.P16634777920906585758

`2*floor(ϕ*n)+3+n`
-/

namespace A047924.P16634777920906585758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * (n : ℝ)⌋ + 3 + (n : ℤ)

end

end A047924.P16634777920906585758

namespace A047924

/-- `2*floor(ϕ*n)+3+n` -/
def P16634777920906585758.Spec : Prop :=
  ∀ n, P16634777920906585758.a n = A047924 n

end A047924

/-! ## A047924.P14531844885665270262

`abs(A288709(n+1)-n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A047924

/-- `abs(A288709(n+1)-n)` -/
def P14531844885665270262.Spec : Prop :=
  ∀ n, P14531844885665270262.a n = A047924 n

theorem P14531844885665270262.correct : P14531844885665270262.Spec := by
  intro n
  simp only [A047924]

end A047924

/-! ## A047924.P62650972516150697

`A000027(ceil(ϕ*comp[ceil(ϕ*n)])+1)`
-/

namespace A047924.P62650972516150697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌈Real.goldenRatio * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ)⌉ + 1).toNat

end

end A047924.P62650972516150697

namespace A047924

/-- `A000027(ceil(ϕ*comp[ceil(ϕ*n)])+1)` -/
def P62650972516150697.Spec : Prop :=
  ∀ n, P62650972516150697.a n = A047924 n

end A047924

/-! ## A047924.P13291356087432717874

`∑[A026355(Δ[A026355(n)]+1)]`
-/

namespace A047924.P13291356087432717874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047924.P13291356087432717874

namespace A047924

/-- `∑[A026355(Δ[A026355(n)]+1)]` -/
def P13291356087432717874.Spec : Prop :=
  ∀ n, P13291356087432717874.a n = A047924 n

end A047924

/-! ## A047924.P6073484432516021879

`∩[A190439(n+1), A191270(n+1)]`
-/

namespace A047924.P6073484432516021879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047924.P6073484432516021879

namespace A047924

/-- `∩[A190439(n+1), A191270(n+1)]` -/
def P6073484432516021879.Spec : Prop :=
  ∀ n, (P6073484432516021879.a n : ℤ) = A047924 n

end A047924

/-! ## A047924.P14227639228705519303

`record[A019444(n+1)+2+n]`
-/

namespace A047924.P14227639228705519303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019444 (n + 1) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047924.P14227639228705519303

namespace A047924

/-- `record[A019444(n+1)+2+n]` -/
def P14227639228705519303.Spec : Prop :=
  ∀ n, P14227639228705519303.a n = A047924 n

end A047924

/-! ## A047924.P12065396590432755002

`A004957(A026351(n))`
-/

namespace A047924.P12065396590432755002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A026351 n).toNat

end

end A047924.P12065396590432755002

namespace A047924

/-- `A004957(A026351(n))` -/
def P12065396590432755002.Spec : Prop :=
  ∀ n, P12065396590432755002.a n = A047924 n

end A047924

/-! ## A047924.P13671589568413253352

`A004957(comp[A004957(n)])`
-/

namespace A047924.P13671589568413253352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A047924.P13671589568413253352

namespace A047924

/-- `A004957(comp[A004957(n)])` -/
def P13671589568413253352.Spec : Prop :=
  ∀ n, P13671589568413253352.a n = A047924 n

end A047924

/-! ## A047924.P2459674032432253981

`A004957(A026352(n)-n)`
-/

namespace A047924.P2459674032432253981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A026352 n - (n : ℤ)).toNat

end

end A047924.P2459674032432253981

namespace A047924

/-- `A004957(A026352(n)-n)` -/
def P2459674032432253981.Spec : Prop :=
  ∀ n, P2459674032432253981.a n = A047924 n

end A047924

/-! ## A047924.P1561359093812497329

`A004957(A026355(n+1)-1)`
-/

namespace A047924.P1561359093812497329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A026355 (n + 1) - 1).toNat

end

end A047924.P1561359093812497329

namespace A047924

/-- `A004957(A026355(n+1)-1)` -/
def P1561359093812497329.Spec : Prop :=
  ∀ n, P1561359093812497329.a n = A047924 n

end A047924

/-! ## A047924.P9554395328925659235

`A004957(A099267(n+1)-1)`
-/

namespace A047924.P9554395328925659235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A099267 (n + 1) - 1).toNat

end

end A047924.P9554395328925659235

namespace A047924

/-- `A004957(A099267(n+1)-1)` -/
def P9554395328925659235.Spec : Prop :=
  ∀ n, P9554395328925659235.a n = A047924 n

end A047924

/-! ## A047924.P371363047599080745

`A004957(A060143(n)+1+n)`
-/

namespace A047924.P371363047599080745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A060143 n + 1 + (n : ℤ)).toNat

end

end A047924.P371363047599080745

namespace A047924

/-- `A004957(A060143(n)+1+n)` -/
def P371363047599080745.Spec : Prop :=
  ∀ n, P371363047599080745.a n = A047924 n

end A047924

/-! ## A047924.P17848885178719997138

`A004957(A026356(n+1)-(n+1))`
-/

namespace A047924.P17848885178719997138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A026356 (n + 1) - (n + 1 : ℤ)).toNat

end

end A047924.P17848885178719997138

namespace A047924

/-- `A004957(A026356(n+1)-(n+1))` -/
def P17848885178719997138.Spec : Prop :=
  ∀ n, P17848885178719997138.a n = A047924 n

end A047924

/-! ## A047924.P6450421330080224201

`A026352(A026352(n)-n)`
-/

namespace A047924.P6450421330080224201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (A026352 n - (n : ℤ)).toNat

end

end A047924.P6450421330080224201

namespace A047924

/-- `A026352(A026352(n)-n)` -/
def P6450421330080224201.Spec : Prop :=
  ∀ n, P6450421330080224201.a n = A047924 n

end A047924

/-! ## A047924.P16974144356569408699

`abs(1-A188468(2*(n+1)))`
-/

namespace A047924.P16974144356569408699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A188468 (2 * (n + 1))|

end

end A047924.P16974144356569408699

namespace A047924

/-- `abs(1-A188468(2*(n+1)))` -/
def P16974144356569408699.Spec : Prop :=
  ∀ n, P16974144356569408699.a n = A047924 n

end A047924

/-! ## A047924.P1762405900995882947

`A004957(A054089(2*n+1))`
-/

namespace A047924.P1762405900995882947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A054089 (2 * n + 1)).toNat

end

end A047924.P1762405900995882947

namespace A047924

/-- `A004957(A054089(2*n+1))` -/
def P1762405900995882947.Spec : Prop :=
  ∀ n, P1762405900995882947.a n = A047924 n

end A047924

/-! ## A047924.P4241015324452866712

`record[Δ[A054067(n+1)]+2]`
-/

namespace A047924.P4241015324452866712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054067 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047924.P4241015324452866712

namespace A047924

/-- `record[Δ[A054067(n+1)]+2]` -/
def P4241015324452866712.Spec : Prop :=
  ∀ n, P4241015324452866712.a n = A047924 n

end A047924

/-! ## A047924.P1026736674033278596

`A000201(A026356(n+1))`
-/

namespace A047924.P1026736674033278596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A026356 (n + 1)).toNat

end

end A047924.P1026736674033278596

namespace A047924

/-- `A000201(A026356(n+1))` -/
def P1026736674033278596.Spec : Prop :=
  ∀ n, P1026736674033278596.a n = A047924 n

end A047924

/-!
# A047925: 3rd column of array in A038150.

The programs for A047925, the canonical program `A047925.P9488083209889187957` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047925 has offset 0).

The definition of A047925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047925.P9488083209889187957

`5*comp[ceil(ϕ*n)]-2*n+3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047925

/-- `5*comp[ceil(ϕ*n)]-2*n+3` -/
def P9488083209889187957.Spec : Prop :=
  ∀ n, P9488083209889187957.a n = A047925 n

theorem P9488083209889187957.correct : P9488083209889187957.Spec := by
  intro n
  simp only [A047925]

end A047925

/-! ## A047925.P5121638017547925391

`∑[A016885(Δ[A026355(n)])]`
-/

namespace A047925.P5121638017547925391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047925.P5121638017547925391

namespace A047925

/-- `∑[A016885(Δ[A026355(n)])]` -/
def P5121638017547925391.Spec : Prop :=
  ∀ n, P5121638017547925391.a n = A047925 n

end A047925

/-! ## A047925.P9481325000513915126

`∑[A020712(Δ[A026355(n)])]`
-/

namespace A047925.P9481325000513915126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047925.P9481325000513915126

namespace A047925

/-- `∑[A020712(Δ[A026355(n)])]` -/
def P9481325000513915126.Spec : Prop :=
  ∀ n, P9481325000513915126.a n = A047925 n

end A047925

/-! ## A047925.P1092549203258696845

`A188438(A026351(n))`
-/

namespace A047925.P1092549203258696845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188438 (A026351 n).toNat

end

end A047925.P1092549203258696845

namespace A047925

/-- `A188438(A026351(n))` -/
def P1092549203258696845.Spec : Prop :=
  ∀ n, P1092549203258696845.a n = A047925 n

end A047925

/-! ## A047925.P3113260519200139435

`A188012(A026355(n+1))`
-/

namespace A047925.P3113260519200139435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (A026355 (n + 1)).toNat

end

end A047925.P3113260519200139435

namespace A047925

/-- `A188012(A026355(n+1))` -/
def P3113260519200139435.Spec : Prop :=
  ∀ n, P3113260519200139435.a n = A047925 n

end A047925

/-! ## A047925.P6484022305746779289

`A188012(A026351(n)+1)`
-/

namespace A047925.P6484022305746779289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (A026351 n + 1).toNat

end

end A047925.P6484022305746779289

namespace A047925

/-- `A188012(A026351(n)+1)` -/
def P6484022305746779289.Spec : Prop :=
  ∀ n, P6484022305746779289.a n = A047925 n

end A047925

/-! ## A047925.P8963135646758344944

`A188012(A099267(n+1))`
-/

namespace A047925.P8963135646758344944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (A099267 (n + 1)).toNat

end

end A047925.P8963135646758344944

namespace A047925

/-- `A188012(A099267(n+1))` -/
def P8963135646758344944.Spec : Prop :=
  ∀ n, P8963135646758344944.a n = A047925 n

end A047925

/-! ## A047925.P8475221000346982496

`A188012(A026356(n+1)-n)`
-/

namespace A047925.P8475221000346982496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (A026356 (n + 1) - (n : ℤ)).toNat

end

end A047925.P8475221000346982496

namespace A047925

/-- `A188012(A026356(n+1)-n)` -/
def P8475221000346982496.Spec : Prop :=
  ∀ n, P8475221000346982496.a n = A047925 n

end A047925

/-! ## A047925.P632796898049808645

`A188012(A026352(n)+1-n)`
-/

namespace A047925.P632796898049808645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (A026352 n + (1 - (n : ℤ))).toNat

end

end A047925.P632796898049808645

namespace A047925

/-- `A188012(A026352(n)+1-n)` -/
def P632796898049808645.Spec : Prop :=
  ∀ n, P632796898049808645.a n = A047925 n

end A047925

/-! ## A047925.P1586654918066536455

`A188012(1-(n-A026352(n)))`
-/

namespace A047925.P1586654918066536455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (1 - ((n : ℤ) - A026352 n)).toNat

end

end A047925.P1586654918066536455

namespace A047925

/-- `A188012(1-(n-A026352(n)))` -/
def P1586654918066536455.Spec : Prop :=
  ∀ n, P1586654918066536455.a n = A047925 n

end A047925

/-! ## A047925.P3172816033108552691

`A188012(A188010(2*(n+1))-n)`
-/

namespace A047925.P3172816033108552691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (A188010 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A047925.P3172816033108552691

namespace A047925

/-- `A188012(A188010(2*(n+1))-n)` -/
def P3172816033108552691.Spec : Prop :=
  ∀ n, P3172816033108552691.a n = A047925 n

end A047925

/-! ## A047925.P10998324512002719247

`A188438(A188010(2*n+1)-n)`
-/

namespace A047925.P10998324512002719247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188438 (A188010 (2 * n + 1) - (n : ℤ)).toNat

end

end A047925.P10998324512002719247

namespace A047925

/-- `A188438(A188010(2*n+1)-n)` -/
def P10998324512002719247.Spec : Prop :=
  ∀ n, P10998324512002719247.a n = A047925 n

end A047925

/-! ## A047925.P5900830908845908731

`A003623(floor(ϕ*n+n+2))`
-/

namespace A047925.P5900830908845908731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 ⌊Real.goldenRatio * (n : ℝ) + (n + 2 : ℝ)⌋.toNat

end

end A047925.P5900830908845908731

namespace A047925

/-- `A003623(floor(ϕ*n+n+2))` -/
def P5900830908845908731.Spec : Prop :=
  ∀ n, P5900830908845908731.a n = A047925 n

end A047925

/-! ## A047925.P3968717783523026059

`A188473(A188434(n+1)-n)`
-/

namespace A047925.P3968717783523026059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (A188434 (n + 1) - (n : ℤ)).toNat

end

end A047925.P3968717783523026059

namespace A047925

/-- `A188473(A188434(n+1)-n)` -/
def P3968717783523026059.Spec : Prop :=
  ∀ n, P3968717783523026059.a n = A047925 n

end A047925

/-! ## A047925.P4474071731424784671

`A188473(A188468(2*n+1)-n)`
-/

namespace A047925.P4474071731424784671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (A188468 (2 * n + 1) - (n : ℤ)).toNat

end

end A047925.P4474071731424784671

namespace A047925

/-- `A188473(A188468(2*n+1)-n)` -/
def P4474071731424784671.Spec : Prop :=
  ∀ n, P4474071731424784671.a n = A047925 n

end A047925

/-! ## A047925.P2487404187597982992

`A004937(A047924(n))`
-/

namespace A047925.P2487404187597982992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (A047924 n).toNat

end

end A047925.P2487404187597982992

namespace A047925

/-- `A004937(A047924(n))` -/
def P2487404187597982992.Spec : Prop :=
  ∀ n, P2487404187597982992.a n = A047925 n

end A047925

/-! ## A047925.P10701287496415877666

`A022413(A188434(n+1))`
-/

namespace A047925.P10701287496415877666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (A188434 (n + 1)).toNat

end

end A047925.P10701287496415877666

namespace A047925

/-- `A022413(A188434(n+1))` -/
def P10701287496415877666.Spec : Prop :=
  ∀ n, P10701287496415877666.a n = A047925 n

end A047925

/-! ## A047925.P14504308785992309996

`A022413(A047924(n)-1)`
-/

namespace A047925.P14504308785992309996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (A047924 n - 1).toNat

end

end A047925.P14504308785992309996

namespace A047925

/-- `A022413(A047924(n)-1)` -/
def P14504308785992309996.Spec : Prop :=
  ∀ n, P14504308785992309996.a n = A047925 n

end A047925

/-! ## A047925.P13455113663020869260

`A004937(A188434(n+1)+1)`
-/

namespace A047925.P13455113663020869260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (A188434 (n + 1) + 1).toNat

end

end A047925.P13455113663020869260

namespace A047925

/-- `A004937(A188434(n+1)+1)` -/
def P13455113663020869260.Spec : Prop :=
  ∀ n, P13455113663020869260.a n = A047925 n

end A047925

/-! ## A047925.P9170826318612143687

`A026352(A188434(n+1)+1)`
-/

namespace A047925.P9170826318612143687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (A188434 (n + 1) + 1).toNat

end

end A047925.P9170826318612143687

namespace A047925

/-- `A026352(A188434(n+1)+1)` -/
def P9170826318612143687.Spec : Prop :=
  ∀ n, P9170826318612143687.a n = A047925 n

end A047925

/-!
# A047926: a(n) = (3^(n+1) + 2*n + 1)/4.

The programs for A047926, the canonical program `A047926.P8331763504239172225` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047926 has offset 0).

The definition of A047926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047926.P8331763504239172225

`(3^(n+1)+2*n+1)/4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047926

/-- `(3^(n+1)+2*n+1)/4` -/
def P8331763504239172225.Spec : Prop :=
  ∀ n, P8331763504239172225.a n = (A047926 n : ℚ)

end A047926

/-! ## A047926.P13870099396091334163

`∑[ogf((1-2x)/(1-4x+3x^2))]`
-/

namespace A047926.P13870099396091334163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047926.P13870099396091334163

namespace A047926

/-- `∑[ogf((1-2x)/(1-4x+3x^2))]` -/
def P13870099396091334163.Spec : Prop :=
  ∀ n, P13870099396091334163.a n = A047926 n

end A047926

/-! ## A047926.P3595739136291965667

`ogf((1-2x)/(1-5x+7x^2-3x^3))`
-/

namespace A047926.P3595739136291965667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -5, 7, -3] n

end

end A047926.P3595739136291965667

namespace A047926

/-- `ogf((1-2x)/(1-5x+7x^2-3x^3))` -/
def P3595739136291965667.Spec : Prop :=
  ∀ n, P3595739136291965667.a n = A047926 n

end A047926

/-! ## A047926.P1995608630997399093

`∑[xor(2, ∑[3^n])/3]`
-/

namespace A047926.P1995608630997399093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047926.P1995608630997399093

namespace A047926

/-- `∑[xor(2, ∑[3^n])/3]` -/
def P1995608630997399093.Spec : Prop :=
  ∀ n, P1995608630997399093.a n = (A047926 n : ℚ)

end A047926

/-! ## A047926.P17956716160252248034

`∑[3*a(n-1)-1]` with `a(0)=1`
-/

namespace A047926.P17956716160252248034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047926.P17956716160252248034

namespace A047926

/-- `∑[3*a(n-1)-1]` -/
def P17956716160252248034.Spec : Prop :=
  ∀ n, P17956716160252248034.a n = A047926 n

end A047926

/-! ## A047926.P7779787963759504253

`and(∑[∑[ceil(3^(n-1))]], -1)`
-/

namespace A047926.P7779787963759504253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A047926.P7779787963759504253

namespace A047926

/-- `and(∑[∑[ceil(3^(n-1))]], -1)` -/
def P7779787963759504253.Spec : Prop :=
  ∀ n, P7779787963759504253.a n = A047926 n

end A047926

/-! ## A047926.P8346781541744064630

`3*a(n-1)+1-n` with `a(0)=1`
-/

namespace A047926.P8346781541744064630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (1 - (n : ℤ))

end

end A047926.P8346781541744064630

namespace A047926

/-- `3*a(n-1)+1-n` -/
def P8346781541744064630.Spec : Prop :=
  ∀ n, P8346781541744064630.a n = A047926 n

end A047926

/-! ## A047926.P13603035930211475750

`1-(n-3*a(n-1))` with `a(0)=1`
-/

namespace A047926.P13603035930211475750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((n : ℤ) - 3 * a (n - 1))

end

end A047926.P13603035930211475750

namespace A047926

/-- `1-(n-3*a(n-1))` -/
def P13603035930211475750.Spec : Prop :=
  ∀ n, P13603035930211475750.a n = A047926 n

end A047926

/-! ## A047926.P798024650710214525

`3^n-a(n-1)+n` with `a(0)=1`
-/

namespace A047926.P798024650710214525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ n : ℤ) - a (n - 1) + (n : ℤ)

end

end A047926.P798024650710214525

namespace A047926

/-- `3^n-a(n-1)+n` -/
def P798024650710214525.Spec : Prop :=
  ∀ n, P798024650710214525.a n = A047926 n

end A047926

/-! ## A047926.P13853777489342155508

`3^n-(a(n-1)-n)` with `a(0)=1`
-/

namespace A047926.P13853777489342155508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ n : ℤ) - (a (n - 1) - (n : ℤ))

end

end A047926.P13853777489342155508

namespace A047926

/-- `3^n-(a(n-1)-n)` -/
def P13853777489342155508.Spec : Prop :=
  ∀ n, P13853777489342155508.a n = A047926 n

end A047926

/-! ## A047926.P10363629288346758640

`a(n-1)+a(n-1)+a(n-1)+1-n` with `a(0)=1`
-/

namespace A047926.P10363629288346758640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 1) - (n : ℤ))

end

end A047926.P10363629288346758640

namespace A047926

/-- `a(n-1)+a(n-1)+a(n-1)+1-n` -/
def P10363629288346758640.Spec : Prop :=
  ∀ n, P10363629288346758640.a n = A047926 n

end A047926

/-! ## A047926.P3327262960403101055

`1-(n-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A047926.P3327262960403101055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((n : ℤ) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A047926.P3327262960403101055

namespace A047926

/-- `1-(n-a(n-1)-a(n-1)-a(n-1))` -/
def P3327262960403101055.Spec : Prop :=
  ∀ n, P3327262960403101055.a n = A047926 n

end A047926

/-! ## A047926.P8593087524264716337

`∑[A007051(n)]`
-/

namespace A047926.P8593087524264716337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047926.P8593087524264716337

namespace A047926

/-- `∑[A007051(n)]` -/
def P8593087524264716337.Spec : Prop :=
  ∀ n, P8593087524264716337.a n = A047926 n

end A047926

/-! ## A047926.P9045106724131510383

`∑[abs(A341463(n))]`
-/

namespace A047926.P9045106724131510383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A341463 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047926.P9045106724131510383

namespace A047926

/-- `∑[abs(A341463(n))]` -/
def P9045106724131510383.Spec : Prop :=
  ∀ n, P9045106724131510383.a n = A047926 n

end A047926

/-! ## A047926.P8207459616436428154

`∑[∑[A133494(n)]]`
-/

namespace A047926.P8207459616436428154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047926.P8207459616436428154

namespace A047926

/-- `∑[∑[A133494(n)]]` -/
def P8207459616436428154.Spec : Prop :=
  ∀ n, P8207459616436428154.a n = A047926 n

end A047926

/-! ## A047926.P1626113662528970419

`∑[A003462(n)+1]`
-/

namespace A047926.P1626113662528970419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047926.P1626113662528970419

namespace A047926

/-- `∑[A003462(n)+1]` -/
def P1626113662528970419.Spec : Prop :=
  ∀ n, P1626113662528970419.a n = A047926 n

end A047926

/-! ## A047926.P7220198713448429412

`∑[A124302(n+1)]`
-/

namespace A047926.P7220198713448429412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047926.P7220198713448429412

namespace A047926

/-- `∑[A124302(n+1)]` -/
def P7220198713448429412.Spec : Prop :=
  ∀ n, P7220198713448429412.a n = A047926 n

end A047926

/-! ## A047926.P7514397685369951128

`∑[A115098(n)-1]`
-/

namespace A047926.P7514397685369951128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047926.P7514397685369951128

namespace A047926

/-- `∑[A115098(n)-1]` -/
def P7514397685369951128.Spec : Prop :=
  ∀ n, P7514397685369951128.a n = A047926 n

end A047926

/-! ## A047926.P359955453255028760

`∑[A034472(n)/2]`
-/

namespace A047926.P359955453255028760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034472 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047926.P359955453255028760

namespace A047926

/-- `∑[A034472(n)/2]` -/
def P359955453255028760.Spec : Prop :=
  ∀ n, P359955453255028760.a n = (A047926 n : ℚ)

end A047926

/-! ## A047926.P15771582174013026878

`∑[A067771(n)/3]`
-/

namespace A047926.P15771582174013026878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067771 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047926.P15771582174013026878

namespace A047926

/-- `∑[A067771(n)/3]` -/
def P15771582174013026878.Spec : Prop :=
  ∀ n, P15771582174013026878.a n = (A047926 n : ℚ)

end A047926

/-!
# A047927: a(n) = n*(n-1)*(n-2)^2.

The programs for A047927, the canonical program `A047927.P17796218967537193795` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047927 has offset 2).

The definition of A047927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*(n+1)*n²` (program `A047927.P17796218967537193795`, by `A047927.P17796218967537193795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A047927.P17796218967537193795

`(n+2)*(n+1)*n²`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047927

/-- `(n+2)*(n+1)*n²` -/
def P17796218967537193795.Spec : Prop :=
  ∀ n, (P17796218967537193795.a n : ℤ) = A047927 (n + 2)

theorem P17796218967537193795.correct : P17796218967537193795.Spec := by
  intro n
  simp only [A047927, Nat.add_sub_cancel]

end A047927

/-! ## A047927.P1128907562290906114

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=6, a(2)=48, a(3)=180, a(4)=480`
-/

namespace A047927.P1128907562290906114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 48, 180, 480] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A047927.P1128907562290906114

namespace A047927

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1128907562290906114.Spec : Prop :=
  ∀ n, P1128907562290906114.a n = A047927 (n + 2)

theorem P1128907562290906114.correct : P1128907562290906114.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A047927, Nat.add_sub_cancel, A047927.P1128907562290906114.a, A047927.P17796218967537193795.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A047927, Nat.add_sub_cancel, A047927.P1128907562290906114.a, A047927.P17796218967537193795.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [h1, h2, h3, h4, h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A047927

/-! ## A047927.P5013692584777577342

`∑[lcm(n, n+2-Δ[n²]²)]`
-/

namespace A047927.P5013692584777577342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n + 2 : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047927.P5013692584777577342

namespace A047927

/-- `∑[lcm(n, n+2-Δ[n²]²)]` -/
def P5013692584777577342.Spec : Prop :=
  ∀ n, (P5013692584777577342.a n : ℤ) = A047927 (n + 2)

end A047927

/-! ## A047927.P9943589671973317936

`abs(n²*record[(n-2)*(n-1)])`
-/

namespace A047927.P9943589671973317936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A047927.P9943589671973317936

namespace A047927

/-- `abs(n²*record[(n-2)*(n-1)])` -/
def P9943589671973317936.Spec : Prop :=
  ∀ n, P9943589671973317936.a n = A047927 (n + 2)

end A047927

/-! ## A047927.P6275750245570300190

`(n*record[sqrt((n-1)*(n-2))])²`
-/

namespace A047927.P6275750245570300190
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n : ℤ) - 1) * ((n : ℤ) - 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2

end

end A047927.P6275750245570300190

namespace A047927

/-- `(n*record[sqrt((n-1)*(n-2))])²` -/
def P6275750245570300190.Spec : Prop :=
  ∀ n, P6275750245570300190.a n = (A047927 (n + 2) : ℝ)

end A047927

/-! ## A047927.P11388305181221101721

`n²/∑[a(n-1)+2]^(-1)` with `a(0)=2`
-/

namespace A047927.P11388305181221101721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A047927.P11388305181221101721

namespace A047927

/-- `n²/∑[a(n-1)+2]^(-1)` -/
def P11388305181221101721.Spec : Prop :=
  ∀ n, P11388305181221101721.a n = (A047927 (n + 2) : ℚ)

end A047927

/-! ## A047927.P3045132353493873161

`lcm(3-(n+1)^3+n, 2*n)+2*n`
-/

namespace A047927.P3045132353493873161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 - ((n + 1) ^ 3 : ℤ) + (n : ℤ)) (2 * n : ℤ) + 2 * n

end

end A047927.P3045132353493873161

namespace A047927

/-- `lcm(3-(n+1)^3+n, 2*n)+2*n` -/
def P3045132353493873161.Spec : Prop :=
  ∀ n, (P3045132353493873161.a n : ℤ) = A047927 (n + 2)

end A047927

/-! ## A047927.P13590884340063114591

`∑[∑[A152746(n)]]`
-/

namespace A047927.P13590884340063114591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152746 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047927.P13590884340063114591

namespace A047927

/-- `∑[∑[A152746(n)]]` -/
def P13590884340063114591.Spec : Prop :=
  ∀ n, P13590884340063114591.a n = A047927 (n + 2)

end A047927

/-! ## A047927.P15533744817320637424

`∑[3*A268684(n)]`
-/

namespace A047927.P15533744817320637424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A268684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047927.P15533744817320637424

namespace A047927

/-- `∑[3*A268684(n)]` -/
def P15533744817320637424.Spec : Prop :=
  ∀ n, P15533744817320637424.a n = A047927 (n + 2)

end A047927

/-! ## A047927.P737355383654846093

`∑[A395241(n)-n]`
-/

namespace A047927.P737355383654846093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395241 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047927.P737355383654846093

namespace A047927

/-- `∑[A395241(n)-n]` -/
def P737355383654846093.Spec : Prop :=
  ∀ n, P737355383654846093.a n = A047927 (n + 2)

end A047927

/-! ## A047927.P7007704946122123372

`A330651(n)+2*n`
-/

namespace A047927.P7007704946122123372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330651 n + (2 * n : ℤ)

end

end A047927.P7007704946122123372

namespace A047927

/-- `A330651(n)+2*n` -/
def P7007704946122123372.Spec : Prop :=
  ∀ n, P7007704946122123372.a n = A047927 (n + 2)

end A047927

/-! ## A047927.P8076051644621002671

`∑[∑[2*A094159(n)]]`
-/

namespace A047927.P8076051644621002671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094159 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047927.P8076051644621002671

namespace A047927

/-- `∑[∑[2*A094159(n)]]` -/
def P8076051644621002671.Spec : Prop :=
  ∀ n, P8076051644621002671.a n = A047927 (n + 2)

end A047927

/-! ## A047927.P12793066617237072340

`A085540(n)-(n²+n)`
-/

namespace A047927.P12793066617237072340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085540 n - (n ^ 2 + n : ℤ)

end

end A047927.P12793066617237072340

namespace A047927

/-- `A085540(n)-(n²+n)` -/
def P12793066617237072340.Spec : Prop :=
  ∀ n, P12793066617237072340.a n = A047927 (n + 2)

end A047927

/-! ## A047927.P4241389396348889048

`(n+1)²²-A081437(n)`
-/

namespace A047927.P4241389396348889048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A081437 n

end

end A047927.P4241389396348889048

namespace A047927

/-- `(n+1)²²-A081437(n)` -/
def P4241389396348889048.Spec : Prop :=
  ∀ n, P4241389396348889048.a n = A047927 (n + 2)

end A047927

/-! ## A047927.P5215263182946774514

`A288959(n+1)/∑[n+1]`
-/

namespace A047927.P5215263182946774514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288959 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A047927.P5215263182946774514

namespace A047927

/-- `A288959(n+1)/∑[n+1]` -/
def P5215263182946774514.Spec : Prop :=
  ∀ n, P5215263182946774514.a n = (A047927 (n + 2) : ℚ)

end A047927

/-! ## A047927.P18107083385021269587

`A085537(n+1)-(n²+n)`
-/

namespace A047927.P18107083385021269587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 (n + 1) - (n ^ 2 + n : ℤ)

end

end A047927.P18107083385021269587

namespace A047927

/-- `A085537(n+1)-(n²+n)` -/
def P18107083385021269587.Spec : Prop :=
  ∀ n, P18107083385021269587.a n = A047927 (n + 2)

end A047927

/-!
# A047928: a(n) = n*(n-1)^2*(n-2).

The programs for A047928, the canonical program `A047928.P2133462667812654379` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047928 has offset 2).

The definition of A047928 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*(n+1)²*n` (program `A047928.P2133462667812654379`, by `A047928.P2133462667812654379.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A047928.P2366107395987301764

`(n+1)^4-(n+1)²`
-/

namespace A047928.P2366107395987301764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A047928.P2366107395987301764

namespace A047928

/-- `(n+1)^4-(n+1)²` -/
def P2366107395987301764.Spec : Prop :=
  ∀ n, P2366107395987301764.a n = A047928 (n + 2)

theorem P2366107395987301764.correct : P2366107395987301764.Spec := by
  intro n
  simp only [A047928, Nat.add_sub_cancel, A047928.P2366107395987301764.a, A047928.P2133462667812654379.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A047928

/-! ## A047928.P2133462667812654379

`(n+2)*(n+1)²*n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047928

/-- `(n+2)*(n+1)²*n` -/
def P2133462667812654379.Spec : Prop :=
  ∀ n, (P2133462667812654379.a n : ℤ) = A047928 (n + 2)

theorem P2133462667812654379.correct : P2133462667812654379.Spec := by
  intro n
  simp only [A047928, Nat.add_sub_cancel]

end A047928

/-!
# A047929: a(n) = n^2*(n-1)*(n-2).

The programs for A047929, the canonical program `A047929.P7207630746481665226` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047929 has offset 2).

The definition of A047929 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)²*(n+1)*n` (program `A047929.P7207630746481665226`, by `A047929.P7207630746481665226.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A047929.P7207630746481665226

`(n+2)²*(n+1)*n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047929

/-- `(n+2)²*(n+1)*n` -/
def P7207630746481665226.Spec : Prop :=
  ∀ n, (P7207630746481665226.a n : ℤ) = A047929 (n + 2)

theorem P7207630746481665226.correct : P7207630746481665226.Spec := by
  intro n
  simp only [A047929, Nat.add_sub_cancel]

end A047929

/-! ## A047929.P15796093440845798030

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=18, a(2)=96, a(3)=300, a(4)=720`
-/

namespace A047929.P15796093440845798030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 18, 96, 300, 720] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A047929.P15796093440845798030

namespace A047929

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P15796093440845798030.Spec : Prop :=
  ∀ n, P15796093440845798030.a n = A047929 (n + 2)

theorem P15796093440845798030.correct : P15796093440845798030.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A047929, Nat.add_sub_cancel, A047929.P15796093440845798030.a, A047929.P7207630746481665226.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A047929, Nat.add_sub_cancel, A047929.P15796093440845798030.a, A047929.P7207630746481665226.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [h1, h2, h3, h4, h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A047929

/-! ## A047929.P2039874312242060122

`∑[n*∑[a(n-1)+8]]` with `a(0)=5`
-/

namespace A047929.P2039874312242060122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047929.P2039874312242060122

namespace A047929

/-- `∑[n*∑[a(n-1)+8]]` -/
def P2039874312242060122.Spec : Prop :=
  ∀ n, (P2039874312242060122.a n : ℤ) = A047929 (n + 2)

end A047929

/-! ## A047929.P13811760071581622817

`∑[∑[3*n*lcm(2, 2*n+1)]]`
-/

namespace A047929.P13811760071581622817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n * Nat.lcm 2 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047929.P13811760071581622817

namespace A047929

/-- `∑[∑[3*n*lcm(2, 2*n+1)]]` -/
def P13811760071581622817.Spec : Prop :=
  ∀ n, (P13811760071581622817.a n : ℤ) = A047929 (n + 2)

end A047929

/-! ## A047929.P12179722338439669546

`lcm((n+1)²+n, (n+1)²)-(n+1)`
-/

namespace A047929.P12179722338439669546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm ((n + 1) ^ 2 + n) ((n + 1) ^ 2) : ℤ) - (n + 1 : ℤ)

end

end A047929.P12179722338439669546

namespace A047929

/-- `lcm((n+1)²+n, (n+1)²)-(n+1)` -/
def P12179722338439669546.Spec : Prop :=
  ∀ n, P12179722338439669546.a n = A047929 (n + 2)

end A047929

/-! ## A047929.P8079864520333058596

`∑[2*A281381(n)]`
-/

namespace A047929.P8079864520333058596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047929.P8079864520333058596

namespace A047929

/-- `∑[2*A281381(n)]` -/
def P8079864520333058596.Spec : Prop :=
  ∀ n, P8079864520333058596.a n = A047929 (n + 2)

end A047929

/-! ## A047929.P7191648336378485129

`∑[6*A016061(n)]`
-/

namespace A047929.P7191648336378485129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A016061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047929.P7191648336378485129

namespace A047929

/-- `∑[6*A016061(n)]` -/
def P7191648336378485129.Spec : Prop :=
  ∀ n, P7191648336378485129.a n = A047929 (n + 2)

end A047929

/-! ## A047929.P9851849171034269164

`∑[∑[2*A195319(n)]]`
-/

namespace A047929.P9851849171034269164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195319 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047929.P9851849171034269164

namespace A047929

/-- `∑[∑[2*A195319(n)]]` -/
def P9851849171034269164.Spec : Prop :=
  ∀ n, P9851849171034269164.a n = A047929 (n + 2)

end A047929

/-! ## A047929.P9817931860221757038

`∑[∑[n*A017593(n)]]`
-/

namespace A047929.P9817931860221757038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A017593 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047929.P9817931860221757038

namespace A047929

/-- `∑[∑[n*A017593(n)]]` -/
def P9817931860221757038.Spec : Prop :=
  ∀ n, P9817931860221757038.a n = A047929 (n + 2)

end A047929

/-! ## A047929.P82648448702601150

`∑[3*A135036(n+1)]`
-/

namespace A047929.P82648448702601150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A135036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047929.P82648448702601150

namespace A047929

/-- `∑[3*A135036(n+1)]` -/
def P82648448702601150.Spec : Prop :=
  ∀ n, P82648448702601150.a n = A047929 (n + 2)

end A047929

/-! ## A047929.P7377703055404015055

`∑[A103532(n)-(n+1)]`
-/

namespace A047929.P7377703055404015055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103532 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047929.P7377703055404015055

namespace A047929

/-- `∑[A103532(n)-(n+1)]` -/
def P7377703055404015055.Spec : Prop :=
  ∀ n, P7377703055404015055.a n = A047929 (n + 2)

end A047929

/-! ## A047929.P1140210711646514684

`∑[n*A007742(n+1)]`
-/

namespace A047929.P1140210711646514684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047929.P1140210711646514684

namespace A047929

/-- `∑[n*A007742(n+1)]` -/
def P1140210711646514684.Spec : Prop :=
  ∀ n, P1140210711646514684.a n = A047929 (n + 2)

end A047929

/-! ## A047929.P7136742517336093562

`∑[n*∑[sqrt(A017126(n))]]`
-/

namespace A047929.P7136742517336093562
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017126 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047929.P7136742517336093562

namespace A047929

/-- `∑[n*∑[sqrt(A017126(n))]]` -/
def P7136742517336093562.Spec : Prop :=
  ∀ n, P7136742517336093562.a n = (A047929 (n + 2) : ℝ)

end A047929

/-! ## A047929.P11414742338864280228

`A183066(n)-(n+1)^3`
-/

namespace A047929.P11414742338864280228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183066 n - ((n + 1) ^ 3 : ℤ)

end

end A047929.P11414742338864280228

namespace A047929

/-- `A183066(n)-(n+1)^3` -/
def P11414742338864280228.Spec : Prop :=
  ∀ n, P11414742338864280228.a n = A047929 (n + 2)

end A047929

/-! ## A047929.P3927310790066272799

`∑[n*∑[A004770(n+1)]]`
-/

namespace A047929.P3927310790066272799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047929.P3927310790066272799

namespace A047929

/-- `∑[n*∑[A004770(n+1)]]` -/
def P3927310790066272799.Spec : Prop :=
  ∀ n, P3927310790066272799.a n = A047929 (n + 2)

end A047929

/-! ## A047929.P3469764803032402128

`∑[2*∑[n*A016945(n)]]`
-/

namespace A047929.P3469764803032402128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016945 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047929.P3469764803032402128

namespace A047929

/-- `∑[2*∑[n*A016945(n)]]` -/
def P3469764803032402128.Spec : Prop :=
  ∀ n, P3469764803032402128.a n = A047929 (n + 2)

end A047929

/-! ## A047929.P5618965801754841192

`A076454(n+1)-∑[n+1]`
-/

namespace A047929.P5618965801754841192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076454 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A047929.P5618965801754841192

namespace A047929

/-- `A076454(n+1)-∑[n+1]` -/
def P5618965801754841192.Spec : Prop :=
  ∀ n, P5618965801754841192.a n = A047929 (n + 2)

end A047929

/-!
# A047930: Smallest positive Fibonacci number divisible by n.

The programs for A047930, there is no canonical definition to state claims against.
-/

/-! ## A047930.P18329745360322098758

`(n+1)*A037943(n+1)`
-/

namespace A047930.P18329745360322098758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A037943 (n + 1)

end

end A047930.P18329745360322098758

/-! ## A047930.P5726019761651872562

`A000045(A001177(n+1))`
-/

namespace A047930.P5726019761651872562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001177 (n + 1)).toNat

end

end A047930.P5726019761651872562

/-! ## A047930.P558050542652759154

`A212804(A001177(n+1)+1)`
-/

namespace A047930.P558050542652759154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A001177 (n + 1) + 1).toNat

end

end A047930.P558050542652759154

/-! ## A047930.P11470449733456205853

`A103609(2*A001177(n+1))`
-/

namespace A047930.P11470449733456205853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A001177 (n + 1)).toNat

end

end A047930.P11470449733456205853

/-! ## A047930.P5202927917407078671

`A105800(2*A001177(n+1))`
-/

namespace A047930.P5202927917407078671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (2 * A001177 (n + 1)).toNat

end

end A047930.P5202927917407078671

/-! ## A047930.P15757638880870652451

`A000045(A001175(n+1)/A001176(n+1))`
-/

namespace A047930.P15757638880870652451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A001175 (n + 1) : ℚ) / (A001176 (n + 1) : ℚ))).toNat

end

end A047930.P15757638880870652451

/-! ## A047930.P10069823840249560904

`A103609(A001177(n+1)+A001177(n+1)+1)`
-/

namespace A047930.P10069823840249560904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A001177 (n + 1) + (A001177 (n + 1) + 1)).toNat

end

end A047930.P10069823840249560904

/-! ## A047930.P9423885243663498421

`A001611(A001177(n+1))-A048887(A000217(n+1))`
-/

namespace A047930.P9423885243663498421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A001177 (n + 1)).toNat - A048887 (A000217 (n + 1)).toNat

end

end A047930.P9423885243663498421

/-!
# A047931: Number of new penny-penny contacts when putting pennies on a table following a spiral pattern.

The programs for A047931, the canonical program `A047931.P10684447278847287927` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047931 has offset 1).

The definition of A047931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047931.P10684447278847287927

`3-Δ[ceil(2*n*sqrt(6/(2*n+1)))]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047931

/-- `3-Δ[ceil(2*n*sqrt(6/(2*n+1)))]` -/
def P10684447278847287927.Spec : Prop :=
  ∀ n, P10684447278847287927.a n = A047931 (n + 1)

theorem P10684447278847287927.correct : P10684447278847287927.Spec := by
  intro n
  simp only [A047931, Nat.add_sub_cancel]

end A047931

/-! ## A047931.P7109974612149578165

`A004444(Δ[A036496(n)])`
-/

namespace A047931.P7109974612149578165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004444 (f1 (n + 1) - f1 n).toNat

end

end A047931.P7109974612149578165

namespace A047931

/-- `A004444(Δ[A036496(n)])` -/
def P7109974612149578165.Spec : Prop :=
  ∀ n, P7109974612149578165.a n = A047931 (n + 1)

end A047931

/-! ## A047931.P2410929864877510913

`A022959(Δ[A036496(n)])`
-/

namespace A047931.P2410929864877510913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022959 (f1 (n + 1) - f1 n).toNat

end

end A047931.P2410929864877510913

namespace A047931

/-- `A022959(Δ[A036496(n)])` -/
def P2410929864877510913.Spec : Prop :=
  ∀ n, P2410929864877510913.a n = A047931 (n + 1)

end A047931

/-! ## A047931.P8856611454171216853

`A279318(Δ[A036496(n)])`
-/

namespace A047931.P8856611454171216853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279318 (f1 (n + 1) - f1 n).toNat

end

end A047931.P8856611454171216853

namespace A047931

/-- `A279318(Δ[A036496(n)])` -/
def P8856611454171216853.Spec : Prop :=
  ∀ n, P8856611454171216853.a n = A047931 (n + 1)

end A047931

/-! ## A047931.P6453623967788909892

`abs(A023445(Δ[A036496(n)]))`
-/

namespace A047931.P6453623967788909892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023445 (f1 (n + 1) - f1 n).toNat|

end

end A047931.P6453623967788909892

namespace A047931

/-- `abs(A023445(Δ[A036496(n)]))` -/
def P6453623967788909892.Spec : Prop :=
  ∀ n, P6453623967788909892.a n = A047931 (n + 1)

end A047931

/-! ## A047931.P4849831684941523775

`A004444(A036496(n+1)-A036496(n))`
-/

namespace A047931.P4849831684941523775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004444 (A036496 (n + 1) - A036496 n).toNat

end

end A047931.P4849831684941523775

namespace A047931

/-- `A004444(A036496(n+1)-A036496(n))` -/
def P4849831684941523775.Spec : Prop :=
  ∀ n, P4849831684941523775.a n = A047931 (n + 1)

end A047931

/-! ## A047931.P153646976556037162

`A279318(A036496(n+1)-A036496(n))`
-/

namespace A047931.P153646976556037162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279318 (A036496 (n + 1) - A036496 n).toNat

end

end A047931.P153646976556037162

namespace A047931

/-- `A279318(A036496(n+1)-A036496(n))` -/
def P153646976556037162.Spec : Prop :=
  ∀ n, P153646976556037162.a n = A047931 (n + 1)

end A047931

/-! ## A047931.P5492913045626846868

`Δ[A083479(abs(1-3*n))]`
-/

namespace A047931.P5492913045626846868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 |1 - (3 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047931.P5492913045626846868

namespace A047931

/-- `Δ[A083479(abs(1-3*n))]` -/
def P5492913045626846868.Spec : Prop :=
  ∀ n, P5492913045626846868.a n = A047931 (n + 1)

end A047931

/-! ## A047931.P1266961922428722570

`A225445(Δ[A121149(n)])`
-/

namespace A047931.P1266961922428722570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 (f1 (n + 1) - f1 n).toNat

end

end A047931.P1266961922428722570

namespace A047931

/-- `A225445(Δ[A121149(n)])` -/
def P1266961922428722570.Spec : Prop :=
  ∀ n, P1266961922428722570.a n = A047931 (n + 1)

end A047931

/-! ## A047931.P10584647726686184217

`floor(10/A000040(Δ[A121149(n)]))`
-/

namespace A047931.P10584647726686184217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 / (A000040 (f1 (n + 1) - f1 n).toNat : ℚ)⌋

end

end A047931.P10584647726686184217

namespace A047931

/-- `floor(10/A000040(Δ[A121149(n)]))` -/
def P10584647726686184217.Spec : Prop :=
  ∀ n, P10584647726686184217.a n = A047931 (n + 1)

end A047931

/-! ## A047931.P1762102523614599300

`(A268716(Δ[A121149(n)])/2)%(n+1)`
-/

namespace A047931.P1762102523614599300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A268716 (f1 (n + 1) - f1 n).toNat : ℚ) / 2)) (n + 1 : ℤ)

end

end A047931.P1762102523614599300

namespace A047931

/-- `(A268716(Δ[A121149(n)])/2)%(n+1)` -/
def P1762102523614599300.Spec : Prop :=
  ∀ n, P1762102523614599300.a n = A047931 (n + 1)

end A047931

/-! ## A047931.P10624535875892623854

`A020639(5*(Δ[A121149(n)]+1))%(n+1)²`
-/

namespace A047931.P10624535875892623854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (5 * (f1 (n + 1) - f1 n + 1)).toNat) ((n + 1) ^ 2 : ℤ)

end

end A047931.P10624535875892623854

namespace A047931

/-- `A020639(5*(Δ[A121149(n)]+1))%(n+1)²` -/
def P10624535875892623854.Spec : Prop :=
  ∀ n, P10624535875892623854.a n = A047931 (n + 1)

end A047931

/-! ## A047931.P6354984791289396492

`A225445(A121149(n+1)-A121149(n))`
-/

namespace A047931.P6354984791289396492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225445 (A121149 (n + 1) - A121149 n).toNat

end

end A047931.P6354984791289396492

namespace A047931

/-- `A225445(A121149(n+1)-A121149(n))` -/
def P6354984791289396492.Spec : Prop :=
  ∀ n, P6354984791289396492.a n = A047931 (n + 1)

end A047931

/-!
# A047932: a(n) = floor(3*n-sqrt(12*n-3)).

The programs for A047932, the canonical program `A047932.P1158968280518161369` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047932 has offset 1).

The definition of A047932 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*(n+1)-sqrt(12*(n+1)-3))` (program `A047932.P1158968280518161369`, by `A047932.P1158968280518161369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A047932.P1158968280518161369

`floor(3*(n+1)-sqrt(12*(n+1)-3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047932

/-- `floor(3*(n+1)-sqrt(12*(n+1)-3))` -/
def P1158968280518161369.Spec : Prop :=
  ∀ n, P1158968280518161369.a n = A047932 (n + 1)

theorem P1158968280518161369.correct : P1158968280518161369.Spec := by
  intro n
  simp only [A047932, Nat.add_sub_cancel]

end A047932

/-! ## A047932.P17490685672065923785

`∑[A047931(n+1)]`
-/

namespace A047932.P17490685672065923785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047932.P17490685672065923785

namespace A047932

/-- `∑[A047931(n+1)]` -/
def P17490685672065923785.Spec : Prop :=
  ∀ n, P17490685672065923785.a n = A047932 (n + 1)

end A047932

/-! ## A047932.P14993656208368614494

`3*n-A216522(n)`
-/

namespace A047932.P14993656208368614494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A216522 n

end

end A047932.P14993656208368614494

namespace A047932

/-- `3*n-A216522(n)` -/
def P14993656208368614494.Spec : Prop :=
  ∀ n, P14993656208368614494.a n = A047932 (n + 1)

end A047932

/-! ## A047932.P6667771763810402542

`4*n-comp[A001399(n)-6]`
-/

namespace A047932.P6667771763810402542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A047932.P6667771763810402542

namespace A047932

/-- `4*n-comp[A001399(n)-6]` -/
def P6667771763810402542.Spec : Prop :=
  ∀ n, P6667771763810402542.a n = A047932 (n + 1)

end A047932

/-! ## A047932.P17105402536838264027

`A135708(n+1)-A135711(n+1)`
-/

namespace A047932.P17105402536838264027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135708 (n + 1) - A135711 (n + 1)

end

end A047932.P17105402536838264027

namespace A047932

/-- `A135708(n+1)-A135711(n+1)` -/
def P17105402536838264027.Spec : Prop :=
  ∀ n, P17105402536838264027.a n = A047932 (n + 1)

end A047932

/-! ## A047932.P1859385018189047136

`∑[3-Δ[A036496(n)]]`
-/

namespace A047932.P1859385018189047136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047932.P1859385018189047136

namespace A047932

/-- `∑[3-Δ[A036496(n)]]` -/
def P1859385018189047136.Spec : Prop :=
  ∀ n, P1859385018189047136.a n = A047932 (n + 1)

end A047932

/-! ## A047932.P6948292959452562120

`3*(n+1)-A036496(n+1)`
-/

namespace A047932.P6948292959452562120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A036496 (n + 1)

end

end A047932.P6948292959452562120

namespace A047932

/-- `3*(n+1)-A036496(n+1)` -/
def P6948292959452562120.Spec : Prop :=
  ∀ n, P6948292959452562120.a n = A047932 (n + 1)

end A047932

/-! ## A047932.P8960701939195930335

`∑[A279318(Δ[A036496(n)])]`
-/

namespace A047932.P8960701939195930335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279318 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047932.P8960701939195930335

namespace A047932

/-- `∑[A279318(Δ[A036496(n)])]` -/
def P8960701939195930335.Spec : Prop :=
  ∀ n, P8960701939195930335.a n = A047932 (n + 1)

end A047932

/-! ## A047932.P5616478170939429564

`A005408(n+1)-A036496(n+1)+n`
-/

namespace A047932.P5616478170939429564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) - A036496 (n + 1) + (n : ℤ)

end

end A047932.P5616478170939429564

namespace A047932

/-- `A005408(n+1)-A036496(n+1)+n` -/
def P5616478170939429564.Spec : Prop :=
  ∀ n, P5616478170939429564.a n = A047932 (n + 1)

end A047932

/-! ## A047932.P4356467051039041279

`A263135(2*(n+1))-A216256(n+1)`
-/

namespace A047932.P4356467051039041279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263135 (2 * (n + 1)) - A216256 (n + 1)

end

end A047932.P4356467051039041279

namespace A047932

/-- `A263135(2*(n+1))-A216256(n+1)` -/
def P4356467051039041279.Spec : Prop :=
  ∀ n, P4356467051039041279.a n = A047932 (n + 1)

end A047932

/-! ## A047932.P14907095289427822148

`A028391(A028391(3*n+1))`
-/

namespace A047932.P14907095289427822148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A028391 (3 * n + 1)).toNat

end

end A047932.P14907095289427822148

namespace A047932

/-- `A028391(A028391(3*n+1))` -/
def P14907095289427822148.Spec : Prop :=
  ∀ n, P14907095289427822148.a n = A047932 (n + 1)

end A047932

/-! ## A047932.P11141963130095240727

`A016789(n)-A000267(A016789(n)-1)`
-/

namespace A047932.P11141963130095240727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A000267 (A016789 n - 1).toNat

end

end A047932.P11141963130095240727

namespace A047932

/-- `A016789(n)-A000267(A016789(n)-1)` -/
def P11141963130095240727.Spec : Prop :=
  ∀ n, P11141963130095240727.a n = A047932 (n + 1)

end A047932

/-! ## A047932.P1388053640762410834

`A074378(2*n+1)-(A183867(3*n+1)+A074378(2*n))`
-/

namespace A047932.P1388053640762410834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 (2 * n + 1) - (A183867 (3 * n + 1) + A074378 (2 * n))

end

end A047932.P1388053640762410834

namespace A047932

/-- `A074378(2*n+1)-(A183867(3*n+1)+A074378(2*n))` -/
def P1388053640762410834.Spec : Prop :=
  ∀ n, P1388053640762410834.a n = A047932 (n + 1)

end A047932

/-! ## A047932.P11337153761737557113

`A083479(3*n+2)-1`
-/

namespace A047932.P11337153761737557113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (3 * n + 2) - 1

end

end A047932.P11337153761737557113

namespace A047932

/-- `A083479(3*n+2)-1` -/
def P11337153761737557113.Spec : Prop :=
  ∀ n, P11337153761737557113.a n = A047932 (n + 1)

end A047932

/-! ## A047932.P15246745482519554492

`A056847(A056847(3*n+2))`
-/

namespace A047932.P15246745482519554492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A056847 (3 * n + 2)).toNat

end

end A047932.P15246745482519554492

namespace A047932

/-- `A056847(A056847(3*n+2))` -/
def P15246745482519554492.Spec : Prop :=
  ∀ n, P15246745482519554492.a n = A047932 (n + 1)

end A047932

/-! ## A047932.P9456604419507683102

`A016777(n)-A055086(A016777(n))`
-/

namespace A047932.P9456604419507683102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A055086 (A016777 n).toNat

end

end A047932.P9456604419507683102

namespace A047932

/-- `A016777(n)-A055086(A016777(n))` -/
def P9456604419507683102.Spec : Prop :=
  ∀ n, P9456604419507683102.a n = A047932 (n + 1)

end A047932

/-! ## A047932.P2153877064329550564

`A265409(A049068(2*n+n+2))`
-/

namespace A047932.P2153877064329550564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265409 (A049068 (2 * n + (n + 2))).toNat

end

end A047932.P2153877064329550564

namespace A047932

/-- `A265409(A049068(2*n+n+2))` -/
def P2153877064329550564.Spec : Prop :=
  ∀ n, P2153877064329550564.a n = A047932 (n + 1)

end A047932

/-! ## A047932.P8310360442949737350

`A016789(n)-A202304(A016789(n)+n)`
-/

namespace A047932.P8310360442949737350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A202304 (A016789 n + (n : ℤ)).toNat

end

end A047932.P8310360442949737350

namespace A047932

/-- `A016789(n)-A202304(A016789(n)+n)` -/
def P8310360442949737350.Spec : Prop :=
  ∀ n, P8310360442949737350.a n = A047932 (n + 1)

end A047932

/-!
# A047933: Consider primes p with least positive primitive root g such that q=p+g is next prime after p; sequence gives values of q.

The programs for A047933, there is no canonical definition to state claims against.
-/

/-! ## A047933.P9489928348516461349

`A047935(n+1)+A047934(n+1)`
-/

namespace A047933.P9489928348516461349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047935 (n + 1) + A047934 (n + 1)

end

end A047933.P9489928348516461349

/-! ## A047933.P8724616145907486099

`A000040(eq[A001223(n+1), A001918(n+1)]+2)`
-/

namespace A047933.P8724616145907486099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A047933.P8724616145907486099

/-! ## A047933.P1320671852523935576

`A151800(A047934(n+1))`
-/

namespace A047933.P1320671852523935576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A047934 (n + 1)).toNat

end

end A047933.P1320671852523935576

/-! ## A047933.P17620494917165462766

`∑{d}[A047934(n+1), A340071(#)]`
-/

namespace A047933.P17620494917165462766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A340071 d

end

end A047933.P17620494917165462766

/-! ## A047933.P5814645347244479607

`A340071(A047934(n+1))+A014963(12*n+6)`
-/

namespace A047933.P5814645347244479607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (A047934 (n + 1)).toNat + A014963 (12 * n + 6)

end

end A047933.P5814645347244479607

/-! ## A047933.P13493726651056297483

`A067792(p?[A047934(n+1)])`
-/

namespace A047933.P13493726651056297483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A047933.P13493726651056297483

/-! ## A047933.P10669898126898249705

`A067792(A047934(n+1)%A141988(n+1))`
-/

namespace A047933.P10669898126898249705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (Int.tmod (A047934 (n + 1)) (A141988 (n + 1))).toNat

end

end A047933.P10669898126898249705

/-! ## A047933.P3801536265560400777

`A067792(A047934(n+1))%A204492(n+1)`
-/

namespace A047933.P3801536265560400777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067792 (A047934 (n + 1)).toNat) (A204492 (n + 1))

end

end A047933.P3801536265560400777

/-! ## A047933.P15621535905607333208

`A067792(2*A047934(n+1)-A047934(n+1))`
-/

namespace A047933.P15621535905607333208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (2 * A047934 (n + 1) - A047934 (n + 1)).toNat

end

end A047933.P15621535905607333208

/-! ## A047933.P14759269127006700187

`A003961(p?[A047934(n+1)])`
-/

namespace A047933.P14759269127006700187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A047933.P14759269127006700187

/-! ## A047933.P14353464133489680437

`A045965(p?[A047934(n+1)])`
-/

namespace A047933.P14353464133489680437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A047933.P14353464133489680437

/-! ## A047933.P5347418282074239420

`A117366(p?[A047934(n+1)])`
-/

namespace A047933.P5347418282074239420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A047933.P5347418282074239420

/-! ## A047933.P16193291907108343301

`A007918(A047934(n+1)+1)`
-/

namespace A047933.P16193291907108343301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A047934 (n + 1) + 1).toNat

end

end A047933.P16193291907108343301

/-! ## A047933.P1196165215071609894

`A204894(A047934(n+1)-1)`
-/

namespace A047933.P1196165215071609894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (A047934 (n + 1) - 1).toNat

end

end A047933.P1196165215071609894

/-! ## A047933.P17052619108949766626

`A003961(∑{p}[A047934(n+1), #])`
-/

namespace A047933.P17052619108949766626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A047933.P17052619108949766626

/-! ## A047933.P2136899251457745359

`A047934(n+1)+A013632(p?[A047934(n+1)])`
-/

namespace A047933.P2136899251457745359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047934 (n + 1) + A013632 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A047933.P2136899251457745359

/-! ## A047933.P4962221659160933427

`A003961(2*A047934(n+1)-A047934(n+1))`
-/

namespace A047933.P4962221659160933427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * A047934 (n + 1) - A047934 (n + 1)).toNat

end

end A047933.P4962221659160933427

/-! ## A047933.P4607488964678020146

`A045965(2*A047934(n+1)-A047934(n+1))`
-/

namespace A047933.P4607488964678020146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (2 * A047934 (n + 1) - A047934 (n + 1)).toNat

end

end A047933.P4607488964678020146

/-!
# A047934: Consider primes p with least positive primitive root g such that q=p+g is next prime after p; sequence gives values of p.

The programs for A047934, there is no canonical definition to state claims against.
-/

/-! ## A047934.P23493876672845811

`A047933(n+1)-A047935(n+1)`
-/

namespace A047934.P23493876672845811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047933 (n + 1) - A047935 (n + 1)

end

end A047934.P23493876672845811

/-! ## A047934.P16388537019051299456

`A000040(eq[A001223(n+1), A001918(n+1)]+1)`
-/

namespace A047934.P16388537019051299456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A047934.P16388537019051299456

/-! ## A047934.P13823843416504750389

`A000040(A277322(p?[A047933(n+1)]))`
-/

namespace A047934.P13823843416504750389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A277322 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A047934.P13823843416504750389

/-! ## A047934.P10102201500851352955

`A079068(p?[A047933(n+1)])`
-/

namespace A047934.P10102201500851352955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A047934.P10102201500851352955

/-! ## A047934.P14219092345318655643

`A349122(p?[A047933(n+1)])`
-/

namespace A047934.P14219092345318655643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A047934.P14219092345318655643

/-! ## A047934.P1460071025958340062

`A349122(xor(1, A047933(n+1))+1)`
-/

namespace A047934.P1460071025958340062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (Int.xor 1 (A047933 (n + 1)) + 1).toNat

end

end A047934.P1460071025958340062

/-! ## A047934.P2218444888140361185

`A349122(A047933(n+1)-A000007(n))`
-/

namespace A047934.P2218444888140361185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (A047933 (n + 1) - A000007 n).toNat

end

end A047934.P2218444888140361185

/-! ## A047934.P11504125746542721583

`A349122(xor(A000007(n), A047933(n+1)))`
-/

namespace A047934.P11504125746542721583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (Int.xor (A000007 n) (A047933 (n + 1))).toNat

end

end A047934.P11504125746542721583

/-! ## A047934.P10635355931101656740

`A349122(A047933(n+1)+n*A000007(n))`
-/

namespace A047934.P10635355931101656740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (A047933 (n + 1) + (n : ℤ) * A000007 n).toNat

end

end A047934.P10635355931101656740

/-! ## A047934.P13647637447891336728

`A079068(2*A047933(n+1)-A047933(n+1))`
-/

namespace A047934.P13647637447891336728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (2 * A047933 (n + 1) - A047933 (n + 1)).toNat

end

end A047934.P13647637447891336728

/-! ## A047934.P15889173745956040132

`A349122(2*A047933(n+1)-A047933(n+1))`
-/

namespace A047934.P15889173745956040132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (2 * A047933 (n + 1) - A047933 (n + 1)).toNat

end

end A047934.P15889173745956040132

/-! ## A047934.P10221730795001523487

`A349122(A047933(n+1))+A000007(A349122(n+1))`
-/

namespace A047934.P10221730795001523487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (A047933 (n + 1)).toNat + A000007 (A349122 (n + 1)).toNat

end

end A047934.P10221730795001523487

/-! ## A047934.P2271630804827992971

`eq[A046145(n), A166597(n)]`
-/

namespace A047934.P2271630804827992971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047934.P2271630804827992971

/-! ## A047934.P9222810353102853106

`A064989(p?[A047933(n+1)])`
-/

namespace A047934.P9222810353102853106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A047934.P9222810353102853106

/-! ## A047934.P3656190453387356776

`A349122(2*A047933(n+1))/2`
-/

namespace A047934.P3656190453387356776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349122 (2 * A047933 (n + 1)).toNat : ℚ) / 2

end

end A047934.P3656190453387356776

/-!
# A047935: Consider primes p with least positive primitive root g such that q=p+g is next prime after p; sequence gives values of g.

The programs for A047935, there is no canonical definition to state claims against.
-/

/-! ## A047935.P4900595773631349570

`A047933(n+1)-A047934(n+1)`
-/

namespace A047935.P4900595773631349570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047933 (n + 1) - A047934 (n + 1)

end

end A047935.P4900595773631349570

/-! ## A047935.P15819633660252831569

`A047933(sqrt(A000290(n+1)))%A047934(n+1)`
-/

namespace A047935.P15819633660252831569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047933 (SequenceMachineLib.roundAway (Real.sqrt (A000290 (n + 1) : ℝ))).toNat) (A047934 (n + 1))

end

end A047935.P15819633660252831569

/-! ## A047935.P2978199379469767191

`(A047933(n+1)%A047934(n+1))%A000040(n+1)`
-/

namespace A047935.P2978199379469767191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A047933 (n + 1)) (A047934 (n + 1))) (A000040 (n + 1))

end

end A047935.P2978199379469767191

/-! ## A047935.P17513476472451528526

`A001223(eq[A001223(n+1), A001918(n+1)]+1)`
-/

namespace A047935.P17513476472451528526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A047935.P17513476472451528526

/-! ## A047935.P13810299154640994716

`A166597(A047934(n+1))`
-/

namespace A047935.P13810299154640994716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A047934 (n + 1)).toNat

end

end A047935.P13810299154640994716

/-! ## A047935.P14492208439805959053

`∑{d}[A047934(n+1), A340071(#)]-A047934(n+1)`
-/

namespace A047935.P14492208439805959053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A340071 d - A047934 (n + 1)

end

end A047935.P14492208439805959053

/-! ## A047935.P12368837536860896890

`A096501(A047933(n+1))`
-/

namespace A047935.P12368837536860896890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A047933 (n + 1)).toNat

end

end A047935.P12368837536860896890

/-! ## A047935.P7291790650450103564

`A047933(n+1)-A079068(p?[A047933(n+1)])`
-/

namespace A047935.P7291790650450103564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047933 (n + 1) - A079068 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A047935.P7291790650450103564

/-! ## A047935.P2717654165079896148

`A047933(n+1)-A349122(p?[A047933(n+1)])`
-/

namespace A047935.P2717654165079896148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047933 (n + 1) - A349122 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A047935.P2717654165079896148

/-! ## A047935.P5809272389457949060

`A047933(n+1)-A349122(A047933(n+1)-A000007(n))`
-/

namespace A047935.P5809272389457949060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047933 (n + 1) - A349122 (A047933 (n + 1) - A000007 n).toNat

end

end A047935.P5809272389457949060

/-! ## A047935.P8387278008165657342

`A067792(p?[A047934(n+1)])-A047934(n+1)`
-/

namespace A047935.P8387278008165657342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A047934 (n + 1)

end

end A047935.P8387278008165657342

/-! ## A047935.P7103665215696891679

`A013632(p?[A047934(n+1)])`
-/

namespace A047935.P7103665215696891679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A047935.P7103665215696891679

/-! ## A047935.P15004782371097280102

`∑{p}[A047934(n+1), A003961(#)-#]`
-/

namespace A047935.P15004782371097280102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A003961 p - (p : ℤ))

end

end A047935.P15004782371097280102

/-! ## A047935.P7594751094765975120

`A003961(p?[A047934(n+1)])-A047934(n+1)`
-/

namespace A047935.P7594751094765975120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A047934 (n + 1)

end

end A047935.P7594751094765975120

/-! ## A047935.P13041073460877153126

`A045965(p?[A047934(n+1)])-A047934(n+1)`
-/

namespace A047935.P13041073460877153126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A047934 (n + 1)

end

end A047935.P13041073460877153126

/-! ## A047935.P12693759997819716238

`A047933(n+1)-A064989(p?[A047933(n+1)])`
-/

namespace A047935.P12693759997819716238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047933 (n + 1) - A064989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A047935.P12693759997819716238

/-! ## A047935.P14056403524071586483

`A117366(p?[A047934(n+1)])-A047934(n+1)`
-/

namespace A047935.P14056403524071586483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A047934 (n + 1)

end

end A047935.P14056403524071586483

/-! ## A047935.P18161669826181671872

`A007918(A047934(n+1)+1)-A047934(n+1)`
-/

namespace A047935.P18161669826181671872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A047934 (n + 1) + 1).toNat - A047934 (n + 1)

end

end A047935.P18161669826181671872

/-! ## A047935.P11249561432075309864

`A204894(A047934(n+1)-1)-A047934(n+1)`
-/

namespace A047935.P11249561432075309864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (A047934 (n + 1) - 1).toNat - A047934 (n + 1)

end

end A047935.P11249561432075309864

/-!
# A047936: Primes whose smallest positive primitive root (A001918) is not prime.

The programs for A047936, there is no canonical definition to state claims against.
-/

/-! ## A047936.P965255820174773005

`∪[A070269(n+1), A070270(n+1)]`
-/

namespace A047936.P965255820174773005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P965255820174773005

/-! ## A047936.P9763251926230911834

`p?[A103335(n+1)]`
-/

namespace A047936.P9763251926230911834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A047936.P9763251926230911834

/-! ## A047936.P954304272612958980

`∩[A059456(n+1), A103335(n+1)]`
-/

namespace A047936.P954304272612958980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P954304272612958980

/-! ## A047936.P14065880155835377665

`∩[A000040(n+1), A103335(n+1)]`
-/

namespace A047936.P14065880155835377665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P14065880155835377665

/-! ## A047936.P3435196183191670835

`∩[A045319(n+1), A103335(n+1)]`
-/

namespace A047936.P3435196183191670835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P3435196183191670835

/-! ## A047936.P7066942022633381083

`∩[A045344(n+1), A103335(n+1)]`
-/

namespace A047936.P7066942022633381083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P7066942022633381083

/-! ## A047936.P2725527499681838776

`∩[A051948(n+1), A103335(n+1)]`
-/

namespace A047936.P2725527499681838776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P2725527499681838776

/-! ## A047936.P11089702375000534445

`∩[A053813(n+1), A103335(n+1)]`
-/

namespace A047936.P11089702375000534445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P11089702375000534445

/-! ## A047936.P11803063644908432139

`∩[A103335(n+1), A116974(n+1)]`
-/

namespace A047936.P11803063644908432139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P11803063644908432139

/-! ## A047936.P7562445475388020694

`∩[A103335(n+1), A175787(n+1)]`
-/

namespace A047936.P7562445475388020694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P7562445475388020694

/-! ## A047936.P5069364679656979166

`∩[A103335(n+1), A182986(n+1)]`
-/

namespace A047936.P5069364679656979166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P5069364679656979166

/-! ## A047936.P3092325166347093712

`∩[A103335(n+1), A280930(n+1)]`
-/

namespace A047936.P3092325166347093712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P3092325166347093712

/-! ## A047936.P14563148171497969

`∩[A103335(n+1), A182140(n+1)]`
-/

namespace A047936.P14563148171497969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P14563148171497969

/-! ## A047936.P8880055341133153951

`∩[A189710(n+1), A103335(n+1)]`
-/

namespace A047936.P8880055341133153951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P8880055341133153951

/-! ## A047936.P16643247950391469889

`∩[A103335(n+1), A132630(n+1)]`
-/

namespace A047936.P16643247950391469889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P16643247950391469889

/-! ## A047936.P11523734865212220418

`∩[A103335(n+1), A301987(n+1)]`
-/

namespace A047936.P11523734865212220418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P11523734865212220418

/-! ## A047936.P13650260369805777840

`∩[A070159(n+1), A103335(n+1)]`
-/

namespace A047936.P13650260369805777840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P13650260369805777840

/-! ## A047936.P13179937649599344242

`∩[A053577(n+1), A103335(n+1)]`
-/

namespace A047936.P13179937649599344242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P13179937649599344242

/-! ## A047936.P687304966161053664

`∩[A103335(n+1), A187711(n+1)]`
-/

namespace A047936.P687304966161053664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P687304966161053664

/-! ## A047936.P5314901877782235558

`∩[A066191(n+1), A103335(n+1)]`
-/

namespace A047936.P5314901877782235558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047936.P5314901877782235558

/-!
# A047937: Number of 2-colorings of an n X n grid, up to rotational symmetry.

The programs for A047937, there is no canonical definition to state claims against.
-/

/-! ## A047937.P17365676268985417842

`A343095(∑[n+3])`
-/

namespace A047937.P17365676268985417842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047937.P17365676268985417842

/-! ## A047937.P2609833453023238952

`record[gcd(A322279(n+1), A343095(n))]`
-/

namespace A047937.P2609833453023238952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A322279 (n + 1)) (A343095 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047937.P2609833453023238952

/-! ## A047937.P14556640526812387887

`A343095(A141214(n))^ceil(sin(n)²)`
-/

namespace A047937.P14556640526812387887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343095 (A141214 n).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A047937.P14556640526812387887

/-! ## A047937.P585318654516736909

`gcd(A000038(n), A343095(A141214(n)))`
-/

namespace A047937.P585318654516736909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A343095 (A141214 n).toNat)

end

end A047937.P585318654516736909

/-! ## A047937.P1959499462508915150

`or(A000007(n), A343095(A141214(n)))`
-/

namespace A047937.P1959499462508915150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A343095 (A141214 n).toNat)

end

end A047937.P1959499462508915150

/-!
# A047938: Number of ways to label points of an n X n grid with 3 colors, up to rotational symmetry.

The programs for A047938, there is no canonical definition to state claims against.
-/

/-! ## A047938.P5412623484399730852

`A343095(∑[n+3]+n+3)`
-/

namespace A047938.P5412623484399730852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A047938.P5412623484399730852

/-! ## A047938.P4779431173381088211

`record[A343095(abs(A046691(n)))]`
-/

namespace A047938.P4779431173381088211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047938.P4779431173381088211

/-! ## A047938.P10662980573049448533

`record[A343095(A027379(n)-1)]`
-/

namespace A047938.P10662980573049448533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047938.P10662980573049448533

/-! ## A047938.P17621016431833093378

`record[gcd(A067586(n+4), A343095(n))]`
-/

namespace A047938.P17621016431833093378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067586 (n + 4)) (A343095 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047938.P17621016431833093378

/-!
# A047939: Number of 4-colorings of an n X n grid, up to rotational symmetry.

The programs for A047939, there is no canonical definition to state claims against.
-/

/-! ## A047939.P8624813631539505123

`A343095(eq[4, A025581(n)])`
-/

namespace A047939.P8624813631539505123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047939.P8624813631539505123

/-! ## A047939.P6596955966498923003

`record[A343095(A055999(n)+1)]`
-/

namespace A047939.P6596955966498923003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047939.P6596955966498923003

/-! ## A047939.P6212027404644134109

`A343095(A055999(n+2)+1)`
-/

namespace A047939.P6212027404644134109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (A055999 (n + 2) + 1).toNat

end

end A047939.P6212027404644134109

/-! ## A047939.P17467769083375824254

`record[A343095(A034856(n+1)+n)]`
-/

namespace A047939.P17467769083375824254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (A034856 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047939.P17467769083375824254

/-!
# A047940: Number of 5-colorings of an n X n grid, up to rotational symmetry.

The programs for A047940, there is no canonical definition to state claims against.
-/

/-! ## A047940.P14467819205266868012

`record[A343095(A055999(n))]`
-/

namespace A047940.P14467819205266868012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047940.P14467819205266868012

/-! ## A047940.P10481867999751908126

`A343095(A055999(n+3))`
-/

namespace A047940.P10481867999751908126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (A055999 (n + 3)).toNat

end

end A047940.P10481867999751908126

/-! ## A047940.P13862245428290443620

`A343095(eq[5, A025581(n)])`
-/

namespace A047940.P13862245428290443620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047940.P13862245428290443620

/-! ## A047940.P12478331156829747904

`A343095(eq[6, A193739(n)])`
-/

namespace A047940.P12478331156829747904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047940.P12478331156829747904

/-! ## A047940.P3489021772561227472

`record[A343095(A027379(n)+n)]`
-/

namespace A047940.P3489021772561227472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (A027379 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047940.P3489021772561227472

/-!
# A047941: Number of 6-colorings of an n X n grid, up to rotational symmetry.

The programs for A047941, there is no canonical definition to state claims against.
-/

/-! ## A047941.P4808719062826999311

`A343095(eq[6, A025581(n)])`
-/

namespace A047941.P4808719062826999311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047941.P4808719062826999311

/-! ## A047941.P13022334693910462569

`record[A343095(A056000(n)+3)]`
-/

namespace A047941.P13022334693910462569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (A056000 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047941.P13022334693910462569

/-! ## A047941.P1229912498596530181

`A343095(eq[8, A004736(n+1)+1])`
-/

namespace A047941.P1229912498596530181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047941.P1229912498596530181

/-!
# A047942: Number of 7-colorings of an n X n grid, up to rotational symmetry.

The programs for A047942, there is no canonical definition to state claims against.
-/

/-! ## A047942.P14779898595504368064

`A343095(eq[7, A025581(n)])`
-/

namespace A047942.P14779898595504368064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047942.P14779898595504368064

/-!
# A047943: Number of 8-colorings of an n X n grid, up to rotational symmetry.

The programs for A047943, there is no canonical definition to state claims against.
-/

/-! ## A047943.P15784387851324658482

`A343095(A000096(n+8)-8)`
-/

namespace A047943.P15784387851324658482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (A000096 (n + 8) - 8).toNat

end

end A047943.P15784387851324658482

/-! ## A047943.P12372145381618277626

`A343095(eq[9, A004736(n+1)])`
-/

namespace A047943.P12372145381618277626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047943.P12372145381618277626

/-!
# A047944: Number of 9-colorings of an n X n grid, up to rotational symmetry.

The programs for A047944, there is no canonical definition to state claims against.
-/

/-! ## A047944.P356064417937877603

`A343095(A000096(n+8)+n+1)`
-/

namespace A047944.P356064417937877603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343095 (A000096 (n + 8) + (n + 1 : ℤ)).toNat

end

end A047944.P356064417937877603

/-!
# A047946: a(n) = 5*F(n)^2 + 3*(-1)^n where F(n) are the Fibonacci numbers A000045.

The programs for A047946, the canonical program `A047946.P8946529518962687251` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047946 has offset 0).

The definition of A047946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047946.P8946529518962687251

`3*a(n-1)-a(n-2)+5*(-1)^n` with `a(0)=3, a(1)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047946

/-- `3*a(n-1)-a(n-2)+5*(-1)^n` -/
def P8946529518962687251.Spec : Prop :=
  ∀ n, P8946529518962687251.a n = A047946 n

theorem P8946529518962687251.correct : P8946529518962687251.Spec := by
  intro n
  simp only [A047946]

end A047946

/-! ## A047946.P17596968524391958576

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=3, a(1)=2, a(2)=8`
-/

namespace A047946.P17596968524391958576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 8] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A047946.P17596968524391958576

namespace A047946

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P17596968524391958576.Spec : Prop :=
  ∀ n, P17596968524391958576.a n = A047946 n

end A047946

/-! ## A047946.P18243363354022470381

`A005248(n)+(-1)^n`
-/

namespace A047946.P18243363354022470381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n + (-1) ^ n

end

end A047946.P18243363354022470381

namespace A047946

/-- `A005248(n)+(-1)^n` -/
def P18243363354022470381.Spec : Prop :=
  ∀ n, P18243363354022470381.a n = A047946 n

end A047946

/-! ## A047946.P15689124154928760062

`ogf((-3+4x+2x^2)/(-1+2x+2x^2-x^3))`
-/

namespace A047946.P15689124154928760062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, -2] [1, -2, -2, 1] n

end

end A047946.P15689124154928760062

namespace A047946

/-- `ogf((-3+4x+2x^2)/(-1+2x+2x^2-x^3))` -/
def P15689124154928760062.Spec : Prop :=
  ∀ n, P15689124154928760062.a n = A047946 n

end A047946

/-! ## A047946.P10967174902430396424

`floor((ϕ^n)²)+(-1)^n+1`
-/

namespace A047946.P10967174902430396424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ n) ^ 2⌋ + ((-1) ^ n + 1)

end

end A047946.P10967174902430396424

namespace A047946

/-- `floor((ϕ^n)²)+(-1)^n+1` -/
def P10967174902430396424.Spec : Prop :=
  ∀ n, P10967174902430396424.a n = A047946 n

end A047946

/-! ## A047946.P13824821236892476943

`abs(1-A075150(n))`
-/

namespace A047946.P13824821236892476943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A075150 n|

end

end A047946.P13824821236892476943

namespace A047946

/-- `abs(1-A075150(n))` -/
def P13824821236892476943.Spec : Prop :=
  ∀ n, P13824821236892476943.a n = A047946 n

end A047946

/-! ## A047946.P11693107975680211574

`(A075150(n)-1)*A033999(n)`
-/

namespace A047946.P11693107975680211574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075150 n - 1) * A033999 n

end

end A047946.P11693107975680211574

namespace A047946

/-- `(A075150(n)-1)*A033999(n)` -/
def P11693107975680211574.Spec : Prop :=
  ∀ n, P11693107975680211574.a n = A047946 n

end A047946

/-! ## A047946.P16524563373284224739

`A171089(n)/2`
-/

namespace A047946.P16524563373284224739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171089 n : ℚ) / 2

end

end A047946.P16524563373284224739

namespace A047946

/-- `A171089(n)/2` -/
def P16524563373284224739.Spec : Prop :=
  ∀ n, P16524563373284224739.a n = (A047946 n : ℚ)

end A047946

/-! ## A047946.P8013458596106907711

`(A005248(n)+A001254(n))/2`
-/

namespace A047946.P8013458596106907711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005248 n + A001254 n : ℚ) / 2

end

end A047946.P8013458596106907711

namespace A047946

/-- `(A005248(n)+A001254(n))/2` -/
def P8013458596106907711.Spec : Prop :=
  ∀ n, P8013458596106907711.a n = (A047946 n : ℚ)

end A047946

/-! ## A047946.P10817756442685127639

`(A189316(n)+A033999(n))/2`
-/

namespace A047946.P10817756442685127639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189316 n + A033999 n : ℚ) / 2

end

end A047946.P10817756442685127639

namespace A047946

/-- `(A189316(n)+A033999(n))/2` -/
def P10817756442685127639.Spec : Prop :=
  ∀ n, P10817756442685127639.a n = (A047946 n : ℚ)

end A047946

/-! ## A047946.P15498698370461044024

`(A005248(n)+A000032(n)²)/2`
-/

namespace A047946.P15498698370461044024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005248 n + A000032 n ^ 2 : ℚ) / 2

end

end A047946.P15498698370461044024

namespace A047946

/-- `(A005248(n)+A000032(n)²)/2` -/
def P15498698370461044024.Spec : Prop :=
  ∀ n, P15498698370461044024.a n = (A047946 n : ℚ)

end A047946

/-! ## A047946.P1862734779189682756

`(A000032(2*n)+A000032(n)²)/2`
-/

namespace A047946.P1862734779189682756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) + A000032 n ^ 2 : ℚ) / 2

end

end A047946.P1862734779189682756

namespace A047946

/-- `(A000032(2*n)+A000032(n)²)/2` -/
def P1862734779189682756.Spec : Prop :=
  ∀ n, P1862734779189682756.a n = (A047946 n : ℚ)

end A047946

/-! ## A047946.P8827133926541525995

`(A001638(2*n)+A000032(2*n))/2`
-/

namespace A047946.P8827133926541525995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001638 (2 * n) + A000032 (2 * n) : ℚ) / 2

end

end A047946.P8827133926541525995

namespace A047946

/-- `(A001638(2*n)+A000032(2*n))/2` -/
def P8827133926541525995.Spec : Prop :=
  ∀ n, P8827133926541525995.a n = (A047946 n : ℚ)

end A047946

/-! ## A047946.P16721808419083963019

`(A061084(2*n+1)+A001638(2*n))/2`
-/

namespace A047946.P16721808419083963019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061084 (2 * n + 1) + A001638 (2 * n) : ℚ) / 2

end

end A047946.P16721808419083963019

namespace A047946

/-- `(A061084(2*n+1)+A001638(2*n))/2` -/
def P16721808419083963019.Spec : Prop :=
  ∀ n, P16721808419083963019.a n = (A047946 n : ℚ)

end A047946

/-! ## A047946.P17871392682487984644

`A097135(A004277(n)+n)/A097135(n)`
-/

namespace A047946.P17871392682487984644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097135 (A004277 n + (n : ℤ)).toNat : ℚ) / (A097135 n : ℚ)

end

end A047946.P17871392682487984644

namespace A047946

/-- `A097135(A004277(n)+n)/A097135(n)` -/
def P17871392682487984644.Spec : Prop :=
  ∀ n, P17871392682487984644.a n = (A047946 n : ℚ)

end A047946

/-! ## A047946.P9875128122048092772

`(A075151(n)-A000032(n))/A061084(n+1)`
-/

namespace A047946.P9875128122048092772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075151 n - A000032 n : ℚ) / (A061084 (n + 1) : ℚ)

end

end A047946.P9875128122048092772

namespace A047946

/-- `(A075151(n)-A000032(n))/A061084(n+1)` -/
def P9875128122048092772.Spec : Prop :=
  ∀ n, P9875128122048092772.a n = (A047946 n : ℚ)

end A047946

/-! ## A047946.P15183445624480159618

`(A075155(n)-A061084(n+1))/A000032(n)`
-/

namespace A047946.P15183445624480159618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075155 n - A061084 (n + 1) : ℚ) / (A000032 n : ℚ)

end

end A047946.P15183445624480159618

namespace A047946

/-- `(A075155(n)-A061084(n+1))/A000032(n)` -/
def P15183445624480159618.Spec : Prop :=
  ∀ n, P15183445624480159618.a n = (A047946 n : ℚ)

end A047946

/-! ## A047946.P4253121809148352268

`(A056854(n)+1)/A110391(n)`
-/

namespace A047946.P4253121809148352268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056854 n + 1 : ℚ) / (A110391 n : ℚ)

end

end A047946.P4253121809148352268

namespace A047946

/-- `(A056854(n)+1)/A110391(n)` -/
def P4253121809148352268.Spec : Prop :=
  ∀ n, P4253121809148352268.a n = (A047946 n : ℚ)

end A047946

/-! ## A047946.P16433354051696767199

`(A005248(n)²-1)/A110391(n)`
-/

namespace A047946.P16433354051696767199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005248 n ^ 2 - 1 : ℚ) / (A110391 n : ℚ)

end

end A047946.P16433354051696767199

namespace A047946

/-- `(A005248(n)²-1)/A110391(n)` -/
def P16433354051696767199.Spec : Prop :=
  ∀ n, P16433354051696767199.a n = (A047946 n : ℚ)

end A047946

/-!
# A047947: a(n) is the number of k values for which A023193(k) = n.

The programs for A047947, there is no canonical definition to state claims against.
-/

/-! ## A047947.P16483140857760321598

`Δ[A008407(n+1)]`
-/

namespace A047947.P16483140857760321598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047947.P16483140857760321598

/-! ## A047947.P12587738504572607600

`Δ[A020497(n+1)]`
-/

namespace A047947.P12587738504572607600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047947.P12587738504572607600

/-! ## A047947.P13732215630802708174

`Δ[record[A008407(A101504(n))]]`
-/

namespace A047947.P13732215630802708174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008407 (A101504 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047947.P13732215630802708174

/-! ## A047947.P15054172196453650699

`Δ[record[A008407(A328399(n))]]`
-/

namespace A047947.P15054172196453650699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008407 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047947.P15054172196453650699

/-! ## A047947.P8698630245193487827

`abs(Δ[A020497(A008619(2*n))])`
-/

namespace A047947.P8698630245193487827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020497 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A047947.P8698630245193487827

/-! ## A047947.P4735111062506957885

`A008407(n+2)-A008407(n+1)`
-/

namespace A047947.P4735111062506957885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008407 (n + 2) - A008407 (n + 1)

end

end A047947.P4735111062506957885

/-! ## A047947.P9297439393815514359

`A020497(n+2)-A020497(n+1)`
-/

namespace A047947.P9297439393815514359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020497 (n + 2) - A020497 (n + 1)

end

end A047947.P9297439393815514359

/-!
# A047948: Smallest of three consecutive primes with a difference of 6: primes p such that p+6 and p+12 are the next two primes.

The programs for A047948, there is no canonical definition to state claims against.
-/

/-! ## A047948.P1405982886451654051

`A053070(n+1)-6`
-/

namespace A047948.P1405982886451654051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053070 (n + 1) - 6

end

end A047948.P1405982886451654051

/-! ## A047948.P2366884518644899202

`∩[A023241(n+1), A122535(n+1)]`
-/

namespace A047948.P2366884518644899202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047948.P2366884518644899202

/-! ## A047948.P15875986431657468011

`∩[A086136(n+1), A122535(n+1)]`
-/

namespace A047948.P15875986431657468011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047948.P15875986431657468011

/-! ## A047948.P8722971965974066604

`p?[A006562(n+1)-6]`
-/

namespace A047948.P8722971965974066604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A047948.P8722971965974066604

/-! ## A047948.P9213844993388586882

`∩[A023241(n+1), A054643(n+1)]`
-/

namespace A047948.P9213844993388586882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047948.P9213844993388586882

/-! ## A047948.P3872409762944355712

`∩[A054643(n+1), A086136(n+1)]`
-/

namespace A047948.P3872409762944355712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047948.P3872409762944355712

/-! ## A047948.P12953351658338644159

`∩[A031924(n+1), A122535(n+1)]`
-/

namespace A047948.P12953351658338644159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047948.P12953351658338644159

/-! ## A047948.P16403453310291362174

`A031924(eq[1, A320701(n+2)-A320701(n+1)]+1)`
-/

namespace A047948.P16403453310291362174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320701 (n + 2) - A320701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A047948.P16403453310291362174

/-! ## A047948.P11656591024095913467

`∩[A023201(n+1), A122535(n+1)]`
-/

namespace A047948.P11656591024095913467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047948.P11656591024095913467

/-! ## A047948.P5321586878276990836

`∩[A015914(n+1), A122535(n+1)]`
-/

namespace A047948.P5321586878276990836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047948.P5321586878276990836

/-! ## A047948.P14981157133472817308

`∩[A122535(n+1), A262084(n+1)]`
-/

namespace A047948.P14981157133472817308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047948.P14981157133472817308

/-! ## A047948.P15512606368261832448

`∩[A058620(n+1), A122535(n+1)]`
-/

namespace A047948.P15512606368261832448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047948.P15512606368261832448

/-! ## A047948.P3764717648901113684

`A128940(3*n)`
-/

namespace A047948.P3764717648901113684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128940 (3 * n)

end

end A047948.P3764717648901113684

/-! ## A047948.P551886097468861830

`p?[p?[A073273(n+1)+1]-6]`
-/

namespace A047948.P551886097468861830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A047948.P551886097468861830

/-! ## A047948.P12248004830358823363

`A000040(A219096(n+1))`
-/

namespace A047948.P12248004830358823363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A219096 (n + 1)).toNat

end

end A047948.P12248004830358823363

/-! ## A047948.P12340587317513241617

`A128940(A016777(n))-6`
-/

namespace A047948.P12340587317513241617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128940 (A016777 n).toNat - 6

end

end A047948.P12340587317513241617

/-! ## A047948.P18276515438185966593

`A045319(A219096(n+1)-1)`
-/

namespace A047948.P18276515438185966593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A219096 (n + 1) - 1).toNat

end

end A047948.P18276515438185966593

/-! ## A047948.P13356901622876663769

`∩[A086304(n+1), A122535(n+1)]`
-/

namespace A047948.P13356901622876663769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047948.P13356901622876663769

/-! ## A047948.P17249537094058308393

`∩[A118538(n+1), A122535(n+1)]`
-/

namespace A047948.P17249537094058308393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047948.P17249537094058308393

/-!
# A047949: a(n) is the largest m such that n-m and n+m are both primes, or -1 if no such m exists.

The programs for A047949, there is no canonical definition to state claims against.
-/

/-! ## A047949.P1711970367880220195

`n+2-A020481(n+2)`
-/

namespace A047949.P1711970367880220195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A020481 (n + 2)

end

end A047949.P1711970367880220195

/-! ## A047949.P8597707183324390252

`A020482(n+2)-(n+2)`
-/

namespace A047949.P8597707183324390252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2) - (n + 2 : ℤ)

end

end A047949.P8597707183324390252

/-! ## A047949.P4561492580825394994

`A159482(n+2)%(n+2)`
-/

namespace A047949.P4561492580825394994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159482 (n + 2)) (n + 2 : ℤ)

end

end A047949.P4561492580825394994

/-! ## A047949.P11996068754712922750

`A020482(n+2)%A057544(n)`
-/

namespace A047949.P11996068754712922750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020482 (n + 2)) (A057544 n)

end

end A047949.P11996068754712922750

/-! ## A047949.P7904348972157444293

`A112824(n+2)+A047160(n+2)`
-/

namespace A047949.P7904348972157444293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112824 (n + 2) + A047160 (n + 2)

end

end A047949.P7904348972157444293

/-! ## A047949.P11924489936021537225

`A000040(A377972(n+2))-(n+2)`
-/

namespace A047949.P11924489936021537225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A377972 (n + 2)).toNat - (n + 2 : ℤ)

end

end A047949.P11924489936021537225

/-! ## A047949.P13967334614858183325

`A303603(n+2)/2`
-/

namespace A047949.P13967334614858183325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303603 (n + 2) : ℚ) / 2

end

end A047949.P13967334614858183325

/-! ## A047949.P11007310171188365051

`A325142(n+2)+A112824(n+2)`
-/

namespace A047949.P11007310171188365051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (n + 2) + A112824 (n + 2)

end

end A047949.P11007310171188365051

/-! ## A047949.P14691184791827586615

`n+2-A000040(A377758(n+2))`
-/

namespace A047949.P14691184791827586615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A000040 (A377758 (n + 2)).toNat

end

end A047949.P14691184791827586615

/-! ## A047949.P495429792302696845

`A001281(A303603(n+2))`
-/

namespace A047949.P495429792302696845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A303603 (n + 2)).toNat

end

end A047949.P495429792302696845

/-! ## A047949.P15998498845218486315

`n+2-A210957(2*(n+1))`
-/

namespace A047949.P15998498845218486315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A210957 (2 * (n + 1))

end

end A047949.P15998498845218486315

/-! ## A047949.P9277717546345419944

`A006530(A073046(n+2))-(n+2)`
-/

namespace A047949.P9277717546345419944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A073046 (n + 2)).toNat - (n + 2 : ℤ)

end

end A047949.P9277717546345419944

/-!
# A047950: Coordination sequence T1 for Zeolite Code AEN.

The programs for A047950, there is no canonical definition to state claims against.
-/

/-! ## A047950.P8825265028697306715

`∑[∑[A006968(A155435(n+4))]]`
-/

namespace A047950.P8825265028697306715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A155435 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047950.P8825265028697306715

/-!
# A047951: Coordination sequence T2 for Zeolite Code AEN.

The programs for A047951, there is no canonical definition to state claims against.
-/

/-! ## A047951.P7230890216729845618

`A301139(n)+A086520(A041165(n))`
-/

namespace A047951.P7230890216729845618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301139 n + A086520 (A041165 n).toNat

end

end A047951.P7230890216729845618

/-! ## A047951.P10922220680074946292

`A335904(A241600(n))+A000124(2*n)`
-/

namespace A047951.P10922220680074946292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335904 (A241600 n).toNat + A000124 (2 * n)

end

end A047951.P10922220680074946292

/-!
# A047953: Coordination sequence T1 for Zeolite Code DON.

The programs for A047953, there is no canonical definition to state claims against.
-/

/-! ## A047953.P10836770660299884378

`∑[A166493(∑[A087720(n+1)])]`
-/

namespace A047953.P10836770660299884378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087720 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166493 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047953.P10836770660299884378

/-! ## A047953.P16765904094975350928

`∑[∑[A267263(A245380(n))+1]]`
-/

namespace A047953.P16765904094975350928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A245380 n).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047953.P16765904094975350928

/-! ## A047953.P12295858013479830658

`∑[A340526(record[A340513(n+1)])]`
-/

namespace A047953.P12295858013479830658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340513 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340526 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047953.P12295858013479830658

/-! ## A047953.P16386274123611174482

`∑[∑[A095048(A095044(2*(n+1)))]]`
-/

namespace A047953.P16386274123611174482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095048 (A095044 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047953.P16386274123611174482

/-!
# A047954: Coordination sequence T2 for Zeolite Code DON.

The programs for A047954, there is no canonical definition to state claims against.
-/

/-! ## A047954.P18347285358530785108

`∑[∑[A280055(A065960(n+1))]]`
-/

namespace A047954.P18347285358530785108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280055 (A065960 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047954.P18347285358530785108

/-! ## A047954.P10520185239656492429

`∑[xor(A093875(n+1), A210607(n+1))]`
-/

namespace A047954.P10520185239656492429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A093875 (n + 1)) (A210607 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047954.P10520185239656492429

/-! ## A047954.P17187584497319737393

`∑[A311601(n)%A104791(n+1)-A029837(n+1)]`
-/

namespace A047954.P17187584497319737393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311601 n) (A104791 (n + 1)) - A029837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047954.P17187584497319737393

/-! ## A047954.P2989925519743987519

`A004523(A304311(n))+A335469(n²+1)+n²+A195120(n)+1`
-/

namespace A047954.P2989925519743987519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A304311 n).toNat + (A335469 (n ^ 2 + 1) + (n ^ 2 : ℤ) + (A195120 n + 1))

end

end A047954.P2989925519743987519

/-!
# A047957: Coordination sequence T5 for Zeolite Code DON.

The programs for A047957, there is no canonical definition to state claims against.
-/

/-! ## A047957.P10479747796421583675

`A183988(∑[A015924(n+1)])`
-/

namespace A047957.P10479747796421583675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183988 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047957.P10479747796421583675

/-! ## A047957.P4033504553078439914

`A183988(∑[∑[A053390(n+1)]])`
-/

namespace A047957.P4033504553078439914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053390 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183988 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047957.P4033504553078439914

/-!
# A047958: Coordination sequence T1 for Zeolite Code ISV.

The programs for A047958, there is no canonical definition to state claims against.
-/

/-! ## A047958.P4893935356250162880

`A301001(n)+A037833(A100552(n+1))`
-/

namespace A047958.P4893935356250162880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301001 n + A037833 (A100552 (n + 1)).toNat

end

end A047958.P4893935356250162880

/-!
# A047959: Coordination sequence T2 for Zeolite Code ISV.

The programs for A047959, there is no canonical definition to state claims against.
-/

/-! ## A047959.P10866527683892280169

`A301000(n)+A052403(A316552(n+1))`
-/

namespace A047959.P10866527683892280169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301000 n + A052403 (A316552 (n + 1)).toNat

end

end A047959.P10866527683892280169

/-! ## A047959.P6852885204750477664

`A301000(n)+A087051(A185203(2*n+3))`
-/

namespace A047959.P6852885204750477664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301000 n + A087051 (A185203 (2 * n + 3)).toNat

end

end A047959.P6852885204750477664

/-! ## A047959.P11146874222392254427

`A185203(n)+A301000(n)+A112099(A185203(2*n+3))`
-/

namespace A047959.P11146874222392254427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185203 n + (A301000 n + A112099 (A185203 (2 * n + 3)).toNat)

end

end A047959.P11146874222392254427

/-! ## A047959.P14263478535408216891

`A301000(A087051(n))`
-/

namespace A047959.P14263478535408216891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301000 (A087051 n).toNat

end

end A047959.P14263478535408216891

/-! ## A047959.P4784093510447635937

`A301000(A227549(n+1))`
-/

namespace A047959.P4784093510447635937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301000 (A227549 (n + 1)).toNat

end

end A047959.P4784093510447635937

/-!
# A047960: Coordination sequence T3 for Zeolite Code ISV.

The programs for A047960, there is no canonical definition to state claims against.
-/

/-! ## A047960.P9260004599882619269

`A005893(n)-A001221(A117574(n))`
-/

namespace A047960.P9260004599882619269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - A001221 (A117574 n).toNat

end

end A047960.P9260004599882619269

/-! ## A047960.P5435357782675452221

`A005893(n)-A001221(A216493(n))`
-/

namespace A047960.P5435357782675452221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - A001221 (A216493 n).toNat

end

end A047960.P5435357782675452221

/-! ## A047960.P13595420514563022939

`A005893(n)-A001221(A256202(n))`
-/

namespace A047960.P13595420514563022939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - A001221 (A256202 n).toNat

end

end A047960.P13595420514563022939

/-! ## A047960.P8221261496563522001

`A005893(n)-A001221(A259352(n+1))`
-/

namespace A047960.P8221261496563522001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - A001221 (A259352 (n + 1)).toNat

end

end A047960.P8221261496563522001

/-! ## A047960.P10791415157035044927

`A301090(n)-A292251(A025265(n+5))`
-/

namespace A047960.P10791415157035044927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301090 n - A292251 (A025265 (n + 5)).toNat

end

end A047960.P10791415157035044927

/-!
# A047962: Coordination sequence T5 for Zeolite Code ISV.

The programs for A047962, there is no canonical definition to state claims against.
-/

/-! ## A047962.P3698357324164148244

`A301002(n)+A178926(A258625(n+1))`
-/

namespace A047962.P3698357324164148244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301002 n + A178926 (A258625 (n + 1)).toNat

end

end A047962.P3698357324164148244

/-! ## A047962.P9656151944384222043

`A303709(A168424(n+1))+A301002(n)`
-/

namespace A047962.P9656151944384222043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (A168424 (n + 1)).toNat + A301002 n

end

end A047962.P9656151944384222043

/-!
# A047963: Coordination sequence T1 for Zeolite Code MSO.

The programs for A047963, there is no canonical definition to state claims against.
-/

/-! ## A047963.P17242471248445097652

`A196563(A047974(n))+A009894(n)`
-/

namespace A047963.P17242471248445097652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A047974 n).toNat + A009894 n

end

end A047963.P17242471248445097652

/-! ## A047963.P16100275732310002157

`or(A009894(n), A092436(A000142(n)))`
-/

namespace A047963.P16100275732310002157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009894 n) (A092436 (A000142 n).toNat)

end

end A047963.P16100275732310002157

/-! ## A047963.P14709428732913607099

`A258201(A324088(n+4))+A008000(n)`
-/

namespace A047963.P14709428732913607099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258201 (A324088 (n + 4)).toNat + A008000 n

end

end A047963.P14709428732913607099

/-!
# A047964: Coordination sequence T2 for Zeolite Code MSO.

The programs for A047964, there is no canonical definition to state claims against.
-/

/-! ## A047964.P11568531356102724513

`∑[∑[A078570(A224085(n))]]`
-/

namespace A047964.P11568531356102724513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078570 (A224085 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047964.P11568531356102724513

/-! ## A047964.P4213225625379839858

`∑[A326192(A032555(n+1)²)]`
-/

namespace A047964.P4213225625379839858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326192 (A032555 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047964.P4213225625379839858

/-! ## A047964.P14044128425974553268

`∑[A326192(A032559(n+1)²)]`
-/

namespace A047964.P14044128425974553268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326192 (A032559 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047964.P14044128425974553268

/-! ## A047964.P11059518139825585298

`∑[A326192(A032563(n+1)²)]`
-/

namespace A047964.P11059518139825585298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326192 (A032563 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047964.P11059518139825585298

/-! ## A047964.P8985900269441515453

`∑[A326192(A070938(n+1)²)]`
-/

namespace A047964.P8985900269441515453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326192 (A070938 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047964.P8985900269441515453

/-!
# A047965: Coordination sequence T3 for Zeolite Code MSO.

The programs for A047965, there is no canonical definition to state claims against.
-/

/-! ## A047965.P10135274930977110501

`∑[record[A244232(A066178(n))]]`
-/

namespace A047965.P10135274930977110501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244232 (A066178 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047965.P10135274930977110501

/-!
# A047966: a(n) = Sum_{ d divides n } q(d), where q(d) = A000009 = number of partitions of d into distinct parts.

The programs for A047966, there is no canonical definition to state claims against.
-/

/-! ## A047966.P3882919254310357480

`∑{d}[n+1, A000009(#)]`
-/

namespace A047966.P3882919254310357480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000009 d

end

end A047966.P3882919254310357480

/-! ## A047966.P7763950194411344158

`A024994(n+1)+A000009(n+1)`
-/

namespace A047966.P7763950194411344158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024994 (n + 1) + A000009 (n + 1)

end

end A047966.P7763950194411344158

/-! ## A047966.P13986010303989156500

`A329436(n+1)+A097986(n+1)`
-/

namespace A047966.P13986010303989156500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329436 (n + 1) + A097986 (n + 1)

end

end A047966.P13986010303989156500

/-! ## A047966.P4313455466604372587

`∑{d}[n+1, A239242(#)+A239240(#)]`
-/

namespace A047966.P4313455466604372587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A239242 d + A239240 d)

end

end A047966.P4313455466604372587

/-! ## A047966.P10978258932406314614

`∑{d}[n+1, A000005(#)*A078374((n+1)/#)]`
-/

namespace A047966.P10978258932406314614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A078374 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A047966.P10978258932406314614

/-! ## A047966.P15826420703092164067

`∑{d}[n+1, A130054(#)*A319301((n+1)/#)]`
-/

namespace A047966.P15826420703092164067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A319301 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A047966.P15826420703092164067

/-! ## A047966.P592856974513904934

`A098965(n+1)+A329436(n+1)+A025147(n)`
-/

namespace A047966.P592856974513904934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098965 (n + 1) + (A329436 (n + 1) + A025147 n)

end

end A047966.P592856974513904934

/-! ## A047966.P12310326599180246482

`∑{d}[n+1, abs(A081360(#))]`
-/

namespace A047966.P12310326599180246482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A081360 d|

end

end A047966.P12310326599180246482

/-! ## A047966.P13156017256356557151

`∑{d}[n+1, A111133(#)+1]`
-/

namespace A047966.P13156017256356557151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A111133 d + 1)

end

end A047966.P13156017256356557151

/-! ## A047966.P4992535161660727192

`∑{d}[A004277(n+1), A035457(#)]`
-/

namespace A047966.P4992535161660727192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A035457 d

end

end A047966.P4992535161660727192

/-! ## A047966.P505892323906772766

`∑{d}[A005843(n+1), A035457(#)]`
-/

namespace A047966.P505892323906772766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A035457 d

end

end A047966.P505892323906772766

/-!
# A047967: Number of partitions of n with some part repeated.

The programs for A047967, there is no canonical definition to state claims against.
-/

/-! ## A047967.P17465261386695120790

`A000041(n)-A000009(n)`
-/

namespace A047967.P17465261386695120790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A000009 n

end

end A047967.P17465261386695120790

/-! ## A047967.P2868980329080135920

`A167930(n)+A032741(n)`
-/

namespace A047967.P2868980329080135920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167930 n + A032741 n

end

end A047967.P2868980329080135920

/-! ## A047967.P13745430318382308121

`A394589(n)+A000009(n)`
-/

namespace A047967.P13745430318382308121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394589 n + A000009 n

end

end A047967.P13745430318382308121

/-! ## A047967.P446938623128587407

`A052810(n)-A052839(n)`
-/

namespace A047967.P446938623128587407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - A052839 n

end

end A047967.P446938623128587407

/-! ## A047967.P14284265816678404765

`A000065(n)-A111133(n)`
-/

namespace A047967.P14284265816678404765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - A111133 n

end

end A047967.P14284265816678404765

/-! ## A047967.P652287823112494348

`A086543(n)-A282892(n)`
-/

namespace A047967.P652287823112494348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 n - A282892 n

end

end A047967.P652287823112494348

/-! ## A047967.P7604702853311394419

`A218004(n)-A333147(n)`
-/

namespace A047967.P7604702853311394419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218004 n - A333147 n

end

end A047967.P7604702853311394419

/-! ## A047967.P1290242418122141146

`A330644(n)-A331848(n)`
-/

namespace A047967.P1290242418122141146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330644 n - A331848 n

end

end A047967.P1290242418122141146

/-! ## A047967.P7670402006817709359

`A000041(n)-abs(A081360(n))`
-/

namespace A047967.P7670402006817709359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - |A081360 n|

end

end A047967.P7670402006817709359

/-! ## A047967.P2017423983528525434

`∑[A002865(n)]-A000009(n)`
-/

namespace A047967.P2017423983528525434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000009 n

end

end A047967.P2017423983528525434

/-! ## A047967.P2777860721465384661

`A000041(n)-∑[A087897(n)]`
-/

namespace A047967.P2777860721465384661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047967.P2777860721465384661

/-! ## A047967.P13123707800140549904

`A000065(n)+1-A000009(n)`
-/

namespace A047967.P13123707800140549904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A000009 n)

end

end A047967.P13123707800140549904

/-! ## A047967.P7786983180438914667

`A000041(n)-(A111133(n)+1)`
-/

namespace A047967.P7786983180438914667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A111133 n + 1)

end

end A047967.P7786983180438914667

/-! ## A047967.P4523567031937485014

`A133041(n)-(A000009(n)+n)`
-/

namespace A047967.P4523567031937485014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A000009 n + (n : ℤ))

end

end A047967.P4523567031937485014

/-! ## A047967.P7256425837061775547

`∑[A002865(n)]-abs(A081360(n))`
-/

namespace A047967.P7256425837061775547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - |A081360 n|

end

end A047967.P7256425837061775547

/-! ## A047967.P3663235281881271102

`A000065(n)+1-abs(A081360(n))`
-/

namespace A047967.P3663235281881271102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - |A081360 n|)

end

end A047967.P3663235281881271102

/-! ## A047967.P1197465454696405279

`A000065(n)+1-∑[A087897(n)]`
-/

namespace A047967.P1197465454696405279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047967.P1197465454696405279

/-! ## A047967.P12538518295653152997

`∑[A002865(n)]-(A111133(n)+1)`
-/

namespace A047967.P12538518295653152997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A111133 n + 1)

end

end A047967.P12538518295653152997

/-! ## A047967.P3917742285942566829

`A000837(n)+A018783(n)-A000009(n)`
-/

namespace A047967.P3917742285942566829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n - A000009 n)

end

end A047967.P3917742285942566829

/-! ## A047967.P224928154235836129

`A000701(n)+A046682(n)-A000009(n)`
-/

namespace A047967.P224928154235836129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + (A046682 n - A000009 n)

end

end A047967.P224928154235836129

/-!
# A047968: a(n) = Sum_{d|n} p(d), where p(d) = A000041 = number of partitions of d.

The programs for A047968, there is no canonical definition to state claims against.
-/

/-! ## A047968.P9112375152211197504

`A168111(n+1)+A000041(n+1)`
-/

namespace A047968.P9112375152211197504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168111 (n + 1) + A000041 (n + 1)

end

end A047968.P9112375152211197504

/-! ## A047968.P5739637057458140433

`∑{d}[n+1, A000041(#)]`
-/

namespace A047968.P5739637057458140433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000041 d

end

end A047968.P5739637057458140433

/-! ## A047968.P3755952150793661251

`∑{d}[n+1, A000065(#)+1]`
-/

namespace A047968.P3755952150793661251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000065 d + 1)

end

end A047968.P3755952150793661251

/-! ## A047968.P2708633194529808376

`∑{d}[n+1, #*A333697((n+1)/#)]`
-/

namespace A047968.P2708633194529808376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A333697 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A047968.P2708633194529808376

/-! ## A047968.P6049577826555442195

`∑{d}[n+1, A078392(#)*A130054((n+1)/#)]`
-/

namespace A047968.P6049577826555442195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078392 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A047968.P6049577826555442195

/-! ## A047968.P4753207315778097421

`∑{d}[n+1, A059841(#-1)*A305841((n+1)/#)]`
-/

namespace A047968.P4753207315778097421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A305841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A047968.P4753207315778097421

/-! ## A047968.P75583879990459955

`∑{d}[n+1, sqrt(A001255(#))]`
-/

namespace A047968.P75583879990459955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A001255 d : ℝ)

end

end A047968.P75583879990459955

/-! ## A047968.P14230983920579969128

`A055893(2*(n+1)²)`
-/

namespace A047968.P14230983920579969128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055893 (2 * (n + 1) ^ 2)

end

end A047968.P14230983920579969128

/-!
# A047969: Square array of nexus numbers a(n,k) = (n+1)^(k+1) - n^(k+1) (n >= 0, k >= 0) read by upwards antidiagonals.

The programs for A047969, the canonical program `A047969.P4601451156096870100` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047969 has offset 0).

The definition of A047969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047969.P9032423747768820219

`A051128(n+1)-A095884(n+1)`
-/

namespace A047969.P9032423747768820219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A095884 (n + 1)

end

end A047969.P9032423747768820219

namespace A047969

/-- `A051128(n+1)-A095884(n+1)` -/
def P9032423747768820219.Spec : Prop :=
  ∀ n, P9032423747768820219.a n = A047969 n

end A047969

/-! ## A047969.P7809790623869157198

`A095884(comp[∑[n]])-A095884(n+1)`
-/

namespace A047969.P7809790623869157198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095884 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A095884 (n + 1)

end

end A047969.P7809790623869157198

namespace A047969

/-- `A095884(comp[∑[n]])-A095884(n+1)` -/
def P7809790623869157198.Spec : Prop :=
  ∀ n, P7809790623869157198.a n = A047969 n

end A047969

/-! ## A047969.P4601451156096870100

`A051128(n+1)-A003992(∑[A035214(n)])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A047969

/-- `A051128(n+1)-A003992(∑[A035214(n)])` -/
def P4601451156096870100.Spec : Prop :=
  ∀ n, P4601451156096870100.a n = A047969 n

theorem P4601451156096870100.correct : P4601451156096870100.Spec := by
  intro n
  simp only [A047969]

end A047969

/-! ## A047969.P9287399368106177508

`A051128(n+1)-A003992(A014132(n+1))`
-/

namespace A047969.P9287399368106177508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A003992 (A014132 (n + 1)).toNat

end

end A047969.P9287399368106177508

namespace A047969

/-- `A051128(n+1)-A003992(A014132(n+1))` -/
def P9287399368106177508.Spec : Prop :=
  ∀ n, P9287399368106177508.a n = A047969 n

end A047969

/-! ## A047969.P12315404612005396202

`A009999(A014132(n+1))-A095884(n+1)`
-/

namespace A047969.P12315404612005396202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A014132 (n + 1)).toNat - A095884 (n + 1)

end

end A047969.P12315404612005396202

namespace A047969

/-- `A009999(A014132(n+1))-A095884(n+1)` -/
def P12315404612005396202.Spec : Prop :=
  ∀ n, P12315404612005396202.a n = A047969 n

end A047969

/-! ## A047969.P16592552518893522839

`A051128(n+1)-A003992(n)*A025581(n)`
-/

namespace A047969.P16592552518893522839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A003992 n * A025581 n

end

end A047969.P16592552518893522839

namespace A047969

/-- `A051128(n+1)-A003992(n)*A025581(n)` -/
def P16592552518893522839.Spec : Prop :=
  ∀ n, P16592552518893522839.a n = A047969 n

end A047969

/-! ## A047969.P7366653896005738670

`A051128(n+1)-A025581(n)^A128227(n)`
-/

namespace A047969.P7366653896005738670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051128 (n + 1) : ℚ) - (A025581 n : ℚ) ^ (A128227 n : ℤ)

end

end A047969.P7366653896005738670

namespace A047969

/-- `A051128(n+1)-A025581(n)^A128227(n)` -/
def P7366653896005738670.Spec : Prop :=
  ∀ n, P7366653896005738670.a n = (A047969 n : ℚ)

end A047969

/-! ## A047969.P13714434711761327793

`A051128(n+1)-A025581(n)^A193738(n)`
-/

namespace A047969.P13714434711761327793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051128 (n + 1) : ℚ) - (A025581 n : ℚ) ^ (A193738 n : ℤ)

end

end A047969.P13714434711761327793

namespace A047969

/-- `A051128(n+1)-A025581(n)^A193738(n)` -/
def P13714434711761327793.Spec : Prop :=
  ∀ n, P13714434711761327793.a n = (A047969 n : ℚ)

end A047969

/-! ## A047969.P7620443886370060363

`A051128(n+1)-A025581(n)^A002260(n+1)`
-/

namespace A047969.P7620443886370060363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051128 (n + 1) : ℚ) - (A025581 n : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A047969.P7620443886370060363

namespace A047969

/-- `A051128(n+1)-A025581(n)^A002260(n+1)` -/
def P7620443886370060363.Spec : Prop :=
  ∀ n, P7620443886370060363.a n = (A047969 n : ℚ)

end A047969

/-! ## A047969.P6407360516966698439

`A051128(n+1)-A003992(A002024(n+1)+n+1)`
-/

namespace A047969.P6407360516966698439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A003992 (A002024 (n + 1) + (n + 1 : ℤ)).toNat

end

end A047969.P6407360516966698439

namespace A047969

/-- `A051128(n+1)-A003992(A002024(n+1)+n+1)` -/
def P6407360516966698439.Spec : Prop :=
  ∀ n, P6407360516966698439.a n = A047969 n

end A047969

/-! ## A047969.P2580217076085632419

`A343237(A061579(n))`
-/

namespace A047969.P2580217076085632419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343237 (A061579 n).toNat

end

end A047969.P2580217076085632419

namespace A047969

/-- `A343237(A061579(n))` -/
def P2580217076085632419.Spec : Prop :=
  ∀ n, P2580217076085632419.a n = A047969 n

end A047969

/-! ## A047969.P14422523548733171070

`A343237(A038722(n+1)-1)`
-/

namespace A047969.P14422523548733171070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343237 (A038722 (n + 1) - 1).toNat

end

end A047969.P14422523548733171070

namespace A047969

/-- `A343237(A038722(n+1)-1)` -/
def P14422523548733171070.Spec : Prop :=
  ∀ n, P14422523548733171070.a n = A047969 n

end A047969

/-! ## A047969.P11399386385640392674

`A051129(A038722(n+1))-A095884(n+1)`
-/

namespace A047969.P11399386385640392674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (A038722 (n + 1)).toNat - A095884 (n + 1)

end

end A047969.P11399386385640392674

namespace A047969

/-- `A051129(A038722(n+1))-A095884(n+1)` -/
def P11399386385640392674.Spec : Prop :=
  ∀ n, P11399386385640392674.a n = A047969 n

end A047969

/-! ## A047969.P15358761874937085440

`A343237(A038722(n+2))`
-/

namespace A047969.P15358761874937085440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343237 (A038722 (n + 2)).toNat

end

end A047969.P15358761874937085440

namespace A047969

/-- `A343237(A038722(n+2))` -/
def P15358761874937085440.Spec : Prop :=
  ∀ n, P15358761874937085440.a n = A047969 n

end A047969

/-!
# A047970: Antidiagonal sums of nexus numbers (A047969).

The programs for A047970, there is no canonical definition to state claims against.
-/

/-! ## A047970.P6343436590505667900

`∑[A112532(n)]`
-/

namespace A047970.P6343436590505667900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047970.P6343436590505667900

/-! ## A047970.P13073625320030188316

`Δ[A003101(n)]`
-/

namespace A047970.P13073625320030188316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047970.P13073625320030188316

/-! ## A047970.P15338135117195194959

`Δ[A026898(n)]`
-/

namespace A047970.P15338135117195194959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047970.P15338135117195194959

/-! ## A047970.P8590314575858223127

`Δ[Δ[A103439(n)]]`
-/

namespace A047970.P8590314575858223127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103439 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047970.P8590314575858223127

/-! ## A047970.P10949650048986607679

`Δ[Δ[A104879(n)]]`
-/

namespace A047970.P10949650048986607679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104879 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047970.P10949650048986607679

/-! ## A047970.P2346584979578353364

`Δ[A101494(∑[n+1])]`
-/

namespace A047970.P2346584979578353364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047970.P2346584979578353364

/-! ## A047970.P6563006057872531810

`Δ[A103480(n+1)]-1`
-/

namespace A047970.P6563006057872531810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A047970.P6563006057872531810

/-! ## A047970.P2679146580742160553

`Δ[A062810(n+1)/2]`
-/

namespace A047970.P2679146580742160553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062810 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047970.P2679146580742160553

/-! ## A047970.P13605101040232496354

`A003101(n+1)-A003101(n)`
-/

namespace A047970.P13605101040232496354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 (n + 1) - A003101 n

end

end A047970.P13605101040232496354

/-! ## A047970.P2327389041823517496

`A026898(n+1)-A026898(n)`
-/

namespace A047970.P2327389041823517496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 (n + 1) - A026898 n

end

end A047970.P2327389041823517496

/-!
# A047971: Triangle of coefficients of Gaussian polynomials [ n+3,3 ].

The programs for A047971, there is no canonical definition to state claims against.
-/

/-! ## A047971.P4748413673178782661

`A106823(lt[1, n*A106823(n)])`
-/

namespace A047971.P4748413673178782661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A106823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A047971.P4748413673178782661

/-! ## A047971.P10525354324423068231

`A106823(lt[A010057(n), A106823(n)])`
-/

namespace A047971.P10525354324423068231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106823 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A047971.P10525354324423068231

/-! ## A047971.P16896762338823019541

`A106823(lt[A154272(n+1), A106823(n)])`
-/

namespace A047971.P16896762338823019541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106823 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A047971.P16896762338823019541

/-! ## A047971.P6876843580648430135

`A120636(A242357(n+1))%A178434(n+1)`
-/

namespace A047971.P6876843580648430135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120636 (A242357 (n + 1)).toNat) (A178434 (n + 1))

end

end A047971.P6876843580648430135

/-!
# A047972: Distance of n-th prime to nearest square.

The programs for A047972, the canonical program `A047972.P12401252622405867247` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047972 has offset 1).

The definition of A047972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047972.P12401252622405867247

`A049581(A130290(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A047972

/-- `A049581(A130290(n+1))` -/
def P12401252622405867247.Spec : Prop :=
  ∀ n, P12401252622405867247.a n = A047972 (n + 1)

theorem P12401252622405867247.correct : P12401252622405867247.Spec := by
  intro n
  simp only [A047972, Nat.add_sub_cancel]

end A047972

/-! ## A047972.P11357937515267147061

`A004739(A112045(n+1))`
-/

namespace A047972.P11357937515267147061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A112045 (n + 1)).toNat

end

end A047972.P11357937515267147061

namespace A047972

/-- `A004739(A112045(n+1))` -/
def P11357937515267147061.Spec : Prop :=
  ∀ n, P11357937515267147061.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P4164752541575197595

`A053188(p?[comp[n²]])`
-/

namespace A047972.P4164752541575197595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A047972.P4164752541575197595

namespace A047972

/-- `A053188(p?[comp[n²]])` -/
def P4164752541575197595.Spec : Prop :=
  ∀ n, P4164752541575197595.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P3701439966537395488

`A066635(p?[comp[n²]])`
-/

namespace A047972.P3701439966537395488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A047972.P3701439966537395488

namespace A047972

/-- `A066635(p?[comp[n²]])` -/
def P3701439966537395488.Spec : Prop :=
  ∀ n, P3701439966537395488.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P4767803628214789964

`A053188(A000040(n+1))`
-/

namespace A047972.P4767803628214789964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A000040 (n + 1)).toNat

end

end A047972.P4767803628214789964

namespace A047972

/-- `A053188(A000040(n+1))` -/
def P4767803628214789964.Spec : Prop :=
  ∀ n, P4767803628214789964.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P15923240572196452755

`A066635(A006005(n+1))`
-/

namespace A047972.P15923240572196452755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (A006005 (n + 1)).toNat

end

end A047972.P15923240572196452755

namespace A047972

/-- `A066635(A006005(n+1))` -/
def P15923240572196452755.Spec : Prop :=
  ∀ n, P15923240572196452755.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P16701984845294605780

`A066635(A161847(n+1))`
-/

namespace A047972.P16701984845294605780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (A161847 (n + 1)).toNat

end

end A047972.P16701984845294605780

namespace A047972

/-- `A066635(A161847(n+1))` -/
def P16701984845294605780.Spec : Prop :=
  ∀ n, P16701984845294605780.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P5449282191241571523

`A053188(A008578(n+2))`
-/

namespace A047972.P5449282191241571523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A008578 (n + 2)).toNat

end

end A047972.P5449282191241571523

namespace A047972

/-- `A053188(A008578(n+2))` -/
def P5449282191241571523.Spec : Prop :=
  ∀ n, P5449282191241571523.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P5551708591462484334

`A066635(A075643(n+2))`
-/

namespace A047972.P5551708591462484334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (A075643 (n + 2)).toNat

end

end A047972.P5551708591462484334

namespace A047972

/-- `A066635(A075643(n+2))` -/
def P5551708591462484334.Spec : Prop :=
  ∀ n, P5551708591462484334.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P6812674191195098919

`A053188(A182986(n+2))`
-/

namespace A047972.P6812674191195098919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A182986 (n + 2)).toNat

end

end A047972.P6812674191195098919

namespace A047972

/-- `A053188(A182986(n+2))` -/
def P6812674191195098919.Spec : Prop :=
  ∀ n, P6812674191195098919.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P5313213813281267276

`A066635(A171525(n+2))`
-/

namespace A047972.P5313213813281267276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (A171525 (n + 2)).toNat

end

end A047972.P5313213813281267276

namespace A047972

/-- `A066635(A171525(n+2))` -/
def P5313213813281267276.Spec : Prop :=
  ∀ n, P5313213813281267276.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P3722200874572502897

`A066635(eq[1, A003415(n)])`
-/

namespace A047972.P3722200874572502897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047972.P3722200874572502897

namespace A047972

/-- `A066635(eq[1, A003415(n)])` -/
def P3722200874572502897.Spec : Prop :=
  ∀ n, P3722200874572502897.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P4247024640346953116

`A053188(eq[1, A105700(n)])`
-/

namespace A047972.P4247024640346953116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047972.P4247024640346953116

namespace A047972

/-- `A053188(eq[1, A105700(n)])` -/
def P4247024640346953116.Spec : Prop :=
  ∀ n, P4247024640346953116.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P13867409486595717554

`A053188(record[A006530(n+2)])`
-/

namespace A047972.P13867409486595717554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047972.P13867409486595717554

namespace A047972

/-- `A053188(record[A006530(n+2)])` -/
def P13867409486595717554.Spec : Prop :=
  ∀ n, P13867409486595717554.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P2071316238435562815

`A053188(record[A014963(n+2)])`
-/

namespace A047972.P2071316238435562815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047972.P2071316238435562815

namespace A047972

/-- `A053188(record[A014963(n+2)])` -/
def P2071316238435562815.Spec : Prop :=
  ∀ n, P2071316238435562815.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P17257262020774207838

`A066635(record[A006530(n+2)])`
-/

namespace A047972.P17257262020774207838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047972.P17257262020774207838

namespace A047972

/-- `A066635(record[A006530(n+2)])` -/
def P17257262020774207838.Spec : Prop :=
  ∀ n, P17257262020774207838.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P9184860732998469916

`A053188(record[A020639(n+2)])`
-/

namespace A047972.P9184860732998469916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047972.P9184860732998469916

namespace A047972

/-- `A053188(record[A020639(n+2)])` -/
def P9184860732998469916.Spec : Prop :=
  ∀ n, P9184860732998469916.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P3054297512990244491

`A066635(record[A014963(n+2)])`
-/

namespace A047972.P3054297512990244491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047972.P3054297512990244491

namespace A047972

/-- `A066635(record[A014963(n+2)])` -/
def P3054297512990244491.Spec : Prop :=
  ∀ n, P3054297512990244491.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P13224249665563185612

`A066635(record[A020639(n+2)])`
-/

namespace A047972.P13224249665563185612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047972.P13224249665563185612

namespace A047972

/-- `A066635(record[A020639(n+2)])` -/
def P13224249665563185612.Spec : Prop :=
  ∀ n, P13224249665563185612.a n = A047972 (n + 1)

end A047972

/-! ## A047972.P15580934204160664139

`A053188(record[A053139(n+2)])`
-/

namespace A047972.P15580934204160664139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047972.P15580934204160664139

namespace A047972

/-- `A053188(record[A053139(n+2)])` -/
def P15580934204160664139.Spec : Prop :=
  ∀ n, P15580934204160664139.a n = A047972 (n + 1)

end A047972

/-!
# A047973: Distance of n-th prime to nearest cube.

The programs for A047973, the canonical program `A047973.P1837103317122133826` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047973 has offset 1).

The definition of A047973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047973.P1837103317122133826

`A074989(A000040(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A047973

/-- `A074989(A000040(n+1))` -/
def P1837103317122133826.Spec : Prop :=
  ∀ n, P1837103317122133826.a n = A047973 (n + 1)

theorem P1837103317122133826.correct : P1837103317122133826.Spec := by
  intro n
  simp only [A047973, Nat.add_sub_cancel]

end A047973

/-! ## A047973.P4932707258486222567

`A074989(A008578(n+2))`
-/

namespace A047973.P4932707258486222567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 (A008578 (n + 2)).toNat

end

end A047973.P4932707258486222567

namespace A047973

/-- `A074989(A008578(n+2))` -/
def P4932707258486222567.Spec : Prop :=
  ∀ n, P4932707258486222567.a n = A047973 (n + 1)

end A047973

/-! ## A047973.P17231023541600454005

`A074989(A182986(n+2))`
-/

namespace A047973.P17231023541600454005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 (A182986 (n + 2)).toNat

end

end A047973.P17231023541600454005

namespace A047973

/-- `A074989(A182986(n+2))` -/
def P17231023541600454005.Spec : Prop :=
  ∀ n, P17231023541600454005.a n = A047973 (n + 1)

end A047973

/-! ## A047973.P16332680330386044175

`A074989(record[A074399(n+1)])`
-/

namespace A047973.P16332680330386044175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047973.P16332680330386044175

namespace A047973

/-- `A074989(record[A074399(n+1)])` -/
def P16332680330386044175.Spec : Prop :=
  ∀ n, P16332680330386044175.a n = A047973 (n + 1)

end A047973

/-! ## A047973.P14046862752311718111

`A074989(record[A006530(n+2)])`
-/

namespace A047973.P14046862752311718111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047973.P14046862752311718111

namespace A047973

/-- `A074989(record[A006530(n+2)])` -/
def P14046862752311718111.Spec : Prop :=
  ∀ n, P14046862752311718111.a n = A047973 (n + 1)

end A047973

/-! ## A047973.P6998638163808092684

`A074989(record[A014963(n+2)])`
-/

namespace A047973.P6998638163808092684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047973.P6998638163808092684

namespace A047973

/-- `A074989(record[A014963(n+2)])` -/
def P6998638163808092684.Spec : Prop :=
  ∀ n, P6998638163808092684.a n = A047973 (n + 1)

end A047973

/-! ## A047973.P15341463570330821169

`A074989(record[A020639(n+2)])`
-/

namespace A047973.P15341463570330821169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047973.P15341463570330821169

namespace A047973

/-- `A074989(record[A020639(n+2)])` -/
def P15341463570330821169.Spec : Prop :=
  ∀ n, P15341463570330821169.a n = A047973 (n + 1)

end A047973

/-!
# A047974: a(n) = a(n-1) + 2*(n-1)*a(n-2).

The programs for A047974, the canonical program `A047974.P1141122604681407147` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047974 has offset 0).

The definition of A047974 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*(n-1)*a(n-2)` (program `A047974.P1141122604681407147`, by `A047974.P1141122604681407147.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A047974.P1141122604681407147

`a(n-1)+2*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047974

/-- `a(n-1)+2*(n-1)*a(n-2)` -/
def P1141122604681407147.Spec : Prop :=
  ∀ n, P1141122604681407147.a n = A047974 n

theorem P1141122604681407147.correct : P1141122604681407147.Spec := by
  intro n
  simp only [A047974]

end A047974

/-! ## A047974.P12602500916413041677

`a(n-1)-2*(1-n)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A047974.P12602500916413041677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 2 * (1 - (n : ℤ)) * a (n - 2)

end

end A047974.P12602500916413041677

namespace A047974

/-- `a(n-1)-2*(1-n)*a(n-2)` -/
def P12602500916413041677.Spec : Prop :=
  ∀ n, P12602500916413041677.a n = A047974 n

theorem P12602500916413041677.correct : P12602500916413041677.Spec := by
  intro n
  simp only [A047974, Nat.add_sub_cancel, A047974.P12602500916413041677.a, A047974.P1141122604681407147.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A047974

/-! ## A047974.P11527900029765544140

`A122832(∑[n])`
-/

namespace A047974.P11527900029765544140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122832 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047974.P11527900029765544140

namespace A047974

/-- `A122832(∑[n])` -/
def P11527900029765544140.Spec : Prop :=
  ∀ n, P11527900029765544140.a n = A047974 n

end A047974

/-! ## A047974.P5159355917888906940

`A018191(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A047974.P5159355917888906940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018191 n - (n : ℤ) * a (n - 1)

end

end A047974.P5159355917888906940

namespace A047974

/-- `A018191(n)-n*a(n-1)` -/
def P5159355917888906940.Spec : Prop :=
  ∀ n, P5159355917888906940.a n = A047974 n

end A047974

/-! ## A047974.P13291259322327336689

`A018191(n)-A291632(n)`
-/

namespace A047974.P13291259322327336689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018191 n - A291632 n

end

end A047974.P13291259322327336689

namespace A047974

/-- `A018191(n)-A291632(n)` -/
def P13291259322327336689.Spec : Prop :=
  ∀ n, P13291259322327336689.a n = A047974 n

end A047974

/-! ## A047974.P2245599384330994008

`A291632(n+1)/(n+1)`
-/

namespace A047974.P2245599384330994008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291632 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A047974.P2245599384330994008

namespace A047974

/-- `A291632(n+1)/(n+1)` -/
def P2245599384330994008.Spec : Prop :=
  ∀ n, P2245599384330994008.a n = (A047974 n : ℚ)

end A047974

/-! ## A047974.P14325190452548762008

`A293669(∑[n+2]-1)`
-/

namespace A047974.P14325190452548762008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293669 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A047974.P14325190452548762008

namespace A047974

/-- `A293669(∑[n+2]-1)` -/
def P14325190452548762008.Spec : Prop :=
  ∀ n, P14325190452548762008.a n = A047974 n

end A047974

/-! ## A047974.P9248521130600692127

`or(1, A261764(A133263(n)))`
-/

namespace A047974.P9248521130600692127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A261764 (A133263 n).toNat)

end

end A047974.P9248521130600692127

namespace A047974

/-- `or(1, A261764(A133263(n)))` -/
def P9248521130600692127.Spec : Prop :=
  ∀ n, P9248521130600692127.a n = A047974 n

end A047974

/-! ## A047974.P4197648299719821120

`A361277(∑[n+1]+n)`
-/

namespace A047974.P4197648299719821120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361277 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A047974.P4197648299719821120

namespace A047974

/-- `A361277(∑[n+1]+n)` -/
def P4197648299719821120.Spec : Prop :=
  ∀ n, P4197648299719821120.a n = A047974 n

end A047974

/-! ## A047974.P1467543949446006807

`2*A132101(n)-A001147(n)`
-/

namespace A047974.P1467543949446006807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132101 n - A001147 n

end

end A047974.P1467543949446006807

namespace A047974

/-- `2*A132101(n)-A001147(n)` -/
def P1467543949446006807.Spec : Prop :=
  ∀ n, P1467543949446006807.a n = A047974 n

end A047974

/-!
# A047975: Let (p1,p2), (p3,p4) be two pairs of successive primes such that p1*p2=p3+p4-1, |p2-p1|=|p4-p3|; sequence gives |p2-p1|=|p4-p3|.

The programs for A047975, there is no canonical definition to state claims against.
-/

/-! ## A047975.P7077961577156346233

`gcd(12, A134930(A108968(n)))`
-/

namespace A047975.P7077961577156346233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (A134930 (A108968 n).toNat)

end

end A047975.P7077961577156346233

/-! ## A047975.P9555762882645573489

`A001223(A137897(2*(n+1))+A029895(n))`
-/

namespace A047975.P9555762882645573489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A137897 (2 * (n + 1)) + A029895 n).toNat

end

end A047975.P9555762882645573489

/-! ## A047975.P15916071058588210135

`A007400(A007376(n+1)+A007368(3*n))`
-/

namespace A047975.P15916071058588210135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 (A007376 (n + 1) + A007368 (3 * n)).toNat

end

end A047975.P15916071058588210135

/-!
# A047976: Let (p1,p2), (p3,p4) be pairs of twin primes with p1*p2=p3+p4-1; sequence gives values of p1.

The programs for A047976, there is no canonical definition to state claims against.
-/

/-! ## A047976.P6093421900930047707

`A152787(n+1)-1`
-/

namespace A047976.P6093421900930047707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152787 (n + 1) - 1

end

end A047976.P6093421900930047707

/-! ## A047976.P8938490777431550337

`A047977(n+1)-2`
-/

namespace A047976.P8938490777431550337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047977 (n + 1) - 2

end

end A047976.P8938490777431550337

/-! ## A047976.P7142011113962729734

`A047978(n+1)%A152787(n+1)`
-/

namespace A047976.P7142011113962729734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047978 (n + 1)) (A152787 (n + 1))

end

end A047976.P7142011113962729734

/-! ## A047976.P16075405147147791189

`sqrt(A047979(n+1)+A047978(n+1))-1`
-/

namespace A047976.P16075405147147791189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A047979 (n + 1) + A047978 (n + 1) : ℝ) - 1

end

end A047976.P16075405147147791189

/-! ## A047976.P14003222391566886775

`(A047978(n+1)+A047977(n+1))%A047979(n+1)`
-/

namespace A047976.P14003222391566886775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047978 (n + 1) + A047977 (n + 1)) (A047979 (n + 1))

end

end A047976.P14003222391566886775

/-! ## A047976.P2398027008701819454

`A163649(A008588(n+1)/(n+1))+A152787(n+1)`
-/

namespace A047976.P2398027008701819454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163649 (SequenceMachineLib.roundAway ((A008588 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat + A152787 (n + 1)

end

end A047976.P2398027008701819454

/-! ## A047976.P8767381354519357869

`sqrt(A370453(n+1))-1`
-/

namespace A047976.P8767381354519357869
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A370453 (n + 1) : ℝ) - 1

end

end A047976.P8767381354519357869

/-! ## A047976.P7792037162255436521

`∩[A014574(n+1), A152786(n+1)]-1`
-/

namespace A047976.P7792037162255436521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A047976.P7792037162255436521

/-! ## A047976.P10653224506124914280

`∩[A152786(n+1), A217259(n+1)]-1`
-/

namespace A047976.P10653224506124914280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A047976.P10653224506124914280

/-! ## A047976.P15018535502555203087

`∩[A056853(n+1), A152786(n+1)]-1`
-/

namespace A047976.P15018535502555203087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A047976.P15018535502555203087

/-!
# A047977: Let (p1,p2), (p3,p4) be pairs of twin primes with p1*p2=p3+p4-1; sequence gives values of p2.

The programs for A047977, there is no canonical definition to state claims against.
-/

/-! ## A047977.P15208741608775840779

`A152787(n+1)+1`
-/

namespace A047977.P15208741608775840779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152787 (n + 1) + 1

end

end A047977.P15208741608775840779

/-! ## A047977.P3648028840840241417

`A047976(n+1)+2`
-/

namespace A047977.P3648028840840241417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047976 (n + 1) + 2

end

end A047977.P3648028840840241417

/-! ## A047977.P14422157758186147642

`sqrt(2*(A047978(n+1)+1))+1`
-/

namespace A047977.P14422157758186147642
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * (A047978 (n + 1) + 1) : ℝ) + 1

end

end A047977.P14422157758186147642

/-! ## A047977.P8617389084635038711

`sqrt(2*(A047979(n+1)-1))+1`
-/

namespace A047977.P8617389084635038711
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * (A047979 (n + 1) - 1) : ℝ) + 1

end

end A047977.P8617389084635038711

/-! ## A047977.P12380259656868487965

`sqrt(A047979(n+1)+A047978(n+1))+1`
-/

namespace A047977.P12380259656868487965
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A047979 (n + 1) + A047978 (n + 1) : ℝ) + 1

end

end A047977.P12380259656868487965

/-! ## A047977.P16780245164356464762

`sqrt(A370453(n+1))+1`
-/

namespace A047977.P16780245164356464762
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A370453 (n + 1) : ℝ) + 1

end

end A047977.P16780245164356464762

/-! ## A047977.P3102388144994765322

`∩[A014574(n+1), A152786(n+1)]+1`
-/

namespace A047977.P3102388144994765322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A047977.P3102388144994765322

/-! ## A047977.P7077934463157028195

`∩[A152786(n+1), A217259(n+1)]+1`
-/

namespace A047977.P7077934463157028195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A047977.P7077934463157028195

/-! ## A047977.P8444128326074087853

`∩[A056853(n+1), A152786(n+1)]+1`
-/

namespace A047977.P8444128326074087853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A047977.P8444128326074087853

/-! ## A047977.P605206169626978141

`∩[A152786(n+1), A167706(n+1)]+1`
-/

namespace A047977.P605206169626978141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A047977.P605206169626978141

/-!
# A047978: Let (p1,p2), (p3,p4) be pairs of twin primes with p1*p2=p3+p4-1; sequence gives values of p3.

The programs for A047978, there is no canonical definition to state claims against.
-/

/-! ## A047978.P14768001418379960642

`A047979(n+1)-2`
-/

namespace A047978.P14768001418379960642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047979 (n + 1) - 2

end

end A047978.P14768001418379960642

/-! ## A047978.P9415663490260529936

`A152787(n+1)²/2-1`
-/

namespace A047978.P9415663490260529936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152787 (n + 1) ^ 2 : ℚ) / 2 - 1

end

end A047978.P9415663490260529936

/-! ## A047978.P8406525360834756364

`A152787(n+1)²%A047979(n+1)`
-/

namespace A047978.P8406525360834756364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152787 (n + 1) ^ 2) (A047979 (n + 1))

end

end A047978.P8406525360834756364

/-! ## A047978.P9808146417310118263

`(A047976(n+1)+1)²%A047979(n+1)`
-/

namespace A047978.P9808146417310118263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A047976 (n + 1) + 1) ^ 2) (A047979 (n + 1))

end

end A047978.P9808146417310118263

/-! ## A047978.P10854630960761610121

`A168330(4*n+2)+A047979(n+1)`
-/

namespace A047978.P10854630960761610121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168330 (4 * n + 2) + A047979 (n + 1)

end

end A047978.P10854630960761610121

/-! ## A047978.P11177490297584639989

`∩[A069496(n+1), A086870(n+1)]`
-/

namespace A047978.P11177490297584639989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047978.P11177490297584639989

/-! ## A047978.P1580922255332389446

`A370453(n+1)/2-1`
-/

namespace A047978.P1580922255332389446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370453 (n + 1) : ℚ) / 2 - 1

end

end A047978.P1580922255332389446

/-! ## A047978.P13674682072220992165

`A370453(n+1)%A047979(n+1)`
-/

namespace A047978.P13674682072220992165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370453 (n + 1)) (A047979 (n + 1))

end

end A047978.P13674682072220992165

/-! ## A047978.P6634619152850186562

`∩[A069496(n+1), A120876(n+1)]`
-/

namespace A047978.P6634619152850186562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047978.P6634619152850186562

/-! ## A047978.P952759262563720487

`∩[A086870(n+1), A232878(n+1)]`
-/

namespace A047978.P952759262563720487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047978.P952759262563720487

/-! ## A047978.P4890287020119439633

`∩[A120876(n+1), A232878(n+1)]`
-/

namespace A047978.P4890287020119439633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047978.P4890287020119439633

/-! ## A047978.P12921052607629021655

`∩[A086870(n+1), A119768(n+1)]`
-/

namespace A047978.P12921052607629021655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047978.P12921052607629021655

/-! ## A047978.P12336472882793738051

`∩[A119768(n+1), A120876(n+1)]`
-/

namespace A047978.P12336472882793738051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047978.P12336472882793738051

/-! ## A047978.P17841840450212322807

`∩[A086870(n+1), A270231(n+1)]`
-/

namespace A047978.P17841840450212322807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047978.P17841840450212322807

/-! ## A047978.P11587642043614706080

`∩[A120876(n+1), A270231(n+1)]`
-/

namespace A047978.P11587642043614706080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047978.P11587642043614706080

/-!
# A047979: Let (p1,p2), (p3,p4) be pairs of twin primes with p1*p2=p3+p4-1; sequence gives values of p4.

The programs for A047979, there is no canonical definition to state claims against.
-/

/-! ## A047979.P3603349810461500844

`A047978(n+1)+2`
-/

namespace A047979.P3603349810461500844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047978 (n + 1) + 2

end

end A047979.P3603349810461500844

/-! ## A047979.P1930968198698988815

`A152787(n+1)²/2+1`
-/

namespace A047979.P1930968198698988815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152787 (n + 1) ^ 2 : ℚ) / 2 + 1

end

end A047979.P1930968198698988815

/-! ## A047979.P2203094458952261752

`(A047976(n+1)+1)²/2+1`
-/

namespace A047979.P2203094458952261752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A047976 (n + 1) + 1) ^ 2 : ℚ) / 2 + 1

end

end A047979.P2203094458952261752

/-! ## A047979.P16474250458440605560

`∩[A069496(n+1), A086870(n+1)]+2`
-/

namespace A047979.P16474250458440605560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A047979.P16474250458440605560

/-! ## A047979.P15587158385778386774

`A370453(n+1)/2+1`
-/

namespace A047979.P15587158385778386774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370453 (n + 1) : ℚ) / 2 + 1

end

end A047979.P15587158385778386774

/-! ## A047979.P5407583004126052808

`∩[A069496(n+1), A120876(n+1)]+2`
-/

namespace A047979.P5407583004126052808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A047979.P5407583004126052808

/-! ## A047979.P7352459702510714229

`∩[A086870(n+1)+2, A232878(n+1)]`
-/

namespace A047979.P7352459702510714229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086870 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047979.P7352459702510714229

/-! ## A047979.P9586224955482810584

`∩[A120876(n+1)+2, A232878(n+1)]`
-/

namespace A047979.P9586224955482810584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120876 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047979.P9586224955482810584

/-! ## A047979.P16114468775077411806

`∩[A086870(n+1)+2, A119768(n+1)]`
-/

namespace A047979.P16114468775077411806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086870 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047979.P16114468775077411806

/-! ## A047979.P4744887721018034966

`∩[A119768(n+1), A120876(n+1)+2]`
-/

namespace A047979.P4744887721018034966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120876 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047979.P4744887721018034966

/-! ## A047979.P10449476613216344427

`∩[A086870(n+1), A270231(n+1)]+2`
-/

namespace A047979.P10449476613216344427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A047979.P10449476613216344427

/-! ## A047979.P1755918287535793530

`∩[A120876(n+1), A270231(n+1)]+2`
-/

namespace A047979.P1755918287535793530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A047979.P1755918287535793530

/-!
# A047981: a(n) = A047980(2n).

The programs for A047981, there is no canonical definition to state claims against.
-/

/-! ## A047981.P16486218237339928451

`A047980(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047981.P16486218237339928451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047980 (2 * (n + 1))

end

end A047981.P16486218237339928451

/-! ## A047981.P10371511228732690895

`or(1, A047980(Δ[A027688(n)]))`
-/

namespace A047981.P10371511228732690895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047980 (f1 (n + 1) - f1 n).toNat)

end

end A047981.P10371511228732690895

/-! ## A047981.P1367023803224267593

`or(1, A047980(Δ[A202018(n)]))`
-/

namespace A047981.P1367023803224267593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047980 (f1 (n + 1) - f1 n).toNat)

end

end A047981.P1367023803224267593

/-! ## A047981.P10200989193121228703

`or(1, A047980(A004277(n+1)))`
-/

namespace A047981.P10200989193121228703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047980 (A004277 (n + 1)).toNat)

end

end A047981.P10200989193121228703

/-!
# A047982: a(n) = A047980(2n+1).

The programs for A047982, there is no canonical definition to state claims against.
-/

/-! ## A047982.P2653408943370481641

`A047980(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047982.P2653408943370481641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047980 (2 * n + 1)

end

end A047982.P2653408943370481641

/-! ## A047982.P18044865465568782097

`A047980(A005408(n))+C(n, 64)`
-/

namespace A047982.P18044865465568782097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047980 (A005408 n).toNat + (Nat.choose n 64 : ℤ)

end

end A047982.P18044865465568782097

/-!
# A047983: Number of integers less than n but with the same number of divisors.

The programs for A047983, there is no canonical definition to state claims against.
-/

/-! ## A047983.P1164268358412930464

`A067004(n+1)-1`
-/

namespace A047983.P1164268358412930464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (n + 1) - 1

end

end A047983.P1164268358412930464

/-! ## A047983.P10716417567619795589

`A289207(A067004(n+1)+1)`
-/

namespace A047983.P10716417567619795589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A067004 (n + 1) + 1).toNat

end

end A047983.P10716417567619795589

/-! ## A047983.P13408874841347341175

`A377734(2*A067004(n+1))`
-/

namespace A047983.P13408874841347341175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377734 (2 * A067004 (n + 1)).toNat

end

end A047983.P13408874841347341175

/-! ## A047983.P15284770927905834937

`A349340(A006530(2*(n+1)))+A067004(n+1)`
-/

namespace A047983.P15284770927905834937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A006530 (2 * (n + 1))).toNat + A067004 (n + 1)

end

end A047983.P15284770927905834937

/-! ## A047983.P4841573946897337926

`A349340(A361327(n+3))+A067004(n+1)`
-/

namespace A047983.P4841573946897337926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A361327 (n + 3)).toNat + A067004 (n + 1)

end

end A047983.P4841573946897337926

/-! ## A047983.P5550255831208007202

`A335097(n+1-A331185(n+1))`
-/

namespace A047983.P5550255831208007202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335097 ((n + 1 : ℤ) - A331185 (n + 1)).toNat

end

end A047983.P5550255831208007202

/-! ## A047983.P2266496252209652284

`A003963(1-A331185(n+1)+n)-1`
-/

namespace A047983.P2266496252209652284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (1 - A331185 (n + 1) + (n : ℤ)).toNat - 1

end

end A047983.P2266496252209652284

/-! ## A047983.P18001095789598339725

`(A067004(n+1)+n)%A067004(A000040(n+1))`
-/

namespace A047983.P18001095789598339725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067004 (n + 1) + (n : ℤ)) (A067004 (A000040 (n + 1)).toNat)

end

end A047983.P18001095789598339725

/-! ## A047983.P2406991876260018174

`log2(Δ[A339514(n)])`
-/

namespace A047983.P2406991876260018174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339514 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A047983.P2406991876260018174

/-! ## A047983.P12397701283036530083

`log2(A339514(n+1)-A339514(n))`
-/

namespace A047983.P12397701283036530083
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A339514 (n + 1) - A339514 n : ℝ)

end

end A047983.P12397701283036530083

/-! ## A047983.P1905221883354784959

`(A000188(A067004(n+1)²)+n)%(n+1)`
-/

namespace A047983.P1905221883354784959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000188 (A067004 (n + 1) ^ 2).toNat + (n : ℤ)) (n + 1 : ℤ)

end

end A047983.P1905221883354784959

/-! ## A047983.P3464265325771063641

`A083800(n+1)%A067004(n+1)`
-/

namespace A047983.P3464265325771063641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A067004 (n + 1))

end

end A047983.P3464265325771063641

/-! ## A047983.P17603111145032610179

`A070198(n)%A067004(n+1)`
-/

namespace A047983.P17603111145032610179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A067004 (n + 1))

end

end A047983.P17603111145032610179

/-! ## A047983.P10437006430747043348

`A079782(n+1)%A067004(n+1)`
-/

namespace A047983.P10437006430747043348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A067004 (n + 1))

end

end A047983.P10437006430747043348

/-! ## A047983.P14009856858971746373

`A083685(n+1)%A067004(n+1)`
-/

namespace A047983.P14009856858971746373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A067004 (n + 1))

end

end A047983.P14009856858971746373

/-! ## A047983.P16684734998572476187

`A121934(n+1)%A067004(n+1)`
-/

namespace A047983.P16684734998572476187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A067004 (n + 1))

end

end A047983.P16684734998572476187

/-! ## A047983.P5418743809191902360

`A030494(n+1)%A067004(n+1)`
-/

namespace A047983.P5418743809191902360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A067004 (n + 1))

end

end A047983.P5418743809191902360

/-! ## A047983.P10828782655536954531

`A072828(n+1)%A067004(n+1)`
-/

namespace A047983.P10828782655536954531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A067004 (n + 1))

end

end A047983.P10828782655536954531

/-!
# A047984: Integers n such that A047988(n)=1.

The programs for A047984, there is no canonical definition to state claims against.
-/

/-! ## A047984.P955718491284245372

`eq[1, A047988(n+2)]+2`
-/

namespace A047984.P955718491284245372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047988 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A047984.P955718491284245372

/-! ## A047984.P9339637029381420790

`A009056(eq[1, A047988(n+2)])`
-/

namespace A047984.P9339637029381420790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047988 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047984.P9339637029381420790

/-! ## A047984.P887513683750007172

`eq[1, A047988(A233583(n+1))]`
-/

namespace A047984.P887513683750007172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047988 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047984.P887513683750007172

/-! ## A047984.P6907479650666831697

`lt[A103997(A065941(2*n)), A002487(n)]`
-/

namespace A047984.P6907479650666831697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103997 (A065941 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047984.P6907479650666831697

/-! ## A047984.P15556606086867908202

`lt[A375128(A347179(2*n+1)), A000120(n)]`
-/

namespace A047984.P15556606086867908202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375128 (A347179 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047984.P15556606086867908202

/-!
# A047985: Integers n such that A047988(n)=2.

The programs for A047985, there is no canonical definition to state claims against.
-/

/-! ## A047985.P4494976319728066910

`eq[2, A047988(n+2)]+2`
-/

namespace A047985.P4494976319728066910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047988 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A047985.P4494976319728066910

/-! ## A047985.P1350595588210473167

`A009056(eq[2, A047988(n+2)])`
-/

namespace A047985.P1350595588210473167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047988 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047985.P1350595588210473167

/-! ## A047985.P3278737627691374946

`A057544(eq[2, A047988(n+2)])`
-/

namespace A047985.P3278737627691374946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047988 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047985.P3278737627691374946

/-! ## A047985.P11604832442228898568

`eq[2, A047988(A233583(n+1))]`
-/

namespace A047985.P11604832442228898568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047988 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047985.P11604832442228898568

/-!
# A047988: Start with n and reach 2 by repeatedly either dividing by d where d <= the square root or by adding or subtracting 1. The division steps are free, but adding or subtracting 1 costs 1 point. a(n) is the smallest cost to reach 2.

The programs for A047988, there is no canonical definition to state claims against.
-/

/-! ## A047988.P2820787291407095636

`A007318(A000120(A122111(n+8)))%A000120(n+2)`
-/

namespace A047988.P2820787291407095636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A000120 (A122111 (n + 8)).toNat).toNat) (A000120 (n + 2))

end

end A047988.P2820787291407095636

/-! ## A047988.P16110084955936770057

`A326702(A048825(n+2)^A322356(n+3))`
-/

namespace A047988.P16110084955936770057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (SequenceMachineLib.roundAway ((A048825 (n + 2) : ℚ) ^ (A322356 (n + 3) : ℤ))).toNat

end

end A047988.P16110084955936770057

/-! ## A047988.P14668402364184186172

`A248823(A051119(2*n+1))%A248843(n+3)`
-/

namespace A047988.P14668402364184186172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248823 (A051119 (2 * n + 1)).toNat) (A248843 (n + 3))

end

end A047988.P14668402364184186172

/-! ## A047988.P8244506496646404592

`A001222(A000045(A088387(n+2)))`
-/

namespace A047988.P8244506496646404592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000045 (A088387 (n + 2)).toNat).toNat

end

end A047988.P8244506496646404592

/-! ## A047988.P5926596650420883419

`A123910(A097284(n+1))%A297770(n+1)`
-/

namespace A047988.P5926596650420883419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123910 (A097284 (n + 1)).toNat) (A297770 (n + 1))

end

end A047988.P5926596650420883419

/-!
# A047990: a(n+1) = a(n) + (n^2 + 1)*a(n-1).

The programs for A047990, the canonical program `A047990.P650845463597548669` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047990 has offset 0).

The definition of A047990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047990.P650845463597548669

`a(n-1)+((n-1)²+1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047990

/-- `a(n-1)+((n-1)²+1)*a(n-2)` -/
def P650845463597548669.Spec : Prop :=
  ∀ n, P650845463597548669.a n = A047990 n

theorem P650845463597548669.correct : P650845463597548669.Spec := by
  intro n
  simp only [A047990]

end A047990

/-! ## A047990.P17279117253238029029

`A086553(a(n-1)-1)+a(n-1)` with `a(0)=1`
-/

namespace A047990.P17279117253238029029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086553 (a (n - 1) - 1).toNat + a (n - 1)

end

end A047990.P17279117253238029029

namespace A047990

/-- `A086553(a(n-1)-1)+a(n-1)` -/
def P17279117253238029029.Spec : Prop :=
  ∀ n, P17279117253238029029.a n = A047990 n

end A047990

/-!
# A047992: Number of distinct permutations generated by shuffling n cards with "clump size" <= 2.

The programs for A047992, the canonical program `A047992.P2624967960334565985` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047992 has offset 2).

The definition of A047992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047992.P13662040109491458454

`round(ϕ*a(n-1))` with `a(0)=2, a(1)=5, a(2)=10`
-/

namespace A047992.P13662040109491458454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 10] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A047992.P13662040109491458454

namespace A047992

/-- `round(ϕ*a(n-1))` -/
def P13662040109491458454.Spec : Prop :=
  ∀ n, P13662040109491458454.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P2624967960334565985

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=5, a(2)=10, a(3)=16`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047992

/-- `a(n-1)+a(n-2)` -/
def P2624967960334565985.Spec : Prop :=
  ∀ n, (P2624967960334565985.a n : ℤ) = A047992 (n + 2)

theorem P2624967960334565985.correct : P2624967960334565985.Spec := by
  intro n
  simp only [A047992, Nat.add_sub_cancel]

end A047992

/-! ## A047992.P1564452002738617762

`A078642(n+1)-C(2, n+1)`
-/

namespace A047992.P1564452002738617762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 1) - (Nat.choose 2 (n + 1) : ℤ)

end

end A047992.P1564452002738617762

namespace A047992

/-- `A078642(n+1)-C(2, n+1)` -/
def P1564452002738617762.Spec : Prop :=
  ∀ n, P1564452002738617762.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P8403473873149027925

`round(2*A000045(n+3)-acot(n))`
-/

namespace A047992.P8403473873149027925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * A000045 (n + 3) : ℝ) - SequenceMachineLib.acot (n : ℝ))

end

end A047992.P8403473873149027925

namespace A047992

/-- `round(2*A000045(n+3)-acot(n))` -/
def P8403473873149027925.Spec : Prop :=
  ∀ n, P8403473873149027925.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P8855642683595989138

`∑[2*A000045(n+1)]+ceil(atan(n))`
-/

namespace A047992.P8855642683595989138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌈Real.arctan (n : ℝ)⌉

end

end A047992.P8855642683595989138

namespace A047992

/-- `∑[2*A000045(n+1)]+ceil(atan(n))` -/
def P8855642683595989138.Spec : Prop :=
  ∀ n, P8855642683595989138.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P16855259299634705377

`2*(a(n-1)-A000045(n))` with `a(0)=2, a(1)=5, a(2)=10`
-/

namespace A047992.P16855259299634705377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 10] fun n a =>
  2 * (a (n - 1) - A000045 n)

end

end A047992.P16855259299634705377

namespace A047992

/-- `2*(a(n-1)-A000045(n))` -/
def P16855259299634705377.Spec : Prop :=
  ∀ n, P16855259299634705377.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P12998424865905118158

`A158799(n)+A154691(n)`
-/

namespace A047992.P12998424865905118158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n + A154691 n

end

end A047992.P12998424865905118158

namespace A047992

/-- `A158799(n)+A154691(n)` -/
def P12998424865905118158.Spec : Prop :=
  ∀ n, P12998424865905118158.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P9271509335230458979

`A054886(n)+record[A006355(n)]`
-/

namespace A047992.P9271509335230458979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054886 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047992.P9271509335230458979

namespace A047992

/-- `A054886(n)+record[A006355(n)]` -/
def P9271509335230458979.Spec : Prop :=
  ∀ n, P9271509335230458979.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P10664523253063514498

`A128588(n+1)+A054886(n)`
-/

namespace A047992.P10664523253063514498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 (n + 1) + A054886 n

end

end A047992.P10664523253063514498

namespace A047992

/-- `A128588(n+1)+A054886(n)` -/
def P10664523253063514498.Spec : Prop :=
  ∀ n, P10664523253063514498.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P8392139445435043658

`A163714(n+1)-A130706(n)`
-/

namespace A047992.P8392139445435043658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163714 (n + 1) - A130706 n

end

end A047992.P8392139445435043658

namespace A047992

/-- `A163714(n+1)-A130706(n)` -/
def P8392139445435043658.Spec : Prop :=
  ∀ n, P8392139445435043658.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P13420444781653421346

`A054886(n+1)-A019590(n+1)`
-/

namespace A047992.P13420444781653421346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054886 (n + 1) - A019590 (n + 1)

end

end A047992.P13420444781653421346

namespace A047992

/-- `A054886(n+1)-A019590(n+1)` -/
def P13420444781653421346.Spec : Prop :=
  ∀ n, P13420444781653421346.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P18161461463378552660

`A078642(n+1)-A033322(n+1)`
-/

namespace A047992.P18161461463378552660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 1) - A033322 (n + 1)

end

end A047992.P18161461463378552660

namespace A047992

/-- `A078642(n+1)-A033322(n+1)` -/
def P18161461463378552660.Spec : Prop :=
  ∀ n, P18161461463378552660.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P13428911614328916330

`A068922(n+2)-A033322(n+1)`
-/

namespace A047992.P13428911614328916330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (n + 2) - A033322 (n + 1)

end

end A047992.P13428911614328916330

namespace A047992

/-- `A068922(n+2)-A033322(n+1)` -/
def P13428911614328916330.Spec : Prop :=
  ∀ n, P13428911614328916330.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P13548769719105344604

`2*A255875(n+1)-A004275(n)`
-/

namespace A047992.P13548769719105344604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255875 (n + 1) - A004275 n

end

end A047992.P13548769719105344604

namespace A047992

/-- `2*A255875(n+1)-A004275(n)` -/
def P13548769719105344604.Spec : Prop :=
  ∀ n, P13548769719105344604.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P13966958786517152647

`A061489(2*(n+1))+A000071(n+3)`
-/

namespace A047992.P13966958786517152647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061489 (2 * (n + 1)) + A000071 (n + 3)

end

end A047992.P13966958786517152647

namespace A047992

/-- `A061489(2*(n+1))+A000071(n+3)` -/
def P13966958786517152647.Spec : Prop :=
  ∀ n, P13966958786517152647.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P10849249805854991144

`A000032(n+3)-(A000045(n)+C(2, n+1))`
-/

namespace A047992.P10849249805854991144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 3) - (A000045 n + (Nat.choose 2 (n + 1) : ℤ))

end

end A047992.P10849249805854991144

namespace A047992

/-- `A000032(n+3)-(A000045(n)+C(2, n+1))` -/
def P10849249805854991144.Spec : Prop :=
  ∀ n, P10849249805854991144.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P13145773101617470971

`A020701(n+1)-A020701(A289207(n))`
-/

namespace A047992.P13145773101617470971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (n + 1) - A020701 (A289207 n).toNat

end

end A047992.P13145773101617470971

namespace A047992

/-- `A020701(n+1)-A020701(A289207(n))` -/
def P13145773101617470971.Spec : Prop :=
  ∀ n, P13145773101617470971.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P12133389376719606713

`A006355(n+1)+A054886(n)+A006355(n)`
-/

namespace A047992.P12133389376719606713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) + (A054886 n + A006355 n)

end

end A047992.P12133389376719606713

namespace A047992

/-- `A006355(n+1)+A054886(n)+A006355(n)` -/
def P12133389376719606713.Spec : Prop :=
  ∀ n, P12133389376719606713.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P13680564320917709951

`A078642(n+1)+A054886(n)-A068922(n+1)`
-/

namespace A047992.P13680564320917709951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 1) + (A054886 n - A068922 (n + 1))

end

end A047992.P13680564320917709951

namespace A047992

/-- `A078642(n+1)+A054886(n)-A068922(n+1)` -/
def P13680564320917709951.Spec : Prop :=
  ∀ n, P13680564320917709951.a n = A047992 (n + 2)

end A047992

/-! ## A047992.P12970564048790702081

`A068922(n+2)+A054886(n)-A068922(n+1)`
-/

namespace A047992.P12970564048790702081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (n + 2) + (A054886 n - A068922 (n + 1))

end

end A047992.P12970564048790702081

namespace A047992

/-- `A068922(n+2)+A054886(n)-A068922(n+1)` -/
def P12970564048790702081.Spec : Prop :=
  ∀ n, P12970564048790702081.a n = A047992 (n + 2)

end A047992

/-!
# A047993: Number of balanced partitions of n: the largest part equals the number of parts.

The programs for A047993, there is no canonical definition to state claims against.
-/

/-! ## A047993.P10404692406474260469

`A331262(n+1)+A000700(n+1)`
-/

namespace A047993.P10404692406474260469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331262 (n + 1) + A000700 (n + 1)

end

end A047993.P10404692406474260469

/-! ## A047993.P15519403985279423171

`A000700(n+1)+2*A067772(n+1)`
-/

namespace A047993.P15519403985279423171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 1) + 2 * A067772 (n + 1)

end

end A047993.P15519403985279423171

/-! ## A047993.P14704178954446597547

`A064174(n+1)-A064173(n+1)`
-/

namespace A047993.P14704178954446597547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1) - A064173 (n + 1)

end

end A047993.P14704178954446597547

/-! ## A047993.P4191949750553390400

`A325343(n+1)-A325341(n+1)`
-/

namespace A047993.P4191949750553390400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325343 (n + 1) - A325341 (n + 1)

end

end A047993.P4191949750553390400

/-! ## A047993.P2990697395675691416

`A003106(n+1)+A325343(n+1)-A064173(n+1)`
-/

namespace A047993.P2990697395675691416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (n + 1) + (A325343 (n + 1) - A064173 (n + 1))

end

end A047993.P2990697395675691416

/-! ## A047993.P14753217386026355440

`A003114(n+1)+A325342(n+1)-A064173(n+1)`
-/

namespace A047993.P14753217386026355440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (n + 1) + (A325342 (n + 1) - A064173 (n + 1))

end

end A047993.P14753217386026355440

/-! ## A047993.P8159115845620019143

`A064174(n+1)-(A325341(n+1)+A003106(n+1))`
-/

namespace A047993.P8159115845620019143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1) - (A325341 (n + 1) + A003106 (n + 1))

end

end A047993.P8159115845620019143

/-! ## A047993.P7284539517490741813

`A000041(n+1)-2*A064173(n+1)`
-/

namespace A047993.P7284539517490741813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - 2 * A064173 (n + 1)

end

end A047993.P7284539517490741813

/-! ## A047993.P18345824486945851949

`A064174(n+1)+A064174(n+1)-A000041(n+1)`
-/

namespace A047993.P18345824486945851949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1) + (A064174 (n + 1) - A000041 (n + 1))

end

end A047993.P18345824486945851949

/-! ## A047993.P7015688911786992839

`A000041(n+1)+A331262(n+1)-A330644(n+1)`
-/

namespace A047993.P7015688911786992839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A331262 (n + 1) - A330644 (n + 1))

end

end A047993.P7015688911786992839

/-! ## A047993.P6616907604684143725

`2*A064174(n+1)-Δ[A000070(n)]`
-/

namespace A047993.P6616907604684143725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064174 (n + 1) - (f1 (n + 1) - f1 n)

end

end A047993.P6616907604684143725

/-! ## A047993.P16753866209663878387

`2*A064174(n+1)-record[A114099(n)]`
-/

namespace A047993.P16753866209663878387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064174 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047993.P16753866209663878387

/-! ## A047993.P9471772073151558634

`A101707(n+1)+A101709(n+1)-A064173(n+1)`
-/

namespace A047993.P9471772073151558634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101707 (n + 1) + (A101709 (n + 1) - A064173 (n + 1))

end

end A047993.P9471772073151558634

/-! ## A047993.P13918633600866810006

`A101709(n+1)+A101709(n+1)-A340601(n+1)`
-/

namespace A047993.P13918633600866810006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101709 (n + 1) + (A101709 (n + 1) - A340601 (n + 1))

end

end A047993.P13918633600866810006

/-! ## A047993.P6317259177092467366

`A101709(n+1)-A101708(n+1)`
-/

namespace A047993.P6317259177092467366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101709 (n + 1) - A101708 (n + 1)

end

end A047993.P6317259177092467366

/-! ## A047993.P3764402589026635600

`A000041(n+1)-A236634(n+1)`
-/

namespace A047993.P3764402589026635600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A236634 (n + 1)

end

end A047993.P3764402589026635600

/-! ## A047993.P597116577710764702

`A064174(n+1)-A236634(n+1)/2`
-/

namespace A047993.P597116577710764702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064174 (n + 1) : ℚ) - (A236634 (n + 1) : ℚ) / 2

end

end A047993.P597116577710764702

/-! ## A047993.P12201978413268365983

`A063995(n²+1+n)`
-/

namespace A047993.P12201978413268365983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063995 (n ^ 2 + 1 + n)

end

end A047993.P12201978413268365983

/-! ## A047993.P7621850693721652224

`A105806(∑[n]+1)`
-/

namespace A047993.P7621850693721652224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105806 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A047993.P7621850693721652224

/-!
# A047994: Unitary totient (or unitary phi) function uphi(n).

The programs for A047994, the canonical program `A047994.P3003493197761739884` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047994 has offset 1).

The definition of A047994 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A047994.P3003493197761739884

`A000010(n+1)*A000203(A003557(n+1))/A003557(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A047994

/-- `A000010(n+1)*A000203(A003557(n+1))/A003557(n+1)` -/
def P3003493197761739884.Spec : Prop :=
  ∀ n, P3003493197761739884.a n = (A047994 (n + 1) : ℚ)

end A047994

/-! ## A047994.P4136001666606450231

`1-A323410(n+1)+n`
-/

namespace A047994.P4136001666606450231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A323410 (n + 1) + (n : ℤ)

end

end A047994.P4136001666606450231

namespace A047994

/-- `1-A323410(n+1)+n` -/
def P4136001666606450231.Spec : Prop :=
  ∀ n, P4136001666606450231.a n = A047994 (n + 1)

end A047994

/-! ## A047994.P3379906037342062945

`A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]`
-/

namespace A047994.P3379906037342062945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

end

end A047994.P3379906037342062945

namespace A047994

/-- `A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]` -/
def P3379906037342062945.Spec : Prop :=
  ∀ n, P3379906037342062945.a n = A047994 (n + 1)

end A047994

/-! ## A047994.P14666609834107898998

`A344875(A026741(n+1))`
-/

namespace A047994.P14666609834107898998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (A026741 (n + 1)).toNat

end

end A047994.P14666609834107898998

namespace A047994

/-- `A344875(A026741(n+1))` -/
def P14666609834107898998.Spec : Prop :=
  ∀ n, P14666609834107898998.a n = A047994 (n + 1)

end A047994

/-! ## A047994.P15701584428865868727

`A344874(n+1)+A011772(n+1)`
-/

namespace A047994.P15701584428865868727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344874 (n + 1) + A011772 (n + 1)

end

end A047994.P15701584428865868727

namespace A047994

/-- `A344874(n+1)+A011772(n+1)` -/
def P15701584428865868727.Spec : Prop :=
  ∀ n, P15701584428865868727.a n = A047994 (n + 1)

end A047994

/-! ## A047994.P10986702529482088999

`A346607(n+1)+A344005(n+1)`
-/

namespace A047994.P10986702529482088999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346607 (n + 1) + A344005 (n + 1)

end

end A047994.P10986702529482088999

namespace A047994

/-- `A346607(n+1)+A344005(n+1)` -/
def P10986702529482088999.Spec : Prop :=
  ∀ n, P10986702529482088999.a n = A047994 (n + 1)

end A047994

/-! ## A047994.P4214697161188644505

`A323408(n+1)-A323407(n+1)`
-/

namespace A047994.P4214697161188644505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323408 (n + 1) - A323407 (n + 1)

end

end A047994.P4214697161188644505

namespace A047994

/-- `A323408(n+1)-A323407(n+1)` -/
def P4214697161188644505.Spec : Prop :=
  ∀ n, P4214697161188644505.a n = A047994 (n + 1)

end A047994

/-! ## A047994.P9331391276226829817

`A385197(n+1)-A385196(n+1)`
-/

namespace A047994.P9331391276226829817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385197 (n + 1) - A385196 (n + 1)

end

end A047994.P9331391276226829817

namespace A047994

/-- `A385197(n+1)-A385196(n+1)` -/
def P9331391276226829817.Spec : Prop :=
  ∀ n, P9331391276226829817.a n = A047994 (n + 1)

end A047994

/-! ## A047994.P14589709922671347575

`A385199(n+1)-A385198(n+1)`
-/

namespace A047994.P14589709922671347575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385199 (n + 1) - A385198 (n + 1)

end

end A047994.P14589709922671347575

namespace A047994

/-- `A385199(n+1)-A385198(n+1)` -/
def P14589709922671347575.Spec : Prop :=
  ∀ n, P14589709922671347575.a n = A047994 (n + 1)

end A047994

/-! ## A047994.P3194044060574378203

`A173557(n+1)*A335341(n+1)`
-/

namespace A047994.P3194044060574378203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A335341 (n + 1)

end

end A047994.P3194044060574378203

namespace A047994

/-- `A173557(n+1)*A335341(n+1)` -/
def P3194044060574378203.Spec : Prop :=
  ∀ n, P3194044060574378203.a n = A047994 (n + 1)

end A047994

/-! ## A047994.P7511809654630255129

`A319676(n+1)*A323409(n+1)`
-/

namespace A047994.P7511809654630255129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319676 (n + 1) * A323409 (n + 1)

end

end A047994.P7511809654630255129

namespace A047994

/-- `A319676(n+1)*A323409(n+1)` -/
def P7511809654630255129.Spec : Prop :=
  ∀ n, P7511809654630255129.a n = A047994 (n + 1)

end A047994

/-! ## A047994.P10709356560123721087

`A345044(n+1)*A345045(n+1)`
-/

namespace A047994.P10709356560123721087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345044 (n + 1) * A345045 (n + 1)

end

end A047994.P10709356560123721087

namespace A047994

/-- `A345044(n+1)*A345045(n+1)` -/
def P10709356560123721087.Spec : Prop :=
  ∀ n, P10709356560123721087.a n = A047994 (n + 1)

end A047994

/-! ## A047994.P13622578024620022348

`A345937(n+1)*A345938(n+1)`
-/

namespace A047994.P13622578024620022348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345937 (n + 1) * A345938 (n + 1)

end

end A047994.P13622578024620022348

namespace A047994

/-- `A345937(n+1)*A345938(n+1)` -/
def P13622578024620022348.Spec : Prop :=
  ∀ n, P13622578024620022348.a n = A047994 (n + 1)

end A047994

/-! ## A047994.P12500648346867602378

`A354985(n+1)*A354986(n+1)`
-/

namespace A047994.P12500648346867602378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354985 (n + 1) * A354986 (n + 1)

end

end A047994.P12500648346867602378

namespace A047994

/-- `A354985(n+1)*A354986(n+1)` -/
def P12500648346867602378.Spec : Prop :=
  ∀ n, P12500648346867602378.a n = A047994 (n + 1)

end A047994

/-! ## A047994.P17452983282105969418

`A191414(n+1)/A034448(n+1)`
-/

namespace A047994.P17452983282105969418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191414 (n + 1) : ℚ) / (A034448 (n + 1) : ℚ)

end

end A047994.P17452983282105969418

namespace A047994

/-- `A191414(n+1)/A034448(n+1)` -/
def P17452983282105969418.Spec : Prop :=
  ∀ n, P17452983282105969418.a n = (A047994 (n + 1) : ℚ)

end A047994

/-! ## A047994.P12871805704276314021

`A333557(n+1)/A034444(n+1)`
-/

namespace A047994.P12871805704276314021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333557 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A047994.P12871805704276314021

namespace A047994

/-- `A333557(n+1)/A034444(n+1)` -/
def P12871805704276314021.Spec : Prop :=
  ∀ n, P12871805704276314021.a n = (A047994 (n + 1) : ℚ)

end A047994

/-! ## A047994.P7660221190972059990

`A385195((n+1)/A138191(n+1))`
-/

namespace A047994.P7660221190972059990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385195 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A138191 (n + 1) : ℚ))).toNat

end

end A047994.P7660221190972059990

namespace A047994

/-- `A385195((n+1)/A138191(n+1))` -/
def P7660221190972059990.Spec : Prop :=
  ∀ n, P7660221190972059990.a n = A047994 (n + 1)

end A047994

/-! ## A047994.P14725814830094949062

`lcm(A319676(n+1), A345938(n+1))`
-/

namespace A047994.P14725814830094949062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A319676 (n + 1)) (A345938 (n + 1))

end

end A047994.P14725814830094949062

namespace A047994

/-- `lcm(A319676(n+1), A345938(n+1))` -/
def P14725814830094949062.Spec : Prop :=
  ∀ n, (P14725814830094949062.a n : ℤ) = A047994 (n + 1)

end A047994

/-! ## A047994.P9134863589938259012

`∑{d}[A003557(n+1), #*A173557(n+1)]`
-/

namespace A047994.P9134863589938259012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A173557 (n + 1)

end

end A047994.P9134863589938259012

namespace A047994

/-- `∑{d}[A003557(n+1), #*A173557(n+1)]` -/
def P9134863589938259012.Spec : Prop :=
  ∀ n, P9134863589938259012.a n = A047994 (n + 1)

end A047994

/-! ## A047994.P5747776745106721570

`∑{d}[A003557(n+1), A000010(n+1)/#]`
-/

namespace A047994.P5747776745106721570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 (n + 1) : ℚ) / (d : ℚ)

end

end A047994.P5747776745106721570

namespace A047994

/-- `∑{d}[A003557(n+1), A000010(n+1)/#]` -/
def P5747776745106721570.Spec : Prop :=
  ∀ n, P5747776745106721570.a n = (A047994 (n + 1) : ℚ)

end A047994

/-!
# A047996: Triangle read by rows: T(n,k) is the (n,k)-th circular binomial coefficient, where 0 <= k <= n.

The programs for A047996, there is no canonical definition to state claims against.
-/

/-! ## A047996.P16781759880480709674

`A037306(2*n-comp[∑[n+1]]+1)`
-/

namespace A047996.P16781759880480709674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 ((2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + 1).toNat

end

end A047996.P16781759880480709674

/-! ## A047996.P9628950912860158583

`2*A052307(n)-A119963(n)`
-/

namespace A047996.P9628950912860158583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052307 n - A119963 n

end

end A047996.P9628950912860158583

/-! ## A047996.P16400978712417523688

`A180472(n)+A052307(n)`
-/

namespace A047996.P16400978712417523688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180472 n + A052307 n

end

end A047996.P16400978712417523688

/-! ## A047996.P10483731202864226276

`A119963(n)+2*A180472(n)`
-/

namespace A047996.P10483731202864226276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n + 2 * A180472 n

end

end A047996.P10483731202864226276

/-! ## A047996.P419819746969175250

`A119963(n)+A005843(A180472(n))`
-/

namespace A047996.P419819746969175250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n + A005843 (A180472 n).toNat

end

end A047996.P419819746969175250

/-! ## A047996.P3459728327588565300

`A005843(A052307(n))-A119963(n)`
-/

namespace A047996.P3459728327588565300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A052307 n).toNat - A119963 n

end

end A047996.P3459728327588565300

/-! ## A047996.P9295583744663866474

`A318810(A146985(n))`
-/

namespace A047996.P9295583744663866474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (A146985 n).toNat

end

end A047996.P9295583744663866474

/-!
# A047997: Triangle of numbers a(n,k) = number of balance positions when k equal weights are placed at a k-subset of the points {-n, -(n-1), ..., n-1, n} on a centrally pivoted rod.

The programs for A047997, there is no canonical definition to state claims against.
-/

/-! ## A047997.P6305478969283732020

`A188181(comp[∑[n]])`
-/

namespace A047997.P6305478969283732020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A047997.P6305478969283732020

/-! ## A047997.P18165637808884774823

`A201503(A341706(n+1))`
-/

namespace A047997.P18165637808884774823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A341706 (n + 1)).toNat

end

end A047997.P18165637808884774823

/-! ## A047997.P2256471810237516749

`or(char[1], A188181(A014132(n+1)))`
-/

namespace A047997.P2256471810237516749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A188181 (A014132 (n + 1)).toNat)

end

end A047997.P2256471810237516749

/-! ## A047997.P6717174986595438188

`or(char[1], A188181(A003056(n)+2+n))`
-/

namespace A047997.P6717174986595438188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A188181 (A003056 n + 2 + (n : ℤ)).toNat)

end

end A047997.P6717174986595438188

/-! ## A047997.P5361723675867710240

`char[A006369(n)]*A188181(A014132(n+1))`
-/

namespace A047997.P5361723675867710240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A188181 (A014132 (n + 1)).toNat

end

end A047997.P5361723675867710240

/-! ## A047997.P12244019771290902820

`char[A028903(n)]*A188181(A014132(n+1))`
-/

namespace A047997.P12244019771290902820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A188181 (A014132 (n + 1)).toNat

end

end A047997.P12244019771290902820

/-! ## A047997.P12039971115038135442

`A188181(A014132(n+1))+A000007(n+1)`
-/

namespace A047997.P12039971115038135442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188181 (A014132 (n + 1)).toNat + A000007 (n + 1)

end

end A047997.P12039971115038135442

/-! ## A047997.P8625402442827263772

`A201503(A185870(n+1)-A002260(n+1))`
-/

namespace A047997.P8625402442827263772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A185870 (n + 1) - A002260 (n + 1)).toNat

end

end A047997.P8625402442827263772

/-! ## A047997.P16343003333457064346

`A188181(A014132(n+1))%A000041(n+2)`
-/

namespace A047997.P16343003333457064346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188181 (A014132 (n + 1)).toNat) (A000041 (n + 2))

end

end A047997.P16343003333457064346

/-! ## A047997.P10563619761159663647

`A007318(C(2, n))*A188181(A014132(n+1))`
-/

namespace A047997.P10563619761159663647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A188181 (A014132 (n + 1)).toNat

end

end A047997.P10563619761159663647

/-! ## A047997.P6092103878533657134

`A014963(10*(n+1))*A188181(A014132(n+1))`
-/

namespace A047997.P6092103878533657134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A188181 (A014132 (n + 1)).toNat

end

end A047997.P6092103878533657134

/-! ## A047997.P11506528001476428261

`A188181(A003056(n)+2+n)%A000041(n+2)`
-/

namespace A047997.P11506528001476428261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188181 (A003056 n + 2 + (n : ℤ)).toNat) (A000041 (n + 2))

end

end A047997.P11506528001476428261

/-! ## A047997.P16548190463112855048

`A020639(2*(n+1))+A188181(A014132(n+1))-2`
-/

namespace A047997.P16548190463112855048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) + (A188181 (A014132 (n + 1)).toNat - 2)

end

end A047997.P16548190463112855048

/-! ## A047997.P16300933531927942241

`A188181(A003056(n)+2+n)^(A000040(n+1)%2)`
-/

namespace A047997.P16300933531927942241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188181 (A003056 n + 2 + (n : ℤ)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A047997.P16300933531927942241

/-!
# A047998: Triangle of numbers a(n,k) = number of "fountains" with n coins, k in the bottom row.

The programs for A047998, there is no canonical definition to state claims against.
-/

/-! ## A047998.P17889415690977431041

`A383713(n)%A038013(n)`
-/

namespace A047998.P17889415690977431041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A383713 n) (A038013 n)

end

end A047998.P17889415690977431041

/-! ## A047998.P1800426387676626136

`A383713(floor(log2(A099885(n))))`
-/

namespace A047998.P1800426387676626136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383713 (Nat.log 2 (A099885 n).toNat)

end

end A047998.P1800426387676626136

/-! ## A047998.P12369233409541870325

`A383713(n)^A260340(n+1)`
-/

namespace A047998.P12369233409541870325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383713 n : ℚ) ^ (A260340 (n + 1) : ℤ)

end

end A047998.P12369233409541870325

/-! ## A047998.P17440923544771891425

`A383713(n)^A255494(n+2)`
-/

namespace A047998.P17440923544771891425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383713 n : ℚ) ^ (A255494 (n + 2) : ℤ)

end

end A047998.P17440923544771891425

/-! ## A047998.P10301667187376609633

`and(A055624(n+1), A383713(n))`
-/

namespace A047998.P10301667187376609633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055624 (n + 1)) (A383713 n)

end

end A047998.P10301667187376609633

/-!
# A047999: Sierpiński's [Sierpinski's] triangle (or gasket): triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 2.

The programs for A047999, the canonical program `A047999.P4496697157608863547` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047999 has offset 0).

The definition of A047999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047999.P5885660923100877229

`abs(A143200(n))`
-/

namespace A047999.P5885660923100877229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143200 n|

end

end A047999.P5885660923100877229

namespace A047999

/-- `abs(A143200(n))` -/
def P5885660923100877229.Spec : Prop :=
  ∀ n, P5885660923100877229.a n = A047999 n

end A047999

/-! ## A047999.P14600176845600839309

`abs(A166282(n))`
-/

namespace A047999.P14600176845600839309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166282 n|

end

end A047999.P14600176845600839309

namespace A047999

/-- `abs(A166282(n))` -/
def P14600176845600839309.Spec : Prop :=
  ∀ n, P14600176845600839309.a n = A047999 n

end A047999

/-! ## A047999.P13419485200110449161

`1-A219463(n)`
-/

namespace A047999.P13419485200110449161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A219463 n

end

end A047999.P13419485200110449161

namespace A047999

/-- `1-A219463(n)` -/
def P13419485200110449161.Spec : Prop :=
  ∀ n, P13419485200110449161.a n = A047999 n

end A047999

/-! ## A047999.P2344436006555720704

`A007318(n)%2`
-/

namespace A047999.P2344436006555720704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 2

end

end A047999.P2344436006555720704

namespace A047999

/-- `A007318(n)%2` -/
def P2344436006555720704.Spec : Prop :=
  ∀ n, P2344436006555720704.a n = A047999 n

end A047999

/-! ## A047999.P1942349849885838650

`A008459(n)%2`
-/

namespace A047999.P1942349849885838650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008459 n) 2

end

end A047999.P1942349849885838650

namespace A047999

/-- `A008459(n)%2` -/
def P1942349849885838650.Spec : Prop :=
  ∀ n, P1942349849885838650.a n = A047999 n

end A047999

/-! ## A047999.P4496697157608863547

`A008975(n)%2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A047999

/-- `A008975(n)%2` -/
def P4496697157608863547.Spec : Prop :=
  ∀ n, P4496697157608863547.a n = A047999 n

theorem P4496697157608863547.correct : P4496697157608863547.Spec := by
  intro n
  simp only [A047999]

end A047999

/-! ## A047999.P6680011497619825971

`A013610(n)%2`
-/

namespace A047999.P6680011497619825971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013610 n) 2

end

end A047999.P6680011497619825971

namespace A047999

/-- `A013610(n)%2` -/
def P6680011497619825971.Spec : Prop :=
  ∀ n, P6680011497619825971.a n = A047999 n

end A047999

/-! ## A047999.P3238182009669606680

`A024462(n)%2`
-/

namespace A047999.P3238182009669606680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024462 n) 2

end

end A047999.P3238182009669606680

namespace A047999

/-- `A024462(n)%2` -/
def P3238182009669606680.Spec : Prop :=
  ∀ n, P3238182009669606680.a n = A047999 n

end A047999

/-! ## A047999.P15467077140224226841

`A134059(n)%2`
-/

namespace A047999.P15467077140224226841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134059 n) 2

end

end A047999.P15467077140224226841

namespace A047999

/-- `A134059(n)%2` -/
def P15467077140224226841.Spec : Prop :=
  ∀ n, P15467077140224226841.a n = A047999 n

end A047999

/-! ## A047999.P3866376465207818626

`and(1, A027170(n))`
-/

namespace A047999.P3866376465207818626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A027170 n)

end

end A047999.P3866376465207818626

namespace A047999

/-- `and(1, A027170(n))` -/
def P3866376465207818626.Spec : Prop :=
  ∀ n, P3866376465207818626.a n = A047999 n

end A047999

/-! ## A047999.P10543234025771065174

`and(1, A027465(n))`
-/

namespace A047999.P10543234025771065174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A027465 n)

end

end A047999.P10543234025771065174

namespace A047999

/-- `and(1, A027465(n))` -/
def P10543234025771065174.Spec : Prop :=
  ∀ n, P10543234025771065174.a n = A047999 n

end A047999

/-! ## A047999.P2259970536053222167

`and(1, A034930(n))`
-/

namespace A047999.P2259970536053222167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A034930 n)

end

end A047999.P2259970536053222167

namespace A047999

/-- `and(1, A034930(n))` -/
def P2259970536053222167.Spec : Prop :=
  ∀ n, P2259970536053222167.a n = A047999 n

end A047999

/-! ## A047999.P9496135602522422053

`and(1, A034931(n))`
-/

namespace A047999.P9496135602522422053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A034931 n)

end

end A047999.P9496135602522422053

namespace A047999

/-- `and(1, A034931(n))` -/
def P9496135602522422053.Spec : Prop :=
  ∀ n, P9496135602522422053.a n = A047999 n

end A047999

/-! ## A047999.P8664590351662664963

`and(1, A034932(n))`
-/

namespace A047999.P8664590351662664963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A034932 n)

end

end A047999.P8664590351662664963

namespace A047999

/-- `and(1, A034932(n))` -/
def P8664590351662664963.Spec : Prop :=
  ∀ n, P8664590351662664963.a n = A047999 n

end A047999

/-! ## A047999.P639912139645537434

`and(1, A038763(n))`
-/

namespace A047999.P639912139645537434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A038763 n)

end

end A047999.P639912139645537434

namespace A047999

/-- `and(1, A038763(n))` -/
def P639912139645537434.Spec : Prop :=
  ∀ n, P639912139645537434.a n = A047999 n

end A047999

/-! ## A047999.P1262501340587906774

`and(1, A051159(n))`
-/

namespace A047999.P1262501340587906774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A051159 n)

end

end A047999.P1262501340587906774

namespace A047999

/-- `and(1, A051159(n))` -/
def P1262501340587906774.Spec : Prop :=
  ∀ n, P1262501340587906774.a n = A047999 n

end A047999

/-! ## A047999.P18240814691210494518

`and(1, A080232(n))`
-/

namespace A047999.P18240814691210494518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A080232 n)

end

end A047999.P18240814691210494518

namespace A047999

/-- `and(1, A080232(n))` -/
def P18240814691210494518.Spec : Prop :=
  ∀ n, P18240814691210494518.a n = A047999 n

end A047999

/-! ## A047999.P2665287376298650901

`and(1, A081577(n))`
-/

namespace A047999.P2665287376298650901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A081577 n)

end

end A047999.P2665287376298650901

namespace A047999

/-- `and(1, A081577(n))` -/
def P2665287376298650901.Spec : Prop :=
  ∀ n, P2665287376298650901.a n = A047999 n

end A047999

/-! ## A047999.P11534128043310459062

`and(1, A081579(n))`
-/

namespace A047999.P11534128043310459062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A081579 n)

end

end A047999.P11534128043310459062

namespace A047999

/-- `and(1, A081579(n))` -/
def P11534128043310459062.Spec : Prop :=
  ∀ n, P11534128043310459062.a n = A047999 n

end A047999

/-! ## A047999.P16367211039885915791

`and(1, A086645(n))`
-/

namespace A047999.P16367211039885915791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A086645 n)

end

end A047999.P16367211039885915791

namespace A047999

/-- `and(1, A086645(n))` -/
def P16367211039885915791.Spec : Prop :=
  ∀ n, P16367211039885915791.a n = A047999 n

end A047999

