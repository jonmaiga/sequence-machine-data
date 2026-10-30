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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A371800: Number of permutations p of [n] whose fixed points j < n have a larger right neighbor p(j+1) > j.

The programs for A371800, there is no canonical definition to state claims against.
-/

/-! ## A371800.P7147371795795990760

`A019529(A161943(n+1))`
-/

namespace A371800.P7147371795795990760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019529 (A161943 (n + 1)).toNat

end

end A371800.P7147371795795990760

/-! ## A371800.P6992920236819715645

`A059169(A000522(n)+A000211(n))`
-/

namespace A371800.P6992920236819715645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A000522 n + A000211 n).toNat

end

end A371800.P6992920236819715645

/-! ## A371800.P9648279258322042565

`A082964(A005728(n)+A004211(n))`
-/

namespace A371800.P9648279258322042565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082964 (A005728 n + A004211 n).toNat

end

end A371800.P9648279258322042565

/-!
# A371806: Exponents k > 0 of powers of 2 such that the decimal expansion of 2^k contains more than one nonoverlapping 666 substring.

The programs for A371806, there is no canonical definition to state claims against.
-/

/-! ## A371806.P8224358828546240656

`A371808(A233564(n+2)%A323562(n+11))`
-/

namespace A371806.P8224358828546240656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371808 (Int.tmod (A233564 (n + 2)) (A323562 (n + 11))).toNat

end

end A371806.P8224358828546240656

/-!
# A371807: Number of nonoverlapping 666 substrings contained in the decimal expansion of the n-th apocalyptic number.

The programs for A371807, there is no canonical definition to state claims against.
-/

/-! ## A371807.P2065936824645530324

`gcd(A002524(A371809(n+1)), A371840(n))`
-/

namespace A371807.P2065936824645530324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002524 (A371809 (n + 1)).toNat) (A371840 n)

end

end A371807.P2065936824645530324

/-! ## A371807.P9577263621589780495

`A333254(A286387(n)+A271973(n+1))`
-/

namespace A371807.P9577263621589780495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (A286387 n + A271973 (n + 1)).toNat

end

end A371807.P9577263621589780495

/-! ## A371807.P11938558611106562142

`A030598(A008277(n+1)+A005384(n+1))`
-/

namespace A371807.P11938558611106562142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030598 (A008277 (n + 1) + A005384 (n + 1)).toNat

end

end A371807.P11938558611106562142

/-! ## A371807.P272150701276952525

`A333254(A250177(n+3)+A176253(n+3))`
-/

namespace A371807.P272150701276952525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (A250177 (n + 3) + A176253 (n + 3)).toNat

end

end A371807.P272150701276952525

/-! ## A371807.P17642807384050135977

`A053164(A099261(n)+A000466(n+4))`
-/

namespace A371807.P17642807384050135977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (A099261 n + A000466 (n + 4)).toNat

end

end A371807.P17642807384050135977

/-!
# A371809: Number of 666 substrings contained in the decimal expansion of the n-th apocalyptic number, where overlapping substrings are counted as distinct.

The programs for A371809, there is no canonical definition to state claims against.
-/

/-! ## A371809.P1940611349969971144

`round(ratio[A276170(n+3)])`
-/

namespace A371809.P1940611349969971144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276170 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A371809.P1940611349969971144

/-! ## A371809.P13436658927682730326

`A003557(gcd(n+5, A055557(n+4)))`
-/

namespace A371809.P13436658927682730326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (Int.gcd (n + 5 : ℤ) (A055557 (n + 4)))

end

end A371809.P13436658927682730326

/-! ## A371809.P16561720006817060399

`gcd(A246277(A334228(2*(n+1))), A334198(n))`
-/

namespace A371809.P16561720006817060399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A246277 (A334228 (2 * (n + 1))).toNat) (A334198 n)

end

end A371809.P16561720006817060399

/-! ## A371809.P10649469766398459185

`gcd(A000330(2*n+1), A374683(A161639(n+1)))`
-/

namespace A371809.P10649469766398459185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000330 (2 * n + 1)) (A374683 (A161639 (n + 1)).toNat)

end

end A371809.P10649469766398459185

/-! ## A371809.P16118745315228568693

`A327502(A335602(n+1))`
-/

namespace A371809.P16118745315228568693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327502 (A335602 (n + 1)).toNat

end

end A371809.P16118745315228568693

/-!
# A371811: Semiprimes q*p such that the congruence 2^x == q (mod p) is solvable, where q < p.

The programs for A371811, there is no canonical definition to state claims against.
-/

/-! ## A371811.P198969050600938288

`eq[A010150(n), A294137(n)]`
-/

namespace A371811.P198969050600938288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371811.P198969050600938288

/-! ## A371811.P17466795382114705568

`eq[A040222(n), A294137(n)]`
-/

namespace A371811.P17466795382114705568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371811.P17466795382114705568

/-! ## A371811.P1492728707818547545

`eq[A040480(n), A294137(n)]`
-/

namespace A371811.P1492728707818547545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371811.P1492728707818547545

/-! ## A371811.P7300831867261276313

`eq[A040724(n), A294137(n)]`
-/

namespace A371811.P7300831867261276313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371811.P7300831867261276313

/-! ## A371811.P6002500093253968356

`eq[A040836(n), A294137(n)]`
-/

namespace A371811.P6002500093253968356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040836 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371811.P6002500093253968356

/-!
# A371812: Number of different ways A329383(n) is Brazilian.

The programs for A371812, there is no canonical definition to state claims against.
-/

/-! ## A371812.P16924700261774524063

`lt[0, Δ[A171701(n+1)]]`
-/

namespace A371812.P16924700261774524063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A371812.P16924700261774524063

/-! ## A371812.P15253440618404698125

`lt[A190856(n+1), A084140(A305788(n+1))]`
-/

namespace A371812.P15253440618404698125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084140 (A305788 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371812.P15253440618404698125

/-! ## A371812.P10553176472312625489

`lt[A367217(n), A000108(A305788(3*(n+1)))]`
-/

namespace A371812.P10553176472312625489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A305788 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371812.P10553176472312625489

/-! ## A371812.P6583206463440161947

`A220136(A329383(n+1))`
-/

namespace A371812.P6583206463440161947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A329383 (n + 1)).toNat

end

end A371812.P6583206463440161947

/-! ## A371812.P17294665402461667093

`A220136(A066044(n+2))`
-/

namespace A371812.P17294665402461667093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A066044 (n + 2)).toNat

end

end A371812.P17294665402461667093

/-!
# A371813: a(n) = Sum_{k=0..n} (-1)^k * binomial(3*n-k-1,n-k).

The programs for A371813, the canonical program `A371813.P8666289126083522828` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371813 has offset 0).

The definition of A371813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371813.P8666289126083522828

`∑{#}[n, (-2)^(n-#)*C(3*n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371813

/-- `∑{#}[n, (-2)^(n-#)*C(3*n, #)]` -/
def P8666289126083522828.Spec : Prop :=
  ∀ n, P8666289126083522828.a n = (A371813 n : ℚ)

end A371813

/-! ## A371813.P12033568556782273518

`2*A183160(n)-A005809(n)`
-/

namespace A371813.P12033568556782273518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183160 n - A005809 n

end

end A371813.P12033568556782273518

namespace A371813

/-- `2*A183160(n)-A005809(n)` -/
def P12033568556782273518.Spec : Prop :=
  ∀ n, P12033568556782273518.a n = A371813 n

end A371813

/-! ## A371813.P9052797890560098804

`A092879(2*n²)`
-/

namespace A371813.P9052797890560098804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092879 (2 * n ^ 2)

end

end A371813.P9052797890560098804

namespace A371813

/-- `A092879(2*n²)` -/
def P9052797890560098804.Spec : Prop :=
  ∀ n, P9052797890560098804.a n = A371813 n

end A371813

/-! ## A371813.P16277101122385912605

`A158909(A004273(n²))`
-/

namespace A371813.P16277101122385912605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158909 (A004273 (n ^ 2)).toNat

end

end A371813.P16277101122385912605

namespace A371813

/-- `A158909(A004273(n²))` -/
def P16277101122385912605.Spec : Prop :=
  ∀ n, P16277101122385912605.a n = A371813 n

end A371813

/-! ## A371813.P12460165954442972832

`A201635(∑[4*n])`
-/

namespace A371813.P12460165954442972832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A371813.P12460165954442972832

namespace A371813

/-- `A201635(∑[4*n])` -/
def P12460165954442972832.Spec : Prop :=
  ∀ n, P12460165954442972832.a n = A371813 n

end A371813

/-!
# A371814: a(n) = Sum_{k=0..n} (-1)^k * binomial(4*n-k-1,n-k).

The programs for A371814, the canonical program `A371814.P4148249625623618448` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371814 has offset 0).

The definition of A371814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371814.P4148249625623618448

`∑{#}[n, (-2)^(n-#)*C(4*n, #)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371814

/-- `∑{#}[n, (-2)^(n-#)*C(4*n, #)]` -/
def P4148249625623618448.Spec : Prop :=
  ∀ n, P4148249625623618448.a n = (A371814 n : ℚ)

end A371814

/-! ## A371814.P8337634903379619594

`A059259(A139274(n))`
-/

namespace A371814.P8337634903379619594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (A139274 n).toNat

end

end A371814.P8337634903379619594

namespace A371814

/-- `A059259(A139274(n))` -/
def P8337634903379619594.Spec : Prop :=
  ∀ n, P8337634903379619594.a n = A371814 n

end A371814

/-! ## A371814.P7208862432310456227

`A080242(A139273(n))`
-/

namespace A371814.P7208862432310456227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080242 (A139273 n).toNat

end

end A371814.P7208862432310456227

namespace A371814

/-- `A080242(A139273(n))` -/
def P7208862432310456227.Spec : Prop :=
  ∀ n, P7208862432310456227.a n = A371814 n

end A371814

/-! ## A371814.P6545437594752739280

`A108561(A139276(n))`
-/

namespace A371814.P6545437594752739280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A139276 n).toNat

end

end A371814.P6545437594752739280

namespace A371814

/-- `A108561(A139276(n))` -/
def P6545437594752739280.Spec : Prop :=
  ∀ n, P6545437594752739280.a n = A371814 n

end A371814

/-! ## A371814.P15479063806140101407

`A112465(A139277(n))`
-/

namespace A371814.P15479063806140101407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A139277 n).toNat

end

end A371814.P15479063806140101407

namespace A371814

/-- `A112465(A139277(n))` -/
def P15479063806140101407.Spec : Prop :=
  ∀ n, P15479063806140101407.a n = A371814 n

end A371814

/-!
# A371815: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(4*n-2*k-1,n-2*k).

The programs for A371815, the canonical program `A371815.P4161798978998070453` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371815 has offset 0).

The definition of A371815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371815.P4161798978998070453

`∑{#}[n, (-2)^#*C(4*n+#+1, n-#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371815

/-- `∑{#}[n, (-2)^#*C(4*n+#+1, n-#)]` -/
def P4161798978998070453.Spec : Prop :=
  ∀ n, P4161798978998070453.a n = A371815 n

theorem P4161798978998070453.correct : P4161798978998070453.Spec := by
  intro n
  simp only [A371815]

end A371815

/-!
# A371816: a(n) = Sum_{k=0..floor(n/3)} (-1)^k * binomial(3*n-3*k-1,n-3*k).

The programs for A371816, there is no canonical definition to state claims against.
-/

/-! ## A371816.P12197969951871203521

`A244325(A081341(n))+gcd(n+1, (n+13)^9)`
-/

namespace A371816.P12197969951871203521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244325 (A081341 n).toNat + (Nat.gcd (n + 1) ((n + 13) ^ 9) : ℤ)

end

end A371816.P12197969951871203521

/-! ## A371816.P8358371046231477373

`A004277((n+1)/3*A121446(n+1))-A118923(A081266(n)+n)`
-/

namespace A371816.P8358371046231477373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / 3 * (A121446 (n + 1) : ℚ))).toNat - A118923 (A081266 n + (n : ℤ)).toNat

end

end A371816.P8358371046231477373

/-!
# A371817: a(n) = Sum_{k=0..floor(n/3)} (-1)^k * binomial(4*n-3*k-1,n-3*k).

The programs for A371817, there is no canonical definition to state claims against.
-/

/-! ## A371817.P8319393431315293879

`A074286(A390411(n)+1)`
-/

namespace A371817.P8319393431315293879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A390411 n + 1).toNat

end

end A371817.P8319393431315293879

/-!
# A371818: a(n) = Sum_{k=0..floor(n/3)} (-1)^k * binomial(2*n-2*k,n-3*k).

The programs for A371818, the canonical program `A371818.P190376183788422825` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371818 has offset 0).

The definition of A371818 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), (-1)^#*C(2*n-2*#, n-3*#)]` (program `A371818.P190376183788422825`, by `A371818.P190376183788422825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371818.P190376183788422825

`∑{#}[floor(n/3), (-1)^#*C(2*n-2*#, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371818

/-- `∑{#}[floor(n/3), (-1)^#*C(2*n-2*#, n-3*#)]` -/
def P190376183788422825.Spec : Prop :=
  ∀ n, P190376183788422825.a n = A371818 n

theorem P190376183788422825.correct : P190376183788422825.Spec := by
  intro n
  simp only [A371818]

end A371818

/-! ## A371818.P16500885496905350361

`A172266(A006080(n+1)+A000984(n))`
-/

namespace A371818.P16500885496905350361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172266 (A006080 (n + 1) + A000984 n).toNat

end

end A371818.P16500885496905350361

namespace A371818

/-- `A172266(A006080(n+1)+A000984(n))` -/
def P16500885496905350361.Spec : Prop :=
  ∀ n, P16500885496905350361.a n = A371818 n

end A371818

/-! ## A371818.P8455081924411155844

`A248565(A149888(n))`
-/

namespace A371818.P8455081924411155844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248565 (A149888 n).toNat

end

end A371818.P8455081924411155844

namespace A371818

/-- `A248565(A149888(n))` -/
def P8455081924411155844.Spec : Prop :=
  ∀ n, P8455081924411155844.a n = A371818 n

end A371818

/-!
# A371819: a(n) = Sum_{k=0..floor(n/3)} (-1)^k * binomial(2*n-k+1,n-3*k).

The programs for A371819, the canonical program `A371819.P4224579875972424406` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371819 has offset 0).

The definition of A371819 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), (-1)^#*C(2*n-#+1, n-3*#)]` (program `A371819.P4224579875972424406`, by `A371819.P4224579875972424406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371819.P4224579875972424406

`∑{#}[floor(n/3), (-1)^#*C(2*n-#+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371819

/-- `∑{#}[floor(n/3), (-1)^#*C(2*n-#+1, n-3*#)]` -/
def P4224579875972424406.Spec : Prop :=
  ∀ n, P4224579875972424406.a n = A371819 n

theorem P4224579875972424406.correct : P4224579875972424406.Spec := by
  intro n
  simp only [A371819]

end A371819

/-! ## A371819.P12504056212798454591

`A070321(A178578(n))`
-/

namespace A371819.P12504056212798454591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A178578 n).toNat

end

end A371819.P12504056212798454591

namespace A371819

/-- `A070321(A178578(n))` -/
def P12504056212798454591.Spec : Prop :=
  ∀ n, P12504056212798454591.a n = A371819 n

end A371819

/-! ## A371819.P11616311584031941096

`A025254(n+3)-A361114(A025254(n+3))`
-/

namespace A371819.P11616311584031941096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025254 (n + 3) - A361114 (A025254 (n + 3)).toNat

end

end A371819.P11616311584031941096

namespace A371819

/-- `A025254(n+3)-A361114(A025254(n+3))` -/
def P11616311584031941096.Spec : Prop :=
  ∀ n, P11616311584031941096.a n = A371819 n

end A371819

/-! ## A371819.P1648832916783081708

`A178578(n)-A178536(A178547(3*n+1))`
-/

namespace A371819.P1648832916783081708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178578 n - A178536 (A178547 (3 * n + 1)).toNat

end

end A371819.P1648832916783081708

namespace A371819

/-- `A178578(n)-A178536(A178547(3*n+1))` -/
def P1648832916783081708.Spec : Prop :=
  ∀ n, P1648832916783081708.a n = A371819 n

end A371819

/-!
# A371820: a(n) = Sum_{k=0..floor(n/3)} (-1)^k * binomial(2*n+2,n-3*k).

The programs for A371820, the canonical program `A371820.P1089837317929258965` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371820 has offset 0).

The definition of A371820 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), (-1)^#*C(2*n+2, n-3*#)]` (program `A371820.P1089837317929258965`, by `A371820.P1089837317929258965.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371820.P1089837317929258965

`∑{#}[floor(n/3), (-1)^#*C(2*n+2, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371820

/-- `∑{#}[floor(n/3), (-1)^#*C(2*n+2, n-3*#)]` -/
def P1089837317929258965.Spec : Prop :=
  ∀ n, P1089837317929258965.a n = A371820 n

theorem P1089837317929258965.correct : P1089837317929258965.Spec := by
  intro n
  simp only [A371820]

end A371820

/-! ## A371820.P18326888853018127346

`A088218(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A371820.P18326888853018127346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088218 n + 3 * a (n - 1)

end

end A371820.P18326888853018127346

namespace A371820

/-- `A088218(n)+3*a(n-1)` -/
def P18326888853018127346.Spec : Prop :=
  ∀ n, P18326888853018127346.a n = A371820 n

end A371820

/-! ## A371820.P12372115461816979765

`abs(A110556(n))+3*a(n-1)` with `a(0)=1`
-/

namespace A371820.P12372115461816979765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A110556 n| + 3 * a (n - 1)

end

end A371820.P12372115461816979765

namespace A371820

/-- `abs(A110556(n))+3*a(n-1)` -/
def P12372115461816979765.Spec : Prop :=
  ∀ n, P12372115461816979765.a n = A371820 n

end A371820

/-! ## A371820.P8078043311279219929

`A260878(n)+3*a(n-1)-1` with `a(0)=1`
-/

namespace A371820.P8078043311279219929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260878 n + (3 * a (n - 1) - 1)

end

end A371820.P8078043311279219929

namespace A371820

/-- `A260878(n)+3*a(n-1)-1` -/
def P8078043311279219929.Spec : Prop :=
  ∀ n, P8078043311279219929.a n = A371820 n

end A371820

/-! ## A371820.P13027429189028200580

`A000984(n)/2+3*a(n-1)` with `a(0)=1`
-/

namespace A371820.P13027429189028200580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A000984 n : ℚ) / 2 + 3 * a (n - 1)

end

end A371820.P13027429189028200580

namespace A371820

/-- `A000984(n)/2+3*a(n-1)` -/
def P13027429189028200580.Spec : Prop :=
  ∀ n, P13027429189028200580.a n = (A371820 n : ℚ)

end A371820

/-! ## A371820.P3511472373281957131

`A001405(2*n)/2+3*a(n-1)` with `a(0)=1`
-/

namespace A371820.P3511472373281957131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A001405 (2 * n) : ℚ) / 2 + 3 * a (n - 1)

end

end A371820.P3511472373281957131

namespace A371820

/-- `A001405(2*n)/2+3*a(n-1)` -/
def P3511472373281957131.Spec : Prop :=
  ∀ n, P3511472373281957131.a n = (A371820 n : ℚ)

end A371820

/-! ## A371820.P5228951001848780834

`(A132310(n)+A000244(n))/2`
-/

namespace A371820.P5228951001848780834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132310 n + A000244 n : ℚ) / 2

end

end A371820.P5228951001848780834

namespace A371820

/-- `(A132310(n)+A000244(n))/2` -/
def P5228951001848780834.Spec : Prop :=
  ∀ n, P5228951001848780834.a n = (A371820 n : ℚ)

end A371820

/-!
# A371822: Triangle read by rows. Row n is the lexicographically earliest permutation of [n] that can be obtained from row n-1 by inserting the element n and optional cyclic shifting to maximize the pattern density.

The programs for A371822, there is no canonical definition to state claims against.
-/

/-! ## A371822.P1053738320092698073

`A194844(A194834(n+1))%A101641(3*n+4)`
-/

namespace A371822.P1053738320092698073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194844 (A194834 (n + 1)).toNat) (A101641 (3 * n + 4))

end

end A371822.P1053738320092698073

/-! ## A371822.P1601373344240702266

`A326195(A275287(2*n+3))-A275305(n+1)`
-/

namespace A371822.P1601373344240702266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326195 (A275287 (2 * n + 3)).toNat - A275305 (n + 1)

end

end A371822.P1601373344240702266

/-!
# A371825: a(n) = Sum_{k=0..n} n^k * binomial(2*n,n-k).

The programs for A371825, the canonical program `A371825.P668274414104982435` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371825 has offset 0).

The definition of A371825 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, n^#*C(2*n, n-#)]` (program `A371825.P668274414104982435`, by `A371825.P668274414104982435.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371825.P668274414104982435

`∑{#}[n, n^#*C(2*n, n-#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371825

/-- `∑{#}[n, n^#*C(2*n, n-#)]` -/
def P668274414104982435.Spec : Prop :=
  ∀ n, (P668274414104982435.a n : ℤ) = A371825 n

theorem P668274414104982435.correct : P668274414104982435.Spec := by
  intro n
  simp only [A371825]

end A371825

/-! ## A371825.P12751450564718708160

`∑{#}[n, C(2*n, n-#)*n^#]`
-/

namespace A371825.P12751450564718708160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (2 * n) ((n : ℤ) - (k : ℤ)).toNat * n ^ k

end

end A371825.P12751450564718708160

namespace A371825

/-- `∑{#}[n, C(2*n, n-#)*n^#]` -/
def P12751450564718708160.Spec : Prop :=
  ∀ n, (P12751450564718708160.a n : ℤ) = A371825 n

theorem P12751450564718708160.correct : P12751450564718708160.Spec := by
  intro n
  simp only [A371825, Nat.add_sub_cancel, A371825.P12751450564718708160.f1, A371825.P12751450564718708160.a, A371825.P668274414104982435.f1, A371825.P668274414104982435.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A371825

/-!
# A371826: a(n) = Sum_{k=0..floor(n/2)} n^k * binomial(2*n-k,n-2*k).

The programs for A371826, the canonical program `A371826.P11297847284597772862` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371826 has offset 0).

The definition of A371826 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), n^#*C(2*n-#, n-2*#)]` (program `A371826.P11297847284597772862`, by `A371826.P11297847284597772862.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371826.P11297847284597772862

`∑{#}[floor(n/2), n^#*C(2*n-#, n-2*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371826

/-- `∑{#}[floor(n/2), n^#*C(2*n-#, n-2*#)]` -/
def P11297847284597772862.Spec : Prop :=
  ∀ n, (P11297847284597772862.a n : ℤ) = A371826 n

theorem P11297847284597772862.correct : P11297847284597772862.Spec := by
  intro n
  simp only [A371826]

end A371826

/-! ## A371826.P997302356309714313

`A026405(A130524(n)+2^n)`
-/

namespace A371826.P997302356309714313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026405 (A130524 n + (2 ^ n : ℤ)).toNat

end

end A371826.P997302356309714313

namespace A371826

/-- `A026405(A130524(n)+2^n)` -/
def P997302356309714313.Spec : Prop :=
  ∀ n, P997302356309714313.a n = A371826 n

end A371826

/-!
# A371827: a(n) = Sum_{k=0..floor(n/3)} n^k * binomial(2*n-2*k,n-3*k).

The programs for A371827, the canonical program `A371827.P15681968386937387771` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371827 has offset 0).

The definition of A371827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), n^#*C(2*n-2*#, n-3*#)]` (program `A371827.P15681968386937387771`, by `A371827.P15681968386937387771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371827.P15681968386937387771

`∑{#}[floor(n/3), n^#*C(2*n-2*#, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371827

/-- `∑{#}[floor(n/3), n^#*C(2*n-2*#, n-3*#)]` -/
def P15681968386937387771.Spec : Prop :=
  ∀ n, (P15681968386937387771.a n : ℤ) = A371827 n

theorem P15681968386937387771.correct : P15681968386937387771.Spec := by
  intro n
  simp only [A371827]

end A371827

/-! ## A371827.P8186670131040591308

`A108141(A150500(n))`
-/

namespace A371827.P8186670131040591308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A150500 n).toNat

end

end A371827.P8186670131040591308

namespace A371827

/-- `A108141(A150500(n))` -/
def P8186670131040591308.Spec : Prop :=
  ∀ n, P8186670131040591308.a n = A371827 n

end A371827

/-!
# A371828: Number of labeled n-vertex hypergraphs (or set systems) that have a solution to the One Up puzzle.

The programs for A371828, there is no canonical definition to state claims against.
-/

/-! ## A371828.P3866274699622006090

`A365661(A220304(n+2))`
-/

namespace A371828.P3866274699622006090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365661 (A220304 (n + 2)).toNat

end

end A371828.P3866274699622006090

/-!
# A371829: Number of unlabeled n-vertex hypergraphs (or set systems) that have a solution to the One Up puzzle.

The programs for A371829, there is no canonical definition to state claims against.
-/

/-! ## A371829.P5413579840916557139

`Δ[A327672(a(n-1))]` with `a(0)=2`
-/

namespace A371829.P5413579840916557139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A327672 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371829.P5413579840916557139

/-!
# A371832: a(n) = denominator(Sum_{k=1..n} k^2/k!).

The programs for A371832, there is no canonical definition to state claims against.
-/

/-! ## A371832.P7103334924172369704

`A273697(n)/A001221(A214996(n))`
-/

namespace A371832.P7103334924172369704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273697 n : ℚ) / (A001221 (A214996 n).toNat : ℚ)

end

end A371832.P7103334924172369704

/-! ## A371832.P5022039042280555678

`A206493(A363071(n))`
-/

namespace A371832.P5022039042280555678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206493 (A363071 n).toNat

end

end A371832.P5022039042280555678

/-! ## A371832.P15511108165092776060

`A118211(A002034(n!))`
-/

namespace A371832.P15511108165092776060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118211 (A002034 (Nat.factorial n)).toNat

end

end A371832.P15511108165092776060

/-! ## A371832.P10685629252507960637

`A124773(A059403(n+1))`
-/

namespace A371832.P10685629252507960637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124773 (A059403 (n + 1)).toNat

end

end A371832.P10685629252507960637

/-!
# A371836: a(n) = Sum_{k=0..floor(n/2)} n^k * binomial(2*n-2*k-1,n-2*k).

The programs for A371836, there is no canonical definition to state claims against.
-/

/-! ## A371836.P13075612585614977557

`A008615(A026754(2*n)+A000265(n+3))`
-/

namespace A371836.P13075612585614977557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A026754 (2 * n) + A000265 (n + 3)).toNat

end

end A371836.P13075612585614977557

/-!
# A371839: Number of integer partitions of n with biquanimous multiplicities.

The programs for A371839, there is no canonical definition to state claims against.
-/

/-! ## A371839.P14197566319026642806

`A000041(n)-A371840(n)`
-/

namespace A371839.P14197566319026642806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A371840 n

end

end A371839.P14197566319026642806

/-! ## A371839.P11698132242969278514

`A213598(n)-A371840(n)`
-/

namespace A371839.P11698132242969278514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A371840 n

end

end A371839.P11698132242969278514

/-! ## A371839.P16200865631057068639

`sqrt(A001255(n))-A371840(n)`
-/

namespace A371839.P16200865631057068639
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A371840 n : ℝ)

end

end A371839.P16200865631057068639

/-! ## A371839.P4722147793375655612

`∑[A002865(n)]-A371840(n)`
-/

namespace A371839.P4722147793375655612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A371840 n

end

end A371839.P4722147793375655612

/-! ## A371839.P9085529005844777374

`A054225(n*(n+3)/2)-A371840(n)`
-/

namespace A371839.P9085529005844777374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat - A371840 n

end

end A371839.P9085529005844777374

/-!
# A371840: Number of integer partitions of n with non-biquanimous multiplicities.

The programs for A371840, there is no canonical definition to state claims against.
-/

/-! ## A371840.P18014079687353458098

`A000041(n)-A371839(n)`
-/

namespace A371840.P18014079687353458098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A371839 n

end

end A371840.P18014079687353458098

/-! ## A371840.P6772858547989892811

`A213598(n)-A371839(n)`
-/

namespace A371840.P6772858547989892811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A371839 n

end

end A371840.P6772858547989892811

/-! ## A371840.P4191077511985562853

`∑[A002865(n)]-A371839(n)`
-/

namespace A371840.P4191077511985562853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A371839 n

end

end A371840.P4191077511985562853

/-! ## A371840.P4775460836236146996

`∑[A085811(n+3)]-A371839(n)`
-/

namespace A371840.P4775460836236146996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A371839 n

end

end A371840.P4775460836236146996

/-! ## A371840.P2582385728252189233

`A058984(n)+A004526(n)-A371839(n)`
-/

namespace A371840.P2582385728252189233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 n + A004526 n - A371839 n

end

end A371840.P2582385728252189233

/-!
# A371842: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-2*k+1,n-3*k).

The programs for A371842, the canonical program `A371842.P1587309175824170920` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371842 has offset 0).

The definition of A371842 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(2*n-2*#+1, n-3*#)]` (program `A371842.P1587309175824170920`, by `A371842.P1587309175824170920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371842.P1587309175824170920

`∑{#}[floor(n/3), C(2*n-2*#+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371842

/-- `∑{#}[floor(n/3), C(2*n-2*#+1, n-3*#)]` -/
def P1587309175824170920.Spec : Prop :=
  ∀ n, (P1587309175824170920.a n : ℤ) = A371842 n

theorem P1587309175824170920.correct : P1587309175824170920.Spec := by
  intro n
  simp only [A371842]

end A371842

/-! ## A371842.P10401053034157119769

`A144904(n+2)-A371872(n+1)`
-/

namespace A371842.P10401053034157119769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144904 (n + 2) - A371872 (n + 1)

end

end A371842.P10401053034157119769

namespace A371842

/-- `A144904(n+2)-A371872(n+1)` -/
def P10401053034157119769.Spec : Prop :=
  ∀ n, P10401053034157119769.a n = A371842 n

end A371842

/-! ## A371842.P3035682539806981399

`A099567(2*(n+1)²)`
-/

namespace A371842.P3035682539806981399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099567 (2 * (n + 1) ^ 2)

end

end A371842.P3035682539806981399

namespace A371842

/-- `A099567(2*(n+1)²)` -/
def P3035682539806981399.Spec : Prop :=
  ∀ n, P3035682539806981399.a n = A371842 n

end A371842

/-! ## A371842.P5881700712404502604

`A144903(A093353(2*n+3)-1)`
-/

namespace A371842.P5881700712404502604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144903 (A093353 (2 * n + 3) - 1).toNat

end

end A371842.P5881700712404502604

namespace A371842

/-- `A144903(A093353(2*n+3)-1)` -/
def P5881700712404502604.Spec : Prop :=
  ∀ n, P5881700712404502604.a n = A371842 n

end A371842

/-! ## A371842.P2670943357108246564

`A144903(A000384(n+2)+1+n)`
-/

namespace A371842.P2670943357108246564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144903 (A000384 (n + 2) + 1 + (n : ℤ)).toNat

end

end A371842.P2670943357108246564

namespace A371842

/-- `A144903(A000384(n+2)+1+n)` -/
def P2670943357108246564.Spec : Prop :=
  ∀ n, P2670943357108246564.a n = A371842 n

end A371842

/-! ## A371842.P2783385885123680127

`record[A010052(2*n)*A099567(n)]`
-/

namespace A371842.P2783385885123680127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n) * A099567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371842.P2783385885123680127

namespace A371842

/-- `record[A010052(2*n)*A099567(n)]` -/
def P2783385885123680127.Spec : Prop :=
  ∀ n, P2783385885123680127.a n = A371842 n

end A371842

/-!
# A371843: a(n) = 5*Fibonacci(n) + (-1)^n.

The programs for A371843, the canonical program `A371843.P2262643794716352472` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371843 has offset 0).

The definition of A371843 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*A000045(n)+(-1)^n` (program `A371843.P2262643794716352472`, by `A371843.P2262643794716352472.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371843.P10646130504052648463

`ogf((1+4x+4x^2)/(1-2x^2-x^3))`
-/

namespace A371843.P10646130504052648463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4] [1, 0, -2, -1] n

end

end A371843.P10646130504052648463

namespace A371843

/-- `ogf((1+4x+4x^2)/(1-2x^2-x^3))` -/
def P10646130504052648463.Spec : Prop :=
  ∀ n, P10646130504052648463.a n = A371843 n

end A371843

/-! ## A371843.P3779927828681777337

`2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A371843.P3779927828681777337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6] fun n a =>
  2 * a (n - 2) + a (n - 3)

end

end A371843.P3779927828681777337

namespace A371843

/-- `2*a(n-2)+a(n-3)` -/
def P3779927828681777337.Spec : Prop :=
  ∀ n, (P3779927828681777337.a n : ℤ) = A371843 n

end A371843

/-! ## A371843.P2262643794716352472

`5*A000045(n)+(-1)^n`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A371843

/-- `5*A000045(n)+(-1)^n` -/
def P2262643794716352472.Spec : Prop :=
  ∀ n, P2262643794716352472.a n = A371843 n

theorem P2262643794716352472.correct : P2262643794716352472.Spec := by
  intro n
  simp only [A371843]

end A371843

/-! ## A371843.P14569600449427510030

`a(n-2)+A022088(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A371843.P14569600449427510030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + A022088 (n - 1)

end

end A371843.P14569600449427510030

namespace A371843

/-- `a(n-2)+A022088(n-1)` -/
def P14569600449427510030.Spec : Prop :=
  ∀ n, P14569600449427510030.a n = A371843 n

end A371843

/-! ## A371843.P13472273686601571635

`A022088(n)+A033999(n)`
-/

namespace A371843.P13472273686601571635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + A033999 n

end

end A371843.P13472273686601571635

namespace A371843

/-- `A022088(n)+A033999(n)` -/
def P13472273686601571635.Spec : Prop :=
  ∀ n, P13472273686601571635.a n = A371843 n

end A371843

/-! ## A371843.P14974667905907190550

`a(n-2)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A371843.P14974667905907190550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 3))

end

end A371843.P14974667905907190550

namespace A371843

/-- `a(n-2)+a(n-2)+a(n-3)` -/
def P14974667905907190550.Spec : Prop :=
  ∀ n, (P14974667905907190550.a n : ℤ) = A371843 n

end A371843

/-! ## A371843.P8339004963739763493

`(-1)^n+5*A000045(n)`
-/

namespace A371843.P8339004963739763493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 5 * A000045 n

end

end A371843.P8339004963739763493

namespace A371843

/-- `(-1)^n+5*A000045(n)` -/
def P8339004963739763493.Spec : Prop :=
  ∀ n, P8339004963739763493.a n = A371843 n

theorem P8339004963739763493.correct : P8339004963739763493.Spec := by
  intro n
  simp only [A371843, Nat.add_sub_cancel, A371843.P8339004963739763493.a, A371843.P2262643794716352472.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A371843

/-! ## A371843.P12796415155157949748

`A022087(n)+A008346(n)`
-/

namespace A371843.P12796415155157949748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A008346 n

end

end A371843.P12796415155157949748

namespace A371843

/-- `A022087(n)+A008346(n)` -/
def P12796415155157949748.Spec : Prop :=
  ∀ n, P12796415155157949748.a n = A371843 n

theorem P12796415155157949748.correct : P12796415155157949748.Spec := by
  intro n
  simp only [A371843, Nat.add_sub_cancel, A371843.P12796415155157949748.a, A371843.P2262643794716352472.a, A000045, A000045.P11838749114346432762.a, A008346, A008346.P8004040718753913505.a, A022087, A022087.P15759272974687768527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A371843

/-! ## A371843.P4375813062132407971

`A022319(n)-A001350(n)`
-/

namespace A371843.P4375813062132407971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n - A001350 n

end

end A371843.P4375813062132407971

namespace A371843

/-- `A022319(n)-A001350(n)` -/
def P4375813062132407971.Spec : Prop :=
  ∀ n, P4375813062132407971.a n = A371843 n

end A371843

/-! ## A371843.P13842174441628044609

`A022112(n)-A098600(n)`
-/

namespace A371843.P13842174441628044609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n - A098600 n

end

end A371843.P13842174441628044609

namespace A371843

/-- `A022112(n)-A098600(n)` -/
def P13842174441628044609.Spec : Prop :=
  ∀ n, P13842174441628044609.a n = A371843 n

end A371843

/-! ## A371843.P1247644341419203975

`A153263(n)-A000032(n)`
-/

namespace A371843.P1247644341419203975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153263 n - A000032 n

end

end A371843.P1247644341419203975

namespace A371843

/-- `A153263(n)-A000032(n)` -/
def P1247644341419203975.Spec : Prop :=
  ∀ n, P1247644341419203975.a n = A371843 n

end A371843

/-! ## A371843.P1558561656849224858

`A181716(n)+A000032(n+1)`
-/

namespace A371843.P1558561656849224858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181716 n + A000032 (n + 1)

end

end A371843.P1558561656849224858

namespace A371843

/-- `A181716(n)+A000032(n+1)` -/
def P1558561656849224858.Spec : Prop :=
  ∀ n, P1558561656849224858.a n = A371843 n

end A371843

/-! ## A371843.P2677032665554945995

`A181716(n)+A000204(n+1)`
-/

namespace A371843.P2677032665554945995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181716 n + A000204 (n + 1)

end

end A371843.P2677032665554945995

namespace A371843

/-- `A181716(n)+A000204(n+1)` -/
def P2677032665554945995.Spec : Prop :=
  ∀ n, P2677032665554945995.a n = A371843 n

end A371843

/-! ## A371843.P18197929396207526858

`A001060(n)-A066983(n+1)`
-/

namespace A371843.P18197929396207526858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 n - A066983 (n + 1)

end

end A371843.P18197929396207526858

namespace A371843

/-- `A001060(n)-A066983(n+1)` -/
def P18197929396207526858.Spec : Prop :=
  ∀ n, P18197929396207526858.a n = A371843 n

end A371843

/-! ## A371843.P4079743992078522859

`A098600(n)+2*A181716(n)`
-/

namespace A371843.P4079743992078522859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 n + 2 * A181716 n

end

end A371843.P4079743992078522859

namespace A371843

/-- `A098600(n)+2*A181716(n)` -/
def P4079743992078522859.Spec : Prop :=
  ∀ n, P4079743992078522859.a n = A371843 n

end A371843

/-! ## A371843.P7644206448583783638

`A181716(n+1)+2*A181716(n)`
-/

namespace A371843.P7644206448583783638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181716 (n + 1) + 2 * A181716 n

end

end A371843.P7644206448583783638

namespace A371843

/-- `A181716(n+1)+2*A181716(n)` -/
def P7644206448583783638.Spec : Prop :=
  ∀ n, P7644206448583783638.a n = A371843 n

end A371843

/-! ## A371843.P2922883560350780502

`2*A000204(n+1)-A098600(n)`
-/

namespace A371843.P2922883560350780502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000204 (n + 1) - A098600 n

end

end A371843.P2922883560350780502

namespace A371843

/-- `2*A000204(n+1)-A098600(n)` -/
def P2922883560350780502.Spec : Prop :=
  ∀ n, P2922883560350780502.a n = A371843 n

end A371843

/-! ## A371843.P16978532656903530920

`A153263(n)-A090244(2*n+1)`
-/

namespace A371843.P16978532656903530920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153263 n - A090244 (2 * n + 1)

end

end A371843.P16978532656903530920

namespace A371843

/-- `A153263(n)-A090244(2*n+1)` -/
def P16978532656903530920.Spec : Prop :=
  ∀ n, P16978532656903530920.a n = A371843 n

end A371843

/-! ## A371843.P2704375967361816307

`A097133(n)+A000045(n)+A000045(n)`
-/

namespace A371843.P2704375967361816307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097133 n + A000045 n + A000045 n

end

end A371843.P2704375967361816307

namespace A371843

/-- `A097133(n)+A000045(n)+A000045(n)` -/
def P2704375967361816307.Spec : Prop :=
  ∀ n, P2704375967361816307.a n = A371843 n

theorem P2704375967361816307.correct : P2704375967361816307.Spec := by
  intro n
  simp only [A371843, Nat.add_sub_cancel, A371843.P2704375967361816307.a, A371843.P2262643794716352472.a, A000045, A000045.P11838749114346432762.a, A097133, A097133.P8765087411326853720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A371843

/-! ## A371843.P8461149026718549661

`A000035(n+1)+A022088(n)-A000035(n)`
-/

namespace A371843.P8461149026718549661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A022088 n - A000035 n)

end

end A371843.P8461149026718549661

namespace A371843

/-- `A000035(n+1)+A022088(n)-A000035(n)` -/
def P8461149026718549661.Spec : Prop :=
  ∀ n, P8461149026718549661.a n = A371843 n

end A371843

/-!
# A371844: Center column of elementary triangular automaton rule 37, starting from a lone 1 cell.

The programs for A371844, there is no canonical definition to state claims against.
-/

/-! ## A371844.P11335586890990348810

`A010054(lt[A267019(n+1), A005100(n+1)])`
-/

namespace A371844.P11335586890990348810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A371844.P11335586890990348810

/-! ## A371844.P4710084750463285003

`A383277(A007814(A383276(n+2)²))`
-/

namespace A371844.P4710084750463285003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383277 (A007814 (A383276 (n + 2) ^ 2).toNat).toNat

end

end A371844.P4710084750463285003

/-! ## A371844.P13570694491350418768

`and(A162141(n+1), A364246(n+1))`
-/

namespace A371844.P13570694491350418768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A162141 (n + 1)) (A364246 (n + 1))

end

end A371844.P13570694491350418768

/-! ## A371844.P1260684844472904111

`and(A122912(n+1), A364246(n+1))`
-/

namespace A371844.P1260684844472904111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122912 (n + 1)) (A364246 (n + 1))

end

end A371844.P1260684844472904111

/-! ## A371844.P1178549570436792988

`(ceil((A352532(n+3)-(n+1))/e)-1)%2`
-/

namespace A371844.P1178549570436792988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈(A352532 (n + 3) - (n + 1 : ℤ) : ℝ) / Real.exp 1⌉ - 1) 2

end

end A371844.P1178549570436792988

/-!
# A371854: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-k+2,n-3*k).

The programs for A371854, the canonical program `A371854.P5844803987638977009` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371854 has offset 0).

The definition of A371854 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(2*n-#+2, n-3*#)]` (program `A371854.P5844803987638977009`, by `A371854.P5844803987638977009.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371854.P5844803987638977009

`∑{#}[floor(n/3), C(2*n-#+2, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371854

/-- `∑{#}[floor(n/3), C(2*n-#+2, n-3*#)]` -/
def P5844803987638977009.Spec : Prop :=
  ∀ n, (P5844803987638977009.a n : ℤ) = A371854 n

theorem P5844803987638977009.correct : P5844803987638977009.Spec := by
  intro n
  simp only [A371854]

end A371854

/-! ## A371854.P7712223135376492757

`A371773(n+1)-A360150(n+1)`
-/

namespace A371854.P7712223135376492757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371773 (n + 1) - A360150 (n + 1)

end

end A371854.P7712223135376492757

namespace A371854

/-- `A371773(n+1)-A360150(n+1)` -/
def P7712223135376492757.Spec : Prop :=
  ∀ n, P7712223135376492757.a n = A371854 n

end A371854

/-! ## A371854.P10172904087347592845

`A088218(n+2)-A078483(n+2)`
-/

namespace A371854.P10172904087347592845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 2) - A078483 (n + 2)

end

end A371854.P10172904087347592845

namespace A371854

/-- `A088218(n+2)-A078483(n+2)` -/
def P10172904087347592845.Spec : Prop :=
  ∀ n, P10172904087347592845.a n = A371854 n

end A371854

/-! ## A371854.P14933392492710037169

`A270418(A032443(n))+A001353(n)`
-/

namespace A371854.P14933392492710037169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 (A032443 n).toNat + A001353 n

end

end A371854.P14933392492710037169

namespace A371854

/-- `A270418(A032443(n))+A001353(n)` -/
def P14933392492710037169.Spec : Prop :=
  ∀ n, P14933392492710037169.a n = A371854 n

end A371854

/-!
# A371862: Positive integers that can be written as the product of two or more other integers, none of which uses any of the digits in the number itself.

The programs for A371862, there is no canonical definition to state claims against.
-/

/-! ## A371862.P5813736661004772655

`lt[A115580(A328208(n+1)), A284465(n)]`
-/

namespace A371862.P5813736661004772655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115580 (A328208 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284465 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371862.P5813736661004772655

/-! ## A371862.P11823127563049251479

`lt[A275120(A348839(n+5)), A353851(n)]`
-/

namespace A371862.P11823127563049251479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (A348839 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371862.P11823127563049251479

/-! ## A371862.P7587832350301106300

`lt[A201160(A201160(n)), A000001(n)]`
-/

namespace A371862.P7587832350301106300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201160 (A201160 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371862.P7587832350301106300

/-! ## A371862.P4555688720785158151

`lt[A165413(A143007(n)), A000001(n)]`
-/

namespace A371862.P4555688720785158151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165413 (A143007 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371862.P4555688720785158151

/-!
# A371863: Records in A370748.

The programs for A371863, there is no canonical definition to state claims against.
-/

/-! ## A371863.P13292100726851637732

`record[A370748(n)]`
-/

namespace A371863.P13292100726851637732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371863.P13292100726851637732

/-! ## A371863.P17206446762422310092

`A370748(A371864(n+1))`
-/

namespace A371863.P17206446762422310092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370748 (A371864 (n + 1)).toNat

end

end A371863.P17206446762422310092

/-!
# A371864: Indices of records in A370748.

The programs for A371864, there is no canonical definition to state claims against.
-/

/-! ## A371864.P16251144982597428183

`lt[A191736(A086786(n+1)), A033203(n+1)]`
-/

namespace A371864.P16251144982597428183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191736 (A086786 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371864.P16251144982597428183

/-! ## A371864.P14091878415980866149

`lt[A004191(A236456(n+1)), A104695(n+1)]`
-/

namespace A371864.P14091878415980866149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004191 (A236456 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371864.P14091878415980866149

/-!
# A371869: Number of 2-connected chordal bipartite graphs on n unlabeled vertices.

The programs for A371869, there is no canonical definition to state claims against.
-/

/-! ## A371869.P12540132068151251867

`ceil((A368421(n+1)-A001654(n))/2)`
-/

namespace A371869.P12540132068151251867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A368421 (n + 1) - A001654 n : ℚ) / 2⌉

end

end A371869.P12540132068151251867

/-!
# A371870: a(n) = Sum_{k=0..floor(n/2)} binomial(2*n-k-1,n-2*k).

The programs for A371870, the canonical program `A371870.P2376998414125002658` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371870 has offset 0).

The definition of A371870 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A354267, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A371870.P2376998414125002658

`A354267(C(2*n+1, 2)+n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A371870

/-- `A354267(C(2*n+1, 2)+n)` -/
def P2376998414125002658.Spec : Prop :=
  ∀ n, P2376998414125002658.a n = A371870 n

theorem P2376998414125002658.correct : P2376998414125002658.Spec := by
  intro n
  simp only [A371870]

end A371870

/-! ## A371870.P16935794293074856516

`A000984(n)-A109262(n)`
-/

namespace A371870.P16935794293074856516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A109262 n

end

end A371870.P16935794293074856516

namespace A371870

/-- `A000984(n)-A109262(n)` -/
def P16935794293074856516.Spec : Prop :=
  ∀ n, P16935794293074856516.a n = A371870 n

end A371870

/-! ## A371870.P12154308764453399505

`A108081(n)-A176085(n)`
-/

namespace A371870.P12154308764453399505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108081 n - A176085 n

end

end A371870.P12154308764453399505

namespace A371870

/-- `A108081(n)-A176085(n)` -/
def P12154308764453399505.Spec : Prop :=
  ∀ n, P12154308764453399505.a n = A371870 n

end A371870

/-! ## A371870.P16893662320713347668

`A382432(n+1)-A257838(n)`
-/

namespace A371870.P16893662320713347668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382432 (n + 1) - A257838 n

end

end A371870.P16893662320713347668

namespace A371870

/-- `A382432(n+1)-A257838(n)` -/
def P16893662320713347668.Spec : Prop :=
  ∀ n, P16893662320713347668.a n = A371870 n

end A371870

/-! ## A371870.P7153904185030557700

`2*A108081(n)-A277287(n)`
-/

namespace A371870.P7153904185030557700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108081 n - A277287 n

end

end A371870.P7153904185030557700

namespace A371870

/-- `2*A108081(n)-A277287(n)` -/
def P7153904185030557700.Spec : Prop :=
  ∀ n, P7153904185030557700.a n = A371870 n

end A371870

/-! ## A371870.P15940750681704003427

`A277287(n)-2*A176085(n)`
-/

namespace A371870.P15940750681704003427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277287 n - 2 * A176085 n

end

end A371870.P15940750681704003427

namespace A371870

/-- `A277287(n)-2*A176085(n)` -/
def P15940750681704003427.Spec : Prop :=
  ∀ n, P15940750681704003427.a n = A371870 n

end A371870

/-! ## A371870.P6065395488943790589

`A081696(n)+A257838(n)-A176085(n)`
-/

namespace A371870.P6065395488943790589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081696 n + (A257838 n - A176085 n)

end

end A371870.P6065395488943790589

namespace A371870

/-- `A081696(n)+A257838(n)-A176085(n)` -/
def P6065395488943790589.Spec : Prop :=
  ∀ n, P6065395488943790589.a n = A371870 n

end A371870

/-! ## A371870.P2665959938558616724

`A176085(n+1)-(A257838(n)+A176085(n))`
-/

namespace A371870.P2665959938558616724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 (n + 1) - (A257838 n + A176085 n)

end

end A371870.P2665959938558616724

namespace A371870

/-- `A176085(n+1)-(A257838(n)+A176085(n))` -/
def P2665959938558616724.Spec : Prop :=
  ∀ n, P2665959938558616724.a n = A371870 n

end A371870

/-! ## A371870.P15612154207565669688

`A354267(∑[4*n])`
-/

namespace A371870.P15612154207565669688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354267 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A371870.P15612154207565669688

namespace A371870

/-- `A354267(∑[4*n])` -/
def P15612154207565669688.Spec : Prop :=
  ∀ n, P15612154207565669688.a n = A371870 n

end A371870

/-! ## A371870.P5816443845050234357

`A228074(2*A028310(n²))`
-/

namespace A371870.P5816443845050234357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228074 (2 * A028310 (n ^ 2)).toNat

end

end A371870.P5816443845050234357

namespace A371870

/-- `A228074(2*A028310(n²))` -/
def P5816443845050234357.Spec : Prop :=
  ∀ n, P5816443845050234357.a n = A371870 n

end A371870

/-!
# A371871: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-3*k-2,n-3*k).

The programs for A371871, the canonical program `A371871.P417063730944234454` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371871 has offset 0).

The definition of A371871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371871.P417063730944234454

`∑{#}[n, (-3)^#*C(2*n+#+1, n-#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371871

/-- `∑{#}[n, (-3)^#*C(2*n+#+1, n-#)]` -/
def P417063730944234454.Spec : Prop :=
  ∀ n, P417063730944234454.a n = A371871 n

theorem P417063730944234454.correct : P417063730944234454.Spec := by
  intro n
  simp only [A371871]

end A371871

/-! ## A371871.P16846490980013199976

`A118923(2*n²)`
-/

namespace A371871.P16846490980013199976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (2 * n ^ 2)

end

end A371871.P16846490980013199976

namespace A371871

/-- `A118923(2*n²)` -/
def P16846490980013199976.Spec : Prop :=
  ∀ n, P16846490980013199976.a n = A371871 n

end A371871

/-! ## A371871.P6498618441951017931

`A129155(n)+A023416(A330518(n))`
-/

namespace A371871.P6498618441951017931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129155 n + A023416 (A330518 n).toNat

end

end A371871.P6498618441951017931

namespace A371871

/-- `A129155(n)+A023416(A330518(n))` -/
def P6498618441951017931.Spec : Prop :=
  ∀ n, P6498618441951017931.a n = A371871 n

end A371871

/-!
# A371872: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-2*k-1,n-3*k).

The programs for A371872, there is no canonical definition to state claims against.
-/

/-! ## A371872.P16121995890460033987

`A099567(A001105(n)-ceil(n/98))`
-/

namespace A371872.P16121995890460033987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099567 (A001105 n - ⌈(n : ℚ) / 98⌉).toNat

end

end A371872.P16121995890460033987

/-! ## A371872.P9639475477835793899

`A144903(2*(n+1)²)`
-/

namespace A371872.P9639475477835793899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144903 (2 * (n + 1) ^ 2)

end

end A371872.P9639475477835793899

/-! ## A371872.P10721243804451370939

`A066508(A149923(n))`
-/

namespace A371872.P10721243804451370939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A149923 n).toNat

end

end A371872.P10721243804451370939

/-!
# A371873: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n+1,n-3*k).

The programs for A371873, the canonical program `A371873.P6948825358315610257` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371873 has offset 0).

The definition of A371873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(2*n+1, n-3*#)]` (program `A371873.P6948825358315610257`, by `A371873.P6948825358315610257.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371873.P6948825358315610257

`∑{#}[floor(n/3), C(2*n+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371873

/-- `∑{#}[floor(n/3), C(2*n+1, n-3*#)]` -/
def P6948825358315610257.Spec : Prop :=
  ∀ n, (P6948825358315610257.a n : ℤ) = A371873 n

theorem P6948825358315610257.correct : P6948825358315610257.Spec := by
  intro n
  simp only [A371873]

end A371873

/-! ## A371873.P10849458440002664897

`∑[A114121(n)]`
-/

namespace A371873.P10849458440002664897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371873.P10849458440002664897

namespace A371873

/-- `∑[A114121(n)]` -/
def P10849458440002664897.Spec : Prop :=
  ∀ n, P10849458440002664897.a n = A371873 n

end A371873

/-! ## A371873.P17502322959973799102

`∑[A116406(2*n)]`
-/

namespace A371873.P17502322959973799102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371873.P17502322959973799102

namespace A371873

/-- `∑[A116406(2*n)]` -/
def P17502322959973799102.Spec : Prop :=
  ∀ n, P17502322959973799102.a n = A371873 n

end A371873

/-! ## A371873.P15091821035273237932

`∑[A079280(2*n+1)]`
-/

namespace A371873.P15091821035273237932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079280 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371873.P15091821035273237932

namespace A371873

/-- `∑[A079280(2*n+1)]` -/
def P15091821035273237932.Spec : Prop :=
  ∀ n, P15091821035273237932.a n = A371873 n

end A371873

/-! ## A371873.P2832659047845278188

`∑{#}[n, C(n, #)*A036908(#+1)]`
-/

namespace A371873.P2832659047845278188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A036908 (k + 1)

end

end A371873.P2832659047845278188

namespace A371873

/-- `∑{#}[n, C(n, #)*A036908(#+1)]` -/
def P2832659047845278188.Spec : Prop :=
  ∀ n, P2832659047845278188.a n = A371873 n

end A371873

/-! ## A371873.P16340140777564212738

`A024718(n)+A002450(n)`
-/

namespace A371873.P16340140777564212738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n + A002450 n

end

end A371873.P16340140777564212738

namespace A371873

/-- `A024718(n)+A002450(n)` -/
def P16340140777564212738.Spec : Prop :=
  ∀ n, P16340140777564212738.a n = A371873 n

end A371873

/-! ## A371873.P16097105831763007773

`A306376(n)+A079319(n)`
-/

namespace A371873.P16097105831763007773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306376 n + A079319 n

end

end A371873.P16097105831763007773

namespace A371873

/-- `A306376(n)+A079319(n)` -/
def P16097105831763007773.Spec : Prop :=
  ∀ n, P16097105831763007773.a n = A371873 n

end A371873

/-! ## A371873.P2719670799766106218

`A371777(n)-A002450(n)`
-/

namespace A371873.P2719670799766106218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371777 n - A002450 n

end

end A371873.P2719670799766106218

namespace A371873

/-- `A371777(n)-A002450(n)` -/
def P2719670799766106218.Spec : Prop :=
  ∀ n, P2719670799766106218.a n = A371873 n

end A371873

/-! ## A371873.P3705314789056476959

`A024718(n)+A020988(n)/2`
-/

namespace A371873.P3705314789056476959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024718 n : ℚ) + (A020988 n : ℚ) / 2

end

end A371873.P3705314789056476959

namespace A371873

/-- `A024718(n)+A020988(n)/2` -/
def P3705314789056476959.Spec : Prop :=
  ∀ n, P3705314789056476959.a n = (A371873 n : ℚ)

end A371873

/-! ## A371873.P3785381953099250970

`A124642(2*n)+A001045(2*n)`
-/

namespace A371873.P3785381953099250970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124642 (2 * n) + A001045 (2 * n)

end

end A371873.P3785381953099250970

namespace A371873

/-- `A124642(2*n)+A001045(2*n)` -/
def P3785381953099250970.Spec : Prop :=
  ∀ n, P3785381953099250970.a n = A371873 n

end A371873

/-! ## A371873.P15124989941942139994

`∑[A210736(2*n)+A166444(2*n)]`
-/

namespace A371873.P15124989941942139994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n) + A166444 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371873.P15124989941942139994

namespace A371873

/-- `∑[A210736(2*n)+A166444(2*n)]` -/
def P15124989941942139994.Spec : Prop :=
  ∀ n, P15124989941942139994.a n = A371873 n

end A371873

/-! ## A371873.P2445025268869401997

`A058622(2*n+1)-∑[A058622(2*n)]`
-/

namespace A371873.P2445025268869401997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371873.P2445025268869401997

namespace A371873

/-- `A058622(2*n+1)-∑[A058622(2*n)]` -/
def P2445025268869401997.Spec : Prop :=
  ∀ n, P2445025268869401997.a n = A371873 n

end A371873

/-! ## A371873.P10154386528734916226

`A116384(2*n)`
-/

namespace A371873.P10154386528734916226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116384 (2 * n)

end

end A371873.P10154386528734916226

namespace A371873

/-- `A116384(2*n)` -/
def P10154386528734916226.Spec : Prop :=
  ∀ n, P10154386528734916226.a n = A371873 n

end A371873

/-!
# A371877: Divide primes into groups with Fibonacci(n) elements and add together.

The programs for A371877, there is no canonical definition to state claims against.
-/

/-! ## A371877.P16100003542512813507

`Δ[A007504(∑[A000045(n)])]`
-/

namespace A371877.P16100003542512813507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371877.P16100003542512813507

/-! ## A371877.P12256671007575231182

`Δ[A007504(A000071(n+2))]`
-/

namespace A371877.P12256671007575231182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000071 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371877.P12256671007575231182

/-! ## A371877.P4661311218636475930

`Δ[A007504(∑[A212804(n+1)])]`
-/

namespace A371877.P4661311218636475930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371877.P4661311218636475930

/-! ## A371877.P15260126316182687254

`Δ[A007504(∑[A001611(n)-1])]`
-/

namespace A371877.P15260126316182687254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371877.P15260126316182687254

/-! ## A371877.P7343638733835269444

`Δ[A007504(∑[A157725(n)-2])]`
-/

namespace A371877.P7343638733835269444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371877.P7343638733835269444

/-!
# A371878: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4, x_5 <= n} n/gcd(x_1, x_2, x_3, x_4, x_5, n).

The programs for A371878, the canonical program `A371878.P10205433702608322159` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371878 has offset 1).

The definition of A371878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371878.P10205433702608322159

`∑{d}[n+1, #*A059378(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A371878

/-- `∑{d}[n+1, #*A059378(#)]` -/
def P10205433702608322159.Spec : Prop :=
  ∀ n, P10205433702608322159.a n = A371878 (n + 1)

theorem P10205433702608322159.correct : P10205433702608322159.Spec := by
  intro n
  simp only [A371878, Nat.add_sub_cancel]

end A371878

/-! ## A371878.P5886551191787152470

`∑{d}[n+1, A013954(#)*A055615((n+1)/#)]`
-/

namespace A371878.P5886551191787152470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013954 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371878.P5886551191787152470

namespace A371878

/-- `∑{d}[n+1, A013954(#)*A055615((n+1)/#)]` -/
def P5886551191787152470.Spec : Prop :=
  ∀ n, P5886551191787152470.a n = A371878 (n + 1)

end A371878

/-! ## A371878.P11188699977645775070

`∑{d}[n+1, A000056(#)*A084220((n+1)/#)]`
-/

namespace A371878.P11188699977645775070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A084220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371878.P11188699977645775070

namespace A371878

/-- `∑{d}[n+1, A000056(#)*A084220((n+1)/#)]` -/
def P11188699977645775070.Spec : Prop :=
  ∀ n, P11188699977645775070.a n = A371878 (n + 1)

end A371878

/-! ## A371878.P708537055083454899

`∑{d}[n+1, A069091(#)*A130054((n+1)/#)]`
-/

namespace A371878.P708537055083454899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069091 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371878.P708537055083454899

namespace A371878

/-- `∑{d}[n+1, A069091(#)*A130054((n+1)/#)]` -/
def P708537055083454899.Spec : Prop :=
  ∀ n, P708537055083454899.a n = A371878 (n + 1)

end A371878

/-! ## A371878.P7971369148581591666

`∑{d}[n+1, A002618(#)*A372963((n+1)/#)]`
-/

namespace A371878.P7971369148581591666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A372963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371878.P7971369148581591666

namespace A371878

/-- `∑{d}[n+1, A002618(#)*A372963((n+1)/#)]` -/
def P7971369148581591666.Spec : Prop :=
  ∀ n, P7971369148581591666.a n = A371878 (n + 1)

end A371878

/-! ## A371878.P17373280292483173053

`∑{d}[n+1, A284927(#)*A349343((n+1)/#)]`
-/

namespace A371878.P17373280292483173053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A284927 d * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371878.P17373280292483173053

namespace A371878

/-- `∑{d}[n+1, A284927(#)*A349343((n+1)/#)]` -/
def P17373280292483173053.Spec : Prop :=
  ∀ n, P17373280292483173053.a n = A371878 (n + 1)

end A371878

/-! ## A371878.P705040085279079938

`∑{d}[n+1, A321817(#)*A349341((n+1)/#)]`
-/

namespace A371878.P705040085279079938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321817 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371878.P705040085279079938

namespace A371878

/-- `∑{d}[n+1, A321817(#)*A349341((n+1)/#)]` -/
def P705040085279079938.Spec : Prop :=
  ∀ n, P705040085279079938.a n = A371878 (n + 1)

end A371878

/-! ## A371878.P11474658952941844148

`∑{d}[n+1, A328641(#)*A343508((n+1)/#)]`
-/

namespace A371878.P11474658952941844148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328641 d * A343508 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371878.P11474658952941844148

namespace A371878

/-- `∑{d}[n+1, A328641(#)*A343508((n+1)/#)]` -/
def P11474658952941844148.Spec : Prop :=
  ∀ n, P11474658952941844148.a n = A371878 (n + 1)

end A371878

/-! ## A371878.P16835785648445678925

`∑{d}[n+1, A306411(#)*A372961((n+1)/#)]`
-/

namespace A371878.P16835785648445678925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306411 d * A372961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371878.P16835785648445678925

namespace A371878

/-- `∑{d}[n+1, A306411(#)*A372961((n+1)/#)]` -/
def P16835785648445678925.Spec : Prop :=
  ∀ n, P16835785648445678925.a n = A371878 (n + 1)

end A371878

/-!
# A371879: Prime numbers that yield a squarefree semiprime when any digit is removed.

The programs for A371879, there is no canonical definition to state claims against.
-/

/-! ## A371879.P16173393012788218080

`filter[A260830(n+3), A372552(#)]`
-/

namespace A371879.P16173393012788218080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260830 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372552 (f1 j).toNat = 1) n)

end

end A371879.P16173393012788218080

/-!
# A371882: a(n) = Sum_{k=0..n} binomial(n,k)^7 * (1 - 7*k*(H(k) - H(n-k))), where H(n) is the n-th harmonic number.

The programs for A371882, there is no canonical definition to state claims against.
-/

/-! ## A371882.P556485852773911181

`(-1)^n*A376462(n)`
-/

namespace A371882.P556485852773911181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A376462 n

end

end A371882.P556485852773911181

/-! ## A371882.P13036259541282029311

`-(A010892(3*(n+1))*A376462(n))`
-/

namespace A371882.P13036259541282029311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A010892 (3 * (n + 1)) * A376462 n)

end

end A371882.P13036259541282029311

/-!
# A371883: a(n) is the number of divisors d of n such that d^n mod n = d.

The programs for A371883, there is no canonical definition to state claims against.
-/

/-! ## A371883.P14165558351126067842

`A056671(A008480(n+1))%A062860(n)`
-/

namespace A371883.P14165558351126067842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056671 (A008480 (n + 1)).toNat) (A062860 n)

end

end A371883.P14165558351126067842

/-! ## A371883.P14187856311599633824

`A035317(A380089(n+1))%A062860(n)`
-/

namespace A371883.P14187856311599633824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035317 (A380089 (n + 1)).toNat) (A062860 n)

end

end A371883.P14187856311599633824

/-! ## A371883.P12440384539468228690

`A326933(A324837(n+1)%A062860(n))`
-/

namespace A371883.P12440384539468228690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326933 (Int.tmod (A324837 (n + 1)) (A062860 n)).toNat

end

end A371883.P12440384539468228690

/-! ## A371883.P10986610583228612913

`A331953(A008480(n+1))%A119034(n+1)`
-/

namespace A371883.P10986610583228612913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331953 (A008480 (n + 1)).toNat) (A119034 (n + 1))

end

end A371883.P10986610583228612913

/-! ## A371883.P5615106731367500132

`∑{p}[n+1, gcd(n, #)]-A335520(3*n+1)`
-/

namespace A371883.P5615106731367500132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ) - A335520 (3 * n + 1)

end

end A371883.P5615106731367500132

/-!
# A371884: Irregular triangle read by rows in which row n >= 2 lists the divisors d of n such that d^n mod n = d.

The programs for A371884, there is no canonical definition to state claims against.
-/

/-! ## A371884.P1915757913222719724

`A077610(2*(n+1))%A023152(A036012(n+3))`
-/

namespace A371884.P1915757913222719724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077610 (2 * (n + 1))) (A023152 (A036012 (n + 3)).toNat)

end

end A371884.P1915757913222719724

/-! ## A371884.P10920837803788641693

`A077610(record[A239933(n+1)])`
-/

namespace A371884.P10920837803788641693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077610 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A371884.P10920837803788641693

/-! ## A371884.P3813140310600059801

`A229994(2*n+1)%A054760(n)`
-/

namespace A371884.P3813140310600059801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229994 (2 * n + 1)) (A054760 n)

end

end A371884.P3813140310600059801

/-! ## A371884.P121901765798941368

`A077610(2*(n+1))%A229273(n+1)`
-/

namespace A371884.P121901765798941368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077610 (2 * (n + 1))) (A229273 (n + 1))

end

end A371884.P121901765798941368

/-! ## A371884.P16538724531433553121

`gcd(Δ[A094783(n+1)], A077610(2*(n+1)))`
-/

namespace A371884.P16538724531433553121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094783 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A077610 (2 * (n + 1)))

end

end A371884.P16538724531433553121

/-!
# A371886: The number of multiples (k) of n where the interval contained in an equal temperament with k*n divisions of the octave (k*n-ET) that best approximates the just perfect fifth (3:2) is equal to that of an equal temperament with n divisions.

The programs for A371886, the canonical program `A371886.P6723559790389278362` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371886 has offset 1).

The definition of A371886 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371886.P6723559790389278362

`floor(1/(2*abs(round((n+1)*log2(3/2))-(n+1)*log2(3/2))))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A371886

/-- `floor(1/(2*abs(round((n+1)*log2(3/2))-(n+1)*log2(3/2))))` -/
def P6723559790389278362.Spec : Prop :=
  ∀ n, P6723559790389278362.a n = A371886 (n + 1)

theorem P6723559790389278362.correct : P6723559790389278362.Spec := by
  intro n
  simp only [A371886, Nat.add_sub_cancel]

end A371886

/-!
# A371888: G.f. A(x) satisfies A(x) = 1 - x/A(x) * (1 - A(x) - A(x)^2).

The programs for A371888, the canonical program `A371888.P8395399809220968351` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371888 has offset 0).

The definition of A371888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371888.P8395399809220968351

`∑[A100223(n)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A371888

/-- `∑[A100223(n)]` -/
def P8395399809220968351.Spec : Prop :=
  ∀ n, P8395399809220968351.a n = A371888 n

theorem P8395399809220968351.correct : P8395399809220968351.Spec := by
  intro n
  simp only [A371888]

end A371888

/-! ## A371888.P9145150536442552399

`∑[A343773((2*n)%(n+2))]`
-/

namespace A371888.P9145150536442552399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343773 (2 * n % (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371888.P9145150536442552399

namespace A371888

/-- `∑[A343773((2*n)%(n+2))]` -/
def P9145150536442552399.Spec : Prop :=
  ∀ n, P9145150536442552399.a n = A371888 n

end A371888

/-! ## A371888.P12907676890173769509

`2-A108623(A028310(n))`
-/

namespace A371888.P12907676890173769509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A108623 (A028310 n).toNat

end

end A371888.P12907676890173769509

namespace A371888

/-- `2-A108623(A028310(n))` -/
def P12907676890173769509.Spec : Prop :=
  ∀ n, P12907676890173769509.a n = A371888 n

end A371888

/-! ## A371888.P10995698757352437378

`A372035(n)/A040000(n)`
-/

namespace A371888.P10995698757352437378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372035 n : ℚ) / (A040000 n : ℚ)

end

end A371888.P10995698757352437378

namespace A371888

/-- `A372035(n)/A040000(n)` -/
def P10995698757352437378.Spec : Prop :=
  ∀ n, P10995698757352437378.a n = (A371888 n : ℚ)

end A371888

/-! ## A371888.P6183162311316584107

`A372035(n)/A036453(n+1)`
-/

namespace A371888.P6183162311316584107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372035 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A371888.P6183162311316584107

namespace A371888

/-- `A372035(n)/A036453(n+1)` -/
def P6183162311316584107.Spec : Prop :=
  ∀ n, P6183162311316584107.a n = (A371888 n : ℚ)

end A371888

/-! ## A371888.P14146234538540441838

`∑{#}[n, C(n, #)*A156906(#)]`
-/

namespace A371888.P14146234538540441838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A156906 k

end

end A371888.P14146234538540441838

namespace A371888

/-- `∑{#}[n, C(n, #)*A156906(#)]` -/
def P14146234538540441838.Spec : Prop :=
  ∀ n, P14146234538540441838.a n = A371888 n

end A371888

/-!
# A371891: G.f. A(x) satisfies A(x) = 1 - x/A(x)^2 * (1 - A(x) - A(x)^4).

The programs for A371891, there is no canonical definition to state claims against.
-/

/-! ## A371891.P19196688664492163

`A279554(n)+A001222(A006125(n))`
-/

namespace A371891.P19196688664492163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279554 n + A001222 (A006125 n).toNat

end

end A371891.P19196688664492163

/-! ## A371891.P10516747220035853274

`A327583(n)+A258068(A143554(n))`
-/

namespace A371891.P10516747220035853274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327583 n + A258068 (A143554 n).toNat

end

end A371891.P10516747220035853274

/-! ## A371891.P6347376688598069943

`A050535(n)-A297330(A063443(n))`
-/

namespace A371891.P6347376688598069943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050535 n - A297330 (A063443 n).toNat

end

end A371891.P6347376688598069943

/-!
# A371892: G.f. A(x) satisfies A(x) = 1 + x/A(x) * (1 + A(x)^4).

The programs for A371892, there is no canonical definition to state claims against.
-/

/-! ## A371892.P15627711386635625562

`A335834(comp[A055505(n)]!)`
-/

namespace A371892.P15627711386635625562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055505 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335834 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A371892.P15627711386635625562

/-! ## A371892.P576378499220986278

`A335834(∑[A327482(n+1)]!)`
-/

namespace A371892.P576378499220986278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335834 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A371892.P576378499220986278

/-!
# A371894: Integers k such that the number of multiplications to compute the k-th power by the Chandah-sutra method (A014701) is larger than the length of the shortest addition chain for k (A003313).

The programs for A371894, there is no canonical definition to state claims against.
-/

/-! ## A371894.P18086727336767041787

`lt[1, A364272(A385816(n))]`
-/

namespace A371894.P18086727336767041787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364272 (A385816 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A371894.P18086727336767041787

/-! ## A371894.P11508376933487560129

`lt[A336331(A134470(3*(n+1))), A102376(n)]`
-/

namespace A371894.P11508376933487560129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336331 (A134470 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371894.P11508376933487560129

/-! ## A371894.P9785651432179904396

`lt[A000120(A316092(n+1)), A088512(n)]`
-/

namespace A371894.P9785651432179904396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A316092 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371894.P9785651432179904396

/-! ## A371894.P3691310489867921276

`lt[A077468(A257340(n+1)), A048678(n)]`
-/

namespace A371894.P3691310489867921276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077468 (A257340 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371894.P3691310489867921276

/-! ## A371894.P15636274105830005094

`lt[A281113(A337984(n+1)), A000120(n)]`
-/

namespace A371894.P15636274105830005094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281113 (A337984 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371894.P15636274105830005094

/-!
# A371896: a(n) is the length of the uninterrupted sequence of primes generated by the polynomial f(x) = x^2 + x + p for x=0,1,..., where p=A001359(n).

The programs for A371896, there is no canonical definition to state claims against.
-/

/-! ## A371896.P5611431079414070273

`A375775(n+1)+1`
-/

namespace A371896.P5611431079414070273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375775 (n + 1) + 1

end

end A371896.P5611431079414070273

/-! ## A371896.P14431323434249297813

`A020725(A375775(n+1))`
-/

namespace A371896.P14431323434249297813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A375775 (n + 1)).toNat

end

end A371896.P14431323434249297813

/-! ## A371896.P16801456226051259481

`A208936(A029707(n+1))`
-/

namespace A371896.P16801456226051259481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208936 (A029707 (n + 1)).toNat

end

end A371896.P16801456226051259481

/-! ## A371896.P7858314160449902806

`A208936(A107770(n+1)-1)`
-/

namespace A371896.P7858314160449902806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208936 (A107770 (n + 1) - 1).toNat

end

end A371896.P7858314160449902806

/-! ## A371896.P12877416246501678906

`filter[A208936(n+1), A324732(#)]`
-/

namespace A371896.P12877416246501678906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324732 (f1 j).toNat = 1) n)

end

end A371896.P12877416246501678906

/-! ## A371896.P12390558045188203858

`filter[A208936(n+1), A369006(#)]`
-/

namespace A371896.P12390558045188203858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369006 (f1 j).toNat = 1) n)

end

end A371896.P12390558045188203858

/-! ## A371896.P9881939899879193976

`A208645(A001359(n+1))`
-/

namespace A371896.P9881939899879193976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A001359 (n + 1)).toNat

end

end A371896.P9881939899879193976

/-! ## A371896.P17112710956558444649

`A208645(A124588(n+2))`
-/

namespace A371896.P17112710956558444649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A124588 (n + 2)).toNat

end

end A371896.P17112710956558444649

/-! ## A371896.P13473909287304005206

`A208645(A181747(n+2))`
-/

namespace A371896.P13473909287304005206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A181747 (n + 2)).toNat

end

end A371896.P13473909287304005206

/-! ## A371896.P17452352201753838774

`A208645(p?[lt[1, A208645(n)]])`
-/

namespace A371896.P17452352201753838774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A371896.P17452352201753838774

/-!
# A371898: Triangle read by rows: T(n, k) = n * k * (T(n-1, k-1) + T(n-1, k)) for k > 0 with initial values T(n, 0) = 1 and T(i, j) = 0 for j > i.

The programs for A371898, there is no canonical definition to state claims against.
-/

/-! ## A371898.P12071391972225551247

`A371766(C(row(n)+1, 2)+col(n))*A371767(C(row(n)+1, 2)+col(n))`
-/

namespace A371898.P12071391972225551247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371766 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) * A371767 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A371898.P12071391972225551247

/-! ## A371898.P779282862636800011

`A371766(n)*A371767(n)`
-/

namespace A371898.P779282862636800011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371766 n * A371767 n

end

end A371898.P779282862636800011

/-! ## A371898.P2435131501215849127

`∑{d}[A331295(A086613(n)), #]`
-/

namespace A371898.P2435131501215849127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331295 (A086613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A371898.P2435131501215849127

/-! ## A371898.P10706331416197162108

`A073491(A102323(n)^A030272(n))`
-/

namespace A371898.P10706331416197162108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (SequenceMachineLib.roundAway ((A102323 n : ℚ) ^ (A030272 n : ℤ))).toNat

end

end A371898.P10706331416197162108

/-! ## A371898.P4580877215332000792

`xor(A000035(A230621(n)), A008955(n))`
-/

namespace A371898.P4580877215332000792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A230621 n).toNat) (A008955 n)

end

end A371898.P4580877215332000792

