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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C039
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B006.C000
import Seq.B006.C001
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
# A248900: Number of permutations of [n] avoiding patterns 2431 and 54321.

The programs for A248900, there is no canonical definition to state claims against.
-/

/-! ## A248900.P2459368945369233379

`A241349(A299017(n+2))`
-/

namespace A248900.P2459368945369233379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (A299017 (n + 2)).toNat

end

end A248900.P2459368945369233379

/-! ## A248900.P16629906569488915747

`A008617(∑[A000753(n+1)])`
-/

namespace A248900.P16629906569488915747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248900.P16629906569488915747

/-! ## A248900.P13561098925040183626

`A098746(n)-A374247(A102407(n))`
-/

namespace A248900.P13561098925040183626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098746 n - A374247 (A102407 n).toNat

end

end A248900.P13561098925040183626

/-!
# A248902: Numbers k such that A248891(k) = 2.

The programs for A248902, there is no canonical definition to state claims against.
-/

/-! ## A248902.P13481095680481060309

`eq[2, A248891(n+1)]+1`
-/

namespace A248902.P13481095680481060309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248891 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248902.P13481095680481060309

/-! ## A248902.P5329218529032297857

`eq[2, A248891(A028310(n))]`
-/

namespace A248902.P5329218529032297857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248891 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248902.P5329218529032297857

/-! ## A248902.P13868648301740513511

`A020725(eq[2, A248891(n+1)])`
-/

namespace A248902.P13868648301740513511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248902.P13868648301740513511

/-! ## A248902.P14852240793058122217

`eq[2, A248891(A060000(n+1))]`
-/

namespace A248902.P14852240793058122217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248891 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248902.P14852240793058122217

/-! ## A248902.P12720038527833019918

`A065475(eq[2, A248891(n+1)])`
-/

namespace A248902.P12720038527833019918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248902.P12720038527833019918

/-!
# A248903: Numbers k such that A248891(k) = 3.

The programs for A248903, there is no canonical definition to state claims against.
-/

/-! ## A248903.P4236720414123681949

`eq[3, A248891(n+1)]+1`
-/

namespace A248903.P4236720414123681949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248891 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248903.P4236720414123681949

/-! ## A248903.P7263977912772914029

`eq[3, A248891(A028310(n))]`
-/

namespace A248903.P7263977912772914029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248891 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248903.P7263977912772914029

/-! ## A248903.P12167889698161721296

`A020725(eq[3, A248891(n+1)])`
-/

namespace A248903.P12167889698161721296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248903.P12167889698161721296

/-! ## A248903.P14508718629649166271

`A065475(eq[3, A248891(n+1)])`
-/

namespace A248903.P14508718629649166271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248903.P14508718629649166271

/-! ## A248903.P7602429172025120807

`eq[3, A248891(A233583(n+1))]`
-/

namespace A248903.P7602429172025120807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248891 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248903.P7602429172025120807

/-!
# A248907: Numbers consisting only of digits 2 and 3, ordered according to the value obtained when the digits are interspersed with (right-associative) ^ operators.

The programs for A248907, there is no canonical definition to state claims against.
-/

/-! ## A248907.P10938605118923824157

`A032810(A185969(n+1))`
-/

namespace A248907.P10938605118923824157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (A185969 (n + 1)).toNat

end

end A248907.P10938605118923824157

/-! ## A248907.P825577175024511252

`A032810(A081241(A375374(n+1)))`
-/

namespace A248907.P825577175024511252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (A081241 (A375374 (n + 1)).toNat).toNat

end

end A248907.P825577175024511252

/-! ## A248907.P6538091620809393559

`A032810(A255545(n+1)%A046413(2*(n+1)))`
-/

namespace A248907.P6538091620809393559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (Int.tmod (A255545 (n + 1)) (A046413 (2 * (n + 1)))).toNat

end

end A248907.P6538091620809393559

/-!
# A248908: The number of isomorphism classes of Latin keis (involutory right distributive quasigroups) of order n.

The programs for A248908, there is no canonical definition to state claims against.
-/

/-! ## A248908.P2350826929980582757

`gcd(A000330(A318659(3*(n+1))), A318659(3*(n+1)))`
-/

namespace A248908.P2350826929980582757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000330 (A318659 (3 * (n + 1))).toNat) (A318659 (3 * (n + 1)))

end

end A248908.P2350826929980582757

/-! ## A248908.P3099835659928191585

`A015518(A349907(n+1)%Δ[A141214(n)])`
-/

namespace A248908.P3099835659928191585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (Int.tmod (A349907 (n + 1)) (f1 (n + 1) - f1 n)).toNat

end

end A248908.P3099835659928191585

/-! ## A248908.P11645840765848364200

`A015518(A349907(n+1))%A128824(n+1)`
-/

namespace A248908.P11645840765848364200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015518 (A349907 (n + 1)).toNat) (A128824 (n + 1))

end

end A248908.P11645840765848364200

/-! ## A248908.P10255042057116088633

`A099626(A349907(n+1))%A327431(n+1)`
-/

namespace A248908.P10255042057116088633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099626 (A349907 (n + 1)).toNat) (A327431 (n + 1))

end

end A248908.P10255042057116088633

/-! ## A248908.P8997929184641912701

`A005811((A349907(n+1)^A112046(n+1))²)`
-/

namespace A248908.P8997929184641912701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway (((A349907 (n + 1) : ℚ) ^ (A112046 (n + 1) : ℤ)) ^ 2)).toNat

end

end A248908.P8997929184641912701

/-!
# A248909: Completely multiplicative with a(p) = p if p = 6k+1 and a(p) = 1 otherwise.

The programs for A248909, the canonical program `A248909.P15195140989030119244` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248909 has offset 1).

The definition of A248909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248909.P11352035958436850715

`A038502((n+1)/A343430(n+1))`
-/

namespace A248909.P11352035958436850715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A343430 (n + 1) : ℚ))).toNat

end

end A248909.P11352035958436850715

namespace A248909

/-- `A038502((n+1)/A343430(n+1))` -/
def P11352035958436850715.Spec : Prop :=
  ∀ n, P11352035958436850715.a n = A248909 (n + 1)

end A248909

/-! ## A248909.P13591129802752943088

`A065330((n+1)/A343430(n+1))`
-/

namespace A248909.P13591129802752943088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A343430 (n + 1) : ℚ))).toNat

end

end A248909.P13591129802752943088

namespace A248909

/-- `A065330((n+1)/A343430(n+1))` -/
def P13591129802752943088.Spec : Prop :=
  ∀ n, P13591129802752943088.a n = A248909 (n + 1)

end A248909

/-! ## A248909.P12334192444568184123

`A065330((n+1)/A343431(n+1))`
-/

namespace A248909.P12334192444568184123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A343431 (n + 1) : ℚ))).toNat

end

end A248909.P12334192444568184123

namespace A248909

/-- `A065330((n+1)/A343431(n+1))` -/
def P12334192444568184123.Spec : Prop :=
  ∀ n, P12334192444568184123.a n = A248909 (n + 1)

end A248909

/-! ## A248909.P16030899663288179599

`A165725((n+1)/A343431(n+1))`
-/

namespace A248909.P16030899663288179599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A343431 (n + 1) : ℚ))).toNat

end

end A248909.P16030899663288179599

namespace A248909

/-- `A165725((n+1)/A343431(n+1))` -/
def P16030899663288179599.Spec : Prop :=
  ∀ n, P16030899663288179599.a n = A248909 (n + 1)

end A248909

/-! ## A248909.P2109880890595302682

`A038502(gcd(n+1, A307233(n+1)))`
-/

namespace A248909.P2109880890595302682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (Int.gcd (n + 1 : ℤ) (A307233 (n + 1)))

end

end A248909.P2109880890595302682

namespace A248909

/-- `A038502(gcd(n+1, A307233(n+1)))` -/
def P2109880890595302682.Spec : Prop :=
  ∀ n, P2109880890595302682.a n = A248909 (n + 1)

end A248909

/-! ## A248909.P15195140989030119244

`gcd(A170824(n+1)²², A000217(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A248909

/-- `gcd(A170824(n+1)²², A000217(n))` -/
def P15195140989030119244.Spec : Prop :=
  ∀ n, (P15195140989030119244.a n : ℤ) = A248909 (n + 1)

theorem P15195140989030119244.correct : P15195140989030119244.Spec := by
  intro n
  simp only [A248909, Nat.add_sub_cancel]

end A248909

/-! ## A248909.P15243184802062768485

`gcd(A001014(A170824(n+1)), A046092(n))`
-/

namespace A248909.P15243184802062768485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001014 (A170824 (n + 1)).toNat) (A046092 n)

end

end A248909.P15243184802062768485

namespace A248909

/-- `gcd(A001014(A170824(n+1)), A046092(n))` -/
def P15243184802062768485.Spec : Prop :=
  ∀ n, (P15243184802062768485.a n : ℤ) = A248909 (n + 1)

end A248909

/-! ## A248909.P10456825771110978513

`gcd(A053167(A170824(n+1)), A153152(n))`
-/

namespace A248909.P10456825771110978513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053167 (A170824 (n + 1)).toNat) (A153152 n)

end

end A248909.P10456825771110978513

namespace A248909

/-- `gcd(A053167(A170824(n+1)), A153152(n))` -/
def P10456825771110978513.Spec : Prop :=
  ∀ n, (P10456825771110978513.a n : ℤ) = A248909 (n + 1)

end A248909

/-! ## A248909.P3439192299375603334

`A038502(A000265((n+1)/A343431(n+1)))`
-/

namespace A248909.P3439192299375603334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A343431 (n + 1) : ℚ))).toNat).toNat

end

end A248909.P3439192299375603334

namespace A248909

/-- `A038502(A000265((n+1)/A343431(n+1)))` -/
def P3439192299375603334.Spec : Prop :=
  ∀ n, P3439192299375603334.a n = A248909 (n + 1)

end A248909

/-! ## A248909.P9244904234622684695

`gcd(2*(n+1), A170824(n+1)²²*A014963(8*n+3))`
-/

namespace A248909.P9244904234622684695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) ((A170824 (n + 1) ^ 2) ^ 2 * A014963 (8 * n + 3))

end

end A248909.P9244904234622684695

namespace A248909

/-- `gcd(2*(n+1), A170824(n+1)²²*A014963(8*n+3))` -/
def P9244904234622684695.Spec : Prop :=
  ∀ n, (P9244904234622684695.a n : ℤ) = A248909 (n + 1)

end A248909

/-! ## A248909.P5512975118259930455

`gcd(n+1, A230655(n+1))`
-/

namespace A248909.P5512975118259930455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A230655 (n + 1))

end

end A248909.P5512975118259930455

namespace A248909

/-- `gcd(n+1, A230655(n+1))` -/
def P5512975118259930455.Spec : Prop :=
  ∀ n, (P5512975118259930455.a n : ℤ) = A248909 (n + 1)

end A248909

/-! ## A248909.P5301126561346557273

`A062378(A140213(n+1))*A170824(n+1)`
-/

namespace A248909.P5301126561346557273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (A140213 (n + 1)).toNat * A170824 (n + 1)

end

end A248909.P5301126561346557273

namespace A248909

/-- `A062378(A140213(n+1))*A170824(n+1)` -/
def P5301126561346557273.Spec : Prop :=
  ∀ n, P5301126561346557273.a n = A248909 (n + 1)

end A248909

/-! ## A248909.P1498626755878726782

`gcd(A170824(A000290(n+1))², A016061(n+1))`
-/

namespace A248909.P1498626755878726782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A170824 (A000290 (n + 1)).toNat ^ 2) (A016061 (n + 1))

end

end A248909.P1498626755878726782

namespace A248909

/-- `gcd(A170824(A000290(n+1))², A016061(n+1))` -/
def P1498626755878726782.Spec : Prop :=
  ∀ n, (P1498626755878726782.a n : ℤ) = A248909 (n + 1)

end A248909

/-! ## A248909.P14989529786351105239

`A170824((n+1)^2)*A170824(A191090(n+1))`
-/

namespace A248909.P14989529786351105239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 ((n + 1) ^ 2) * A170824 (A191090 (n + 1)).toNat

end

end A248909.P14989529786351105239

namespace A248909

/-- `A170824((n+1)^2)*A170824(A191090(n+1))` -/
def P14989529786351105239.Spec : Prop :=
  ∀ n, P14989529786351105239.a n = A248909 (n + 1)

end A248909

/-!
# A248910: Numbers with no zeros in base-6 representation.

The programs for A248910, the canonical program `A248910.P11530105690920292692` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248910 has offset 1).

The definition of A248910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248910.P10000130001074099531

`comp[A382416(n+1)]`
-/

namespace A248910.P10000130001074099531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248910.P10000130001074099531

namespace A248910

/-- `comp[A382416(n+1)]` -/
def P10000130001074099531.Spec : Prop :=
  ∀ n, (P10000130001074099531.a n : ℤ) = A248910 (n + 1)

end A248910

/-! ## A248910.P7748266821893091076

`lt[0, A309957(n)]`
-/

namespace A248910.P7748266821893091076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A248910.P7748266821893091076

namespace A248910

/-- `lt[0, A309957(n)]` -/
def P7748266821893091076.Spec : Prop :=
  ∀ n, (P7748266821893091076.a n : ℤ) = A248910 (n + 1)

end A248910

/-! ## A248910.P10137726823008955581

`eq[1, A303824(n+1)]+1`
-/

namespace A248910.P10137726823008955581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248910.P10137726823008955581

namespace A248910

/-- `eq[1, A303824(n+1)]+1` -/
def P10137726823008955581.Spec : Prop :=
  ∀ n, (P10137726823008955581.a n : ℤ) = A248910 (n + 1)

end A248910

/-! ## A248910.P15875749632710351623

`eq[A097325(n), A303824(n)]`
-/

namespace A248910.P15875749632710351623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248910.P15875749632710351623

namespace A248910

/-- `eq[A097325(n), A303824(n)]` -/
def P15875749632710351623.Spec : Prop :=
  ∀ n, (P15875749632710351623.a n : ℤ) = A248910 (n + 1)

end A248910

/-! ## A248910.P835670405448900947

`eq[A168185(n), A303824(n)]`
-/

namespace A248910.P835670405448900947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248910.P835670405448900947

namespace A248910

/-- `eq[A168185(n), A303824(n)]` -/
def P835670405448900947.Spec : Prop :=
  ∀ n, (P835670405448900947.a n : ℤ) = A248910 (n + 1)

end A248910

/-! ## A248910.P11530105690920292692

`record[A054895(A234959(n+1))+1+n]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A248910

/-- `record[A054895(A234959(n+1))+1+n]` -/
def P11530105690920292692.Spec : Prop :=
  ∀ n, P11530105690920292692.a n = A248910 (n + 1)

theorem P11530105690920292692.correct : P11530105690920292692.Spec := by
  intro n
  simp only [A248910, Nat.add_sub_cancel]

end A248910

/-! ## A248910.P15003570794267430169

`record[(n+1)%(A001172(A309957(n+1))+n)]`
-/

namespace A248910.P15003570794267430169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A001172 (A309957 (n + 1)).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248910.P15003570794267430169

namespace A248910

/-- `record[(n+1)%(A001172(A309957(n+1))+n)]` -/
def P15003570794267430169.Spec : Prop :=
  ∀ n, P15003570794267430169.a n = A248910 (n + 1)

end A248910

/-! ## A248910.P9908549224526349432

`eq[A054977(n), A303824(n)]`
-/

namespace A248910.P9908549224526349432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248910.P9908549224526349432

namespace A248910

/-- `eq[A054977(n), A303824(n)]` -/
def P9908549224526349432.Spec : Prop :=
  ∀ n, (P9908549224526349432.a n : ℤ) = A248910 (n + 1)

end A248910

/-! ## A248910.P3294734770853619772

`eq[A057427(n), A303824(n)]`
-/

namespace A248910.P3294734770853619772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248910.P3294734770853619772

namespace A248910

/-- `eq[A057427(n), A303824(n)]` -/
def P3294734770853619772.Spec : Prop :=
  ∀ n, (P3294734770853619772.a n : ℤ) = A248910 (n + 1)

end A248910

/-! ## A248910.P15869000067533610300

`eq[A158388(n), A303824(n)]`
-/

namespace A248910.P15869000067533610300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248910.P15869000067533610300

namespace A248910

/-- `eq[A158388(n), A303824(n)]` -/
def P15869000067533610300.Spec : Prop :=
  ∀ n, (P15869000067533610300.a n : ℤ) = A248910 (n + 1)

end A248910

/-! ## A248910.P298940988898751709

`eq[A309957(n), A338863(n)]`
-/

namespace A248910.P298940988898751709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248910.P298940988898751709

namespace A248910

/-- `eq[A309957(n), A338863(n)]` -/
def P298940988898751709.Spec : Prop :=
  ∀ n, (P298940988898751709.a n : ℤ) = A248910 (n + 1)

end A248910

/-! ## A248910.P2251716846306268593

`eq[2, A303824(n)+A040534(n)]`
-/

namespace A248910.P2251716846306268593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303824 n + A040534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248910.P2251716846306268593

namespace A248910

/-- `eq[2, A303824(n)+A040534(n)]` -/
def P2251716846306268593.Spec : Prop :=
  ∀ n, (P2251716846306268593.a n : ℤ) = A248910 (n + 1)

end A248910

/-! ## A248910.P195921772986355040

`A028901(A084545(n+1))`
-/

namespace A248910.P195921772986355040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A084545 (n + 1)).toNat

end

end A248910.P195921772986355040

namespace A248910

/-- `A028901(A084545(n+1))` -/
def P195921772986355040.Spec : Prop :=
  ∀ n, P195921772986355040.a n = A248910 (n + 1)

end A248910

/-! ## A248910.P1887844182585466663

`eq[1, A055641(A007092(n))+1]`
-/

namespace A248910.P1887844182585466663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007092 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248910.P1887844182585466663

namespace A248910

/-- `eq[1, A055641(A007092(n))+1]` -/
def P1887844182585466663.Spec : Prop :=
  ∀ n, (P1887844182585466663.a n : ℤ) = A248910 (n + 1)

end A248910

/-! ## A248910.P15634755781405556705

`eq[A084984(n+1), A222211(A084984(n+1))]`
-/

namespace A248910.P15634755781405556705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248910.P15634755781405556705

namespace A248910

/-- `eq[A084984(n+1), A222211(A084984(n+1))]` -/
def P15634755781405556705.Spec : Prop :=
  ∀ n, (P15634755781405556705.a n : ℤ) = A248910 (n + 1)

end A248910

/-! ## A248910.P5515909401558279408

`eq[A040534(n*A040534(n)), A303824(n)]`
-/

namespace A248910.P5515909401558279408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040534 ((n : ℤ) * A040534 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248910.P5515909401558279408

namespace A248910

/-- `eq[A040534(n*A040534(n)), A303824(n)]` -/
def P5515909401558279408.Spec : Prop :=
  ∀ n, (P5515909401558279408.a n : ℤ) = A248910 (n + 1)

end A248910

/-!
# A248911: a(n) = floor( prime(n) - (n+1)*log(n) ).

The programs for A248911, the canonical program `A248911.P12540125950108847035` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248911 has offset 1).

The definition of A248911 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(n+1)-(n+2)*log(n+1))` (program `A248911.P12540125950108847035`, by `A248911.P12540125950108847035.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248911.P12540125950108847035

`floor(A000040(n+1)-(n+2)*log(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248911

/-- `floor(A000040(n+1)-(n+2)*log(n+1))` -/
def P12540125950108847035.Spec : Prop :=
  ∀ n, P12540125950108847035.a n = A248911 (n + 1)

theorem P12540125950108847035.correct : P12540125950108847035.Spec := by
  intro n
  simp only [A248911, Nat.add_sub_cancel]

end A248911

/-! ## A248911.P4246613092761892704

`A051699(xor(A305769(n+1), A351968(n)))`
-/

namespace A248911.P4246613092761892704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (Int.xor (A305769 (n + 1)) (A351968 n)).toNat

end

end A248911.P4246613092761892704

namespace A248911

/-- `A051699(xor(A305769(n+1), A351968(n)))` -/
def P4246613092761892704.Spec : Prop :=
  ∀ n, P4246613092761892704.a n = A248911 (n + 1)

end A248911

/-! ## A248911.P14520068902737766327

`A051699(xor(A317118(n+1), A351968(n)))`
-/

namespace A248911.P14520068902737766327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (Int.xor (A317118 (n + 1)) (A351968 n)).toNat

end

end A248911.P14520068902737766327

namespace A248911

/-- `A051699(xor(A317118(n+1), A351968(n)))` -/
def P14520068902737766327.Spec : Prop :=
  ∀ n, P14520068902737766327.a n = A248911 (n + 1)

end A248911

/-!
# A248912: a(n) = floor(prime(n) - (n+1)*(log(n) + log(log(n))) + n) for n > 1.

The programs for A248912, the canonical program `A248912.P17741613728188905665` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248912 has offset 2).

The definition of A248912 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(n+2)-(n+3)*(log(n+2)+log(log(n+2)))+n+2)` (program `A248912.P17741613728188905665`, by `A248912.P17741613728188905665.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248912.P17741613728188905665

`floor(A000040(n+2)-(n+3)*(log(n+2)+log(log(n+2)))+n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248912

/-- `floor(A000040(n+2)-(n+3)*(log(n+2)+log(log(n+2)))+n+2)` -/
def P17741613728188905665.Spec : Prop :=
  ∀ n, P17741613728188905665.a n = A248912 (n + 2)

theorem P17741613728188905665.correct : P17741613728188905665.Spec := by
  intro n
  simp only [A248912, Nat.add_sub_cancel]

end A248912

/-! ## A248912.P12471807866601172086

`5-A346697(A001358(2*n+5))`
-/

namespace A248912.P12471807866601172086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A346697 (A001358 (2 * n + 5)).toNat

end

end A248912.P12471807866601172086

namespace A248912

/-- `5-A346697(A001358(2*n+5))` -/
def P12471807866601172086.Spec : Prop :=
  ∀ n, P12471807866601172086.a n = A248912 (n + 2)

end A248912

/-! ## A248912.P9429164070232510622

`A241180(A290262(3*n+1)+A157100(n))`
-/

namespace A248912.P9429164070232510622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241180 (A290262 (3 * n + 1) + A157100 n).toNat

end

end A248912.P9429164070232510622

namespace A248912

/-- `A241180(A290262(3*n+1)+A157100(n))` -/
def P9429164070232510622.Spec : Prop :=
  ∀ n, P9429164070232510622.a n = A248912 (n + 2)

end A248912

/-!
# A248913: A248614(n+1) - A248614(n).

The programs for A248913, there is no canonical definition to state claims against.
-/

/-! ## A248913.P13804787240644958132

`A248614(n+1)-A248614(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A248913.P13804787240644958132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248614 (n + 1) - A248614 n

end

end A248913.P13804787240644958132

/-! ## A248913.P5320163228006776237

`Δ[lt[A346468(n+1), 2]]`
-/

namespace A248913.P5320163228006776237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A248913.P5320163228006776237

/-! ## A248913.P12234939399148728674

`Δ[eq[A019425(n), A346468(n+1)]]`
-/

namespace A248913.P12234939399148728674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A248913.P12234939399148728674

/-! ## A248913.P13703949173761712148

`Δ[eq[A185048(n+1), A346467(n+1)]]`
-/

namespace A248913.P13703949173761712148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346467 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A248913.P13703949173761712148

/-! ## A248913.P11459446273192245428

`record[A346467(n+1)]-lt[A346468(n+1), 2]`
-/

namespace A248913.P11459446273192245428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ)

end

end A248913.P11459446273192245428

/-! ## A248913.P15169006112051530679

`Δ[A248614(n)]`
-/

namespace A248913.P15169006112051530679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A248913.P15169006112051530679

/-!
# A248917: a(n) = 2^n * n^2 + 1.

The programs for A248917, the canonical program `A248917.P11121051063052159615` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248917 has offset 0).

The definition of A248917 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*n²+1` (program `A248917.P11121051063052159615`, by `A248917.P11121051063052159615.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248917.P11121051063052159615

`2^n*n²+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248917

/-- `2^n*n²+1` -/
def P11121051063052159615.Spec : Prop :=
  ∀ n, (P11121051063052159615.a n : ℤ) = A248917 n

theorem P11121051063052159615.correct : P11121051063052159615.Spec := by
  intro n
  simp only [A248917]

end A248917

/-! ## A248917.P15702812245936829639

`or(1, n²*2^n)`
-/

namespace A248917.P15702812245936829639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2 * 2 ^ n)

end

end A248917.P15702812245936829639

namespace A248917

/-- `or(1, n²*2^n)` -/
def P15702812245936829639.Spec : Prop :=
  ∀ n, (P15702812245936829639.a n : ℤ) = A248917 n

end A248917

/-! ## A248917.P11377284438555521168

`xor(1, n²*2^n)`
-/

namespace A248917.P11377284438555521168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2 * 2 ^ n)

end

end A248917.P11377284438555521168

namespace A248917

/-- `xor(1, n²*2^n)` -/
def P11377284438555521168.Spec : Prop :=
  ∀ n, (P11377284438555521168.a n : ℤ) = A248917 n

end A248917

/-! ## A248917.P4503151106725242801

`abs(2-A168298(n))`
-/

namespace A248917.P4503151106725242801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A168298 n|

end

end A248917.P4503151106725242801

namespace A248917

/-- `abs(2-A168298(n))` -/
def P4503151106725242801.Spec : Prop :=
  ∀ n, P4503151106725242801.a n = A248917 n

end A248917

/-! ## A248917.P8574129496273112604

`abs((A000918(n)+2)*n²+1)`
-/

namespace A248917.P8574129496273112604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A000918 n + 2) * (n ^ 2 : ℤ) + 1|

end

end A248917.P8574129496273112604

namespace A248917

/-- `abs((A000918(n)+2)*n²+1)` -/
def P8574129496273112604.Spec : Prop :=
  ∀ n, P8574129496273112604.a n = A248917 n

end A248917

/-! ## A248917.P1317301289935271352

`abs(n²*A000051(n)+1-n²)`
-/

namespace A248917.P1317301289935271352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A000051 n + 1 - (n ^ 2 : ℤ)|

end

end A248917.P1317301289935271352

namespace A248917

/-- `abs(n²*A000051(n)+1-n²)` -/
def P1317301289935271352.Spec : Prop :=
  ∀ n, P1317301289935271352.a n = A248917 n

end A248917

/-! ## A248917.P9005073940173633138

`and(A128796(n)+A002064(n), 1-4/2)`
-/

namespace A248917.P9005073940173633138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A128796 n + A002064 n) (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2))

end

end A248917.P9005073940173633138

namespace A248917

/-- `and(A128796(n)+A002064(n), 1-4/2)` -/
def P9005073940173633138.Spec : Prop :=
  ∀ n, P9005073940173633138.a n = A248917 n

end A248917

/-! ## A248917.P3047912283164895491

`abs(xor(n²*A155559(n), A056594(2*n)))`
-/

namespace A248917.P3047912283164895491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((n ^ 2 : ℤ) * A155559 n) (A056594 (2 * n))|

end

end A248917.P3047912283164895491

namespace A248917

/-- `abs(xor(n²*A155559(n), A056594(2*n)))` -/
def P3047912283164895491.Spec : Prop :=
  ∀ n, P3047912283164895491.a n = A248917 n

end A248917

/-! ## A248917.P9562979757590560144

`abs(A007758(n)-A008683(A031927(n)))`
-/

namespace A248917.P9562979757590560144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007758 n - A008683 (A031927 n).toNat|

end

end A248917.P9562979757590560144

namespace A248917

/-- `abs(A007758(n)-A008683(A031927(n)))` -/
def P9562979757590560144.Spec : Prop :=
  ∀ n, P9562979757590560144.a n = A248917 n

end A248917

/-! ## A248917.P15433329267539631573

`(n²*A000079(n+1)+2)/2`
-/

namespace A248917.P15433329267539631573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A000079 (n + 1) + 2 : ℚ) / 2

end

end A248917.P15433329267539631573

namespace A248917

/-- `(n²*A000079(n+1)+2)/2` -/
def P15433329267539631573.Spec : Prop :=
  ∀ n, P15433329267539631573.a n = (A248917 n : ℚ)

theorem P15433329267539631573.correct : P15433329267539631573.Spec := by
  intro n
  simp only [A248917, Nat.add_sub_cancel, A248917.P15433329267539631573.a, A248917.P11121051063052159615.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A248917

/-! ## A248917.P1557473846693909503

`ceil((n²*A131577(n+2)+1)/2)`
-/

namespace A248917.P1557473846693909503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 : ℤ) * A131577 (n + 2) + 1 : ℚ) / 2⌉

end

end A248917.P1557473846693909503

namespace A248917

/-- `ceil((n²*A131577(n+2)+1)/2)` -/
def P1557473846693909503.Spec : Prop :=
  ∀ n, P1557473846693909503.a n = A248917 n

end A248917

/-! ## A248917.P5512911719447482070

`floor((4*n*A036289(n)+6)/4)`
-/

namespace A248917.P5512911719447482070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * ((n : ℤ) * A036289 n) + 6 : ℚ) / 4⌋

end

end A248917.P5512911719447482070

namespace A248917

/-- `floor((4*n*A036289(n)+6)/4)` -/
def P5512911719447482070.Spec : Prop :=
  ∀ n, P5512911719447482070.a n = A248917 n

end A248917

/-! ## A248917.P15365050308421769630

`record[A095831(n+1)*A130321(n)+1]`
-/

namespace A248917.P15365050308421769630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (n + 1) * A130321 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248917.P15365050308421769630

namespace A248917

/-- `record[A095831(n+1)*A130321(n)+1]` -/
def P15365050308421769630.Spec : Prop :=
  ∀ n, P15365050308421769630.a n = A248917 n

end A248917

/-!
# A248918: a(n) = index of (n+1)-th prime power in A247665.

The programs for A248918, there is no canonical definition to state claims against.
-/

/-! ## A248918.P2703743456406957807

`A371593(A048410(n+1))`
-/

namespace A248918.P2703743456406957807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371593 (A048410 (n + 1)).toNat

end

end A248918.P2703743456406957807

/-! ## A248918.P5055221604362505308

`A371592(A257554(n+1))`
-/

namespace A248918.P5055221604362505308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371592 (A257554 (n + 1)).toNat

end

end A248918.P5055221604362505308

/-! ## A248918.P12919175592583536065

`A371593(A341011(n+1))`
-/

namespace A248918.P12919175592583536065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371593 (A341011 (n + 1)).toNat

end

end A248918.P12919175592583536065

/-! ## A248918.P11657907234307734795

`A371593(A341161(n+1))`
-/

namespace A248918.P11657907234307734795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371593 (A341161 (n + 1)).toNat

end

end A248918.P11657907234307734795

/-! ## A248918.P2918020286988787395

`A129607(n)+A010195(A193114(n))`
-/

namespace A248918.P2918020286988787395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 n + A010195 (A193114 n).toNat

end

end A248918.P2918020286988787395

/-!
# A248921: Primes in the pentanacci numbers sequence A000322.

The programs for A248921, there is no canonical definition to state claims against.
-/

/-! ## A248921.P5472871866335140899

`A000322(A248920(n+1))`
-/

namespace A248921.P5472871866335140899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000322 (A248920 (n + 1)).toNat

end

end A248921.P5472871866335140899

/-!
# A248924: Sequence derived from arithmetic relations between powers of phi (A001622): a(n) = phi^n - (-1)^n * (n - phi^-n).

The programs for A248924, the canonical program `A248924.P995822908973052193` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248924 has offset 0).

The definition of A248924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248924.P995822908973052193

`A000032(n)-(-1)^n*n`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248924

/-- `A000032(n)-(-1)^n*n` -/
def P995822908973052193.Spec : Prop :=
  ∀ n, P995822908973052193.a n = A248924 n

theorem P995822908973052193.correct : P995822908973052193.Spec := by
  intro n
  simp only [A248924]

end A248924

/-! ## A248924.P3410400950287672989

`abs(A061084(n+1)-n)`
-/

namespace A248924.P3410400950287672989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061084 (n + 1) - (n : ℤ)|

end

end A248924.P3410400950287672989

namespace A248924

/-- `abs(A061084(n+1)-n)` -/
def P3410400950287672989.Spec : Prop :=
  ∀ n, P3410400950287672989.a n = A248924 n

end A248924

/-! ## A248924.P16836813762889711818

`A181983(n)+A000032(n)`
-/

namespace A248924.P16836813762889711818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n + A000032 n

end

end A248924.P16836813762889711818

namespace A248924

/-- `A181983(n)+A000032(n)` -/
def P16836813762889711818.Spec : Prop :=
  ∀ n, P16836813762889711818.a n = A248924 n

theorem P16836813762889711818.correct : P16836813762889711818.Spec := by
  intro n
  simp only [A248924, Nat.add_sub_cancel, A248924.P16836813762889711818.a, A248924.P995822908973052193.a, A000032, A000032.P8352177345629330861.a, A181983, A181983.P3699358180015306672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A248924

/-! ## A248924.P5650670810837411513

`A062724(n)-A137501(n)`
-/

namespace A248924.P5650670810837411513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062724 n - A137501 n

end

end A248924.P5650670810837411513

namespace A248924

/-- `A062724(n)-A137501(n)` -/
def P5650670810837411513.Spec : Prop :=
  ∀ n, P5650670810837411513.a n = A248924 n

end A248924

/-! ## A248924.P1194014279683616187

`A105811(n+2)+A000032(n)`
-/

namespace A248924.P1194014279683616187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105811 (n + 2) + A000032 n

end

end A248924.P1194014279683616187

namespace A248924

/-- `A105811(n+2)+A000032(n)` -/
def P1194014279683616187.Spec : Prop :=
  ∀ n, P1194014279683616187.a n = A248924 n

end A248924

/-! ## A248924.P6393324950661882465

`(n-A061084(n+1))*A033999(n+1)`
-/

namespace A248924.P6393324950661882465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A061084 (n + 1)) * A033999 (n + 1)

end

end A248924.P6393324950661882465

namespace A248924

/-- `(n-A061084(n+1))*A033999(n+1)` -/
def P6393324950661882465.Spec : Prop :=
  ∀ n, P6393324950661882465.a n = A248924 n

end A248924

/-! ## A248924.P16693378216697279434

`ogf((-2-4x+x^2+2x^3)/(-1-x+2x^2+3x^3+x^4))`
-/

namespace A248924.P16693378216697279434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, -1, -2] [1, 1, -2, -3, -1] n

end

end A248924.P16693378216697279434

namespace A248924

/-- `ogf((-2-4x+x^2+2x^3)/(-1-x+2x^2+3x^3+x^4))` -/
def P16693378216697279434.Spec : Prop :=
  ∀ n, P16693378216697279434.a n = A248924 n

end A248924

/-! ## A248924.P1758012502863527634

`A099925(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A248924.P1758012502863527634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A099925 (n + 1) - a (n - 1)

end

end A248924.P1758012502863527634

namespace A248924

/-- `A099925(n+1)-a(n-1)` -/
def P1758012502863527634.Spec : Prop :=
  ∀ n, P1758012502863527634.a n = A248924 n

end A248924

/-! ## A248924.P11683390547114445866

`Δ[A000032(n+1)]-n/(-1)^n`
-/

namespace A248924.P11683390547114445866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (n : ℚ) / ((-1) ^ n : ℚ)

end

end A248924.P11683390547114445866

namespace A248924

/-- `Δ[A000032(n+1)]-n/(-1)^n` -/
def P11683390547114445866.Spec : Prop :=
  ∀ n, P11683390547114445866.a n = (A248924 n : ℚ)

end A248924

/-!
# A248925: Triangle in which row n consists of the coefficients in Sum_{m=0..n} x^m * Product_{k=m+1..n} (1-k*x), as read by rows.

The programs for A248925, there is no canonical definition to state claims against.
-/

/-! ## A248925.P13218070220689590857

`A158359(n)+A010051(A148236(n))`
-/

namespace A248925.P13218070220689590857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158359 n + A010051 (A148236 n).toNat

end

end A248925.P13218070220689590857

/-!
# A248927: Triangle read by rows: T(n,k) are the coefficients of the Lagrange (compositional) inversion of a function in terms of the Taylor series expansion of its reciprocal, n >= 1, k = 1..A000041(n-1).

The programs for A248927, there is no canonical definition to state claims against.
-/

/-! ## A248927.P17414253258744979349

`A248120(n+1)/A252736(A344122(n+2))`
-/

namespace A248927.P17414253258744979349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248120 (n + 1) : ℚ) / (A252736 (A344122 (n + 2)).toNat : ℚ)

end

end A248927.P17414253258744979349

/-! ## A248927.P8006439235034202275

`A248120(n+1)/A070939(A246979(n))`
-/

namespace A248927.P8006439235034202275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248120 (n + 1) : ℚ) / (A070939 (A246979 n).toNat : ℚ)

end

end A248927.P8006439235034202275

/-! ## A248927.P6499923152746645285

`A052126(A027750(n+1)*A283432(n))`
-/

namespace A248927.P6499923152746645285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A027750 (n + 1) * A283432 n).toNat

end

end A248927.P6499923152746645285

/-!
# A248928: Interleave (2*n+2)^2 with (2*n+3)^2, both listed n+1 times.

The programs for A248928, the canonical program `A248928.P6547511480324052605` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248928 has offset 0).

The definition of A248928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248928.P6547511480324052605

`A027434(n+1)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248928

/-- `A027434(n+1)²` -/
def P6547511480324052605.Spec : Prop :=
  ∀ n, P6547511480324052605.a n = A248928 n

theorem P6547511480324052605.correct : P6547511480324052605.Spec := by
  intro n
  simp only [A248928]

end A248928

/-! ## A248928.P9524328192975462818

`ceil(record[sqrt(xor(3, n))])²`
-/

namespace A248928.P9524328192975462818
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 3 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ ^ 2

end

end A248928.P9524328192975462818

namespace A248928

/-- `ceil(record[sqrt(xor(3, n))])²` -/
def P9524328192975462818.Spec : Prop :=
  ∀ n, P9524328192975462818.a n = A248928 n

end A248928

/-! ## A248928.P14203610280125108930

`ceil(2*sqrt(n+1))²`
-/

namespace A248928.P14203610280125108930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (n + 1 : ℝ)⌉ ^ 2

end

end A248928.P14203610280125108930

namespace A248928

/-- `ceil(2*sqrt(n+1))²` -/
def P14203610280125108930.Spec : Prop :=
  ∀ n, P14203610280125108930.a n = A248928 n

end A248928

/-! ## A248928.P10003105864229797566

`ceil(record[sqrt(xor(3, n))])^2`
-/

namespace A248928.P10003105864229797566
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 3 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ ^ 2

end

end A248928.P10003105864229797566

namespace A248928

/-- `ceil(record[sqrt(xor(3, n))])^2` -/
def P10003105864229797566.Spec : Prop :=
  ∀ n, P10003105864229797566.a n = A248928 n

end A248928

/-! ## A248928.P4828605258970129930

`ceil(2/acot(sqrt(n)))^2`
-/

namespace A248928.P4828605258970129930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (Real.sqrt (n : ℝ))⌉ ^ 2

end

end A248928.P4828605258970129930

namespace A248928

/-- `ceil(2/acot(sqrt(n)))^2` -/
def P4828605258970129930.Spec : Prop :=
  ∀ n, P4828605258970129930.a n = A248928 n

end A248928

/-! ## A248928.P10065629752821095850

`ceil(record[sqrt(lcm(2, n+1))])^2`
-/

namespace A248928.P10065629752821095850
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm 2 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ ^ 2

end

end A248928.P10065629752821095850

namespace A248928

/-- `ceil(record[sqrt(lcm(2, n+1))])^2` -/
def P10065629752821095850.Spec : Prop :=
  ∀ n, P10065629752821095850.a n = A248928 n

end A248928

/-! ## A248928.P5109776410923837378

`(floor(2/acot(sqrt(n)))+1)^2`
-/

namespace A248928.P5109776410923837378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊2 / SequenceMachineLib.acot (Real.sqrt (n : ℝ))⌋ + 1) ^ 2

end

end A248928.P5109776410923837378

namespace A248928

/-- `(floor(2/acot(sqrt(n)))+1)^2` -/
def P5109776410923837378.Spec : Prop :=
  ∀ n, P5109776410923837378.a n = A248928 n

end A248928

/-! ## A248928.P16283194931446603423

`A000290(floor(sqrt(4*(n+1)-1))+1)`
-/

namespace A248928.P16283194931446603423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.sqrt ((4 * (n + 1) : ℤ) - 1) + 1).toNat

end

end A248928.P16283194931446603423

namespace A248928

/-- `A000290(floor(sqrt(4*(n+1)-1))+1)` -/
def P16283194931446603423.Spec : Prop :=
  ∀ n, P16283194931446603423.a n = A248928 n

end A248928

/-! ## A248928.P4156659181235241023

`abs((floor(sqrt(A004767(n)))+1)²-3)+3`
-/

namespace A248928.P4156659181235241023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.sqrt (A004767 n) + 1) ^ 2 - 3| + 3

end

end A248928.P4156659181235241023

namespace A248928

/-- `abs((floor(sqrt(A004767(n)))+1)²-3)+3` -/
def P4156659181235241023.Spec : Prop :=
  ∀ n, P4156659181235241023.a n = A248928 n

end A248928

/-! ## A248928.P8238803795397498892

`A000463(A027709(n+1))`
-/

namespace A248928.P8238803795397498892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A027709 (n + 1)).toNat

end

end A248928.P8238803795397498892

namespace A248928

/-- `A000463(A027709(n+1))` -/
def P8238803795397498892.Spec : Prop :=
  ∀ n, P8238803795397498892.a n = A248928 n

end A248928

/-! ## A248928.P4737264665143711586

`A002620(A143730(n+1)-1)`
-/

namespace A248928.P4737264665143711586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A143730 (n + 1) - 1).toNat

end

end A248928.P4737264665143711586

namespace A248928

/-- `A002620(A143730(n+1)-1)` -/
def P4737264665143711586.Spec : Prop :=
  ∀ n, P4737264665143711586.a n = A248928 n

end A248928

/-! ## A248928.P14277657555658648014

`A004652(A143730(n+1)-1)`
-/

namespace A248928.P14277657555658648014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A143730 (n + 1) - 1).toNat

end

end A248928.P14277657555658648014

namespace A248928

/-- `A004652(A143730(n+1)-1)` -/
def P14277657555658648014.Spec : Prop :=
  ∀ n, P14277657555658648014.a n = A248928 n

end A248928

/-! ## A248928.P7767767178783661766

`A002620(2*A027434(n+1))`
-/

namespace A248928.P7767767178783661766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A027434 (n + 1)).toNat

end

end A248928.P7767767178783661766

namespace A248928

/-- `A002620(2*A027434(n+1))` -/
def P7767767178783661766.Spec : Prop :=
  ∀ n, P7767767178783661766.a n = A248928 n

end A248928

/-! ## A248928.P3440227997202468294

`A008794(2*A027434(n+1))`
-/

namespace A248928.P3440227997202468294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (2 * A027434 (n + 1)).toNat

end

end A248928.P3440227997202468294

namespace A248928

/-- `A008794(2*A027434(n+1))` -/
def P3440227997202468294.Spec : Prop :=
  ∀ n, P3440227997202468294.a n = A248928 n

end A248928

/-! ## A248928.P11889876045733766106

`A002620(A027434(n+1)+A027434(n+1))`
-/

namespace A248928.P11889876045733766106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A027434 (n + 1) + A027434 (n + 1)).toNat

end

end A248928.P11889876045733766106

namespace A248928

/-- `A002620(A027434(n+1)+A027434(n+1))` -/
def P11889876045733766106.Spec : Prop :=
  ∀ n, P11889876045733766106.a n = A248928 n

end A248928

/-! ## A248928.P14196322122955277842

`(A027709(n+1)-A027434(n+1))*A027434(n+1)`
-/

namespace A248928.P14196322122955277842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027709 (n + 1) - A027434 (n + 1)) * A027434 (n + 1)

end

end A248928.P14196322122955277842

namespace A248928

/-- `(A027709(n+1)-A027434(n+1))*A027434(n+1)` -/
def P14196322122955277842.Spec : Prop :=
  ∀ n, P14196322122955277842.a n = A248928 n

theorem P14196322122955277842.correct : P14196322122955277842.Spec := by
  intro n
  simp only [A248928, Nat.add_sub_cancel, A248928.P14196322122955277842.a, A248928.P6547511480324052605.a, A027434, A027434.P12538987724617011991.a, A027709, A027709.P11339494392271686754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A248928

/-! ## A248928.P7808673654692399419

`A140978(2*n+1-A000194(n))`
-/

namespace A248928.P7808673654692399419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140978 ((2 * n + 1 : ℤ) - A000194 n).toNat

end

end A248928.P7808673654692399419

namespace A248928

/-- `A140978(2*n+1-A000194(n))` -/
def P7808673654692399419.Spec : Prop :=
  ∀ n, P7808673654692399419.a n = A248928 n

end A248928

/-! ## A248928.P13359321979664566257

`A278818(2*n+1)+2*n+1`
-/

namespace A248928.P13359321979664566257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278818 (2 * n + 1) + (2 * n + 1 : ℤ)

end

end A248928.P13359321979664566257

namespace A248928

/-- `A278818(2*n+1)+2*n+1` -/
def P13359321979664566257.Spec : Prop :=
  ∀ n, P13359321979664566257.a n = A248928 n

end A248928

/-! ## A248928.P12072252419454647907

`A102515(2*n)*A102515(2*n)`
-/

namespace A248928.P12072252419454647907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102515 (2 * n) * A102515 (2 * n)

end

end A248928.P12072252419454647907

namespace A248928

/-- `A102515(2*n)*A102515(2*n)` -/
def P12072252419454647907.Spec : Prop :=
  ∀ n, P12072252419454647907.a n = A248928 n

end A248928

/-! ## A248928.P2936306033733931238

`A093995(comp[n²]+n)`
-/

namespace A248928.P2936306033733931238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A248928.P2936306033733931238

namespace A248928

/-- `A093995(comp[n²]+n)` -/
def P2936306033733931238.Spec : Prop :=
  ∀ n, P2936306033733931238.a n = A248928 n

end A248928

/-!
# A248937: Fermi-Dirac analog of the Kempner numbers (A002034) (see comment).

The programs for A248937, there is no canonical definition to state claims against.
-/

/-! ## A248937.P13838101297694082634

`A025457(A095062(n+1))+A002034(n+1)`
-/

namespace A248937.P13838101297694082634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 (A095062 (n + 1)).toNat + A002034 (n + 1)

end

end A248937.P13838101297694082634

/-! ## A248937.P15768348133442658325

`A025457(A095062(n+1))+A122416(n+1)-1`
-/

namespace A248937.P15768348133442658325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 (A095062 (n + 1)).toNat + (A122416 (n + 1) - 1)

end

end A248937.P15768348133442658325

/-! ## A248937.P8204329130670874406

`A025457(A095062(n+1))+A061243(n+1)-(n+1)`
-/

namespace A248937.P8204329130670874406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 (A095062 (n + 1)).toNat + (A061243 (n + 1) - (n + 1 : ℤ))

end

end A248937.P8204329130670874406

/-! ## A248937.P14763620380875963576

`A028310(A064760(n+1))+A025457(A095062(n+1))`
-/

namespace A248937.P14763620380875963576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A064760 (n + 1)).toNat + A025457 (A095062 (n + 1)).toNat

end

end A248937.P14763620380875963576

/-! ## A248937.P12471327805310980586

`A006530(n+1)+A057108(n+1)+A025457(A095062(n+1))`
-/

namespace A248937.P12471327805310980586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + (A057108 (n + 1) + A025457 (A095062 (n + 1)).toNat)

end

end A248937.P12471327805310980586

/-!
# A248940: Wrecker ball sequence starting with 7.

The programs for A248940, there is no canonical definition to state claims against.
-/

/-! ## A248940.P6641489223012347521

`A248939(n+67)`
-/

namespace A248940.P6641489223012347521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248939 (n + 67)

end

end A248940.P6641489223012347521

/-!
# A248941: Wrecker ball sequence starting with 17.

The programs for A248941, there is no canonical definition to state claims against.
-/

/-! ## A248941.P636079342640945504

`A248942(n)+A174971(A118638(n+1))`
-/

namespace A248941.P636079342640945504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248942 n + A174971 (A118638 (n + 1)).toNat

end

end A248941.P636079342640945504

/-! ## A248941.P8822036445676772076

`A248942(n)-A122553(A189111(n+1))`
-/

namespace A248941.P8822036445676772076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248942 n - A122553 (A189111 (n + 1)).toNat

end

end A248941.P8822036445676772076

/-! ## A248941.P7356755654847675916

`A248942(n)-A248955(A139957(n+1))`
-/

namespace A248941.P7356755654847675916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248942 n - A248955 (A139957 (n + 1)).toNat

end

end A248941.P7356755654847675916

/-! ## A248941.P10548735699898073806

`A248942(n)-A248955(A139978(n+1))`
-/

namespace A248941.P10548735699898073806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248942 n - A248955 (A139978 (n + 1)).toNat

end

end A248941.P10548735699898073806

/-! ## A248941.P8653035692962090046

`A248942(n)-A122553(A302010(n+1))`
-/

namespace A248941.P8653035692962090046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248942 n - A122553 (A302010 (n + 1)).toNat

end

end A248941.P8653035692962090046

/-!
# A248942: Wrecker ball sequence starting with 20.

The programs for A248942, there is no canonical definition to state claims against.
-/

/-! ## A248942.P4342328841778962520

`A248941(n)+A122553(A118638(n+1))`
-/

namespace A248942.P4342328841778962520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248941 n + A122553 (A118638 (n + 1)).toNat

end

end A248942.P4342328841778962520

/-! ## A248942.P1362850238905327816

`A248941(n)+A122553(A189111(n+1))`
-/

namespace A248942.P1362850238905327816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248941 n + A122553 (A189111 (n + 1)).toNat

end

end A248942.P1362850238905327816

/-! ## A248942.P11555510088966563941

`A248955(A139957(n+1))+A248941(n)`
-/

namespace A248942.P11555510088966563941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248955 (A139957 (n + 1)).toNat + A248941 n

end

end A248942.P11555510088966563941

/-! ## A248942.P459333359693182736

`A248955(A139978(n+1))+A248941(n)`
-/

namespace A248942.P459333359693182736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248955 (A139978 (n + 1)).toNat + A248941 n

end

end A248942.P459333359693182736

/-! ## A248942.P4354821611650979023

`A248941(n)%A177736(2*n+3)+3`
-/

namespace A248942.P4354821611650979023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248941 n) (A177736 (2 * n + 3)) + 3

end

end A248942.P4354821611650979023

/-!
# A248943: Sum of squares of diagonals of a parallelogram (but not rectangle or rhombus) with integer sides and diagonals and their GCD is 1.

The programs for A248943, there is no canonical definition to state claims against.
-/

/-! ## A248943.P11727188609847982580

`2*A326311(A047842(n)+2)`
-/

namespace A248943.P11727188609847982580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326311 (A047842 n + 2).toNat

end

end A248943.P11727188609847982580

/-! ## A248943.P10791726276433136308

`A008619(eq[8, A113406(n+1)])`
-/

namespace A248943.P10791726276433136308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248943.P10791726276433136308

/-! ## A248943.P16950232949410944026

`A065033(eq[8, A113406(n+1)])`
-/

namespace A248943.P16950232949410944026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248943.P16950232949410944026

/-! ## A248943.P4512773805067500825

`A020639(A071954(n))*A025303(n+1)`
-/

namespace A248943.P4512773805067500825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A071954 n).toNat * A025303 (n + 1)

end

end A248943.P4512773805067500825

/-!
# A248944: T(n,k)=Number of length n arrays x(i), i=1..n with x(i) in i..i+k and no value appearing more than 1 time.

The programs for A248944, there is no canonical definition to state claims against.
-/

/-! ## A248944.P2372529293349532305

`A327425(A097805(n))+A210220(n+1)`
-/

namespace A248944.P2372529293349532305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327425 (A097805 n).toNat + A210220 (n + 1)

end

end A248944.P2372529293349532305

/-! ## A248944.P18415581363586910973

`A329655(n+1)+A329655(A102480(n))`
-/

namespace A248944.P18415581363586910973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329655 (n + 1) + A329655 (A102480 n).toNat

end

end A248944.P18415581363586910973

/-! ## A248944.P10512756139307285433

`A327425(A097805(n))+A286558(2*A130329(n)-1)`
-/

namespace A248944.P10512756139307285433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327425 (A097805 n).toNat + A286558 (2 * A130329 n - 1).toNat

end

end A248944.P10512756139307285433

/-! ## A248944.P4692409442843224517

`A327425(A097805(n))+A286558(A130329(n)+A130329(n)-1)`
-/

namespace A248944.P4692409442843224517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327425 (A097805 n).toNat + A286558 (A130329 n + (A130329 n - 1)).toNat

end

end A248944.P4692409442843224517

/-! ## A248944.P6451056062205068920

`A085516(A267245(n+1))`
-/

namespace A248944.P6451056062205068920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A267245 (n + 1)).toNat

end

end A248944.P6451056062205068920

/-!
# A248952: Smallest term in wrecker ball sequence starting with n.

The programs for A248952, there is no canonical definition to state claims against.
-/

/-! ## A248952.P13582703713148548955

`A248953(n)-A324673(n)`
-/

namespace A248952.P13582703713148548955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248953 n - A324673 n

end

end A248952.P13582703713148548955

/-! ## A248952.P9043990804529831763

`A248953(n)+A057428(n)*A324673(n)`
-/

namespace A248952.P9043990804529831763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248953 n + A057428 n * A324673 n

end

end A248952.P9043990804529831763

/-!
# A248953: Largest term in wrecker ball sequence starting with n.

The programs for A248953, there is no canonical definition to state claims against.
-/

/-! ## A248953.P5530411341535912466

`A324673(n)+A248952(n)`
-/

namespace A248953.P5530411341535912466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324673 n + A248952 n

end

end A248953.P5530411341535912466

/-! ## A248953.P10820985974630616997

`A248952(n)-A057428(n)*A324673(n)`
-/

namespace A248953.P10820985974630616997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248952 n - A057428 n * A324673 n

end

end A248953.P10820985974630616997

/-! ## A248953.P15535088025770938607

`A324673(n)-A134824(n)*A248952(n)`
-/

namespace A248953.P15535088025770938607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324673 n - A134824 n * A248952 n

end

end A248953.P15535088025770938607

/-!
# A248955: Number of polynomials a_k*x^k + ... + a_1*x + n with k > 0, integer coefficients and distinct positive integer roots and positive integers n.

The programs for A248955, there is no canonical definition to state claims against.
-/

/-! ## A248955.P17255035456909173153

`2*A342086(n+1)-1`
-/

namespace A248955.P17255035456909173153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342086 (n + 1) - 1

end

end A248955.P17255035456909173153

/-! ## A248955.P8891743273884541107

`2*∑{d}[n+1, A045778(#)]-1`
-/

namespace A248955.P8891743273884541107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A045778 d) - 1

end

end A248955.P8891743273884541107

/-! ## A248955.P17226714269974026453

`A004273(A342086(n+1))`
-/

namespace A248955.P17226714269974026453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A342086 (n + 1)).toNat

end

end A248955.P17226714269974026453

/-! ## A248955.P1445384168088419083

`or(A001969(A342086(n+1)), A060576(n))`
-/

namespace A248955.P1445384168088419083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001969 (A342086 (n + 1)).toNat) (A060576 n)

end

end A248955.P1445384168088419083

/-! ## A248955.P2314923106764583914

`A000265(A342086(n+1)+A342086(n+1)-1)`
-/

namespace A248955.P2314923106764583914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A342086 (n + 1) + (A342086 (n + 1) - 1)).toNat

end

end A248955.P2314923106764583914

/-! ## A248955.P8748528888269466067

`A342086(n+1)+A342086(n+1)-A008836(n+1)²`
-/

namespace A248955.P8748528888269466067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342086 (n + 1) + (A342086 (n + 1) - A008836 (n + 1) ^ 2)

end

end A248955.P8748528888269466067

/-! ## A248955.P16282102078537643766

`A342086(n+1)+A342086(n+1)-A325401(A006519(n+1))`
-/

namespace A248955.P16282102078537643766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342086 (n + 1) + (A342086 (n + 1) - A325401 (A006519 (n + 1)).toNat)

end

end A248955.P16282102078537643766

/-! ## A248955.P3837649647124398158

`2*A045778(A087560(n+1))-1`
-/

namespace A248955.P3837649647124398158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045778 (A087560 (n + 1)).toNat - 1

end

end A248955.P3837649647124398158

/-! ## A248955.P14015131526319904944

`A105360(A342086(n+1)+1)-1`
-/

namespace A248955.P14015131526319904944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105360 (A342086 (n + 1) + 1).toNat - 1

end

end A248955.P14015131526319904944

/-! ## A248955.P15000189325453692712

`2*A045778(A119416(n+1))-1`
-/

namespace A248955.P15000189325453692712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045778 (A119416 (n + 1)).toNat - 1

end

end A248955.P15000189325453692712

/-!
# A248956: Number of polynomials a_k*x^k + ... + a_1*x + a_0 with k > 0, integer coefficients and only non-multiple positive integer roots and a_0 = p^n (p is a prime).

The programs for A248956, there is no canonical definition to state claims against.
-/

/-! ## A248956.P17165016906524544904

`2*A036469(n)-1`
-/

namespace A248956.P17165016906524544904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036469 n - 1

end

end A248956.P17165016906524544904

/-! ## A248956.P13055547014509713181

`∑[A087135(n)]`
-/

namespace A248956.P13055547014509713181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248956.P13055547014509713181

/-! ## A248956.P218209075872605372

`∑[A333147(n)]+n`
-/

namespace A248956.P218209075872605372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A248956.P218209075872605372

/-! ## A248956.P1581132187359950981

`∑[2*A000009(n)]-1`
-/

namespace A248956.P1581132187359950981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A248956.P1581132187359950981

/-! ## A248956.P15105046059742915812

`∑[abs(2*A081360(n))]-1`
-/

namespace A248956.P15105046059742915812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A081360 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A248956.P15105046059742915812

/-! ## A248956.P13783996833736643781

`∑[2*A111133(n)+1]+n`
-/

namespace A248956.P13783996833736643781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111133 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A248956.P13783996833736643781

/-! ## A248956.P729131928451111886

`∑[A000009(n)]+A036469(n)-1`
-/

namespace A248956.P729131928451111886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A036469 n - 1)

end

end A248956.P729131928451111886

/-! ## A248956.P8658163578296675490

`∑[A111133(n)+A000009(n)]+n`
-/

namespace A248956.P8658163578296675490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A248956.P8658163578296675490

/-! ## A248956.P17199783431874824720

`A026906(n+1)+A036469(n)-A000009(n+1)`
-/

namespace A248956.P17199783431874824720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026906 (n + 1) + (A036469 n - A000009 (n + 1))

end

end A248956.P17199783431874824720

/-! ## A248956.P16475283448988521604

`2*∑[A096765(n+1)+A096765(n)]-1`
-/

namespace A248956.P16475283448988521604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) + A096765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A248956.P16475283448988521604

/-! ## A248956.P10665160350408013142

`∑[A000009(n)+A000065(n)-A047967(n)]+n`
-/

namespace A248956.P10665160350408013142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A000065 n - A047967 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A248956.P10665160350408013142

/-! ## A248956.P2444834321860002108

`∑[2*A035457(2*n)-1]+n`
-/

namespace A248956.P2444834321860002108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035457 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A248956.P2444834321860002108

/-!
# A248957: a(n) = PrimePi(4^n) - PrimePi(2^n).

The programs for A248957, the canonical program `A248957.P10936386971086144908` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248957 has offset 0).

The definition of A248957 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(4^n)-A000720(2^n)` (program `A248957.P10936386971086144908`, by `A248957.P10936386971086144908.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248957.P4310709929373967986

`A007053(2*n)-A007053(n)`
-/

namespace A248957.P4310709929373967986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (2 * n) - A007053 n

end

end A248957.P4310709929373967986

namespace A248957

/-- `A007053(2*n)-A007053(n)` -/
def P4310709929373967986.Spec : Prop :=
  ∀ n, P4310709929373967986.a n = A248957 n

end A248957

/-! ## A248957.P10936386971086144908

`A000720(4^n)-A000720(2^n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A248957

/-- `A000720(4^n)-A000720(2^n)` -/
def P10936386971086144908.Spec : Prop :=
  ∀ n, P10936386971086144908.a n = A248957 n

theorem P10936386971086144908.correct : P10936386971086144908.Spec := by
  intro n
  simp only [A248957]

end A248957

/-! ## A248957.P18114999336569075009

`A000720(4^n+1)-A000720(2^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A248957.P18114999336569075009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (4 ^ n + 1) - A000720 (2 ^ n + 1)

end

end A248957.P18114999336569075009

namespace A248957

/-- `A000720(4^n+1)-A000720(2^n+1)` -/
def P18114999336569075009.Spec : Prop :=
  ∀ n, P18114999336569075009.a n = A248957 n

end A248957

/-! ## A248957.P11060727756475958972

`A086680(n)-A007053(n)`
-/

namespace A248957.P11060727756475958972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086680 n - A007053 n

end

end A248957.P11060727756475958972

namespace A248957

/-- `A086680(n)-A007053(n)` -/
def P11060727756475958972.Spec : Prop :=
  ∀ n, P11060727756475958972.a n = A248957 n

end A248957

/-! ## A248957.P17372585370664130582

`A185192(A004277(n))-A007053(n)`
-/

namespace A248957.P17372585370664130582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (A004277 n).toNat - A007053 n

end

end A248957.P17372585370664130582

namespace A248957

/-- `A185192(A004277(n))-A007053(n)` -/
def P17372585370664130582.Spec : Prop :=
  ∀ n, P17372585370664130582.a n = A248957 n

end A248957

/-!
# A248958: Maximum number of distinct nonempty squares in a binary string of length n.

The programs for A248958, there is no canonical definition to state claims against.
-/

/-! ## A248958.P7514956185468090489

`n+1-A112751(∑[A286093(n^val(n+1, 3))])`
-/

namespace A248958.P7514956185468090489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286093 (n ^ SequenceMachineLib.valuation (n + 1) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A112751 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248958.P7514956185468090489

/-! ## A248958.P2861549446223284689

`∑[A284939(A127873(n+1)+A125101(n+1))]`
-/

namespace A248958.P2861549446223284689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (A127873 (n + 1) + A125101 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248958.P2861549446223284689

/-! ## A248958.P10349962807552278828

`A105564(A356935(n+1)+A011655(n))`
-/

namespace A248958.P10349962807552278828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (A356935 (n + 1) + A011655 n).toNat

end

end A248958.P10349962807552278828

/-! ## A248958.P9267107052399134114

`∑[A010060(A061802(3*n+2))]`
-/

namespace A248958.P9267107052399134114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A061802 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248958.P9267107052399134114

/-!
# A248959: Number of ternary words of length n in which all digits 0..2 occur in every subword of 4 consecutive digits.

The programs for A248959, the canonical program `A248959.P7562140667801410116` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248959 has offset 0).

The definition of A248959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248959.P7562140667801410116

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=36, a(5)=72, a(6)=132`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248959

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P7562140667801410116.Spec : Prop :=
  ∀ n, (P7562140667801410116.a n : ℤ) = A248959 n

theorem P7562140667801410116.correct : P7562140667801410116.Spec := by
  intro n
  simp only [A248959]

end A248959

/-! ## A248959.P16429804064712407766

`A292130(n)+A153883(A107369(n+1))`
-/

namespace A248959.P16429804064712407766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292130 n + A153883 (A107369 (n + 1)).toNat

end

end A248959.P16429804064712407766

namespace A248959

/-- `A292130(n)+A153883(A107369(n+1))` -/
def P16429804064712407766.Spec : Prop :=
  ∀ n, P16429804064712407766.a n = A248959 n

end A248959

/-!
# A248960: Number of ternary words of length n in which all digits 0..2 occur in every 5 consecutive digits.

The programs for A248960, there is no canonical definition to state claims against.
-/

/-! ## A248960.P1519491111762267077

`A170839(A297388(n))`
-/

namespace A248960.P1519491111762267077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170839 (A297388 n).toNat

end

end A248960.P1519491111762267077

/-! ## A248960.P16762031326788341243

`filter[A317589(2*n+1), A373371(#)]`
-/

namespace A248960.P16762031326788341243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317589 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A248960.P16762031326788341243

/-!
# A248961: Sums of wrecker ball sequences starting with n.

The programs for A248961, there is no canonical definition to state claims against.
-/

/-! ## A248961.P9498576350983218949

`A248973(∑[A228474(n)]+n)`
-/

namespace A248961.P9498576350983218949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248973 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A248961.P9498576350983218949

/-! ## A248961.P16813642931106365004

`A248973(∑[A228474(n)-A057428(n)])`
-/

namespace A248961.P16813642931106365004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228474 n - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248973 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248961.P16813642931106365004

/-! ## A248961.P10033428187193599387

`A248973(∑[A324662(n)+2*A324660(n)]+n)`
-/

namespace A248961.P10033428187193599387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324662 n + 2 * A324660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248973 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A248961.P10033428187193599387

/-!
# A248962: a(n) = PrimePi(log(prime(n))*n).

The programs for A248962, the canonical program `A248962.P12892924221916097292` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248962 has offset 1).

The definition of A248962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8761 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248962.P12892924221916097292

`A000720(A250621(n+1)+A000007(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A248962

/-- `A000720(A250621(n+1)+A000007(n))` -/
def P12892924221916097292.Spec : Prop :=
  ∀ n, P12892924221916097292.a n = A248962 (n + 1)

theorem P12892924221916097292.correct : P12892924221916097292.Spec := by
  intro n
  simp only [A248962, Nat.add_sub_cancel]

end A248962

/-! ## A248962.P3161246900236682624

`A230980(A250621(n+1))`
-/

namespace A248962.P3161246900236682624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A250621 (n + 1)).toNat

end

end A248962.P3161246900236682624

namespace A248962

/-- `A230980(A250621(n+1))` -/
def P3161246900236682624.Spec : Prop :=
  ∀ n, P3161246900236682624.a n = A248962 (n + 1)

end A248962

/-! ## A248962.P2596650538894894232

`A124765(A244463(3*n+2))+n`
-/

namespace A248962.P2596650538894894232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A244463 (3 * n + 2 + 10)).toNat + (n : ℤ)

end

end A248962.P2596650538894894232

namespace A248962

/-- `A124765(A244463(3*n+2))+n` -/
def P2596650538894894232.Spec : Prop :=
  ∀ n, P2596650538894894232.a n = A248962 (n + 1)

end A248962

/-! ## A248962.P493251544152613379

`A056239(A108411(n)*A289439(n+3))`
-/

namespace A248962.P493251544152613379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A108411 n * A289439 (n + 3)).toNat

end

end A248962.P493251544152613379

namespace A248962

/-- `A056239(A108411(n)*A289439(n+3))` -/
def P493251544152613379.Spec : Prop :=
  ∀ n, P493251544152613379.a n = A248962 (n + 1)

end A248962

/-! ## A248962.P13255825205222398560

`A005100(n+1)-A127236(2^n)`
-/

namespace A248962.P13255825205222398560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1) - A127236 (2 ^ n)

end

end A248962.P13255825205222398560

namespace A248962

/-- `A005100(n+1)-A127236(2^n)` -/
def P13255825205222398560.Spec : Prop :=
  ∀ n, P13255825205222398560.a n = A248962 (n + 1)

end A248962

/-!
# A248963: Prime powers p^m for which sigma(p^2m) is not prime.

The programs for A248963, there is no canonical definition to state claims against.
-/

/-! ## A248963.P13727656422123674770

`∩[A000961(n+1), comp[A055638(n+1)]]`
-/

namespace A248963.P13727656422123674770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A248963.P13727656422123674770

/-! ## A248963.P18209893385086842256

`A086412(A358250(n+1))+A086398(n+1)`
-/

namespace A248963.P18209893385086842256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086412 (A358250 (n + 1)).toNat + A086398 (n + 1)

end

end A248963.P18209893385086842256

/-! ## A248963.P13570801370674270522

`A347886(n+1)+A347870(A347862(n+7))`
-/

namespace A248963.P13570801370674270522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347886 (n + 1) + A347870 (A347862 (n + 7)).toNat

end

end A248963.P13570801370674270522

/-! ## A248963.P6741711339970957508

`lt[A178194(n), A178199(n)%A127821(n+1)]`
-/

namespace A248963.P6741711339970957508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178199 n) (A127821 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248963.P6741711339970957508

/-! ## A248963.P16066609588645649189

`A353633(A336458(2*n+3))+A347886(n+1)`
-/

namespace A248963.P16066609588645649189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353633 (A336458 (2 * n + 3)).toNat + A347886 (n + 1)

end

end A248963.P16066609588645649189

/-!
# A248964: Denominators from expansion of e.g.f. (x^3/3!)/(e^x-1-x-(x^2/2!)).

The programs for A248964, there is no canonical definition to state claims against.
-/

/-! ## A248964.P17076499129061128317

`A327498(A224086(n))`
-/

namespace A248964.P17076499129061128317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A224086 n).toNat

end

end A248964.P17076499129061128317

/-!
# A248971: Triangular array read by rows. T(n,k)=C(k,2)+C(n-k,2),n>=2,1<=k<=floor(n/2).

The programs for A248971, there is no canonical definition to state claims against.
-/

/-! ## A248971.P17921439662928464630

`A367964(A091018(n))`
-/

namespace A248971.P17921439662928464630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367964 (A091018 n).toNat

end

end A248971.P17921439662928464630

/-! ## A248971.P2257432120852356021

`A144216(A274427(n+1))`
-/

namespace A248971.P2257432120852356021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144216 (A274427 (n + 1)).toNat

end

end A248971.P2257432120852356021

/-! ## A248971.P17066835596600158085

`A091018(n)+C(A055087(n), 2)`
-/

namespace A248971.P17066835596600158085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091018 n + (Nat.choose (A055087 n).toNat 2 : ℤ)

end

end A248971.P17066835596600158085

/-! ## A248971.P17108511055030470271

`A144216(lt[n, A038722(n+1)]+1)`
-/

namespace A248971.P17108511055030470271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A248971.P17108511055030470271

/-! ## A248971.P10672372418912446506

`A271647(n+1)-A350634(n+1)+n`
-/

namespace A248971.P10672372418912446506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271647 (n + 1) - A350634 (n + 1) + (n : ℤ)

end

end A248971.P10672372418912446506

/-! ## A248971.P4015255643213155616

`A002620(A122196(n+1))+n-floor(sqrt(n))`
-/

namespace A248971.P4015255643213155616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A122196 (n + 1)).toNat + ((n : ℤ) - (Nat.sqrt n : ℤ))

end

end A248971.P4015255643213155616

/-! ## A248971.P12468150240667896654

`A091018(n)+A033441(A055087(n))`
-/

namespace A248971.P12468150240667896654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091018 n + A033441 (A055087 n).toNat

end

end A248971.P12468150240667896654

/-! ## A248971.P17159780822082381059

`A028391(n)+A008733(A152204(n))`
-/

namespace A248971.P17159780822082381059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n + A008733 (A152204 n).toNat

end

end A248971.P17159780822082381059

/-! ## A248971.P10126428641953783035

`A028391(n)+A002620(A122196(n+1))`
-/

namespace A248971.P10126428641953783035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n + A002620 (A122196 (n + 1)).toNat

end

end A248971.P10126428641953783035

/-! ## A248971.P14965171809334508719

`A056536(n+1)-A080956(A055087(n))`
-/

namespace A248971.P14965171809334508719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056536 (n + 1) - A080956 (A055087 n).toNat

end

end A248971.P14965171809334508719

/-!
# A248972: a(n) is the smallest b such that b^((p-1)/2) == -1 (mod p) where p = A080076(n) is the n-th Proth prime.

The programs for A248972, there is no canonical definition to state claims against.
-/

/-! ## A248972.P17883910195066375189

`A020649(A080076(n+1))`
-/

namespace A248972.P17883910195066375189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (A080076 (n + 1)).toNat

end

end A248972.P17883910195066375189

/-! ## A248972.P16920893373184451811

`A227196(p?[A080075(n+1)])`
-/

namespace A248972.P16920893373184451811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A248972.P16920893373184451811

/-! ## A248972.P9074845639696248723

`A227196(p?[A112714(n+1)+2])`
-/

namespace A248972.P9074845639696248723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A248972.P9074845639696248723

/-! ## A248972.P15632379499116457735

`A227196(p?[A116882(n+2)+1])`
-/

namespace A248972.P15632379499116457735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116882 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A248972.P15632379499116457735

/-! ## A248972.P2971667732248796395

`A227196(record[A006530(A080075(n+1))])`
-/

namespace A248972.P2971667732248796395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A080075 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A248972.P2971667732248796395

/-! ## A248972.P7067613910336415843

`A227196(record[A020639(A080075(n+1))])`
-/

namespace A248972.P7067613910336415843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A080075 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A248972.P7067613910336415843

/-!
# A248974: Floor( 1/(n*sinh(1/n) + n*sin(1/n) - 2) ).

The programs for A248974, the canonical program `A248974.P1695471185607134810` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248974 has offset 1).

The definition of A248974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248974.P1695471185607134810

`60*(n+1)^4-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A248974

/-- `60*(n+1)^4-1` -/
def P1695471185607134810.Spec : Prop :=
  ∀ n, P1695471185607134810.a n = A248974 (n + 1)

theorem P1695471185607134810.correct : P1695471185607134810.Spec := by
  intro n
  simp only [A248974, Nat.add_sub_cancel]

end A248974

/-! ## A248974.P17061250284919024320

`or(1, 60*(n+1)²²-1)`
-/

namespace A248974.P17061250284919024320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((60 * ((n + 1) ^ 2) ^ 2 : ℤ) - 1)

end

end A248974.P17061250284919024320

namespace A248974

/-- `or(1, 60*(n+1)²²-1)` -/
def P17061250284919024320.Spec : Prop :=
  ∀ n, P17061250284919024320.a n = A248974 (n + 1)

end A248974

/-! ## A248974.P9452283641769992655

`(60*(n+1)²²-1)%(60*(n+1)²²)`
-/

namespace A248974.P9452283641769992655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((60 * ((n + 1) ^ 2) ^ 2 : ℤ) - 1) (60 * ((n + 1) ^ 2) ^ 2 : ℤ)

end

end A248974.P9452283641769992655

namespace A248974

/-- `(60*(n+1)²²-1)%(60*(n+1)²²)` -/
def P9452283641769992655.Spec : Prop :=
  ∀ n, P9452283641769992655.a n = A248974 (n + 1)

end A248974

/-! ## A248974.P6353533255880387097

`abs(60*(n+1)²²-A000005(gcd(n, n+1)))`
-/

namespace A248974.P6353533255880387097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(60 * ((n + 1) ^ 2) ^ 2 : ℤ) - A000005 (Nat.gcd n (n + 1))|

end

end A248974.P6353533255880387097

namespace A248974

/-- `abs(60*(n+1)²²-A000005(gcd(n, n+1)))` -/
def P6353533255880387097.Spec : Prop :=
  ∀ n, P6353533255880387097.a n = A248974 (n + 1)

end A248974

/-! ## A248974.P17633559250055805340

`(60*(n+1)²²-1)*A166486(2*n+1)`
-/

namespace A248974.P17633559250055805340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((60 * ((n + 1) ^ 2) ^ 2 : ℤ) - 1) * A166486 (2 * n + 1)

end

end A248974.P17633559250055805340

namespace A248974

/-- `(60*(n+1)²²-1)*A166486(2*n+1)` -/
def P17633559250055805340.Spec : Prop :=
  ∀ n, P17633559250055805340.a n = A248974 (n + 1)

end A248974

/-! ## A248974.P7629860212031768619

`(A309336(4*(n+1))-4)/4`
-/

namespace A248974.P7629860212031768619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309336 (4 * (n + 1)) - 4 : ℚ) / 4

end

end A248974.P7629860212031768619

namespace A248974

/-- `(A309336(4*(n+1))-4)/4` -/
def P7629860212031768619.Spec : Prop :=
  ∀ n, P7629860212031768619.a n = (A248974 (n + 1) : ℚ)

end A248974

/-! ## A248974.P5213320048195567158

`abs(A165326(A030511(n+3))+60*(n+1)²²)`
-/

namespace A248974.P5213320048195567158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165326 (A030511 (n + 3)).toNat + (60 * ((n + 1) ^ 2) ^ 2 : ℤ)|

end

end A248974.P5213320048195567158

namespace A248974

/-- `abs(A165326(A030511(n+3))+60*(n+1)²²)` -/
def P5213320048195567158.Spec : Prop :=
  ∀ n, P5213320048195567158.a n = A248974 (n + 1)

end A248974

/-! ## A248974.P3344860441903686090

`A158670((n+1)²)`
-/

namespace A248974.P3344860441903686090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158670 ((n + 1) ^ 2)

end

end A248974.P3344860441903686090

namespace A248974

/-- `A158670((n+1)²)` -/
def P3344860441903686090.Spec : Prop :=
  ∀ n, P3344860441903686090.a n = A248974 (n + 1)

end A248974

/-! ## A248974.P975784812803781375

`abs(2-A158673((n+1)²))`
-/

namespace A248974.P975784812803781375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A158673 ((n + 1) ^ 2)|

end

end A248974.P975784812803781375

namespace A248974

/-- `abs(2-A158673((n+1)²))` -/
def P975784812803781375.Spec : Prop :=
  ∀ n, P975784812803781375.a n = A248974 (n + 1)

end A248974

/-! ## A248974.P688630307244812925

`abs(1-10*A033581((n+1)²))`
-/

namespace A248974.P688630307244812925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 10 * A033581 ((n + 1) ^ 2)|

end

end A248974.P688630307244812925

namespace A248974

/-- `abs(1-10*A033581((n+1)²))` -/
def P688630307244812925.Spec : Prop :=
  ∀ n, P688630307244812925.a n = A248974 (n + 1)

end A248974

/-! ## A248974.P17951362748203064276

`record[A158670(A304101(n)²)]`
-/

namespace A248974.P17951362748203064276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158670 (A304101 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248974.P17951362748203064276

namespace A248974

/-- `record[A158670(A304101(n)²)]` -/
def P17951362748203064276.Spec : Prop :=
  ∀ n, P17951362748203064276.a n = A248974 (n + 1)

end A248974

/-! ## A248974.P14814112698171410543

`record[A158670(A055461(n+1))]`
-/

namespace A248974.P14814112698171410543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158670 (A055461 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248974.P14814112698171410543

namespace A248974

/-- `record[A158670(A055461(n+1))]` -/
def P14814112698171410543.Spec : Prop :=
  ∀ n, P14814112698171410543.a n = A248974 (n + 1)

end A248974

/-!
# A248984: Number of length n+4 0..5 arrays with every five consecutive terms having two times the sum of some three elements equal to three times the sum of the remaining two.

The programs for A248984, there is no canonical definition to state claims against.
-/

/-! ## A248984.P1831533370727472978

`A248987(∑[n+5]+6)`
-/

namespace A248984.P1831533370727472978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A248984.P1831533370727472978

/-! ## A248984.P6246386859220804995

`or(2, A248987(A046691(n+3)))`
-/

namespace A248984.P6246386859220804995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A248987 (A046691 (n + 3)).toNat)

end

end A248984.P6246386859220804995

/-! ## A248984.P5986397585047221082

`A248987(A046691(n+3))+A000035(2*n)`
-/

namespace A248984.P5986397585047221082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A046691 (n + 3)).toNat + A000035 (2 * n)

end

end A248984.P5986397585047221082

/-! ## A248984.P18167485734473988911

`A248987(A046691(n+3))%A248985(n+1)`
-/

namespace A248984.P18167485734473988911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248987 (A046691 (n + 3)).toNat) (A248985 (n + 1))

end

end A248984.P18167485734473988911

/-! ## A248984.P596542746813168169

`A248987(A046691(n+3))+n*A000007(n)`
-/

namespace A248984.P596542746813168169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A046691 (n + 3)).toNat + (n : ℤ) * A000007 n

end

end A248984.P596542746813168169

/-! ## A248984.P16430308369723547577

`A248987(A046691(n+3))+char[A274297(n+1)]`
-/

namespace A248984.P16430308369723547577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274297 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A248984.P16430308369723547577

/-! ## A248984.P17806434314892037869

`A248987(A046691(n+3))+char[A291269(n+1)]`
-/

namespace A248984.P17806434314892037869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291269 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A248984.P17806434314892037869

/-! ## A248984.P4032816081242024748

`A014963(A086005(n+1))*A248987(A046691(n+3))`
-/

namespace A248984.P4032816081242024748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A086005 (n + 1)).toNat * A248987 (A046691 (n + 3)).toNat

end

end A248984.P4032816081242024748

/-!
# A248985: Number of length n+4 0..6 arrays with every five consecutive terms having two times the sum of some three elements equal to three times the sum of the remaining two.

The programs for A248985, there is no canonical definition to state claims against.
-/

/-! ## A248985.P11096675203862991148

`A248987(∑[n+6]+10)`
-/

namespace A248985.P11096675203862991148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A248985.P11096675203862991148

/-! ## A248985.P4754787595271693188

`or(1, A248987(Δ[A023551(n+1)]+1))`
-/

namespace A248985.P4754787595271693188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A248987 (f1 (n + 1) - f1 n + 1).toNat)

end

end A248985.P4754787595271693188

/-! ## A248985.P5698892105244499767

`A248987(Δ[A023551(n+1)]+1)%A248986(n+1)`
-/

namespace A248985.P5698892105244499767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248987 (f1 (n + 1) - f1 n + 1).toNat) (A248986 (n + 1))

end

end A248985.P5698892105244499767

/-! ## A248985.P6672573573768631695

`A061346(n+1)²%2*A248987(Δ[A023551(n+1)]+1)`
-/

namespace A248985.P6672573573768631695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061346 (n + 1) ^ 2) 2 * A248987 (f1 (n + 1) - f1 n + 1).toNat

end

end A248985.P6672573573768631695

/-! ## A248985.P16672100221438068112

`A003617(n+2)²%2*A248987(Δ[A023551(n+1)]+1)`
-/

namespace A248985.P16672100221438068112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003617 (n + 2) ^ 2) 2 * A248987 (f1 (n + 1) - f1 n + 1).toNat

end

end A248985.P16672100221438068112

/-!
# A248986: Number of length n+4 0..7 arrays with every five consecutive terms having two times the sum of some three elements equal to three times the sum of the remaining two.

The programs for A248986, there is no canonical definition to state claims against.
-/

/-! ## A248986.P16034178071914605685

`A248987(A055999(n+4))`
-/

namespace A248986.P16034178071914605685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A055999 (n + 4)).toNat

end

end A248986.P16034178071914605685

/-! ## A248986.P6885487642370790834

`A248987(Δ[A023551(n+2)])`
-/

namespace A248986.P6885487642370790834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (f1 (n + 1) - f1 n).toNat

end

end A248986.P6885487642370790834

/-! ## A248986.P7133839709590967452

`A248987(A155212(n+3)+2)`
-/

namespace A248986.P7133839709590967452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A155212 (n + 3) + 2).toNat

end

end A248986.P7133839709590967452

/-! ## A248986.P6027081659666505067

`A248987(A052905(n+4)-1)`
-/

namespace A248986.P6027081659666505067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A052905 (n + 4) - 1).toNat

end

end A248986.P6027081659666505067

/-! ## A248986.P14203696492877704714

`A248987(A000096(n+6)-5)`
-/

namespace A248986.P14203696492877704714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A000096 (n + 6) - 5).toNat

end

end A248986.P14203696492877704714

/-! ## A248986.P1889285115931054610

`A248987(A000124(n+7)-7)`
-/

namespace A248986.P1889285115931054610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A000124 (n + 7) - 7).toNat

end

end A248986.P1889285115931054610

/-! ## A248986.P7822727185865301333

`A248987(A000217(n+6)+n+1)`
-/

namespace A248986.P7822727185865301333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A248986.P7822727185865301333

/-! ## A248986.P7171772958731117236

`A248987(A055998(n+6)-(n+11))`
-/

namespace A248986.P7171772958731117236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A055998 (n + 6) - (n + 11 : ℤ)).toNat

end

end A248986.P7171772958731117236

/-!
# A248987: T(n,k)=Number of length n+4 0..k arrays with every five consecutive terms having two times the sum of some three elements equal to three times the sum of the remaining two.

The programs for A248987, there is no canonical definition to state claims against.
-/

/-! ## A248987.P4400732112280990245

`A248988(A004736(n+1)%A263579(n))`
-/

namespace A248987.P4400732112280990245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248988 (Int.tmod (A004736 (n + 1)) (A263579 n)).toNat

end

end A248987.P4400732112280990245

/-! ## A248987.P11289020525253601819

`A248988(A167289(n+1)%A263579(n))`
-/

namespace A248987.P11289020525253601819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248988 (Int.tmod (A167289 (n + 1)) (A263579 n)).toNat

end

end A248987.P11289020525253601819

/-!
# A248988: Number of length 1+4 0..n arrays with every five consecutive terms having two times the sum of some three elements equal to three times the sum of the remaining two.

The programs for A248988, there is no canonical definition to state claims against.
-/

/-! ## A248988.P2014453645640265915

`(n+2)^5-A249002(n+1)`
-/

namespace A248988.P2014453645640265915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 5 : ℤ) - A249002 (n + 1)

end

end A248988.P2014453645640265915

/-! ## A248988.P10385886934370416991

`A248987(∑[n]+1)`
-/

namespace A248988.P10385886934370416991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A248988.P10385886934370416991

/-! ## A248988.P6784941379097470386

`record[A248987(A114091(n+1))]`
-/

namespace A248988.P6784941379097470386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248988.P6784941379097470386

/-! ## A248988.P8945943765691432439

`record[A248987(A254052(n+1))]`
-/

namespace A248988.P8945943765691432439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248988.P8945943765691432439

/-! ## A248988.P1214861291578700367

`record[A248987(A278512(n+2)-1)]`
-/

namespace A248988.P1214861291578700367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A278512 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248988.P1214861291578700367

/-! ## A248988.P15601134890350250998

`record[or(A248952(n), A248987(n+1))]`
-/

namespace A248988.P15601134890350250998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A248952 n) (A248987 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248988.P15601134890350250998

/-! ## A248988.P1082454645186714210

`record[(1-A271439(n))*A248987(n+1)]`
-/

namespace A248988.P1082454645186714210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A271439 n) * A248987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248988.P1082454645186714210

/-!
# A248989: Number of length 2+4 0..n arrays with every five consecutive terms having two times the sum of some three elements equal to three times the sum of the remaining two.

The programs for A248989, there is no canonical definition to state claims against.
-/

/-! ## A248989.P13209463328488838854

`A249003(n+1)%(A248988(n+1)-A249002(n+1))`
-/

namespace A248989.P13209463328488838854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249003 (n + 1)) (A248988 (n + 1) - A249002 (n + 1))

end

end A248989.P13209463328488838854

/-! ## A248989.P10391481079567751145

`A248987(∑[n+1]+2)`
-/

namespace A248989.P10391481079567751145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A248989.P10391481079567751145

/-! ## A248989.P11146365912096436188

`record[A248987(A278512(n+1))]`
-/

namespace A248989.P11146365912096436188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A278512 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248989.P11146365912096436188

/-! ## A248989.P6477348099810344700

`record[A248987(A133263(n)-n)]`
-/

namespace A248989.P6477348099810344700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A133263 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248989.P6477348099810344700

/-! ## A248989.P14967900679940572287

`record[A248987(A133263(A271439(n)))]`
-/

namespace A248989.P14967900679940572287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A133263 (A271439 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248989.P14967900679940572287

/-! ## A248989.P10978052162936693162

`A158388(n+1)*A248987(A167499(n)-3)`
-/

namespace A248989.P10978052162936693162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (n + 1) * A248987 (A167499 n - 3).toNat

end

end A248989.P10978052162936693162

/-!
# A248990: Number of length 3+4 0..n arrays with every five consecutive terms having two times the sum of some three elements equal to three times the sum of the remaining two.

The programs for A248990, there is no canonical definition to state claims against.
-/

/-! ## A248990.P1820016568383290325

`A248987(∑[n+2]+4)`
-/

namespace A248990.P1820016568383290325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A248990.P1820016568383290325

/-! ## A248990.P13026255983394731631

`record[A248987(A254052(n+1)+2)]`
-/

namespace A248990.P13026255983394731631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A254052 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248990.P13026255983394731631

/-! ## A248990.P9409530443335038888

`or(A000035(n), A248987(A167614(n+1)))`
-/

namespace A248990.P9409530443335038888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A248987 (A167614 (n + 1)).toNat)

end

end A248990.P9409530443335038888

/-! ## A248990.P17290504051810424620

`A248987(A167614(n+1))+A000007(n+1)`
-/

namespace A248990.P17290504051810424620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A248990.P17290504051810424620

/-! ## A248990.P16385341472305510264

`A248987(A167614(n+1))+A000035(2*n)`
-/

namespace A248990.P16385341472305510264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A248990.P16385341472305510264

/-! ## A248990.P7992604698730014250

`A248987(A027379(n)+6)%A020449(n+1)`
-/

namespace A248990.P7992604698730014250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248987 (A027379 n + 6).toNat) (A020449 (n + 1))

end

end A248990.P7992604698730014250

/-! ## A248990.P6131405114212539461

`A248987(A046691(n)+7)%A016746(n+1)`
-/

namespace A248990.P6131405114212539461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248987 (A046691 n + 7).toNat) (A016746 (n + 1))

end

end A248990.P6131405114212539461

/-! ## A248990.P11470685794059993262

`A047884(or(n, -2)²)*A248987(A167614(n+1))`
-/

namespace A248990.P11470685794059993262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (Int.lor (n : ℤ) (-2) ^ 2).toNat * A248987 (A167614 (n + 1)).toNat

end

end A248990.P11470685794059993262

/-! ## A248990.P17494831872615144260

`A007318(A000217(n))*A248987(A167614(n+1))`
-/

namespace A248990.P17494831872615144260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A248987 (A167614 (n + 1)).toNat

end

end A248990.P17494831872615144260

/-!
# A248991: Number of length 4+4 0..n arrays with every five consecutive terms having two times the sum of some three elements equal to three times the sum of the remaining two.

The programs for A248991, there is no canonical definition to state claims against.
-/

/-! ## A248991.P2593402191575634145

`A248987(∑[n+3]+7)`
-/

namespace A248991.P2593402191575634145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A248991.P2593402191575634145

/-!
# A248992: Number of length 5+4 0..n arrays with every five consecutive terms having two times the sum of some three elements equal to three times the sum of the remaining two.

The programs for A248992, there is no canonical definition to state claims against.
-/

/-! ## A248992.P14290753803308822513

`A248987(A167499(n+3))`
-/

namespace A248992.P14290753803308822513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A167499 (n + 3)).toNat

end

end A248992.P14290753803308822513

/-! ## A248992.P4296466262027415569

`A248987(A155212(n)+13)`
-/

namespace A248992.P4296466262027415569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A155212 n + 13).toNat

end

end A248992.P4296466262027415569

/-! ## A248992.P16042584227962527568

`A248987(A056000(n)+15)`
-/

namespace A248992.P16042584227962527568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A056000 n + 15).toNat

end

end A248992.P16042584227962527568

/-! ## A248992.P15192729088878869016

`A248987(A161680(n+5)+5)`
-/

namespace A248992.P15192729088878869016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A161680 (n + 5) + 5).toNat

end

end A248992.P15192729088878869016

/-! ## A248992.P12941028715146428355

`A248987(A055999(n+3)-2*n)`
-/

namespace A248992.P12941028715146428355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A248992.P12941028715146428355

/-!
# A248993: Number of length 6+4 0..n arrays with every five consecutive terms having two times the sum of some three elements equal to three times the sum of the remaining two.

The programs for A248993, there is no canonical definition to state claims against.
-/

/-! ## A248993.P14267441979255443370

`A248987(A166136(n+4))`
-/

namespace A248993.P14267441979255443370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A166136 (n + 4)).toNat

end

end A248993.P14267441979255443370

/-! ## A248993.P9286265752560408988

`A248987(A167499(n+4)+1)`
-/

namespace A248993.P9286265752560408988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A167499 (n + 4) + 1).toNat

end

end A248993.P9286265752560408988

/-! ## A248993.P13573494029284560980

`A248987(A000217(n+5)+6)`
-/

namespace A248993.P13573494029284560980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A000217 (n + 5) + 6).toNat

end

end A248993.P13573494029284560980

/-! ## A248993.P9645670695075593514

`A248987(A000124(n+6)-(n+1))`
-/

namespace A248993.P9645670695075593514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A248993.P9645670695075593514

/-! ## A248993.P16315230347208281989

`A248987(A055998(n+2)+A020723(n+5))`
-/

namespace A248993.P16315230347208281989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A055998 (n + 2) + A020723 (n + 5)).toNat

end

end A248993.P16315230347208281989

/-!
# A248994: Number of length 7+4 0..n arrays with every five consecutive terms having two times the sum of some three elements equal to three times the sum of the remaining two.

The programs for A248994, there is no canonical definition to state claims against.
-/

/-! ## A248994.P4808883332577627185

`A248987(A000124(n+6)+6)`
-/

namespace A248994.P4808883332577627185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A000124 (n + 6) + 6).toNat

end

end A248994.P4808883332577627185

/-! ## A248994.P5124665430332649788

`A248987(A000217(n+6)+7)`
-/

namespace A248994.P5124665430332649788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A000217 (n + 6) + 7).toNat

end

end A248994.P5124665430332649788

/-! ## A248994.P3166668613431232640

`A248987(A027379(n+4)+10)`
-/

namespace A248994.P3166668613431232640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A027379 (n + 4) + 10).toNat

end

end A248994.P3166668613431232640

/-! ## A248994.P3586138648704965419

`A248987(A155212(n+2)+15)`
-/

namespace A248994.P3586138648704965419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A155212 (n + 2) + 15).toNat

end

end A248994.P3586138648704965419

/-! ## A248994.P1773833820182794023

`A248987(eq[6, A002262(n)]+1)`
-/

namespace A248994.P1773833820182794023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A248994.P1773833820182794023

/-! ## A248994.P8122432732457977277

`A248987(A133263(n+4)+2*(n+8))`
-/

namespace A248994.P8122432732457977277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A133263 (n + 4) + (2 * (n + 8) : ℤ)).toNat

end

end A248994.P8122432732457977277

/-! ## A248994.P5440114121586919752

`A248987(A055998(n+3)+A020723(n+7))`
-/

namespace A248994.P5440114121586919752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248987 (A055998 (n + 3) + A020723 (n + 7)).toNat

end

end A248994.P5440114121586919752

/-!
# A248995: Number of length n+4 0..2 arrays with no five consecutive terms having two times the sum of any three elements equal to three times the sum of the remaining two.

The programs for A248995, there is no canonical definition to state claims against.
-/

/-! ## A248995.P8529633139357955985

`A249001(∑[n+2])`
-/

namespace A248995.P8529633139357955985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248995.P8529633139357955985

/-! ## A248995.P1536227964504869193

`A249466(∑[n+2])`
-/

namespace A248995.P1536227964504869193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248995.P1536227964504869193

/-! ## A248995.P17607500941923099896

`record[A249466(A101881(n)+1)]`
-/

namespace A248995.P17607500941923099896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248995.P17607500941923099896

/-! ## A248995.P14665257255308429306

`record[A249001(A000096(A126759(n)))]`
-/

namespace A248995.P14665257255308429306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248995.P14665257255308429306

/-! ## A248995.P1884178426902340344

`record[A249001(A000096(A002260(n+1)))]`
-/

namespace A248995.P1884178426902340344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248995.P1884178426902340344

/-! ## A248995.P15799872961762751810

`record[A249466(A000096(A054576(n+1)))]`
-/

namespace A248995.P15799872961762751810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (A000096 (A054576 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248995.P15799872961762751810

/-! ## A248995.P2540361170005611317

`record[A249466(A000096(A094727(n+1)))]`
-/

namespace A248995.P2540361170005611317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (A000096 (A094727 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248995.P2540361170005611317

/-!
# A248996: Number of length n+4 0..3 arrays with no five consecutive terms having two times the sum of any three elements equal to three times the sum of the remaining two.

The programs for A248996, there is no canonical definition to state claims against.
-/

/-! ## A248996.P4114898579750168171

`A249001(∑[n+3]+1)`
-/

namespace A248996.P4114898579750168171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A248996.P4114898579750168171

/-! ## A248996.P3433638199283086659

`lcm(2, A249001(Δ[A008778(n)]))`
-/

namespace A248996.P3433638199283086659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249001 (f1 (n + 1) - f1 n).toNat)

end

end A248996.P3433638199283086659

/-! ## A248996.P12143879383953331826

`A249001(Δ[A008778(n)])%A246887(n+1)`
-/

namespace A248996.P12143879383953331826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249001 (f1 (n + 1) - f1 n).toNat) (A246887 (n + 1))

end

end A248996.P12143879383953331826

/-! ## A248996.P613564648872104611

`A009001(2*n)²*A249001(Δ[A008778(n)])`
-/

namespace A248996.P613564648872104611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) ^ 2 * A249001 (f1 (n + 1) - f1 n).toNat

end

end A248996.P613564648872104611

/-! ## A248996.P12269019070978541276

`A000005(((-1)^n)²)*A249001(Δ[A008778(n)])`
-/

namespace A248996.P12269019070978541276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((-1) ^ n) ^ 2).toNat * A249001 (f1 (n + 1) - f1 n).toNat

end

end A248996.P12269019070978541276

/-!
# A248997: Number of length n+4 0..4 arrays with no five consecutive terms having two times the sum of any three elements equal to three times the sum of the remaining two.

The programs for A248997, there is no canonical definition to state claims against.
-/

/-! ## A248997.P7362569622545768712

`A249001(A055998(n+2))`
-/

namespace A248997.P7362569622545768712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A055998 (n + 2)).toNat

end

end A248997.P7362569622545768712

/-! ## A248997.P2524424711125953267

`A249001(A155212(n)+5)`
-/

namespace A248997.P2524424711125953267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A155212 n + 5).toNat

end

end A248997.P2524424711125953267

/-! ## A248997.P12522701282858839352

`A249001(eq[3, A193592(n)])`
-/

namespace A248997.P12522701282858839352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248997.P12522701282858839352

/-! ## A248997.P13446068211579766620

`A249001(Δ[A034857(n+1)])`
-/

namespace A248997.P13446068211579766620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (f1 (n + 1) - f1 n).toNat

end

end A248997.P13446068211579766620

/-! ## A248997.P13684166109133046152

`A249001(A052905(n+1)+2)`
-/

namespace A248997.P13684166109133046152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A052905 (n + 1) + 2).toNat

end

end A248997.P13684166109133046152

/-! ## A248997.P9987121485778911286

`A249001(Δ[A008778(n+1)]-1)`
-/

namespace A248997.P9987121485778911286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (f1 (n + 1) - f1 n - 1).toNat

end

end A248997.P9987121485778911286

/-! ## A248997.P10968292115112842371

`A249001(eq[2, A185782(n+1)-2])`
-/

namespace A248997.P10968292115112842371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248997.P10968292115112842371

/-! ## A248997.P14482446114748342336

`A249001(eq[2, A185782(n+1)/2])`
-/

namespace A248997.P14482446114748342336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185782 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A248997.P14482446114748342336

/-! ## A248997.P16568722508693500856

`A249001(A046691(n)+A020744(n))`
-/

namespace A248997.P16568722508693500856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A046691 n + A020744 n).toNat

end

end A248997.P16568722508693500856

/-! ## A248997.P10924232196545165728

`A249001(A167499(n)+A016777(n))`
-/

namespace A248997.P10924232196545165728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A167499 n + A016777 n).toNat

end

end A248997.P10924232196545165728

/-!
# A248998: Number of length n+4 0..5 arrays with no five consecutive terms having two times the sum of any three elements equal to three times the sum of the remaining two.

The programs for A248998, there is no canonical definition to state claims against.
-/

/-! ## A248998.P11148935446871492190

`A249001(A046691(n+3))`
-/

namespace A248998.P11148935446871492190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A046691 (n + 3)).toNat

end

end A248998.P11148935446871492190

/-! ## A248998.P7019692803940968603

`A249001(eq[4, A193592(n)])`
-/

namespace A248998.P7019692803940968603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248998.P7019692803940968603

/-! ## A248998.P11105985675675450313

`A249001(Δ[A023545(n+1)])`
-/

namespace A248998.P11105985675675450313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (f1 (n + 1) - f1 n).toNat

end

end A248998.P11105985675675450313

/-! ## A248998.P12732941584856720629

`A249001(A052905(n+2)+1)`
-/

namespace A248998.P12732941584856720629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A052905 (n + 2) + 1).toNat

end

end A248998.P12732941584856720629

/-! ## A248998.P727326489772784134

`A249001(A000096(n+4)-3)`
-/

namespace A248998.P727326489772784134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A000096 (n + 4) - 3).toNat

end

end A248998.P727326489772784134

/-! ## A248998.P5234945698345676298

`A249001(A000217(n+5)-4)`
-/

namespace A248998.P5234945698345676298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A000217 (n + 5) - 4).toNat

end

end A248998.P5234945698345676298

/-! ## A248998.P10624819969185757696

`A249001(Δ[A034857(n+2)]-1)`
-/

namespace A248998.P10624819969185757696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (f1 (n + 1) - f1 n - 1).toNat

end

end A248998.P10624819969185757696

/-! ## A248998.P11960591032354368061

`A249001(A167499(n)+4*n+5)`
-/

namespace A248998.P11960591032354368061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A167499 n + (4 * n + 5 : ℤ)).toNat

end

end A248998.P11960591032354368061

/-! ## A248998.P15311001414767764253

`A249001(A038722(A167499(n+3)))`
-/

namespace A248998.P15311001414767764253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A038722 (A167499 (n + 3)).toNat).toNat

end

end A248998.P15311001414767764253

/-!
# A248999: Number of length n+4 0..6 arrays with no five consecutive terms having two times the sum of any three elements equal to three times the sum of the remaining two.

The programs for A248999, there is no canonical definition to state claims against.
-/

/-! ## A248999.P11472557387344049782

`A249001(A052905(n+3))`
-/

namespace A248999.P11472557387344049782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A052905 (n + 3)).toNat

end

end A248999.P11472557387344049782

/-! ## A248999.P11205984069727195929

`A249001(eq[3, A219347(n)])`
-/

namespace A248999.P11205984069727195929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248999.P11205984069727195929

/-! ## A248999.P14310627660353644045

`A249001(A046691(n+4)-1)`
-/

namespace A248999.P14310627660353644045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A046691 (n + 4) - 1).toNat

end

end A248999.P14310627660353644045

/-! ## A248999.P1236917011978493189

`A249001(A167499(n+5)-10)`
-/

namespace A248999.P1236917011978493189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A167499 (n + 5) - 10).toNat

end

end A248999.P1236917011978493189

/-! ## A248999.P11645308077095784556

`A249001(Δ[A023545(n+2)]-1)`
-/

namespace A248999.P11645308077095784556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (f1 (n + 1) - f1 n - 1).toNat

end

end A248999.P11645308077095784556

/-! ## A248999.P11415836081750325554

`A249001(n+1+A000217(n+5))`
-/

namespace A248999.P11415836081750325554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 ((n + 1 : ℤ) + A000217 (n + 5)).toNat

end

end A248999.P11415836081750325554

/-! ## A248999.P6002922233539320309

`A249001(A016777(n+3)+A008805(2*(n+2)))`
-/

namespace A248999.P6002922233539320309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A016777 (n + 3) + A008805 (2 * (n + 2))).toNat

end

end A248999.P6002922233539320309

