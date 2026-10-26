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
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A073400: Coefficient triangle of polynomials (falling powers) related to convolutions of A001045(n+1), n >= 0, (generalized (1,2)-Fibonacci). Companion triangle is A073399.

The programs for A073400, there is no canonical definition to state claims against.
-/

/-! ## A073400.P11270464766931210422

`A073402(∑[2*n]%comp[∑[n]])`
-/

namespace A073400.P11270464766931210422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073402 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A073400.P11270464766931210422

/-! ## A073400.P11858922770206187428

`A073402(∑[char[∑[n]]]²-n-1)`
-/

namespace A073400.P11858922770206187428
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073402 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A073400.P11858922770206187428

/-! ## A073400.P1020886428263249011

`and(-1, A073402(A061579(n)))`
-/

namespace A073400.P1020886428263249011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A073402 (A061579 n).toNat)

end

end A073400.P1020886428263249011

/-! ## A073400.P2339359984419073329

`A073402(A061579(n))+A000035(2*(n+2))`
-/

namespace A073400.P2339359984419073329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073402 (A061579 n).toNat + A000035 (2 * (n + 2))

end

end A073400.P2339359984419073329

/-! ## A073400.P12982147184676385808

`A073402(A061579(n))%A301554(3*(n+1))`
-/

namespace A073400.P12982147184676385808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073402 (A061579 n).toNat) (A301554 (3 * (n + 1)))

end

end A073400.P12982147184676385808

/-! ## A073400.P13496848341077042587

`A073402(A061579(n))%A010036(n+2)`
-/

namespace A073400.P13496848341077042587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073402 (A061579 n).toNat) (A010036 (n + 2))

end

end A073400.P13496848341077042587

/-!
# A073401: Coefficient triangle of polynomials (rising powers) related to convolutions of A001045(n+1), n >= 0, (generalized (1,2)-Fibonacci). Companion triangle is A073402.

The programs for A073401, there is no canonical definition to state claims against.
-/

/-! ## A073401.P7766396301067630539

`A073399(∑[2*n]%comp[∑[n]])`
-/

namespace A073401.P7766396301067630539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073399 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A073401.P7766396301067630539

/-! ## A073401.P11148432402078462129

`A073399(∑[char[∑[n]]]²-n-1)`
-/

namespace A073401.P11148432402078462129
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073399 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A073401.P11148432402078462129

/-! ## A073401.P7968197350300149670

`and(-1, A073399(A061579(n)))`
-/

namespace A073401.P7968197350300149670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A073399 (A061579 n).toNat)

end

end A073401.P7968197350300149670

/-! ## A073401.P12219604571948267232

`A073399(A061579(n))+A007949(3*n+2)`
-/

namespace A073401.P12219604571948267232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073399 (A061579 n).toNat + A007949 (3 * n + 2)

end

end A073401.P12219604571948267232

/-! ## A073401.P15991075226854173033

`A073399(A061579(n))%A073379(n+3)`
-/

namespace A073401.P15991075226854173033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073399 (A061579 n).toNat) (A073379 (n + 3))

end

end A073401.P15991075226854173033

/-!
# A073402: Coefficient triangle of polynomials (rising powers) related to convolutions of A001045(n+1), n >= 0, (generalized (1,2)-Fibonacci). Companion triangle is A073401.

The programs for A073402, there is no canonical definition to state claims against.
-/

/-! ## A073402.P13710916757050279696

`A073400(∑[2*n]%comp[∑[n]])`
-/

namespace A073402.P13710916757050279696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073400 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A073402.P13710916757050279696

/-! ## A073402.P8816021724856461415

`A073400(∑[char[∑[n]]]²-(n+1))`
-/

namespace A073402.P8816021724856461415
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073400 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A073402.P8816021724856461415

/-! ## A073402.P4041105682590263990

`and(-1, A073400(A061579(n)))`
-/

namespace A073402.P4041105682590263990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A073400 (A061579 n).toNat)

end

end A073402.P4041105682590263990

/-! ## A073402.P429544338379371087

`A073400(A061579(n))+A007949(3*n+1)`
-/

namespace A073402.P429544338379371087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073400 (A061579 n).toNat + A007949 (3 * n + 1)

end

end A073402.P429544338379371087

/-! ## A073402.P12520186570797467209

`A073400(A061579(n))%A001787(2*(n+2))`
-/

namespace A073402.P12520186570797467209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073400 (A061579 n).toNat) (A001787 (2 * (n + 2)))

end

end A073402.P12520186570797467209

/-!
# A073403: Coefficient triangle of polynomials (falling powers) related to convolutions of A002605(n), n>=0, (generalized (2,2)-Fibonacci). Companion triangle is A073404.

The programs for A073403, there is no canonical definition to state claims against.
-/

/-! ## A073403.P9225546246181771655

`A073405(∑[2*n]%comp[∑[n]])`
-/

namespace A073403.P9225546246181771655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073405 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A073403.P9225546246181771655

/-! ## A073403.P2698736305791142844

`A073405(∑[char[∑[n]]]²-n-1)`
-/

namespace A073403.P2698736305791142844
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073405 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A073403.P2698736305791142844

/-! ## A073403.P1119673860682043625

`gcd(C(2, n+2), A073405(A061579(n)))`
-/

namespace A073403.P1119673860682043625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A073405 (A061579 n).toNat)

end

end A073403.P1119673860682043625

/-! ## A073403.P6001281097055673867

`gcd(A000038(n), A073405(A061579(n)))`
-/

namespace A073403.P6001281097055673867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A073405 (A061579 n).toNat)

end

end A073403.P6001281097055673867

/-! ## A073403.P15854750569960990356

`A073405(A061579(n))%A073985(n+3)`
-/

namespace A073403.P15854750569960990356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073405 (A061579 n).toNat) (A073985 (n + 3))

end

end A073403.P15854750569960990356

/-!
# A073404: Coefficient triangle of polynomials (falling powers) related to convolutions of A002605(n), n>=0, (generalized (2,2)-Fibonacci). Companion triangle is A073403.

The programs for A073404, there is no canonical definition to state claims against.
-/

/-! ## A073404.P17562277805540134897

`A073406(∑[2*n]%comp[∑[n]])`
-/

namespace A073404.P17562277805540134897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073406 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A073404.P17562277805540134897

/-! ## A073404.P7953922273246825929

`A073406(∑[char[∑[n]]]²-(n+1))`
-/

namespace A073404.P7953922273246825929
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073406 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A073404.P7953922273246825929

/-! ## A073404.P2073887590276281054

`lcm(2, A073406(A061579(n)))`
-/

namespace A073404.P2073887590276281054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A073406 (A061579 n).toNat)

end

end A073404.P2073887590276281054

/-! ## A073404.P7604402383845156798

`gcd(A000038(n), A073406(A061579(n)))`
-/

namespace A073404.P7604402383845156798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A073406 (A061579 n).toNat)

end

end A073404.P7604402383845156798

/-! ## A073404.P15415940311514812237

`A010685(2*n)*A073406(A061579(n))`
-/

namespace A073404.P15415940311514812237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (2 * n) * A073406 (A061579 n).toNat

end

end A073404.P15415940311514812237

/-!
# A073405: Coefficient triangle of polynomials (rising powers) related to convolutions of A002605(n), n >= 0, (generalized (2,2)-Fibonacci). Companion triangle is A073406.

The programs for A073405, there is no canonical definition to state claims against.
-/

/-! ## A073405.P8004320898930120156

`A073403(∑[2*n]%comp[∑[n]])`
-/

namespace A073405.P8004320898930120156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073403 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A073405.P8004320898930120156

/-! ## A073405.P448669560232518557

`A073403(∑[char[∑[n]]]²-(n+1))`
-/

namespace A073405.P448669560232518557
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073403 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A073405.P448669560232518557

/-! ## A073405.P8269857304081376469

`gcd(A000038(n), A073403(A061579(n)))`
-/

namespace A073405.P8269857304081376469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A073403 (A061579 n).toNat)

end

end A073405.P8269857304081376469

/-! ## A073405.P18382425014481049645

`lcm(A003842(n), A073403(A061579(n)))`
-/

namespace A073405.P18382425014481049645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003842 n) (A073403 (A061579 n).toNat)

end

end A073405.P18382425014481049645

/-! ## A073405.P14014524360462940868

`A073403(A061579(n))%A001653(n+4)`
-/

namespace A073405.P14014524360462940868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073403 (A061579 n).toNat) (A001653 (n + 4))

end

end A073405.P14014524360462940868

/-!
# A073406: Coefficient triangle of polynomials (rising powers) related to convolutions of A002605(n), n>=0, (generalized (2,2)-Fibonacci). Companion triangle is A073405.

The programs for A073406, there is no canonical definition to state claims against.
-/

/-! ## A073406.P1646357605166066785

`A073404(∑[2*n]%comp[∑[n]])`
-/

namespace A073406.P1646357605166066785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073404 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A073406.P1646357605166066785

/-! ## A073406.P3844740033281088224

`A073404(∑[char[∑[n]]]²-n-1)`
-/

namespace A073406.P3844740033281088224
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073404 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A073406.P3844740033281088224

/-! ## A073406.P2943101464320875795

`lcm(2, A073404(A061579(n)))`
-/

namespace A073406.P2943101464320875795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A073404 (A061579 n).toNat)

end

end A073406.P2943101464320875795

/-! ## A073406.P5483346651784162063

`gcd(A000038(n), A073404(A061579(n)))`
-/

namespace A073406.P5483346651784162063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A073404 (A061579 n).toNat)

end

end A073406.P5483346651784162063

/-! ## A073406.P7461402039232772973

`A073404(A061579(n))+A000007(n+1)`
-/

namespace A073406.P7461402039232772973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073404 (A061579 n).toNat + A000007 (n + 1)

end

end A073406.P7461402039232772973

/-!
# A073407: Let phi_m(x) denote the Euler totient function applied m times to x. Sequence gives the minimum number of iterations m such that phi_m(n) divides n.

The programs for A073407, there is no canonical definition to state claims against.
-/

/-! ## A073407.P9361186561903674334

`A000005(A000265(n+1)^A336915(n+1))`
-/

namespace A073407.P9361186561903674334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) ^ (A336915 (n + 1) : ℤ))).toNat

end

end A073407.P9361186561903674334

/-! ## A073407.P17418410499167672404

`A270742(A109721(n))+A238845(n)`
-/

namespace A073407.P17418410499167672404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270742 (A109721 n).toNat + A238845 n

end

end A073407.P17418410499167672404

/-! ## A073407.P5069675494383791960

`A336643(2^n)+A008615(A000265(n+1))`
-/

namespace A073407.P5069675494383791960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (2 ^ n) + A008615 (A000265 (n + 1)).toNat

end

end A073407.P5069675494383791960

/-! ## A073407.P12407889870270399022

`A304091(A000032(ceil(3*n/2)))`
-/

namespace A073407.P12407889870270399022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304091 (A000032 ⌈3 * ((n : ℚ) / 2)⌉.toNat).toNat

end

end A073407.P12407889870270399022

/-! ## A073407.P6927129498897114284

`A082647(A060789(n+1)*A164654(n+1))`
-/

namespace A073407.P6927129498897114284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (A060789 (n + 1) * A164654 (n + 1)).toNat

end

end A073407.P6927129498897114284

/-!
# A073408: Let cophi_m(x) denotes the cototient function applied m times to x (cophi(x)=x-phi(x)). Sequence gives the minimum number of iterations m such that cophi_m(n) divides n.

The programs for A073408, there is no canonical definition to state claims against.
-/

/-! ## A073408.P17621448137665738983

`A151613(A133910(n+2))`
-/

namespace A073408.P17621448137665738983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151613 (A133910 (n + 2)).toNat

end

end A073408.P17621448137665738983

/-! ## A073408.P9110992255017342663

`A220517(A133910(n+2)+1)`
-/

namespace A073408.P9110992255017342663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220517 (A133910 (n + 2) + 1).toNat

end

end A073408.P9110992255017342663

/-! ## A073408.P175742509905445785

`A353862(2*A133910(n+2))`
-/

namespace A073408.P175742509905445785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353862 (2 * A133910 (n + 2)).toNat

end

end A073408.P175742509905445785

/-! ## A073408.P7223484908130453315

`A036042(gcd(A133910(n+2), A345459(n)))`
-/

namespace A073408.P7223484908130453315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (Int.gcd (A133910 (n + 2)) (A345459 n))

end

end A073408.P7223484908130453315

/-! ## A073408.P8288566829398091996

`or(A280274(n+2), A304570(A097912(2*n+1)))`
-/

namespace A073408.P8288566829398091996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A280274 (n + 2)) (A304570 (A097912 (2 * n + 1)).toNat)

end

end A073408.P8288566829398091996

/-!
# A073409: Largest prime factor of the denominator of the Bernoulli number B(2*n) (A002445).

The programs for A073409, the canonical program `A073409.P17579973830086733601` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073409 has offset 1).

The definition of A073409 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A027762, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073409.P1091416337331459934

`A108077(2*(n+1))`
-/

namespace A073409.P1091416337331459934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108077 (2 * (n + 1))

end

end A073409.P1091416337331459934

namespace A073409

/-- `A108077(2*(n+1))` -/
def P1091416337331459934.Spec : Prop :=
  ∀ n, P1091416337331459934.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P9202276385637863346

`A006530(A002445(n+1))`
-/

namespace A073409.P9202276385637863346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002445 (n + 1)).toNat

end

end A073409.P9202276385637863346

namespace A073409

/-- `A006530(A002445(n+1))` -/
def P9202276385637863346.Spec : Prop :=
  ∀ n, P9202276385637863346.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P17579973830086733601

`A006530(A027762(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A073409

/-- `A006530(A027762(n+1))` -/
def P17579973830086733601.Spec : Prop :=
  ∀ n, P17579973830086733601.a n = A073409 (n + 1)

theorem P17579973830086733601.correct : P17579973830086733601.Spec := by
  intro n
  simp only [A073409, Nat.add_sub_cancel]

end A073409

/-! ## A073409.P8537958986827052363

`p?[A166333(n+2)]`
-/

namespace A073409.P8537958986827052363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073409.P8537958986827052363

namespace A073409

/-- `p?[A166333(n+2)]` -/
def P8537958986827052363.Spec : Prop :=
  ∀ n, P8537958986827052363.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P8579442195592582383

`A166333(2*(n+1))`
-/

namespace A073409.P8579442195592582383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * (n + 1))

end

end A073409.P8579442195592582383

namespace A073409

/-- `A166333(2*(n+1))` -/
def P8579442195592582383.Spec : Prop :=
  ∀ n, P8579442195592582383.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P18219330900816985580

`p?[or(1, A000010(A166333(n)))]`
-/

namespace A073409.P18219330900816985580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000010 (A166333 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073409.P18219330900816985580

namespace A073409

/-- `p?[or(1, A000010(A166333(n)))]` -/
def P18219330900816985580.Spec : Prop :=
  ∀ n, P18219330900816985580.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P4663460714979709819

`filter[A166333(2*n), A010051(#)]`
-/

namespace A073409.P4663460714979709819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A073409.P4663460714979709819

namespace A073409

/-- `filter[A166333(2*n), A010051(#)]` -/
def P4663460714979709819.Spec : Prop :=
  ∀ n, P4663460714979709819.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P2453404721538490921

`filter[A166333(2*n), A014306(#)]`
-/

namespace A073409.P2453404721538490921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A073409.P2453404721538490921

namespace A073409

/-- `filter[A166333(2*n), A014306(#)]` -/
def P2453404721538490921.Spec : Prop :=
  ∀ n, P2453404721538490921.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P15175162046272915408

`filter[A166333(2*n), A049240(#)]`
-/

namespace A073409.P15175162046272915408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A073409.P15175162046272915408

namespace A073409

/-- `filter[A166333(2*n), A049240(#)]` -/
def P15175162046272915408.Spec : Prop :=
  ∀ n, P15175162046272915408.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P17194344906984304032

`filter[A166333(2*n), A053867(#)]`
-/

namespace A073409.P17194344906984304032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A073409.P17194344906984304032

namespace A073409

/-- `filter[A166333(2*n), A053867(#)]` -/
def P17194344906984304032.Spec : Prop :=
  ∀ n, P17194344906984304032.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P11482240275215659268

`filter[A166333(2*n), A066829(#)]`
-/

namespace A073409.P11482240275215659268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A073409.P11482240275215659268

namespace A073409

/-- `filter[A166333(2*n), A066829(#)]` -/
def P11482240275215659268.Spec : Prop :=
  ∀ n, P11482240275215659268.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P10340083941101644293

`filter[A166333(2*n), A069513(#)]`
-/

namespace A073409.P10340083941101644293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A073409.P10340083941101644293

namespace A073409

/-- `filter[A166333(2*n), A069513(#)]` -/
def P10340083941101644293.Spec : Prop :=
  ∀ n, P10340083941101644293.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P10727872815436399129

`filter[A166333(2*n), A099104(#)]`
-/

namespace A073409.P10727872815436399129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A073409.P10727872815436399129

namespace A073409

/-- `filter[A166333(2*n), A099104(#)]` -/
def P10727872815436399129.Spec : Prop :=
  ∀ n, P10727872815436399129.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P6103817195675097530

`filter[A166333(2*n), A101040(#)]`
-/

namespace A073409.P6103817195675097530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A073409.P6103817195675097530

namespace A073409

/-- `filter[A166333(2*n), A101040(#)]` -/
def P6103817195675097530.Spec : Prop :=
  ∀ n, P6103817195675097530.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P16901181752866141394

`filter[A166333(2*n), A174275(#)]`
-/

namespace A073409.P16901181752866141394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A073409.P16901181752866141394

namespace A073409

/-- `filter[A166333(2*n), A174275(#)]` -/
def P16901181752866141394.Spec : Prop :=
  ∀ n, P16901181752866141394.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P16942993187027818435

`filter[A166333(2*n), A211487(#)]`
-/

namespace A073409.P16942993187027818435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A073409.P16942993187027818435

namespace A073409

/-- `filter[A166333(2*n), A211487(#)]` -/
def P16942993187027818435.Spec : Prop :=
  ∀ n, P16942993187027818435.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P2512334881711592511

`filter[A166333(2*n), A252233(#)]`
-/

namespace A073409.P2512334881711592511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A073409.P2512334881711592511

namespace A073409

/-- `filter[A166333(2*n), A252233(#)]` -/
def P2512334881711592511.Spec : Prop :=
  ∀ n, P2512334881711592511.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P3212595397383137166

`filter[A166333(2*n), A257000(#)]`
-/

namespace A073409.P3212595397383137166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A073409.P3212595397383137166

namespace A073409

/-- `filter[A166333(2*n), A257000(#)]` -/
def P3212595397383137166.Spec : Prop :=
  ∀ n, P3212595397383137166.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P5867088632915000231

`filter[A166333(2*n), A257531(#)]`
-/

namespace A073409.P5867088632915000231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A073409.P5867088632915000231

namespace A073409

/-- `filter[A166333(2*n), A257531(#)]` -/
def P5867088632915000231.Spec : Prop :=
  ∀ n, P5867088632915000231.a n = A073409 (n + 1)

end A073409

/-! ## A073409.P6578930581424343370

`filter[A166333(2*n), A262684(#)]`
-/

namespace A073409.P6578930581424343370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A073409.P6578930581424343370

namespace A073409

/-- `filter[A166333(2*n), A262684(#)]` -/
def P6578930581424343370.Spec : Prop :=
  ∀ n, P6578930581424343370.a n = A073409 (n + 1)

end A073409

/-!
# A073410: Number of permutations p of (1,2,3,...,n) such that 1*(-1)^p(1)+2*(-1)^p(2)+3*(-1)^p(3)+...+n*(-1)^p(n)=0.

The programs for A073410, there is no canonical definition to state claims against.
-/

/-! ## A073410.P1853070877029046106

`A293783(A000038(n)+A002620(n)+n)`
-/

namespace A073410.P1853070877029046106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293783 (A000038 n + (A002620 n + (n : ℤ))).toNat

end

end A073410.P1853070877029046106

/-! ## A073410.P3352055646654653087

`and(A000010(A326780(n)), A047853(n))`
-/

namespace A073410.P3352055646654653087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (A326780 n).toNat) (A047853 n)

end

end A073410.P3352055646654653087

/-! ## A073410.P4794348070919334623

`A000010(A001710(n))*A128582(n+1)`
-/

namespace A073410.P4794348070919334623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001710 n).toNat * A128582 (n + 1)

end

end A073410.P4794348070919334623

/-! ## A073410.P2313466281081475794

`A231563(A370550(n+2))`
-/

namespace A073410.P2313466281081475794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231563 (A370550 (n + 2)).toNat

end

end A073410.P2313466281081475794

/-!
# A073411: cototient(x) - 1 where x are the odd semiprimes (i.e., x are odd terms in A001358).

The programs for A073411, the canonical program `A073411.P15307705560050078077` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073411 has offset 1).

The definition of A073411 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046315, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073411.P15307705560050078077

`A051953(A046315(n+1))-1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A073411

/-- `A051953(A046315(n+1))-1` -/
def P15307705560050078077.Spec : Prop :=
  ∀ n, P15307705560050078077.a n = A073411 (n + 1)

theorem P15307705560050078077.correct : P15307705560050078077.Spec := by
  intro n
  simp only [A073411, Nat.add_sub_cancel]

end A073411

/-! ## A073411.P7711912002518329613

`A016035(A046315(n+1))`
-/

namespace A073411.P7711912002518329613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (A046315 (n + 1)).toNat

end

end A073411.P7711912002518329613

namespace A073411

/-- `A016035(A046315(n+1))` -/
def P7711912002518329613.Spec : Prop :=
  ∀ n, P7711912002518329613.a n = A073411 (n + 1)

end A073411

/-! ## A073411.P5718398956011301617

`A215486(A046315(n+1)+A027656(2*n+1))`
-/

namespace A073411.P5718398956011301617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215486 (A046315 (n + 1) + A027656 (2 * n + 1)).toNat

end

end A073411.P5718398956011301617

namespace A073411

/-- `A215486(A046315(n+1)+A027656(2*n+1))` -/
def P5718398956011301617.Spec : Prop :=
  ∀ n, P5718398956011301617.a n = A073411 (n + 1)

end A073411

/-! ## A073411.P2981590003935386842

`lcm(A163169(2*n+3), A215486(A046315(n+1)))`
-/

namespace A073411.P2981590003935386842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A163169 (2 * n + 3)) (A215486 (A046315 (n + 1)).toNat)

end

end A073411.P2981590003935386842

namespace A073411

/-- `lcm(A163169(2*n+3), A215486(A046315(n+1)))` -/
def P2981590003935386842.Spec : Prop :=
  ∀ n, (P2981590003935386842.a n : ℤ) = A073411 (n + 1)

end A073411

/-! ## A073411.P13419647151108952115

`∑{p}[A046315(n+1)², A000010(#)]`
-/

namespace A073411.P13419647151108952115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 p

end

end A073411.P13419647151108952115

namespace A073411

/-- `∑{p}[A046315(n+1)², A000010(#)]` -/
def P13419647151108952115.Spec : Prop :=
  ∀ n, P13419647151108952115.a n = A073411 (n + 1)

end A073411

/-!
# A073412: Lesser of three consecutive nonsquare integers each of which is the sum of two squares.

The programs for A073412, the canonical program `A073412.P17420791294768471329` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073412 has offset 1).

The definition of A073412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073412.P17420791294768471329

`∩[A274555(n+1)-1, A274555(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A073412

/-- `∩[A274555(n+1)-1, A274555(n+1)]` -/
def P17420791294768471329.Spec : Prop :=
  ∀ n, (P17420791294768471329.a n : ℤ) = A073412 (n + 1)

theorem P17420791294768471329.correct : P17420791294768471329.Spec := by
  intro n
  simp only [A073412, Nat.add_sub_cancel]

end A073412

/-! ## A073412.P16570793178770884308

`filter[A064716(n+1), A267423(#)]`
-/

namespace A073412.P16570793178770884308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267423 (f1 j).toNat = 1) n)

end

end A073412.P16570793178770884308

namespace A073412

/-- `filter[A064716(n+1), A267423(#)]` -/
def P16570793178770884308.Spec : Prop :=
  ∀ n, P16570793178770884308.a n = A073412 (n + 1)

end A073412

/-! ## A073412.P2700820033351738511

`filter[A082982(n+2), A267423(#)]`
-/

namespace A073412.P2700820033351738511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267423 (f1 j).toNat = 1) n)

end

end A073412.P2700820033351738511

namespace A073412

/-- `filter[A082982(n+2), A267423(#)]` -/
def P2700820033351738511.Spec : Prop :=
  ∀ n, P2700820033351738511.a n = A073412 (n + 1)

end A073412

/-! ## A073412.P15752047262223819498

`∩[A274555(n+1), A023443(A274555(n+1))]`
-/

namespace A073412.P15752047262223819498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274555 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073412.P15752047262223819498

namespace A073412

/-- `∩[A274555(n+1), A023443(A274555(n+1))]` -/
def P15752047262223819498.Spec : Prop :=
  ∀ n, (P15752047262223819498.a n : ℤ) = A073412 (n + 1)

end A073412

/-!
# A073413: Numbers n such that number of divisors of n divides S(n), the Kempner function A002034.

The programs for A073413, there is no canonical definition to state claims against.
-/

/-! ## A073413.P3549415797558376239

`A000120(A078845(n))*A113233(n+1)`
-/

namespace A073413.P3549415797558376239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A078845 n).toNat * A113233 (n + 1)

end

end A073413.P3549415797558376239

/-!
# A073414: Numerator of the n-th convergent to Sum_{k>=0} 1/2^(2^k).

The programs for A073414, there is no canonical definition to state claims against.
-/

/-! ## A073414.P15415853117129402445

`a(n-1)*A007400(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A073414.P15415853117129402445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * A007400 n + a (n - 2)

end

end A073414.P15415853117129402445

/-!
# A073415: Denominator of the n-th convergent to Sum_{k>=0} 1/2^(2^k).

The programs for A073415, there is no canonical definition to state claims against.
-/

/-! ## A073415.P6082700889423895523

`a(n-1)*A007400(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A073415.P6082700889423895523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A007400 n + a (n - 2)

end

end A073415.P6082700889423895523

/-!
# A073416: Harmless numbers: numbers without a, h, m or r.

The programs for A073416, there is no canonical definition to state claims against.
-/

/-! ## A073416.P7405278321938926568

`∩[A039139(n+1), A072957(n+1)]`
-/

namespace A073416.P7405278321938926568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073416.P7405278321938926568

/-! ## A073416.P5340818190187716960

`∩[A039144(n+1), A072957(n+1)]`
-/

namespace A073416.P5340818190187716960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073416.P5340818190187716960

/-! ## A073416.P12425445997752107226

`∩[A052421(n+1), A072957(n+1)]`
-/

namespace A073416.P12425445997752107226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073416.P12425445997752107226

/-! ## A073416.P13938525928531220312

`lt[A383845(3*n+2), A001694(A306462(n+1))]`
-/

namespace A073416.P13938525928531220312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383845 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A306462 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073416.P13938525928531220312

/-! ## A073416.P8630034431243328832

`lt[A284281(3*n+4), lt[A196279(n), 2]]`
-/

namespace A073416.P8630034431243328832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (3 * n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196279 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A073416.P8630034431243328832

/-!
# A073422: e = 1/a(0)+1/a(1)+1/a(2)+1/a(3)+... with each term a(n) being a positive or negative integer chosen so as to minimize the absolute difference between e and the partial sum.

The programs for A073422, there is no canonical definition to state claims against.
-/

/-! ## A073422.P4907223073371517839

`A214019(A006789(n))`
-/

namespace A073422.P4907223073371517839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214019 (A006789 n).toNat

end

end A073422.P4907223073371517839

/-! ## A073422.P10246137936285183504

`A295010(A000108(n)+1)`
-/

namespace A073422.P10246137936285183504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295010 (A000108 n + 1).toNat

end

end A073422.P10246137936285183504

/-!
# A073423: Sums of two powers of zero: triangle read by rows: T(m,n) = 0^n + 0^m, n >= 0, m = 0..n.

The programs for A073423, the canonical program `A073423.P15134419924168470312` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073423 has offset 0).

The definition of A073423 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `0^col(n)+0^row(n)` (program `A073423.P15134419924168470312`, by `A073423.P15134419924168470312.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073423.P15134419924168470312

`0^col(n)+0^row(n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A073423

/-- `0^col(n)+0^row(n)` -/
def P15134419924168470312.Spec : Prop :=
  ∀ n, (P15134419924168470312.a n : ℤ) = A073423 n

theorem P15134419924168470312.correct : P15134419924168470312.Spec := by
  intro n
  simp only [A073423]

end A073423

/-! ## A073423.P4857084798999685844

`T(n-1,k)²` with `a(0)=2, a(1)=1`
-/

namespace A073423.P4857084798999685844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  SequenceMachineLib.triUp a n ^ 2

end

end A073423.P4857084798999685844

namespace A073423

/-- `T(n-1,k)²` -/
def P4857084798999685844.Spec : Prop :=
  ∀ n, (P4857084798999685844.a n : ℤ) = A073423 n

end A073423

/-! ## A073423.P8510343458002604135

`ceil(char[∑[n]]*acot(n))`
-/

namespace A073423.P8510343458002604135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) * SequenceMachineLib.acot (n : ℝ)⌉

end

end A073423.P8510343458002604135

namespace A073423

/-- `ceil(char[∑[n]]*acot(n))` -/
def P8510343458002604135.Spec : Prop :=
  ∀ n, P8510343458002604135.a n = A073423 n

end A073423

/-! ## A073423.P13266562092452264852

`log2(a(1-char[∑[n]]))` with `a(0)=2`
-/

namespace A073423.P13266562092452264852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  Real.logb 2 (a (1 - (if ∃ j, f1 j = n then 1 else 0)))

end

end A073423.P13266562092452264852

namespace A073423

/-- `log2(a(1-char[∑[n]]))` -/
def P13266562092452264852.Spec : Prop :=
  ∀ n, P13266562092452264852.a n = (A073423 n : ℝ)

end A073423

/-! ## A073423.P18056644390003797781

`(col(n)+1)*T(n-1,k)` with `a(0)=2, a(1)=1`
-/

namespace A073423.P18056644390003797781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  (SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triUp a n

end

end A073423.P18056644390003797781

namespace A073423

/-- `(col(n)+1)*T(n-1,k)` -/
def P18056644390003797781.Spec : Prop :=
  ∀ n, (P18056644390003797781.a n : ℤ) = A073423 n

end A073423

/-! ## A073423.P3213795419027199375

`a(1-char[∑[n]])-1` with `a(0)=2`
-/

namespace A073423.P3213795419027199375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (1 - (if ∃ j, f1 j = n then 1 else 0)) - 1

end

end A073423.P3213795419027199375

namespace A073423

/-- `a(1-char[∑[n]])-1` -/
def P3213795419027199375.Spec : Prop :=
  ∀ n, P3213795419027199375.a n = A073423 n

end A073423

/-! ## A073423.P16006692249761980551

`char[∑[n]]+C(2, n+2)`
-/

namespace A073423.P16006692249761980551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Nat.choose 2 (n + 2)

end

end A073423.P16006692249761980551

namespace A073423

/-- `char[∑[n]]+C(2, n+2)` -/
def P16006692249761980551.Spec : Prop :=
  ∀ n, (P16006692249761980551.a n : ℤ) = A073423 n

end A073423

/-! ## A073423.P16368489256002214029

`a(2-char[C(n, 2)])` with `a(0)=2, a(1)=1, a(2)=0`
-/

namespace A073423.P16368489256002214029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0] fun n a =>
  a (2 - (if ∃ j, f1 j = n then 1 else 0))

end

end A073423.P16368489256002214029

namespace A073423

/-- `a(2-char[C(n, 2)])` -/
def P16368489256002214029.Spec : Prop :=
  ∀ n, (P16368489256002214029.a n : ℤ) = A073423 n

end A073423

/-! ## A073423.P10965081761861368402

`floor(char[∑[n]]+1/(n+1))`
-/

namespace A073423.P10965081761861368402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + 1 / (n + 1 : ℚ)⌋

end

end A073423.P10965081761861368402

namespace A073423

/-- `floor(char[∑[n]]+1/(n+1))` -/
def P10965081761861368402.Spec : Prop :=
  ∀ n, P10965081761861368402.a n = A073423 n

end A073423

/-! ## A073423.P4122881423718900736

`(1-col(n)^3)*T(n-1,k)` with `a(0)=2, a(1)=1`
-/

namespace A073423.P4122881423718900736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  (1 - (SequenceMachineLib.triCol n ^ 3 : ℤ)) * SequenceMachineLib.triUp a n

end

end A073423.P4122881423718900736

namespace A073423

/-- `(1-col(n)^3)*T(n-1,k)` -/
def P4122881423718900736.Spec : Prop :=
  ∀ n, P4122881423718900736.a n = A073423 n

end A073423

/-! ## A073423.P15318236266996912445

`A000045(T(n-1,k))` with `a(0)=2`
-/

namespace A073423.P15318236266996912445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000045 (SequenceMachineLib.triUp a n).toNat

end

end A073423.P15318236266996912445

namespace A073423

/-- `A000045(T(n-1,k))` -/
def P15318236266996912445.Spec : Prop :=
  ∀ n, P15318236266996912445.a n = A073423 n

end A073423

/-! ## A073423.P1898494070578703706

`A055235(n)%3`
-/

namespace A073423.P1898494070578703706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055235 n) 3

end

end A073423.P1898494070578703706

namespace A073423

/-- `A055235(n)%3` -/
def P1898494070578703706.Spec : Prop :=
  ∀ n, P1898494070578703706.a n = A073423 n

end A073423

/-! ## A073423.P13525064366864078083

`A055236(n)%4`
-/

namespace A073423.P13525064366864078083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055236 n) 4

end

end A073423.P13525064366864078083

namespace A073423

/-- `A055236(n)%4` -/
def P13525064366864078083.Spec : Prop :=
  ∀ n, P13525064366864078083.a n = A073423 n

end A073423

/-! ## A073423.P16468856563152511422

`A055237(n)%5`
-/

namespace A073423.P16468856563152511422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055237 n) 5

end

end A073423.P16468856563152511422

namespace A073423

/-- `A055237(n)%5` -/
def P16468856563152511422.Spec : Prop :=
  ∀ n, P16468856563152511422.a n = A073423 n

end A073423

/-! ## A073423.P3778440189317868236

`C(2, A029600(n))`
-/

namespace A073423.P3778440189317868236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A029600 n).toNat

end

end A073423.P3778440189317868236

namespace A073423

/-- `C(2, A029600(n))` -/
def P3778440189317868236.Spec : Prop :=
  ∀ n, (P3778440189317868236.a n : ℤ) = A073423 n

end A073423

/-! ## A073423.P14943072577979449657

`C(2, A029621(n))`
-/

namespace A073423.P14943072577979449657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A029621 n).toNat

end

end A073423.P14943072577979449657

namespace A073423

/-- `C(2, A029621(n))` -/
def P14943072577979449657.Spec : Prop :=
  ∀ n, (P14943072577979449657.a n : ℤ) = A073423 n

end A073423

/-! ## A073423.P938136033490164362

`C(2, A097692(n))`
-/

namespace A073423.P938136033490164362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A097692 n).toNat

end

end A073423.P938136033490164362

namespace A073423

/-- `C(2, A097692(n))` -/
def P938136033490164362.Spec : Prop :=
  ∀ n, (P938136033490164362.a n : ℤ) = A073423 n

end A073423

/-! ## A073423.P11003954818201061446

`C(2, A134347(n))`
-/

namespace A073423.P11003954818201061446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A134347 n).toNat

end

end A073423.P11003954818201061446

namespace A073423

/-- `C(2, A134347(n))` -/
def P11003954818201061446.Spec : Prop :=
  ∀ n, (P11003954818201061446.a n : ℤ) = A073423 n

end A073423

/-! ## A073423.P13322964434154341599

`C(2, A134349(n))`
-/

namespace A073423.P13322964434154341599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A134349 n).toNat

end

end A073423.P13322964434154341599

namespace A073423

/-- `C(2, A134349(n))` -/
def P13322964434154341599.Spec : Prop :=
  ∀ n, (P13322964434154341599.a n : ℤ) = A073423 n

end A073423

/-! ## A073423.P6672142911350567573

`C(2, A182042(n))`
-/

namespace A073423.P6672142911350567573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A182042 n).toNat

end

end A073423.P6672142911350567573

namespace A073423

/-- `C(2, A182042(n))` -/
def P6672142911350567573.Spec : Prop :=
  ∀ n, (P6672142911350567573.a n : ℤ) = A073423 n

end A073423

/-!
# A073424: Triangle read by rows: T(m,n) = parity of 0^n + 0^m, n = 0,1,2,3 ..., m = 0,1,2,3, ... n.

The programs for A073424, the canonical program `A073424.P15285082429945185433` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073424 has offset 0).

The definition of A073424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073424.P15285082429945185433

`T(n-1,k)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A073424

/-- `T(n-1,k)` -/
def P15285082429945185433.Spec : Prop :=
  ∀ n, (P15285082429945185433.a n : ℤ) = A073424 n

theorem P15285082429945185433.correct : P15285082429945185433.Spec := by
  intro n
  simp only [A073424]

end A073424

/-! ## A073424.P17598190307164011695

`char[∑[n+1]]`
-/

namespace A073424.P17598190307164011695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A073424.P17598190307164011695

namespace A073424

/-- `char[∑[n+1]]` -/
def P17598190307164011695.Spec : Prop :=
  ∀ n, (P17598190307164011695.a n : ℤ) = A073424 n

end A073424

/-! ## A073424.P6461144822886669642

`and(1, char[C(n+2, 2)])`
-/

namespace A073424.P6461144822886669642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A073424.P6461144822886669642

namespace A073424

/-- `and(1, char[C(n+2, 2)])` -/
def P6461144822886669642.Spec : Prop :=
  ∀ n, (P6461144822886669642.a n : ℤ) = A073424 n

end A073424

/-! ## A073424.P11510777845865415690

`ceil(sin(char[C(n+2, 2)]))`
-/

namespace A073424.P11510777845865415690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A073424.P11510777845865415690

namespace A073424

/-- `ceil(sin(char[C(n+2, 2)]))` -/
def P11510777845865415690.Spec : Prop :=
  ∀ n, P11510777845865415690.a n = A073424 n

end A073424

/-! ## A073424.P18389719078589360950

`floor(tan(char[C(n+2, 2)]))`
-/

namespace A073424.P18389719078589360950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A073424.P18389719078589360950

namespace A073424

/-- `floor(tan(char[C(n+2, 2)]))` -/
def P18389719078589360950.Spec : Prop :=
  ∀ n, P18389719078589360950.a n = A073424 n

end A073424

/-! ## A073424.P4197146689082165747

`round(sin(char[C(n+2, 2)]))`
-/

namespace A073424.P4197146689082165747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A073424.P4197146689082165747

namespace A073424

/-- `round(sin(char[C(n+2, 2)]))` -/
def P4197146689082165747.Spec : Prop :=
  ∀ n, P4197146689082165747.a n = A073424 n

end A073424

/-! ## A073424.P16436502744241622044

`floor(asin(char[C(n+2, 2)]))`
-/

namespace A073424.P16436502744241622044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A073424.P16436502744241622044

namespace A073424

/-- `floor(asin(char[C(n+2, 2)]))` -/
def P16436502744241622044.Spec : Prop :=
  ∀ n, P16436502744241622044.a n = A073424 n

end A073424

/-! ## A073424.P1423786022332906433

`ceil(atan(char[C(n+2, 2)]))`
-/

namespace A073424.P1423786022332906433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A073424.P1423786022332906433

namespace A073424

/-- `ceil(atan(char[C(n+2, 2)]))` -/
def P1423786022332906433.Spec : Prop :=
  ∀ n, P1423786022332906433.a n = A073424 n

end A073424

/-! ## A073424.P2111307979128242936

`round(atan(char[C(n+2, 2)]))`
-/

namespace A073424.P2111307979128242936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A073424.P2111307979128242936

namespace A073424

/-- `round(atan(char[C(n+2, 2)]))` -/
def P2111307979128242936.Spec : Prop :=
  ∀ n, P2111307979128242936.a n = A073424 n

end A073424

/-! ## A073424.P287261819848066473

`floor(sinh(char[C(n+2, 2)]))`
-/

namespace A073424.P287261819848066473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A073424.P287261819848066473

namespace A073424

/-- `floor(sinh(char[C(n+2, 2)]))` -/
def P287261819848066473.Spec : Prop :=
  ∀ n, P287261819848066473.a n = A073424 n

end A073424

/-! ## A073424.P12109255761068220308

`round(sinh(char[C(n+2, 2)]))`
-/

namespace A073424.P12109255761068220308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A073424.P12109255761068220308

namespace A073424

/-- `round(sinh(char[C(n+2, 2)]))` -/
def P12109255761068220308.Spec : Prop :=
  ∀ n, P12109255761068220308.a n = A073424 n

end A073424

/-! ## A073424.P16731686106727626215

`ceil(tanh(char[C(n+2, 2)]))`
-/

namespace A073424.P16731686106727626215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A073424.P16731686106727626215

namespace A073424

/-- `ceil(tanh(char[C(n+2, 2)]))` -/
def P16731686106727626215.Spec : Prop :=
  ∀ n, P16731686106727626215.a n = A073424 n

end A073424

/-! ## A073424.P14269022113082748515

`round(tanh(char[C(n+2, 2)]))`
-/

namespace A073424.P14269022113082748515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A073424.P14269022113082748515

namespace A073424

/-- `round(tanh(char[C(n+2, 2)]))` -/
def P14269022113082748515.Spec : Prop :=
  ∀ n, P14269022113082748515.a n = A073424 n

end A073424

/-! ## A073424.P715419874857686706

`acos(cos(char[C(n+2, 2)]))`
-/

namespace A073424.P715419874857686706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A073424.P715419874857686706

namespace A073424

/-- `acos(cos(char[C(n+2, 2)]))` -/
def P715419874857686706.Spec : Prop :=
  ∀ n, P715419874857686706.a n = (A073424 n : ℝ)

end A073424

/-! ## A073424.P4301358613317910439

`asin(sin(char[C(n+2, 2)]))`
-/

namespace A073424.P4301358613317910439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arcsin (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A073424.P4301358613317910439

namespace A073424

/-- `asin(sin(char[C(n+2, 2)]))` -/
def P4301358613317910439.Spec : Prop :=
  ∀ n, P4301358613317910439.a n = (A073424 n : ℝ)

end A073424

/-! ## A073424.P12443392526884330270

`atan(tan(char[C(n+2, 2)]))`
-/

namespace A073424.P12443392526884330270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A073424.P12443392526884330270

namespace A073424

/-- `atan(tan(char[C(n+2, 2)]))` -/
def P12443392526884330270.Spec : Prop :=
  ∀ n, P12443392526884330270.a n = (A073424 n : ℝ)

end A073424

/-! ## A073424.P6767041760641128068

`xor(1, char[n-char[∑[n]]])`
-/

namespace A073424.P6767041760641128068
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A073424.P6767041760641128068

namespace A073424

/-- `xor(1, char[n-char[∑[n]]])` -/
def P6767041760641128068.Spec : Prop :=
  ∀ n, (P6767041760641128068.a n : ℤ) = A073424 n

end A073424

/-!
# A073425: a(0)=0; for n>0, a(n) = number of primes not exceeding n-th composite number.

The programs for A073425, the canonical program `A073425.P859015994304671289` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073425 has offset 0).

The definition of A073425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073425.P6647086811092222420

`comp[record[A037225(n)]]-n`
-/

namespace A073425.P6647086811092222420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A073425.P6647086811092222420

namespace A073425

/-- `comp[record[A037225(n)]]-n` -/
def P6647086811092222420.Spec : Prop :=
  ∀ n, P6647086811092222420.a n = A073425 n

end A073425

/-! ## A073425.P3760004679580751308

`∑[A054546(n+1)-1]`
-/

namespace A073425.P3760004679580751308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073425.P3760004679580751308

namespace A073425

/-- `∑[A054546(n+1)-1]` -/
def P3760004679580751308.Spec : Prop :=
  ∀ n, P3760004679580751308.a n = A073425 n

end A073425

/-! ## A073425.P859015994304671289

`Δ[A051349(n)]-(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073425

/-- `Δ[A051349(n)]-(n+1)` -/
def P859015994304671289.Spec : Prop :=
  ∀ n, P859015994304671289.a n = A073425 n

theorem P859015994304671289.correct : P859015994304671289.Spec := by
  intro n
  simp only [A073425]

end A073425

/-! ## A073425.P6372647302363561607

`comp[A006093(n+1)]-n`
-/

namespace A073425.P6372647302363561607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A073425.P6372647302363561607

namespace A073425

/-- `comp[A006093(n+1)]-n` -/
def P6372647302363561607.Spec : Prop :=
  ∀ n, P6372647302363561607.a n = A073425 n

end A073425

/-! ## A073425.P2952541140875872453

`comp[A057237(n+1)]-n`
-/

namespace A073425.P2952541140875872453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A073425.P2952541140875872453

namespace A073425

/-- `comp[A057237(n+1)]-n` -/
def P2952541140875872453.Spec : Prop :=
  ∀ n, P2952541140875872453.a n = A073425 n

end A073425

/-! ## A073425.P17115180826606657765

`comp[A063872(n+1)]-n`
-/

namespace A073425.P17115180826606657765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063872 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A073425.P17115180826606657765

namespace A073425

/-- `comp[A063872(n+1)]-n` -/
def P17115180826606657765.Spec : Prop :=
  ∀ n, P17115180826606657765.a n = A073425 n

end A073425

/-! ## A073425.P14956322459266681044

`A018252(n+1)-(n+1)`
-/

namespace A073425.P14956322459266681044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - (n + 1 : ℤ)

end

end A073425.P14956322459266681044

namespace A073425

/-- `A018252(n+1)-(n+1)` -/
def P14956322459266681044.Spec : Prop :=
  ∀ n, P14956322459266681044.a n = A073425 n

end A073425

/-! ## A073425.P18280463828501032045

`A141468(n+2)-(n+1)`
-/

namespace A073425.P18280463828501032045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2) - (n + 1 : ℤ)

end

end A073425.P18280463828501032045

namespace A073425

/-- `A141468(n+2)-(n+1)` -/
def P18280463828501032045.Spec : Prop :=
  ∀ n, P18280463828501032045.a n = A073425 n

end A073425

/-! ## A073425.P12426545170613414860

`eq[1, A005171(n+1)]-n`
-/

namespace A073425.P12426545170613414860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A073425.P12426545170613414860

namespace A073425

/-- `eq[1, A005171(n+1)]-n` -/
def P12426545170613414860.Spec : Prop :=
  ∀ n, P12426545170613414860.a n = A073425 n

end A073425

/-! ## A073425.P1835734897528519407

`lt[A010051(n+1), 1]-n`
-/

namespace A073425.P1835734897528519407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A073425.P1835734897528519407

namespace A073425

/-- `lt[A010051(n+1), 1]-n` -/
def P1835734897528519407.Spec : Prop :=
  ∀ n, P1835734897528519407.a n = A073425 n

end A073425

/-! ## A073425.P3338176466404162064

`lt[A063377(n+1), 1]-n`
-/

namespace A073425.P3338176466404162064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A073425.P3338176466404162064

namespace A073425

/-- `lt[A063377(n+1), 1]-n` -/
def P3338176466404162064.Spec : Prop :=
  ∀ n, P3338176466404162064.a n = A073425 n

end A073425

/-! ## A073425.P16276863502605718079

`lt[A292936(n+1), 1]-n`
-/

namespace A073425.P16276863502605718079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A073425.P16276863502605718079

namespace A073425

/-- `lt[A292936(n+1), 1]-n` -/
def P16276863502605718079.Spec : Prop :=
  ∀ n, P16276863502605718079.a n = A073425 n

end A073425

/-! ## A073425.P6069237300170128637

`lt[1, A342916(n+1)]-n`
-/

namespace A073425.P6069237300170128637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A073425.P6069237300170128637

namespace A073425

/-- `lt[1, A342916(n+1)]-n` -/
def P6069237300170128637.Spec : Prop :=
  ∀ n, P6069237300170128637.a n = A073425 n

end A073425

/-! ## A073425.P5446184031464303766

`lt[1, A344440(n+1)]-n`
-/

namespace A073425.P5446184031464303766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A073425.P5446184031464303766

namespace A073425

/-- `lt[1, A344440(n+1)]-n` -/
def P5446184031464303766.Spec : Prop :=
  ∀ n, P5446184031464303766.a n = A073425 n

end A073425

/-! ## A073425.P15065457139584818394

`A222307(Δ[n²])-(n+1)`
-/

namespace A073425.P15065457139584818394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A073425.P15065457139584818394

namespace A073425

/-- `A222307(Δ[n²])-(n+1)` -/
def P15065457139584818394.Spec : Prop :=
  ∀ n, P15065457139584818394.a n = A073425 n

end A073425

/-! ## A073425.P8914785373985883520

`comp[record[A000010(n+1)]]-n`
-/

namespace A073425.P8914785373985883520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A073425.P8914785373985883520

namespace A073425

/-- `comp[record[A000010(n+1)]]-n` -/
def P8914785373985883520.Spec : Prop :=
  ∀ n, P8914785373985883520.a n = A073425 n

end A073425

/-! ## A073425.P2760687298314165330

`sqrt(A062312(n+1))-(n+1)`
-/

namespace A073425.P2760687298314165330
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062312 (n + 1) : ℝ) - (n + 1 : ℝ)

end

end A073425.P2760687298314165330

namespace A073425

/-- `sqrt(A062312(n+1))-(n+1)` -/
def P2760687298314165330.Spec : Prop :=
  ∀ n, P2760687298314165330.a n = (A073425 n : ℝ)

end A073425

/-! ## A073425.P11707514095347445450

`comp[A000040(n+1)-1]-n`
-/

namespace A073425.P11707514095347445450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A073425.P11707514095347445450

namespace A073425

/-- `comp[A000040(n+1)-1]-n` -/
def P11707514095347445450.Spec : Prop :=
  ∀ n, P11707514095347445450.a n = A073425 n

end A073425

/-! ## A073425.P6599703198856511804

`comp[A006530(n+2)-1]-n`
-/

namespace A073425.P6599703198856511804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A073425.P6599703198856511804

namespace A073425

/-- `comp[A006530(n+2)-1]-n` -/
def P6599703198856511804.Spec : Prop :=
  ∀ n, P6599703198856511804.a n = A073425 n

end A073425

/-! ## A073425.P18421288097183603189

`comp[A020639(n+2)-1]-n`
-/

namespace A073425.P18421288097183603189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A073425.P18421288097183603189

namespace A073425

/-- `comp[A020639(n+2)-1]-n` -/
def P18421288097183603189.Spec : Prop :=
  ∀ n, P18421288097183603189.a n = A073425 n

end A073425

/-!
# A073426: Number of primes between n-th prime and n-th composite or number of primes that are >=Min[prime(n),c(n)] and are < Max[prime(n),c(n)].

The programs for A073426, the canonical program `A073426.P5918157491881724604` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073426 has offset 1).

The definition of A073426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073426.P5918157491881724604

`A004737(A072668(n+1)+n²)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073426

/-- `A004737(A072668(n+1)+n²)` -/
def P5918157491881724604.Spec : Prop :=
  ∀ n, P5918157491881724604.a n = A073426 (n + 1)

theorem P5918157491881724604.correct : P5918157491881724604.Spec := by
  intro n
  simp only [A073426, Nat.add_sub_cancel]

end A073426

/-! ## A073426.P15639963440937954290

`A004737(lt[1, A001222(n+1)]+n²)`
-/

namespace A073426.P15639963440937954290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + n ^ 2)

end

end A073426.P15639963440937954290

namespace A073426

/-- `A004737(lt[1, A001222(n+1)]+n²)` -/
def P15639963440937954290.Spec : Prop :=
  ∀ n, P15639963440937954290.a n = A073426 (n + 1)

end A073426

/-! ## A073426.P1026110978956613285

`A004737(n²+lt[2, A000005(n+1)])`
-/

namespace A073426.P1026110978956613285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n ^ 2 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073426.P1026110978956613285

namespace A073426

/-- `A004737(n²+lt[2, A000005(n+1)])` -/
def P1026110978956613285.Spec : Prop :=
  ∀ n, P1026110978956613285.a n = A073426 (n + 1)

end A073426

/-! ## A073426.P5704182682771900993

`A004739(A002808(n+1)+∑[2*n])`
-/

namespace A073426.P5704182682771900993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A002808 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A073426.P5704182682771900993

namespace A073426

/-- `A004739(A002808(n+1)+∑[2*n])` -/
def P5704182682771900993.Spec : Prop :=
  ∀ n, P5704182682771900993.a n = A073426 (n + 1)

end A073426

/-! ## A073426.P3165541993246388246

`A004739(A072668(n+1)+∑[2*n]+1)`
-/

namespace A073426.P3165541993246388246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A072668 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A073426.P3165541993246388246

namespace A073426

/-- `A004739(A072668(n+1)+∑[2*n]+1)` -/
def P3165541993246388246.Spec : Prop :=
  ∀ n, P3165541993246388246.a n = A073426 (n + 1)

end A073426

/-! ## A073426.P10966747011621829636

`A004739(A002378(n)+Δ[A053767(n)])`
-/

namespace A073426.P10966747011621829636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A002378 n + (f1 (n + 1) - f1 n)).toNat

end

end A073426.P10966747011621829636

namespace A073426

/-- `A004739(A002378(n)+Δ[A053767(n)])` -/
def P10966747011621829636.Spec : Prop :=
  ∀ n, P10966747011621829636.a n = A073426 (n + 1)

end A073426

/-! ## A073426.P4054938317799639470

`A004739(A002378(n)+A018252(n+2))`
-/

namespace A073426.P4054938317799639470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A002378 n + A018252 (n + 2)).toNat

end

end A073426.P4054938317799639470

namespace A073426

/-- `A004739(A002378(n)+A018252(n+2))` -/
def P4054938317799639470.Spec : Prop :=
  ∀ n, P4054938317799639470.a n = A073426 (n + 1)

end A073426

/-!
# A073429: Upper triangular region of the table A073345.

The programs for A073429, there is no canonical definition to state claims against.
-/

/-! ## A073429.P8468275733322547198

`A073345(A245300(n))`
-/

namespace A073429.P8468275733322547198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073345 (A245300 n).toNat

end

end A073429.P8468275733322547198

/-! ## A073429.P13782817905410163413

`A073345((A214661(n+1)-1)/2)`
-/

namespace A073429.P13782817905410163413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073345 (SequenceMachineLib.roundAway ((A214661 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A073429.P13782817905410163413

/-! ## A073429.P2056270308487407791

`A073345(A028242(A214661(n+1)))`
-/

namespace A073429.P2056270308487407791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073345 (A028242 (A214661 (n + 1)).toNat).toNat

end

end A073429.P2056270308487407791

/-! ## A073429.P1855178272199299260

`∑{e}[A038373(A122890(n)), #]`
-/

namespace A073429.P1855178272199299260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038373 (A122890 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A073429.P1855178272199299260

/-! ## A073429.P8374644887647821846

`A000523(A028724(A122890(n)+4))`
-/

namespace A073429.P8374644887647821846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A028724 (A122890 n + 4).toNat).toNat

end

end A073429.P8374644887647821846

/-!
# A073430: Upper triangular region of the table A073346.

The programs for A073430, there is no canonical definition to state claims against.
-/

/-! ## A073430.P720953512090155627

`A073346(A245300(n))`
-/

namespace A073430.P720953512090155627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073346 (A245300 n).toNat

end

end A073430.P720953512090155627

/-! ## A073430.P7731514353755182200

`A059268(n)*A074079(A245300(n))`
-/

namespace A073430.P7731514353755182200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A074079 (A245300 n).toNat

end

end A073430.P7731514353755182200

/-! ## A073430.P16062916026330342293

`and(A059268(n), A132399(A020706(n)))`
-/

namespace A073430.P16062916026330342293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059268 n) (A132399 (A020706 n).toNat)

end

end A073430.P16062916026330342293

/-! ## A073430.P11559590748759071341

`and(A050296(A156919(n)), A059268(n))`
-/

namespace A073430.P11559590748759071341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050296 (A156919 n).toNat) (A059268 n)

end

end A073430.P11559590748759071341

/-! ## A073430.P13216135103281385800

`and(A059268(n), A062298(A049927(n+1)))`
-/

namespace A073430.P13216135103281385800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059268 n) (A062298 (A049927 (n + 1)).toNat)

end

end A073430.P13216135103281385800

/-!
# A073431: Number of separate orbits/cycles to which the Catalan bijections A069767/A069768 partition each A000108(n) structures encoded in the range [A014137(n-1)..A014138(n-1)] of the sequence A014486/A063171.

The programs for A073431, there is no canonical definition to state claims against.
-/

/-! ## A073431.P2073729854146403278

`A008622(4*A042581(n))`
-/

namespace A073431.P2073729854146403278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 (4 * A042581 n).toNat

end

end A073431.P2073729854146403278

/-! ## A073431.P13015549509564011672

`A176075(or(1, A000111(n)))`
-/

namespace A073431.P13015549509564011672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176075 (Int.lor 1 (A000111 n)).toNat

end

end A073431.P13015549509564011672

/-! ## A073431.P16650783063029874986

`A305502(∏[p?[A000120(n)]])`
-/

namespace A073431.P16650783063029874986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305502 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073431.P16650783063029874986

/-! ## A073431.P3211352561832105223

`ceil(A319752(n+1)/A204457(n+3))`
-/

namespace A073431.P3211352561832105223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319752 (n + 1) : ℚ) / (A204457 (n + 3) : ℚ)⌉

end

end A073431.P3211352561832105223

/-! ## A073431.P1394118805172518239

`A238825(n+1)+A033630(A014137(n))`
-/

namespace A073431.P1394118805172518239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238825 (n + 1) + A033630 (A014137 n).toNat

end

end A073431.P1394118805172518239

/-!
# A073432: Numbers k such that prime(k) + composite(k) is even.

The programs for A073432, the canonical program `A073432.P14421923093104671474` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073432 has offset 1).

The definition of A073432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073432.P14285218878127645228

`comp[A319704(2*(n+1))-4]`
-/

namespace A073432.P14285218878127645228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319704 (2 * (n + 1)) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A073432.P14285218878127645228

namespace A073432

/-- `comp[A319704(2*(n+1))-4]` -/
def P14285218878127645228.Spec : Prop :=
  ∀ n, (P14285218878127645228.a n : ℤ) = A073432 (n + 1)

end A073432

/-! ## A073432.P5667579213652248504

`comp[A305900(2*(n+2))-4]`
-/

namespace A073432.P5667579213652248504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (2 * (n + 2)) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A073432.P5667579213652248504

namespace A073432

/-- `comp[A305900(2*(n+2))-4]` -/
def P5667579213652248504.Spec : Prop :=
  ∀ n, (P5667579213652248504.a n : ℤ) = A073432 (n + 1)

end A073432

/-! ## A073432.P5343088941702777181

`record[A319704(2*n+5)-4]`
-/

namespace A073432.P5343088941702777181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319704 (2 * n + 5) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073432.P5343088941702777181

namespace A073432

/-- `record[A319704(2*n+5)-4]` -/
def P5343088941702777181.Spec : Prop :=
  ∀ n, P5343088941702777181.a n = A073432 (n + 1)

end A073432

/-! ## A073432.P14421923093104671474

`abs(1-(A047845(n+1)+n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A073432

/-- `abs(1-(A047845(n+1)+n))` -/
def P14421923093104671474.Spec : Prop :=
  ∀ n, P14421923093104671474.a n = A073432 (n + 1)

theorem P14421923093104671474.correct : P14421923093104671474.Spec := by
  intro n
  simp only [A073432, Nat.add_sub_cancel]

end A073432

/-! ## A073432.P802833964783172894

`abs(2-(A104275(n+1)+n))`
-/

namespace A073432.P802833964783172894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A104275 (n + 1) + (n : ℤ))|

end

end A073432.P802833964783172894

namespace A073432

/-- `abs(2-(A104275(n+1)+n))` -/
def P802833964783172894.Spec : Prop :=
  ∀ n, P802833964783172894.a n = A073432 (n + 1)

end A073432

/-! ## A073432.P10738403639747295981

`abs(1-(comp[A005097(n+1)]+n))`
-/

namespace A073432.P10738403639747295981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n : ℤ)|

end

end A073432.P10738403639747295981

namespace A073432

/-- `abs(1-(comp[A005097(n+1)]+n))` -/
def P10738403639747295981.Spec : Prop :=
  ∀ n, P10738403639747295981.a n = A073432 (n + 1)

end A073432

/-! ## A073432.P5862022084105137856

`comp[∑[A028334(n+3)]]+1+n`
-/

namespace A073432.P5862022084105137856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A073432.P5862022084105137856

namespace A073432

/-- `comp[∑[A028334(n+3)]]+1+n` -/
def P5862022084105137856.Spec : Prop :=
  ∀ n, (P5862022084105137856.a n : ℤ) = A073432 (n + 1)

end A073432

/-! ## A073432.P2041824489041984935

`comp[floor(A006093(n+2)/2)]+abs(1-n)`
-/

namespace A073432.P2041824489041984935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 2) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + |1 - (n : ℤ)|

end

end A073432.P2041824489041984935

namespace A073432

/-- `comp[floor(A006093(n+2)/2)]+abs(1-n)` -/
def P2041824489041984935.Spec : Prop :=
  ∀ n, P2041824489041984935.a n = A073432 (n + 1)

end A073432

/-! ## A073432.P12636857180369374581

`lt[A020639(2*n+1), n+2]+abs(1-n)`
-/

namespace A073432.P12636857180369374581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) + |1 - (n : ℤ)|

end

end A073432.P12636857180369374581

namespace A073432

/-- `lt[A020639(2*n+1), n+2]+abs(1-n)` -/
def P12636857180369374581.Spec : Prop :=
  ∀ n, P12636857180369374581.a n = A073432 (n + 1)

end A073432

/-! ## A073432.P15815590296618888392

`eq[n, n*A282194(n+1)]+n+1`
-/

namespace A073432.P15815590296618888392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A282194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 1)

end

end A073432.P15815590296618888392

namespace A073432

/-- `eq[n, n*A282194(n+1)]+n+1` -/
def P15815590296618888392.Spec : Prop :=
  ∀ n, (P15815590296618888392.a n : ℤ) = A073432 (n + 1)

end A073432

/-! ## A073432.P14510073090545297960

`record[(n+1)^(A018252(n+2)%2)]`
-/

namespace A073432.P14510073090545297960
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.tmod (A018252 (n + 2)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073432.P14510073090545297960

namespace A073432

/-- `record[(n+1)^(A018252(n+2)%2)]` -/
def P14510073090545297960.Spec : Prop :=
  ∀ n, P14510073090545297960.a n = (A073432 (n + 1) : ℚ)

end A073432

/-! ## A073432.P1473544702803044486

`lt[2, A020639(A000010(n+1)+A018252(n+1))]`
-/

namespace A073432.P1473544702803044486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1) + A018252 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A073432.P1473544702803044486

namespace A073432

/-- `lt[2, A020639(A000010(n+1)+A018252(n+1))]` -/
def P1473544702803044486.Spec : Prop :=
  ∀ n, (P1473544702803044486.a n : ℤ) = A073432 (n + 1)

end A073432

/-! ## A073432.P2707772047786354612

`lt[Δ[Δ[A049716(n+2)]], 1]+n+1`
-/

namespace A073432.P2707772047786354612
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + (n + 1)

end

end A073432.P2707772047786354612

namespace A073432

/-- `lt[Δ[Δ[A049716(n+2)]], 1]+n+1` -/
def P2707772047786354612.Spec : Prop :=
  ∀ n, (P2707772047786354612.a n : ℤ) = A073432 (n + 1)

end A073432

/-! ## A073432.P4964334102000218077

`eq[A283616(n+2), A339579(3*n+1)]+n`
-/

namespace A073432.P4964334102000218077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283616 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + n

end

end A073432.P4964334102000218077

namespace A073432

/-- `eq[A283616(n+2), A339579(3*n+1)]+n` -/
def P4964334102000218077.Spec : Prop :=
  ∀ n, (P4964334102000218077.a n : ℤ) = A073432 (n + 1)

end A073432

/-! ## A073432.P4867869220151975070

`lt[1, A166333(A018252(n+1)-A166333(n))]`
-/

namespace A073432.P4867869220151975070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A018252 (n + 1) - A166333 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A073432.P4867869220151975070

namespace A073432

/-- `lt[1, A166333(A018252(n+1)-A166333(n))]` -/
def P4867869220151975070.Spec : Prop :=
  ∀ n, (P4867869220151975070.a n : ℤ) = A073432 (n + 1)

end A073432

/-! ## A073432.P410233734906586684

`eq[A157928(n), A181923(n+1)]`
-/

namespace A073432.P410233734906586684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181923 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073432.P410233734906586684

namespace A073432

/-- `eq[A157928(n), A181923(n+1)]` -/
def P410233734906586684.Spec : Prop :=
  ∀ n, (P410233734906586684.a n : ℤ) = A073432 (n + 1)

end A073432

/-! ## A073432.P11156097554097346641

`eq[A181923(n+1), A244328(n+1)]`
-/

namespace A073432.P11156097554097346641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073432.P11156097554097346641

namespace A073432

/-- `eq[A181923(n+1), A244328(n+1)]` -/
def P11156097554097346641.Spec : Prop :=
  ∀ n, (P11156097554097346641.a n : ℤ) = A073432 (n + 1)

end A073432

/-! ## A073432.P791549430402383931

`eq[A055672(2*n), A101264(n+1)]+n`
-/

namespace A073432.P791549430402383931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + n

end

end A073432.P791549430402383931

namespace A073432

/-- `eq[A055672(2*n), A101264(n+1)]+n` -/
def P791549430402383931.Spec : Prop :=
  ∀ n, (P791549430402383931.a n : ℤ) = A073432 (n + 1)

end A073432

/-!
# A073433: Value of [p(n)+c(n)]/2 when it is an integer; p(n) is n-th prime, c(n) is n-th composite.

The programs for A073433, the canonical program `A073433.P3593679991118794542` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073433 has offset 1).

The definition of A073433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073433.P3593679991118794542

`A071259(A073432(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A073433

/-- `A071259(A073432(n+1))` -/
def P3593679991118794542.Spec : Prop :=
  ∀ n, P3593679991118794542.a n = A073433 (n + 1)

theorem P3593679991118794542.correct : P3593679991118794542.Spec := by
  intro n
  simp only [A073433, Nat.add_sub_cancel]

end A073433

/-! ## A073433.P13338025340285391293

`record[A273943(A002808(n+1)+A000040(n+1))]`
-/

namespace A073433.P13338025340285391293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A002808 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073433.P13338025340285391293

namespace A073433

/-- `record[A273943(A002808(n+1)+A000040(n+1))]` -/
def P13338025340285391293.Spec : Prop :=
  ∀ n, P13338025340285391293.a n = A073433 (n + 1)

end A073433

/-! ## A073433.P14297618671136613652

`record[A078898(A064799(n+1))]`
-/

namespace A073433.P14297618671136613652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A064799 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073433.P14297618671136613652

namespace A073433

/-- `record[A078898(A064799(n+1))]` -/
def P14297618671136613652.Spec : Prop :=
  ∀ n, P14297618671136613652.a n = A073433 (n + 1)

end A073433

/-! ## A073433.P8087184397591976579

`record[A032742(A002808(n+1)+A000040(n+1))]`
-/

namespace A073433.P8087184397591976579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A002808 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073433.P8087184397591976579

namespace A073433

/-- `record[A032742(A002808(n+1)+A000040(n+1))]` -/
def P8087184397591976579.Spec : Prop :=
  ∀ n, P8087184397591976579.a n = A073433 (n + 1)

end A073433

/-! ## A073433.P1230956046694110135

`record[A032742(A079696(n+1)+A006093(n+1))]`
-/

namespace A073433.P1230956046694110135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A079696 (n + 1) + A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073433.P1230956046694110135

namespace A073433

/-- `record[A032742(A079696(n+1)+A006093(n+1))]` -/
def P1230956046694110135.Spec : Prop :=
  ∀ n, P1230956046694110135.a n = A073433 (n + 1)

end A073433

/-!
# A073434: Primes p such that 2p+1 is prime and there are an even number of primes in the interval [p+1,2p+1].

The programs for A073434, the canonical program `A073434.P6686306003510608694` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073434 has offset 1).

The definition of A073434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073434.P6686306003510608694

`p?[A000035(A107347(n+1))*A130290(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A073434

/-- `p?[A000035(A107347(n+1))*A130290(n+1)]` -/
def P6686306003510608694.Spec : Prop :=
  ∀ n, P6686306003510608694.a n = A073434 (n + 1)

theorem P6686306003510608694.correct : P6686306003510608694.Spec := by
  intro n
  simp only [A073434, Nat.add_sub_cancel]

end A073434

/-! ## A073434.P225135219962593855

`record[A006530(A000010(A085118(2*n+3)))]`
-/

namespace A073434.P225135219962593855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (A085118 (2 * n + 3)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073434.P225135219962593855

namespace A073434

/-- `record[A006530(A000010(A085118(2*n+3)))]` -/
def P225135219962593855.Spec : Prop :=
  ∀ n, P225135219962593855.a n = A073434 (n + 1)

end A073434

/-! ## A073434.P5387258575344669777

`A006530(∩[A001751(2*n+1), A006093(n+3)])`
-/

namespace A073434.P5387258575344669777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A073434.P5387258575344669777

namespace A073434

/-- `A006530(∩[A001751(2*n+1), A006093(n+3)])` -/
def P5387258575344669777.Spec : Prop :=
  ∀ n, P5387258575344669777.a n = A073434 (n + 1)

end A073434

/-! ## A073434.P1325009288153767608

`p?[A057979(A001751(2*(n+1)))]`
-/

namespace A073434.P1325009288153767608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A001751 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073434.P1325009288153767608

namespace A073434

/-- `p?[A057979(A001751(2*(n+1)))]` -/
def P1325009288153767608.Spec : Prop :=
  ∀ n, P1325009288153767608.a n = A073434 (n + 1)

end A073434

/-! ## A073434.P8435165810324155414

`p?[A055034(A085118(2*n+1))]`
-/

namespace A073434.P8435165810324155414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A085118 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073434.P8435165810324155414

namespace A073434

/-- `p?[A055034(A085118(2*n+1))]` -/
def P8435165810324155414.Spec : Prop :=
  ∀ n, P8435165810324155414.a n = A073434 (n + 1)

end A073434

/-!
# A073438: Remainder of division G[n]/Pi[n], where G[n] is the number of composites not exceeding n.

The programs for A073438, the canonical program `A073438.P13722308552465934977` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073438 has offset 2).

The definition of A073438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073438.P13722308552465934977

`A065855(n+2)%A000720(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073438

/-- `A065855(n+2)%A000720(n+2)` -/
def P13722308552465934977.Spec : Prop :=
  ∀ n, P13722308552465934977.a n = A073438 (n + 2)

theorem P13722308552465934977.correct : P13722308552465934977.Spec := by
  intro n
  simp only [A073438, Nat.add_sub_cancel]

end A073438

/-! ## A073438.P8032476794522951870

`(n+1)%∑[char[p?[round(8*n/7)]-2]]`
-/

namespace A073438.P8032476794522951870
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073438.P8032476794522951870

namespace A073438

/-- `(n+1)%∑[char[p?[round(8*n/7)]-2]]` -/
def P8032476794522951870.Spec : Prop :=
  ∀ n, (P8032476794522951870.a n : ℤ) = A073438 (n + 2)

end A073438

/-! ## A073438.P12157091431520871581

`(n+1)%A000720(n+2)`
-/

namespace A073438.P12157091431520871581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000720 (n + 2))

end

end A073438.P12157091431520871581

namespace A073438

/-- `(n+1)%A000720(n+2)` -/
def P12157091431520871581.Spec : Prop :=
  ∀ n, P12157091431520871581.a n = A073438 (n + 2)

end A073438

/-! ## A073438.P3549678285096826375

`-xor(n, -1)%∑[A010051(n+2)]`
-/

namespace A073438.P3549678285096826375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-Int.xor (n : ℤ) (-1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073438.P3549678285096826375

namespace A073438

/-- `-xor(n, -1)%∑[A010051(n+2)]` -/
def P3549678285096826375.Spec : Prop :=
  ∀ n, P3549678285096826375.a n = A073438 (n + 2)

end A073438

/-! ## A073438.P12559247770376149841

`C(n+1, n)%∑[floor(1/A001222(n+2))]`
-/

namespace A073438.P12559247770376149841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A001222 (n + 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (n + 1) n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073438.P12559247770376149841

namespace A073438

/-- `C(n+1, n)%∑[floor(1/A001222(n+2))]` -/
def P12559247770376149841.Spec : Prop :=
  ∀ n, P12559247770376149841.a n = A073438 (n + 2)

end A073438

/-! ## A073438.P17114483258809742973

`(2*n-(n-1))%∑[char[A006530(n+1)-2]]`
-/

namespace A073438.P17114483258809742973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n : ℤ) - ((n : ℤ) - 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A073438.P17114483258809742973

namespace A073438

/-- `(2*n-(n-1))%∑[char[A006530(n+1)-2]]` -/
def P17114483258809742973.Spec : Prop :=
  ∀ n, P17114483258809742973.a n = A073438 (n + 2)

end A073438

/-! ## A073438.P12258143753386596039

`A000027(n+1)%∑[char[A040976(n+1)]]`
-/

namespace A073438.P12258143753386596039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A073438.P12258143753386596039

namespace A073438

/-- `A000027(n+1)%∑[char[A040976(n+1)]]` -/
def P12258143753386596039.Spec : Prop :=
  ∀ n, P12258143753386596039.a n = A073438 (n + 2)

end A073438

/-! ## A073438.P8971995969450215356

`(Δ[n²]-n)%A230980(n+2)`
-/

namespace A073438.P8971995969450215356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) (A230980 (n + 2))

end

end A073438.P8971995969450215356

namespace A073438

/-- `(Δ[n²]-n)%A230980(n+2)` -/
def P8971995969450215356.Spec : Prop :=
  ∀ n, P8971995969450215356.a n = A073438 (n + 2)

end A073438

/-! ## A073438.P10026408583154878848

`A065262(2*(n+1))%Δ[A061536(n+1)]`
-/

namespace A073438.P10026408583154878848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065262 (2 * (n + 1))) (f1 (n + 1) - f1 n)

end

end A073438.P10026408583154878848

namespace A073438

/-- `A065262(2*(n+1))%Δ[A061536(n+1)]` -/
def P10026408583154878848.Spec : Prop :=
  ∀ n, P10026408583154878848.a n = A073438 (n + 2)

end A073438

/-! ## A073438.P8230845470206188033

`(2*n+1-n)%∑[C(2, A001222((n+2)²))]`
-/

namespace A073438.P8230845470206188033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A001222 ((n + 2) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n + 1 : ℤ) - (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A073438.P8230845470206188033

namespace A073438

/-- `(2*n+1-n)%∑[C(2, A001222((n+2)²))]` -/
def P8230845470206188033.Spec : Prop :=
  ∀ n, P8230845470206188033.a n = A073438 (n + 2)

end A073438

/-!
# A073439: Numbers k such that A073259(k)=4: the length of iteration-transient leading to k-th composite number equals 4.

The programs for A073439, there is no canonical definition to state claims against.
-/

/-! ## A073439.P11098027123708913602

`eq[4, A073259(n+1)]+1`
-/

namespace A073439.P11098027123708913602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073439.P11098027123708913602

/-! ## A073439.P9711842548753411382

`eq[A040002(n), A073259(A028310(n))]`
-/

namespace A073439.P9711842548753411382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073259 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073439.P9711842548753411382

/-! ## A073439.P18415184981068990058

`eq[A246359(A276955(n+1)), A257679(n)]`
-/

namespace A073439.P18415184981068990058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A276955 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073439.P18415184981068990058

/-!
# A073443: Numbers k such that k! - k - 1 is prime.

The programs for A073443, there is no canonical definition to state claims against.
-/

/-! ## A073443.P18376313932076130953

`floor((n*n%3+3)^(n-1))+3`
-/

namespace A073443.P18376313932076130953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n * (n % 3) + 3 : ℕ) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 3

end

end A073443.P18376313932076130953

/-!
# A073445: Second differences of A002808, the sequence of composites.

The programs for A073445, the canonical program `A073445.P10904794807909655656` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073445 has offset 1).

The definition of A073445 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073783, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073445.P10904794807909655656

`A073783(n+2)-A073783(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073445

/-- `A073783(n+2)-A073783(n+1)` -/
def P10904794807909655656.Spec : Prop :=
  ∀ n, P10904794807909655656.a n = A073445 (n + 1)

theorem P10904794807909655656.correct : P10904794807909655656.Spec := by
  intro n
  simp only [A073445, Nat.add_sub_cancel]

end A073445

/-! ## A073445.P11741267782962405594

`Δ[A010051(A002808(n+1)+1)]`
-/

namespace A073445.P11741267782962405594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A002808 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073445.P11741267782962405594

namespace A073445

/-- `Δ[A010051(A002808(n+1)+1)]` -/
def P11741267782962405594.Spec : Prop :=
  ∀ n, P11741267782962405594.a n = A073445 (n + 1)

end A073445

/-! ## A073445.P3384936586868164787

`Δ[A010051(A018252(n+2)+1)]`
-/

namespace A073445.P3384936586868164787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A018252 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073445.P3384936586868164787

namespace A073445

/-- `Δ[A010051(A018252(n+2)+1)]` -/
def P3384936586868164787.Spec : Prop :=
  ∀ n, P3384936586868164787.a n = A073445 (n + 1)

end A073445

/-! ## A073445.P2585096631322442756

`Δ[A010051(A141468(n+3)+1)]`
-/

namespace A073445.P2585096631322442756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A141468 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073445.P2585096631322442756

namespace A073445

/-- `Δ[A010051(A141468(n+3)+1)]` -/
def P2585096631322442756.Spec : Prop :=
  ∀ n, P2585096631322442756.a n = A073445 (n + 1)

end A073445

/-! ## A073445.P6247866326633285827

`Δ[A002808(n+2)-A002808(n+1)]`
-/

namespace A073445.P6247866326633285827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 2) - A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073445.P6247866326633285827

namespace A073445

/-- `Δ[A002808(n+2)-A002808(n+1)]` -/
def P6247866326633285827.Spec : Prop :=
  ∀ n, P6247866326633285827.a n = A073445 (n + 1)

theorem P6247866326633285827.correct : P6247866326633285827.Spec := by
  intro n
  simp only [A073445, Nat.add_sub_cancel, A073445.P6247866326633285827.f1, A073445.P6247866326633285827.a, A073445.P10904794807909655656.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A073783, A073783.P7345067272109289188.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073445

/-! ## A073445.P15583081348205146471

`Δ[A018252(n+3)-A018252(n+2)]`
-/

namespace A073445.P15583081348205146471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 3) - A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073445.P15583081348205146471

namespace A073445

/-- `Δ[A018252(n+3)-A018252(n+2)]` -/
def P15583081348205146471.Spec : Prop :=
  ∀ n, P15583081348205146471.a n = A073445 (n + 1)

end A073445

/-! ## A073445.P5161450623785774155

`Δ[A138190(A002808(n+2)%A002808(n+1)+1)]`
-/

namespace A073445.P5161450623785774155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138190 (Int.tmod (A002808 (n + 2)) (A002808 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073445.P5161450623785774155

namespace A073445

/-- `Δ[A138190(A002808(n+2)%A002808(n+1)+1)]` -/
def P5161450623785774155.Spec : Prop :=
  ∀ n, P5161450623785774155.a n = A073445 (n + 1)

end A073445

/-! ## A073445.P6367782459211428367

`Δ[A073783(n+1)]`
-/

namespace A073445.P6367782459211428367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073445.P6367782459211428367

namespace A073445

/-- `Δ[A073783(n+1)]` -/
def P6367782459211428367.Spec : Prop :=
  ∀ n, P6367782459211428367.a n = A073445 (n + 1)

theorem P6367782459211428367.correct : P6367782459211428367.Spec := by
  intro n
  simp only [A073445, Nat.add_sub_cancel, A073445.P6367782459211428367.f1, A073445.P6367782459211428367.a, A073445.P10904794807909655656.a, SequenceMachineLib.memo_apply]

end A073445

/-! ## A073445.P2518772201803066847

`Δ[A073784(n+1)]`
-/

namespace A073445.P2518772201803066847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073445.P2518772201803066847

namespace A073445

/-- `Δ[A073784(n+1)]` -/
def P2518772201803066847.Spec : Prop :=
  ∀ n, P2518772201803066847.a n = A073445 (n + 1)

end A073445

/-! ## A073445.P6330721163341644409

`Δ[Δ[A002808(n+1)]]`
-/

namespace A073445.P6330721163341644409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073445.P6330721163341644409

namespace A073445

/-- `Δ[Δ[A002808(n+1)]]` -/
def P6330721163341644409.Spec : Prop :=
  ∀ n, P6330721163341644409.a n = A073445 (n + 1)

theorem P6330721163341644409.correct : P6330721163341644409.Spec := by
  intro n
  simp only [A073445, Nat.add_sub_cancel, A073445.P6330721163341644409.f2, A073445.P6330721163341644409.f1, A073445.P6330721163341644409.a, A073445.P10904794807909655656.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A073783, A073783.P7345067272109289188.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073445

/-! ## A073445.P13550171335535335162

`Δ[Δ[A018252(n+2)]]`
-/

namespace A073445.P13550171335535335162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073445.P13550171335535335162

namespace A073445

/-- `Δ[Δ[A018252(n+2)]]` -/
def P13550171335535335162.Spec : Prop :=
  ∀ n, P13550171335535335162.a n = A073445 (n + 1)

end A073445

/-! ## A073445.P7838162866491694213

`Δ[Δ[A141468(n+3)]]`
-/

namespace A073445.P7838162866491694213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073445.P7838162866491694213

namespace A073445

/-- `Δ[Δ[A141468(n+3)]]` -/
def P7838162866491694213.Spec : Prop :=
  ∀ n, P7838162866491694213.a n = A073445 (n + 1)

end A073445

/-! ## A073445.P660142140451420687

`Δ[char[A014689(n+1)-2]]`
-/

namespace A073445.P660142140451420687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A073445.P660142140451420687

namespace A073445

/-- `Δ[char[A014689(n+1)-2]]` -/
def P660142140451420687.Spec : Prop :=
  ∀ n, P660142140451420687.a n = A073445 (n + 1)

end A073445

/-! ## A073445.P16922250483177184819

`Δ[char[A000040(n+1)-(n+3)]]`
-/

namespace A073445.P16922250483177184819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n + 3 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A073445.P16922250483177184819

namespace A073445

/-- `Δ[char[A000040(n+1)-(n+3)]]` -/
def P16922250483177184819.Spec : Prop :=
  ∀ n, P16922250483177184819.a n = A073445 (n + 1)

end A073445

/-! ## A073445.P9358069330308320723

`A073784(n+2)-A073784(n+1)`
-/

namespace A073445.P9358069330308320723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073784 (n + 2) - A073784 (n + 1)

end

end A073445.P9358069330308320723

namespace A073445

/-- `A073784(n+2)-A073784(n+1)` -/
def P9358069330308320723.Spec : Prop :=
  ∀ n, P9358069330308320723.a n = A073445 (n + 1)

end A073445

/-! ## A073445.P15284402226083441564

`A002808(n+1)-A179620(n+2)`
-/

namespace A073445.P15284402226083441564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A179620 (n + 2)

end

end A073445.P15284402226083441564

namespace A073445

/-- `A002808(n+1)-A179620(n+2)` -/
def P15284402226083441564.Spec : Prop :=
  ∀ n, P15284402226083441564.a n = A073445 (n + 1)

end A073445

/-! ## A073445.P16784625938933168028

`Δ[A065310(n+2)]`
-/

namespace A073445.P16784625938933168028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073445.P16784625938933168028

namespace A073445

/-- `Δ[A065310(n+2)]` -/
def P16784625938933168028.Spec : Prop :=
  ∀ n, P16784625938933168028.a n = A073445 (n + 1)

end A073445

/-! ## A073445.P2278431227372856714

`Δ[Δ[A072668(n+1)]]`
-/

namespace A073445.P2278431227372856714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073445.P2278431227372856714

namespace A073445

/-- `Δ[Δ[A072668(n+1)]]` -/
def P2278431227372856714.Spec : Prop :=
  ∀ n, P2278431227372856714.a n = A073445 (n + 1)

theorem P2278431227372856714.correct : P2278431227372856714.Spec := by
  intro n
  simp only [A073445, Nat.add_sub_cancel, A073445.P2278431227372856714.f2, A073445.P2278431227372856714.f1, A073445.P2278431227372856714.a, A073445.P10904794807909655656.a, A072668, A072668.P5648318357023435289.a, A073783, A073783.P7345067272109289188.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073445

/-! ## A073445.P15835326120621571617

`Δ[Δ[A073169(n+1)]]`
-/

namespace A073445.P15835326120621571617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073445.P15835326120621571617

namespace A073445

/-- `Δ[Δ[A073169(n+1)]]` -/
def P15835326120621571617.Spec : Prop :=
  ∀ n, P15835326120621571617.a n = A073445 (n + 1)

theorem P15835326120621571617.correct : P15835326120621571617.Spec := by
  intro n
  simp only [A073445, Nat.add_sub_cancel, A073445.P15835326120621571617.f2, A073445.P15835326120621571617.f1, A073445.P15835326120621571617.a, A073445.P10904794807909655656.a, A073169, A073169.P14738260624206914448.a, A073783, A073783.P7345067272109289188.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073445

/-! ## A073445.P17027862609847693954

`Δ[Δ[A079696(n+1)]]`
-/

namespace A073445.P17027862609847693954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073445.P17027862609847693954

namespace A073445

/-- `Δ[Δ[A079696(n+1)]]` -/
def P17027862609847693954.Spec : Prop :=
  ∀ n, P17027862609847693954.a n = A073445 (n + 1)

theorem P17027862609847693954.correct : P17027862609847693954.Spec := by
  intro n
  simp only [A073445, Nat.add_sub_cancel, A073445.P17027862609847693954.f2, A073445.P17027862609847693954.f1, A073445.P17027862609847693954.a, A073445.P10904794807909655656.a, A073783, A073783.P7345067272109289188.a, A079696, A079696.P2621453534582977077.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073445

/-!
# A073446: Product L(n)*S(n), where L(n) are Lucas numbers and S(n) are Lucas 3-step numbers = A000032(n) * A001644(n).

The programs for A073446, the canonical program `A073446.P4818483135559375804` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073446 has offset 0).

The definition of A073446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073446.P4818483135559375804

`A000032(n)*A001644(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A073446

/-- `A000032(n)*A001644(n)` -/
def P4818483135559375804.Spec : Prop :=
  ∀ n, P4818483135559375804.a n = A073446 n

theorem P4818483135559375804.correct : P4818483135559375804.Spec := by
  intro n
  simp only [A073446]

end A073446

/-! ## A073446.P9388086446402271947

`Δ[A001610(n)]*A001644(n)`
-/

namespace A073446.P9388086446402271947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001644 n

end

end A073446.P9388086446402271947

namespace A073446

/-- `Δ[A001610(n)]*A001644(n)` -/
def P9388086446402271947.Spec : Prop :=
  ∀ n, P9388086446402271947.a n = A073446 n

end A073446

/-! ## A073446.P2005283503670355872

`(A001612(n)-1)*A001644(n)`
-/

namespace A073446.P2005283503670355872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001612 n - 1) * A001644 n

end

end A073446.P2005283503670355872

namespace A073446

/-- `(A001612(n)-1)*A001644(n)` -/
def P2005283503670355872.Spec : Prop :=
  ∀ n, P2005283503670355872.a n = A073446 n

end A073446

/-! ## A073446.P14565712942734719456

`(A000211(n)-2)*A001644(n)`
-/

namespace A073446.P14565712942734719456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000211 n - 2) * A001644 n

end

end A073446.P14565712942734719456

namespace A073446

/-- `(A000211(n)-2)*A001644(n)` -/
def P14565712942734719456.Spec : Prop :=
  ∀ n, P14565712942734719456.a n = A073446 n

end A073446

/-! ## A073446.P16005855386275885277

`abs(A061084(n+1))*A001644(n)`
-/

namespace A073446.P16005855386275885277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061084 (n + 1)| * A001644 n

end

end A073446.P16005855386275885277

namespace A073446

/-- `abs(A061084(n+1))*A001644(n)` -/
def P16005855386275885277.Spec : Prop :=
  ∀ n, P16005855386275885277.a n = A073446 n

end A073446

/-! ## A073446.P14782456671349657040

`Δ[A000204(n+1)]*A001644(n)`
-/

namespace A073446.P14782456671349657040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001644 n

end

end A073446.P14782456671349657040

namespace A073446

/-- `Δ[A000204(n+1)]*A001644(n)` -/
def P14782456671349657040.Spec : Prop :=
  ∀ n, P14782456671349657040.a n = A073446 n

end A073446

/-! ## A073446.P9797865945798491647

`Δ[A000211(n+1)]*A001644(n)`
-/

namespace A073446.P9797865945798491647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001644 n

end

end A073446.P9797865945798491647

namespace A073446

/-- `Δ[A000211(n+1)]*A001644(n)` -/
def P9797865945798491647.Spec : Prop :=
  ∀ n, P9797865945798491647.a n = A073446 n

end A073446

/-! ## A073446.P11490647547842342371

`A000032(n)*Δ[Δ[A214727(n+1)]]`
-/

namespace A073446.P11490647547842342371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (f1 (n + 1) - f1 n)

end

end A073446.P11490647547842342371

namespace A073446

/-- `A000032(n)*Δ[Δ[A214727(n+1)]]` -/
def P11490647547842342371.Spec : Prop :=
  ∀ n, P11490647547842342371.a n = A073446 n

end A073446

/-! ## A073446.P10740463832811580122

`(A212804(n)+A000045(n+1))*A001644(n)`
-/

namespace A073446.P10740463832811580122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212804 n + A000045 (n + 1)) * A001644 n

end

end A073446.P10740463832811580122

namespace A073446

/-- `(A212804(n)+A000045(n+1))*A001644(n)` -/
def P10740463832811580122.Spec : Prop :=
  ∀ n, P10740463832811580122.a n = A073446 n

end A073446

/-! ## A073446.P4121623892035667119

`(A001610(n+1)-A001610(n))*A001644(n)`
-/

namespace A073446.P4121623892035667119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001610 (n + 1) - A001610 n) * A001644 n

end

end A073446.P4121623892035667119

namespace A073446

/-- `(A001610(n+1)-A001610(n))*A001644(n)` -/
def P4121623892035667119.Spec : Prop :=
  ∀ n, P4121623892035667119.a n = A073446 n

end A073446

/-! ## A073446.P18367031785731096122

`(A075091(n)-A061084(n+1))*A001644(n)`
-/

namespace A073446.P18367031785731096122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075091 n - A061084 (n + 1)) * A001644 n

end

end A073446.P18367031785731096122

namespace A073446

/-- `(A075091(n)-A061084(n+1))*A001644(n)` -/
def P18367031785731096122.Spec : Prop :=
  ∀ n, P18367031785731096122.a n = A073446 n

end A073446

/-! ## A073446.P8335411079741195435

`(A111572(n+1)-A111571(n))*A001644(n)`
-/

namespace A073446.P8335411079741195435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111572 (n + 1) - A111571 n) * A001644 n

end

end A073446.P8335411079741195435

namespace A073446

/-- `(A111572(n+1)-A111571(n))*A001644(n)` -/
def P8335411079741195435.Spec : Prop :=
  ∀ n, P8335411079741195435.a n = A073446 n

end A073446

/-! ## A073446.P11575620052616216436

`(A000204(n+2)-A000204(n+1))*A001644(n)`
-/

namespace A073446.P11575620052616216436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000204 (n + 2) - A000204 (n + 1)) * A001644 n

end

end A073446.P11575620052616216436

namespace A073446

/-- `(A000204(n+2)-A000204(n+1))*A001644(n)` -/
def P11575620052616216436.Spec : Prop :=
  ∀ n, P11575620052616216436.a n = A073446 n

end A073446

/-! ## A073446.P7959405763816183082

`Δ[A000045(n+2)+A000045(n)+1]*A001644(n)`
-/

namespace A073446.P7959405763816183082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + (A000045 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001644 n

end

end A073446.P7959405763816183082

namespace A073446

/-- `Δ[A000045(n+2)+A000045(n)+1]*A001644(n)` -/
def P7959405763816183082.Spec : Prop :=
  ∀ n, P7959405763816183082.a n = A073446 n

end A073446

/-! ## A073446.P4432588045555343686

`(A213661(n+4)-Δ[A213661(n+4)])*A000032(n)`
-/

namespace A073446.P4432588045555343686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213661 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A213661 (n + 4) - (f1 (n + 1) - f1 n)) * A000032 n

end

end A073446.P4432588045555343686

namespace A073446

/-- `(A213661(n+4)-Δ[A213661(n+4)])*A000032(n)` -/
def P4432588045555343686.Spec : Prop :=
  ∀ n, P4432588045555343686.a n = A073446 n

end A073446

/-! ## A073446.P15406520728720665506

`(A213661(n+4)-Δ[A213661(n+4)])*(A001612(n)-1)`
-/

namespace A073446.P15406520728720665506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213661 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A213661 (n + 4) - (f1 (n + 1) - f1 n)) * (A001612 n - 1)

end

end A073446.P15406520728720665506

namespace A073446

/-- `(A213661(n+4)-Δ[A213661(n+4)])*(A001612(n)-1)` -/
def P15406520728720665506.Spec : Prop :=
  ∀ n, P15406520728720665506.a n = A073446 n

end A073446

/-! ## A073446.P4468026870105772740

`A001644(n)/A073817(n)*A106627(n)`
-/

namespace A073446.P4468026870105772740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 n : ℚ) / (A073817 n : ℚ) * (A106627 n : ℚ)

end

end A073446.P4468026870105772740

namespace A073446

/-- `A001644(n)/A073817(n)*A106627(n)` -/
def P4468026870105772740.Spec : Prop :=
  ∀ n, P4468026870105772740.a n = (A073446 n : ℚ)

end A073446

/-! ## A073446.P14256161199306273934

`A001644(n)/A001254(n)*A075155(n)`
-/

namespace A073446.P14256161199306273934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 n : ℚ) / (A001254 n : ℚ) * (A075155 n : ℚ)

end

end A073446.P14256161199306273934

namespace A073446

/-- `A001644(n)/A001254(n)*A075155(n)` -/
def P14256161199306273934.Spec : Prop :=
  ∀ n, P14256161199306273934.a n = (A073446 n : ℚ)

end A073446

/-! ## A073446.P12499178148456894447

`A001644(n)/A075155(n)*A099923(n)`
-/

namespace A073446.P12499178148456894447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 n : ℚ) / (A075155 n : ℚ) * (A099923 n : ℚ)

end

end A073446.P12499178148456894447

namespace A073446

/-- `A001644(n)/A075155(n)*A099923(n)` -/
def P12499178148456894447.Spec : Prop :=
  ∀ n, P12499178148456894447.a n = (A073446 n : ℚ)

end A073446

/-!
# A073450: Triangle T(j,k) = remainder of Fibonacci(j) divided by Fibonacci(k), for 3 < j and 2 < k < j.

The programs for A073450, the canonical program `A073450.P771997140351676744` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073450 has offset 0).

The definition of A073450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073450.P48816144770593682

`A193999(n+1)%A020695(A002262(n))`
-/

namespace A073450.P48816144770593682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193999 (n + 1)) (A020695 (A002262 n).toNat)

end

end A073450.P48816144770593682

namespace A073450

/-- `A193999(n+1)%A020695(A002262(n))` -/
def P48816144770593682.Spec : Prop :=
  ∀ n, P48816144770593682.a n = A073450 n

end A073450

/-! ## A073450.P5211934843734173163

`A094585(A038722(n+1))%A020695(A002262(n))`
-/

namespace A073450.P5211934843734173163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094585 (A038722 (n + 1)).toNat) (A020695 (A002262 n).toNat)

end

end A073450.P5211934843734173163

namespace A073450

/-- `A094585(A038722(n+1))%A020695(A002262(n))` -/
def P5211934843734173163.Spec : Prop :=
  ∀ n, P5211934843734173163.a n = A073450 n

end A073450

/-! ## A073450.P10886937465767512755

`A094585(A061579(n)+1)%A020695(A002262(n))`
-/

namespace A073450.P10886937465767512755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094585 (A061579 n + 1).toNat) (A020695 (A002262 n).toNat)

end

end A073450.P10886937465767512755

namespace A073450

/-- `A094585(A061579(n)+1)%A020695(A002262(n))` -/
def P10886937465767512755.Spec : Prop :=
  ∀ n, P10886937465767512755.a n = A073450 n

end A073450

/-! ## A073450.P8515889635180128387

`A094585(A093995(n+1)-n)%A020695(A002262(n))`
-/

namespace A073450.P8515889635180128387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094585 (A093995 (n + 1) - (n : ℤ)).toNat) (A020695 (A002262 n).toNat)

end

end A073450.P8515889635180128387

namespace A073450

/-- `A094585(A093995(n+1)-n)%A020695(A002262(n))` -/
def P8515889635180128387.Spec : Prop :=
  ∀ n, P8515889635180128387.a n = A073450 n

end A073450

/-! ## A073450.P771997140351676744

`A143061(A099375(n)+1+n)%A020695(A002262(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A073450

/-- `A143061(A099375(n)+1+n)%A020695(A002262(n))` -/
def P771997140351676744.Spec : Prop :=
  ∀ n, P771997140351676744.a n = A073450 n

theorem P771997140351676744.correct : P771997140351676744.Spec := by
  intro n
  simp only [A073450]

end A073450

/-! ## A073450.P15576252771499098168

`A357724(lt[1, A141169(n)])`
-/

namespace A073450.P15576252771499098168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357724 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073450.P15576252771499098168

namespace A073450

/-- `A357724(lt[1, A141169(n)])` -/
def P15576252771499098168.Spec : Prop :=
  ∀ n, P15576252771499098168.a n = A073450 n

end A073450

/-! ## A073450.P8602976928133452863

`A357724(lt[2, A002262(n)])`
-/

namespace A073450.P8602976928133452863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357724 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073450.P8602976928133452863

namespace A073450

/-- `A357724(lt[2, A002262(n)])` -/
def P8602976928133452863.Spec : Prop :=
  ∀ n, P8602976928133452863.a n = A073450 n

end A073450

/-! ## A073450.P8843091007783776905

`A357724(lt[2, A104763(n+1)])`
-/

namespace A073450.P8843091007783776905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357724 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073450.P8843091007783776905

namespace A073450

/-- `A357724(lt[2, A104763(n+1)])` -/
def P8843091007783776905.Spec : Prop :=
  ∀ n, P8843091007783776905.a n = A073450 n

end A073450

/-! ## A073450.P9746414213477208809

`A022290(A130328(n))%A020695(A002262(n))`
-/

namespace A073450.P9746414213477208809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022290 (A130328 n).toNat) (A020695 (A002262 n).toNat)

end

end A073450.P9746414213477208809

namespace A073450

/-- `A022290(A130328(n))%A020695(A002262(n))` -/
def P9746414213477208809.Spec : Prop :=
  ∀ n, P9746414213477208809.a n = A073450 n

end A073450

/-!
# A073452: a(n) is the number of essentially different ways in which the integers 1,2,3,...,n can be arranged in a sequence such that all pairs of adjacent integers sum to a prime number. Rotations and reversals are counted only once.

The programs for A073452, there is no canonical definition to state claims against.
-/

/-! ## A073452.P527462684465538383

`A002635(C(2*n+1, comp[∑[n+1]]+1))`
-/

namespace A073452.P527462684465538383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (Nat.choose (2 * n + 1) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1))

end

end A073452.P527462684465538383

/-! ## A073452.P14832503594633925337

`A193592(A106489(n+2)*A293042(n))`
-/

namespace A073452.P14832503594633925337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A106489 (n + 2) * A293042 n).toNat

end

end A073452.P14832503594633925337

/-! ## A073452.P5497488357927270941

`A000196(A076707(n+1)^A107293(n))`
-/

namespace A073452.P5497488357927270941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A076707 (n + 1) : ℚ) ^ (A107293 n : ℤ))).toNat

end

end A073452.P5497488357927270941

/-! ## A073452.P17009804921458488732

`A000196(A076707(n+1)^A348323(n))`
-/

namespace A073452.P17009804921458488732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A076707 (n + 1) : ℚ) ^ (A348323 n : ℤ))).toNat

end

end A073452.P17009804921458488732

/-!
# A073453: Number of distinct remainders arising when n is divided by all primes up to n.

The programs for A073453, there is no canonical definition to state claims against.
-/

/-! ## A073453.P11649362493746833818

`A000720(n+1)-A073454(n+1)`
-/

namespace A073453.P11649362493746833818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A073454 (n + 1)

end

end A073453.P11649362493746833818

/-! ## A073453.P11730035755957469648

`∑[A010051(n+1)]-A073454(n+1)`
-/

namespace A073453.P11730035755957469648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A073454 (n + 1)

end

end A073453.P11730035755957469648

/-! ## A073453.P7150284626550947689

`A000010(n+1)-(A073454(n+1)+A037228(n+1))`
-/

namespace A073453.P7150284626550947689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (A073454 (n + 1) + A037228 (n + 1))

end

end A073453.P7150284626550947689

/-! ## A073453.P11454521596611999092

`A230980(n+1)-A073454(n+1)`
-/

namespace A073453.P11454521596611999092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) - A073454 (n + 1)

end

end A073453.P11454521596611999092

/-! ## A073453.P11036506165932918812

`A055679(2*(n+1))-A073454(n+1)`
-/

namespace A073453.P11036506165932918812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (2 * (n + 1)) - A073454 (n + 1)

end

end A073453.P11036506165932918812

/-! ## A073453.P14950467718344146858

`A083415(A000124(n))-A073454(n+1)`
-/

namespace A073453.P14950467718344146858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083415 (A000124 n).toNat - A073454 (n + 1)

end

end A073453.P14950467718344146858

/-!
# A073454: Number of repeated remainders arising when n is divided by all primes up to n: a(n) = pi(n) - A073453(n).

The programs for A073454, there is no canonical definition to state claims against.
-/

/-! ## A073454.P8785795151915318577

`A000720(n+1)-A073453(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073454.P8785795151915318577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A073453 (n + 1)

end

end A073454.P8785795151915318577

/-! ## A073454.P7397505495044731003

`∑[A010051(n+1)]-A073453(n+1)`
-/

namespace A073454.P7397505495044731003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A073453 (n + 1)

end

end A073454.P7397505495044731003

/-! ## A073454.P3016384675384158282

`A036234(n+1)-(A073453(n+1)+1)`
-/

namespace A073454.P3016384675384158282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - (A073453 (n + 1) + 1)

end

end A073454.P3016384675384158282

/-! ## A073454.P13384486992547495184

`A000010(n+1)-(A073453(n+1)+A037228(n+1))`
-/

namespace A073454.P13384486992547495184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (A073453 (n + 1) + A037228 (n + 1))

end

end A073454.P13384486992547495184

/-! ## A073454.P12893447993454528722

`A230980(n+1)-A073453(n+1)`
-/

namespace A073454.P12893447993454528722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) - A073453 (n + 1)

end

end A073454.P12893447993454528722

/-! ## A073454.P1660761752835152188

`A083415(A000124(n))-A073453(n+1)`
-/

namespace A073454.P1660761752835152188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083415 (A000124 n).toNat - A073453 (n + 1)

end

end A073454.P1660761752835152188

/-!
# A073457: Numbers k such that phi(k) = pi(k) + 2.

The programs for A073457, there is no canonical definition to state claims against.
-/

/-! ## A073457.P529697527466391205

`eq[2, A037228(n+1)]+1`
-/

namespace A073457.P529697527466391205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037228 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073457.P529697527466391205

/-! ## A073457.P6327296440729490691

`eq[2, A037228(A028310(n))]`
-/

namespace A073457.P6327296440729490691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037228 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073457.P6327296440729490691

/-! ## A073457.P12981328036230298625

`A020725(eq[2, A037228(n+1)])`
-/

namespace A073457.P12981328036230298625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073457.P12981328036230298625

/-! ## A073457.P9882677618959462834

`A092200(eq[2, A037228(n+1)])`
-/

namespace A073457.P9882677618959462834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073457.P9882677618959462834

/-! ## A073457.P6563372278432783541

`A117571(eq[2, A037228(n+1)])`
-/

namespace A073457.P6563372278432783541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073457.P6563372278432783541

/-!
# A073458: a(n) = floor(prime(n)/composite(n)).

The programs for A073458, the canonical program `A073458.P13611208984373621108` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073458 has offset 1).

The definition of A073458 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073458.P13611208984373621108

`floor(A000040(n+1)/A002808(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073458

/-- `floor(A000040(n+1)/A002808(n+1))` -/
def P13611208984373621108.Spec : Prop :=
  ∀ n, P13611208984373621108.a n = A073458 (n + 1)

theorem P13611208984373621108.correct : P13611208984373621108.Spec := by
  intro n
  simp only [A073458, Nat.add_sub_cancel]

end A073458

/-! ## A073458.P14486746034400618660

`floor(Δ[A007504(n)]/A002808(n+1))`
-/

namespace A073458.P14486746034400618660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A002808 (n + 1) : ℚ)⌋

end

end A073458.P14486746034400618660

namespace A073458

/-- `floor(Δ[A007504(n)]/A002808(n+1))` -/
def P14486746034400618660.Spec : Prop :=
  ∀ n, P14486746034400618660.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P13395599072063917652

`floor(A000040(n+1)/Δ[A053767(n)])`
-/

namespace A073458.P13395599072063917652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A073458.P13395599072063917652

namespace A073458

/-- `floor(A000040(n+1)/Δ[A053767(n)])` -/
def P13395599072063917652.Spec : Prop :=
  ∀ n, P13395599072063917652.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P17510694311829681913

`floor(A006093(n+1)/Δ[A053767(n)])`
-/

namespace A073458.P17510694311829681913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A073458.P17510694311829681913

namespace A073458

/-- `floor(A006093(n+1)/Δ[A053767(n)])` -/
def P17510694311829681913.Spec : Prop :=
  ∀ n, P17510694311829681913.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P4453764390459558902

`floor(A006005(n+1)/A002808(n+1))`
-/

namespace A073458.P4453764390459558902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006005 (n + 1) : ℚ) / (A002808 (n + 1) : ℚ)⌋

end

end A073458.P4453764390459558902

namespace A073458

/-- `floor(A006005(n+1)/A002808(n+1))` -/
def P4453764390459558902.Spec : Prop :=
  ∀ n, P4453764390459558902.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P385699155105074529

`floor(A006093(n+1)/A002808(n+1))`
-/

namespace A073458.P385699155105074529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) : ℚ) / (A002808 (n + 1) : ℚ)⌋

end

end A073458.P385699155105074529

namespace A073458

/-- `floor(A006093(n+1)/A002808(n+1))` -/
def P385699155105074529.Spec : Prop :=
  ∀ n, P385699155105074529.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P11744115833692929366

`floor(A000040(n+1)/A018252(n+2))`
-/

namespace A073458.P11744115833692929366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (A018252 (n + 2) : ℚ)⌋

end

end A073458.P11744115833692929366

namespace A073458

/-- `floor(A000040(n+1)/A018252(n+2))` -/
def P11744115833692929366.Spec : Prop :=
  ∀ n, P11744115833692929366.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P9009608397682163164

`floor(A006093(n+1)/A018252(n+2))`
-/

namespace A073458.P9009608397682163164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) : ℚ) / (A018252 (n + 2) : ℚ)⌋

end

end A073458.P9009608397682163164

namespace A073458

/-- `floor(A006093(n+1)/A018252(n+2))` -/
def P9009608397682163164.Spec : Prop :=
  ∀ n, P9009608397682163164.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P17729155019451789710

`floor(A000040(n+1)/A141468(n+3))`
-/

namespace A073458.P17729155019451789710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (A141468 (n + 3) : ℚ)⌋

end

end A073458.P17729155019451789710

namespace A073458

/-- `floor(A000040(n+1)/A141468(n+3))` -/
def P17729155019451789710.Spec : Prop :=
  ∀ n, P17729155019451789710.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P7582682788878488645

`floor(A006093(n+1)/lt[0, A082023(n)])`
-/

namespace A073458.P7582682788878488645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ)⌋

end

end A073458.P7582682788878488645

namespace A073458

/-- `floor(A006093(n+1)/lt[0, A082023(n)])` -/
def P7582682788878488645.Spec : Prop :=
  ∀ n, P7582682788878488645.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P7008007631545330580

`floor(A000040(n+1)/lt[1, A328847(n)])`
-/

namespace A073458.P7008007631545330580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ)⌋

end

end A073458.P7008007631545330580

namespace A073458

/-- `floor(A000040(n+1)/lt[1, A328847(n)])` -/
def P7008007631545330580.Spec : Prop :=
  ∀ n, P7008007631545330580.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P3206362078841191106

`floor(A006093(n+1)/lt[1, A328847(n)])`
-/

namespace A073458.P3206362078841191106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ)⌋

end

end A073458.P3206362078841191106

namespace A073458

/-- `floor(A006093(n+1)/lt[1, A328847(n)])` -/
def P3206362078841191106.Spec : Prop :=
  ∀ n, P3206362078841191106.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P8056227202362850655

`floor((A040976(n+1)+2)/A018252(n+2))`
-/

namespace A073458.P8056227202362850655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A040976 (n + 1) + 2 : ℚ) / (A018252 (n + 2) : ℚ)⌋

end

end A073458.P8056227202362850655

namespace A073458

/-- `floor((A040976(n+1)+2)/A018252(n+2))` -/
def P8056227202362850655.Spec : Prop :=
  ∀ n, P8056227202362850655.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P5281709905428711916

`floor(A000040(n+1)/(lt[1, A001222(n+1)]+1))`
-/

namespace A073458.P5281709905428711916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ)⌋

end

end A073458.P5281709905428711916

namespace A073458

/-- `floor(A000040(n+1)/(lt[1, A001222(n+1)]+1))` -/
def P5281709905428711916.Spec : Prop :=
  ∀ n, P5281709905428711916.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P2506920486620684615

`floor(A006093(n+1)/(lt[1, A001222(n+1)]+1))`
-/

namespace A073458.P2506920486620684615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ)⌋

end

end A073458.P2506920486620684615

namespace A073458

/-- `floor(A006093(n+1)/(lt[1, A001222(n+1)]+1))` -/
def P2506920486620684615.Spec : Prop :=
  ∀ n, P2506920486620684615.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P17005067640634454131

`floor(A000040(n+1)/(lt[2, A000005(n+1)]+1))`
-/

namespace A073458.P17005067640634454131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ)⌋

end

end A073458.P17005067640634454131

namespace A073458

/-- `floor(A000040(n+1)/(lt[2, A000005(n+1)]+1))` -/
def P17005067640634454131.Spec : Prop :=
  ∀ n, P17005067640634454131.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P10070693235200968700

`floor(A006093(n+1)/(lt[2, A000005(n+1)]+1))`
-/

namespace A073458.P10070693235200968700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ)⌋

end

end A073458.P10070693235200968700

namespace A073458

/-- `floor(A006093(n+1)/(lt[2, A000005(n+1)]+1))` -/
def P10070693235200968700.Spec : Prop :=
  ∀ n, P10070693235200968700.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P12791419038645420033

`floor(A000040(n+1)/(lt[A000010(n+1), n]+1))`
-/

namespace A073458.P12791419038645420033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℚ)⌋

end

end A073458.P12791419038645420033

namespace A073458

/-- `floor(A000040(n+1)/(lt[A000010(n+1), n]+1))` -/
def P12791419038645420033.Spec : Prop :=
  ∀ n, P12791419038645420033.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P11379064345545137072

`floor(A006093(n+1)/(lt[A000010(n+1), n]+1))`
-/

namespace A073458.P11379064345545137072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℚ)⌋

end

end A073458.P11379064345545137072

namespace A073458

/-- `floor(A006093(n+1)/(lt[A000010(n+1), n]+1))` -/
def P11379064345545137072.Spec : Prop :=
  ∀ n, P11379064345545137072.a n = A073458 (n + 1)

end A073458

/-! ## A073458.P13446403010416139872

`floor(A000040(n+1)/(lt[A006530(n+1), n]+1))`
-/

namespace A073458.P13446403010416139872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℚ)⌋

end

end A073458.P13446403010416139872

namespace A073458

/-- `floor(A000040(n+1)/(lt[A006530(n+1), n]+1))` -/
def P13446403010416139872.Spec : Prop :=
  ∀ n, P13446403010416139872.a n = A073458 (n + 1)

end A073458

/-!
# A073459: Smallest x such that Floor[A000040(x)/A002808(x)]=n.

The programs for A073459, there is no canonical definition to state claims against.
-/

/-! ## A073459.P8068557419390718112

`A305801(A125075(n+1))-3`
-/

namespace A073459.P8068557419390718112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (A125075 (n + 1)).toNat - 3

end

end A073459.P8068557419390718112

/-! ## A073459.P18061890930480744110

`A000720(A093864(n+1))`
-/

namespace A073459.P18061890930480744110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A093864 (n + 1)).toNat

end

end A073459.P18061890930480744110

/-! ## A073459.P716272036547178977

`A026238(A125075(n+1))`
-/

namespace A073459.P716272036547178977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A125075 (n + 1)).toNat

end

end A073459.P716272036547178977

/-! ## A073459.P6610245746634182846

`A062298(A125075(n+1)-1)`
-/

namespace A073459.P6610245746634182846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A125075 (n + 1) - 1).toNat

end

end A073459.P6610245746634182846

/-!
# A073461: Largest solution to phi(x) - pi(x) = n or 0 if no such solution exists.

The programs for A073461, there is no canonical definition to state claims against.
-/

/-! ## A073461.P9945304612290437840

`A129855(4*A069860(n+1))`
-/

namespace A073461.P9945304612290437840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129855 (4 * A069860 (n + 1)).toNat

end

end A073461.P9945304612290437840

/-!
# A073463: Triangle of number of partitions of 2n into powers of 2 where the largest part is 2^k.

The programs for A073463, there is no canonical definition to state claims against.
-/

/-! ## A073463.P9155494624335907325

`round(ratio[A192519(A295222(n+1))])`
-/

namespace A073463.P9155494624335907325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192519 (A295222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A073463.P9155494624335907325

/-! ## A073463.P267602121641235391

`A092905(n)-A316864(A329676(n))`
-/

namespace A073463.P267602121641235391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092905 n - A316864 (A329676 n).toNat

end

end A073463.P267602121641235391

/-! ## A073463.P17813774212958280476

`A092905(n)-A108456(A063851(n+3))`
-/

namespace A073463.P17813774212958280476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092905 n - A108456 (A063851 (n + 3)).toNat

end

end A073463.P17813774212958280476

/-! ## A073463.P6665339090242011503

`round(A008459(n)/A020753(A106179(n+2)))`
-/

namespace A073463.P6665339090242011503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008459 n : ℚ) / (A020753 (A106179 (n + 2)).toNat : ℚ))

end

end A073463.P6665339090242011503

/-! ## A073463.P11296752328922537262

`A333755(n)+A134540(A101282(2*n+1))`
-/

namespace A073463.P11296752328922537262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 n + A134540 (A101282 (2 * n + 1)).toNat

end

end A073463.P11296752328922537262

/-!
# A073464: a(n) = phi(n) mod PrimePi(n).

The programs for A073464, the canonical program `A073464.P275682291420203963` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073464 has offset 2).

The definition of A073464 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073464.P275682291420203963

`A000010(n+2)%A000720(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073464

/-- `A000010(n+2)%A000720(n+2)` -/
def P275682291420203963.Spec : Prop :=
  ∀ n, P275682291420203963.a n = A073464 (n + 2)

theorem P275682291420203963.correct : P275682291420203963.Spec := by
  intro n
  simp only [A073464, Nat.add_sub_cancel]

end A073464

/-! ## A073464.P5660369968683149717

`Δ[A002088(n+1)]%A000720(n+2)`
-/

namespace A073464.P5660369968683149717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000720 (n + 2))

end

end A073464.P5660369968683149717

namespace A073464

/-- `Δ[A002088(n+1)]%A000720(n+2)` -/
def P5660369968683149717.Spec : Prop :=
  ∀ n, P5660369968683149717.a n = A073464 (n + 2)

end A073464

/-! ## A073464.P461167363361314300

`Δ[A005728(n+1)]%A000720(n+2)`
-/

namespace A073464.P461167363361314300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000720 (n + 2))

end

end A073464.P461167363361314300

namespace A073464

/-- `Δ[A005728(n+1)]%A000720(n+2)` -/
def P461167363361314300.Spec : Prop :=
  ∀ n, P461167363361314300.a n = A073464 (n + 2)

end A073464

/-! ## A073464.P7203081434031039635

`A082515(n+2)%A000720(n+2)`
-/

namespace A073464.P7203081434031039635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082515 (n + 2)) (A000720 (n + 2))

end

end A073464.P7203081434031039635

namespace A073464

/-- `A082515(n+2)%A000720(n+2)` -/
def P7203081434031039635.Spec : Prop :=
  ∀ n, P7203081434031039635.a n = A073464 (n + 2)

end A073464

/-! ## A073464.P8443011073377394618

`Δ[A015614(n+1)]%A000720(n+2)`
-/

namespace A073464.P8443011073377394618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000720 (n + 2))

end

end A073464.P8443011073377394618

namespace A073464

/-- `Δ[A015614(n+1)]%A000720(n+2)` -/
def P8443011073377394618.Spec : Prop :=
  ∀ n, P8443011073377394618.a n = A073464 (n + 2)

end A073464

/-! ## A073464.P8059886231352575251

`(n+1-A219428(n+2))%A000720(n+2)`
-/

namespace A073464.P8059886231352575251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - A219428 (n + 2)) (A000720 (n + 2))

end

end A073464.P8059886231352575251

namespace A073464

/-- `(n+1-A219428(n+2))%A000720(n+2)` -/
def P8059886231352575251.Spec : Prop :=
  ∀ n, P8059886231352575251.a n = A073464 (n + 2)

theorem P8059886231352575251.correct : P8059886231352575251.Spec := by
  intro n
  simp only [A073464, Nat.add_sub_cancel, A073464.P8059886231352575251.a, A073464.P275682291420203963.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A073464

/-! ## A073464.P32923351502807061

`A000720(A048848(n+2))%A000720(n+2)`
-/

namespace A073464.P32923351502807061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A048848 (n + 2)).toNat) (A000720 (n + 2))

end

end A073464.P32923351502807061

namespace A073464

/-- `A000720(A048848(n+2))%A000720(n+2)` -/
def P32923351502807061.Spec : Prop :=
  ∀ n, P32923351502807061.a n = A073464 (n + 2)

end A073464

/-! ## A073464.P15491579784549291779

`A225530(n+2)%A000720(n+2)`
-/

namespace A073464.P15491579784549291779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225530 (n + 2)) (A000720 (n + 2))

end

end A073464.P15491579784549291779

namespace A073464

/-- `A225530(n+2)%A000720(n+2)` -/
def P15491579784549291779.Spec : Prop :=
  ∀ n, P15491579784549291779.a n = A073464 (n + 2)

end A073464

/-!
# A073465: Numbers n such that phi(n)/pi(n) is an integer.

The programs for A073465, there is no canonical definition to state claims against.
-/

/-! ## A073465.P5203975782417646771

`eq[0, A073464(n+2)]+2`
-/

namespace A073465.P5203975782417646771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073464 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A073465.P5203975782417646771

/-! ## A073465.P6828034203161368002

`record[gcd(A020725(n+1), A073464(n+2))]`
-/

namespace A073465.P6828034203161368002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020725 (n + 1)) (A073464 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073465.P6828034203161368002

/-!
# A073467: a(n) is the number of essentially different ways in which the integers 1,2,3,...,2n can be arranged in a circle such that (1) all pairs of adjacent integers sum to a prime number and (2) all pairs of integers opposite each other on the circle sum to a prime.

The programs for A073467, there is no canonical definition to state claims against.
-/

/-! ## A073467.P18149405040001930012

`and(A003946(n), A008621(A268698(n)))`
-/

namespace A073467.P18149405040001930012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003946 n) (A008621 (A268698 n).toNat)

end

end A073467.P18149405040001930012

/-! ## A073467.P14077749624377572465

`and(A000174(A000245(n)), A000279(n+1))`
-/

namespace A073467.P14077749624377572465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000174 (A000245 n).toNat) (A000279 (n + 1))

end

end A073467.P14077749624377572465

/-! ## A073467.P3263084941337960091

`and(A000174(A000245(n)), A096962(n+1))`
-/

namespace A073467.P3263084941337960091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000174 (A000245 n).toNat) (A096962 (n + 1))

end

end A073467.P3263084941337960091

/-! ## A073467.P12892603321343993893

`and(A018626(A060546(n)), A096962(n+1))`
-/

namespace A073467.P12892603321343993893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018626 (A060546 n).toNat) (A096962 (n + 1))

end

end A073467.P12892603321343993893

/-!
# A073468: First n-digit prime in the concatenation of the even integers allowing leading zeros.

The programs for A073468, there is no canonical definition to state claims against.
-/

/-! ## A073468.P7061008013239108052

`A073186(n+1)%A339803(A347554(n+1))`
-/

namespace A073468.P7061008013239108052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073186 (n + 1)) (A339803 (A347554 (n + 1)).toNat)

end

end A073468.P7061008013239108052

/-!
# A073470: Trisection of A007294.

The programs for A073470, there is no canonical definition to state claims against.
-/

/-! ## A073470.P1994232600502936104

`A007294(3*n)`
-/

namespace A073470.P1994232600502936104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (3 * n)

end

end A073470.P1994232600502936104

/-! ## A073470.P14562996244831379076

`record[A007294(A006368(n))]`
-/

namespace A073470.P14562996244831379076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A006368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073470.P14562996244831379076

/-! ## A073470.P5250840538900093803

`record[A007294(A071045(n))]`
-/

namespace A073470.P5250840538900093803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A071045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073470.P5250840538900093803

/-! ## A073470.P17886655592331771888

`record[A007294(A014682(n)+1)]`
-/

namespace A073470.P17886655592331771888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A014682 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073470.P17886655592331771888

/-! ## A073470.P8168368966489543186

`record[A007294(A116551(n+1))]`
-/

namespace A073470.P8168368966489543186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A116551 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073470.P8168368966489543186

/-! ## A073470.P5998116991002781183

`record[A007294(A342131(n)+1)]`
-/

namespace A073470.P5998116991002781183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A342131 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073470.P5998116991002781183

/-! ## A073470.P1360146864429357949

`record[A007294(A071054(n)-1)]`
-/

namespace A073470.P1360146864429357949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A071054 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073470.P1360146864429357949

/-! ## A073470.P4615133603891936377

`record[A007294(n)/A010882(n)]`
-/

namespace A073470.P4615133603891936377
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007294 n : ℚ) / (A010882 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073470.P4615133603891936377

/-! ## A073470.P16629354483281343549

`record[A007294(n)^A049347(n)]`
-/

namespace A073470.P16629354483281343549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007294 n : ℚ) ^ (A049347 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073470.P16629354483281343549

/-! ## A073470.P43784964998547947

`record[and(A007294(n+1), A057078(n))]`
-/

namespace A073470.P43784964998547947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007294 (n + 1)) (A057078 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073470.P43784964998547947

/-! ## A073470.P12568538644728510090

`gcd(A000038(n), A007294(A008486(n)))`
-/

namespace A073470.P12568538644728510090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A007294 (A008486 n).toNat)

end

end A073470.P12568538644728510090

/-! ## A073470.P6080410181023879333

`A007294(A008486(n))+A000038(n+1)`
-/

namespace A073470.P6080410181023879333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A008486 n).toNat + A000038 (n + 1)

end

end A073470.P6080410181023879333

/-! ## A073470.P4607800826777706324

`lcm(A007294(A016777(n)-1), A033999(n))`
-/

namespace A073470.P4607800826777706324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007294 (A016777 n - 1).toNat) (A033999 n)

end

end A073470.P4607800826777706324

/-! ## A073470.P13382864136175721489

`or(A000007(n), A007294(A016789(n)-2))`
-/

namespace A073470.P13382864136175721489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A007294 (A016789 n - 2).toNat)

end

end A073470.P13382864136175721489

/-! ## A073470.P14408531157059460864

`record[A007294(gcd(n, A072340(n+3)))]`
-/

namespace A073470.P14408531157059460864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (Int.gcd (n : ℤ) (A072340 (n + 3)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073470.P14408531157059460864

/-! ## A073470.P5001976185742670478

`record[A007294(n)/(A072340(n+3)+1)]`
-/

namespace A073470.P5001976185742670478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007294 n : ℚ) / (A072340 (n + 3) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073470.P5001976185742670478

/-! ## A073470.P17821278084898931514

`A007294(A008486(n))%A000051(n)`
-/

namespace A073470.P17821278084898931514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007294 (A008486 n).toNat) (A000051 n)

end

end A073470.P17821278084898931514

/-!
# A073471: Trisection of A007294.

The programs for A073471, there is no canonical definition to state claims against.
-/

/-! ## A073471.P18181883633775653394

`A007294(3*n+1)`
-/

namespace A073471.P18181883633775653394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (3 * n + 1)

end

end A073471.P18181883633775653394

/-! ## A073471.P13308901281277877985

`record[A007294(gcd(n, floor(n/2))+1+n)]`
-/

namespace A073471.P13308901281277877985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073471.P13308901281277877985

/-! ## A073471.P6485302024930996907

`record[A007294(A071054(n))]`
-/

namespace A073471.P6485302024930996907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A071054 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073471.P6485302024930996907

/-! ## A073471.P1415600214479867253

`record[A007294(A006368(n)+1)]`
-/

namespace A073471.P1415600214479867253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A006368 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073471.P1415600214479867253

/-! ## A073471.P3654522412220653168

`record[A007294(n²%A005408(n))]`
-/

namespace A073471.P3654522412220653168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (Int.tmod (n ^ 2 : ℤ) (A005408 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073471.P3654522412220653168

/-! ## A073471.P16420335981902681144

`record[A007294(A116551(n+1)+1)]`
-/

namespace A073471.P16420335981902681144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A116551 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073471.P16420335981902681144

/-! ## A073471.P8268594059138111886

`gcd(A000038(n), A007294(A016777(n)))`
-/

namespace A073471.P8268594059138111886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A007294 (A016777 n).toNat)

end

end A073471.P8268594059138111886

/-! ## A073471.P18382623276812501117

`A007294(A016777(n))%A000051(n)`
-/

namespace A073471.P18382623276812501117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007294 (A016777 n).toNat) (A000051 n)

end

end A073471.P18382623276812501117

/-!
# A073472: Trisection of A007294.

The programs for A073472, there is no canonical definition to state claims against.
-/

/-! ## A073472.P15555391545688594046

`A007294(3*n+2)`
-/

namespace A073472.P15555391545688594046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (3 * n + 2)

end

end A073472.P15555391545688594046

/-! ## A073472.P16589257261684743102

`record[A007294(n)^(C(n, 2)%3)]`
-/

namespace A073472.P16589257261684743102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 n ^ (Nat.choose n 2 % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073472.P16589257261684743102

/-! ## A073472.P14213640226417684097

`record[A007294(A014682(n))]`
-/

namespace A073472.P14213640226417684097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A014682 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073472.P14213640226417684097

/-! ## A073472.P16124380617073024768

`record[A007294(A166517(n))]`
-/

namespace A073472.P16124380617073024768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A166517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073472.P16124380617073024768

/-! ## A073472.P2819232632509764592

`record[A007294(A342131(n))]`
-/

namespace A073472.P2819232632509764592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A342131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073472.P2819232632509764592

/-! ## A073472.P7216409167204187543

`record[A007294(A071054(n)+1)]`
-/

namespace A073472.P7216409167204187543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A071054 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073472.P7216409167204187543

/-! ## A073472.P13245593267655360395

`record[A007294(A006368(n)+2)]`
-/

namespace A073472.P13245593267655360395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A006368 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073472.P13245593267655360395

/-! ## A073472.P12562061345010799367

`record[A007294(n)*A163804(n)]`
-/

namespace A073472.P12562061345010799367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 n * A163804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073472.P12562061345010799367

/-! ## A073472.P12306848540984260639

`record[A007294(and(n, A057078(n)))]`
-/

namespace A073472.P12306848540984260639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (Int.land (n : ℤ) (A057078 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073472.P12306848540984260639

/-! ## A073472.P17740651700333733590

`record[A007294(A116551(n+1)+2)]`
-/

namespace A073472.P17740651700333733590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 (A116551 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073472.P17740651700333733590

/-! ## A073472.P2814187816187812406

`or(A000007(n), A007294(A016789(n)))`
-/

namespace A073472.P2814187816187812406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A007294 (A016789 n).toNat)

end

end A073472.P2814187816187812406

/-! ## A073472.P7357498022316480339

`lcm(A007294(A016777(n)+1), A033999(n))`
-/

namespace A073472.P7357498022316480339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007294 (A016777 n + 1).toNat) (A033999 n)

end

end A073472.P7357498022316480339

/-! ## A073472.P14576077225363126114

`record[A007294(n)^A102283(2*n)]`
-/

namespace A073472.P14576077225363126114
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007294 n : ℚ) ^ (A102283 (2 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073472.P14576077225363126114

/-! ## A073472.P5277821052719793283

`A007294(A016789(n))%A000051(n)`
-/

namespace A073472.P5277821052719793283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007294 (A016789 n).toNat) (A000051 n)

end

end A073472.P5277821052719793283

/-! ## A073472.P10818526516674561646

`A007294(A016777(n)+1)%A000051(n)`
-/

namespace A073472.P10818526516674561646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007294 (A016777 n + 1).toNat) (A000051 n)

end

end A073472.P10818526516674561646

/-!
# A073473: Primes (including 1) forming 3 X 3 magic square with prime entries and minimal constant 111 = A073502(3).

The programs for A073473, there is no canonical definition to state claims against.
-/

/-! ## A073473.P1590419188424958630

`a(n-3)+30` with `a(0)=1, a(1)=7, a(2)=13`
-/

namespace A073473.P1590419188424958630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 13] fun n a =>
  a (n - 3) + 30

end

end A073473.P1590419188424958630

/-! ## A073473.P11059392038914355319

`∑[lcm(2, dr(6*n))]+1`
-/

namespace A073473.P11059392038914355319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (SequenceMachineLib.digitalRoot (6 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A073473.P11059392038914355319

/-! ## A073473.P5264088379190317031

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=6, a(2)=6, a(3)=18`

`floor` is left out, it is the identity on integers.
-/

namespace A073473.P5264088379190317031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 6, 18] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073473.P5264088379190317031

/-! ## A073473.P1012289168910257551

`∑[6*gcd(n, 3^n)]-5`
-/

namespace A073473.P1012289168910257551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.gcd n (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 5

end

end A073473.P1012289168910257551

/-! ## A073473.P16124882051076302901

`∑[gcd(18, floor(6/acot(n)^3))]`
-/

namespace A073473.P16124882051076302901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 18 ⌊6 / SequenceMachineLib.acot (n : ℝ) ^ 3⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073473.P16124882051076302901

/-!
# A073474: Triangle T(n,k) read by rows, where o.g.f. for T(n,k) is n!*Sum_{k=0..n} (1+x)^(n-k)/k!.

The programs for A073474, there is no canonical definition to state claims against.
-/

/-! ## A073474.P15785097312160038168

`A008279(n)*A143409(n)`
-/

namespace A073474.P15785097312160038168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A143409 n

end

end A073474.P15785097312160038168

/-! ## A073474.P18275164702441162356

`A094587(A061579(n))*A143409(n)`
-/

namespace A073474.P18275164702441162356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A061579 n).toNat * A143409 n

end

end A073474.P18275164702441162356

/-! ## A073474.P1696706713381454523

`(A324362(n)+A060475(n))*A143409(n)`
-/

namespace A073474.P1696706713381454523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A324362 n + A060475 n) * A143409 n

end

end A073474.P1696706713381454523

/-! ## A073474.P10556975221786569589

`(A155162(n)-A094587(n))*A143409(n)`
-/

namespace A073474.P10556975221786569589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155162 n - A094587 n) * A143409 n

end

end A073474.P10556975221786569589

/-! ## A073474.P3136805238876865678

`A021010(n)/A130595(n)*A143409(n)`
-/

namespace A073474.P3136805238876865678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021010 n : ℚ) / (A130595 n : ℚ) * (A143409 n : ℚ)

end

end A073474.P3136805238876865678

/-! ## A073474.P16598178061352753777

`gcd(A090802(n), A206703(n))*A143409(n)`
-/

namespace A073474.P16598178061352753777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A090802 n) (A206703 n) : ℤ) * A143409 n

end

end A073474.P16598178061352753777

/-! ## A073474.P9772112436301020057

`gcd(A218016(n), A218017(n))*A143409(n)`
-/

namespace A073474.P9772112436301020057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A218016 n) (A218017 n) : ℤ) * A143409 n

end

end A073474.P9772112436301020057

/-! ## A073474.P14828896005357224051

`A143409(n)/A004736(n+1)*A245334(n)`
-/

namespace A073474.P14828896005357224051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143409 n : ℚ) / (A004736 (n + 1) : ℚ) * (A245334 n : ℚ)

end

end A073474.P14828896005357224051

/-! ## A073474.P12429239665850735377

`A068424(n+1)/A002024(n+1)*A143409(n)`
-/

namespace A073474.P12429239665850735377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068424 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) * (A143409 n : ℚ)

end

end A073474.P12429239665850735377

/-! ## A073474.P11964356399873702832

`A113025(n)/A046899(n)*A143409(n)`
-/

namespace A073474.P11964356399873702832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113025 n : ℚ) / (A046899 n : ℚ) * (A143409 n : ℚ)

end

end A073474.P11964356399873702832

/-!
# A073476: Numbers k such that k^4 + 1, (k+2)^4 + 1 and (k+4)^4 + 1 are all primes.

The programs for A073476, the canonical program `A073476.P9077673232902920346` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073476 has offset 1).

The definition of A073476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073476.P9077673232902920346

`∩[A217795(n+1)-2, A217795(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A073476

/-- `∩[A217795(n+1)-2, A217795(n+1)]` -/
def P9077673232902920346.Spec : Prop :=
  ∀ n, (P9077673232902920346.a n : ℤ) = A073476 (n + 1)

theorem P9077673232902920346.correct : P9077673232902920346.Spec := by
  intro n
  simp only [A073476, Nat.add_sub_cancel]

end A073476

/-!
# A073477: Least k such that 2^n = k^2-sigma(k)*phi(k).

The programs for A073477, there is no canonical definition to state claims against.
-/

/-! ## A073477.P18103535892038841803

`and(A059986(3*n+2), A247908(A030018(2*(n+2))))`
-/

namespace A073477.P18103535892038841803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059986 (3 * n + 2)) (A247908 (A030018 (2 * (n + 2))).toNat)

end

end A073477.P18103535892038841803

/-!
# A073478: Expansion of (1+x)^(1/(1-x)).

The programs for A073478, there is no canonical definition to state claims against.
-/

/-! ## A073478.P11194524348980673076

`A238617(∑[(1-n)²])`
-/

namespace A073478.P11194524348980673076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238617 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073478.P11194524348980673076

/-! ## A073478.P17534280162000809986

`ceil(∏{p}[A302699(n)², #]/ϕ)`
-/

namespace A073478.P17534280162000809986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302699 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℝ) / Real.goldenRatio⌉

end

end A073478.P17534280162000809986

/-!
# A073479: Expansion of e.g.f.: (1-x)^(-1-x).

The programs for A073479, there is no canonical definition to state claims against.
-/

/-! ## A073479.P17230890874029593972

`A028310(n)*A034887(A007526(n))`
-/

namespace A073479.P17230890874029593972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A034887 (A007526 n).toNat

end

end A073479.P17230890874029593972

/-! ## A073479.P9358862092878681033

`A034887(3*n)*A034887(A007526(n))`
-/

namespace A073479.P9358862092878681033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (3 * n) * A034887 (A007526 n).toNat

end

end A073479.P9358862092878681033

/-!
# A073480: Triangle T(n,k) read by rows, where e.g.f. for T(n,k) is exp(x*y)*log(1+x)/(1-x).

The programs for A073480, the canonical program `A073480.P1134209135426630822` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073480 has offset 1).

The definition of A073480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073480.P1134209135426630822

`A024167(A004736(n+1))*A074909(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073480

/-- `A024167(A004736(n+1))*A074909(n)` -/
def P1134209135426630822.Spec : Prop :=
  ∀ n, P1134209135426630822.a n = A073480 (n + 1)

theorem P1134209135426630822.correct : P1134209135426630822.Spec := by
  intro n
  simp only [A073480, Nat.add_sub_cancel]

end A073480

/-!
# A073481: Least prime factor of the n-th squarefree number.

The programs for A073481, there is no canonical definition to state claims against.
-/

/-! ## A073481.P14382759356375307791

`A020639(A005117(n+1))`
-/

namespace A073481.P14382759356375307791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005117 (n + 1)).toNat

end

end A073481.P14382759356375307791

/-! ## A073481.P2460237394292969443

`A020639(comp[A105570(n)])`
-/

namespace A073481.P2460237394292969443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A073481.P2460237394292969443

/-! ## A073481.P15374258833312699370

`A020639(lt[A105570(n), n])`
-/

namespace A073481.P15374258833312699370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A073481.P15374258833312699370

/-! ## A073481.P13689088195204766284

`A020639(sqrt(A062503(n+1)))`
-/

namespace A073481.P13689088195204766284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A062503 (n + 1) : ℝ))).toNat

end

end A073481.P13689088195204766284

/-! ## A073481.P14590911741976719858

`A020639(record[A003967(n+1)])`
-/

namespace A073481.P14590911741976719858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073481.P14590911741976719858

/-! ## A073481.P8894382841652762098

`A020639(record[A007913(n+1)])`
-/

namespace A073481.P8894382841652762098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073481.P8894382841652762098

/-! ## A073481.P8432979948078187207

`A020639(record[A007947(n+1)])`
-/

namespace A073481.P8432979948078187207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073481.P8432979948078187207

/-! ## A073481.P11089920802174645141

`A020639(record[A055231(n+1)])`
-/

namespace A073481.P11089920802174645141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073481.P11089920802174645141

/-! ## A073481.P4962932433735523232

`A020639(record[A055653(n+1)])`
-/

namespace A073481.P4962932433735523232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073481.P4962932433735523232

/-! ## A073481.P8303449552573503785

`A020639(record[A083346(n+1)])`
-/

namespace A073481.P8303449552573503785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073481.P8303449552573503785

/-! ## A073481.P16852221358749230336

`A020639(eq[1, A005361(n+1)]+1)`
-/

namespace A073481.P16852221358749230336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073481.P16852221358749230336

/-! ## A073481.P13099900961711494843

`A020639(lt[A051903(n+1), 2]+1)`
-/

namespace A073481.P13099900961711494843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A073481.P13099900961711494843

/-! ## A073481.P17634588073294149070

`A073482(n+1)-A115013(n+1)`
-/

namespace A073481.P17634588073294149070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073482 (n + 1) - A115013 (n + 1)

end

end A073481.P17634588073294149070

/-! ## A073481.P7555004276883017453

`A366786(n+1)/A005117(n+1)`
-/

namespace A073481.P7555004276883017453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366786 (n + 1) : ℚ) / (A005117 (n + 1) : ℚ)

end

end A073481.P7555004276883017453

/-! ## A073481.P5243452834620992855

`A020639(lt[n, A007913(n+1)]+1)`
-/

namespace A073481.P5243452834620992855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A073481.P5243452834620992855

/-! ## A073481.P2950632535601869181

`A020639(record[lcm(n+1, A008683(n+1))])`
-/

namespace A073481.P2950632535601869181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A008683 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A073481.P2950632535601869181

/-! ## A073481.P13451943394828474491

`A020639(record[n+2-gcd(A000010(n+1)-(n+2), A008683(n+1))])`
-/

namespace A073481.P13451943394828474491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Int.gcd (A000010 (n + 1) - (n + 2 : ℤ)) (A008683 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073481.P13451943394828474491

/-! ## A073481.P5605735356094355412

`A020639(record[A072775(n+1)])`
-/

namespace A073481.P5605735356094355412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073481.P5605735356094355412

/-! ## A073481.P14159040603694573578

`A020639(eq[1, A072411(n+1)]+1)`
-/

namespace A073481.P14159040603694573578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073481.P14159040603694573578

/-! ## A073481.P17076684356256923394

`A020639(record[∏{p}[n, #]])`
-/

namespace A073481.P17076684356256923394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A073481.P17076684356256923394

/-!
# A073482: Largest prime factor of the n-th squarefree number.

The programs for A073482, the canonical program `A073482.P3442386469960361362` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073482 has offset 1).

The definition of A073482 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073482.P3442386469960361362

`A006530(A005117(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A073482

/-- `A006530(A005117(n+1))` -/
def P3442386469960361362.Spec : Prop :=
  ∀ n, P3442386469960361362.a n = A073482 (n + 1)

theorem P3442386469960361362.correct : P3442386469960361362.Spec := by
  intro n
  simp only [A073482, Nat.add_sub_cancel]

end A073482

/-! ## A073482.P11768119609801080450

`A006530(comp[A105570(n)])`
-/

namespace A073482.P11768119609801080450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A073482.P11768119609801080450

namespace A073482

/-- `A006530(comp[A105570(n)])` -/
def P11768119609801080450.Spec : Prop :=
  ∀ n, P11768119609801080450.a n = A073482 (n + 1)

end A073482

/-! ## A073482.P12979890236424705720

`A034699(comp[A105570(n)])`
-/

namespace A073482.P12979890236424705720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A073482.P12979890236424705720

namespace A073482

/-- `A034699(comp[A105570(n)])` -/
def P12979890236424705720.Spec : Prop :=
  ∀ n, P12979890236424705720.a n = A073482 (n + 1)

end A073482

/-! ## A073482.P1802852244663747960

`A006530(A225680(n+1))`
-/

namespace A073482.P1802852244663747960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A225680 (n + 1)).toNat

end

end A073482.P1802852244663747960

namespace A073482

/-- `A006530(A225680(n+1))` -/
def P1802852244663747960.Spec : Prop :=
  ∀ n, P1802852244663747960.a n = A073482 (n + 1)

end A073482

/-! ## A073482.P6821016592118039021

`A034699(sqrt(A062503(n+1)))`
-/

namespace A073482.P6821016592118039021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway (Real.sqrt (A062503 (n + 1) : ℝ))).toNat

end

end A073482.P6821016592118039021

namespace A073482

/-- `A034699(sqrt(A062503(n+1)))` -/
def P6821016592118039021.Spec : Prop :=
  ∀ n, P6821016592118039021.a n = A073482 (n + 1)

end A073482

/-! ## A073482.P568700236726617845

`A006530(record[A003967(n+1)])`
-/

namespace A073482.P568700236726617845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073482.P568700236726617845

namespace A073482

/-- `A006530(record[A003967(n+1)])` -/
def P568700236726617845.Spec : Prop :=
  ∀ n, P568700236726617845.a n = A073482 (n + 1)

end A073482

/-! ## A073482.P864807531928272128

`A006530(record[A007913(n+1)])`
-/

namespace A073482.P864807531928272128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073482.P864807531928272128

namespace A073482

/-- `A006530(record[A007913(n+1)])` -/
def P864807531928272128.Spec : Prop :=
  ∀ n, P864807531928272128.a n = A073482 (n + 1)

end A073482

/-! ## A073482.P14362572414830436375

`A006530(record[A007947(n+1)])`
-/

namespace A073482.P14362572414830436375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073482.P14362572414830436375

namespace A073482

/-- `A006530(record[A007947(n+1)])` -/
def P14362572414830436375.Spec : Prop :=
  ∀ n, P14362572414830436375.a n = A073482 (n + 1)

end A073482

/-! ## A073482.P16494038914384099348

`A034699(record[A007913(n+1)])`
-/

namespace A073482.P16494038914384099348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073482.P16494038914384099348

namespace A073482

/-- `A034699(record[A007913(n+1)])` -/
def P16494038914384099348.Spec : Prop :=
  ∀ n, P16494038914384099348.a n = A073482 (n + 1)

end A073482

/-! ## A073482.P9641999268277022635

`A006530(record[A055231(n+1)])`
-/

namespace A073482.P9641999268277022635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073482.P9641999268277022635

namespace A073482

/-- `A006530(record[A055231(n+1)])` -/
def P9641999268277022635.Spec : Prop :=
  ∀ n, P9641999268277022635.a n = A073482 (n + 1)

end A073482

/-! ## A073482.P3726386325495808284

`A006530(record[A055653(n+1)])`
-/

namespace A073482.P3726386325495808284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073482.P3726386325495808284

namespace A073482

/-- `A006530(record[A055653(n+1)])` -/
def P3726386325495808284.Spec : Prop :=
  ∀ n, P3726386325495808284.a n = A073482 (n + 1)

end A073482

/-! ## A073482.P448796454370178288

`A034699(record[A055653(n+1)])`
-/

namespace A073482.P448796454370178288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073482.P448796454370178288

namespace A073482

/-- `A034699(record[A055653(n+1)])` -/
def P448796454370178288.Spec : Prop :=
  ∀ n, P448796454370178288.a n = A073482 (n + 1)

end A073482

/-! ## A073482.P1732050630127663525

`A345941(record[A007947(n+1)])`
-/

namespace A073482.P1732050630127663525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073482.P1732050630127663525

namespace A073482

/-- `A345941(record[A007947(n+1)])` -/
def P1732050630127663525.Spec : Prop :=
  ∀ n, P1732050630127663525.a n = A073482 (n + 1)

end A073482

/-! ## A073482.P14469653946257954374

`A006530(lt[A348029(n+1), 1]+1)`
-/

namespace A073482.P14469653946257954374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348029 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A073482.P14469653946257954374

namespace A073482

/-- `A006530(lt[A348029(n+1), 1]+1)` -/
def P14469653946257954374.Spec : Prop :=
  ∀ n, P14469653946257954374.a n = A073482 (n + 1)

end A073482

/-! ## A073482.P8230242066587943589

`A006530(lt[A005361(n+1), 2]+1)`
-/

namespace A073482.P8230242066587943589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A073482.P8230242066587943589

namespace A073482

/-- `A006530(lt[A005361(n+1), 2]+1)` -/
def P8230242066587943589.Spec : Prop :=
  ∀ n, P8230242066587943589.a n = A073482 (n + 1)

end A073482

/-! ## A073482.P11913926731799674671

`A006530(lt[A008833(n+1), 2]+1)`
-/

namespace A073482.P11913926731799674671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A073482.P11913926731799674671

namespace A073482

/-- `A006530(lt[A008833(n+1), 2]+1)` -/
def P11913926731799674671.Spec : Prop :=
  ∀ n, P11913926731799674671.a n = A073482 (n + 1)

end A073482

/-! ## A073482.P12865904958690157026

`A115013(n+1)+A073481(n+1)`
-/

namespace A073482.P12865904958690157026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115013 (n + 1) + A073481 (n + 1)

end

end A073482.P12865904958690157026

namespace A073482

/-- `A115013(n+1)+A073481(n+1)` -/
def P12865904958690157026.Spec : Prop :=
  ∀ n, P12865904958690157026.a n = A073482 (n + 1)

end A073482

/-! ## A073482.P2776699899263337483

`A006530(A243348(n+1)+1+n)`
-/

namespace A073482.P2776699899263337483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A243348 (n + 1) + 1 + (n : ℤ)).toNat

end

end A073482.P2776699899263337483

namespace A073482

/-- `A006530(A243348(n+1)+1+n)` -/
def P2776699899263337483.Spec : Prop :=
  ∀ n, P2776699899263337483.a n = A073482 (n + 1)

theorem P2776699899263337483.correct : P2776699899263337483.Spec := by
  intro n
  simp only [A073482, Nat.add_sub_cancel, A073482.P2776699899263337483.a, A073482.P3442386469960361362.a, A005117, A005117.P6531558222696957500.a, A006530, A006530.P13372528560459906635.a, A243348, A243348.P5579662287376898014.a, A070229, A070229.P5792893597916963980.a, A161203, A161203.P4346863006830516735.f1, A161203.P4346863006830516735.a, A028815, A028815.P810525423351225743.a, A055615, A055615.P8993130195977213181.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A008683, A008683.P18254306604665478110.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073482

/-! ## A073482.P3778677311402269324

`A034699(A005117(2*n+1-n))`
-/

namespace A073482.P3778677311402269324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A005117 (2 * n + 1 - n)).toNat

end

end A073482.P3778677311402269324

namespace A073482

/-- `A034699(A005117(2*n+1-n))` -/
def P3778677311402269324.Spec : Prop :=
  ∀ n, P3778677311402269324.a n = A073482 (n + 1)

end A073482

/-! ## A073482.P10989640065096933488

`A006530(lt[n, A007913(n+1)]+1)`
-/

namespace A073482.P10989640065096933488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A073482.P10989640065096933488

namespace A073482

/-- `A006530(lt[n, A007913(n+1)]+1)` -/
def P10989640065096933488.Spec : Prop :=
  ∀ n, P10989640065096933488.a n = A073482 (n + 1)

end A073482

/-!
# A073483: For the n-th squarefree number: the product of all primes greater than its smallest factor and less than its largest factor and not dividing it.

The programs for A073483, there is no canonical definition to state claims against.
-/

/-! ## A073483.P6296771442107720905

`A137795(eq[n, ∏{p}[n, #]])`
-/

namespace A073483.P6296771442107720905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137795 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A073483.P6296771442107720905

/-! ## A073483.P6717595419971162752

`A137795(A005117(n+1))`
-/

namespace A073483.P6717595419971162752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137795 (A005117 (n + 1)).toNat

end

end A073483.P6717595419971162752

/-! ## A073483.P5611211002596166081

`A137795(record[A019555(n+1)])`
-/

namespace A073483.P5611211002596166081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137795 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073483.P5611211002596166081

/-! ## A073483.P11363024640466652720

`A137795(record[(n+1)/A104404(n+1)])`
-/

namespace A073483.P11363024640466652720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A104404 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137795 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A073483.P11363024640466652720

/-! ## A073483.P10748455455414990538

`A137795(eq[1, A074206(n+1)%2]+1)`
-/

namespace A073483.P10748455455414990538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074206 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073483.P10748455455414990538

/-! ## A073483.P2973410075677457930

`A137795(eq[n+1, A287620(n+1)]+1)`
-/

namespace A073483.P2973410075677457930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073483.P2973410075677457930

/-!
# A073484: Number of gaps in factors of the n-th squarefree number.

The programs for A073484, the canonical program `A073484.P7479602298211081022` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073484 has offset 1).

The definition of A073484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073484.P4107754565711953908

`A073490(comp[A105570(n)])`
-/

namespace A073484.P4107754565711953908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A073484.P4107754565711953908

namespace A073484

/-- `A073490(comp[A105570(n)])` -/
def P4107754565711953908.Spec : Prop :=
  ∀ n, P4107754565711953908.a n = A073484 (n + 1)

end A073484

/-! ## A073484.P7479602298211081022

`A073490(A005117(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A073484

/-- `A073490(A005117(n+1))` -/
def P7479602298211081022.Spec : Prop :=
  ∀ n, P7479602298211081022.a n = A073484 (n + 1)

theorem P7479602298211081022.correct : P7479602298211081022.Spec := by
  intro n
  simp only [A073484, Nat.add_sub_cancel]

end A073484

/-! ## A073484.P3245314920827907751

`A073490(sqrt(A062503(n+1)))`
-/

namespace A073484.P3245314920827907751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (SequenceMachineLib.roundAway (Real.sqrt (A062503 (n + 1) : ℝ))).toNat

end

end A073484.P3245314920827907751

namespace A073484

/-- `A073490(sqrt(A062503(n+1)))` -/
def P3245314920827907751.Spec : Prop :=
  ∀ n, P3245314920827907751.a n = A073484 (n + 1)

end A073484

/-! ## A073484.P8438365315811175616

`A073490(record[A003967(n+1)])`
-/

namespace A073484.P8438365315811175616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073484.P8438365315811175616

namespace A073484

/-- `A073490(record[A003967(n+1)])` -/
def P8438365315811175616.Spec : Prop :=
  ∀ n, P8438365315811175616.a n = A073484 (n + 1)

end A073484

/-! ## A073484.P2204201161179962636

`A073490(record[A007947(n+1)])`
-/

namespace A073484.P2204201161179962636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073484.P2204201161179962636

namespace A073484

/-- `A073490(record[A007947(n+1)])` -/
def P2204201161179962636.Spec : Prop :=
  ∀ n, P2204201161179962636.a n = A073484 (n + 1)

end A073484

/-! ## A073484.P6489173403233582549

`A073490(eq[1, A008833(n+1)]+1)`
-/

namespace A073484.P6489173403233582549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073484.P6489173403233582549

namespace A073484

/-- `A073490(eq[1, A008833(n+1)]+1)` -/
def P6489173403233582549.Spec : Prop :=
  ∀ n, P6489173403233582549.a n = A073484 (n + 1)

end A073484

/-! ## A073484.P5231327300723551556

`A073490(eq[1, A008966(n+1)]+1)`
-/

namespace A073484.P5231327300723551556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073484.P5231327300723551556

namespace A073484

/-- `A073490(eq[1, A008966(n+1)]+1)` -/
def P5231327300723551556.Spec : Prop :=
  ∀ n, P5231327300723551556.a n = A073484 (n + 1)

end A073484

/-! ## A073484.P4688727150354157677

`A073490(eq[n+1, A007947(n+1)]+1)`
-/

namespace A073484.P4688727150354157677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073484.P4688727150354157677

namespace A073484

/-- `A073490(eq[n+1, A007947(n+1)]+1)` -/
def P4688727150354157677.Spec : Prop :=
  ∀ n, P4688727150354157677.a n = A073484 (n + 1)

end A073484

/-! ## A073484.P831095728823732889

`A073490(eq[A001222(n+1), A001221(n+1)]+1)`
-/

namespace A073484.P831095728823732889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A073484.P831095728823732889

namespace A073484

/-- `A073490(eq[A001222(n+1), A001221(n+1)]+1)` -/
def P831095728823732889.Spec : Prop :=
  ∀ n, P831095728823732889.a n = A073484 (n + 1)

end A073484

/-! ## A073484.P6437216703709386681

`A073490(eq[1, A003557(n+1)]+1)`
-/

namespace A073484.P6437216703709386681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073484.P6437216703709386681

namespace A073484

/-- `A073490(eq[1, A003557(n+1)]+1)` -/
def P6437216703709386681.Spec : Prop :=
  ∀ n, P6437216703709386681.a n = A073484 (n + 1)

end A073484

/-! ## A073484.P5725490936253728646

`A073490(eq[n, A028310(n)*A284345(n)])`
-/

namespace A073484.P5725490936253728646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A284345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073484.P5725490936253728646

namespace A073484

/-- `A073490(eq[n, A028310(n)*A284345(n)])` -/
def P5725490936253728646.Spec : Prop :=
  ∀ n, P5725490936253728646.a n = A073484 (n + 1)

end A073484

/-! ## A073484.P17985176375337083116

`A073490(eq[n, A028310(n)/A284345(n)])`
-/

namespace A073484.P17985176375337083116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A284345 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A073484.P17985176375337083116

namespace A073484

/-- `A073490(eq[n, A028310(n)/A284345(n)])` -/
def P17985176375337083116.Spec : Prop :=
  ∀ n, P17985176375337083116.a n = A073484 (n + 1)

end A073484

/-! ## A073484.P9862052696761489556

`A073490(A366786(n+1))`
-/

namespace A073484.P9862052696761489556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A366786 (n + 1)).toNat

end

end A073484.P9862052696761489556

namespace A073484

/-- `A073490(A366786(n+1))` -/
def P9862052696761489556.Spec : Prop :=
  ∀ n, P9862052696761489556.a n = A073484 (n + 1)

end A073484

/-! ## A073484.P11692886376401567108

`A073490(A062503(n+1))`
-/

namespace A073484.P11692886376401567108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A062503 (n + 1)).toNat

end

end A073484.P11692886376401567108

namespace A073484

/-- `A073490(A062503(n+1))` -/
def P11692886376401567108.Spec : Prop :=
  ∀ n, P11692886376401567108.a n = A073484 (n + 1)

end A073484

/-!
# A073485: Product of any number of consecutive primes; squarefree numbers with no gaps in their prime factorization.

The programs for A073485, the canonical program `A073485.P12285287934864725546` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073485 has offset 1).

The definition of A073485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073485.P5017938354306853288

`filter[A260442(n), A008966(#)]`
-/

namespace A073485.P5017938354306853288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A073485.P5017938354306853288

namespace A073485

/-- `filter[A260442(n), A008966(#)]` -/
def P5017938354306853288.Spec : Prop :=
  ∀ n, P5017938354306853288.a n = A073485 (n + 1)

end A073485

/-! ## A073485.P8588763112433369209

`filter[A260442(n), A359834(#)]`
-/

namespace A073485.P8588763112433369209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A073485.P8588763112433369209

namespace A073485

/-- `filter[A260442(n), A359834(#)]` -/
def P8588763112433369209.Spec : Prop :=
  ∀ n, P8588763112433369209.a n = A073485 (n + 1)

end A073485

/-! ## A073485.P6392471959503902490

`filter[A133810(n+1), A008966(#)]`
-/

namespace A073485.P6392471959503902490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A073485.P6392471959503902490

namespace A073485

/-- `filter[A133810(n+1), A008966(#)]` -/
def P6392471959503902490.Spec : Prop :=
  ∀ n, P6392471959503902490.a n = A073485 (n + 1)

end A073485

/-! ## A073485.P2706797906219945285

`record[A007947(A133812(n+1))]`
-/

namespace A073485.P2706797906219945285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A133812 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073485.P2706797906219945285

namespace A073485

/-- `record[A007947(A133812(n+1))]` -/
def P2706797906219945285.Spec : Prop :=
  ∀ n, P2706797906219945285.a n = A073485 (n + 1)

end A073485

/-! ## A073485.P1802488790223786128

`filter[A133812(n+1), A008966(#)]`
-/

namespace A073485.P1802488790223786128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A073485.P1802488790223786128

namespace A073485

/-- `filter[A133812(n+1), A008966(#)]` -/
def P1802488790223786128.Spec : Prop :=
  ∀ n, P1802488790223786128.a n = A073485 (n + 1)

end A073485

/-! ## A073485.P37585670064640257

`∩[A133812(n+1), A260442(n)]`
-/

namespace A073485.P37585670064640257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073485.P37585670064640257

namespace A073485

/-- `∩[A133812(n+1), A260442(n)]` -/
def P37585670064640257.Spec : Prop :=
  ∀ n, (P37585670064640257.a n : ℤ) = A073485 (n + 1)

end A073485

/-! ## A073485.P9912916837715739132

`filter[A073491(n+1), A008966(#)]`
-/

namespace A073485.P9912916837715739132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A073485.P9912916837715739132

namespace A073485

/-- `filter[A073491(n+1), A008966(#)]` -/
def P9912916837715739132.Spec : Prop :=
  ∀ n, P9912916837715739132.a n = A073485 (n + 1)

end A073485

/-! ## A073485.P13510072038982075515

`∩[A005117(n+1), A260442(n)]`
-/

namespace A073485.P13510072038982075515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073485.P13510072038982075515

namespace A073485

/-- `∩[A005117(n+1), A260442(n)]` -/
def P13510072038982075515.Spec : Prop :=
  ∀ n, (P13510072038982075515.a n : ℤ) = A073485 (n + 1)

end A073485

/-! ## A073485.P16014794444019226177

`filter[A260442(n), A323154(#)]`
-/

namespace A073485.P16014794444019226177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A073485.P16014794444019226177

namespace A073485

/-- `filter[A260442(n), A323154(#)]` -/
def P16014794444019226177.Spec : Prop :=
  ∀ n, P16014794444019226177.a n = A073485 (n + 1)

end A073485

/-! ## A073485.P2708598944527569272

`filter[A260442(n), A353519(#)]`
-/

namespace A073485.P2708598944527569272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A073485.P2708598944527569272

namespace A073485

/-- `filter[A260442(n), A353519(#)]` -/
def P2708598944527569272.Spec : Prop :=
  ∀ n, P2708598944527569272.a n = A073485 (n + 1)

end A073485

/-! ## A073485.P8116185825267612017

`filter[A260442(n), A353559(#)]`
-/

namespace A073485.P8116185825267612017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A073485.P8116185825267612017

namespace A073485

/-- `filter[A260442(n), A353559(#)]` -/
def P8116185825267612017.Spec : Prop :=
  ∀ n, P8116185825267612017.a n = A073485 (n + 1)

end A073485

/-! ## A073485.P12595351901074725097

`filter[A260442(n), A353627(#)]`
-/

namespace A073485.P12595351901074725097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A073485.P12595351901074725097

namespace A073485

/-- `filter[A260442(n), A353627(#)]` -/
def P12595351901074725097.Spec : Prop :=
  ∀ n, P12595351901074725097.a n = A073485 (n + 1)

end A073485

/-! ## A073485.P80638182954151173

`filter[A260442(n), A353628(#)]`
-/

namespace A073485.P80638182954151173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A073485.P80638182954151173

namespace A073485

/-- `filter[A260442(n), A353628(#)]` -/
def P80638182954151173.Spec : Prop :=
  ∀ n, P80638182954151173.a n = A073485 (n + 1)

end A073485

/-! ## A073485.P14574326233536777949

`filter[A005117(n+1), A137794(#)]`
-/

namespace A073485.P14574326233536777949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A073485.P14574326233536777949

namespace A073485

/-- `filter[A005117(n+1), A137794(#)]` -/
def P14574326233536777949.Spec : Prop :=
  ∀ n, P14574326233536777949.a n = A073485 (n + 1)

end A073485

/-! ## A073485.P2534411698274157693

`filter[A133810(n+1), A323154(#)]`
-/

namespace A073485.P2534411698274157693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A073485.P2534411698274157693

namespace A073485

/-- `filter[A133810(n+1), A323154(#)]` -/
def P2534411698274157693.Spec : Prop :=
  ∀ n, P2534411698274157693.a n = A073485 (n + 1)

end A073485

/-! ## A073485.P5401662406876580364

`filter[A133812(n+1), A389449(#)]`
-/

namespace A073485.P5401662406876580364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A073485.P5401662406876580364

namespace A073485

/-- `filter[A133812(n+1), A389449(#)]` -/
def P5401662406876580364.Spec : Prop :=
  ∀ n, P5401662406876580364.a n = A073485 (n + 1)

end A073485

/-! ## A073485.P4025661710148463347

`record[A006530(n+1)*A330749(n+1)]`
-/

namespace A073485.P4025661710148463347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A330749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073485.P4025661710148463347

namespace A073485

/-- `record[A006530(n+1)*A330749(n+1)]` -/
def P4025661710148463347.Spec : Prop :=
  ∀ n, P4025661710148463347.a n = A073485 (n + 1)

end A073485

/-! ## A073485.P12285287934864725546

`record[(1-A073490(n+1))*A007947(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A073485

/-- `record[(1-A073490(n+1))*A007947(n+1)]` -/
def P12285287934864725546.Spec : Prop :=
  ∀ n, P12285287934864725546.a n = A073485 (n + 1)

theorem P12285287934864725546.correct : P12285287934864725546.Spec := by
  intro n
  simp only [A073485, Nat.add_sub_cancel]

end A073485

/-! ## A073485.P15365193652330762941

`record[A020639(n+1)*A322361(n+1)]`
-/

namespace A073485.P15365193652330762941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A322361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073485.P15365193652330762941

namespace A073485

/-- `record[A020639(n+1)*A322361(n+1)]` -/
def P15365193652330762941.Spec : Prop :=
  ∀ n, P15365193652330762941.a n = A073485 (n + 1)

end A073485

/-! ## A073485.P5340851103796389547

`record[(1-A073490(n+1))*A003967(n+1)]`
-/

namespace A073485.P5340851103796389547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A073490 (n + 1)) * A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073485.P5340851103796389547

namespace A073485

/-- `record[(1-A073490(n+1))*A003967(n+1)]` -/
def P5340851103796389547.Spec : Prop :=
  ∀ n, P5340851103796389547.a n = A073485 (n + 1)

end A073485

/-!
# A073486: Squarefree numbers having at least one prime gap.

The programs for A073486, the canonical program `A073486.P7562161125869896796` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073486 has offset 1).

The definition of A073486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5670 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073486.P4890378924748709607

`record[A007947(A073492(n+1))]`
-/

namespace A073486.P4890378924748709607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A073492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073486.P4890378924748709607

namespace A073486

/-- `record[A007947(A073492(n+1))]` -/
def P4890378924748709607.Spec : Prop :=
  ∀ n, P4890378924748709607.a n = A073486 (n + 1)

end A073486

/-! ## A073486.P6722625448131734427

`filter[A073492(n+1), A008966(#)]`
-/

namespace A073486.P6722625448131734427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A073486.P6722625448131734427

namespace A073486

/-- `filter[A073492(n+1), A008966(#)]` -/
def P6722625448131734427.Spec : Prop :=
  ∀ n, P6722625448131734427.a n = A073486 (n + 1)

end A073486

/-! ## A073486.P7504264055750383020

`filter[A073492(n+1), A354819(#)]`
-/

namespace A073486.P7504264055750383020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A073486.P7504264055750383020

namespace A073486

/-- `filter[A073492(n+1), A354819(#)]` -/
def P7504264055750383020.Spec : Prop :=
  ∀ n, P7504264055750383020.a n = A073486 (n + 1)

end A073486

/-! ## A073486.P7562161125869896796

`∩[A000469(n+1), A073492(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A073486

/-- `∩[A000469(n+1), A073492(n+1)]` -/
def P7562161125869896796.Spec : Prop :=
  ∀ n, (P7562161125869896796.a n : ℤ) = A073486 (n + 1)

theorem P7562161125869896796.correct : P7562161125869896796.Spec := by
  intro n
  simp only [A073486, Nat.add_sub_cancel]

end A073486

/-! ## A073486.P1032777137985094369

`∩[A005117(n+1), A073492(n+1)]`
-/

namespace A073486.P1032777137985094369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073486.P1032777137985094369

namespace A073486

/-- `∩[A005117(n+1), A073492(n+1)]` -/
def P1032777137985094369.Spec : Prop :=
  ∀ n, (P1032777137985094369.a n : ℤ) = A073486 (n + 1)

end A073486

/-! ## A073486.P9378342486108212160

`∩[A073492(n+1), A120944(n+1)]`
-/

namespace A073486.P9378342486108212160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073486.P9378342486108212160

namespace A073486

/-- `∩[A073492(n+1), A120944(n+1)]` -/
def P9378342486108212160.Spec : Prop :=
  ∀ n, (P9378342486108212160.a n : ℤ) = A073486 (n + 1)

end A073486

/-! ## A073486.P17890776426089458610

`∩[A073492(n+1), A144338(n+1)]`
-/

namespace A073486.P17890776426089458610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073486.P17890776426089458610

namespace A073486

/-- `∩[A073492(n+1), A144338(n+1)]` -/
def P17890776426089458610.Spec : Prop :=
  ∀ n, (P17890776426089458610.a n : ℤ) = A073486 (n + 1)

end A073486

/-! ## A073486.P8080124952663403425

`∩[A073492(n+1), A167207(n+1)]`
-/

namespace A073486.P8080124952663403425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073486.P8080124952663403425

namespace A073486

/-- `∩[A073492(n+1), A167207(n+1)]` -/
def P8080124952663403425.Spec : Prop :=
  ∀ n, (P8080124952663403425.a n : ℤ) = A073486 (n + 1)

end A073486

/-! ## A073486.P13017487044333303704

`∩[A073492(n+1), A303554(n+1)]`
-/

namespace A073486.P13017487044333303704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073486.P13017487044333303704

namespace A073486

/-- `∩[A073492(n+1), A303554(n+1)]` -/
def P13017487044333303704.Spec : Prop :=
  ∀ n, (P13017487044333303704.a n : ℤ) = A073486 (n + 1)

end A073486

/-! ## A073486.P18387223286150301894

`∩[A073492(n+1), A366413(n+1)]`
-/

namespace A073486.P18387223286150301894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073486.P18387223286150301894

namespace A073486

/-- `∩[A073492(n+1), A366413(n+1)]` -/
def P18387223286150301894.Spec : Prop :=
  ∀ n, (P18387223286150301894.a n : ℤ) = A073486 (n + 1)

end A073486

/-! ## A073486.P14434916065566889394

`∩[A073492(n+1), A366882(n+1)]`
-/

namespace A073486.P14434916065566889394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073486.P14434916065566889394

namespace A073486

/-- `∩[A073492(n+1), A366882(n+1)]` -/
def P14434916065566889394.Spec : Prop :=
  ∀ n, (P14434916065566889394.a n : ℤ) = A073486 (n + 1)

end A073486

/-! ## A073486.P10425883882164270494

`∩[A073492(n+1), A388427(n+1)]`
-/

namespace A073486.P10425883882164270494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073486.P10425883882164270494

namespace A073486

/-- `∩[A073492(n+1), A388427(n+1)]` -/
def P10425883882164270494.Spec : Prop :=
  ∀ n, (P10425883882164270494.a n : ℤ) = A073486 (n + 1)

end A073486

/-! ## A073486.P14193470672317914265

`filter[A193166(n+1), A008966(#)]`
-/

namespace A073486.P14193470672317914265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A073486.P14193470672317914265

namespace A073486

/-- `filter[A193166(n+1), A008966(#)]` -/
def P14193470672317914265.Spec : Prop :=
  ∀ n, P14193470672317914265.a n = A073486 (n + 1)

end A073486

/-! ## A073486.P17251988989532688964

`filter[A193166(n+1), A354819(#)]`
-/

namespace A073486.P17251988989532688964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A073486.P17251988989532688964

namespace A073486

/-- `filter[A193166(n+1), A354819(#)]` -/
def P17251988989532688964.Spec : Prop :=
  ∀ n, P17251988989532688964.a n = A073486 (n + 1)

end A073486

/-! ## A073486.P12338925429225461096

`∩[A000469(n+1), A193166(n+1)]`
-/

namespace A073486.P12338925429225461096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073486.P12338925429225461096

namespace A073486

/-- `∩[A000469(n+1), A193166(n+1)]` -/
def P12338925429225461096.Spec : Prop :=
  ∀ n, (P12338925429225461096.a n : ℤ) = A073486 (n + 1)

end A073486

/-! ## A073486.P4875378414834727181

`∩[A005117(n+1), A193166(n+1)]`
-/

namespace A073486.P4875378414834727181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073486.P4875378414834727181

namespace A073486

/-- `∩[A005117(n+1), A193166(n+1)]` -/
def P4875378414834727181.Spec : Prop :=
  ∀ n, (P4875378414834727181.a n : ℤ) = A073486 (n + 1)

end A073486

/-! ## A073486.P10142480874830777825

`∩[A120944(n+1), A193166(n+1)]`
-/

namespace A073486.P10142480874830777825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073486.P10142480874830777825

namespace A073486

/-- `∩[A120944(n+1), A193166(n+1)]` -/
def P10142480874830777825.Spec : Prop :=
  ∀ n, (P10142480874830777825.a n : ℤ) = A073486 (n + 1)

end A073486

/-! ## A073486.P16419647723473151838

`∩[A144338(n+1), A193166(n+1)]`
-/

namespace A073486.P16419647723473151838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073486.P16419647723473151838

namespace A073486

/-- `∩[A144338(n+1), A193166(n+1)]` -/
def P16419647723473151838.Spec : Prop :=
  ∀ n, (P16419647723473151838.a n : ℤ) = A073486 (n + 1)

end A073486

/-! ## A073486.P12215992798112411584

`∩[A193166(n+1), A366413(n+1)]`
-/

namespace A073486.P12215992798112411584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073486.P12215992798112411584

namespace A073486

/-- `∩[A193166(n+1), A366413(n+1)]` -/
def P12215992798112411584.Spec : Prop :=
  ∀ n, (P12215992798112411584.a n : ℤ) = A073486 (n + 1)

end A073486

/-! ## A073486.P2763102237721803094

`∩[A193166(n+1), A366882(n+1)]`
-/

namespace A073486.P2763102237721803094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073486.P2763102237721803094

namespace A073486

/-- `∩[A193166(n+1), A366882(n+1)]` -/
def P2763102237721803094.Spec : Prop :=
  ∀ n, (P2763102237721803094.a n : ℤ) = A073486 (n + 1)

end A073486

/-!
# A073487: Squarefree numbers having exactly one prime gap.

The programs for A073487, the canonical program `A073487.P16741485548348594848` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073487 has offset 1).

The definition of A073487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073487.P11119762712007853594

`eq[A008833(n+1), A073490(n+1)]+1`
-/

namespace A073487.P11119762712007853594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073487.P11119762712007853594

namespace A073487

/-- `eq[A008833(n+1), A073490(n+1)]+1` -/
def P11119762712007853594.Spec : Prop :=
  ∀ n, (P11119762712007853594.a n : ℤ) = A073487 (n + 1)

end A073487

/-! ## A073487.P16741485548348594848

`A007947(eq[A073490(n+1)+n, A007947(n+1)]+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A073487

/-- `A007947(eq[A073490(n+1)+n, A007947(n+1)]+1)` -/
def P16741485548348594848.Spec : Prop :=
  ∀ n, P16741485548348594848.a n = A073487 (n + 1)

theorem P16741485548348594848.correct : P16741485548348594848.Spec := by
  intro n
  simp only [A073487, Nat.add_sub_cancel]

end A073487

/-! ## A073487.P12359347932777509115

`record[A073486(n+1)/A073490(A073486(n+1))]`
-/

namespace A073487.P12359347932777509115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073486 (n + 1) : ℚ) / (A073490 (A073486 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073487.P12359347932777509115

namespace A073487

/-- `record[A073486(n+1)/A073490(A073486(n+1))]` -/
def P12359347932777509115.Spec : Prop :=
  ∀ n, P12359347932777509115.a n = (A073487 (n + 1) : ℚ)

end A073487

/-! ## A073487.P5057806180618836233

`record[A007947(A073493(n+1))]`
-/

namespace A073487.P5057806180618836233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A073493 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073487.P5057806180618836233

namespace A073487

/-- `record[A007947(A073493(n+1))]` -/
def P5057806180618836233.Spec : Prop :=
  ∀ n, P5057806180618836233.a n = A073487 (n + 1)

end A073487

/-! ## A073487.P1221480994235834985

`filter[A073493(n+1), A008966(#)]`
-/

namespace A073487.P1221480994235834985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A073487.P1221480994235834985

namespace A073487

/-- `filter[A073493(n+1), A008966(#)]` -/
def P1221480994235834985.Spec : Prop :=
  ∀ n, P1221480994235834985.a n = A073487 (n + 1)

end A073487

/-! ## A073487.P10629505307036155657

`filter[A073493(n+1), A354819(#)]`
-/

namespace A073487.P10629505307036155657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A073487.P10629505307036155657

namespace A073487

/-- `filter[A073493(n+1), A354819(#)]` -/
def P10629505307036155657.Spec : Prop :=
  ∀ n, P10629505307036155657.a n = A073487 (n + 1)

end A073487

/-! ## A073487.P17513792650899544243

`∩[A000469(n+1), A073493(n+1)]`
-/

namespace A073487.P17513792650899544243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073487.P17513792650899544243

namespace A073487

/-- `∩[A000469(n+1), A073493(n+1)]` -/
def P17513792650899544243.Spec : Prop :=
  ∀ n, (P17513792650899544243.a n : ℤ) = A073487 (n + 1)

end A073487

/-! ## A073487.P851399765856281266

`∩[A005117(n+1), A073493(n+1)]`
-/

namespace A073487.P851399765856281266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073487.P851399765856281266

namespace A073487

/-- `∩[A005117(n+1), A073493(n+1)]` -/
def P851399765856281266.Spec : Prop :=
  ∀ n, (P851399765856281266.a n : ℤ) = A073487 (n + 1)

end A073487

/-! ## A073487.P10415392950473872727

`∩[A073486(n+1), A073493(n+1)]`
-/

namespace A073487.P10415392950473872727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073487.P10415392950473872727

namespace A073487

/-- `∩[A073486(n+1), A073493(n+1)]` -/
def P10415392950473872727.Spec : Prop :=
  ∀ n, (P10415392950473872727.a n : ℤ) = A073487 (n + 1)

end A073487

/-! ## A073487.P4681095281490539412

`∩[A073493(n+1), A120944(n+1)]`
-/

namespace A073487.P4681095281490539412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073487.P4681095281490539412

namespace A073487

/-- `∩[A073493(n+1), A120944(n+1)]` -/
def P4681095281490539412.Spec : Prop :=
  ∀ n, (P4681095281490539412.a n : ℤ) = A073487 (n + 1)

end A073487

/-! ## A073487.P2084986822551357518

`∩[A073493(n+1), A366413(n+1)]`
-/

namespace A073487.P2084986822551357518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073487.P2084986822551357518

namespace A073487

/-- `∩[A073493(n+1), A366413(n+1)]` -/
def P2084986822551357518.Spec : Prop :=
  ∀ n, (P2084986822551357518.a n : ℤ) = A073487 (n + 1)

end A073487

/-! ## A073487.P4204531988174954951

`∩[A073493(n+1), A388427(n+1)]`
-/

namespace A073487.P4204531988174954951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073487.P4204531988174954951

namespace A073487

/-- `∩[A073493(n+1), A388427(n+1)]` -/
def P4204531988174954951.Spec : Prop :=
  ∀ n, (P4204531988174954951.a n : ℤ) = A073487 (n + 1)

end A073487

/-! ## A073487.P6721611530441490037

`∩[A073493(n+1), A366882(n+1)]`
-/

namespace A073487.P6721611530441490037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073487.P6721611530441490037

namespace A073487

/-- `∩[A073493(n+1), A366882(n+1)]` -/
def P6721611530441490037.Spec : Prop :=
  ∀ n, (P6721611530441490037.a n : ℤ) = A073487 (n + 1)

end A073487

/-! ## A073487.P10693819064040255966

`∩[A073493(n+1), A144338(n+1)]`
-/

namespace A073487.P10693819064040255966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073487.P10693819064040255966

namespace A073487

/-- `∩[A073493(n+1), A144338(n+1)]` -/
def P10693819064040255966.Spec : Prop :=
  ∀ n, (P10693819064040255966.a n : ℤ) = A073487 (n + 1)

end A073487

/-! ## A073487.P12806114726146010626

`∩[A073493(n+1), A167207(n+1)]`
-/

namespace A073487.P12806114726146010626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073487.P12806114726146010626

namespace A073487

/-- `∩[A073493(n+1), A167207(n+1)]` -/
def P12806114726146010626.Spec : Prop :=
  ∀ n, (P12806114726146010626.a n : ℤ) = A073487 (n + 1)

end A073487

/-! ## A073487.P13055017250653317846

`eq[A306446(n+1), A328400(n+1)]+1`
-/

namespace A073487.P13055017250653317846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073487.P13055017250653317846

namespace A073487

/-- `eq[A306446(n+1), A328400(n+1)]+1` -/
def P13055017250653317846.Spec : Prop :=
  ∀ n, (P13055017250653317846.a n : ℤ) = A073487 (n + 1)

end A073487

/-! ## A073487.P1517067329977136613

`∩[A073493(n+1), A303554(n+1)]`
-/

namespace A073487.P1517067329977136613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073487.P1517067329977136613

namespace A073487

/-- `∩[A073493(n+1), A303554(n+1)]` -/
def P1517067329977136613.Spec : Prop :=
  ∀ n, (P1517067329977136613.a n : ℤ) = A073487 (n + 1)

end A073487

/-! ## A073487.P16726378586195168930

`eq[A003557(n+1)², A073490(n+1)]+1`
-/

namespace A073487.P16726378586195168930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073487.P16726378586195168930

namespace A073487

/-- `eq[A003557(n+1)², A073490(n+1)]+1` -/
def P16726378586195168930.Spec : Prop :=
  ∀ n, (P16726378586195168930.a n : ℤ) = A073487 (n + 1)

end A073487

/-! ## A073487.P1475533922316394227

`eq[A073490(A028310(n)), A284345(n)]`
-/

namespace A073487.P1475533922316394227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073487.P1475533922316394227

namespace A073487

/-- `eq[A073490(A028310(n)), A284345(n)]` -/
def P1475533922316394227.Spec : Prop :=
  ∀ n, (P1475533922316394227.a n : ℤ) = A073487 (n + 1)

end A073487

/-! ## A073487.P177642249972254616

`eq[A073490(A233583(n+1)), A284345(n)]`
-/

namespace A073487.P177642249972254616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073487.P177642249972254616

namespace A073487

/-- `eq[A073490(A233583(n+1)), A284345(n)]` -/
def P177642249972254616.Spec : Prop :=
  ∀ n, (P177642249972254616.a n : ℤ) = A073487 (n + 1)

end A073487

/-!
# A073488: Squarefree numbers having exactly two prime gaps.

The programs for A073488, the canonical program `A073488.P9820232983872603750` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073488 has offset 1).

The definition of A073488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5522 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073488.P9820232983872603750

`record[∏{p}[A073494(n+1), #]]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A073488

/-- `record[∏{p}[A073494(n+1), #]]` -/
def P9820232983872603750.Spec : Prop :=
  ∀ n, (P9820232983872603750.a n : ℤ) = A073488 (n + 1)

theorem P9820232983872603750.correct : P9820232983872603750.Spec := by
  intro n
  simp only [A073488, Nat.add_sub_cancel]

end A073488

/-! ## A073488.P4094359948273522841

`record[A007947(A073494(n+1))]`
-/

namespace A073488.P4094359948273522841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A073494 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073488.P4094359948273522841

namespace A073488

/-- `record[A007947(A073494(n+1))]` -/
def P4094359948273522841.Spec : Prop :=
  ∀ n, P4094359948273522841.a n = A073488 (n + 1)

end A073488

/-! ## A073488.P13035021471185718057

`filter[A073494(n+1), A008966(#)]`
-/

namespace A073488.P13035021471185718057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A073488.P13035021471185718057

namespace A073488

/-- `filter[A073494(n+1), A008966(#)]` -/
def P13035021471185718057.Spec : Prop :=
  ∀ n, P13035021471185718057.a n = A073488 (n + 1)

end A073488

/-! ## A073488.P6646815497772377576

`filter[A073494(n+1), A323154(#)]`
-/

namespace A073488.P6646815497772377576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A073488.P6646815497772377576

namespace A073488

/-- `filter[A073494(n+1), A323154(#)]` -/
def P6646815497772377576.Spec : Prop :=
  ∀ n, P6646815497772377576.a n = A073488 (n + 1)

end A073488

/-! ## A073488.P16173297082493787651

`filter[A073494(n+1), A354819(#)]`
-/

namespace A073488.P16173297082493787651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A073488.P16173297082493787651

namespace A073488

/-- `filter[A073494(n+1), A354819(#)]` -/
def P16173297082493787651.Spec : Prop :=
  ∀ n, P16173297082493787651.a n = A073488 (n + 1)

end A073488

/-! ## A073488.P14039971519415878493

`∩[A005117(n+1), A073494(n+1)]`
-/

namespace A073488.P14039971519415878493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073488.P14039971519415878493

namespace A073488

/-- `∩[A005117(n+1), A073494(n+1)]` -/
def P14039971519415878493.Spec : Prop :=
  ∀ n, (P14039971519415878493.a n : ℤ) = A073488 (n + 1)

end A073488

/-! ## A073488.P12884621829482055049

`∩[A073494(n+1), A350352(n+1)]`
-/

namespace A073488.P12884621829482055049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073488.P12884621829482055049

namespace A073488

/-- `∩[A073494(n+1), A350352(n+1)]` -/
def P12884621829482055049.Spec : Prop :=
  ∀ n, (P12884621829482055049.a n : ℤ) = A073488 (n + 1)

end A073488

/-! ## A073488.P12565781490275135301

`∩[A073494(n+1), A365829(n+1)]`
-/

namespace A073488.P12565781490275135301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073488.P12565781490275135301

namespace A073488

/-- `∩[A073494(n+1), A365829(n+1)]` -/
def P12565781490275135301.Spec : Prop :=
  ∀ n, (P12565781490275135301.a n : ℤ) = A073488 (n + 1)

end A073488

/-! ## A073488.P16110340638186246241

`∩[A073486(n+1), A073494(n+1)]`
-/

namespace A073488.P16110340638186246241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073488.P16110340638186246241

namespace A073488

/-- `∩[A073486(n+1), A073494(n+1)]` -/
def P16110340638186246241.Spec : Prop :=
  ∀ n, (P16110340638186246241.a n : ℤ) = A073488 (n + 1)

end A073488

/-! ## A073488.P8033466355294136635

`∩[A073494(n+1), A366413(n+1)]`
-/

namespace A073488.P8033466355294136635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073488.P8033466355294136635

namespace A073488

/-- `∩[A073494(n+1), A366413(n+1)]` -/
def P8033466355294136635.Spec : Prop :=
  ∀ n, (P8033466355294136635.a n : ℤ) = A073488 (n + 1)

end A073488

/-! ## A073488.P2042245031370367528

`∩[A000469(n+1), A073494(n+1)]`
-/

namespace A073488.P2042245031370367528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073488.P2042245031370367528

namespace A073488

/-- `∩[A000469(n+1), A073494(n+1)]` -/
def P2042245031370367528.Spec : Prop :=
  ∀ n, (P2042245031370367528.a n : ℤ) = A073488 (n + 1)

end A073488

/-! ## A073488.P15148328385835175214

`∩[A073494(n+1), A120944(n+1)]`
-/

namespace A073488.P15148328385835175214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073488.P15148328385835175214

namespace A073488

/-- `∩[A073494(n+1), A120944(n+1)]` -/
def P15148328385835175214.Spec : Prop :=
  ∀ n, (P15148328385835175214.a n : ℤ) = A073488 (n + 1)

end A073488

/-! ## A073488.P16590853346017569867

`∩[A073494(n+1), A388427(n+1)]`
-/

namespace A073488.P16590853346017569867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073488.P16590853346017569867

namespace A073488

/-- `∩[A073494(n+1), A388427(n+1)]` -/
def P16590853346017569867.Spec : Prop :=
  ∀ n, (P16590853346017569867.a n : ℤ) = A073488 (n + 1)

end A073488

/-! ## A073488.P2967694901417499856

`record[A003967(eq[2, A073490(n+1)]+1)]`
-/

namespace A073488.P2967694901417499856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073488.P2967694901417499856

namespace A073488

/-- `record[A003967(eq[2, A073490(n+1)]+1)]` -/
def P2967694901417499856.Spec : Prop :=
  ∀ n, P2967694901417499856.a n = A073488 (n + 1)

end A073488

/-! ## A073488.P11144950981664147968

`∩[A067582(n+1), A073494(n+1)]`
-/

namespace A073488.P11144950981664147968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073488.P11144950981664147968

namespace A073488

/-- `∩[A067582(n+1), A073494(n+1)]` -/
def P11144950981664147968.Spec : Prop :=
  ∀ n, (P11144950981664147968.a n : ℤ) = A073488 (n + 1)

end A073488

/-! ## A073488.P13409902940174148197

`∩[A049197(n+1), A073494(n+1)]`
-/

namespace A073488.P13409902940174148197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073488.P13409902940174148197

namespace A073488

/-- `∩[A049197(n+1), A073494(n+1)]` -/
def P13409902940174148197.Spec : Prop :=
  ∀ n, (P13409902940174148197.a n : ℤ) = A073488 (n + 1)

end A073488

/-! ## A073488.P8203062493920660302

`∩[A073494(n+1), A087249(n+1)]`
-/

namespace A073488.P8203062493920660302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073488.P8203062493920660302

namespace A073488

/-- `∩[A073494(n+1), A087249(n+1)]` -/
def P8203062493920660302.Spec : Prop :=
  ∀ n, (P8203062493920660302.a n : ℤ) = A073488 (n + 1)

end A073488

/-! ## A073488.P624532512069065720

`∩[A073494(n+1), A366882(n+1)]`
-/

namespace A073488.P624532512069065720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073488.P624532512069065720

namespace A073488

/-- `∩[A073494(n+1), A366882(n+1)]` -/
def P624532512069065720.Spec : Prop :=
  ∀ n, (P624532512069065720.a n : ℤ) = A073488 (n + 1)

end A073488

/-! ## A073488.P15263080219418171770

`∩[A073494(n+1), A144338(n+1)]`
-/

namespace A073488.P15263080219418171770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073488.P15263080219418171770

namespace A073488

/-- `∩[A073494(n+1), A144338(n+1)]` -/
def P15263080219418171770.Spec : Prop :=
  ∀ n, (P15263080219418171770.a n : ℤ) = A073488 (n + 1)

end A073488

/-! ## A073488.P15091483864148790366

`∩[A064594(n+1), A073494(n+1)]`
-/

namespace A073488.P15091483864148790366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073488.P15091483864148790366

namespace A073488

/-- `∩[A064594(n+1), A073494(n+1)]` -/
def P15091483864148790366.Spec : Prop :=
  ∀ n, (P15091483864148790366.a n : ℤ) = A073488 (n + 1)

end A073488

/-!
# A073489: Squarefree numbers having exactly three prime gaps.

The programs for A073489, there is no canonical definition to state claims against.
-/

/-! ## A073489.P9030974573360743267

`record[∏{p}[A073495(n+1), #]]`
-/

namespace A073489.P9030974573360743267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073495 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073489.P9030974573360743267

/-! ## A073489.P6383165137296765702

`record[A007947(A073495(n+1))]`
-/

namespace A073489.P6383165137296765702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A073495 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073489.P6383165137296765702

/-! ## A073489.P3087814639380004791

`filter[A073495(n+1), A008966(#)]`
-/

namespace A073489.P3087814639380004791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A073489.P3087814639380004791

/-! ## A073489.P15981339952519710213

`filter[A073495(n+1), A354353(#)]`
-/

namespace A073489.P15981339952519710213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A073489.P15981339952519710213

/-! ## A073489.P314339255228928785

`filter[A073495(n+1), A354819(#)]`
-/

namespace A073489.P314339255228928785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A073489.P314339255228928785

/-! ## A073489.P6303991570211925488

`filter[A073495(n+1), A323154(#)]`
-/

namespace A073489.P6303991570211925488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A073489.P6303991570211925488

/-! ## A073489.P6538293873687383680

`record[A325814(A073495(Δ[n²]-n))]`
-/

namespace A073489.P6538293873687383680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (A073495 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073489.P6538293873687383680

/-! ## A073489.P116075606052938614

`filter[A073495(n+1), A190938(#)]`
-/

namespace A073489.P116075606052938614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190938 (f1 j).toNat = 1) n)

end

end A073489.P116075606052938614

/-!
# A073490: Number of prime gaps in factorization of n.

The programs for A073490, the canonical program `A073490.P7070931676186738346` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073490 has offset 1).

The definition of A073490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073490.P7070931676186738346

`A287170(abs(2-n)+3)-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A073490

/-- `A287170(abs(2-n)+3)-1` -/
def P7070931676186738346.Spec : Prop :=
  ∀ n, P7070931676186738346.a n = A073490 (n + 1)

theorem P7070931676186738346.correct : P7070931676186738346.Spec := by
  intro n
  simp only [A073490, Nat.add_sub_cancel]

end A073490

/-! ## A073490.P8612879106032106491

`(A287170(n+1)+n)%(n+1)`
-/

namespace A073490.P8612879106032106491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287170 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A073490.P8612879106032106491

namespace A073490

/-- `(A287170(n+1)+n)%(n+1)` -/
def P8612879106032106491.Spec : Prop :=
  ∀ n, P8612879106032106491.a n = A073490 (n + 1)

end A073490

/-! ## A073490.P18292407210433242644

`A073484(A322590(n+1))`
-/

namespace A073490.P18292407210433242644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073484 (A322590 (n + 1)).toNat

end

end A073490.P18292407210433242644

namespace A073490

/-- `A073484(A322590(n+1))` -/
def P18292407210433242644.Spec : Prop :=
  ∀ n, P18292407210433242644.a n = A073490 (n + 1)

end A073490

/-! ## A073490.P18343893091299725271

`A073484(A285329(n+1)+1)`
-/

namespace A073490.P18343893091299725271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073484 (A285329 (n + 1) + 1).toNat

end

end A073490.P18343893091299725271

namespace A073490

/-- `A073484(A285329(n+1)+1)` -/
def P18343893091299725271.Spec : Prop :=
  ∀ n, P18343893091299725271.a n = A073490 (n + 1)

end A073490

/-! ## A073490.P11057623935328082241

`A287170(n+1)+A000007(n)-1`
-/

namespace A073490.P11057623935328082241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1) + A000007 n - 1

end

end A073490.P11057623935328082241

namespace A073490

/-- `A287170(n+1)+A000007(n)-1` -/
def P11057623935328082241.Spec : Prop :=
  ∀ n, P11057623935328082241.a n = A073490 (n + 1)

end A073490

/-! ## A073490.P5210103053596493553

`A001221(n+1)-A001221(A006530(n+1)*A330749(n+1))`
-/

namespace A073490.P5210103053596493553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A006530 (n + 1) * A330749 (n + 1)).toNat

end

end A073490.P5210103053596493553

namespace A073490

/-- `A001221(n+1)-A001221(A006530(n+1)*A330749(n+1))` -/
def P5210103053596493553.Spec : Prop :=
  ∀ n, P5210103053596493553.a n = A073490 (n + 1)

end A073490

/-! ## A073490.P1816817353326326539

`A001221(n+1)-A001221(A020639(n+1)*A322361(n+1))`
-/

namespace A073490.P1816817353326326539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A020639 (n + 1) * A322361 (n + 1)).toNat

end

end A073490.P1816817353326326539

namespace A073490

/-- `A001221(n+1)-A001221(A020639(n+1)*A322361(n+1))` -/
def P1816817353326326539.Spec : Prop :=
  ∀ n, P1816817353326326539.a n = A073490 (n + 1)

end A073490

/-! ## A073490.P14516746630036281266

`A257000(A008864(n+1))+A287170(n+1)-1`
-/

namespace A073490.P14516746630036281266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A008864 (n + 1)).toNat + (A287170 (n + 1) - 1)

end

end A073490.P14516746630036281266

namespace A073490

/-- `A257000(A008864(n+1))+A287170(n+1)-1` -/
def P14516746630036281266.Spec : Prop :=
  ∀ n, P14516746630036281266.a n = A073490 (n + 1)

end A073490

/-! ## A073490.P13970844707448372909

`A272981(n+1)%A137795(n+1)`
-/

namespace A073490.P13970844707448372909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272981 (n + 1)) (A137795 (n + 1))

end

end A073490.P13970844707448372909

namespace A073490

/-- `A272981(n+1)%A137795(n+1)` -/
def P13970844707448372909.Spec : Prop :=
  ∀ n, P13970844707448372909.a n = A073490 (n + 1)

end A073490

/-! ## A073490.P3492068692099699802

`A001222(n+1)-A356228(n+1)`
-/

namespace A073490.P3492068692099699802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A356228 (n + 1)

end

end A073490.P3492068692099699802

namespace A073490

/-- `A001222(n+1)-A356228(n+1)` -/
def P3492068692099699802.Spec : Prop :=
  ∀ n, P3492068692099699802.a n = A073490 (n + 1)

end A073490

/-!
# A073491: Numbers having no prime gaps in their factorization.

The programs for A073491, the canonical program `A073491.P6445803315451258056` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073491 has offset 1).

The definition of A073491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073491.P11977570695969770324

`∪[A000079(n), A066311(n+1)]`
-/

namespace A073491.P11977570695969770324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073491.P11977570695969770324

namespace A073491

/-- `∪[A000079(n), A066311(n+1)]` -/
def P11977570695969770324.Spec : Prop :=
  ∀ n, (P11977570695969770324.a n : ℤ) = A073491 (n + 1)

end A073491

/-! ## A073491.P14884928936601669345

`∪[A000244(n), A066311(n+1)]`
-/

namespace A073491.P14884928936601669345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073491.P14884928936601669345

namespace A073491

/-- `∪[A000244(n), A066311(n+1)]` -/
def P14884928936601669345.Spec : Prop :=
  ∀ n, (P14884928936601669345.a n : ℤ) = A073491 (n + 1)

end A073491

/-! ## A073491.P25277940262613021

`∪[A000302(n), A066311(n+1)]`
-/

namespace A073491.P25277940262613021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073491.P25277940262613021

namespace A073491

/-- `∪[A000302(n), A066311(n+1)]` -/
def P25277940262613021.Spec : Prop :=
  ∀ n, (P25277940262613021.a n : ℤ) = A073491 (n + 1)

end A073491

/-! ## A073491.P6445803315451258056

`∪[A066311(n+1), A017284(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A073491

/-- `∪[A066311(n+1), A017284(n)]` -/
def P6445803315451258056.Spec : Prop :=
  ∀ n, (P6445803315451258056.a n : ℤ) = A073491 (n + 1)

theorem P6445803315451258056.correct : P6445803315451258056.Spec := by
  intro n
  simp only [A073491, Nat.add_sub_cancel]

end A073491

/-! ## A073491.P9909858132424246026

`eq[0, A073490(n+1)]+1`
-/

namespace A073491.P9909858132424246026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073491.P9909858132424246026

namespace A073491

/-- `eq[0, A073490(n+1)]+1` -/
def P9909858132424246026.Spec : Prop :=
  ∀ n, (P9909858132424246026.a n : ℤ) = A073491 (n + 1)

end A073491

/-! ## A073491.P8744343962157762388

`1+eq[1, A137794(n+1)]`
-/

namespace A073491.P8744343962157762388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073491.P8744343962157762388

namespace A073491

/-- `1+eq[1, A137794(n+1)]` -/
def P8744343962157762388.Spec : Prop :=
  ∀ n, (P8744343962157762388.a n : ℤ) = A073491 (n + 1)

end A073491

/-! ## A073491.P13643635975120809852

`lt[A117371(n+1), 1]+1`
-/

namespace A073491.P13643635975120809852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117371 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A073491.P13643635975120809852

namespace A073491

/-- `lt[A117371(n+1), 1]+1` -/
def P13643635975120809852.Spec : Prop :=
  ∀ n, (P13643635975120809852.a n : ℤ) = A073491 (n + 1)

end A073491

/-! ## A073491.P2077189393517400799

`filter[A253784(n+1), A137794(#)]`
-/

namespace A073491.P2077189393517400799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A073491.P2077189393517400799

namespace A073491

/-- `filter[A253784(n+1), A137794(#)]` -/
def P2077189393517400799.Spec : Prop :=
  ∀ n, P2077189393517400799.a n = A073491 (n + 1)

end A073491

/-! ## A073491.P981336232166994242

`filter[A253567(n+1), A137794(#)]`
-/

namespace A073491.P981336232166994242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A073491.P981336232166994242

namespace A073491

/-- `filter[A253567(n+1), A137794(#)]` -/
def P981336232166994242.Spec : Prop :=
  ∀ n, P981336232166994242.a n = A073491 (n + 1)

end A073491

/-! ## A073491.P4359654893054784286

`record[A074044(n+1)]`
-/

namespace A073491.P4359654893054784286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073491.P4359654893054784286

namespace A073491

/-- `record[A074044(n+1)]` -/
def P4359654893054784286.Spec : Prop :=
  ∀ n, P4359654893054784286.a n = A073491 (n + 1)

end A073491

/-! ## A073491.P7619157923315965405

`lt[A286470(n+1), 2]+1`
-/

namespace A073491.P7619157923315965405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A073491.P7619157923315965405

namespace A073491

/-- `lt[A286470(n+1), 2]+1` -/
def P7619157923315965405.Spec : Prop :=
  ∀ n, (P7619157923315965405.a n : ℤ) = A073491 (n + 1)

end A073491

/-! ## A073491.P7865114258436608707

`lt[A287170(n+1), 2]+1`
-/

namespace A073491.P7865114258436608707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A073491.P7865114258436608707

namespace A073491

/-- `lt[A287170(n+1), 2]+1` -/
def P7865114258436608707.Spec : Prop :=
  ∀ n, (P7865114258436608707.a n : ℤ) = A073491 (n + 1)

end A073491

/-! ## A073491.P3007841495369940232

`lt[n*A073490(A028310(n)), n]`
-/

namespace A073491.P3007841495369940232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A073490 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A073491.P3007841495369940232

namespace A073491

/-- `lt[n*A073490(A028310(n)), n]` -/
def P3007841495369940232.Spec : Prop :=
  ∀ n, (P3007841495369940232.a n : ℤ) = A073491 (n + 1)

end A073491

/-! ## A073491.P4080576308297780613

`eq[A243055(A046523(n+1)), A243055(n+1)]+1`
-/

namespace A073491.P4080576308297780613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A046523 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073491.P4080576308297780613

namespace A073491

/-- `eq[A243055(A046523(n+1)), A243055(n+1)]+1` -/
def P4080576308297780613.Spec : Prop :=
  ∀ n, (P4080576308297780613.a n : ℤ) = A073491 (n + 1)

end A073491

/-! ## A073491.P7390866243002238912

`eq[A287170(A061142(n+1)), A287170(n+1)]+1`
-/

namespace A073491.P7390866243002238912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (A061142 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073491.P7390866243002238912

namespace A073491

/-- `eq[A287170(A061142(n+1)), A287170(n+1)]+1` -/
def P7390866243002238912.Spec : Prop :=
  ∀ n, (P7390866243002238912.a n : ℤ) = A073491 (n + 1)

end A073491

/-! ## A073491.P14052238946269166072

`record[A078898(n+1)*A137794(A078898(n+1))]`
-/

namespace A073491.P14052238946269166072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (n + 1) * A137794 (A078898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073491.P14052238946269166072

namespace A073491

/-- `record[A078898(n+1)*A137794(A078898(n+1))]` -/
def P14052238946269166072.Spec : Prop :=
  ∀ n, P14052238946269166072.a n = A073491 (n + 1)

end A073491

/-! ## A073491.P5965138652421321919

`record[A137794(A246277(n+2))*A246277(n+2)]`
-/

namespace A073491.P5965138652421321919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137794 (A246277 (n + 2)).toNat * A246277 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073491.P5965138652421321919

namespace A073491

/-- `record[A137794(A246277(n+2))*A246277(n+2)]` -/
def P5965138652421321919.Spec : Prop :=
  ∀ n, P5965138652421321919.a n = A073491 (n + 1)

end A073491

/-! ## A073491.P4581581184408712891

`eq[1, A137795(n+1)]+1`
-/

namespace A073491.P4581581184408712891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137795 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073491.P4581581184408712891

namespace A073491

/-- `eq[1, A137795(n+1)]+1` -/
def P4581581184408712891.Spec : Prop :=
  ∀ n, (P4581581184408712891.a n : ℤ) = A073491 (n + 1)

end A073491

/-! ## A073491.P14856264313160344529

`record[A143265(n+1)/(A143265(n+1)-n)]`
-/

namespace A073491.P14856264313160344529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143265 (n + 1) : ℚ) / (A143265 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073491.P14856264313160344529

namespace A073491

/-- `record[A143265(n+1)/(A143265(n+1)-n)]` -/
def P14856264313160344529.Spec : Prop :=
  ∀ n, P14856264313160344529.a n = (A073491 (n + 1) : ℚ)

end A073491

/-!
# A073492: Numbers having at least one prime gap in their factorization.

The programs for A073492, the canonical program `A073492.P17387317370613364420` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073492 has offset 1).

The definition of A073492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073492.P17387317370613364420

`comp[(n+1)*A137794(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A073492

/-- `comp[(n+1)*A137794(n+1)]` -/
def P17387317370613364420.Spec : Prop :=
  ∀ n, (P17387317370613364420.a n : ℤ) = A073492 (n + 1)

theorem P17387317370613364420.correct : P17387317370613364420.Spec := by
  intro n
  simp only [A073492, Nat.add_sub_cancel]

end A073492

/-! ## A073492.P3125336281998557786

`lt[1, A286470(n+1)]+1`
-/

namespace A073492.P3125336281998557786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A073492.P3125336281998557786

namespace A073492

/-- `lt[1, A286470(n+1)]+1` -/
def P3125336281998557786.Spec : Prop :=
  ∀ n, (P3125336281998557786.a n : ℤ) = A073492 (n + 1)

end A073492

/-! ## A073492.P3760306368470950573

`lt[1, A287170(n+1)]+1`
-/

namespace A073492.P3760306368470950573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A073492.P3760306368470950573

namespace A073492

/-- `lt[1, A287170(n+1)]+1` -/
def P3760306368470950573.Spec : Prop :=
  ∀ n, (P3760306368470950573.a n : ℤ) = A073492 (n + 1)

end A073492

/-! ## A073492.P17015352696963462900

`eq[3, a(A287170(n))+1]` with `a(0)=0`
-/

namespace A073492.P17015352696963462900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (A287170 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073492.P17015352696963462900

namespace A073492

/-- `eq[3, a(A287170(n))+1]` -/
def P17015352696963462900.Spec : Prop :=
  ∀ n, (P17015352696963462900.a n : ℤ) = A073492 (n + 1)

end A073492

/-! ## A073492.P16587199750642384401

`lt[1, A287170(A028310(n))]`
-/

namespace A073492.P16587199750642384401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A073492.P16587199750642384401

namespace A073492

/-- `lt[1, A287170(A028310(n))]` -/
def P16587199750642384401.Spec : Prop :=
  ∀ n, (P16587199750642384401.a n : ℤ) = A073492 (n + 1)

end A073492

/-! ## A073492.P2610202723397481038

`A020725(lt[1, A287170(n+1)])`
-/

namespace A073492.P2610202723397481038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073492.P2610202723397481038

namespace A073492

/-- `A020725(lt[1, A287170(n+1)])` -/
def P2610202723397481038.Spec : Prop :=
  ∀ n, P2610202723397481038.a n = A073492 (n + 1)

end A073492

/-! ## A073492.P3640547046067452819

`eq[1, A000161(a(A287170(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A073492.P3640547046067452819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A000161 (f2 (A287170 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073492.P3640547046067452819

namespace A073492

/-- `eq[1, A000161(a(A287170(n)))]` -/
def P3640547046067452819.Spec : Prop :=
  ∀ n, (P3640547046067452819.a n : ℤ) = A073492 (n + 1)

end A073492

/-! ## A073492.P16200040608303491258

`eq[1, A072233(a(A287170(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A073492.P16200040608303491258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A072233 (f2 (A287170 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073492.P16200040608303491258

namespace A073492

/-- `eq[1, A072233(a(A287170(n)))]` -/
def P16200040608303491258.Spec : Prop :=
  ∀ n, (P16200040608303491258.a n : ℤ) = A073492 (n + 1)

end A073492

/-! ## A073492.P17000522311530648885

`lt[A053590(n+1), A204455(n+1)]+1`
-/

namespace A073492.P17000522311530648885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A073492.P17000522311530648885

namespace A073492

/-- `lt[A053590(n+1), A204455(n+1)]+1` -/
def P17000522311530648885.Spec : Prop :=
  ∀ n, (P17000522311530648885.a n : ℤ) = A073492 (n + 1)

end A073492

/-! ## A073492.P15672246041651720175

`lt[1, A137795(n+1)]+1`
-/

namespace A073492.P15672246041651720175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137795 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A073492.P15672246041651720175

namespace A073492

/-- `lt[1, A137795(n+1)]+1` -/
def P15672246041651720175.Spec : Prop :=
  ∀ n, (P15672246041651720175.a n : ℤ) = A073492 (n + 1)

end A073492

/-!
# A073493: Numbers having exactly one prime gap in their factorization.

The programs for A073493, the canonical program `A073493.P5641246072222244233` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073493 has offset 1).

The definition of A073493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073493.P5641246072222244233

`eq[1, A073490(n+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A073493

/-- `eq[1, A073490(n+1)]+1` -/
def P5641246072222244233.Spec : Prop :=
  ∀ n, (P5641246072222244233.a n : ℤ) = A073493 (n + 1)

theorem P5641246072222244233.correct : P5641246072222244233.Spec := by
  intro n
  simp only [A073493, Nat.add_sub_cancel]

end A073493

/-! ## A073493.P18365270541926795287

`record[A073492(n+1)/A073490(A073492(n+1))]`
-/

namespace A073493.P18365270541926795287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073492 (n + 1) : ℚ) / (A073490 (A073492 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073493.P18365270541926795287

namespace A073493

/-- `record[A073492(n+1)/A073490(A073492(n+1))]` -/
def P18365270541926795287.Spec : Prop :=
  ∀ n, P18365270541926795287.a n = (A073493 (n + 1) : ℚ)

end A073493

/-! ## A073493.P5385949499477103185

`eq[2, A287170(n+1)]+1`
-/

namespace A073493.P5385949499477103185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073493.P5385949499477103185

namespace A073493

/-- `eq[2, A287170(n+1)]+1` -/
def P5385949499477103185.Spec : Prop :=
  ∀ n, (P5385949499477103185.a n : ℤ) = A073493 (n + 1)

end A073493

/-! ## A073493.P18404457092236297395

`eq[1, A073490(A028310(n))]`
-/

namespace A073493.P18404457092236297395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073493.P18404457092236297395

namespace A073493

/-- `eq[1, A073490(A028310(n))]` -/
def P18404457092236297395.Spec : Prop :=
  ∀ n, (P18404457092236297395.a n : ℤ) = A073493 (n + 1)

end A073493

/-! ## A073493.P6223151941951061165

`A326178(eq[1, A073490(n+1)])`
-/

namespace A073493.P6223151941951061165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073493.P6223151941951061165

namespace A073493

/-- `A326178(eq[1, A073490(n+1)])` -/
def P6223151941951061165.Spec : Prop :=
  ∀ n, P6223151941951061165.a n = A073493 (n + 1)

end A073493

/-! ## A073493.P1527908459597877482

`A020725(eq[2, A287170(n+1)])`
-/

namespace A073493.P1527908459597877482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073493.P1527908459597877482

namespace A073493

/-- `A020725(eq[2, A287170(n+1)])` -/
def P1527908459597877482.Spec : Prop :=
  ∀ n, P1527908459597877482.a n = A073493 (n + 1)

end A073493

/-! ## A073493.P6626747661193090381

`eq[1, A073490(A000007(n)+n)]`
-/

namespace A073493.P6626747661193090381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073493.P6626747661193090381

namespace A073493

/-- `eq[1, A073490(A000007(n)+n)]` -/
def P6626747661193090381.Spec : Prop :=
  ∀ n, (P6626747661193090381.a n : ℤ) = A073493 (n + 1)

end A073493

/-! ## A073493.P13356685487071485164

`A055396(p?[A000040(n+1)*A073490(n+1)])`
-/

namespace A073493.P13356685487071485164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A073490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A073493.P13356685487071485164

namespace A073493

/-- `A055396(p?[A000040(n+1)*A073490(n+1)])` -/
def P13356685487071485164.Spec : Prop :=
  ∀ n, P13356685487071485164.a n = A073493 (n + 1)

end A073493

/-! ## A073493.P5394996263291283994

`A286469(p?[A000040(n+1)*A073490(n+1)])`
-/

namespace A073493.P5394996263291283994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A073490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286469 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A073493.P5394996263291283994

namespace A073493

/-- `A286469(p?[A000040(n+1)*A073490(n+1)])` -/
def P5394996263291283994.Spec : Prop :=
  ∀ n, P5394996263291283994.a n = A073493 (n + 1)

end A073493

/-! ## A073493.P6377966432293271572

`eq[1, A073490(A233583(n+1))]`
-/

namespace A073493.P6377966432293271572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073493.P6377966432293271572

namespace A073493

/-- `eq[1, A073490(A233583(n+1))]` -/
def P6377966432293271572.Spec : Prop :=
  ∀ n, (P6377966432293271572.a n : ℤ) = A073493 (n + 1)

end A073493

/-!
# A073494: Numbers having exactly two prime gaps in their factorization.

The programs for A073494, the canonical program `A073494.P13413378010787852681` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073494 has offset 1).

The definition of A073494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073494.P13413378010787852681

`eq[2, A073490(n+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A073494

/-- `eq[2, A073490(n+1)]+1` -/
def P13413378010787852681.Spec : Prop :=
  ∀ n, (P13413378010787852681.a n : ℤ) = A073494 (n + 1)

theorem P13413378010787852681.correct : P13413378010787852681.Spec := by
  intro n
  simp only [A073494, Nat.add_sub_cancel]

end A073494

/-! ## A073494.P10251022020799857491

`eq[3, A287170(n+1)]+1`
-/

namespace A073494.P10251022020799857491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073494.P10251022020799857491

namespace A073494

/-- `eq[3, A287170(n+1)]+1` -/
def P10251022020799857491.Spec : Prop :=
  ∀ n, (P10251022020799857491.a n : ℤ) = A073494 (n + 1)

end A073494

/-! ## A073494.P7548702714853806472

`eq[2, A073490(A028310(n))]`
-/

namespace A073494.P7548702714853806472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073494.P7548702714853806472

namespace A073494

/-- `eq[2, A073490(A028310(n))]` -/
def P7548702714853806472.Spec : Prop :=
  ∀ n, (P7548702714853806472.a n : ℤ) = A073494 (n + 1)

end A073494

/-! ## A073494.P8392679852515513100

`A011760(eq[2, A073490(n+1)])`
-/

namespace A073494.P8392679852515513100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073494.P8392679852515513100

namespace A073494

/-- `A011760(eq[2, A073490(n+1)])` -/
def P8392679852515513100.Spec : Prop :=
  ∀ n, P8392679852515513100.a n = A073494 (n + 1)

end A073494

/-! ## A073494.P14768157050770626226

`A326178(eq[2, A073490(n+1)])`
-/

namespace A073494.P14768157050770626226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073494.P14768157050770626226

namespace A073494

/-- `A326178(eq[2, A073490(n+1)])` -/
def P14768157050770626226.Spec : Prop :=
  ∀ n, P14768157050770626226.a n = A073494 (n + 1)

end A073494

/-! ## A073494.P8456763954232535080

`A020725(eq[3, A287170(n+1)])`
-/

namespace A073494.P8456763954232535080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073494.P8456763954232535080

namespace A073494

/-- `A020725(eq[3, A287170(n+1)])` -/
def P8456763954232535080.Spec : Prop :=
  ∀ n, P8456763954232535080.a n = A073494 (n + 1)

end A073494

/-! ## A073494.P7016614711867567823

`eq[2, A073490(A000007(n)+n)]`
-/

namespace A073494.P7016614711867567823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073494.P7016614711867567823

namespace A073494

/-- `eq[2, A073490(A000007(n)+n)]` -/
def P7016614711867567823.Spec : Prop :=
  ∀ n, (P7016614711867567823.a n : ℤ) = A073494 (n + 1)

end A073494

/-! ## A073494.P14192830874061310532

`eq[2, A073490(A233583(n+1))]`
-/

namespace A073494.P14192830874061310532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073494.P14192830874061310532

namespace A073494

/-- `eq[2, A073490(A233583(n+1))]` -/
def P14192830874061310532.Spec : Prop :=
  ∀ n, (P14192830874061310532.a n : ℤ) = A073494 (n + 1)

end A073494

/-!
# A073495: Numbers having exactly three prime gaps in their factorization.

The programs for A073495, there is no canonical definition to state claims against.
-/

/-! ## A073495.P9680439115075001256

`A073489(A032551(n+1)+1)`
-/

namespace A073495.P9680439115075001256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073489 (A032551 (n + 1) + 1).toNat

end

end A073495.P9680439115075001256

/-! ## A073495.P7572628334729543818

`A057427(n!)*A073489(n+1)`
-/

namespace A073495.P7572628334729543818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.factorial n) * A073489 (n + 1)

end

end A073495.P7572628334729543818

/-! ## A073495.P15074569456036794777

`A073489(n+1)^A347175(n+1)`
-/

namespace A073495.P15074569456036794777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073489 (n + 1) : ℚ) ^ (A347175 (n + 1) : ℤ)

end

end A073495.P15074569456036794777

/-! ## A073495.P10766165325528370874

`A073489(n+1)%A073519(n+2)`
-/

namespace A073495.P10766165325528370874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073489 (n + 1)) (A073519 (n + 2))

end

end A073495.P10766165325528370874

/-!
# A073496: Expansion of (3 + 2*x + 3*x^2)/(1 + x + 3*x^2 - x^3).

The programs for A073496, the canonical program `A073496.P3531797901113811651` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073496 has offset 0).

The definition of A073496 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+2x+3x^2)/(1+x+3x^2-x^3))` (program `A073496.P3531797901113811651`, by `A073496.P3531797901113811651.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073496.P3531797901113811651

`ogf((3+2x+3x^2)/(1+x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A073496

/-- `ogf((3+2x+3x^2)/(1+x+3x^2-x^3))` -/
def P3531797901113811651.Spec : Prop :=
  ∀ n, P3531797901113811651.a n = A073496 n

theorem P3531797901113811651.correct : P3531797901113811651.Spec := by
  intro n
  simp only [A073496]

end A073496

/-! ## A073496.P10526914323981305539

`a(n-3)-3*a(n-2)-a(n-1)` with `a(0)=3, a(1)=-1, a(2)=-5`
-/

namespace A073496.P10526914323981305539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -5] fun n a =>
  a (n - 3) - 3 * a (n - 2) - a (n - 1)

end

end A073496.P10526914323981305539

namespace A073496

/-- `a(n-3)-3*a(n-2)-a(n-1)` -/
def P10526914323981305539.Spec : Prop :=
  ∀ n, P10526914323981305539.a n = A073496 n

end A073496

/-! ## A073496.P16848118910886584703

`A073145(2*n)`
-/

namespace A073496.P16848118910886584703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 (2 * n)

end

end A073496.P16848118910886584703

namespace A073496

/-- `A073145(2*n)` -/
def P16848118910886584703.Spec : Prop :=
  ∀ n, P16848118910886584703.a n = A073496 n

end A073496

/-! ## A073496.P16635441113212962683

`or(1, A073145(n+n))`
-/

namespace A073496.P16635441113212962683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A073145 (n + n))

end

end A073496.P16635441113212962683

namespace A073496

/-- `or(1, A073145(n+n))` -/
def P16635441113212962683.Spec : Prop :=
  ∀ n, P16635441113212962683.a n = A073496 n

end A073496

/-! ## A073496.P15403188039260265530

`A073702(n)-2*A001644(n)`
-/

namespace A073496.P15403188039260265530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073702 n - 2 * A001644 n

end

end A073496.P15403188039260265530

namespace A073496

/-- `A073702(n)-2*A001644(n)` -/
def P15403188039260265530.Spec : Prop :=
  ∀ n, P15403188039260265530.a n = A073496 n

end A073496

/-! ## A073496.P818036502558169214

`or(A073145(A005843(n)), A102679(n))`
-/

namespace A073496.P818036502558169214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073145 (A005843 n).toNat) (A102679 n)

end

end A073496.P818036502558169214

namespace A073496

/-- `or(A073145(A005843(n)), A102679(n))` -/
def P818036502558169214.Spec : Prop :=
  ∀ n, P818036502558169214.a n = A073496 n

end A073496

/-! ## A073496.P7952792229829867596

`or(A073145(A005843(n)), A292438(n))`
-/

namespace A073496.P7952792229829867596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073145 (A005843 n).toNat) (A292438 n)

end

end A073496.P7952792229829867596

namespace A073496

/-- `or(A073145(A005843(n)), A292438(n))` -/
def P7952792229829867596.Spec : Prop :=
  ∀ n, P7952792229829867596.a n = A073496 n

end A073496

/-! ## A073496.P2950971257897808033

`A190913(2*n)-A000032(2*n)`
-/

namespace A073496.P2950971257897808033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190913 (2 * n) - A000032 (2 * n)

end

end A073496.P2950971257897808033

namespace A073496

/-- `A190913(2*n)-A000032(2*n)` -/
def P2950971257897808033.Spec : Prop :=
  ∀ n, P2950971257897808033.a n = A073496 n

end A073496

/-! ## A073496.P16923632581521846479

`A190913(2*n)+1-A001612(2*n)`
-/

namespace A073496.P16923632581521846479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190913 (2 * n) + (1 - A001612 (2 * n))

end

end A073496.P16923632581521846479

namespace A073496

/-- `A190913(2*n)+1-A001612(2*n)` -/
def P16923632581521846479.Spec : Prop :=
  ∀ n, P16923632581521846479.a n = A073496 n

end A073496

/-! ## A073496.P1528722516648023377

`A190913(2*n)-A061084(2*n+1)`
-/

namespace A073496.P1528722516648023377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190913 (2 * n) - A061084 (2 * n + 1)

end

end A073496.P1528722516648023377

namespace A073496

/-- `A190913(2*n)-A061084(2*n+1)` -/
def P1528722516648023377.Spec : Prop :=
  ∀ n, P1528722516648023377.a n = A073496 n

end A073496

/-! ## A073496.P4265424370196956306

`A190913(2*n)+2-A000211(2*n)`
-/

namespace A073496.P4265424370196956306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190913 (2 * n) + (2 - A000211 (2 * n))

end

end A073496.P4265424370196956306

namespace A073496

/-- `A190913(2*n)+2-A000211(2*n)` -/
def P4265424370196956306.Spec : Prop :=
  ∀ n, P4265424370196956306.a n = A073496 n

end A073496

/-! ## A073496.P880093562034038650

`A190913(2*n)-(A212804(2*n)+A000045(2*n+1))`
-/

namespace A073496.P880093562034038650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190913 (2 * n) - (A212804 (2 * n) + A000045 (2 * n + 1))

end

end A073496.P880093562034038650

namespace A073496

/-- `A190913(2*n)-(A212804(2*n)+A000045(2*n+1))` -/
def P880093562034038650.Spec : Prop :=
  ∀ n, P880093562034038650.a n = A073496 n

end A073496

/-! ## A073496.P6149037546666928871

`A190913(2*n)-A075091(2*n)/2`
-/

namespace A073496.P6149037546666928871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190913 (2 * n) : ℚ) - (A075091 (2 * n) : ℚ) / 2

end

end A073496.P6149037546666928871

namespace A073496

/-- `A190913(2*n)-A075091(2*n)/2` -/
def P6149037546666928871.Spec : Prop :=
  ∀ n, P6149037546666928871.a n = (A073496 n : ℚ)

end A073496

/-! ## A073496.P12864355047528866631

`A001610(2*n)+A190913(2*n)-A001610(2*n+1)`
-/

namespace A073496.P12864355047528866631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (2 * n) + (A190913 (2 * n) - A001610 (2 * n + 1))

end

end A073496.P12864355047528866631

namespace A073496

/-- `A001610(2*n)+A190913(2*n)-A001610(2*n+1)` -/
def P12864355047528866631.Spec : Prop :=
  ∀ n, P12864355047528866631.a n = A073496 n

end A073496

/-! ## A073496.P9519054462135461882

`A000204(2*n+1)+A190913(2*n)-A000204(2*(n+1))`
-/

namespace A073496.P9519054462135461882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * n + 1) + (A190913 (2 * n) - A000204 (2 * (n + 1)))

end

end A073496.P9519054462135461882

namespace A073496

/-- `A000204(2*n+1)+A190913(2*n)-A000204(2*(n+1))` -/
def P9519054462135461882.Spec : Prop :=
  ∀ n, P9519054462135461882.a n = A073496 n

end A073496

/-! ## A073496.P10744866969889752727

`A075092(2*n)-A001644(2*n)`
-/

namespace A073496.P10744866969889752727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075092 (2 * n) - A001644 (2 * n)

end

end A073496.P10744866969889752727

namespace A073496

/-- `A075092(2*n)-A001644(2*n)` -/
def P10744866969889752727.Spec : Prop :=
  ∀ n, P10744866969889752727.a n = A073496 n

end A073496

/-! ## A073496.P15676954168206565666

`A075092(2*n)-A075676(2*n)`
-/

namespace A073496.P15676954168206565666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075092 (2 * n) - A075676 (2 * n)

end

end A073496.P15676954168206565666

namespace A073496

/-- `A075092(2*n)-A075676(2*n)` -/
def P15676954168206565666.Spec : Prop :=
  ∀ n, P15676954168206565666.a n = A073496 n

end A073496

/-!
# A073497: a(n) = n^2 - prime(n).

The programs for A073497, the canonical program `A073497.P4382820423101221026` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073497 has offset 1).

The definition of A073497 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²-A000040(n+1)` (program `A073497.P4382820423101221026`, by `A073497.P4382820423101221026.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073497.P4382820423101221026

`(n+1)²-A000040(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A073497

/-- `(n+1)²-A000040(n+1)` -/
def P4382820423101221026.Spec : Prop :=
  ∀ n, P4382820423101221026.a n = A073497 (n + 1)

theorem P4382820423101221026.correct : P4382820423101221026.Spec := by
  intro n
  simp only [A073497, Nat.add_sub_cancel]

end A073497

/-! ## A073497.P14635184448864171541

`n²-A131733(n+1)`
-/

namespace A073497.P14635184448864171541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A131733 (n + 1)

end

end A073497.P14635184448864171541

namespace A073497

/-- `n²-A131733(n+1)` -/
def P14635184448864171541.Spec : Prop :=
  ∀ n, P14635184448864171541.a n = A073497 (n + 1)

theorem P14635184448864171541.correct : P14635184448864171541.Spec := by
  intro n
  simp only [A073497, Nat.add_sub_cancel, A073497.P14635184448864171541.a, A073497.P4382820423101221026.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131733, A131733.P2209471722626615476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073497

/-! ## A073497.P6200412098570188660

`(n+1)²-Δ[A007504(n)]`
-/

namespace A073497.P6200412098570188660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A073497.P6200412098570188660

namespace A073497

/-- `(n+1)²-Δ[A007504(n)]` -/
def P6200412098570188660.Spec : Prop :=
  ∀ n, P6200412098570188660.a n = A073497 (n + 1)

end A073497

/-! ## A073497.P191346706878442116

`n²+1-A173072(n+1)`
-/

namespace A073497.P191346706878442116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (1 - A173072 (n + 1))

end

end A073497.P191346706878442116

namespace A073497

/-- `n²+1-A173072(n+1)` -/
def P191346706878442116.Spec : Prop :=
  ∀ n, P191346706878442116.a n = A073497 (n + 1)

theorem P191346706878442116.correct : P191346706878442116.Spec := by
  intro n
  simp only [A073497, Nat.add_sub_cancel, A073497.P191346706878442116.a, A073497.P4382820423101221026.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A173072, A173072.P15776542700832946734.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073497

/-! ## A073497.P6863030455156736521

`∑[2*n]-A014689(n+1)`
-/

namespace A073497.P6863030455156736521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A014689 (n + 1)

end

end A073497.P6863030455156736521

namespace A073497

/-- `∑[2*n]-A014689(n+1)` -/
def P6863030455156736521.Spec : Prop :=
  ∀ n, P6863030455156736521.a n = A073497 (n + 1)

end A073497

/-! ## A073497.P11234127508108545253

`n*(n+2)-A006093(n+1)`
-/

namespace A073497.P11234127508108545253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - A006093 (n + 1)

end

end A073497.P11234127508108545253

namespace A073497

/-- `n*(n+2)-A006093(n+1)` -/
def P11234127508108545253.Spec : Prop :=
  ∀ n, P11234127508108545253.a n = A073497 (n + 1)

theorem P11234127508108545253.correct : P11234127508108545253.Spec := by
  intro n
  simp only [A073497, Nat.add_sub_cancel, A073497.P11234127508108545253.a, A073497.P4382820423101221026.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073497

/-! ## A073497.P7271699669743050964

`(n+1)²-∑[A054541(n+1)]`
-/

namespace A073497.P7271699669743050964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073497.P7271699669743050964

namespace A073497

/-- `(n+1)²-∑[A054541(n+1)]` -/
def P7271699669743050964.Spec : Prop :=
  ∀ n, P7271699669743050964.a n = A073497 (n + 1)

end A073497

/-! ## A073497.P5965970309678063190

`(n+1)²-(A040976(n+1)+2)`
-/

namespace A073497.P5965970309678063190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (A040976 (n + 1) + 2)

end

end A073497.P5965970309678063190

namespace A073497

/-- `(n+1)²-(A040976(n+1)+2)` -/
def P5965970309678063190.Spec : Prop :=
  ∀ n, P5965970309678063190.a n = A073497 (n + 1)

theorem P5965970309678063190.correct : P5965970309678063190.Spec := by
  intro n
  simp only [A073497, Nat.add_sub_cancel, A073497.P5965970309678063190.a, A073497.P4382820423101221026.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073497

/-! ## A073497.P11765221463116452155

`Δ[a(n-1)-(A000040(n)-n²)]` with `a(0)=0`
-/

namespace A073497.P11765221463116452155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (A000040 n - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073497.P11765221463116452155

namespace A073497

/-- `Δ[a(n-1)-(A000040(n)-n²)]` -/
def P11765221463116452155.Spec : Prop :=
  ∀ n, P11765221463116452155.a n = A073497 (n + 1)

end A073497

/-! ## A073497.P2343814111923157861

`∑[2*n]+n+1-A000040(C(n+1, n))`
-/

namespace A073497.P2343814111923157861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n + 1 : ℤ) - A000040 (Nat.choose (n + 1) n))

end

end A073497.P2343814111923157861

namespace A073497

/-- `∑[2*n]+n+1-A000040(C(n+1, n))` -/
def P2343814111923157861.Spec : Prop :=
  ∀ n, P2343814111923157861.a n = A073497 (n + 1)

end A073497

/-! ## A073497.P10330249414949317549

`∑[2*n]-A000040(2*n+1-n)+n+1`
-/

namespace A073497.P10330249414949317549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000040 (2 * n + 1 - n) + (n + 1 : ℤ)

end

end A073497.P10330249414949317549

namespace A073497

/-- `∑[2*n]-A000040(2*n+1-n)+n+1` -/
def P10330249414949317549.Spec : Prop :=
  ∀ n, P10330249414949317549.a n = A073497 (n + 1)

end A073497

/-! ## A073497.P16153045578791276541

`Δ[A000330(n)-A007504(n)]`
-/

namespace A073497.P16153045578791276541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073497.P16153045578791276541

namespace A073497

/-- `Δ[A000330(n)-A007504(n)]` -/
def P16153045578791276541.Spec : Prop :=
  ∀ n, P16153045578791276541.a n = A073497 (n + 1)

end A073497

/-! ## A073497.P7352380428216746216

`A007504(n)-A108754(n+1)`
-/

namespace A073497.P7352380428216746216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A108754 (n + 1)

end

end A073497.P7352380428216746216

namespace A073497

/-- `A007504(n)-A108754(n+1)` -/
def P7352380428216746216.Spec : Prop :=
  ∀ n, P7352380428216746216.a n = A073497 (n + 1)

end A073497

/-! ## A073497.P8022093874907841691

`A028387(n)-A095116(n+1)`
-/

namespace A073497.P8022093874907841691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n - A095116 (n + 1)

end

end A073497.P8022093874907841691

namespace A073497

/-- `A028387(n)-A095116(n+1)` -/
def P8022093874907841691.Spec : Prop :=
  ∀ n, P8022093874907841691.a n = A073497 (n + 1)

theorem P8022093874907841691.correct : P8022093874907841691.Spec := by
  intro n
  simp only [A073497, Nat.add_sub_cancel, A073497.P8022093874907841691.a, A073497.P4382820423101221026.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A028387, A028387.P5954590561330899546.a, A095116, A095116.P2789422422958858773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073497

/-! ## A073497.P633143173581951042

`A002522(n)-A173072(n+1)`
-/

namespace A073497.P633143173581951042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - A173072 (n + 1)

end

end A073497.P633143173581951042

namespace A073497

/-- `A002522(n)-A173072(n+1)` -/
def P633143173581951042.Spec : Prop :=
  ∀ n, P633143173581951042.a n = A073497 (n + 1)

theorem P633143173581951042.correct : P633143173581951042.Spec := by
  intro n
  simp only [A073497, Nat.add_sub_cancel, A073497.P633143173581951042.a, A073497.P4382820423101221026.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002522, A002522.P3778392011853271743.a, A173072, A173072.P15776542700832946734.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073497

/-! ## A073497.P2754102148248539570

`A131738(n)²-A006005(n+1)`
-/

namespace A073497.P2754102148248539570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n ^ 2 - A006005 (n + 1)

end

end A073497.P2754102148248539570

namespace A073497

/-- `A131738(n)²-A006005(n+1)` -/
def P2754102148248539570.Spec : Prop :=
  ∀ n, P2754102148248539570.a n = A073497 (n + 1)

end A073497

/-! ## A073497.P2203260745587960773

`A005563(n)+1-A000040(n+1)`
-/

namespace A073497.P2203260745587960773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (1 - A000040 (n + 1))

end

end A073497.P2203260745587960773

namespace A073497

/-- `A005563(n)+1-A000040(n+1)` -/
def P2203260745587960773.Spec : Prop :=
  ∀ n, P2203260745587960773.a n = A073497 (n + 1)

theorem P2203260745587960773.correct : P2203260745587960773.Spec := by
  intro n
  simp only [A073497, Nat.add_sub_cancel, A073497.P2203260745587960773.a, A073497.P4382820423101221026.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073497

/-! ## A073497.P277713997670896210

`A008865(n+1)-A040976(n+1)`
-/

namespace A073497.P277713997670896210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (n + 1) - A040976 (n + 1)

end

end A073497.P277713997670896210

namespace A073497

/-- `A008865(n+1)-A040976(n+1)` -/
def P277713997670896210.Spec : Prop :=
  ∀ n, P277713997670896210.a n = A073497 (n + 1)

theorem P277713997670896210.correct : P277713997670896210.Spec := by
  intro n
  simp only [A073497, Nat.add_sub_cancel, A073497.P277713997670896210.a, A073497.P4382820423101221026.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008865, A008865.P16699731729816255732.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073497

/-! ## A073497.P5520052844622087948

`A004232(n+1)-A100484(n+1)`
-/

namespace A073497.P5520052844622087948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004232 (n + 1) - A100484 (n + 1)

end

end A073497.P5520052844622087948

namespace A073497

/-- `A004232(n+1)-A100484(n+1)` -/
def P5520052844622087948.Spec : Prop :=
  ∀ n, P5520052844622087948.a n = A073497 (n + 1)

theorem P5520052844622087948.correct : P5520052844622087948.Spec := by
  intro n
  simp only [A073497, Nat.add_sub_cancel, A073497.P5520052844622087948.a, A073497.P4382820423101221026.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A004232, A004232.P3456609317362794228.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073497

/-! ## A073497.P5802961353735928718

`A036689(n+1)-A106588(n+1)`
-/

namespace A073497.P5802961353735928718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) - A106588 (n + 1)

end

end A073497.P5802961353735928718

namespace A073497

/-- `A036689(n+1)-A106588(n+1)` -/
def P5802961353735928718.Spec : Prop :=
  ∀ n, P5802961353735928718.a n = A073497 (n + 1)

end A073497

/-!
# A073498: Binomial transform of A073145.

The programs for A073498, the canonical program `A073498.P3898236081288272691` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073498 has offset 0).

The definition of A073498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073498.P3898236081288272691

`4*a(n-1)-6*a(n-2)+2*a(n-3)` with `a(0)=3, a(1)=4, a(2)=4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A073498

/-- `4*a(n-1)-6*a(n-2)+2*a(n-3)` -/
def P3898236081288272691.Spec : Prop :=
  ∀ n, P3898236081288272691.a n = A073498 n

theorem P3898236081288272691.correct : P3898236081288272691.Spec := by
  intro n
  simp only [A073498]

end A073498

/-! ## A073498.P8869790705795956539

`ogf((3-8x+6x^2)/(1-4x+6x^2-2x^3))`
-/

namespace A073498.P8869790705795956539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8, 6] [1, -4, 6, -2] n

end

end A073498.P8869790705795956539

namespace A073498

/-- `ogf((3-8x+6x^2)/(1-4x+6x^2-2x^3))` -/
def P8869790705795956539.Spec : Prop :=
  ∀ n, P8869790705795956539.a n = A073498 n

end A073498

