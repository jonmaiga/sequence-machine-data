import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A366001: Number of free polyominoids with n cells, allowing right-angled corner-connections and flat edge-connections.

The programs for A366001, there is no canonical definition to state claims against.
-/

/-! ## A366001.P9714755006278438725

`A379736(2*n)+A043096(A187655(n))`
-/

namespace A366001.P9714755006278438725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379736 (2 * n) + A043096 (A187655 n).toNat

end

end A366001.P9714755006278438725

/-!
# A366012: a(n) = (1/(n+1)) * Sum_{k=0..n} binomial(n+k,k) * binomial(n*(n+1),n-k).

The programs for A366012, the canonical program `A366012.P2812196392237435357` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366012 has offset 0).

The definition of A366012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366012.P2812196392237435357

`1/(n+1)*∑{#}[n, C(n+#, #)*C(n*(n+1), n-#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366012

/-- `1/(n+1)*∑{#}[n, C(n+#, #)*C(n*(n+1), n-#)]` -/
def P2812196392237435357.Spec : Prop :=
  ∀ n, P2812196392237435357.a n = (A366012 n : ℚ)

end A366012

/-! ## A366012.P14298424522588446440

`A107111(∑[4*n])`
-/

namespace A366012.P14298424522588446440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107111 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A366012.P14298424522588446440

namespace A366012

/-- `A107111(∑[4*n])` -/
def P14298424522588446440.Spec : Prop :=
  ∀ n, P14298424522588446440.a n = A366012 n

end A366012

/-!
# A366014: G.f. A(x) satisfies: A(x) = x * (1 + A(x))^4 / (1 - 2 * A(x)).

The programs for A366014, there is no canonical definition to state claims against.
-/

/-! ## A366014.P5939823935485290071

`A105515(round(11^n/2))`
-/

namespace A366014.P5939823935485290071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105515 (SequenceMachineLib.roundAway ((11 ^ n : ℚ) / 2)).toNat

end

end A366014.P5939823935485290071

/-!
# A366015: G.f. A(x) satisfies: A(x) = x * (1 + A(x))^4 / (1 - 3 * A(x)).

The programs for A366015, there is no canonical definition to state claims against.
-/

/-! ## A366015.P12013229401675458016

`A004186(A372315(n)-1)`
-/

namespace A366015.P12013229401675458016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A372315 n - 1).toNat

end

end A366015.P12013229401675458016

/-!
# A366016: G.f. A(x) satisfies: A(x) = x * (1 + A(x))^4 / (1 - 4 * A(x)).

The programs for A366016, there is no canonical definition to state claims against.
-/

/-! ## A366016.P4447314310385764377

`n*A103221(A363136(n))`
-/

namespace A366016.P4447314310385764377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A103221 (A363136 n).toNat

end

end A366016.P4447314310385764377

/-!
# A366017: G.f. A(x) satisfies: A(x) = x * (1 + A(x))^4 / (1 - 5 * A(x)).

The programs for A366017, there is no canonical definition to state claims against.
-/

/-! ## A366017.P2968808729655000417

`A004526(A001764(n)*A047849(n))`
-/

namespace A366017.P2968808729655000417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001764 n * A047849 n).toNat

end

end A366017.P2968808729655000417

/-!
# A366023: Expansion of (1/x) * Series_Reversion( x*(1-x)*(1+x^4) ).

The programs for A366023, the canonical program `A366023.P5023412584751237949` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366023 has offset 0).

The definition of A366023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366023.P5023412584751237949

`1/(n+1)*∑{#}[floor(n/4), (-1)^#*C(n+#, n)*C(2*n-4*#, n)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366023

/-- `1/(n+1)*∑{#}[floor(n/4), (-1)^#*C(n+#, n)*C(2*n-4*#, n)]` -/
def P5023412584751237949.Spec : Prop :=
  ∀ n, P5023412584751237949.a n = (A366023 n : ℚ)

end A366023

/-! ## A366023.P17545802669497331653

`A086078(A007097(n))+A036765(n)`
-/

namespace A366023.P17545802669497331653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086078 (A007097 n).toNat + A036765 n

end

end A366023.P17545802669497331653

namespace A366023

/-- `A086078(A007097(n))+A036765(n)` -/
def P17545802669497331653.Spec : Prop :=
  ∀ n, P17545802669497331653.a n = A366023 n

end A366023

/-! ## A366023.P16318462502394508124

`A185284(A000124(n))+A036765(n)`
-/

namespace A366023.P16318462502394508124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000124 n).toNat + A036765 n

end

end A366023.P16318462502394508124

namespace A366023

/-- `A185284(A000124(n))+A036765(n)` -/
def P16318462502394508124.Spec : Prop :=
  ∀ n, P16318462502394508124.a n = A366023 n

end A366023

/-! ## A366023.P9843183012167014235

`A091247(A185354(n))+A036765(n)`
-/

namespace A366023.P9843183012167014235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A185354 n).toNat + A036765 n

end

end A366023.P9843183012167014235

namespace A366023

/-- `A091247(A185354(n))+A036765(n)` -/
def P9843183012167014235.Spec : Prop :=
  ∀ n, P9843183012167014235.a n = A366023 n

end A366023

/-! ## A366023.P15222387072488617943

`A074290(A205801(n))+A036765(n)`
-/

namespace A366023.P15222387072488617943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (A205801 n).toNat + A036765 n

end

end A366023.P15222387072488617943

namespace A366023

/-- `A074290(A205801(n))+A036765(n)` -/
def P15222387072488617943.Spec : Prop :=
  ∀ n, P15222387072488617943.a n = A366023 n

end A366023

/-!
# A366024: Expansion of (1/x) * Series_Reversion( x*(1-x)*(1+x^5) ).

The programs for A366024, the canonical program `A366024.P1364067117374876449` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366024 has offset 0).

The definition of A366024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366024.P1364067117374876449

`1/(n+1)*∑{#}[floor(n/5), (-1)^#*C(n+#, n)*C(2*n-5*#, n)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366024

/-- `1/(n+1)*∑{#}[floor(n/5), (-1)^#*C(n+#, n)*C(2*n-5*#, n)]` -/
def P1364067117374876449.Spec : Prop :=
  ∀ n, P1364067117374876449.a n = (A366024 n : ℚ)

end A366024

/-! ## A366024.P14868365689954915490

`A178798(A000045(n))+A036766(n)`
-/

namespace A366024.P14868365689954915490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A000045 n).toNat + A036766 n

end

end A366024.P14868365689954915490

namespace A366024

/-- `A178798(A000045(n))+A036766(n)` -/
def P14868365689954915490.Spec : Prop :=
  ∀ n, P14868365689954915490.a n = A366024 n

end A366024

/-! ## A366024.P7702671536313132477

`A143535(A143572(n))+A036766(n)`
-/

namespace A366024.P7702671536313132477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143535 (A143572 n).toNat + A036766 n

end

end A366024.P7702671536313132477

namespace A366024

/-- `A143535(A143572(n))+A036766(n)` -/
def P7702671536313132477.Spec : Prop :=
  ∀ n, P7702671536313132477.a n = A366024 n

end A366024

/-! ## A366024.P8883107220245838846

`A113081(A250286(n))+A036766(n)`
-/

namespace A366024.P8883107220245838846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113081 (A250286 n).toNat + A036766 n

end

end A366024.P8883107220245838846

namespace A366024

/-- `A113081(A250286(n))+A036766(n)` -/
def P8883107220245838846.Spec : Prop :=
  ∀ n, P8883107220245838846.a n = A366024 n

end A366024

/-! ## A366024.P8721138645822040883

`or(A010059(A006882(n)), A036766(n))`
-/

namespace A366024.P8721138645822040883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010059 (A006882 n).toNat) (A036766 n)

end

end A366024.P8721138645822040883

namespace A366024

/-- `or(A010059(A006882(n)), A036766(n))` -/
def P8721138645822040883.Spec : Prop :=
  ∀ n, P8721138645822040883.a n = A366024 n

end A366024

/-!
# A366025: Expansion of (1/x) * Series_Reversion( x*(1-x)/(1+x^5) ).

The programs for A366025, the canonical program `A366025.P3274188701531588794` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366025 has offset 0).

The definition of A366025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366025.P3274188701531588794

`1/(n+1)*∑{#}[floor(n/5), C(n+1, #)*C(2*n-5*#, n)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366025

/-- `1/(n+1)*∑{#}[floor(n/5), C(n+1, #)*C(2*n-5*#, n)]` -/
def P3274188701531588794.Spec : Prop :=
  ∀ n, P3274188701531588794.a n = (A366025 n : ℚ)

end A366025

/-! ## A366025.P3761424170801143525

`A366042(n)+A238904(A238920(n))`
-/

namespace A366025.P3761424170801143525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366042 n + A238904 (A238920 n).toNat

end

end A366025.P3761424170801143525

namespace A366025

/-- `A366042(n)+A238904(A238920(n))` -/
def P3761424170801143525.Spec : Prop :=
  ∀ n, P3761424170801143525.a n = A366025 n

end A366025

/-! ## A366025.P4114831327748405469

`A366042(n)-A024360(A238037(n+1))`
-/

namespace A366025.P4114831327748405469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366042 n - A024360 (A238037 (n + 1)).toNat

end

end A366025.P4114831327748405469

namespace A366025

/-- `A366042(n)-A024360(A238037(n+1))` -/
def P4114831327748405469.Spec : Prop :=
  ∀ n, P4114831327748405469.a n = A366025 n

end A366025

/-! ## A366025.P16732692079868526019

`A366042(A002998(n))`
-/

namespace A366025.P16732692079868526019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366042 (A002998 n).toNat

end

end A366025.P16732692079868526019

namespace A366025

/-- `A366042(A002998(n))` -/
def P16732692079868526019.Spec : Prop :=
  ∀ n, P16732692079868526019.a n = A366025 n

end A366025

/-! ## A366025.P13388043200119594302

`A004151(A366042(n))`
-/

namespace A366025.P13388043200119594302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A366042 n).toNat

end

end A366025.P13388043200119594302

namespace A366025

/-- `A004151(A366042(n))` -/
def P13388043200119594302.Spec : Prop :=
  ∀ n, P13388043200119594302.a n = A366025 n

end A366025

/-!
# A366026: G.f. A(x) satisfies A(x) = Product_{k>=1} (1 + x^k*A(x)^(2*k)).

The programs for A366026, there is no canonical definition to state claims against.
-/

/-! ## A366026.P5166935746421470762

`A200719(n)-A016389(A128458(n+1))`
-/

namespace A366026.P5166935746421470762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200719 n - A016389 (A128458 (n + 1)).toNat

end

end A366026.P5166935746421470762

/-! ## A366026.P7229657050073786137

`A200719(n)-A343959(A105041(n+1))`
-/

namespace A366026.P7229657050073786137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200719 n - A343959 (A105041 (n + 1)).toNat

end

end A366026.P7229657050073786137

/-! ## A366026.P3477714805075405529

`A200719(n)+A030214(A339159(n+5))`
-/

namespace A366026.P3477714805075405529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200719 n + A030214 (A339159 (n + 5)).toNat

end

end A366026.P3477714805075405529

/-! ## A366026.P2055030507193839598

`A200719(n)-A275947(A058276(2*(n+1)))`
-/

namespace A366026.P2055030507193839598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200719 n - A275947 (A058276 (2 * (n + 1))).toNat

end

end A366026.P2055030507193839598

/-! ## A366026.P1756985826361147256

`A200719(n)-A353475(A189905(3*n+5))`
-/

namespace A366026.P1756985826361147256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200719 n - A353475 (A189905 (3 * n + 5)).toNat

end

end A366026.P1756985826361147256

/-!
# A366029: Numbers k > 1 such that (k-1)^(2^k-2) == 1 (mod (2^k-1)*k^2).

The programs for A366029, there is no canonical definition to state claims against.
-/

/-! ## A366029.P9378408236287472587

`∪[A000043(n+1), A006686(n+1)]`
-/

namespace A366029.P9378408236287472587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366029.P9378408236287472587

/-! ## A366029.P3476911944425879636

`∪[A006686(n+1), A174265(n+1)]`
-/

namespace A366029.P3476911944425879636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366029.P3476911944425879636

/-! ## A366029.P7749916719096049090

`∪[A000043(n+1), A248796(n+1)]`
-/

namespace A366029.P7749916719096049090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366029.P7749916719096049090

/-! ## A366029.P7499472592950183503

`∪[A000043(n+1), A272061(n+1)]`
-/

namespace A366029.P7499472592950183503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366029.P7499472592950183503

/-! ## A366029.P8975753050113188016

`∪[A019280(n+1)+1, A272061(n+1)]`
-/

namespace A366029.P8975753050113188016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019280 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366029.P8975753050113188016

/-!
# A366033: Successive digits of consecutive terms of the prime-counting function A000720.

The programs for A366033, there is no canonical definition to state claims against.
-/

/-! ## A366033.P4694420041914169708

`A000720(n+1)%A077960(A000040(n+1))`
-/

namespace A366033.P4694420041914169708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (n + 1)) (A077960 (A000040 (n + 1)).toNat)

end

end A366033.P4694420041914169708

/-! ## A366033.P3962905496971610683

`dr(A000720(n+1)%A274019(n))`
-/

namespace A366033.P3962905496971610683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000720 (n + 1)) (A274019 n))

end

end A366033.P3962905496971610683

/-! ## A366033.P5426193623785697717

`dr(A335520(3*n+2)+A000720(n+1))`
-/

namespace A366033.P5426193623785697717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A335520 (3 * n + 2) + A000720 (n + 1))

end

end A366033.P5426193623785697717

/-! ## A366033.P10082644170706600626

`dr((n-A065855(n+1))%A125648(n+1))`
-/

namespace A366033.P10082644170706600626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod ((n : ℤ) - A065855 (n + 1)) (A125648 (n + 1)))

end

end A366033.P10082644170706600626

/-! ## A366033.P1201121490777019755

`A004086(A000720(n+1))%A019996(n)`
-/

namespace A366033.P1201121490777019755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A000720 (n + 1)).toNat) (A019996 n)

end

end A366033.P1201121490777019755

/-!
# A366034: G.f. A(x) satisfies A(x) = 1/(1 - x)^3 + x*(1 - x)^3*A(x)^3.

The programs for A366034, the canonical program `A366034.P8404259304156767884` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366034 has offset 0).

The definition of A366034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366034.P8404259304156767884

`∑{#}[n, C(n+2*#+2, n-#)*C(3*#, #)/(2*#+1)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366034

/-- `∑{#}[n, C(n+2*#+2, n-#)*C(3*#, #)/(2*#+1)]` -/
def P8404259304156767884.Spec : Prop :=
  ∀ n, P8404259304156767884.a n = (A366034 n : ℚ)

end A366034

/-! ## A366034.P11622093173284109502

`∑[∑[A346626(n)]]`
-/

namespace A366034.P11622093173284109502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346626 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366034.P11622093173284109502

namespace A366034

/-- `∑[∑[A346626(n)]]` -/
def P11622093173284109502.Spec : Prop :=
  ∀ n, P11622093173284109502.a n = A366034 n

end A366034

/-! ## A366034.P11829267725857640860

`∑[∑[∑[A213282(n)]]]`
-/

namespace A366034.P11829267725857640860
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366034.P11829267725857640860

namespace A366034

/-- `∑[∑[∑[A213282(n)]]]` -/
def P11829267725857640860.Spec : Prop :=
  ∀ n, P11829267725857640860.a n = A366034 n

end A366034

/-! ## A366034.P3242820934993523460

`∑[∑[A378236(∑[n+1]+n)]]`
-/

namespace A366034.P3242820934993523460
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378236 (∑ j ∈ Finset.range (n + 1), f3 j + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366034.P3242820934993523460

namespace A366034

/-- `∑[∑[A378236(∑[n+1]+n)]]` -/
def P3242820934993523460.Spec : Prop :=
  ∀ n, P3242820934993523460.a n = A366034 n

end A366034

/-!
# A366035: G.f. A(x) satisfies: A(x) = x * (1 + A(x))^5 / (1 - 3 * A(x)).

The programs for A366035, there is no canonical definition to state claims against.
-/

/-! ## A366035.P4457188555638934935

`Δ[A031402(A019439(n))]`
-/

namespace A366035.P4457188555638934935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031402 (A019439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366035.P4457188555638934935

/-!
# A366036: G.f. A(x) satisfies: A(x) = x * (1 + A(x))^5 / (1 - 4 * A(x)).

The programs for A366036, there is no canonical definition to state claims against.
-/

/-! ## A366036.P5251707388221650971

`A264966(A000595(n)-1)`
-/

namespace A366036.P5251707388221650971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A000595 n - 1).toNat

end

end A366036.P5251707388221650971

/-!
# A366037: G.f. A(x) satisfies: A(x) = x * (1 + A(x))^5 / (1 - 5 * A(x)).

The programs for A366037, there is no canonical definition to state claims against.
-/

/-! ## A366037.P12060931598252908272

`A005206(A277454(n)-A001429(n+3))`
-/

namespace A366037.P12060931598252908272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A277454 n - A001429 (n + 3)).toNat

end

end A366037.P12060931598252908272

/-!
# A366038: a(n) = (1/(n+1)) * Sum_{k=0..n} binomial(n+k,k) * binomial(n*(n+1),n-k) * n^k.

The programs for A366038, the canonical program `A366038.P15542989242041217968` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366038 has offset 0).

The definition of A366038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366038.P15542989242041217968

`1/(n+1)*∑{#}[n, C(n+#, #)*C(n*(n+1), n-#)*n^#]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366038

/-- `1/(n+1)*∑{#}[n, C(n+#, #)*C(n*(n+1), n-#)*n^#]` -/
def P15542989242041217968.Spec : Prop :=
  ∀ n, P15542989242041217968.a n = (A366038 n : ℚ)

end A366038

/-!
# A366041: Expansion of (1/x) * Series_Reversion( x*(1-x)*(1-x^4) ).

The programs for A366041, the canonical program `A366041.P15969458723945825199` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366041 has offset 0).

The definition of A366041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366041.P15969458723945825199

`1/(n+1)*∑{#}[floor(n/4), C(n+#, n)*C(2*n-4*#, n)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366041

/-- `1/(n+1)*∑{#}[floor(n/4), C(n+#, n)*C(2*n-4*#, n)]` -/
def P15969458723945825199.Spec : Prop :=
  ∀ n, P15969458723945825199.a n = (A366041 n : ℚ)

end A366041

/-! ## A366041.P14066222724883699296

`A372532(n+1)%A180429(n+1)`
-/

namespace A366041.P14066222724883699296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372532 (n + 1)) (A180429 (n + 1))

end

end A366041.P14066222724883699296

namespace A366041

/-- `A372532(n+1)%A180429(n+1)` -/
def P14066222724883699296.Spec : Prop :=
  ∀ n, P14066222724883699296.a n = A366041 n

end A366041

/-! ## A366041.P9905680646657860157

`A372532(A243833(2*n+3)+n+1)`
-/

namespace A366041.P9905680646657860157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372532 (A243833 (2 * n + 3) + (n + 1 : ℤ)).toNat

end

end A366041.P9905680646657860157

namespace A366041

/-- `A372532(A243833(2*n+3)+n+1)` -/
def P9905680646657860157.Spec : Prop :=
  ∀ n, P9905680646657860157.a n = A366041 n

end A366041

/-! ## A366041.P599153264159591034

`A372532(n+1)+A000035(A228539(n))`
-/

namespace A366041.P599153264159591034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372532 (n + 1) + A000035 (A228539 n).toNat

end

end A366041.P599153264159591034

namespace A366041

/-- `A372532(n+1)+A000035(A228539(n))` -/
def P599153264159591034.Spec : Prop :=
  ∀ n, P599153264159591034.a n = A366041 n

end A366041

/-! ## A366041.P9903931395524486962

`A372532(n+1)*A376663(A074482(n))`
-/

namespace A366041.P9903931395524486962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372532 (n + 1) * A376663 (A074482 n).toNat

end

end A366041.P9903931395524486962

namespace A366041

/-- `A372532(n+1)*A376663(A074482(n))` -/
def P9903931395524486962.Spec : Prop :=
  ∀ n, P9903931395524486962.a n = A366041 n

end A366041

/-!
# A366042: Expansion of (1/x) * Series_Reversion( x*(1-x)*(1-x^5) ).

The programs for A366042, the canonical program `A366042.P180503252260541476` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366042 has offset 0).

The definition of A366042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366042.P180503252260541476

`1/(n+1)*∑{#}[floor(n/5), C(n+#, n)*C(2*n-5*#, n)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366042

/-- `1/(n+1)*∑{#}[floor(n/5), C(n+#, n)*C(2*n-5*#, n)]` -/
def P180503252260541476.Spec : Prop :=
  ∀ n, P180503252260541476.a n = (A366042 n : ℚ)

end A366042

/-! ## A366042.P12802686953766928181

`or(A230412(A051633(n)), A366025(n))`
-/

namespace A366042.P12802686953766928181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A230412 (A051633 n).toNat) (A366025 n)

end

end A366042.P12802686953766928181

namespace A366042

/-- `or(A230412(A051633(n)), A366025(n))` -/
def P12802686953766928181.Spec : Prop :=
  ∀ n, P12802686953766928181.a n = A366042 n

end A366042

/-! ## A366042.P15808768886305495514

`or(A188433(A088703(n+4)), A366025(n))`
-/

namespace A366042.P15808768886305495514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A188433 (A088703 (n + 4)).toNat) (A366025 n)

end

end A366042.P15808768886305495514

namespace A366042

/-- `or(A188433(A088703(n+4)), A366025(n))` -/
def P15808768886305495514.Spec : Prop :=
  ∀ n, P15808768886305495514.a n = A366042 n

end A366042

/-!
# A366043: Number of circular binary sequences of length n with an odd number of 0's and no consecutive 1's.

The programs for A366043, the canonical program `A366043.P18219701237679968499` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366043 has offset 1).

The definition of A366043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366043.P14147386120991985223

`ogf((1+2x)/(1-x^2-2x^3-x^4))`
-/

namespace A366043.P14147386120991985223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -1, -2, -1] n

end

end A366043.P14147386120991985223

namespace A366043

/-- `ogf((1+2x)/(1-x^2-2x^3-x^4))` -/
def P14147386120991985223.Spec : Prop :=
  ∀ n, P14147386120991985223.a n = A366043 (n + 1)

end A366043

/-! ## A366043.P18219701237679968499

`a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366043

/-- `a(n-2)+2*a(n-3)+a(n-4)` -/
def P18219701237679968499.Spec : Prop :=
  ∀ n, (P18219701237679968499.a n : ℤ) = A366043 (n + 1)

theorem P18219701237679968499.correct : P18219701237679968499.Spec := by
  intro n
  simp only [A366043, Nat.add_sub_cancel]

end A366043

/-! ## A366043.P7519665338885408698

`1/2*A000204(n+1)-cos(2*π*(n+1)/3)`
-/

namespace A366043.P7519665338885408698
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 * (A000204 (n + 1) : ℚ) : ℝ) - Real.cos (2 * Real.pi * (n + 1 : ℝ) / 3)

end

end A366043.P7519665338885408698

namespace A366043

/-- `1/2*A000204(n+1)-cos(2*π*(n+1)/3)` -/
def P7519665338885408698.Spec : Prop :=
  ∀ n, P7519665338885408698.a n = (A366043 (n + 1) : ℝ)

end A366043

/-! ## A366043.P3844074028928440874

`A000204(n+1)-A100886(n)`
-/

namespace A366043.P3844074028928440874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A100886 n

end

end A366043.P3844074028928440874

namespace A366043

/-- `A000204(n+1)-A100886(n)` -/
def P3844074028928440874.Spec : Prop :=
  ∀ n, P3844074028928440874.a n = A366043 (n + 1)

end A366043

/-! ## A366043.P14246476612883073432

`(A000204(n+1)+A061347(n+1))/2`
-/

namespace A366043.P14246476612883073432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000204 (n + 1) + A061347 (n + 1) : ℚ) / 2

end

end A366043.P14246476612883073432

namespace A366043

/-- `(A000204(n+1)+A061347(n+1))/2` -/
def P14246476612883073432.Spec : Prop :=
  ∀ n, P14246476612883073432.a n = (A366043 (n + 1) : ℚ)

end A366043

/-! ## A366043.P7515561454458503969

`A117188(n)+A108014(n)`
-/

namespace A366043.P7515561454458503969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117188 n + A108014 n

end

end A366043.P7515561454458503969

namespace A366043

/-- `A117188(n)+A108014(n)` -/
def P7515561454458503969.Spec : Prop :=
  ∀ n, P7515561454458503969.a n = A366043 (n + 1)

end A366043

/-! ## A366043.P11665180956785047868

`A173714(n)+A131561(n)`
-/

namespace A366043.P11665180956785047868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 n + A131561 n

end

end A366043.P11665180956785047868

namespace A366043

/-- `A173714(n)+A131561(n)` -/
def P11665180956785047868.Spec : Prop :=
  ∀ n, P11665180956785047868.a n = A366043 (n + 1)

end A366043

/-! ## A366043.P8812998932203490339

`A100886(n)+A061347(n+1)`
-/

namespace A366043.P8812998932203490339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100886 n + A061347 (n + 1)

end

end A366043.P8812998932203490339

namespace A366043

/-- `A100886(n)+A061347(n+1)` -/
def P8812998932203490339.Spec : Prop :=
  ∀ n, P8812998932203490339.a n = A366043 (n + 1)

end A366043

/-! ## A366043.P12072206760542896982

`A100886(n)-A099837(n+1)`
-/

namespace A366043.P12072206760542896982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100886 n - A099837 (n + 1)

end

end A366043.P12072206760542896982

namespace A366043

/-- `A100886(n)-A099837(n+1)` -/
def P12072206760542896982.Spec : Prop :=
  ∀ n, P12072206760542896982.a n = A366043 (n + 1)

end A366043

/-! ## A366043.P17652205784875495054

`A100886(n)+A057079(2*n)`
-/

namespace A366043.P17652205784875495054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100886 n + A057079 (2 * n)

end

end A366043.P17652205784875495054

namespace A366043

/-- `A100886(n)+A057079(2*n)` -/
def P17652205784875495054.Spec : Prop :=
  ∀ n, P17652205784875495054.a n = A366043 (n + 1)

end A366043

/-! ## A366043.P994964140768843509

`2*A093040(n)-A094686(n)`
-/

namespace A366043.P994964140768843509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093040 n - A094686 n

end

end A366043.P994964140768843509

namespace A366043

/-- `2*A093040(n)-A094686(n)` -/
def P994964140768843509.Spec : Prop :=
  ∀ n, P994964140768843509.a n = A366043 (n + 1)

end A366043

/-! ## A366043.P15511955780053290705

`A122876(2*n+1)+A100886(n)`
-/

namespace A366043.P15511955780053290705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122876 (2 * n + 1) + A100886 n

end

end A366043.P15511955780053290705

namespace A366043

/-- `A122876(2*n+1)+A100886(n)` -/
def P15511955780053290705.Spec : Prop :=
  ∀ n, P15511955780053290705.a n = A366043 (n + 1)

end A366043

/-! ## A366043.P3734103241016273527

`A278718(2*n+1)+A173714(n)`
-/

namespace A366043.P3734103241016273527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278718 (2 * n + 1) + A173714 n

end

end A366043.P3734103241016273527

namespace A366043

/-- `A278718(2*n+1)+A173714(n)` -/
def P3734103241016273527.Spec : Prop :=
  ∀ n, P3734103241016273527.a n = A366043 (n + 1)

end A366043

/-! ## A366043.P16818598099023488000

`A173495(n+1)-A131532(2*n)`
-/

namespace A366043.P16818598099023488000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173495 (n + 1) - A131532 (2 * n)

end

end A366043.P16818598099023488000

namespace A366043

/-- `A173495(n+1)-A131532(2*n)` -/
def P16818598099023488000.Spec : Prop :=
  ∀ n, P16818598099023488000.a n = A366043 (n + 1)

end A366043

/-! ## A366043.P1443672176724965265

`A000045(n)+A094686(n)-A057078(n+1)`
-/

namespace A366043.P1443672176724965265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A094686 n - A057078 (n + 1))

end

end A366043.P1443672176724965265

namespace A366043

/-- `A000045(n)+A094686(n)-A057078(n+1)` -/
def P1443672176724965265.Spec : Prop :=
  ∀ n, P1443672176724965265.a n = A366043 (n + 1)

end A366043

/-! ## A366043.P17140595396017042683

`A100886(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A366043.P17140595396017042683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100886 (n + 1) - a (n - 1)

end

end A366043.P17140595396017042683

namespace A366043

/-- `A100886(n+1)-a(n-1)` -/
def P17140595396017042683.Spec : Prop :=
  ∀ n, P17140595396017042683.a n = A366043 (n + 1)

end A366043

/-! ## A366043.P10684020729991713761

`A000032(n+1)-A100886(n)`
-/

namespace A366043.P10684020729991713761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A100886 n

end

end A366043.P10684020729991713761

namespace A366043

/-- `A000032(n+1)-A100886(n)` -/
def P10684020729991713761.Spec : Prop :=
  ∀ n, P10684020729991713761.a n = A366043 (n + 1)

end A366043

/-! ## A366043.P13311801347004917940

`Δ[abs(A226447(n+2))]`
-/

namespace A366043.P13311801347004917940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226447 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366043.P13311801347004917940

namespace A366043

/-- `Δ[abs(A226447(n+2))]` -/
def P13311801347004917940.Spec : Prop :=
  ∀ n, P13311801347004917940.a n = A366043 (n + 1)

end A366043

/-! ## A366043.P16568570346227184059

`Δ[Δ[A173714(n+2)]]`
-/

namespace A366043.P16568570346227184059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366043.P16568570346227184059

namespace A366043

/-- `Δ[Δ[A173714(n+2)]]` -/
def P16568570346227184059.Spec : Prop :=
  ∀ n, P16568570346227184059.a n = A366043 (n + 1)

end A366043

/-! ## A366043.P6283292233102189731

`Δ[Δ[A364587(n+3)]]`
-/

namespace A366043.P6283292233102189731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364587 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366043.P6283292233102189731

namespace A366043

/-- `Δ[Δ[A364587(n+3)]]` -/
def P6283292233102189731.Spec : Prop :=
  ∀ n, P6283292233102189731.a n = A366043 (n + 1)

end A366043

/-!
# A366044: Number of circular binary sequences of length n with an even number of 0's and no three consecutive 1's.

The programs for A366044, the canonical program `A366044.P16003485002489039509` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366044 has offset 1).

The definition of A366044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366044.P13702262181147161869

`ogf((x+3x^2+6x^3+5x^4+3x^5)/(1-x^2-2x^3-3x^4-2x^5-x^6))`
-/

namespace A366044.P13702262181147161869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 6, 5, 3] [1, 0, -1, -2, -3, -2, -1] n

end

end A366044.P13702262181147161869

namespace A366044

/-- `ogf((x+3x^2+6x^3+5x^4+3x^5)/(1-x^2-2x^3-3x^4-2x^5-x^6))` -/
def P13702262181147161869.Spec : Prop :=
  ∀ n, P13702262181147161869.a n = A366044 (n + 1)

end A366044

/-! ## A366044.P16003485002489039509

`a(n-2)+2*a(n-3)+3*a(n-4)+2*a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=10, a(5)=19`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366044

/-- `a(n-2)+2*a(n-3)+3*a(n-4)+2*a(n-5)+a(n-6)` -/
def P16003485002489039509.Spec : Prop :=
  ∀ n, (P16003485002489039509.a n : ℤ) = A366044 (n + 1)

theorem P16003485002489039509.correct : P16003485002489039509.Spec := by
  intro n
  simp only [A366044, Nat.add_sub_cancel]

end A366044

/-! ## A366044.P12220437414877509175

`A001644(n+1)-A366045(n+1)`
-/

namespace A366044.P12220437414877509175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) - A366045 (n + 1)

end

end A366044.P12220437414877509175

namespace A366044

/-- `A001644(n+1)-A366045(n+1)` -/
def P12220437414877509175.Spec : Prop :=
  ∀ n, P12220437414877509175.a n = A366044 (n + 1)

end A366044

/-! ## A366044.P10826362693952747311

`record[A001644(n)%A366045(n+1)]`
-/

namespace A366044.P10826362693952747311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001644 n) (A366045 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366044.P10826362693952747311

namespace A366044

/-- `record[A001644(n)%A366045(n+1)]` -/
def P10826362693952747311.Spec : Prop :=
  ∀ n, P10826362693952747311.a n = A366044 (n + 1)

end A366044

/-!
# A366045: Number of circular binary sequences of length n with an odd number of 0's and no three consecutive 1's.

The programs for A366045, the canonical program `A366045.P8942926436967715460` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366045 has offset 1).

The definition of A366045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366045.P1245728180168399090

`ogf((1+2x+3x^2)/(1-x^2-2x^3-3x^4-2x^5-x^6))`
-/

namespace A366045.P1245728180168399090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, 0, -1, -2, -3, -2, -1] n

end

end A366045.P1245728180168399090

namespace A366045

/-- `ogf((1+2x+3x^2)/(1-x^2-2x^3-3x^4-2x^5-x^6))` -/
def P1245728180168399090.Spec : Prop :=
  ∀ n, P1245728180168399090.a n = A366045 (n + 1)

end A366045

/-! ## A366045.P8942926436967715460

`a(n-2)+2*a(n-3)+3*a(n-4)+2*a(n-5)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=4, a(4)=11, a(5)=20`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366045

/-- `a(n-2)+2*a(n-3)+3*a(n-4)+2*a(n-5)+a(n-6)` -/
def P8942926436967715460.Spec : Prop :=
  ∀ n, (P8942926436967715460.a n : ℤ) = A366045 (n + 1)

theorem P8942926436967715460.correct : P8942926436967715460.Spec := by
  intro n
  simp only [A366045, Nat.add_sub_cancel]

end A366045

/-! ## A366045.P8503382646711800789

`A001644(n+1)-A366044(n+1)`
-/

namespace A366045.P8503382646711800789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) - A366044 (n + 1)

end

end A366045.P8503382646711800789

namespace A366045

/-- `A001644(n+1)-A366044(n+1)` -/
def P8503382646711800789.Spec : Prop :=
  ∀ n, P8503382646711800789.a n = A366045 (n + 1)

end A366045

/-!
# A366046: Expansion of (1/x) * Series_Reversion( x*(1-x+x^5) ).

The programs for A366046, there is no canonical definition to state claims against.
-/

/-! ## A366046.P4060246592574159718

`A159772(n+1)-A058348(A000041(n))`
-/

namespace A366046.P4060246592574159718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159772 (n + 1) - A058348 (A000041 n).toNat

end

end A366046.P4060246592574159718

/-! ## A366046.P2213257543227401931

`A159772(n+1)-A098841(A029747(n+1))`
-/

namespace A366046.P2213257543227401931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159772 (n + 1) - A098841 (A029747 (n + 1)).toNat

end

end A366046.P2213257543227401931

/-!
# A366049: Expansion of (1/x) * Series_Reversion( x*(1-x)^3/(1-x+x^2) ).

The programs for A366049, the canonical program `A366049.P11486766747661691762` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366049 has offset 0).

The definition of A366049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366049.P11486766747661691762

`1/(n+1)*∑{#}[n, C(n+1, #)*C(2*n+#, n-#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366049

/-- `1/(n+1)*∑{#}[n, C(n+1, #)*C(2*n+#, n-#)]` -/
def P11486766747661691762.Spec : Prop :=
  ∀ n, P11486766747661691762.a n = (A366049 n : ℚ)

end A366049

/-! ## A366049.P7455423117532037164

`A380046(n)+A004247(A354436(n))`
-/

namespace A366049.P7455423117532037164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380046 n + A004247 (A354436 n).toNat

end

end A366049.P7455423117532037164

namespace A366049

/-- `A380046(n)+A004247(A354436(n))` -/
def P7455423117532037164.Spec : Prop :=
  ∀ n, P7455423117532037164.a n = A366049 n

end A366049

/-!
# A366050: Expansion of (1/x) * Series_Reversion( x*(1-x)^4/(1-x+x^2) ).

The programs for A366050, the canonical program `A366050.P4130401183825891221` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366050 has offset 0).

The definition of A366050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366050.P4130401183825891221

`1/(n+1)*∑{#}[n, C(n+1, #)*C(3*n+#+1, n-#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366050

/-- `1/(n+1)*∑{#}[n, C(n+1, #)*C(3*n+#+1, n-#)]` -/
def P4130401183825891221.Spec : Prop :=
  ∀ n, P4130401183825891221.a n = (A366050 n : ℚ)

end A366050

/-! ## A366050.P5327375644038481472

`A059851(A213942(n+2)+A072850(2*n))`
-/

namespace A366050.P5327375644038481472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (A213942 (n + 2) + A072850 (2 * n)).toNat

end

end A366050.P5327375644038481472

namespace A366050

/-- `A059851(A213942(n+2)+A072850(2*n))` -/
def P5327375644038481472.Spec : Prop :=
  ∀ n, P5327375644038481472.a n = A366050 n

end A366050

/-!
# A366052: Expansion of (1/x) * Series_Reversion( x*(1-x)^3/(1-x+x^3) ).

The programs for A366052, the canonical program `A366052.P891541458574004383` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366052 has offset 0).

The definition of A366052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366052.P891541458574004383

`1/(n+1)*∑{#}[floor(n/3), C(n+1, #)*C(3*n-2*#+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366052

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+1, #)*C(3*n-2*#+1, n-3*#)]` -/
def P891541458574004383.Spec : Prop :=
  ∀ n, P891541458574004383.a n = (A366052 n : ℚ)

end A366052

/-! ## A366052.P11047360606726126703

`A368931(n)+A074290(A368931(n))`
-/

namespace A366052.P11047360606726126703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368931 n + A074290 (A368931 n).toNat

end

end A366052.P11047360606726126703

namespace A366052

/-- `A368931(n)+A074290(A368931(n))` -/
def P11047360606726126703.Spec : Prop :=
  ∀ n, P11047360606726126703.a n = A366052 n

end A366052

/-! ## A366052.P18274305807949126055

`A368931(n)-A044940(A007289(n))`
-/

namespace A366052.P18274305807949126055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368931 n - A044940 (A007289 n).toNat

end

end A366052.P18274305807949126055

namespace A366052

/-- `A368931(n)-A044940(A007289(n))` -/
def P18274305807949126055.Spec : Prop :=
  ∀ n, P18274305807949126055.a n = A366052 n

end A366052

/-!
# A366053: Expansion of (1/x) * Series_Reversion( x*(1-x)^4/(1-x+x^3) ).

The programs for A366053, the canonical program `A366053.P12624312477296748391` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366053 has offset 0).

The definition of A366053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366053.P12624312477296748391

`1/(n+1)*∑{#}[floor(n/3), C(n+1, #)*C(4*n-2*#+2, n-3*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366053

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+1, #)*C(4*n-2*#+2, n-3*#)]` -/
def P12624312477296748391.Spec : Prop :=
  ∀ n, P12624312477296748391.a n = (A366053 n : ℚ)

end A366053

/-!
# A366054: Expansion of (1/x) * Series_Reversion( x*(1-x)^2/(1-x+x^4) ).

The programs for A366054, the canonical program `A366054.P11618044995513552749` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366054 has offset 0).

The definition of A366054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366054.P11618044995513552749

`1/(n+1)*∑{#}[floor(n/4), C(n+1, #)*C(2*n-3*#, n-4*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366054

/-- `1/(n+1)*∑{#}[floor(n/4), C(n+1, #)*C(2*n-3*#, n-4*#)]` -/
def P11618044995513552749.Spec : Prop :=
  ∀ n, P11618044995513552749.a n = (A366054 n : ℚ)

end A366054

/-! ## A366054.P16740896390384744871

`A369631(n)-A324179(A175441(n+1))`
-/

namespace A366054.P16740896390384744871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369631 n - A324179 (A175441 (n + 1)).toNat

end

end A366054.P16740896390384744871

namespace A366054

/-- `A369631(n)-A324179(A175441(n+1))` -/
def P16740896390384744871.Spec : Prop :=
  ∀ n, P16740896390384744871.a n = A366054 n

end A366054

/-! ## A366054.P6672892330040042087

`A369631(n)-A369660(A369630(n+1))`
-/

namespace A366054.P6672892330040042087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369631 n - A369660 (A369630 (n + 1)).toNat

end

end A366054.P6672892330040042087

namespace A366054

/-- `A369631(n)-A369660(A369630(n+1))` -/
def P6672892330040042087.Spec : Prop :=
  ∀ n, P6672892330040042087.a n = A366054 n

end A366054

/-! ## A366054.P8544819693155662342

`A369631(A073790(n))`
-/

namespace A366054.P8544819693155662342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369631 (A073790 n).toNat

end

end A366054.P8544819693155662342

namespace A366054

/-- `A369631(A073790(n))` -/
def P8544819693155662342.Spec : Prop :=
  ∀ n, P8544819693155662342.a n = A366054 n

end A366054

/-! ## A366054.P2038094327447508333

`A369631(A004881(n+1))`
-/

namespace A366054.P2038094327447508333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369631 (A004881 (n + 1)).toNat

end

end A366054.P2038094327447508333

namespace A366054

/-- `A369631(A004881(n+1))` -/
def P2038094327447508333.Spec : Prop :=
  ∀ n, P2038094327447508333.a n = A366054 n

end A366054

/-!
# A366055: Expansion of (1/x) * Series_Reversion( x*(1-x)^3/(1-x+x^4) ).

The programs for A366055, the canonical program `A366055.P746454620273347306` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366055 has offset 0).

The definition of A366055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366055.P746454620273347306

`1/(n+1)*∑{#}[floor(n/4), C(n+1, #)*C(3*n-3*#+1, n-4*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366055

/-- `1/(n+1)*∑{#}[floor(n/4), C(n+1, #)*C(3*n-3*#+1, n-4*#)]` -/
def P746454620273347306.Spec : Prop :=
  ∀ n, P746454620273347306.a n = (A366055 n : ℚ)

end A366055

/-! ## A366055.P9031334708382916960

`A368932(n)-A275926(A001700(n))`
-/

namespace A366055.P9031334708382916960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368932 n - A275926 (A001700 n).toNat

end

end A366055.P9031334708382916960

namespace A366055

/-- `A368932(n)-A275926(A001700(n))` -/
def P9031334708382916960.Spec : Prop :=
  ∀ n, P9031334708382916960.a n = A366055 n

end A366055

/-! ## A366055.P4449666854138185562

`A368932(n)-A337889(A383787(n+1))`
-/

namespace A366055.P4449666854138185562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368932 n - A337889 (A383787 (n + 1)).toNat

end

end A366055.P4449666854138185562

namespace A366055

/-- `A368932(n)-A337889(A383787(n+1))` -/
def P4449666854138185562.Spec : Prop :=
  ∀ n, P4449666854138185562.a n = A366055 n

end A366055

/-! ## A366055.P5809927567137146008

`A368932(A099146(n+1))`
-/

namespace A366055.P5809927567137146008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368932 (A099146 (n + 1)).toNat

end

end A366055.P5809927567137146008

namespace A366055

/-- `A368932(A099146(n+1))` -/
def P5809927567137146008.Spec : Prop :=
  ∀ n, P5809927567137146008.a n = A366055 n

end A366055

/-!
# A366056: Expansion of (1/x) * Series_Reversion( x*(1-x)^4/(1-x+x^4) ).

The programs for A366056, the canonical program `A366056.P5402053147932781284` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366056 has offset 0).

The definition of A366056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366056.P5402053147932781284

`1/(n+1)*∑{#}[floor(n/4), C(n+1, #)*C(4*n-3*#+2, n-4*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366056

/-- `1/(n+1)*∑{#}[floor(n/4), C(n+1, #)*C(4*n-3*#+2, n-4*#)]` -/
def P5402053147932781284.Spec : Prop :=
  ∀ n, P5402053147932781284.a n = (A366056 n : ℚ)

end A366056

/-! ## A366056.P7204488644132954383

`A004442(A369161(n)-1)`
-/

namespace A366056.P7204488644132954383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A369161 n - 1).toNat

end

end A366056.P7204488644132954383

namespace A366056

/-- `A004442(A369161(n)-1)` -/
def P7204488644132954383.Spec : Prop :=
  ∀ n, P7204488644132954383.a n = A366056 n

end A366056

/-!
# A366057: Expansion of (1/x) * Series_Reversion( x/(1-x+x^5) ).

The programs for A366057, there is no canonical definition to state claims against.
-/

/-! ## A366057.P10472776817360668078

`A228495(A228404(n))-A325731(n+1)`
-/

namespace A366057.P10472776817360668078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (A228404 n).toNat - A325731 (n + 1)

end

end A366057.P10472776817360668078

/-! ## A366057.P806966488414548829

`A351931(n)/A008836(A000079(n+4))`
-/

namespace A366057.P806966488414548829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351931 n : ℚ) / (A008836 (A000079 (n + 4)).toNat : ℚ)

end

end A366057.P806966488414548829

/-! ## A366057.P4599089990709373658

`A053866(A153672(n+1))-A325731(n+1)`
-/

namespace A366057.P4599089990709373658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (A153672 (n + 1)).toNat - A325731 (n + 1)

end

end A366057.P4599089990709373658

/-! ## A366057.P558548253037010375

`A010054(A026589(n+4))-A325731(n+1)`
-/

namespace A366057.P558548253037010375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A026589 (n + 4)).toNat - A325731 (n + 1)

end

end A366057.P558548253037010375

/-! ## A366057.P7823265896464388085

`A033999(A323642(3*n+4))*A289306(n)`
-/

namespace A366057.P7823265896464388085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A323642 (3 * n + 4)).toNat * A289306 n

end

end A366057.P7823265896464388085

/-!
# A366058: Number of n-step self-avoiding walks on a 3D cubic lattice where no step is to a lattice point closer to the origin than the current point.

The programs for A366058, the canonical program `A366058.P15991970352664156073` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366058 has offset 0).

The definition of A366058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366058.P15991970352664156073

`∑[ogf((1+5x^2+6x^3)/(1-5x+6x^2))]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366058

/-- `∑[ogf((1+5x^2+6x^3)/(1-5x+6x^2))]` -/
def P15991970352664156073.Spec : Prop :=
  ∀ n, P15991970352664156073.a n = A366058 n

theorem P15991970352664156073.correct : P15991970352664156073.Spec := by
  intro n
  simp only [A366058]

end A366058

/-! ## A366058.P11062959389621473861

`A056182(n+1)+A056182(n)-A068293(n+1)`
-/

namespace A366058.P11062959389621473861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056182 (n + 1) + (A056182 n - A068293 (n + 1))

end

end A366058.P11062959389621473861

namespace A366058

/-- `A056182(n+1)+A056182(n)-A068293(n+1)` -/
def P11062959389621473861.Spec : Prop :=
  ∀ n, P11062959389621473861.a n = A366058 n

end A366058

/-! ## A366058.P17532005899032446016

`A394444(A167614(n+2))`
-/

namespace A366058.P17532005899032446016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394444 (A167614 (n + 2)).toNat

end

end A366058.P17532005899032446016

namespace A366058

/-- `A394444(A167614(n+2))` -/
def P17532005899032446016.Spec : Prop :=
  ∀ n, P17532005899032446016.a n = A366058 n

end A366058

/-! ## A366058.P8853701422909657068

`A394444(A000124(n+3)+2)`
-/

namespace A366058.P8853701422909657068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394444 (A000124 (n + 3) + 2).toNat

end

end A366058.P8853701422909657068

namespace A366058

/-- `A394444(A000124(n+3)+2)` -/
def P8853701422909657068.Spec : Prop :=
  ∀ n, P8853701422909657068.a n = A366058 n

end A366058

/-!
# A366061: Numbers of iterations that produce a record low of the digest of the SHA2-256 hash of the empty string.

The programs for A366061, there is no canonical definition to state claims against.
-/

/-! ## A366061.P10848504961885051389

`A281230(A005804(n+1))-A281205(2*(n+1))`
-/

namespace A366061.P10848504961885051389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281230 (A005804 (n + 1)).toNat - A281205 (2 * (n + 1))

end

end A366061.P10848504961885051389

/-!
# A366063: Irregular triangle read by rows: T(n,k) is the number of partitions of n that have depth k.

The programs for A366063, there is no canonical definition to state claims against.
-/

/-! ## A366063.P15345475898453340604

`A353846(lt[A010054(n), A353859(n)])`
-/

namespace A366063.P15345475898453340604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A366063.P15345475898453340604

/-! ## A366063.P12574768331514156236

`A353846(lt[A019590(n+1), A353859(n)])`
-/

namespace A366063.P12574768331514156236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A366063.P12574768331514156236

/-! ## A366063.P17904594078715369094

`A353846(lt[A353846(n+1), A353859(n)])`
-/

namespace A366063.P17904594078715369094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A366063.P17904594078715369094

/-!
# A366064: Record values of A366091.

The programs for A366064, there is no canonical definition to state claims against.
-/

/-! ## A366064.P11875664132604264463

`A366091(A366065(n+1))`
-/

namespace A366064.P11875664132604264463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366091 (A366065 (n + 1)).toNat

end

end A366064.P11875664132604264463

/-! ## A366064.P6966322181569029870

`record[A366091(3*n)]`
-/

namespace A366064.P6966322181569029870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366091 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366064.P6966322181569029870

/-!
# A366066: a(n) is the largest positive integer k such that n can be expressed as the sum of k distinct positive integers that are coprime to each other.

The programs for A366066, there is no canonical definition to state claims against.
-/

/-! ## A366066.P16904391773411162633

`A326746(A205598(n))`
-/

namespace A366066.P16904391773411162633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A205598 n).toNat

end

end A366066.P16904391773411162633

/-! ## A366066.P15109665640890200908

`A033265(∑{e}[2*a(n-1), A065609(#)])` with `a(0)=2`
-/

namespace A366066.P15109665640890200908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (∑ p ∈ Nat.primeFactors (f1 n), A065609 (Nat.factorization (f1 n) p)).toNat

end

end A366066.P15109665640890200908

/-! ## A366066.P260151143035751710

`A000120(∑{e}[2*a(n-1), A065609(#)]-1)` with `a(0)=2`
-/

namespace A366066.P260151143035751710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ p ∈ Nat.primeFactors (f1 n), A065609 (Nat.factorization (f1 n) p) - 1).toNat

end

end A366066.P260151143035751710

/-! ## A366066.P459538826404925405

`A112310(A335467(n+1)%A335457(n+2))`
-/

namespace A366066.P459538826404925405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (Int.tmod (A335467 (n + 1)) (A335457 (n + 2))).toNat

end

end A366066.P459538826404925405

/-! ## A366066.P10331126969484916109

`A112310(lt[A072851(n+2), A141614(3*(n+1))])`
-/

namespace A366066.P10331126969484916109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072851 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141614 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A366066.P10331126969484916109

/-!
# A366069: The number of lit cells in weakly increasing partitions of n when light shines from the northwest. Here partitions are represented from left to right by columns of cells.

The programs for A366069, there is no canonical definition to state claims against.
-/

/-! ## A366069.P10787179976638266097

`A211978(n+1)-A000070(n)`
-/

namespace A366069.P10787179976638266097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211978 (n + 1) - A000070 n

end

end A366069.P10787179976638266097

/-! ## A366069.P16408723332160720699

`A211978(n+1)-∑[A000041(n)]`
-/

namespace A366069.P16408723332160720699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211978 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366069.P16408723332160720699

/-! ## A366069.P6718731852547566336

`∑[A233968(n+1)-A000041(n)]`
-/

namespace A366069.P6718731852547566336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233968 (n + 1) - A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366069.P6718731852547566336

/-! ## A366069.P6655341333697226480

`A096541(n+1)+A006128(n+1)`
-/

namespace A366069.P6655341333697226480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 (n + 1) + A006128 (n + 1)

end

end A366069.P6655341333697226480

/-! ## A366069.P8372199843227295370

`∑[A233968(n+1)-∑[A002865(n)]]`
-/

namespace A366069.P8372199843227295370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233968 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366069.P8372199843227295370

/-!
# A366070: Expansion of (1/x) * Series_Reversion( x*(1+x-x^2)/(1+x)^5 ).

The programs for A366070, the canonical program `A366070.P4892701641852336257` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366070 has offset 0).

The definition of A366070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366070.P4892701641852336257

`1/(n+1)*∑{#}[floor(n/2), C(n+#, #)*C(4*n-#+4, n-2*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366070

/-- `1/(n+1)*∑{#}[floor(n/2), C(n+#, #)*C(4*n-#+4, n-2*#)]` -/
def P4892701641852336257.Spec : Prop :=
  ∀ n, P4892701641852336257.a n = (A366070 n : ℚ)

end A366070

/-!
# A366073: The number of composite "Fermi-Dirac primes" (A082522) dividing n.

The programs for A366073, the canonical program `A366073.P5691353184812918535` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366073 has offset 1).

The definition of A366073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366073.P5691353184812918535

`∑{e}[n+1, floor(log2(#))]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366073

/-- `∑{e}[n+1, floor(log2(#))]` -/
def P5691353184812918535.Spec : Prop :=
  ∀ n, (P5691353184812918535.a n : ℤ) = A366073 (n + 1)

theorem P5691353184812918535.correct : P5691353184812918535.Spec := by
  intro n
  simp only [A366073, Nat.add_sub_cancel]

end A366073

/-! ## A366073.P6019428129523753723

`ceil(log2(∏{e}[n+1, floor(#/2)+1]))`
-/

namespace A366073.P6019428129523753723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1) : ℤ) : ℝ)⌉

end

end A366073.P6019428129523753723

namespace A366073

/-- `ceil(log2(∏{e}[n+1, floor(#/2)+1]))` -/
def P6019428129523753723.Spec : Prop :=
  ∀ n, P6019428129523753723.a n = A366073 (n + 1)

end A366073

/-! ## A366073.P17278716209814236388

`ceil(log2(A046951(n+1)))`
-/

namespace A366073.P17278716209814236388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A046951 (n + 1) : ℝ)⌉

end

end A366073.P17278716209814236388

namespace A366073

/-- `ceil(log2(A046951(n+1)))` -/
def P17278716209814236388.Spec : Prop :=
  ∀ n, P17278716209814236388.a n = A366073 (n + 1)

end A366073

/-! ## A366073.P14264391080942699559

`A382290(n+1)+A372332(n+1)`
-/

namespace A366073.P14264391080942699559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382290 (n + 1) + A372332 (n + 1)

end

end A366073.P14264391080942699559

namespace A366073

/-- `A382290(n+1)+A372332(n+1)` -/
def P14264391080942699559.Spec : Prop :=
  ∀ n, P14264391080942699559.a n = A366073 (n + 1)

end A366073

/-! ## A366073.P14124484930011829863

`A372502(n+1)-A001221(n+1)`
-/

namespace A366073.P14124484930011829863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372502 (n + 1) - A001221 (n + 1)

end

end A366073.P14124484930011829863

namespace A366073

/-- `A372502(n+1)-A001221(n+1)` -/
def P14124484930011829863.Spec : Prop :=
  ∀ n, P14124484930011829863.a n = A366073 (n + 1)

end A366073

/-! ## A366073.P16820720186322114388

`A382290(A372329(n+1))`
-/

namespace A366073.P16820720186322114388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382290 (A372329 (n + 1)).toNat

end

end A366073.P16820720186322114388

namespace A366073

/-- `A382290(A372329(n+1))` -/
def P16820720186322114388.Spec : Prop :=
  ∀ n, P16820720186322114388.a n = A366073 (n + 1)

end A366073

/-! ## A366073.P11149904989776359673

`A037810(A344067(∏{e}[n+1, floor(#/2)+1]))`
-/

namespace A366073.P11149904989776359673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037810 (A344067 (∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1)).toNat).toNat

end

end A366073.P11149904989776359673

namespace A366073

/-- `A037810(A344067(∏{e}[n+1, floor(#/2)+1]))` -/
def P11149904989776359673.Spec : Prop :=
  ∀ n, P11149904989776359673.a n = A366073 (n + 1)

end A366073

/-! ## A366073.P17617475227200083697

`A019269(A256690(n+1))`
-/

namespace A366073.P17617475227200083697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019269 (A256690 (n + 1)).toNat

end

end A366073.P17617475227200083697

namespace A366073

/-- `A019269(A256690(n+1))` -/
def P17617475227200083697.Spec : Prop :=
  ∀ n, P17617475227200083697.a n = A366073 (n + 1)

end A366073

/-! ## A366073.P227763778511976308

`log2(A072911((n+1)²))`
-/

namespace A366073.P227763778511976308
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A072911 ((n + 1) ^ 2) : ℝ)

end

end A366073.P227763778511976308

namespace A366073

/-- `log2(A072911((n+1)²))` -/
def P227763778511976308.Spec : Prop :=
  ∀ n, P227763778511976308.a n = (A366073 (n + 1) : ℝ)

end A366073

/-! ## A366073.P9983592016442791827

`A258595(A125071((n+1)²))`
-/

namespace A366073.P9983592016442791827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258595 (A125071 ((n + 1) ^ 2)).toNat

end

end A366073.P9983592016442791827

namespace A366073

/-- `A258595(A125071((n+1)²))` -/
def P9983592016442791827.Spec : Prop :=
  ∀ n, P9983592016442791827.a n = A366073 (n + 1)

end A366073

/-! ## A366073.P10538564744513313782

`A384422(A072911((n+1)²)²)`
-/

namespace A366073.P10538564744513313782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384422 (A072911 ((n + 1) ^ 2) ^ 2).toNat

end

end A366073.P10538564744513313782

namespace A366073

/-- `A384422(A072911((n+1)²)²)` -/
def P10538564744513313782.Spec : Prop :=
  ∀ n, P10538564744513313782.a n = A366073 (n + 1)

end A366073

/-!
# A366074: The number of "Fermi-Dirac primes" (A050376) that are unitary divisors of n.

The programs for A366074, the canonical program `A366074.P15334897605484074236` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366074 has offset 1).

The definition of A366074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366074.P4163178729456873408

`log2(A385042(n+1))`
-/

namespace A366074.P4163178729456873408
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A385042 (n + 1) : ℝ)

end

end A366074.P4163178729456873408

namespace A366074

/-- `log2(A385042(n+1))` -/
def P4163178729456873408.Spec : Prop :=
  ∀ n, P4163178729456873408.a n = (A366074 (n + 1) : ℝ)

end A366074

/-! ## A366074.P15334897605484074236

`∑{e}[n+1, A209229(#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A366074

/-- `∑{e}[n+1, A209229(#)]` -/
def P15334897605484074236.Spec : Prop :=
  ∀ n, P15334897605484074236.a n = A366074 (n + 1)

theorem P15334897605484074236.correct : P15334897605484074236.Spec := by
  intro n
  simp only [A366074, Nat.add_sub_cancel]

end A366074

/-! ## A366074.P14858254969019631375

`∑{e}[n+1, A036987(#-1)]`
-/

namespace A366074.P14858254969019631375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A036987 (Nat.factorization (f1 n) p - 1)

end

end A366074.P14858254969019631375

namespace A366074

/-- `∑{e}[n+1, A036987(#-1)]` -/
def P14858254969019631375.Spec : Prop :=
  ∀ n, P14858254969019631375.a n = A366074 (n + 1)

end A366074

/-! ## A366074.P5717691054258205591

`A001221(A367168(n+1))`
-/

namespace A366074.P5717691054258205591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A367168 (n + 1)).toNat

end

end A366074.P5717691054258205591

namespace A366074

/-- `A001221(A367168(n+1))` -/
def P5717691054258205591.Spec : Prop :=
  ∀ n, P5717691054258205591.a n = A366074 (n + 1)

end A366074

/-! ## A366074.P2586852681128063

`A056169(A331737(n+1))`
-/

namespace A366074.P2586852681128063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A331737 (n + 1)).toNat

end

end A366074.P2586852681128063

namespace A366074

/-- `A056169(A331737(n+1))` -/
def P2586852681128063.Spec : Prop :=
  ∀ n, P2586852681128063.a n = A366074 (n + 1)

end A366074

/-! ## A366074.P6606101816340940514

`A048105(2*A385042(n+1))`
-/

namespace A366074.P6606101816340940514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (2 * A385042 (n + 1)).toNat

end

end A366074.P6606101816340940514

namespace A366074

/-- `A048105(2*A385042(n+1))` -/
def P6606101816340940514.Spec : Prop :=
  ∀ n, P6606101816340940514.a n = A366074 (n + 1)

end A366074

/-! ## A366074.P13443839739475924500

`A064547((n+1)/A368540(n+1))`
-/

namespace A366074.P13443839739475924500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368540 (n + 1) : ℚ))).toNat

end

end A366074.P13443839739475924500

namespace A366074

/-- `A064547((n+1)/A368540(n+1))` -/
def P13443839739475924500.Spec : Prop :=
  ∀ n, P13443839739475924500.a n = A366074 (n + 1)

end A366074

/-! ## A366074.P8201387970126548749

`A048105(A385042(n+1)+A385042(n+1))`
-/

namespace A366074.P8201387970126548749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A385042 (n + 1) + A385042 (n + 1)).toNat

end

end A366074.P8201387970126548749

namespace A366074

/-- `A048105(A385042(n+1)+A385042(n+1))` -/
def P8201387970126548749.Spec : Prop :=
  ∀ n, P8201387970126548749.a n = A366074 (n + 1)

end A366074

/-! ## A366074.P1257290000926524083

`A064547(n+1)-A064547(A368540(n+1))`
-/

namespace A366074.P1257290000926524083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1) - A064547 (A368540 (n + 1)).toNat

end

end A366074.P1257290000926524083

namespace A366074

/-- `A064547(n+1)-A064547(A368540(n+1))` -/
def P1257290000926524083.Spec : Prop :=
  ∀ n, P1257290000926524083.a n = A366074 (n + 1)

end A366074

/-!
# A366075: The number of primes dividing the smallest coreful infinitary divisor of n, counted with multiplicity.

The programs for A366075, the canonical program `A366075.P11503824623898636842` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366075 has offset 1).

The definition of A366075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366075.P17740562275374970476

`A001222(A365296(n+1))`
-/

namespace A366075.P17740562275374970476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A365296 (n + 1)).toNat

end

end A366075.P17740562275374970476

namespace A366075

/-- `A001222(A365296(n+1))` -/
def P17740562275374970476.Spec : Prop :=
  ∀ n, P17740562275374970476.a n = A366075 (n + 1)

end A366075

/-! ## A366075.P11503824623898636842

`∑{e}[n+1, and(#, -#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366075

/-- `∑{e}[n+1, and(#, -#)]` -/
def P11503824623898636842.Spec : Prop :=
  ∀ n, P11503824623898636842.a n = A366075 (n + 1)

theorem P11503824623898636842.correct : P11503824623898636842.Spec := by
  intro n
  simp only [A366075, Nat.add_sub_cancel]

end A366075

/-! ## A366075.P5624498249283740248

`∑{e}[n+1, 2^val(#, 2)]`
-/

namespace A366075.P5624498249283740248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), 2 ^ SequenceMachineLib.valuation (Nat.factorization (f1 n) p) 2

end

end A366075.P5624498249283740248

namespace A366075

/-- `∑{e}[n+1, 2^val(#, 2)]` -/
def P5624498249283740248.Spec : Prop :=
  ∀ n, (P5624498249283740248.a n : ℤ) = A366075 (n + 1)

end A366075

/-! ## A366075.P14197396960984928336

`∑{e}[n+1, -or(#, -#)]`
-/

namespace A366075.P14197396960984928336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (-Int.lor (Nat.factorization (f1 n) p : ℤ) (-(Nat.factorization (f1 n) p : ℤ)))

end

end A366075.P14197396960984928336

namespace A366075

/-- `∑{e}[n+1, -or(#, -#)]` -/
def P14197396960984928336.Spec : Prop :=
  ∀ n, P14197396960984928336.a n = A366075 (n + 1)

end A366075

/-! ## A366075.P17817035757845505516

`∑{e}[n+1, A003484(#)]`
-/

namespace A366075.P17817035757845505516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A003484 (Nat.factorization (f1 n) p)

end

end A366075.P17817035757845505516

namespace A366075

/-- `∑{e}[n+1, A003484(#)]` -/
def P17817035757845505516.Spec : Prop :=
  ∀ n, P17817035757845505516.a n = A366075 (n + 1)

end A366075

/-! ## A366075.P11746752149705045715

`∑{e}[n+1, A006519(#)]`
-/

namespace A366075.P11746752149705045715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A006519 (Nat.factorization (f1 n) p)

end

end A366075.P11746752149705045715

namespace A366075

/-- `∑{e}[n+1, A006519(#)]` -/
def P11746752149705045715.Spec : Prop :=
  ∀ n, P11746752149705045715.a n = A366075 (n + 1)

end A366075

/-! ## A366075.P15533492722353534804

`∑{e}[n+1, A087258(#)]`
-/

namespace A366075.P15533492722353534804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A087258 (Nat.factorization (f1 n) p)

end

end A366075.P15533492722353534804

namespace A366075

/-- `∑{e}[n+1, A087258(#)]` -/
def P15533492722353534804.Spec : Prop :=
  ∀ n, P15533492722353534804.a n = A366075 (n + 1)

end A366075

/-! ## A366075.P17295887472605332908

`∑{e}[A365296(n+1), #]`
-/

namespace A366075.P17295887472605332908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A366075.P17295887472605332908

namespace A366075

/-- `∑{e}[A365296(n+1), #]` -/
def P17295887472605332908.Spec : Prop :=
  ∀ n, (P17295887472605332908.a n : ℤ) = A366075 (n + 1)

end A366075

/-! ## A366075.P3456801307591158036

`A367169(A365296(2*n+1-n))`
-/

namespace A366075.P3456801307591158036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367169 (A365296 (2 * n + 1 - n)).toNat

end

end A366075.P3456801307591158036

namespace A366075

/-- `A367169(A365296(2*n+1-n))` -/
def P3456801307591158036.Spec : Prop :=
  ∀ n, P3456801307591158036.a n = A366075 (n + 1)

end A366075

/-! ## A366075.P1736187741155654151

`∑{e}[n+1, gcd(#, 2^n)]`
-/

namespace A366075.P1736187741155654151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd (Nat.factorization (f1 n) p) (2 ^ n)

end

end A366075.P1736187741155654151

namespace A366075

/-- `∑{e}[n+1, gcd(#, 2^n)]` -/
def P1736187741155654151.Spec : Prop :=
  ∀ n, (P1736187741155654151.a n : ℤ) = A366075 (n + 1)

end A366075

/-! ## A366075.P14713234473352838560

`A384422(A365296((n+1)²))`
-/

namespace A366075.P14713234473352838560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384422 (A365296 ((n + 1) ^ 2)).toNat

end

end A366075.P14713234473352838560

namespace A366075

/-- `A384422(A365296((n+1)²))` -/
def P14713234473352838560.Spec : Prop :=
  ∀ n, P14713234473352838560.a n = A366075 (n + 1)

end A366075

/-!
# A366076: The number of prime factors of the largest divisor of n that is a cubefull number (A036966), counted with multiplicity.

The programs for A366076, the canonical program `A366076.P7794237320208997332` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366076 has offset 1).

The definition of A366076 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360540, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366076.P7794237320208997332

`A001222(A360540(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A366076

/-- `A001222(A360540(n+1))` -/
def P7794237320208997332.Spec : Prop :=
  ∀ n, P7794237320208997332.a n = A366076 (n + 1)

theorem P7794237320208997332.correct : P7794237320208997332.Spec := by
  intro n
  simp only [A366076, Nat.add_sub_cancel]

end A366076

/-! ## A366076.P15514150553736722204

`A001222(n+1)-A366077(n+1)`
-/

namespace A366076.P15514150553736722204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A366077 (n + 1)

end

end A366076.P15514150553736722204

namespace A366076

/-- `A001222(n+1)-A366077(n+1)` -/
def P15514150553736722204.Spec : Prop :=
  ∀ n, P15514150553736722204.a n = A366076 (n + 1)

theorem P15514150553736722204.correct : P15514150553736722204.Spec := by
  intro n
  simp only [A366076, Nat.add_sub_cancel, A366076.P15514150553736722204.a, A366076.P7794237320208997332.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A360540, A360540.P10431117392450693366.a, A366077, A366077.P4420565916630601203.a, A360539, A360539.P1925901688017653991.a, A050985, A050985.P12411912326700818488.f1, A050985.P12411912326700818488.a, A058035, A058035.P10512342517571935865.f1, A058035.P10512342517571935865.a, A073185, A073185.P13146702220439815820.a, A210826, A210826.P1982609276010569986.f1, A210826.P1982609276010569986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366076

/-! ## A366076.P16978575630986450030

`∑{e}[n+1, #%#!]`
-/

namespace A366076.P16978575630986450030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p % Nat.factorial (Nat.factorization (f1 n) p)

end

end A366076.P16978575630986450030

namespace A366076

/-- `∑{e}[n+1, #%#!]` -/
def P16978575630986450030.Spec : Prop :=
  ∀ n, (P16978575630986450030.a n : ℤ) = A366076 (n + 1)

end A366076

/-! ## A366076.P10870688737011758781

`∑{e}[A360540(n+1), #]`
-/

namespace A366076.P10870688737011758781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360540 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A366076.P10870688737011758781

namespace A366076

/-- `∑{e}[A360540(n+1), #]` -/
def P10870688737011758781.Spec : Prop :=
  ∀ n, (P10870688737011758781.a n : ℤ) = A366076 (n + 1)

end A366076

/-! ## A366076.P5505646185673785231

`A001222(n+1)-A001222(A360539(n+1))`
-/

namespace A366076.P5505646185673785231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A360539 (n + 1)).toNat

end

end A366076.P5505646185673785231

namespace A366076

/-- `A001222(n+1)-A001222(A360539(n+1))` -/
def P5505646185673785231.Spec : Prop :=
  ∀ n, P5505646185673785231.a n = A366076 (n + 1)

end A366076

/-! ## A366076.P12965395742633859636

`A366145(n+1)-A056671(A001694(n+1))`
-/

namespace A366076.P12965395742633859636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366145 (n + 1) - A056671 (A001694 (n + 1)).toNat

end

end A366076.P12965395742633859636

namespace A366076

/-- `A366145(n+1)-A056671(A001694(n+1))` -/
def P12965395742633859636.Spec : Prop :=
  ∀ n, P12965395742633859636.a n = A366076 (n + 1)

end A366076

/-! ## A366076.P10712592739440905612

`A030494(n+1)%A366145(n+1)`
-/

namespace A366076.P10712592739440905612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A366145 (n + 1))

end

end A366076.P10712592739440905612

namespace A366076

/-- `A030494(n+1)%A366145(n+1)` -/
def P10712592739440905612.Spec : Prop :=
  ∀ n, P10712592739440905612.a n = A366076 (n + 1)

end A366076

/-! ## A366076.P18266815026791372843

`A072828(n+1)%A366145(n+1)`
-/

namespace A366076.P18266815026791372843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A366145 (n + 1))

end

end A366076.P18266815026791372843

namespace A366076

/-- `A072828(n+1)%A366145(n+1)` -/
def P18266815026791372843.Spec : Prop :=
  ∀ n, P18266815026791372843.a n = A366076 (n + 1)

end A366076

/-! ## A366076.P296033565064486705

`A190867(A360540(n+1)²)-A190867(n+1)`
-/

namespace A366076.P296033565064486705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190867 (A360540 (n + 1) ^ 2).toNat - A190867 (n + 1)

end

end A366076.P296033565064486705

namespace A366076

/-- `A190867(A360540(n+1)²)-A190867(n+1)` -/
def P296033565064486705.Spec : Prop :=
  ∀ n, P296033565064486705.a n = A366076 (n + 1)

end A366076

/-! ## A366076.P2163567675294595240

`A198277(n)%A366145(n+1)`
-/

namespace A366076.P2163567675294595240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A366145 (n + 1))

end

end A366076.P2163567675294595240

namespace A366076

/-- `A198277(n)%A366145(n+1)` -/
def P2163567675294595240.Spec : Prop :=
  ∀ n, P2163567675294595240.a n = A366076 (n + 1)

end A366076

/-! ## A366076.P8385872071261349611

`A366145(n+1)-A056671(A064549(n+1))`
-/

namespace A366076.P8385872071261349611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366145 (n + 1) - A056671 (A064549 (n + 1)).toNat

end

end A366076.P8385872071261349611

namespace A366076

/-- `A366145(n+1)-A056671(A064549(n+1))` -/
def P8385872071261349611.Spec : Prop :=
  ∀ n, P8385872071261349611.a n = A366076 (n + 1)

end A366076

/-!
# A366077: The number of prime factors of the cubefree part of n (A360539), counted with multiplicity.

The programs for A366077, the canonical program `A366077.P4420565916630601203` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366077 has offset 1).

The definition of A366077 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366076, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366077.P6793827183298974231

`A001222(A360539(n+1))`
-/

namespace A366077.P6793827183298974231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A360539 (n + 1)).toNat

end

end A366077.P6793827183298974231

namespace A366077

/-- `A001222(A360539(n+1))` -/
def P6793827183298974231.Spec : Prop :=
  ∀ n, P6793827183298974231.a n = A366077 (n + 1)

end A366077

/-! ## A366077.P4420565916630601203

`A001222(n+1)-A366076(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A366077

/-- `A001222(n+1)-A366076(n+1)` -/
def P4420565916630601203.Spec : Prop :=
  ∀ n, P4420565916630601203.a n = A366077 (n + 1)

theorem P4420565916630601203.correct : P4420565916630601203.Spec := by
  intro n
  simp only [A366077, Nat.add_sub_cancel]

end A366077

/-! ## A366077.P15680700363736847162

`∑{e}[n+1, #!%3]`
-/

namespace A366077.P15680700363736847162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) % 3

end

end A366077.P15680700363736847162

namespace A366077

/-- `∑{e}[n+1, #!%3]` -/
def P15680700363736847162.Spec : Prop :=
  ∀ n, (P15680700363736847162.a n : ℤ) = A366077 (n + 1)

end A366077

/-! ## A366077.P16883402493366278887

`∑{e}[n+1, C(2, C(#, 2))]`
-/

namespace A366077.P16883402493366278887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 (Nat.choose (Nat.factorization (f1 n) p) 2)

end

end A366077.P16883402493366278887

namespace A366077

/-- `∑{e}[n+1, C(2, C(#, 2))]` -/
def P16883402493366278887.Spec : Prop :=
  ∀ n, (P16883402493366278887.a n : ℤ) = A366077 (n + 1)

end A366077

/-! ## A366077.P15366453452879115966

`∑{e}[n+1, #*round(1/#)]`
-/

namespace A366077.P15366453452879115966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℤ) * SequenceMachineLib.roundAway (1 / (Nat.factorization (f1 n) p : ℚ))

end

end A366077.P15366453452879115966

namespace A366077

/-- `∑{e}[n+1, #*round(1/#)]` -/
def P15366453452879115966.Spec : Prop :=
  ∀ n, P15366453452879115966.a n = A366077 (n + 1)

end A366077

/-! ## A366077.P11185300860764329163

`A003313(A366147(n+1))`
-/

namespace A366077.P11185300860764329163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A366147 (n + 1)).toNat

end

end A366077.P11185300860764329163

namespace A366077

/-- `A003313(A366147(n+1))` -/
def P11185300860764329163.Spec : Prop :=
  ∀ n, P11185300860764329163.a n = A366077 (n + 1)

end A366077

/-! ## A366077.P10004763882284633454

`A367169(A058035(n+1))`
-/

namespace A366077.P10004763882284633454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367169 (A058035 (n + 1)).toNat

end

end A366077.P10004763882284633454

namespace A366077

/-- `A367169(A058035(n+1))` -/
def P10004763882284633454.Spec : Prop :=
  ∀ n, P10004763882284633454.a n = A366077 (n + 1)

end A366077

/-! ## A366077.P6888699045695644239

`A125030(A367168(n+1))`
-/

namespace A366077.P6888699045695644239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125030 (A367168 (n + 1)).toNat

end

end A366077.P6888699045695644239

namespace A366077

/-- `A125030(A367168(n+1))` -/
def P6888699045695644239.Spec : Prop :=
  ∀ n, P6888699045695644239.a n = A366077 (n + 1)

end A366077

/-! ## A366077.P13159020560841052024

`A367169(A365683(n+1))`
-/

namespace A366077.P13159020560841052024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367169 (A365683 (n + 1)).toNat

end

end A366077.P13159020560841052024

namespace A366077

/-- `A367169(A365683(n+1))` -/
def P13159020560841052024.Spec : Prop :=
  ∀ n, P13159020560841052024.a n = A366077 (n + 1)

end A366077

/-! ## A366077.P10019062051090403240

`A367169(A366994(n+1))`
-/

namespace A366077.P10019062051090403240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367169 (A366994 (n + 1)).toNat

end

end A366077.P10019062051090403240

namespace A366077

/-- `A367169(A366994(n+1))` -/
def P10019062051090403240.Spec : Prop :=
  ∀ n, P10019062051090403240.a n = A366077 (n + 1)

end A366077

/-! ## A366077.P7093319673951094097

`A367169(A383764(n+1))`
-/

namespace A366077.P7093319673951094097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367169 (A383764 (n + 1)).toNat

end

end A366077.P7093319673951094097

namespace A366077

/-- `A367169(A383764(n+1))` -/
def P7093319673951094097.Spec : Prop :=
  ∀ n, P7093319673951094097.a n = A366077 (n + 1)

end A366077

/-! ## A366077.P15862866761193374751

`A367169(A385007(n+1))`
-/

namespace A366077.P15862866761193374751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367169 (A385007 (n + 1)).toNat

end

end A366077.P15862866761193374751

namespace A366077

/-- `A367169(A385007(n+1))` -/
def P15862866761193374751.Spec : Prop :=
  ∀ n, P15862866761193374751.a n = A366077 (n + 1)

end A366077

/-! ## A366077.P4541836626097244966

`A369427(n+1)+A366078(n+1)`
-/

namespace A366077.P4541836626097244966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369427 (n + 1) + A366078 (n + 1)

end

end A366077.P4541836626097244966

namespace A366077

/-- `A369427(n+1)+A366078(n+1)` -/
def P4541836626097244966.Spec : Prop :=
  ∀ n, P4541836626097244966.a n = A366077 (n + 1)

end A366077

/-! ## A366077.P18444525577576465894

`A056169(n+1)+2*A369427(n+1)`
-/

namespace A366077.P18444525577576465894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) + 2 * A369427 (n + 1)

end

end A366077.P18444525577576465894

namespace A366077

/-- `A056169(n+1)+2*A369427(n+1)` -/
def P18444525577576465894.Spec : Prop :=
  ∀ n, P18444525577576465894.a n = A366077 (n + 1)

end A366077

/-! ## A366077.P12212638032986550419

`2*A366078(n+1)-A056169(n+1)`
-/

namespace A366077.P12212638032986550419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A366078 (n + 1) - A056169 (n + 1)

end

end A366077.P12212638032986550419

namespace A366077

/-- `2*A366078(n+1)-A056169(n+1)` -/
def P12212638032986550419.Spec : Prop :=
  ∀ n, P12212638032986550419.a n = A366077 (n + 1)

end A366077

/-! ## A366077.P17121133742029676186

`A238949(n+1)-2*A295659(n+1)`
-/

namespace A366077.P17121133742029676186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (n + 1) - 2 * A295659 (n + 1)

end

end A366077.P17121133742029676186

namespace A366077

/-- `A238949(n+1)-2*A295659(n+1)` -/
def P17121133742029676186.Spec : Prop :=
  ∀ n, P17121133742029676186.a n = A366077 (n + 1)

end A366077

/-! ## A366077.P9392491452074256375

`A001222(n+1)-A001222(A360540(n+1))`
-/

namespace A366077.P9392491452074256375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A360540 (n + 1)).toNat

end

end A366077.P9392491452074256375

namespace A366077

/-- `A001222(n+1)-A001222(A360540(n+1))` -/
def P9392491452074256375.Spec : Prop :=
  ∀ n, P9392491452074256375.a n = A366077 (n + 1)

end A366077

/-! ## A366077.P14013555938317940890

`A001222(A385007((n+1)/A366126(n+1)))`
-/

namespace A366077.P14013555938317940890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A385007 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A366126 (n + 1) : ℚ))).toNat).toNat

end

end A366077.P14013555938317940890

namespace A366077

/-- `A001222(A385007((n+1)/A366126(n+1)))` -/
def P14013555938317940890.Spec : Prop :=
  ∀ n, P14013555938317940890.a n = A366077 (n + 1)

end A366077

/-! ## A366077.P933872981613698691

`A001222(A385007((n+1)/A368167(n+1)))`
-/

namespace A366077.P933872981613698691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A385007 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368167 (n + 1) : ℚ))).toNat).toNat

end

end A366077.P933872981613698691

namespace A366077

/-- `A001222(A385007((n+1)/A368167(n+1)))` -/
def P933872981613698691.Spec : Prop :=
  ∀ n, P933872981613698691.a n = A366077 (n + 1)

end A366077

/-! ## A366077.P15977784688751411083

`A367169(A365684(n+1))`
-/

namespace A366077.P15977784688751411083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367169 (A365684 (n + 1)).toNat

end

end A366077.P15977784688751411083

namespace A366077

/-- `A367169(A365684(n+1))` -/
def P15977784688751411083.Spec : Prop :=
  ∀ n, P15977784688751411083.a n = A366077 (n + 1)

end A366077

/-!
# A366078: The number of distinct prime factors of the cubefree part of n (A360539).

The programs for A366078, the canonical program `A366078.P11404734746980857531` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366078 has offset 1).

The definition of A366078 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295659, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366078.P4080014251652721631

`A001221(A360539(n+1))`
-/

namespace A366078.P4080014251652721631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A360539 (n + 1)).toNat

end

end A366078.P4080014251652721631

namespace A366078

/-- `A001221(A360539(n+1))` -/
def P4080014251652721631.Spec : Prop :=
  ∀ n, P4080014251652721631.a n = A366078 (n + 1)

end A366078

/-! ## A366078.P11404734746980857531

`A001221(n+1)-A295659(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A366078

/-- `A001221(n+1)-A295659(n+1)` -/
def P11404734746980857531.Spec : Prop :=
  ∀ n, P11404734746980857531.a n = A366078 (n + 1)

theorem P11404734746980857531.correct : P11404734746980857531.Spec := by
  intro n
  simp only [A366078, Nat.add_sub_cancel]

end A366078

/-! ## A366078.P8542734442511383320

`∑{e}[n+1, round(1/#)]`
-/

namespace A366078.P8542734442511383320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f1 n) p : ℚ))

end

end A366078.P8542734442511383320

namespace A366078

/-- `∑{e}[n+1, round(1/#)]` -/
def P8542734442511383320.Spec : Prop :=
  ∀ n, P8542734442511383320.a n = A366078 (n + 1)

end A366078

/-! ## A366078.P8936568833805442558

`log2(∏{e}[n+1, round(exp(acot(#)))])`
-/

namespace A366078.P8936568833805442558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.exp (SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ))) : ℤ) : ℝ)

end

end A366078.P8936568833805442558

namespace A366078

/-- `log2(∏{e}[n+1, round(exp(acot(#)))])` -/
def P8936568833805442558.Spec : Prop :=
  ∀ n, P8936568833805442558.a n = (A366078 (n + 1) : ℝ)

end A366078

/-! ## A366078.P16415069871967082672

`∑{e}[n+1, C(5, #²)]/5`
-/

namespace A366078.P16415069871967082672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose 5 (Nat.factorization (f1 n) p ^ 2) : ℕ) : ℚ) / 5

end

end A366078.P16415069871967082672

namespace A366078

/-- `∑{e}[n+1, C(5, #²)]/5` -/
def P16415069871967082672.Spec : Prop :=
  ∀ n, P16415069871967082672.a n = (A366078 (n + 1) : ℚ)

end A366078

/-! ## A366078.P1786672966713569438

`floor(∑{e}[n+1, #^(2-#)])`
-/

namespace A366078.P1786672966713569438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) ^ (2 - (Nat.factorization (f1 n) p : ℤ) : ℤ)⌋

end

end A366078.P1786672966713569438

namespace A366078

/-- `floor(∑{e}[n+1, #^(2-#)])` -/
def P1786672966713569438.Spec : Prop :=
  ∀ n, P1786672966713569438.a n = A366078 (n + 1)

end A366078

/-! ## A366078.P16486704700305863931

`log2(A365498(n+1))`
-/

namespace A366078.P16486704700305863931
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A365498 (n + 1) : ℝ)

end

end A366078.P16486704700305863931

namespace A366078

/-- `log2(A365498(n+1))` -/
def P16486704700305863931.Spec : Prop :=
  ∀ n, P16486704700305863931.a n = (A366078 (n + 1) : ℝ)

end A366078

/-! ## A366078.P3547883129211269392

`val(A061389(n+1), 2)`
-/

namespace A366078.P3547883129211269392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061389 (n + 1)).toNat 2

end

end A366078.P3547883129211269392

namespace A366078

/-- `val(A061389(n+1), 2)` -/
def P3547883129211269392.Spec : Prop :=
  ∀ n, (P3547883129211269392.a n : ℤ) = A366078 (n + 1)

end A366078

/-! ## A366078.P1543998721402147203

`val(A380922(n+1), 2)`
-/

namespace A366078.P1543998721402147203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A380922 (n + 1)).toNat 2

end

end A366078.P1543998721402147203

namespace A366078

/-- `val(A380922(n+1), 2)` -/
def P1543998721402147203.Spec : Prop :=
  ∀ n, (P1543998721402147203.a n : ℤ) = A366078 (n + 1)

end A366078

/-! ## A366078.P1415466837359271657

`A007814(A061389(n+1))`
-/

namespace A366078.P1415466837359271657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A061389 (n + 1)).toNat

end

end A366078.P1415466837359271657

namespace A366078

/-- `A007814(A061389(n+1))` -/
def P1415466837359271657.Spec : Prop :=
  ∀ n, P1415466837359271657.a n = A366078 (n + 1)

end A366078

/-! ## A366078.P16723735249953200795

`A056169(A019554(n+1))`
-/

namespace A366078.P16723735249953200795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A019554 (n + 1)).toNat

end

end A366078.P16723735249953200795

namespace A366078

/-- `A056169(A019554(n+1))` -/
def P16723735249953200795.Spec : Prop :=
  ∀ n, P16723735249953200795.a n = A366078 (n + 1)

end A366078

/-! ## A366078.P7185370352865130620

`A169611(A181819(n+1))`
-/

namespace A366078.P7185370352865130620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A181819 (n + 1)).toNat

end

end A366078.P7185370352865130620

namespace A366078

/-- `A169611(A181819(n+1))` -/
def P7185370352865130620.Spec : Prop :=
  ∀ n, P7185370352865130620.a n = A366078 (n + 1)

end A366078

/-! ## A366078.P694875595625296067

`A293439(A058035(n+1))`
-/

namespace A366078.P694875595625296067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293439 (A058035 (n + 1)).toNat

end

end A366078.P694875595625296067

namespace A366078

/-- `A293439(A058035(n+1))` -/
def P694875595625296067.Spec : Prop :=
  ∀ n, P694875595625296067.a n = A366078 (n + 1)

end A366078

/-! ## A366078.P7693057729935132522

`A001222(A366147(n+1))`
-/

namespace A366078.P7693057729935132522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A366147 (n + 1)).toNat

end

end A366078.P7693057729935132522

namespace A366078

/-- `A001222(A366147(n+1))` -/
def P7693057729935132522.Spec : Prop :=
  ∀ n, P7693057729935132522.a n = A366078 (n + 1)

end A366078

/-! ## A366078.P11926995940206641225

`A007814(A380922(n+1))`
-/

namespace A366078.P11926995940206641225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A380922 (n + 1)).toNat

end

end A366078.P11926995940206641225

namespace A366078

/-- `A007814(A380922(n+1))` -/
def P11926995940206641225.Spec : Prop :=
  ∀ n, P11926995940206641225.a n = A366078 (n + 1)

end A366078

/-! ## A366078.P2070403472855588516

`A056169(A350390(n+1))`
-/

namespace A366078.P2070403472855588516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A350390 (n + 1)).toNat

end

end A366078.P2070403472855588516

namespace A366078

/-- `A056169(A350390(n+1))` -/
def P2070403472855588516.Spec : Prop :=
  ∀ n, P2070403472855588516.a n = A366078 (n + 1)

end A366078

/-! ## A366078.P4516776559383282355

`A056169(A355263(n+1))`
-/

namespace A366078.P4516776559383282355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A355263 (n + 1)).toNat

end

end A366078.P4516776559383282355

namespace A366078

/-- `A056169(A355263(n+1))` -/
def P4516776559383282355.Spec : Prop :=
  ∀ n, P4516776559383282355.a n = A366078 (n + 1)

end A366078

/-! ## A366078.P12653765419404454517

`A056169(A366765(n+1))`
-/

namespace A366078.P12653765419404454517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A366765 (n + 1)).toNat

end

end A366078.P12653765419404454517

namespace A366078

/-- `A056169(A366765(n+1))` -/
def P12653765419404454517.Spec : Prop :=
  ∀ n, P12653765419404454517.a n = A366078 (n + 1)

end A366078

/-! ## A366078.P11106126023327374654

`A056169(A372379(n+1))`
-/

namespace A366078.P11106126023327374654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A372379 (n + 1)).toNat

end

end A366078.P11106126023327374654

namespace A366078

/-- `A056169(A372379(n+1))` -/
def P11106126023327374654.Spec : Prop :=
  ∀ n, P11106126023327374654.a n = A366078 (n + 1)

end A366078

/-! ## A366078.P8784612780676433712

`A125029(A367168(n+1))`
-/

namespace A366078.P8784612780676433712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125029 (A367168 (n + 1)).toNat

end

end A366078.P8784612780676433712

namespace A366078

/-- `A125029(A367168(n+1))` -/
def P8784612780676433712.Spec : Prop :=
  ∀ n, P8784612780676433712.a n = A366078 (n + 1)

end A366078

/-!
# A366080: Numbers that give a perfect power when added to their reverse.

The programs for A366080, there is no canonical definition to state claims against.
-/

/-! ## A366080.P6123185399540355311

`A061230(n+1)+A000122(A001333(n))`
-/

namespace A366080.P6123185399540355311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061230 (n + 1) + A000122 (A001333 n).toNat

end

end A366080.P6123185399540355311

/-! ## A366080.P7619092276577066646

`A061230(n+1)+A000122(A279197(n+1))`
-/

namespace A366080.P7619092276577066646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061230 (n + 1) + A000122 (A279197 (n + 1)).toNat

end

end A366080.P7619092276577066646

/-! ## A366080.P17377863817991327769

`A061230(n+1)+A000122(A000804(n))`
-/

namespace A366080.P17377863817991327769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061230 (n + 1) + A000122 (A000804 n).toNat

end

end A366080.P17377863817991327769

/-! ## A366080.P15942940728501538290

`A061230(n+1)+A000122(A003418(n))`
-/

namespace A366080.P15942940728501538290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061230 (n + 1) + A000122 (A003418 n).toNat

end

end A366080.P15942940728501538290

/-! ## A366080.P4250402654658684854

`A061230(n+1)+A000122(A086581(n))`
-/

namespace A366080.P4250402654658684854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061230 (n + 1) + A000122 (A086581 n).toNat

end

end A366080.P4250402654658684854

/-!
# A366082: Expansion of (1/x) * Series_Reversion( x*(1-x)^3/(1-x-x^2) ).

The programs for A366082, there is no canonical definition to state claims against.
-/

/-! ## A366082.P8279831243821932045

`A008615(∑[A001045(2*(n+1))+n+2]+1)`
-/

namespace A366082.P8279831243821932045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * (n + 1)) + (n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A366082.P8279831243821932045

/-! ## A366082.P16840485483836756091

`A123087(A250122(n)+A160156(n))`
-/

namespace A366082.P16840485483836756091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (A250122 n + A160156 n).toNat

end

end A366082.P16840485483836756091

/-! ## A366082.P8373196204814534721

`A276797(A279785(n+2)+A000302(n))`
-/

namespace A366082.P8373196204814534721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A279785 (n + 2) + A000302 n).toNat

end

end A366082.P8373196204814534721

/-!
# A366083: Expansion of (1/x) * Series_Reversion( x*(1-x)^4/(1-x-x^2) ).

The programs for A366083, there is no canonical definition to state claims against.
-/

/-! ## A366083.P3113818239330842694

`A239467(A270413(n+1))`
-/

namespace A366083.P3113818239330842694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239467 (A270413 (n + 1)).toNat

end

end A366083.P3113818239330842694

/-!
# A366084: Expansion of (1/x) * Series_Reversion( x*(1-x)^3/(1-x-x^3) ).

The programs for A366084, there is no canonical definition to state claims against.
-/

/-! ## A366084.P4666113337707104048

`A368935(n)-A044940(A007613(n))`
-/

namespace A366084.P4666113337707104048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368935 n - A044940 (A007613 n).toNat

end

end A366084.P4666113337707104048

/-! ## A366084.P4880986717288952540

`A368935(n)-A184974(A000045(n))`
-/

namespace A366084.P4880986717288952540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368935 n - A184974 (A000045 n).toNat

end

end A366084.P4880986717288952540

/-! ## A366084.P4737799837418361760

`A368935(n)-A037911(A305304(n))`
-/

namespace A366084.P4737799837418361760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368935 n - A037911 (A305304 n).toNat

end

end A366084.P4737799837418361760

/-!
# A366085: Expansion of (1/x) * Series_Reversion( x*(1-x)^4/(1-x-x^3) ).

The programs for A366085, there is no canonical definition to state claims against.
-/

/-! ## A366085.P8903206841032120974

`A248610(A078944(n))+n`
-/

namespace A366085.P8903206841032120974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248610 (A078944 n).toNat + (n : ℤ)

end

end A366085.P8903206841032120974

/-!
# A366088: Expansion of (1/x) * Series_Reversion( x*(1-x)^2/(1-x-x^4) ).

The programs for A366088, there is no canonical definition to state claims against.
-/

/-! ## A366088.P4811868990211656042

`A370841(n)-A324424(A246080(n+1))`
-/

namespace A366088.P4811868990211656042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370841 n - A324424 (A246080 (n + 1)).toNat

end

end A366088.P4811868990211656042

/-! ## A366088.P3067108938617855616

`A370841(A004881(n+1))`
-/

namespace A366088.P3067108938617855616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370841 (A004881 (n + 1)).toNat

end

end A366088.P3067108938617855616

/-! ## A366088.P4498362058655453153

`A370841(A004892(n+1))`
-/

namespace A366088.P4498362058655453153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370841 (A004892 (n + 1)).toNat

end

end A366088.P4498362058655453153

/-! ## A366088.P3371819970335669544

`A370841(A004903(n+1))`
-/

namespace A366088.P3371819970335669544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370841 (A004903 (n + 1)).toNat

end

end A366088.P3371819970335669544

/-! ## A366088.P1823600849975864808

`A370841(A004914(n+1))`
-/

namespace A366088.P1823600849975864808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370841 (A004914 (n + 1)).toNat

end

end A366088.P1823600849975864808

/-!
# A366089: Expansion of (1/x) * Series_Reversion( x*(1-x)^3/(1-x-x^4) ).

The programs for A366089, there is no canonical definition to state claims against.
-/

/-! ## A366089.P16120378794629441563

`A368936(n)-A037911(A279560(n))`
-/

namespace A366089.P16120378794629441563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368936 n - A037911 (A279560 n).toNat

end

end A366089.P16120378794629441563

/-! ## A366089.P3808988444481902548

`A368936(n)-A368990(A368954(n))`
-/

namespace A366089.P3808988444481902548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368936 n - A368990 (A368954 n).toNat

end

end A366089.P3808988444481902548

/-! ## A366089.P12957278639841923673

`A368936(n)-A025441(A334700(3*n+2))`
-/

namespace A366089.P12957278639841923673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368936 n - A025441 (A334700 (3 * n + 2)).toNat

end

end A366089.P12957278639841923673

/-! ## A366089.P5381767526809114566

`A368936(n)+A115717(A054035(2*n+5))`
-/

namespace A366089.P5381767526809114566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368936 n + A115717 (A054035 (2 * n + 5)).toNat

end

end A366089.P5381767526809114566

/-!
# A366090: Expansion of (1/x) * Series_Reversion( x*(1-x)^4/(1-x-x^4) ).

The programs for A366090, there is no canonical definition to state claims against.
-/

/-! ## A366090.P876081321756975317

`A004442(A371435(n))+1`
-/

namespace A366090.P876081321756975317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A371435 n).toNat + 1

end

end A366090.P876081321756975317

/-! ## A366090.P16839058590006732461

`A371435(n)+A033665(A007489(n))`
-/

namespace A366090.P16839058590006732461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371435 n + A033665 (A007489 n).toNat

end

end A366090.P16839058590006732461

/-!
# A366091: a(n) is the number of ways to write n = i^2 + 2*j^2 + 3*k^2 with i,j,k >= 0.

The programs for A366091, there is no canonical definition to state claims against.
-/

/-! ## A366091.P7394144913050631768

`A165579(A107460(3*n+10)+A105769(n+1))`
-/

namespace A366091.P7394144913050631768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165579 (A107460 (3 * n + 10) + A105769 (n + 1)).toNat

end

end A366091.P7394144913050631768

/-!
# A366092: Distance from the sum of the first n primes to the nearest prime.

The programs for A366092, the canonical program `A366092.P5607048064636038311` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366092 has offset 0).

The definition of A366092 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051699, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366092.P853214979090628494

`abs(A007504(n)-A366094(n))`
-/

namespace A366092.P853214979090628494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007504 n - A366094 n|

end

end A366092.P853214979090628494

namespace A366092

/-- `abs(A007504(n)-A366094(n))` -/
def P853214979090628494.Spec : Prop :=
  ∀ n, P853214979090628494.a n = A366092 n

end A366092

/-! ## A366092.P5607048064636038311

`A051699(A007504(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A366092

/-- `A051699(A007504(n))` -/
def P5607048064636038311.Spec : Prop :=
  ∀ n, P5607048064636038311.a n = A366092 n

theorem P5607048064636038311.correct : P5607048064636038311.Spec := by
  intro n
  simp only [A366092]

end A366092

/-! ## A366092.P9932824332203005409

`A051699(∑[A182986(n+1)])`
-/

namespace A366092.P9932824332203005409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A366092.P9932824332203005409

namespace A366092

/-- `A051699(∑[A182986(n+1)])` -/
def P9932824332203005409.Spec : Prop :=
  ∀ n, P9932824332203005409.a n = A366092 n

end A366092

/-! ## A366092.P17480769614661900322

`A051699(A175965(n+2)-2)`
-/

namespace A366092.P17480769614661900322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A175965 (n + 2) - 2).toNat

end

end A366092.P17480769614661900322

namespace A366092

/-- `A051699(A175965(n+2)-2)` -/
def P17480769614661900322.Spec : Prop :=
  ∀ n, P17480769614661900322.a n = A366092 n

end A366092

/-! ## A366092.P13434624720953286397

`A007920(A007504(n))%A043330(2*n+3)`
-/

namespace A366092.P13434624720953286397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007920 (A007504 n).toNat) (A043330 (2 * n + 3))

end

end A366092.P13434624720953286397

namespace A366092

/-- `A007920(A007504(n))%A043330(2*n+3)` -/
def P13434624720953286397.Spec : Prop :=
  ∀ n, P13434624720953286397.a n = A366092 n

end A366092

/-!
# A366093: Indices of records in A366092.

The programs for A366093, there is no canonical definition to state claims against.
-/

/-! ## A366093.P13169758247062443475

`lt[A008620(A008620(n)), A366092(n)]`
-/

namespace A366093.P13169758247062443475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A008620 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366093.P13169758247062443475

/-!
# A366094: Least prime nearest to the sum of the first n primes.

The programs for A366094, there is no canonical definition to state claims against.
-/

/-! ## A366094.P9419110776651971458

`A051697(A007504(n))`
-/

namespace A366094.P9419110776651971458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A007504 n).toNat

end

end A366094.P9419110776651971458

/-! ## A366094.P12790048491363673074

`A051697(∑[A182986(n+1)])`
-/

namespace A366094.P12790048491363673074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A366094.P12790048491363673074

/-! ## A366094.P10562048425848750338

`A051697(∑[record[A008472(n+1)]])`
-/

namespace A366094.P10562048425848750338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A366094.P10562048425848750338

/-! ## A366094.P13548649487891824209

`A051697(∑[comp[A018252(n+1)]])`
-/

namespace A366094.P13548649487891824209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A366094.P13548649487891824209

/-! ## A366094.P10391998853491374452

`A051697(A166448(n+1)+A001223(n+1))`
-/

namespace A366094.P10391998853491374452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A166448 (n + 1) + A001223 (n + 1)).toNat

end

end A366094.P10391998853491374452

/-! ## A366094.P834657128443854058

`A051697(A166448(n+1)+log2(A218075(n+1)))`
-/

namespace A366094.P834657128443854058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (SequenceMachineLib.roundAway ((A166448 (n + 1) : ℝ) + Real.logb 2 (A218075 (n + 1) : ℝ))).toNat

end

end A366094.P834657128443854058

/-!
# A366095: Expansion of (1/x) * Series_Reversion( x*(1+x-x^3)/(1+x)^2 ).

The programs for A366095, the canonical program `A366095.P5358379231929024777` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366095 has offset 0).

The definition of A366095 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366095.P5358379231929024777

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(n-#+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366095

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(n-#+1, n-3*#)]` -/
def P5358379231929024777.Spec : Prop :=
  ∀ n, P5358379231929024777.a n = (A366095 n : ℚ)

end A366095

/-!
# A366096: Expansion of (1/x) * Series_Reversion( x*(1+x-x^3)/(1+x)^3 ).

The programs for A366096, the canonical program `A366096.P4032815798887849562` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366096 has offset 0).

The definition of A366096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366096.P4032815798887849562

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(2*n-#+2, n-3*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366096

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(2*n-#+2, n-3*#)]` -/
def P4032815798887849562.Spec : Prop :=
  ∀ n, P4032815798887849562.a n = (A366096 n : ℚ)

end A366096

/-! ## A366096.P15681373498643984618

`A003602(∑[A025227(n+2)])`
-/

namespace A366096.P15681373498643984618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025227 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A366096.P15681373498643984618

namespace A366096

/-- `A003602(∑[A025227(n+2)])` -/
def P15681373498643984618.Spec : Prop :=
  ∀ n, P15681373498643984618.a n = A366096 n

end A366096

/-! ## A366096.P12733221460355565437

`A002265(∑[A025227(n+2)]+2)`
-/

namespace A366096.P12733221460355565437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025227 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A366096.P12733221460355565437

namespace A366096

/-- `A002265(∑[A025227(n+2)]+2)` -/
def P12733221460355565437.Spec : Prop :=
  ∀ n, P12733221460355565437.a n = A366096 n

end A366096

/-!
# A366097: Expansion of (1/x) * Series_Reversion( x*(1+x-x^3)/(1+x)^4 ).

The programs for A366097, the canonical program `A366097.P3866255339175780053` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366097 has offset 0).

The definition of A366097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366097.P3866255339175780053

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(3*n-#+3, n-3*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366097

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(3*n-#+3, n-3*#)]` -/
def P3866255339175780053.Spec : Prop :=
  ∀ n, P3866255339175780053.a n = (A366097 n : ℚ)

end A366097

/-! ## A366097.P15627561101183298467

`A369482(n)+A025456(A000584(n))`
-/

namespace A366097.P15627561101183298467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369482 n + A025456 (A000584 n).toNat

end

end A366097.P15627561101183298467

namespace A366097

/-- `A369482(n)+A025456(A000584(n))` -/
def P15627561101183298467.Spec : Prop :=
  ∀ n, P15627561101183298467.a n = A366097 n

end A366097

/-! ## A366097.P6314279721465897023

`A369482(n)+A014376(A051026(n))`
-/

namespace A366097.P6314279721465897023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369482 n + A014376 (A051026 n).toNat

end

end A366097.P6314279721465897023

namespace A366097

/-- `A369482(n)+A014376(A051026(n))` -/
def P6314279721465897023.Spec : Prop :=
  ∀ n, P6314279721465897023.a n = A366097 n

end A366097

/-!
# A366098: Expansion of (1/x) * Series_Reversion( x*(1+x-x^4)/(1+x)^2 ).

The programs for A366098, the canonical program `A366098.P18434190075280587247` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366098 has offset 0).

The definition of A366098 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366098.P18434190075280587247

`1/(n+1)*∑{#}[floor(n/4), C(n+#, #)*C(n-#+1, n-4*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366098

/-- `1/(n+1)*∑{#}[floor(n/4), C(n+#, #)*C(n-#+1, n-4*#)]` -/
def P18434190075280587247.Spec : Prop :=
  ∀ n, P18434190075280587247.a n = (A366098 n : ℚ)

end A366098

/-! ## A366098.P4618151252064493546

`A227035(n)-A185284(A000045(n))`
-/

namespace A366098.P4618151252064493546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227035 n - A185284 (A000045 n).toNat

end

end A366098.P4618151252064493546

namespace A366098

/-- `A227035(n)-A185284(A000045(n))` -/
def P4618151252064493546.Spec : Prop :=
  ∀ n, P4618151252064493546.a n = A366098 n

end A366098

/-! ## A366098.P16908294517710804734

`A227035(n)-A188009(A006414(n))`
-/

namespace A366098.P16908294517710804734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227035 n - A188009 (A006414 n).toNat

end

end A366098.P16908294517710804734

namespace A366098

/-- `A227035(n)-A188009(A006414(n))` -/
def P16908294517710804734.Spec : Prop :=
  ∀ n, P16908294517710804734.a n = A366098 n

end A366098

/-! ## A366098.P9365545367422723426

`A227035(n)-A382425(A000111(n))`
-/

namespace A366098.P9365545367422723426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227035 n - A382425 (A000111 n).toNat

end

end A366098.P9365545367422723426

namespace A366098

/-- `A227035(n)-A382425(A000111(n))` -/
def P9365545367422723426.Spec : Prop :=
  ∀ n, P9365545367422723426.a n = A366098 n

end A366098

/-! ## A366098.P15607487604112830688

`A240328(A247027(n+1))+A227035(n)`
-/

namespace A366098.P15607487604112830688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A247027 (n + 1)).toNat + A227035 n

end

end A366098.P15607487604112830688

namespace A366098

/-- `A240328(A247027(n+1))+A227035(n)` -/
def P15607487604112830688.Spec : Prop :=
  ∀ n, P15607487604112830688.a n = A366098 n

end A366098

/-!
# A366099: Expansion of (1/x) * Series_Reversion( x*(1+x-x^4)/(1+x)^3 ).

The programs for A366099, the canonical program `A366099.P8474224132127146008` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366099 has offset 0).

The definition of A366099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366099.P8474224132127146008

`1/(n+1)*∑{#}[floor(n/4), C(n+#, #)*C(2*n-#+2, n-4*#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A366099

/-- `1/(n+1)*∑{#}[floor(n/4), C(n+#, #)*C(2*n-#+2, n-4*#)]` -/
def P8474224132127146008.Spec : Prop :=
  ∀ n, P8474224132127146008.a n = (A366099 n : ℚ)

end A366099

/-! ## A366099.P9579874871904004780

`A254314(A037442(n+1))`
-/

namespace A366099.P9579874871904004780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254314 (A037442 (n + 1)).toNat

end

end A366099.P9579874871904004780

namespace A366099

/-- `A254314(A037442(n+1))` -/
def P9579874871904004780.Spec : Prop :=
  ∀ n, P9579874871904004780.a n = A366099 n

end A366099

/-! ## A366099.P15270046801045852146

`A254314(A065666(n+1))`
-/

namespace A366099.P15270046801045852146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254314 (A065666 (n + 1)).toNat

end

end A366099.P15270046801045852146

namespace A366099

/-- `A254314(A065666(n+1))` -/
def P15270046801045852146.Spec : Prop :=
  ∀ n, P15270046801045852146.a n = A366099 n

end A366099

